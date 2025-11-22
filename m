Return-Path: <devicetree+bounces-241354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F066C7D020
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 13:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A304A3A9D81
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 12:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C37F302170;
	Sat, 22 Nov 2025 12:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="dygU5DfU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED65935977;
	Sat, 22 Nov 2025 12:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763815432; cv=none; b=UIfAxagywuBrfcx0leEjS4puGgtbis7ylFHF9dKnq1AB6kqJnW1CW9md2ut4IG+iHm5VNLbLWEUkUI8tMJeZDz/3Bb2nWwZ41vly5Ehk8XB5G0g4g39VXCVbPo11PVbRrS5EtMXWDIfj58qN+X2E4hbsmNzw21D2/T+62fDP5ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763815432; c=relaxed/simple;
	bh=IcGYyGYeJra0a/n0iJzuDoZje8jd+zE7LoYkmi7TlSI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qo7VFr80uJG+E2+fpqlcZLhsGryXGohwJ1BBqSNYmOBLCneWXsP0U+6otqQNol2zJoGMDQWs/tog/zpUiDkZvM/sc+atMgXjmHTfXWJPY2fwO3Bm6VZ30e9UKp6DKmr56ZBEALrLLSdNqsl3zlgIePGJt4WkuVMggVv/DtaWndE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=dygU5DfU; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 5621A1A1C9C;
	Sat, 22 Nov 2025 12:43:48 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2A51A606C5;
	Sat, 22 Nov 2025 12:43:48 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C769510371E8C;
	Sat, 22 Nov 2025 13:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763815426; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=VCtqMiTZqbHQ/q1ZrgDpE3C+9DphXwTOYBU9gv86OWM=;
	b=dygU5DfUau6+L/mohBBB0Ywp3BSopU1C71tcIh2KNxXXJcM7xbQR6eZn4+Oc5DKGVlt+/h
	xVpmYIxQ6kOKeAKwf0DOfnUVHWVCIlKxAhYqJegZTzoONuye7zf/ntmamWK+W1N1RhM+hQ
	ZVN/X/FsYv6dwC+fJT4bY15eIm+L/Xdy3bbnDJWrLUnihW0W+5bjN6ZShfGlybQ0BYqfIE
	7H80ezjpkaQ0y1ZHNXvDw78WNfJDAW+8uh3E5OZ73R1SpW4T8g7f+i9X4d2dH69XfTzfFP
	TiX6qRS0ZxZbsijewgndO65BgajAb3tlPQN1NIe2OQI+NeY7+P7WpXIVDkX54w==
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: davem@davemloft.net
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	Andrew Lunn <andrew@lunn.ch>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Herve Codina <herve.codina@bootlin.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	=?UTF-8?q?K=C3=B6ry=20Maincent?= <kory.maincent@bootlin.com>,
	=?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	=?UTF-8?q?Nicol=C3=B2=20Veronese?= <nicveronese@gmail.com>,
	Simon Horman <horms@kernel.org>,
	mwojtas@chromium.org,
	Antoine Tenart <atenart@kernel.org>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Daniel Golle <daniel@makrotopia.org>,
	Dimitri Fedrau <dimitri.fedrau@liebherr.com>,
	Tariq Toukan <tariqt@nvidia.com>
Subject: [PATCH net-next v19 06/15] net: phy: Create a phy_port for PHY-driven SFPs
Date: Sat, 22 Nov 2025 13:43:05 +0100
Message-ID: <20251122124317.92346-7-maxime.chevallier@bootlin.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251122124317.92346-1-maxime.chevallier@bootlin.com>
References: <20251122124317.92346-1-maxime.chevallier@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Fuzzy: f0a28691f7ec4acdd6a2650b9611bd90b8db1865e04a7f31d08e08ed4978660bd74e6f9d7b79f45cf671da8c3c71ec37e6f3c48ea0acdb78a09d500b02d2c7fd

Some PHY devices may be used as media-converters to drive SFP ports (for
example, to allow using SFP when the SoC can only output RGMII). This is
already supported to some extend by allowing PHY drivers to registers
themselves as being SFP upstream.

However, the logic to drive the SFP can actually be split to a per-port
control logic, allowing support for multi-port PHYs, or PHYs that can
either drive SFPs or Copper.

To that extent, create a phy_port when registering an SFP bus onto a
PHY. This port is considered a "serdes" port, in that it can feed data
to another entity on the link. The PHY driver needs to specify the
various PHY_INTERFACE_MODE_XXX that this port supports.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Tested-by: Christophe Leroy <christophe.leroy@csgroup.eu>
Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
---
 drivers/net/phy/phy_device.c | 24 ++++++++++++++++++++++++
 drivers/net/phy/phy_port.c   | 15 +++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index f48565c3a9b8..3772c68b1dbc 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -1643,6 +1643,26 @@ static void phy_del_port(struct phy_device *phydev, struct phy_port *port)
 	phydev->n_ports--;
 }
 
+static int phy_setup_sfp_port(struct phy_device *phydev)
+{
+	struct phy_port *port = phy_port_alloc();
+
+	if (!port)
+		return -ENOMEM;
+
+	port->parent_type = PHY_PORT_PHY;
+	port->phy = phydev;
+
+	/* The PHY is a media converter, the port connected to the SFP cage
+	 * is a MII port.
+	 */
+	port->is_mii = true;
+
+	phy_add_port(phydev, port);
+
+	return 0;
+}
+
 /**
  * phy_sfp_probe - probe for a SFP cage attached to this PHY device
  * @phydev: Pointer to phy_device
@@ -1664,6 +1684,10 @@ int phy_sfp_probe(struct phy_device *phydev,
 		ret = sfp_bus_add_upstream(bus, phydev, ops);
 		sfp_bus_put(bus);
 	}
+
+	if (phydev->sfp_bus)
+		ret = phy_setup_sfp_port(phydev);
+
 	return ret;
 }
 EXPORT_SYMBOL(phy_sfp_probe);
diff --git a/drivers/net/phy/phy_port.c b/drivers/net/phy/phy_port.c
index 0502fe60da3e..f89f70f83593 100644
--- a/drivers/net/phy/phy_port.c
+++ b/drivers/net/phy/phy_port.c
@@ -131,6 +131,21 @@ void phy_port_update_supported(struct phy_port *port)
 				 __ETHTOOL_LINK_MODE_MASK_NBITS)
 			port->pairs = max_t(int, port->pairs,
 					    ethtool_linkmode_n_pairs(mode));
+
+	/* Serdes ports supported through SFP may not have any medium set,
+	 * as they will output PHY_INTERFACE_MODE_XXX modes. In that case, derive
+	 * the supported list based on these interfaces
+	 */
+	if (port->is_mii && linkmode_empty(supported)) {
+		unsigned long interface, link_caps = 0;
+
+		/* Get each interface's caps */
+		for_each_set_bit(interface, port->interfaces,
+				 PHY_INTERFACE_MODE_MAX)
+			link_caps |= phy_caps_from_interface(interface);
+
+		phy_caps_linkmodes(link_caps, port->supported);
+	}
 }
 EXPORT_SYMBOL_GPL(phy_port_update_supported);
 
-- 
2.49.0


