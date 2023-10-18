Return-Path: <devicetree+bounces-9636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ABBC7CDAB6
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:39:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EABE4281CB9
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D85B328DB;
	Wed, 18 Oct 2023 11:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C8E2EAEF
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 11:39:37 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 319C6115
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:39:36 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qt4tP-0002JR-Pn; Wed, 18 Oct 2023 13:39:15 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qt4tO-002Xiu-KY; Wed, 18 Oct 2023 13:39:14 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qt4tO-00FE8c-1e;
	Wed, 18 Oct 2023 13:39:14 +0200
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
	Florian Fainelli <florian.fainelli@broadcom.com>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: [PATCH net-next v5 8/9] net: dsa: microchip: Refactor switch shutdown routine for WoL preparation
Date: Wed, 18 Oct 2023 13:39:12 +0200
Message-Id: <20231018113913.3629151-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231018113913.3629151-1-o.rempel@pengutronix.de>
References: <20231018113913.3629151-1-o.rempel@pengutronix.de>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Centralize the switch shutdown routine in a dedicated function,
ksz_switch_shutdown(), to enhance code maintainability and reduce
redundancy. This change abstracts the common shutdown operations
previously duplicated in ksz9477_i2c_shutdown() and ksz_spi_shutdown().

This refactoring is a preparatory step for an upcoming patch to avoid
reset on shutdown if Wake-on-LAN (WoL) is enabled.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 drivers/net/dsa/microchip/ksz9477_i2c.c |  5 +----
 drivers/net/dsa/microchip/ksz_common.c  | 18 ++++++++++++++++++
 drivers/net/dsa/microchip/ksz_common.h  |  1 +
 drivers/net/dsa/microchip/ksz_spi.c     |  5 +----
 4 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/net/dsa/microchip/ksz9477_i2c.c b/drivers/net/dsa/microchip/ksz9477_i2c.c
index 2710afad4f3a..cac4a607e54a 100644
--- a/drivers/net/dsa/microchip/ksz9477_i2c.c
+++ b/drivers/net/dsa/microchip/ksz9477_i2c.c
@@ -66,10 +66,7 @@ static void ksz9477_i2c_shutdown(struct i2c_client *i2c)
 	if (!dev)
 		return;
 
-	if (dev->dev_ops->reset)
-		dev->dev_ops->reset(dev);
-
-	dsa_switch_shutdown(dev->ds);
+	ksz_switch_shutdown(dev);
 
 	i2c_set_clientdata(i2c, NULL);
 }
diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
index 79052a54880c..fe2cf1de5a5c 100644
--- a/drivers/net/dsa/microchip/ksz_common.c
+++ b/drivers/net/dsa/microchip/ksz_common.c
@@ -3810,6 +3810,24 @@ struct ksz_device *ksz_switch_alloc(struct device *base, void *priv)
 }
 EXPORT_SYMBOL(ksz_switch_alloc);
 
+/**
+ * ksz_switch_shutdown - Shutdown routine for the switch device.
+ * @dev: The switch device structure.
+ *
+ * This function is responsible for initiating a shutdown sequence for the
+ * switch device. It invokes the reset operation defined in the device
+ * operations, if available, to reset the switch. Subsequently, it calls the
+ * DSA framework's shutdown function to ensure a proper shutdown of the DSA
+ * switch.
+ */
+void ksz_switch_shutdown(struct ksz_device *dev)
+{
+	if (dev->dev_ops->reset)
+		dev->dev_ops->reset(dev);
+
+	dsa_switch_shutdown(dev->ds);
+}
+
 static void ksz_parse_rgmii_delay(struct ksz_device *dev, int port_num,
 				  struct device_node *port_dn)
 {
diff --git a/drivers/net/dsa/microchip/ksz_common.h b/drivers/net/dsa/microchip/ksz_common.h
index 8fc3210d7a3d..34a8e9784cca 100644
--- a/drivers/net/dsa/microchip/ksz_common.h
+++ b/drivers/net/dsa/microchip/ksz_common.h
@@ -399,6 +399,7 @@ extern const struct ksz_chip_data ksz_switch_chips[];
 int ksz_switch_macaddr_get(struct dsa_switch *ds, int port,
 			   struct netlink_ext_ack *extack);
 void ksz_switch_macaddr_put(struct dsa_switch *ds);
+void ksz_switch_shutdown(struct ksz_device *dev);
 
 /* Common register access functions */
 static inline struct regmap *ksz_regmap_8(struct ksz_device *dev)
diff --git a/drivers/net/dsa/microchip/ksz_spi.c b/drivers/net/dsa/microchip/ksz_spi.c
index 279338451621..6f6d878e742c 100644
--- a/drivers/net/dsa/microchip/ksz_spi.c
+++ b/drivers/net/dsa/microchip/ksz_spi.c
@@ -114,10 +114,7 @@ static void ksz_spi_shutdown(struct spi_device *spi)
 	if (!dev)
 		return;
 
-	if (dev->dev_ops->reset)
-		dev->dev_ops->reset(dev);
-
-	dsa_switch_shutdown(dev->ds);
+	ksz_switch_shutdown(dev);
 
 	spi_set_drvdata(spi, NULL);
 }
-- 
2.39.2


