Return-Path: <devicetree+bounces-147424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 890F9A383ED
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 14:07:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33B1F1896551
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 13:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E357220699;
	Mon, 17 Feb 2025 13:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0VmkVrN"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1697822068F;
	Mon, 17 Feb 2025 13:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739797341; cv=none; b=iN33RFMSexexfgieJawCUq45sk6Zuuw/ECFmwJI7ln4w4bi4jBH8qjnWQttlu7YBZFzmzs3JZlz8TvIQEXCe7TqOPnCGjUyu9Tx4cs7LK84Ixkc+mon5DlzKTS7azpHyUmZ4sIqpqsNy7EqiusxPsmW5zbIrjxTxEM2WR/VkqgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739797341; c=relaxed/simple;
	bh=M0HVkDDWJdXnCCZU01LeGxp8HSTktCyLE5RBMoypc9E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ussiaoQH/+jqZyIP/+CO3UkvphJjqXftOXFEUO+bf+DuGm0XFepmSRgE5nyp/EV65DJPaYmkLAJH2btV5f2ALNkgljGxHIBUnbHWb4Bfp9b8Kk+EGrbB37u7NrH1IoK8QvYhNOZmwWjg3xNQGiWDrS1U6OpchzjhcmCCB7jIgG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0VmkVrN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9619BC4CED1;
	Mon, 17 Feb 2025 13:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739797341;
	bh=M0HVkDDWJdXnCCZU01LeGxp8HSTktCyLE5RBMoypc9E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=f0VmkVrNgQ68rwM952CWyvsWBTcIwIe3WjhcOA+92ifPuytcNt2ylfGzXYvd9bYjz
	 QcEpGfWPZWN7wPQ/Uv/oajMXgHpZdQgV5deJor+ESm15DWJZQbXYmx7KgFRdyk43Kf
	 f0ekvjdJw5DwMpnK/QJpFiJp8s0Hj/tPCs2WVwt3FFibxGYPZe+JpDQpWh2vUySWuh
	 u/bGoQy+nlANA68I8ubn0czappO0yzw6fQZ1UxZ7m2bw01fCTIq3bCz1TDyC5dxVLH
	 hfai/JWscMrRDQ4mJexwqKohDvMcXE3VRVPA7juvuH/qXJ0o6/wH2++zY135VfYEi4
	 uS959zLEngDFA==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Mon, 17 Feb 2025 14:01:18 +0100
Subject: [PATCH net-next v5 14/15] net: airoha: Add loopback support for
 GDM2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-airoha-en7581-flowtable-offload-v5-14-28be901cb735@kernel.org>
References: <20250217-airoha-en7581-flowtable-offload-v5-0-28be901cb735@kernel.org>
In-Reply-To: <20250217-airoha-en7581-flowtable-offload-v5-0-28be901cb735@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Felix Fietkau <nbd@nbd.name>, Sean Wang <sean.wang@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
 "Chester A. Unal" <chester.a.unal@arinc9.com>, 
 Daniel Golle <daniel@makrotopia.org>, DENG Qingfang <dqfext@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 upstream@airoha.com
X-Mailer: b4 0.14.2

Enable hw redirection for traffic received on GDM2 port to GDM{3,4}.
This is required to apply Qdisc offloading (HTB or ETS) for traffic to
and from GDM{3,4} port.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/airoha/airoha_eth.c  | 69 ++++++++++++++++++++++++++++++-
 drivers/net/ethernet/airoha/airoha_eth.h  |  7 ++++
 drivers/net/ethernet/airoha/airoha_ppe.c  | 13 +++---
 drivers/net/ethernet/airoha/airoha_regs.h | 29 +++++++++++++
 4 files changed, 110 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/airoha/airoha_eth.c b/drivers/net/ethernet/airoha/airoha_eth.c
index 3065f418c92ad51b4042433110a678b39702e9c7..d2fd4a4f6cd325e47e3d1273aad795faabe13def 100644
--- a/drivers/net/ethernet/airoha/airoha_eth.c
+++ b/drivers/net/ethernet/airoha/airoha_eth.c
@@ -1588,14 +1588,79 @@ static int airoha_dev_set_macaddr(struct net_device *dev, void *p)
 	return 0;
 }
 
+static void airhoha_set_gdm2_loopback(struct airoha_gdm_port *port)
+{
+	u32 pse_port = port->id == 3 ? FE_PSE_PORT_GDM3 : FE_PSE_PORT_GDM4;
+	struct airoha_eth *eth = port->qdma->eth;
+	u32 chan = port->id == 3 ? 4 : 0;
+
+	/* Forward the traffic to the proper GDM port */
+	airoha_set_gdm_port_fwd_cfg(eth, REG_GDM_FWD_CFG(2), pse_port);
+	airoha_fe_clear(eth, REG_GDM_FWD_CFG(2), GDM_STRIP_CRC);
+
+	/* Enable GDM2 loopback */
+	airoha_fe_wr(eth, REG_GDM_TXCHN_EN(2), 0xffffffff);
+	airoha_fe_wr(eth, REG_GDM_RXCHN_EN(2), 0xffff);
+	airoha_fe_rmw(eth, REG_GDM_LPBK_CFG(2),
+		      LPBK_CHAN_MASK | LPBK_MODE_MASK | LPBK_EN_MASK,
+		      FIELD_PREP(LPBK_CHAN_MASK, chan) | LPBK_EN_MASK);
+	airoha_fe_rmw(eth, REG_GDM_LEN_CFG(2),
+		      GDM_SHORT_LEN_MASK | GDM_LONG_LEN_MASK,
+		      FIELD_PREP(GDM_SHORT_LEN_MASK, 60) |
+		      FIELD_PREP(GDM_LONG_LEN_MASK, AIROHA_MAX_MTU));
+
+	/* Disable VIP and IFC for GDM2 */
+	airoha_fe_clear(eth, REG_FE_VIP_PORT_EN, BIT(2));
+	airoha_fe_clear(eth, REG_FE_IFC_PORT_EN, BIT(2));
+
+	if (port->id == 3) {
+		/* FIXME: handle XSI_PCE1_PORT */
+		airoha_fe_wr(eth, REG_PPE_DFT_CPORT0(0),  0x5500);
+		airoha_fe_rmw(eth, REG_FE_WAN_PORT,
+			      WAN1_EN_MASK | WAN1_MASK | WAN0_MASK,
+			      FIELD_PREP(WAN0_MASK, HSGMII_LAN_PCIE0_SRCPORT));
+		airoha_fe_rmw(eth,
+			      REG_SP_DFT_CPORT(HSGMII_LAN_PCIE0_SRCPORT >> 3),
+			      SP_CPORT_PCIE0_MASK,
+			      FIELD_PREP(SP_CPORT_PCIE0_MASK,
+					 FE_PSE_PORT_CDM2));
+	} else {
+		/* FIXME: handle XSI_USB_PORT */
+		airoha_fe_rmw(eth, REG_SRC_PORT_FC_MAP6,
+			      FC_ID_OF_SRC_PORT24_MASK,
+			      FIELD_PREP(FC_ID_OF_SRC_PORT24_MASK, 2));
+		airoha_fe_rmw(eth, REG_FE_WAN_PORT,
+			      WAN1_EN_MASK | WAN1_MASK | WAN0_MASK,
+			      FIELD_PREP(WAN0_MASK, HSGMII_LAN_ETH_SRCPORT));
+		airoha_fe_rmw(eth,
+			      REG_SP_DFT_CPORT(HSGMII_LAN_ETH_SRCPORT >> 3),
+			      SP_CPORT_ETH_MASK,
+			      FIELD_PREP(SP_CPORT_ETH_MASK, FE_PSE_PORT_CDM2));
+	}
+}
+
 static int airoha_dev_init(struct net_device *dev)
 {
 	struct airoha_gdm_port *port = netdev_priv(dev);
 	struct airoha_eth *eth = port->qdma->eth;
+	u32 pse_port;
 
 	airoha_set_macaddr(port, dev->dev_addr);
-	airoha_set_gdm_port_fwd_cfg(eth, REG_GDM_FWD_CFG(port->id),
-				    FE_PSE_PORT_PPE1);
+
+	switch (port->id) {
+	case 3:
+	case 4:
+		airhoha_set_gdm2_loopback(port);
+		fallthrough;
+	case 2:
+		pse_port = FE_PSE_PORT_PPE2;
+		break;
+	default:
+		pse_port = FE_PSE_PORT_PPE1;
+		break;
+	}
+
+	airoha_set_gdm_port_fwd_cfg(eth, REG_GDM_FWD_CFG(port->id), pse_port);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/airoha/airoha_eth.h b/drivers/net/ethernet/airoha/airoha_eth.h
index 60f5dd9908b41f95b5b627640ff6b25c8e3e1706..064941348bd91f1115082bf5e7734f34007953f8 100644
--- a/drivers/net/ethernet/airoha/airoha_eth.h
+++ b/drivers/net/ethernet/airoha/airoha_eth.h
@@ -67,6 +67,13 @@ enum {
 	QDMA_INT_REG_MAX
 };
 
+enum {
+	HSGMII_LAN_PCIE0_SRCPORT = 0x16,
+	HSGMII_LAN_PCIE1_SRCPORT,
+	HSGMII_LAN_ETH_SRCPORT,
+	HSGMII_LAN_USB_SRCPORT,
+};
+
 enum {
 	XSI_PCIE0_VIP_PORT_MASK	= BIT(22),
 	XSI_PCIE1_VIP_PORT_MASK	= BIT(23),
diff --git a/drivers/net/ethernet/airoha/airoha_ppe.c b/drivers/net/ethernet/airoha/airoha_ppe.c
index 88a0440fe69936f21cdad42979829534a90f581d..086210d6894a2ed47cdd71039a2aea452f276be0 100644
--- a/drivers/net/ethernet/airoha/airoha_ppe.c
+++ b/drivers/net/ethernet/airoha/airoha_ppe.c
@@ -213,21 +213,22 @@ static int airoha_ppe_foe_entry_prepare(struct airoha_foe_entry *hwe,
 	      AIROHA_FOE_IB1_BIND_TTL;
 	hwe->ib1 = val;
 
-	val = FIELD_PREP(AIROHA_FOE_IB2_PORT_AG, 0x1f);
+	val = FIELD_PREP(AIROHA_FOE_IB2_PORT_AG, 0x1f) |
+	      AIROHA_FOE_IB2_PSE_QOS;
 	if (dsa_port >= 0)
 		val |= FIELD_PREP(AIROHA_FOE_IB2_NBQ, dsa_port);
+
 	if (dev) {
 		struct airoha_gdm_port *port = netdev_priv(dev);
 		u8 pse_port;
 
-		pse_port = port->id == 4 ? FE_PSE_PORT_GDM4 : port->id;
+		if (dsa_port >= 0)
+			pse_port = port->id == 4 ? FE_PSE_PORT_GDM4 : port->id;
+		else
+			pse_port = 2; /* uplink relies on GDM2 loopback */
 		val |= FIELD_PREP(AIROHA_FOE_IB2_PSE_PORT, pse_port);
 	}
 
-	/* FIXME: implement QoS support setting pse_port to 2 (loopback)
-	 * for uplink and setting qos bit in ib2
-	 */
-
 	if (is_multicast_ether_addr(dest_mac))
 		val |= AIROHA_FOE_IB2_MULTICAST;
 
diff --git a/drivers/net/ethernet/airoha/airoha_regs.h b/drivers/net/ethernet/airoha/airoha_regs.h
index 6cc64c60953a3961b7c93dfa75a289a6f7a6599b..1aa06cdffe2320375e8710d58f2bbb056a330dfd 100644
--- a/drivers/net/ethernet/airoha/airoha_regs.h
+++ b/drivers/net/ethernet/airoha/airoha_regs.h
@@ -38,6 +38,12 @@
 #define FE_RST_CORE_MASK		BIT(0)
 
 #define REG_FE_FOE_TS			0x0010
+
+#define REG_FE_WAN_PORT			0x0024
+#define WAN1_EN_MASK			BIT(16)
+#define WAN1_MASK			GENMASK(12, 8)
+#define WAN0_MASK			GENMASK(4, 0)
+
 #define REG_FE_WAN_MAC_H		0x0030
 #define REG_FE_LAN_MAC_H		0x0040
 
@@ -126,6 +132,7 @@
 #define GDM_IP4_CKSUM			BIT(22)
 #define GDM_TCP_CKSUM			BIT(21)
 #define GDM_UDP_CKSUM			BIT(20)
+#define GDM_STRIP_CRC			BIT(16)
 #define GDM_UCFQ_MASK			GENMASK(15, 12)
 #define GDM_BCFQ_MASK			GENMASK(11, 8)
 #define GDM_MCFQ_MASK			GENMASK(7, 4)
@@ -139,6 +146,16 @@
 #define GDM_SHORT_LEN_MASK		GENMASK(13, 0)
 #define GDM_LONG_LEN_MASK		GENMASK(29, 16)
 
+#define REG_GDM_LPBK_CFG(_n)		(GDM_BASE(_n) + 0x1c)
+#define LPBK_GAP_MASK			GENMASK(31, 24)
+#define LPBK_LEN_MASK			GENMASK(23, 10)
+#define LPBK_CHAN_MASK			GENMASK(8, 4)
+#define LPBK_MODE_MASK			GENMASK(3, 1)
+#define LPBK_EN_MASK			BIT(0)
+
+#define REG_GDM_TXCHN_EN(_n)		(GDM_BASE(_n) + 0x24)
+#define REG_GDM_RXCHN_EN(_n)		(GDM_BASE(_n) + 0x28)
+
 #define REG_FE_CPORT_CFG		(GDM1_BASE + 0x40)
 #define FE_CPORT_PAD			BIT(26)
 #define FE_CPORT_PORT_XFC_MASK		BIT(25)
@@ -351,6 +368,18 @@
 
 #define REG_MC_VLAN_DATA		0x2108
 
+#define REG_SP_DFT_CPORT(_n)		(0x20e0 + ((_n) << 2))
+#define SP_CPORT_PCIE1_MASK		GENMASK(31, 28)
+#define SP_CPORT_PCIE0_MASK		GENMASK(27, 24)
+#define SP_CPORT_USB_MASK		GENMASK(7, 4)
+#define SP_CPORT_ETH_MASK		GENMASK(7, 4)
+
+#define REG_SRC_PORT_FC_MAP6		0x2298
+#define FC_ID_OF_SRC_PORT27_MASK	GENMASK(28, 24)
+#define FC_ID_OF_SRC_PORT26_MASK	GENMASK(20, 16)
+#define FC_ID_OF_SRC_PORT25_MASK	GENMASK(12, 8)
+#define FC_ID_OF_SRC_PORT24_MASK	GENMASK(4, 0)
+
 #define REG_CDM5_RX_OQ1_DROP_CNT	0x29d4
 
 /* QDMA */

-- 
2.48.1


