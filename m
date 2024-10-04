Return-Path: <devicetree+bounces-107769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9982E98FF42
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 11:03:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 25622B21ACE
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 09:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBAC7145B11;
	Fri,  4 Oct 2024 09:03:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D914658D
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 09:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728032616; cv=none; b=SBjsZuquqmD7vQ1+mQCBj+9N721jAiULqVFQ9oT5UE0z4g8ClfhPibTlmNKs4Is1qR07rTspOgcdTN3GgM1uiu3XS1fkvQHdZjA6bRIXkwebo2PVP3TYZyBJqwYTu7Xu6smswyhdMElrtLVNNalu6LWkZMygEwRWHNXyYDJY+wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728032616; c=relaxed/simple;
	bh=xmy0hDnSDQiz+JbloXDQtlVjBPu0c317PAOHKTH90lk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ULHN2Q1OIAj0W+nB3p8LVi9dZ2Z+3Ftp8CuaruxEDRFQNgIBTtjVsWml0RRBIWJHW1c3w7QPG+RCMV8wBIOoVDelnwNwxeudqIKQx8sTvwb8fPz0KezoWjG3djjhPdCQO56yl3Q/pAMcr6Gv2RUc8Haj1J7OmGe9Mydyh/SvTbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sweBK-0004Yq-QF; Fri, 04 Oct 2024 11:01:02 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sweBJ-003X8J-62; Fri, 04 Oct 2024 11:01:01 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sweBJ-006wNq-0N;
	Fri, 04 Oct 2024 11:01:01 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	Divya.Koppera@microchip.com
Subject: [PATCH net-next v5 2/2] net: phy: Add support for PHY timing-role configuration via device tree
Date: Fri,  4 Oct 2024 11:01:00 +0200
Message-Id: <20241004090100.1654353-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241004090100.1654353-1-o.rempel@pengutronix.de>
References: <20241004090100.1654353-1-o.rempel@pengutronix.de>
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

Introduce support for configuring the master/slave role of PHYs based on
the `timing-role` property in the device tree. While this functionality
is necessary for Single Pair Ethernet (SPE) PHYs (1000/100/10Base-T1)
where hardware strap pins may be unavailable or incorrectly set, it
works for any PHY type.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
changes v5:
- s/force-/forced-/
- s/prefer-/preferred-/
changes v4:
- add "Reviewed-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>"
changes v3:
- rename master-slave to timing-role
---
 drivers/net/phy/phy-core.c   | 33 +++++++++++++++++++++++++++++++++
 drivers/net/phy/phy_device.c |  3 +++
 include/linux/phy.h          |  1 +
 3 files changed, 37 insertions(+)

diff --git a/drivers/net/phy/phy-core.c b/drivers/net/phy/phy-core.c
index 1f98b6a96c153..4e8db12d60928 100644
--- a/drivers/net/phy/phy-core.c
+++ b/drivers/net/phy/phy-core.c
@@ -412,6 +412,39 @@ void of_set_phy_eee_broken(struct phy_device *phydev)
 	phydev->eee_broken_modes = broken;
 }
 
+/**
+ * of_set_phy_timing_role - Set the master/slave mode of the PHY
+ *
+ * @phydev: The phy_device struct
+ *
+ * Set master/slave configuration of the PHY based on the device tree.
+ */
+void of_set_phy_timing_role(struct phy_device *phydev)
+{
+	struct device_node *node = phydev->mdio.dev.of_node;
+	const char *master;
+
+	if (!IS_ENABLED(CONFIG_OF_MDIO))
+		return;
+
+	if (!node)
+		return;
+
+	if (of_property_read_string(node, "timing-role", &master))
+		return;
+
+	if (strcmp(master, "forced-master") == 0)
+		phydev->master_slave_set = MASTER_SLAVE_CFG_MASTER_FORCE;
+	else if (strcmp(master, "forced-slave") == 0)
+		phydev->master_slave_set = MASTER_SLAVE_CFG_SLAVE_FORCE;
+	else if (strcmp(master, "preferred-master") == 0)
+		phydev->master_slave_set = MASTER_SLAVE_CFG_MASTER_PREFERRED;
+	else if (strcmp(master, "preferred-slave") == 0)
+		phydev->master_slave_set = MASTER_SLAVE_CFG_SLAVE_PREFERRED;
+	else
+		phydev_warn(phydev, "Unknown master-slave mode %s\n", master);
+}
+
 /**
  * phy_resolve_aneg_pause - Determine pause autoneg results
  *
diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index 560e338b307a4..4ccf504a8b2c2 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -3608,6 +3608,9 @@ static int phy_probe(struct device *dev)
 	 */
 	of_set_phy_eee_broken(phydev);
 
+	/* Get master/slave strap overrides */
+	of_set_phy_timing_role(phydev);
+
 	/* The Pause Frame bits indicate that the PHY can support passing
 	 * pause frames. During autonegotiation, the PHYs will determine if
 	 * they should allow pause frames to pass.  The MAC driver should then
diff --git a/include/linux/phy.h b/include/linux/phy.h
index a98bc91a0cde9..ff762a3d8270a 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1260,6 +1260,7 @@ size_t phy_speeds(unsigned int *speeds, size_t size,
 		  unsigned long *mask);
 void of_set_phy_supported(struct phy_device *phydev);
 void of_set_phy_eee_broken(struct phy_device *phydev);
+void of_set_phy_timing_role(struct phy_device *phydev);
 int phy_speed_down_core(struct phy_device *phydev);
 
 /**
-- 
2.39.5


