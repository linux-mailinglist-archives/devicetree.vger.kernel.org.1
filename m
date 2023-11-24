Return-Path: <devicetree+bounces-18665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3087B7F7881
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 17:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 309441C20AFB
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 16:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804AD3309A;
	Fri, 24 Nov 2023 16:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=helmholz.de header.i=@helmholz.de header.b="TcAwrpSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.helmholz.de (mail.helmholz.de [217.6.86.34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F06E619A9
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 08:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=helmholz.de
	; s=dkim1; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:CC:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=0w6aQuUscuVPAHgE+2Is92gYWkxyPcZB0ubkTwnN32s=; b=TcAwrpSzHO/N4liCJppiA97OP/
	EvpaE6Hd356lEc8HixRnGxhw89aoQIrL10GqooXOkfC2VtsPJybz8qcP53FOMMQq62N/jig4bcMgq
	F1cViEZI9Qxdx7T8dGt6Y3q1SIfeZe4tv9qB6Py1k5dSvhLtTw56L+Z17HzhCl+fWyQaHK2jF3fYW
	A4cEY5mCpIB6uKwOuh/WQrebpPRB0CERpys4N9sVqIUMrtOXUzr0zlrOV028bYRk8hecrL4Mzu0va
	mTzpzs8cWipBlw5tUkWg/Mrq8skEW36bpFWK1IFNi/i8LvAJElJdAf9iggXgTVzk4UiLn/LaCVIWz
	Klk3oG9g==;
Received: from [192.168.1.4] (port=8305 helo=SH-EX2013.helmholz.local)
	by mail.helmholz.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384
	(Exim 4.96)
	(envelope-from <Ante.Knezic@helmholz.de>)
	id 1r6Ycy-0004bc-17;
	Fri, 24 Nov 2023 17:02:00 +0100
Received: from linuxdev.helmholz.local (192.168.6.7) by
 SH-EX2013.helmholz.local (192.168.1.4) with Microsoft SMTP Server (TLS) id
 15.0.1497.48; Fri, 24 Nov 2023 17:01:59 +0100
From: Ante Knezic <ante.knezic@helmholz.de>
To: <netdev@vger.kernel.org>
CC: <woojung.huh@microchip.com>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
	<olteanv@gmail.com>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>, <marex@denx.de>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Ante Knezic
	<ante.knezic@helmholz.de>
Subject: [PATCH net-next v5 2/2] net: dsa: microchip: add property to select internal RMII reference clock
Date: Fri, 24 Nov 2023 17:01:48 +0100
Message-ID: <4e62cff653c7845bb848de5af44abe7e5578f624.1700841353.git.ante.knezic@helmholz.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1700841353.git.ante.knezic@helmholz.de>
References: <cover.1700841353.git.ante.knezic@helmholz.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: SH-EX2013.helmholz.local (192.168.1.4) To
 SH-EX2013.helmholz.local (192.168.1.4)
X-EXCLAIMER-MD-CONFIG: 2ae5875c-d7e5-4d7e-baa3-654d37918933

Microchip KSZ8863/KSZ8873 have the ability to select between internal
and external RMII reference clock. By default, reference clock
needs to be provided via REFCLKI_3 pin. If required, device can be
setup to provide RMII clock internally so that REFCLKI_3 pin can be
left unconnected.
Add a new "microchip,rmii-clk-internal" property which will set
RMII clock reference to internal. If property is not set, reference
clock needs to be provided externally.

While at it, move the ksz8795_cpu_interface_select() to
ksz8_config_cpu_port() to get a cleaner call path for cpu port.

Signed-off-by: Ante Knezic <ante.knezic@helmholz.de>
---
 drivers/net/dsa/microchip/ksz8795.c     | 56 +++++++++++++++++++++++++++++----
 drivers/net/dsa/microchip/ksz8795_reg.h |  3 ++
 2 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dsa/microchip/ksz8795.c b/drivers/net/dsa/microchip/ksz8795.c
index 4bf4d67557dc..a749a4a970ec 100644
--- a/drivers/net/dsa/microchip/ksz8795.c
+++ b/drivers/net/dsa/microchip/ksz8795.c
@@ -1358,6 +1358,9 @@ static void ksz8795_cpu_interface_select(struct ksz_device *dev, int port)
 {
 	struct ksz_port *p = &dev->ports[port];
 
+	if (!ksz_is_ksz87xx(dev))
+		return;
+
 	if (!p->interface && dev->compat_interface) {
 		dev_warn(dev->dev,
 			 "Using legacy switch \"phy-mode\" property, because it is missing on port %d node. "
@@ -1391,18 +1394,55 @@ void ksz8_port_setup(struct ksz_device *dev, int port, bool cpu_port)
 	/* enable 802.1p priority */
 	ksz_port_cfg(dev, port, P_PRIO_CTRL, PORT_802_1P_ENABLE, true);
 
-	if (cpu_port) {
-		if (!ksz_is_ksz88x3(dev))
-			ksz8795_cpu_interface_select(dev, port);
-
+	if (cpu_port)
 		member = dsa_user_ports(ds);
-	} else {
+	else
 		member = BIT(dsa_upstream_port(ds, port));
-	}
 
 	ksz8_cfg_port_member(dev, port, member);
 }
 
+static int ksz88x3_config_rmii_clk(struct ksz_device *dev, int cpu_port)
+{
+	struct device_node *ports, *port, *cpu_node;
+	bool rmii_clk_internal;
+
+	if (!ksz_is_ksz88x3(dev))
+		return 0;
+
+	cpu_node = NULL;
+
+	ports = of_get_child_by_name(dev->dev->of_node, "ports");
+	if (!ports)
+		ports = of_get_child_by_name(dev->dev->of_node,
+					     "ethernet-ports");
+	if (!ports)
+		return -ENODEV;
+
+	for_each_available_child_of_node(ports, port) {
+		u32 index;
+
+		if (of_property_read_u32(port, "reg", &index) < 0)
+			return -ENODEV;
+
+		if (index == cpu_port) {
+			cpu_node = port;
+			break;
+		}
+	}
+
+	if (!cpu_node)
+		return -ENODEV;
+
+	rmii_clk_internal = of_property_read_bool(cpu_node,
+						  "microchip,rmii-clk-internal");
+
+	ksz_cfg(dev, KSZ88X3_REG_FVID_AND_HOST_MODE,
+		KSZ88X3_PORT3_RMII_CLK_INTERNAL, rmii_clk_internal);
+
+	return 0;
+}
+
 void ksz8_config_cpu_port(struct dsa_switch *ds)
 {
 	struct ksz_device *dev = ds->priv;
@@ -1419,6 +1459,10 @@ void ksz8_config_cpu_port(struct dsa_switch *ds)
 
 	ksz8_port_setup(dev, dev->cpu_port, true);
 
+	ksz8795_cpu_interface_select(dev, dev->cpu_port);
+	if (ksz88x3_config_rmii_clk(dev, dev->cpu_port))
+		dev_err(dev->dev, "Failed to set rmii reference clock source mode");
+
 	for (i = 0; i < dev->phy_port_cnt; i++) {
 		ksz_port_stp_state_set(ds, i, BR_STATE_DISABLED);
 	}
diff --git a/drivers/net/dsa/microchip/ksz8795_reg.h b/drivers/net/dsa/microchip/ksz8795_reg.h
index 3c9dae53e4d8..beca974e0171 100644
--- a/drivers/net/dsa/microchip/ksz8795_reg.h
+++ b/drivers/net/dsa/microchip/ksz8795_reg.h
@@ -22,6 +22,9 @@
 #define KSZ8863_GLOBAL_SOFTWARE_RESET	BIT(4)
 #define KSZ8863_PCS_RESET		BIT(0)
 
+#define KSZ88X3_REG_FVID_AND_HOST_MODE  0xC6
+#define KSZ88X3_PORT3_RMII_CLK_INTERNAL BIT(3)
+
 #define REG_SW_CTRL_0			0x02
 
 #define SW_NEW_BACKOFF			BIT(7)
-- 
2.11.0


