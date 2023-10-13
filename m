Return-Path: <devicetree+bounces-8490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDC27C85AF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 14:25:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF6BC1C210F1
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:25:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8168215E86;
	Fri, 13 Oct 2023 12:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF24179B4
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 12:24:34 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 094B4CC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 05:24:32 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qrHD6-00016F-4V; Fri, 13 Oct 2023 14:24:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qrHD5-001OKj-0t; Fri, 13 Oct 2023 14:24:07 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qrHD4-00FiNw-32;
	Fri, 13 Oct 2023 14:24:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: "David S. Miller" <davem@davemloft.net>,
	Andrew Lunn <andrew@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: [PATCH net-next v3 3/7] net: dsa: microchip: ksz9477: add Wake on LAN support
Date: Fri, 13 Oct 2023 14:24:01 +0200
Message-Id: <20231013122405.3745475-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013122405.3745475-1-o.rempel@pengutronix.de>
References: <20231013122405.3745475-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add WoL support for KSZ9477 family of switches. This code was tested on
KSZ8563 chip and supports only wake on Magic Packet for now.
Other parts needed for fully operational WoL support are in the followup
patches.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa/microchip/ksz9477.c    | 109 +++++++++++++++++++++++++
 drivers/net/dsa/microchip/ksz9477.h    |   4 +
 drivers/net/dsa/microchip/ksz_common.c |  26 ++++++
 drivers/net/dsa/microchip/ksz_common.h |   4 +
 4 files changed, 143 insertions(+)

diff --git a/drivers/net/dsa/microchip/ksz9477.c b/drivers/net/dsa/microchip/ksz9477.c
index cde8ef33d029..3d9b6d6083cf 100644
--- a/drivers/net/dsa/microchip/ksz9477.c
+++ b/drivers/net/dsa/microchip/ksz9477.c
@@ -56,6 +56,112 @@ int ksz9477_change_mtu(struct ksz_device *dev, int port, int mtu)
 				  REG_SW_MTU_MASK, frame_size);
 }
 
+/**
+ * ksz9477_handle_wake_reason - Handle wake reason on a specified port.
+ * @dev: The device structure.
+ * @port: The port number.
+ *
+ * This function reads the PME (Power Management Event) status register of a
+ * specified port to determine the wake reason. If there is no wake event, it
+ * returns early. Otherwise, it logs the wake reason which could be due to a
+ * "Magic Packet", "Link Up", or "Energy Detect" event. The PME status register
+ * is then cleared to acknowledge the handling of the wake event.
+ *
+ * Return: 0 on success, or an error code on failure.
+ */
+static int ksz9477_handle_wake_reason(struct ksz_device *dev, int port)
+{
+	u8 pme_status;
+	int ret;
+
+	ret = ksz_pread8(dev, port, REG_PORT_PME_STATUS, &pme_status);
+	if (ret)
+		return ret;
+
+	if (!pme_status)
+		return 0;
+
+	dev_dbg(dev->dev, "Wake event on port %d due to: %s %s %s\n", port,
+		pme_status & PME_WOL_MAGICPKT ? "\"Magic Packet\"" : "",
+		pme_status & PME_WOL_LINKUP ? "\"Link Up\"" : "",
+		pme_status & PME_WOL_ENERGY ? "\"Enery detect\"" : "");
+
+	return ksz_pwrite8(dev, port, REG_PORT_PME_STATUS, pme_status);
+}
+
+/**
+ * ksz9477_get_wol - Get Wake-on-LAN settings for a specified port.
+ * @dev: The device structure.
+ * @port: The port number.
+ * @wol: Pointer to ethtool Wake-on-LAN settings structure.
+ *
+ * This function checks the PME Pin Control Register to see if  PME Pin Output
+ * Enable is set, indicating PME is enabled. If enabled, it sets the supported
+ * and active WoL flags.
+ */
+void ksz9477_get_wol(struct ksz_device *dev, int port,
+		     struct ethtool_wolinfo *wol)
+{
+	u8 pme_ctrl, pme_conf;
+	int ret;
+
+	ret = ksz_read8(dev, REG_SW_PME_CTRL, &pme_conf);
+	if (ret)
+		return;
+
+	if (!(pme_conf & PME_ENABLE))
+		return;
+
+	wol->supported = WAKE_MAGIC;
+
+	ret = ksz_pread8(dev, port, REG_PORT_PME_CTRL, &pme_ctrl);
+	if (ret)
+		return;
+
+	if (pme_ctrl & PME_WOL_MAGICPKT)
+		wol->wolopts |= WAKE_MAGIC;
+}
+
+/**
+ * ksz9477_set_wol - Set Wake-on-LAN settings for a specified port.
+ * @dev: The device structure.
+ * @port: The port number.
+ * @wol: Pointer to ethtool Wake-on-LAN settings structure.
+ *
+ * This function configures Wake-on-LAN (WoL) settings for a specified port.
+ * It validates the provided WoL options, checks if PME is enabled via the
+ * switch's PME Pin Control Register, clears any previous wake reasons,
+ * and sets the Magic Packet flag in the port's PME control register if
+ * specified.
+ *
+ * Return: 0 on success, or other error codes on failure.
+ */
+int ksz9477_set_wol(struct ksz_device *dev, int port,
+		    struct ethtool_wolinfo *wol)
+{
+	u8 pme_conf, pme_ctrl = 0;
+	int ret;
+
+	if (wol->wolopts & ~WAKE_MAGIC)
+		return -EINVAL;
+
+	ret = ksz_read8(dev, REG_SW_PME_CTRL, &pme_conf);
+	if (ret)
+		return ret;
+
+	if (!(pme_conf & PME_ENABLE))
+		return -EOPNOTSUPP;
+
+	ret = ksz9477_handle_wake_reason(dev, port);
+	if (ret)
+		return ret;
+
+	if (wol->wolopts & WAKE_MAGIC)
+		pme_ctrl |= PME_WOL_MAGICPKT;
+
+	return ksz_pwrite8(dev, port, REG_PORT_PME_CTRL, pme_ctrl);
+}
+
 static int ksz9477_wait_vlan_ctrl_ready(struct ksz_device *dev)
 {
 	unsigned int val;
@@ -1006,6 +1112,9 @@ void ksz9477_port_setup(struct ksz_device *dev, int port, bool cpu_port)
 		ksz_pread16(dev, port, REG_PORT_PHY_INT_ENABLE, &data16);
 
 	ksz9477_port_acl_init(dev, port);
+
+	/* clear pending wake flags */
+	ksz9477_handle_wake_reason(dev, port);
 }
 
 void ksz9477_config_cpu_port(struct dsa_switch *ds)
diff --git a/drivers/net/dsa/microchip/ksz9477.h b/drivers/net/dsa/microchip/ksz9477.h
index f90e2e8ebe80..fa8d0318b437 100644
--- a/drivers/net/dsa/microchip/ksz9477.h
+++ b/drivers/net/dsa/microchip/ksz9477.h
@@ -58,6 +58,10 @@ void ksz9477_switch_exit(struct ksz_device *dev);
 void ksz9477_port_queue_split(struct ksz_device *dev, int port);
 void ksz9477_hsr_join(struct dsa_switch *ds, int port, struct net_device *hsr);
 void ksz9477_hsr_leave(struct dsa_switch *ds, int port, struct net_device *hsr);
+void ksz9477_get_wol(struct ksz_device *dev, int port,
+		     struct ethtool_wolinfo *wol);
+int ksz9477_set_wol(struct ksz_device *dev, int port,
+		    struct ethtool_wolinfo *wol);
 
 int ksz9477_port_acl_init(struct ksz_device *dev, int port);
 void ksz9477_port_acl_free(struct ksz_device *dev, int port);
diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
index db0ef4ad181e..bef1951fe6f2 100644
--- a/drivers/net/dsa/microchip/ksz_common.c
+++ b/drivers/net/dsa/microchip/ksz_common.c
@@ -319,6 +319,8 @@ static const struct ksz_dev_ops ksz9477_dev_ops = {
 	.mdb_del = ksz9477_mdb_del,
 	.change_mtu = ksz9477_change_mtu,
 	.phylink_mac_link_up = ksz9477_phylink_mac_link_up,
+	.wol_get = ksz9477_get_wol,
+	.wol_set = ksz9477_set_wol,
 	.config_cpu_port = ksz9477_config_cpu_port,
 	.tc_cbs_set_cinc = ksz9477_tc_cbs_set_cinc,
 	.enable_stp_addr = ksz9477_enable_stp_addr,
@@ -2935,6 +2937,28 @@ static int ksz_set_mac_eee(struct dsa_switch *ds, int port,
 	return 0;
 }
 
+static void ksz_get_wol(struct dsa_switch *ds, int port,
+			struct ethtool_wolinfo *wol)
+{
+	struct ksz_device *dev = ds->priv;
+
+	memset(wol, 0, sizeof(*wol));
+
+	if (dev->dev_ops->wol_get)
+		dev->dev_ops->wol_get(dev, port, wol);
+}
+
+static int ksz_set_wol(struct dsa_switch *ds, int port,
+		       struct ethtool_wolinfo *wol)
+{
+	struct ksz_device *dev = ds->priv;
+
+	if (dev->dev_ops->wol_set)
+		return dev->dev_ops->wol_set(dev, port, wol);
+
+	return -EOPNOTSUPP;
+}
+
 static void ksz_set_xmii(struct ksz_device *dev, int port,
 			 phy_interface_t interface)
 {
@@ -3782,6 +3806,8 @@ static const struct dsa_switch_ops ksz_switch_ops = {
 	.get_pause_stats	= ksz_get_pause_stats,
 	.port_change_mtu	= ksz_change_mtu,
 	.port_max_mtu		= ksz_max_mtu,
+	.get_wol		= ksz_get_wol,
+	.set_wol		= ksz_set_wol,
 	.get_ts_info		= ksz_get_ts_info,
 	.port_hwtstamp_get	= ksz_hwtstamp_get,
 	.port_hwtstamp_set	= ksz_hwtstamp_set,
diff --git a/drivers/net/dsa/microchip/ksz_common.h b/drivers/net/dsa/microchip/ksz_common.h
index 8842efca0871..43d0d8717eaa 100644
--- a/drivers/net/dsa/microchip/ksz_common.h
+++ b/drivers/net/dsa/microchip/ksz_common.h
@@ -373,6 +373,10 @@ struct ksz_dev_ops {
 				    int duplex, bool tx_pause, bool rx_pause);
 	void (*setup_rgmii_delay)(struct ksz_device *dev, int port);
 	int (*tc_cbs_set_cinc)(struct ksz_device *dev, int port, u32 val);
+	void (*wol_get)(struct ksz_device *dev, int port,
+			struct ethtool_wolinfo *wol);
+	int (*wol_set)(struct ksz_device *dev, int port,
+		       struct ethtool_wolinfo *wol);
 	void (*config_cpu_port)(struct dsa_switch *ds);
 	int (*enable_stp_addr)(struct ksz_device *dev);
 	int (*reset)(struct ksz_device *dev);
-- 
2.39.2


