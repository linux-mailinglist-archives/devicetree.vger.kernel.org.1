Return-Path: <devicetree+bounces-24158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C77A80E304
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 04:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A4C5DB21A01
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 03:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D76C3BE4D;
	Tue, 12 Dec 2023 03:51:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from pidgin.makrotopia.org (pidgin.makrotopia.org [185.142.180.65])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF894CE;
	Mon, 11 Dec 2023 19:51:30 -0800 (PST)
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rCtng-0002vh-2P;
	Tue, 12 Dec 2023 03:51:17 +0000
Date: Tue, 12 Dec 2023 03:51:14 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Alexander Couzens <lynxis@fe80.eu>,
	Daniel Golle <daniel@makrotopia.org>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: [RFC PATCH net-next v3 8/8] net: ethernet: mtk_eth_soc: add paths
 and SerDes modes for MT7988
Message-ID: <f8a62fcccacfd1f94d4ef84a104095d352bf252c.1702352117.git.daniel@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1702352117.git.daniel@makrotopia.org>

MT7988 comes with a built-in 2.5G PHY as well as SerDes lanes to
connect external PHYs or transceivers in USXGMII, 10GBase-R, 5GBase-R,
2500Base-X, 1000Base-X and Cisco SGMII interface modes.

Implement support for configuring for the new paths to SerDes interfaces
and the internal 2.5G PHY.

Add USXGMII PCS driver for 10GBase-R, 5GBase-R and USXGMII mode, and
setup the new PHYA on MT7988 to access the also still existing old
LynxI PCS for 1000Base-X, 2500Base-X and Cisco SGMII PCS interface
modes.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 drivers/net/ethernet/mediatek/mtk_eth_path.c | 122 +++++++-
 drivers/net/ethernet/mediatek/mtk_eth_soc.c  | 291 +++++++++++++++++--
 drivers/net/ethernet/mediatek/mtk_eth_soc.h  | 107 ++++++-
 3 files changed, 469 insertions(+), 51 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_path.c b/drivers/net/ethernet/mediatek/mtk_eth_path.c
index 7c27a19c4d8f4..3f4f4cfe6a233 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_path.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_path.c
@@ -31,10 +31,20 @@ static const char *mtk_eth_path_name(u64 path)
 		return "gmac2_rgmii";
 	case MTK_ETH_PATH_GMAC2_SGMII:
 		return "gmac2_sgmii";
+	case MTK_ETH_PATH_GMAC2_2P5GPHY:
+		return "gmac2_2p5gphy";
 	case MTK_ETH_PATH_GMAC2_GEPHY:
 		return "gmac2_gephy";
+	case MTK_ETH_PATH_GMAC3_SGMII:
+		return "gmac3_sgmii";
 	case MTK_ETH_PATH_GDM1_ESW:
 		return "gdm1_esw";
+	case MTK_ETH_PATH_GMAC1_USXGMII:
+		return "gmac1_usxgmii";
+	case MTK_ETH_PATH_GMAC2_USXGMII:
+		return "gmac2_usxgmii";
+	case MTK_ETH_PATH_GMAC3_USXGMII:
+		return "gmac3_usxgmii";
 	default:
 		return "unknown path";
 	}
@@ -127,6 +137,27 @@ static int set_mux_u3_gmac2_to_qphy(struct mtk_eth *eth, u64 path)
 	return 0;
 }
 
+static int set_mux_gmac2_to_2p5gphy(struct mtk_eth *eth, u64 path)
+{
+	int ret;
+
+	if (path == MTK_ETH_PATH_GMAC2_2P5GPHY) {
+		ret = regmap_clear_bits(eth->ethsys, ETHSYS_SYSCFG0, SYSCFG0_SGMII_GMAC2_V2);
+		if (ret)
+			return ret;
+
+		/* Setup mux to 2p5g PHY */
+		ret = regmap_clear_bits(eth->infra, TOP_MISC_NETSYS_PCS_MUX, MUX_G2_USXGMII_SEL);
+		if (ret)
+			return ret;
+
+		dev_dbg(eth->dev, "path %s in %s updated\n",
+			mtk_eth_path_name(path), __func__);
+	}
+
+	return 0;
+}
+
 static int set_mux_gmac1_gmac2_to_sgmii_rgmii(struct mtk_eth *eth, u64 path)
 {
 	unsigned int val = 0;
@@ -165,7 +196,48 @@ static int set_mux_gmac1_gmac2_to_sgmii_rgmii(struct mtk_eth *eth, u64 path)
 	return 0;
 }
 
-static int set_mux_gmac12_to_gephy_sgmii(struct mtk_eth *eth, u64 path)
+static int set_mux_gmac123_to_usxgmii(struct mtk_eth *eth, u64 path)
+{
+	unsigned int val = 0;
+	bool updated = true;
+	int mac_id = 0;
+
+	/* Disable SYSCFG1 SGMII */
+	regmap_read(eth->ethsys, ETHSYS_SYSCFG0, &val);
+
+	switch (path) {
+	case MTK_ETH_PATH_GMAC1_USXGMII:
+		val &= ~(u32)SYSCFG0_SGMII_GMAC1_V2;
+		mac_id = MTK_GMAC1_ID;
+		break;
+	case MTK_ETH_PATH_GMAC2_USXGMII:
+		val &= ~(u32)SYSCFG0_SGMII_GMAC2_V2;
+		mac_id = MTK_GMAC2_ID;
+		break;
+	case MTK_ETH_PATH_GMAC3_USXGMII:
+		val &= ~(u32)SYSCFG0_SGMII_GMAC3_V2;
+		mac_id = MTK_GMAC3_ID;
+		break;
+	default:
+		updated = false;
+	};
+
+	if (updated) {
+		regmap_update_bits(eth->ethsys, ETHSYS_SYSCFG0,
+				   SYSCFG0_SGMII_MASK, val);
+
+		if (mac_id == MTK_GMAC2_ID)
+			regmap_set_bits(eth->infra, TOP_MISC_NETSYS_PCS_MUX,
+					MUX_G2_USXGMII_SEL);
+	}
+
+	dev_dbg(eth->dev, "path %s in %s updated = %d\n",
+		mtk_eth_path_name(path), __func__, updated);
+
+	return 0;
+}
+
+static int set_mux_gmac123_to_gephy_sgmii(struct mtk_eth *eth, u64 path)
 {
 	unsigned int val = 0;
 	bool updated = true;
@@ -182,6 +254,9 @@ static int set_mux_gmac12_to_gephy_sgmii(struct mtk_eth *eth, u64 path)
 	case MTK_ETH_PATH_GMAC2_SGMII:
 		val |= SYSCFG0_SGMII_GMAC2_V2;
 		break;
+	case MTK_ETH_PATH_GMAC3_SGMII:
+		val |= SYSCFG0_SGMII_GMAC3_V2;
+		break;
 	default:
 		updated = false;
 	}
@@ -209,6 +284,10 @@ static const struct mtk_eth_muxc mtk_eth_muxc[] = {
 		.name = "mux_u3_gmac2_to_qphy",
 		.cap_bit = MTK_ETH_MUX_U3_GMAC2_TO_QPHY,
 		.set_path = set_mux_u3_gmac2_to_qphy,
+	}, {
+		.name = "mux_gmac2_to_2p5gphy",
+		.cap_bit = MTK_ETH_MUX_GMAC2_TO_2P5GPHY,
+		.set_path = set_mux_gmac2_to_2p5gphy,
 	}, {
 		.name = "mux_gmac1_gmac2_to_sgmii_rgmii",
 		.cap_bit = MTK_ETH_MUX_GMAC1_GMAC2_TO_SGMII_RGMII,
@@ -216,7 +295,15 @@ static const struct mtk_eth_muxc mtk_eth_muxc[] = {
 	}, {
 		.name = "mux_gmac12_to_gephy_sgmii",
 		.cap_bit = MTK_ETH_MUX_GMAC12_TO_GEPHY_SGMII,
-		.set_path = set_mux_gmac12_to_gephy_sgmii,
+		.set_path = set_mux_gmac123_to_gephy_sgmii,
+	}, {
+		.name = "mux_gmac123_to_gephy_sgmii",
+		.cap_bit = MTK_ETH_MUX_GMAC123_TO_GEPHY_SGMII,
+		.set_path = set_mux_gmac123_to_gephy_sgmii,
+	}, {
+		.name = "mux_gmac123_to_usxgmii",
+		.cap_bit = MTK_ETH_MUX_GMAC123_TO_USXGMII,
+		.set_path = set_mux_gmac123_to_usxgmii,
 	},
 };
 
@@ -249,12 +336,39 @@ static int mtk_eth_mux_setup(struct mtk_eth *eth, u64 path)
 	return err;
 }
 
+int mtk_gmac_usxgmii_path_setup(struct mtk_eth *eth, int mac_id)
+{
+	u64 path;
+
+	path = (mac_id == MTK_GMAC1_ID) ?  MTK_ETH_PATH_GMAC1_USXGMII :
+	       (mac_id == MTK_GMAC2_ID) ?  MTK_ETH_PATH_GMAC2_USXGMII :
+					   MTK_ETH_PATH_GMAC3_USXGMII;
+
+	/* Setup proper MUXes along the path */
+	return mtk_eth_mux_setup(eth, path);
+}
+
 int mtk_gmac_sgmii_path_setup(struct mtk_eth *eth, int mac_id)
 {
 	u64 path;
 
-	path = (mac_id == 0) ?  MTK_ETH_PATH_GMAC1_SGMII :
-				MTK_ETH_PATH_GMAC2_SGMII;
+	path = (mac_id == MTK_GMAC1_ID) ? MTK_ETH_PATH_GMAC1_SGMII :
+	       (mac_id == MTK_GMAC2_ID) ? MTK_ETH_PATH_GMAC2_SGMII :
+					  MTK_ETH_PATH_GMAC3_SGMII;
+
+	/* Setup proper MUXes along the path */
+	return mtk_eth_mux_setup(eth, path);
+}
+
+int mtk_gmac_2p5gphy_path_setup(struct mtk_eth *eth, int mac_id)
+{
+	u64 path = 0;
+
+	if (mac_id == MTK_GMAC2_ID)
+		path = MTK_ETH_PATH_GMAC2_2P5GPHY;
+
+	if (!path)
+		return -EINVAL;
 
 	/* Setup proper MUXes along the path */
 	return mtk_eth_mux_setup(eth, path);
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index a6e91573f8dae..da0ec44268c8e 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -22,6 +22,8 @@
 #include <linux/pinctrl/devinfo.h>
 #include <linux/phylink.h>
 #include <linux/pcs/pcs-mtk-lynxi.h>
+#include <linux/pcs/pcs-mtk-usxgmii.h>
+#include <linux/phy/phy.h>
 #include <linux/jhash.h>
 #include <linux/bitfield.h>
 #include <net/dsa.h>
@@ -260,12 +262,8 @@ static const char * const mtk_clks_source_name[] = {
 	"ethwarp_wocpu2",
 	"ethwarp_wocpu1",
 	"ethwarp_wocpu0",
-	"top_usxgmii0_sel",
-	"top_usxgmii1_sel",
 	"top_sgm0_sel",
 	"top_sgm1_sel",
-	"top_xfi_phy0_xtal_sel",
-	"top_xfi_phy1_xtal_sel",
 	"top_eth_gmii_sel",
 	"top_eth_refck_50m_sel",
 	"top_eth_sys_200m_sel",
@@ -508,6 +506,30 @@ static void mtk_setup_bridge_switch(struct mtk_eth *eth)
 		MTK_GSW_CFG);
 }
 
+static bool mtk_check_gmac23_idle(struct mtk_mac *mac)
+{
+	u32 mac_fsm, gdm_fsm;
+
+	mac_fsm = mtk_r32(mac->hw, MTK_MAC_FSM(mac->id));
+
+	switch (mac->id) {
+	case MTK_GMAC2_ID:
+		gdm_fsm = mtk_r32(mac->hw, MTK_FE_GDM2_FSM);
+		break;
+	case MTK_GMAC3_ID:
+		gdm_fsm = mtk_r32(mac->hw, MTK_FE_GDM3_FSM);
+		break;
+	default:
+		return true;
+	};
+
+	if ((mac_fsm & 0xFFFF0000) == 0x01010000 &&
+	    (gdm_fsm & 0xFFFF0000) == 0x00000000)
+		return true;
+
+	return false;
+}
+
 static struct phylink_pcs *mtk_mac_select_pcs(struct phylink_config *config,
 					      phy_interface_t interface)
 {
@@ -516,6 +538,21 @@ static struct phylink_pcs *mtk_mac_select_pcs(struct phylink_config *config,
 	struct mtk_eth *eth = mac->hw;
 	unsigned int sid;
 
+	if (mtk_is_netsys_v3_or_greater(eth)) {
+		switch (interface) {
+		case PHY_INTERFACE_MODE_1000BASEX:
+		case PHY_INTERFACE_MODE_2500BASEX:
+		case PHY_INTERFACE_MODE_SGMII:
+			return mac->sgmii_pcs;
+		case PHY_INTERFACE_MODE_5GBASER:
+		case PHY_INTERFACE_MODE_10GBASER:
+		case PHY_INTERFACE_MODE_USXGMII:
+			return mac->usxgmii_pcs;
+		default:
+			return NULL;
+		}
+	}
+
 	if (interface == PHY_INTERFACE_MODE_SGMII ||
 	    phy_interface_mode_is_8023z(interface)) {
 		sid = (MTK_HAS_CAPS(eth->soc->caps, MTK_SHARED_SGMII)) ?
@@ -567,7 +604,22 @@ static void mtk_mac_config(struct phylink_config *config, unsigned int mode,
 					goto init_err;
 			}
 			break;
+		case PHY_INTERFACE_MODE_USXGMII:
+		case PHY_INTERFACE_MODE_10GBASER:
+		case PHY_INTERFACE_MODE_5GBASER:
+			if (MTK_HAS_CAPS(eth->soc->caps, MTK_USXGMII)) {
+				err = mtk_gmac_usxgmii_path_setup(eth, mac->id);
+				if (err)
+					goto init_err;
+			}
+			break;
 		case PHY_INTERFACE_MODE_INTERNAL:
+			if (mac->id == MTK_GMAC2_ID &&
+			    MTK_HAS_CAPS(eth->soc->caps, MTK_2P5GPHY)) {
+				err = mtk_gmac_2p5gphy_path_setup(eth, mac->id);
+				if (err)
+					goto init_err;
+			}
 			break;
 		default:
 			goto err_phy;
@@ -614,8 +666,6 @@ static void mtk_mac_config(struct phylink_config *config, unsigned int mode,
 		val &= ~SYSCFG0_GE_MODE(SYSCFG0_GE_MASK, mac->id);
 		val |= SYSCFG0_GE_MODE(ge_mode, mac->id);
 		regmap_write(eth->ethsys, ETHSYS_SYSCFG0, val);
-
-		mac->interface = state->interface;
 	}
 
 	/* SGMII */
@@ -632,21 +682,40 @@ static void mtk_mac_config(struct phylink_config *config, unsigned int mode,
 
 		/* Save the syscfg0 value for mac_finish */
 		mac->syscfg0 = val;
-	} else if (phylink_autoneg_inband(mode)) {
+	} else if (state->interface != PHY_INTERFACE_MODE_USXGMII &&
+		   state->interface != PHY_INTERFACE_MODE_10GBASER &&
+		   state->interface != PHY_INTERFACE_MODE_5GBASER &&
+		   phylink_autoneg_inband(mode)) {
 		dev_err(eth->dev,
-			"In-band mode not supported in non SGMII mode!\n");
+			"In-band mode not supported in non-SerDes modes!\n");
 		return;
 	}
 
 	/* Setup gmac */
-	if (mtk_is_netsys_v3_or_greater(eth) &&
-	    mac->interface == PHY_INTERFACE_MODE_INTERNAL) {
-		mtk_w32(mac->hw, MTK_GDMA_XGDM_SEL, MTK_GDMA_EG_CTRL(mac->id));
-		mtk_w32(mac->hw, MAC_MCR_FORCE_LINK_DOWN, MTK_MAC_MCR(mac->id));
+	if (mtk_is_netsys_v3_or_greater(eth)) {
+		if (mtk_interface_mode_is_xgmii(state->interface)) {
+			mtk_w32(mac->hw, MTK_GDMA_XGDM_SEL, MTK_GDMA_EG_CTRL(mac->id));
+			mtk_w32(mac->hw, MAC_MCR_FORCE_LINK_DOWN, MTK_MAC_MCR(mac->id));
 
-		mtk_setup_bridge_switch(eth);
+			if (mac->id == MTK_GMAC1_ID)
+				mtk_setup_bridge_switch(eth);
+		} else {
+			mtk_w32(eth, 0, MTK_GDMA_EG_CTRL(mac->id));
+
+			/* FIXME: In current hardware design, we have to reset FE
+			 * when swtiching XGDM to GDM. Therefore, here trigger an SER
+			 * to let GDM go back to the initial state.
+			 */
+			if ((mtk_interface_mode_is_xgmii(mac->interface) ||
+			     mac->interface == PHY_INTERFACE_MODE_NA) &&
+			    !mtk_check_gmac23_idle(mac) &&
+			    !test_bit(MTK_RESETTING, &eth->state))
+				schedule_work(&eth->pending_work);
+		}
 	}
 
+	mac->interface = state->interface;
+
 	return;
 
 err_phy:
@@ -659,6 +728,18 @@ static void mtk_mac_config(struct phylink_config *config, unsigned int mode,
 		mac->id, phy_modes(state->interface), err);
 }
 
+static int mtk_mac_prepare(struct phylink_config *config, unsigned int mode,
+			   phy_interface_t interface)
+{
+	struct mtk_mac *mac = container_of(config, struct mtk_mac,
+					   phylink_config);
+
+	if (mac->pextp && mac->interface != interface)
+		phy_reset(mac->pextp);
+
+	return 0;
+}
+
 static int mtk_mac_finish(struct phylink_config *config, unsigned int mode,
 			  phy_interface_t interface)
 {
@@ -667,6 +748,10 @@ static int mtk_mac_finish(struct phylink_config *config, unsigned int mode,
 	struct mtk_eth *eth = mac->hw;
 	u32 mcr_cur, mcr_new;
 
+	/* Setup PMA/PMD */
+	if (mac->pextp)
+		phy_set_mode_ext(mac->pextp, PHY_MODE_ETHERNET, interface);
+
 	/* Enable SGMII */
 	if (interface == PHY_INTERFACE_MODE_SGMII ||
 	    phy_interface_mode_is_8023z(interface))
@@ -692,10 +777,13 @@ static void mtk_mac_link_down(struct phylink_config *config, unsigned int mode,
 {
 	struct mtk_mac *mac = container_of(config, struct mtk_mac,
 					   phylink_config);
-	u32 mcr = mtk_r32(mac->hw, MTK_MAC_MCR(mac->id));
 
-	mcr &= ~(MAC_MCR_TX_EN | MAC_MCR_RX_EN);
-	mtk_w32(mac->hw, mcr, MTK_MAC_MCR(mac->id));
+	if (!mtk_interface_mode_is_xgmii(interface)) {
+		mtk_m32(mac->hw, MAC_MCR_TX_EN | MAC_MCR_RX_EN, 0, MTK_MAC_MCR(mac->id));
+		mtk_m32(mac->hw, MTK_XGMAC_FORCE_LINK(mac->id), 0, MTK_XGMAC_STS(mac->id));
+	} else if (mac->id != MTK_GMAC1_ID) {
+		mtk_m32(mac->hw, XMAC_MCR_TRX_DISABLE, XMAC_MCR_TRX_DISABLE, MTK_XMAC_MCR(mac->id));
+	}
 }
 
 static void mtk_set_queue_speed(struct mtk_eth *eth, unsigned int idx,
@@ -767,13 +855,11 @@ static void mtk_set_queue_speed(struct mtk_eth *eth, unsigned int idx,
 	mtk_w32(eth, val, soc->reg_map->qdma.qtx_sch + ofs);
 }
 
-static void mtk_mac_link_up(struct phylink_config *config,
-			    struct phy_device *phy,
-			    unsigned int mode, phy_interface_t interface,
-			    int speed, int duplex, bool tx_pause, bool rx_pause)
+static void mtk_gdm_mac_link_up(struct mtk_mac *mac,
+				struct phy_device *phy,
+				unsigned int mode, phy_interface_t interface,
+				int speed, int duplex, bool tx_pause, bool rx_pause)
 {
-	struct mtk_mac *mac = container_of(config, struct mtk_mac,
-					   phylink_config);
 	u32 mcr;
 
 	mcr = mtk_r32(mac->hw, MTK_MAC_MCR(mac->id));
@@ -807,9 +893,63 @@ static void mtk_mac_link_up(struct phylink_config *config,
 	mtk_w32(mac->hw, mcr, MTK_MAC_MCR(mac->id));
 }
 
+static void mtk_xgdm_mac_link_up(struct mtk_mac *mac,
+				 struct phy_device *phy,
+				 unsigned int mode, phy_interface_t interface,
+				 int speed, int duplex, bool tx_pause, bool rx_pause)
+{
+	u32 mcr, force_link = 0;
+
+	if (mac->id == MTK_GMAC1_ID)
+		return;
+
+	/* Eliminate the interference(before link-up) caused by PHY noise */
+	mtk_m32(mac->hw, XMAC_LOGIC_RST, 0, MTK_XMAC_LOGIC_RST(mac->id));
+	mdelay(20);
+	mtk_m32(mac->hw, XMAC_GLB_CNTCLR, XMAC_GLB_CNTCLR, MTK_XMAC_CNT_CTRL(mac->id));
+
+	if (mac->interface == PHY_INTERFACE_MODE_INTERNAL || mac->id == MTK_GMAC3_ID)
+		force_link = MTK_XGMAC_FORCE_LINK(mac->id);
+
+	mtk_m32(mac->hw, MTK_XGMAC_FORCE_LINK(mac->id), force_link, MTK_XGMAC_STS(mac->id));
+
+	mcr = mtk_r32(mac->hw, MTK_XMAC_MCR(mac->id));
+	mcr &= ~(XMAC_MCR_FORCE_TX_FC | XMAC_MCR_FORCE_RX_FC | XMAC_MCR_TRX_DISABLE);
+	/* Configure pause modes -
+	 * phylink will avoid these for half duplex
+	 */
+	if (tx_pause)
+		mcr |= XMAC_MCR_FORCE_TX_FC;
+	if (rx_pause)
+		mcr |= XMAC_MCR_FORCE_RX_FC;
+
+	mtk_w32(mac->hw, mcr, MTK_XMAC_MCR(mac->id));
+}
+
+static void mtk_mac_link_up(struct phylink_config *config,
+			    struct phy_device *phy,
+			    unsigned int mode, phy_interface_t interface,
+			    int speed, int duplex, bool tx_pause, bool rx_pause)
+{
+	struct mtk_mac *mac = container_of(config, struct mtk_mac,
+					   phylink_config);
+
+	if (mtk_interface_mode_is_xgmii(interface))
+		mtk_xgdm_mac_link_up(mac, phy, mode, interface, speed, duplex,
+				     tx_pause, rx_pause);
+	else
+		mtk_gdm_mac_link_up(mac, phy, mode, interface, speed, duplex,
+				    tx_pause, rx_pause);
+
+	/* Repeat pextp setup to tune link */
+	if (mac->pextp)
+		phy_set_mode_ext(mac->pextp, PHY_MODE_ETHERNET, interface);
+}
+
 static const struct phylink_mac_ops mtk_phylink_ops = {
 	.mac_select_pcs = mtk_mac_select_pcs,
 	.mac_config = mtk_mac_config,
+	.mac_prepare = mtk_mac_prepare,
 	.mac_finish = mtk_mac_finish,
 	.mac_link_down = mtk_mac_link_down,
 	.mac_link_up = mtk_mac_link_up,
@@ -3359,6 +3499,9 @@ static int mtk_open(struct net_device *dev)
 	struct mtk_eth *eth = mac->hw;
 	int i, err;
 
+	if (mac->pextp)
+		phy_power_on(mac->pextp);
+
 	err = phylink_of_phy_connect(mac->phylink, mac->of_node, 0);
 	if (err) {
 		netdev_err(dev, "%s: could not attach PHY: %d\n", __func__,
@@ -3488,6 +3631,9 @@ static int mtk_stop(struct net_device *dev)
 	for (i = 0; i < ARRAY_SIZE(eth->ppe); i++)
 		mtk_ppe_stop(eth->ppe[i]);
 
+	if (mac->pextp)
+		phy_power_off(mac->pextp);
+
 	return 0;
 }
 
@@ -4485,6 +4631,7 @@ static const struct net_device_ops mtk_netdev_ops = {
 static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
 {
 	const __be32 *_id = of_get_property(np, "reg", NULL);
+	struct device_node *pcs_np;
 	phy_interface_t phy_mode;
 	struct phylink *phylink;
 	struct mtk_mac *mac;
@@ -4521,16 +4668,41 @@ static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
 	mac->id = id;
 	mac->hw = eth;
 	mac->of_node = np;
+	pcs_np = of_parse_phandle(mac->of_node, "pcs-handle", 0);
+	if (pcs_np) {
+		mac->sgmii_pcs = mtk_pcs_lynxi_get(eth->dev, pcs_np);
+		if (IS_ERR(mac->sgmii_pcs)) {
+			if (PTR_ERR(mac->sgmii_pcs) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
+
+			dev_err(eth->dev, "cannot select SGMII PCS, error %ld\n",
+				PTR_ERR(mac->sgmii_pcs));
+			return PTR_ERR(mac->sgmii_pcs);
+		}
+	}
 
-	err = of_get_ethdev_address(mac->of_node, eth->netdev[id]);
-	if (err == -EPROBE_DEFER)
-		return err;
+	pcs_np = of_parse_phandle(mac->of_node, "pcs-handle", 1);
+	if (pcs_np) {
+		mac->usxgmii_pcs = mtk_usxgmii_pcs_get(eth->dev, pcs_np);
+		if (IS_ERR(mac->usxgmii_pcs)) {
+			if (PTR_ERR(mac->usxgmii_pcs) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
 
-	if (err) {
-		/* If the mac address is invalid, use random mac address */
-		eth_hw_addr_random(eth->netdev[id]);
-		dev_err(eth->dev, "generated random MAC address %pM\n",
-			eth->netdev[id]->dev_addr);
+			dev_err(eth->dev, "cannot select USXGMII PCS, error %ld\n",
+				PTR_ERR(mac->usxgmii_pcs));
+			return PTR_ERR(mac->usxgmii_pcs);
+		}
+	}
+
+	if (mtk_is_netsys_v3_or_greater(eth) && (mac->sgmii_pcs || mac->usxgmii_pcs)) {
+		mac->pextp = devm_of_phy_get(eth->dev, mac->of_node, NULL);
+		if (IS_ERR(mac->pextp)) {
+			if (PTR_ERR(mac->pextp) != -EPROBE_DEFER)
+				dev_err(eth->dev, "cannot get PHY, error %ld\n",
+					PTR_ERR(mac->pextp));
+
+			return PTR_ERR(mac->pextp);
+		}
 	}
 
 	memset(mac->hwlro_ip, 0, sizeof(mac->hwlro_ip));
@@ -4613,8 +4785,21 @@ static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
 		phy_interface_zero(mac->phylink_config.supported_interfaces);
 		__set_bit(PHY_INTERFACE_MODE_INTERNAL,
 			  mac->phylink_config.supported_interfaces);
+	} else if (MTK_HAS_CAPS(mac->hw->soc->caps, MTK_USXGMII)) {
+		mac->phylink_config.mac_capabilities |= MAC_5000FD | MAC_10000FD;
+		__set_bit(PHY_INTERFACE_MODE_5GBASER,
+			  mac->phylink_config.supported_interfaces);
+		__set_bit(PHY_INTERFACE_MODE_10GBASER,
+			  mac->phylink_config.supported_interfaces);
+		__set_bit(PHY_INTERFACE_MODE_USXGMII,
+			  mac->phylink_config.supported_interfaces);
 	}
 
+	if (MTK_HAS_CAPS(mac->hw->soc->caps, MTK_2P5GPHY) &&
+	    id == MTK_GMAC2_ID)
+		__set_bit(PHY_INTERFACE_MODE_INTERNAL,
+			  mac->phylink_config.supported_interfaces);
+
 	phylink = phylink_create(&mac->phylink_config,
 				 of_fwnode_handle(mac->of_node),
 				 phy_mode, &mtk_phylink_ops);
@@ -4665,6 +4850,26 @@ static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
 	return err;
 }
 
+static int mtk_mac_assign_address(struct mtk_eth *eth, int i, bool test_defer_only)
+{
+	int err = of_get_ethdev_address(eth->mac[i]->of_node, eth->netdev[i]);
+
+	if (err == -EPROBE_DEFER)
+		return err;
+
+	if (test_defer_only)
+		return 0;
+
+	if (err) {
+		/* If the mac address is invalid, use random mac address */
+		eth_hw_addr_random(eth->netdev[i]);
+		dev_err(eth->dev, "generated random MAC address %pM\n",
+			eth->netdev[i]);
+	}
+
+	return 0;
+}
+
 void mtk_eth_set_dma_device(struct mtk_eth *eth, struct device *dma_dev)
 {
 	struct net_device *dev, *tmp;
@@ -4808,7 +5013,8 @@ static int mtk_probe(struct platform_device *pdev)
 			regmap_write(cci, 0, 3);
 	}
 
-	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SGMII)) {
+	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SGMII) &&
+	    !mtk_is_netsys_v3_or_greater(eth)) {
 		err = mtk_sgmii_init(eth);
 
 		if (err)
@@ -4919,6 +5125,24 @@ static int mtk_probe(struct platform_device *pdev)
 		}
 	}
 
+	for (i = 0; i < MTK_MAX_DEVS; i++) {
+		if (!eth->netdev[i])
+			continue;
+
+		err = mtk_mac_assign_address(eth, i, true);
+		if (err)
+			goto err_deinit_hw;
+	}
+
+	for (i = 0; i < MTK_MAX_DEVS; i++) {
+		if (!eth->netdev[i])
+			continue;
+
+		err = mtk_mac_assign_address(eth, i, false);
+		if (err)
+			goto err_deinit_hw;
+	}
+
 	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SHARED_INT)) {
 		err = devm_request_irq(eth->dev, eth->irq[0],
 				       mtk_handle_irq, 0,
@@ -5019,6 +5243,11 @@ static void mtk_remove(struct platform_device *pdev)
 		mtk_stop(eth->netdev[i]);
 		mac = netdev_priv(eth->netdev[i]);
 		phylink_disconnect_phy(mac->phylink);
+		if (mac->sgmii_pcs)
+			mtk_pcs_lynxi_put(mac->sgmii_pcs);
+
+		if (mac->usxgmii_pcs)
+			mtk_usxgmii_pcs_put(mac->usxgmii_pcs);
 	}
 
 	mtk_wed_exit();
diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
index 9ae3b8a71d0e6..8424ac6cb725b 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
@@ -15,6 +15,7 @@
 #include <linux/u64_stats_sync.h>
 #include <linux/refcount.h>
 #include <linux/phylink.h>
+#include <linux/reset.h>
 #include <linux/rhashtable.h>
 #include <linux/dim.h>
 #include <linux/bitfield.h>
@@ -503,6 +504,21 @@
 #define INTF_MODE_RGMII_1000    (TRGMII_MODE | TRGMII_CENTRAL_ALIGNED)
 #define INTF_MODE_RGMII_10_100  0
 
+/* XFI Mac control registers */
+#define MTK_XMAC_BASE(x)	(0x12000 + (((x) - 1) * 0x1000))
+#define MTK_XMAC_MCR(x)		(MTK_XMAC_BASE(x))
+#define XMAC_MCR_TRX_DISABLE	0xf
+#define XMAC_MCR_FORCE_TX_FC	BIT(5)
+#define XMAC_MCR_FORCE_RX_FC	BIT(4)
+
+/* XFI Mac logic reset registers */
+#define MTK_XMAC_LOGIC_RST(x)	(MTK_XMAC_BASE(x) + 0x10)
+#define XMAC_LOGIC_RST		BIT(0)
+
+/* XFI Mac count global control */
+#define MTK_XMAC_CNT_CTRL(x)	(MTK_XMAC_BASE(x) + 0x100)
+#define XMAC_GLB_CNTCLR		BIT(0)
+
 /* GPIO port control registers for GMAC 2*/
 #define GPIO_OD33_CTRL8		0x4c0
 #define GPIO_BIAS_CTRL		0xed0
@@ -528,6 +544,7 @@
 #define SYSCFG0_SGMII_GMAC2    ((3 << 8) & SYSCFG0_SGMII_MASK)
 #define SYSCFG0_SGMII_GMAC1_V2 BIT(9)
 #define SYSCFG0_SGMII_GMAC2_V2 BIT(8)
+#define SYSCFG0_SGMII_GMAC3_V2 BIT(7)
 
 
 /* ethernet subsystem clock register */
@@ -566,6 +583,11 @@
 #define GEPHY_MAC_SEL          BIT(1)
 
 /* Top misc registers */
+#define TOP_MISC_NETSYS_PCS_MUX	0x84
+#define NETSYS_PCS_MUX_MASK	GENMASK(1, 0)
+#define	MUX_G2_USXGMII_SEL	BIT(1)
+#define MUX_HSGMII1_G1_SEL	BIT(0)
+
 #define USB_PHY_SWITCH_REG	0x218
 #define QPHY_SEL_MASK		GENMASK(1, 0)
 #define SGMII_QPHY_SEL		0x2
@@ -590,6 +612,8 @@
 #define MT7628_SDM_RBCNT	(MT7628_SDM_OFFSET + 0x10c)
 #define MT7628_SDM_CS_ERR	(MT7628_SDM_OFFSET + 0x110)
 
+/* Debug Purpose Register */
+#define MTK_PSE_FQFC_CFG	0x100
 #define MTK_FE_CDM1_FSM		0x220
 #define MTK_FE_CDM2_FSM		0x224
 #define MTK_FE_CDM3_FSM		0x238
@@ -598,6 +622,11 @@
 #define MTK_FE_CDM6_FSM		0x328
 #define MTK_FE_GDM1_FSM		0x228
 #define MTK_FE_GDM2_FSM		0x22C
+#define MTK_FE_GDM3_FSM		0x23C
+#define MTK_FE_PSE_FREE		0x240
+#define MTK_FE_DROP_FQ		0x244
+#define MTK_FE_DROP_FC		0x248
+#define MTK_FE_DROP_PPE		0x24C
 
 #define MTK_MAC_FSM(x)		(0x1010C + ((x) * 0x100))
 
@@ -722,12 +751,8 @@ enum mtk_clks_map {
 	MTK_CLK_ETHWARP_WOCPU2,
 	MTK_CLK_ETHWARP_WOCPU1,
 	MTK_CLK_ETHWARP_WOCPU0,
-	MTK_CLK_TOP_USXGMII_SBUS_0_SEL,
-	MTK_CLK_TOP_USXGMII_SBUS_1_SEL,
 	MTK_CLK_TOP_SGM_0_SEL,
 	MTK_CLK_TOP_SGM_1_SEL,
-	MTK_CLK_TOP_XFI_PHY_0_XTAL_SEL,
-	MTK_CLK_TOP_XFI_PHY_1_XTAL_SEL,
 	MTK_CLK_TOP_ETH_GMII_SEL,
 	MTK_CLK_TOP_ETH_REFCK_50M_SEL,
 	MTK_CLK_TOP_ETH_SYS_200M_SEL,
@@ -798,19 +823,9 @@ enum mtk_clks_map {
 				 BIT_ULL(MTK_CLK_GP3) | BIT_ULL(MTK_CLK_XGP1) | \
 				 BIT_ULL(MTK_CLK_XGP2) | BIT_ULL(MTK_CLK_XGP3) | \
 				 BIT_ULL(MTK_CLK_CRYPTO) | \
-				 BIT_ULL(MTK_CLK_SGMII_TX_250M) | \
-				 BIT_ULL(MTK_CLK_SGMII_RX_250M) | \
-				 BIT_ULL(MTK_CLK_SGMII2_TX_250M) | \
-				 BIT_ULL(MTK_CLK_SGMII2_RX_250M) | \
 				 BIT_ULL(MTK_CLK_ETHWARP_WOCPU2) | \
 				 BIT_ULL(MTK_CLK_ETHWARP_WOCPU1) | \
 				 BIT_ULL(MTK_CLK_ETHWARP_WOCPU0) | \
-				 BIT_ULL(MTK_CLK_TOP_USXGMII_SBUS_0_SEL) | \
-				 BIT_ULL(MTK_CLK_TOP_USXGMII_SBUS_1_SEL) | \
-				 BIT_ULL(MTK_CLK_TOP_SGM_0_SEL) | \
-				 BIT_ULL(MTK_CLK_TOP_SGM_1_SEL) | \
-				 BIT_ULL(MTK_CLK_TOP_XFI_PHY_0_XTAL_SEL) | \
-				 BIT_ULL(MTK_CLK_TOP_XFI_PHY_1_XTAL_SEL) | \
 				 BIT_ULL(MTK_CLK_TOP_ETH_GMII_SEL) | \
 				 BIT_ULL(MTK_CLK_TOP_ETH_REFCK_50M_SEL) | \
 				 BIT_ULL(MTK_CLK_TOP_ETH_SYS_200M_SEL) | \
@@ -944,6 +959,8 @@ enum mkt_eth_capabilities {
 	MTK_RGMII_BIT = 0,
 	MTK_TRGMII_BIT,
 	MTK_SGMII_BIT,
+	MTK_USXGMII_BIT,
+	MTK_2P5GPHY_BIT,
 	MTK_ESW_BIT,
 	MTK_GEPHY_BIT,
 	MTK_MUX_BIT,
@@ -964,8 +981,11 @@ enum mkt_eth_capabilities {
 	MTK_ETH_MUX_GDM1_TO_GMAC1_ESW_BIT,
 	MTK_ETH_MUX_GMAC2_GMAC0_TO_GEPHY_BIT,
 	MTK_ETH_MUX_U3_GMAC2_TO_QPHY_BIT,
+	MTK_ETH_MUX_GMAC2_TO_2P5GPHY_BIT,
 	MTK_ETH_MUX_GMAC1_GMAC2_TO_SGMII_RGMII_BIT,
 	MTK_ETH_MUX_GMAC12_TO_GEPHY_SGMII_BIT,
+	MTK_ETH_MUX_GMAC123_TO_GEPHY_SGMII_BIT,
+	MTK_ETH_MUX_GMAC123_TO_USXGMII_BIT,
 
 	/* PATH BITS */
 	MTK_ETH_PATH_GMAC1_RGMII_BIT,
@@ -973,14 +993,21 @@ enum mkt_eth_capabilities {
 	MTK_ETH_PATH_GMAC1_SGMII_BIT,
 	MTK_ETH_PATH_GMAC2_RGMII_BIT,
 	MTK_ETH_PATH_GMAC2_SGMII_BIT,
+	MTK_ETH_PATH_GMAC2_2P5GPHY_BIT,
 	MTK_ETH_PATH_GMAC2_GEPHY_BIT,
+	MTK_ETH_PATH_GMAC3_SGMII_BIT,
 	MTK_ETH_PATH_GDM1_ESW_BIT,
+	MTK_ETH_PATH_GMAC1_USXGMII_BIT,
+	MTK_ETH_PATH_GMAC2_USXGMII_BIT,
+	MTK_ETH_PATH_GMAC3_USXGMII_BIT,
 };
 
 /* Supported hardware group on SoCs */
 #define MTK_RGMII		BIT_ULL(MTK_RGMII_BIT)
 #define MTK_TRGMII		BIT_ULL(MTK_TRGMII_BIT)
 #define MTK_SGMII		BIT_ULL(MTK_SGMII_BIT)
+#define MTK_USXGMII		BIT_ULL(MTK_USXGMII_BIT)
+#define MTK_2P5GPHY		BIT_ULL(MTK_2P5GPHY_BIT)
 #define MTK_ESW			BIT_ULL(MTK_ESW_BIT)
 #define MTK_GEPHY		BIT_ULL(MTK_GEPHY_BIT)
 #define MTK_MUX			BIT_ULL(MTK_MUX_BIT)
@@ -1003,10 +1030,16 @@ enum mkt_eth_capabilities {
 	BIT_ULL(MTK_ETH_MUX_GMAC2_GMAC0_TO_GEPHY_BIT)
 #define MTK_ETH_MUX_U3_GMAC2_TO_QPHY		\
 	BIT_ULL(MTK_ETH_MUX_U3_GMAC2_TO_QPHY_BIT)
+#define MTK_ETH_MUX_GMAC2_TO_2P5GPHY		\
+	BIT_ULL(MTK_ETH_MUX_GMAC2_TO_2P5GPHY_BIT)
 #define MTK_ETH_MUX_GMAC1_GMAC2_TO_SGMII_RGMII	\
 	BIT_ULL(MTK_ETH_MUX_GMAC1_GMAC2_TO_SGMII_RGMII_BIT)
 #define MTK_ETH_MUX_GMAC12_TO_GEPHY_SGMII	\
 	BIT_ULL(MTK_ETH_MUX_GMAC12_TO_GEPHY_SGMII_BIT)
+#define MTK_ETH_MUX_GMAC123_TO_GEPHY_SGMII	\
+	BIT_ULL(MTK_ETH_MUX_GMAC123_TO_GEPHY_SGMII_BIT)
+#define MTK_ETH_MUX_GMAC123_TO_USXGMII	\
+	BIT_ULL(MTK_ETH_MUX_GMAC123_TO_USXGMII_BIT)
 
 /* Supported path present on SoCs */
 #define MTK_ETH_PATH_GMAC1_RGMII	BIT_ULL(MTK_ETH_PATH_GMAC1_RGMII_BIT)
@@ -1014,8 +1047,13 @@ enum mkt_eth_capabilities {
 #define MTK_ETH_PATH_GMAC1_SGMII	BIT_ULL(MTK_ETH_PATH_GMAC1_SGMII_BIT)
 #define MTK_ETH_PATH_GMAC2_RGMII	BIT_ULL(MTK_ETH_PATH_GMAC2_RGMII_BIT)
 #define MTK_ETH_PATH_GMAC2_SGMII	BIT_ULL(MTK_ETH_PATH_GMAC2_SGMII_BIT)
+#define MTK_ETH_PATH_GMAC2_2P5GPHY	BIT_ULL(MTK_ETH_PATH_GMAC2_2P5GPHY_BIT)
 #define MTK_ETH_PATH_GMAC2_GEPHY	BIT_ULL(MTK_ETH_PATH_GMAC2_GEPHY_BIT)
+#define MTK_ETH_PATH_GMAC3_SGMII	BIT_ULL(MTK_ETH_PATH_GMAC3_SGMII_BIT)
 #define MTK_ETH_PATH_GDM1_ESW		BIT_ULL(MTK_ETH_PATH_GDM1_ESW_BIT)
+#define MTK_ETH_PATH_GMAC1_USXGMII	BIT_ULL(MTK_ETH_PATH_GMAC1_USXGMII_BIT)
+#define MTK_ETH_PATH_GMAC2_USXGMII	BIT_ULL(MTK_ETH_PATH_GMAC2_USXGMII_BIT)
+#define MTK_ETH_PATH_GMAC3_USXGMII	BIT_ULL(MTK_ETH_PATH_GMAC3_USXGMII_BIT)
 
 #define MTK_GMAC1_RGMII		(MTK_ETH_PATH_GMAC1_RGMII | MTK_RGMII)
 #define MTK_GMAC1_TRGMII	(MTK_ETH_PATH_GMAC1_TRGMII | MTK_TRGMII)
@@ -1023,7 +1061,12 @@ enum mkt_eth_capabilities {
 #define MTK_GMAC2_RGMII		(MTK_ETH_PATH_GMAC2_RGMII | MTK_RGMII)
 #define MTK_GMAC2_SGMII		(MTK_ETH_PATH_GMAC2_SGMII | MTK_SGMII)
 #define MTK_GMAC2_GEPHY		(MTK_ETH_PATH_GMAC2_GEPHY | MTK_GEPHY)
+#define MTK_GMAC2_2P5GPHY	(MTK_ETH_PATH_GMAC2_2P5GPHY | MTK_2P5GPHY)
+#define MTK_GMAC3_SGMII		(MTK_ETH_PATH_GMAC3_SGMII | MTK_SGMII)
 #define MTK_GDM1_ESW		(MTK_ETH_PATH_GDM1_ESW | MTK_ESW)
+#define MTK_GMAC1_USXGMII	(MTK_ETH_PATH_GMAC1_USXGMII | MTK_USXGMII)
+#define MTK_GMAC2_USXGMII	(MTK_ETH_PATH_GMAC2_USXGMII | MTK_USXGMII)
+#define MTK_GMAC3_USXGMII	(MTK_ETH_PATH_GMAC3_USXGMII | MTK_USXGMII)
 
 /* MUXes present on SoCs */
 /* 0: GDM1 -> GMAC1, 1: GDM1 -> ESW */
@@ -1042,10 +1085,20 @@ enum mkt_eth_capabilities {
 	(MTK_ETH_MUX_GMAC1_GMAC2_TO_SGMII_RGMII | MTK_MUX | \
 	MTK_SHARED_SGMII)
 
+/* 2: GMAC2 -> XGMII */
+#define MTK_MUX_GMAC2_TO_2P5GPHY      \
+	(MTK_ETH_MUX_GMAC2_TO_2P5GPHY | MTK_MUX | MTK_INFRA)
+
 /* 0: GMACx -> GEPHY, 1: GMACx -> SGMII where x is 1 or 2 */
 #define MTK_MUX_GMAC12_TO_GEPHY_SGMII   \
 	(MTK_ETH_MUX_GMAC12_TO_GEPHY_SGMII | MTK_MUX)
 
+#define MTK_MUX_GMAC123_TO_GEPHY_SGMII   \
+	(MTK_ETH_MUX_GMAC123_TO_GEPHY_SGMII | MTK_MUX)
+
+#define MTK_MUX_GMAC123_TO_USXGMII   \
+	(MTK_ETH_MUX_GMAC123_TO_USXGMII | MTK_MUX | MTK_INFRA)
+
 #define MTK_HAS_CAPS(caps, _x)		(((caps) & (_x)) == (_x))
 
 #define MT7621_CAPS  (MTK_GMAC1_RGMII | MTK_GMAC1_TRGMII | \
@@ -1077,8 +1130,12 @@ enum mkt_eth_capabilities {
 		      MTK_MUX_GMAC12_TO_GEPHY_SGMII | MTK_QDMA | \
 		      MTK_RSTCTRL_PPE1 | MTK_SRAM)
 
-#define MT7988_CAPS  (MTK_36BIT_DMA | MTK_GDM1_ESW | MTK_QDMA | \
-		      MTK_RSTCTRL_PPE1 | MTK_RSTCTRL_PPE2 | MTK_SRAM)
+#define MT7988_CAPS  (MTK_36BIT_DMA | MTK_GDM1_ESW | MTK_GMAC1_SGMII | \
+		      MTK_GMAC2_2P5GPHY | MTK_GMAC2_SGMII | MTK_GMAC2_USXGMII | \
+		      MTK_GMAC3_SGMII | MTK_GMAC3_USXGMII | \
+		      MTK_MUX_GMAC123_TO_GEPHY_SGMII | \
+		      MTK_MUX_GMAC123_TO_USXGMII | MTK_MUX_GMAC2_TO_2P5GPHY | \
+		      MTK_QDMA | MTK_RSTCTRL_PPE1 | MTK_RSTCTRL_PPE2 | MTK_SRAM)
 
 struct mtk_tx_dma_desc_info {
 	dma_addr_t	addr;
@@ -1315,6 +1372,9 @@ struct mtk_mac {
 	struct device_node		*of_node;
 	struct phylink			*phylink;
 	struct phylink_config		phylink_config;
+	struct phylink_pcs		*sgmii_pcs;
+	struct phylink_pcs		*usxgmii_pcs;
+	struct phy			*pextp;
 	struct mtk_eth			*hw;
 	struct mtk_hw_stats		*hw_stats;
 	__be32				hwlro_ip[MTK_MAX_LRO_IP_CNT];
@@ -1421,6 +1481,19 @@ static inline u32 mtk_get_ib2_multicast_mask(struct mtk_eth *eth)
 	return MTK_FOE_IB2_MULTICAST;
 }
 
+static inline bool mtk_interface_mode_is_xgmii(phy_interface_t interface)
+{
+	switch (interface) {
+	case PHY_INTERFACE_MODE_INTERNAL:
+	case PHY_INTERFACE_MODE_USXGMII:
+	case PHY_INTERFACE_MODE_10GBASER:
+	case PHY_INTERFACE_MODE_5GBASER:
+		return true;
+	default:
+		return false;
+	}
+}
+
 /* read the hardware status register */
 void mtk_stats_update_mac(struct mtk_mac *mac);
 
@@ -1429,8 +1502,10 @@ u32 mtk_r32(struct mtk_eth *eth, unsigned reg);
 u32 mtk_m32(struct mtk_eth *eth, u32 mask, u32 set, unsigned int reg);
 
 int mtk_gmac_sgmii_path_setup(struct mtk_eth *eth, int mac_id);
+int mtk_gmac_2p5gphy_path_setup(struct mtk_eth *eth, int mac_id);
 int mtk_gmac_gephy_path_setup(struct mtk_eth *eth, int mac_id);
 int mtk_gmac_rgmii_path_setup(struct mtk_eth *eth, int mac_id);
+int mtk_gmac_usxgmii_path_setup(struct mtk_eth *eth, int mac_id);
 
 int mtk_eth_offload_init(struct mtk_eth *eth);
 int mtk_eth_setup_tc(struct net_device *dev, enum tc_setup_type type,
-- 
2.43.0

