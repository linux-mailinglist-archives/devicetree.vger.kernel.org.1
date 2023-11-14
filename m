Return-Path: <devicetree+bounces-15589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A11957EAE6B
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:56:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59FA5281179
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 10:56:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3106C21357;
	Tue, 14 Nov 2023 10:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="bVQLczHJ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8A22421E;
	Tue, 14 Nov 2023 10:56:03 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::227])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A4AF191;
	Tue, 14 Nov 2023 02:56:01 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D1CF52000B;
	Tue, 14 Nov 2023 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699959359;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=illYHKSC+nzt4aAs1/2/0DTKL0P6DwlH/jpdzwxEP8M=;
	b=bVQLczHJb/uzAp9+bYQMFCtVmlA1XJsrpxj9gf8GhkNvbq6oJvR2zZE0Jy7IYuDqUzHnBo
	GWmTzTYwqkogzKiI6mWRZKYjMz5IxeyLtBPbPgXBm4VqFT2J4Lg8cEfMuRi7/qz5aA5AC/
	XwfeG8+lwQrblTNIvpJv9iSWcwD/x+qzQP2f1dI9FJoZty1/YrPW5A1jsIUVWCcSbQ+0Ej
	q3c258MVyOu0L6K1bKO3bENfvvlAarQMu6WRVZn3YuCQkKcZJYtm3JOTXr8ZaguLi3JAJk
	V3YCXo8jFpmZXUYuLFq3QV12f7+fScTSH7uAxr9WxcSDFBA2IC1H33WRQpxUlA==
From: Romain Gantois <romain.gantois@bootlin.com>
To: davem@davemloft.net,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Romain Gantois <romain.gantois@bootlin.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>,
	Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	Andrew Lunn <andrew@lunn.ch>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-arm-kernel@lists.infradead.org,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Robert Marko <robert.marko@sartura.hr>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH net-next v3 6/8] net: phy: add calibration callbacks to phy_driver
Date: Tue, 14 Nov 2023 11:55:56 +0100
Message-ID: <20231114105600.1012056-7-romain.gantois@bootlin.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231114105600.1012056-1-romain.gantois@bootlin.com>
References: <20231114105600.1012056-1-romain.gantois@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: romain.gantois@bootlin.com

The IPQESS integrated Ethernet switch found in the IPQ4019 SoC requires
calibration of the PHY link when its ports are brought up. This calibration
procedure requires knowledge of precise timings and vendor-specific
registers on both the PHY and MAC side.

The existing PHY abstraction layer does not allow coordinating this kind of
calibration operation between MAC drivers and PHY drivers. As a
consequence, PHY-specific calibration information has to be included in
Ethernet drivers, since it has to schedule the entire calibration procedure
on it's own.

Add two callbacks that extend the PHY abstraction layer to allow MAC
drivers to start and stop PHY calibration runs in a PHY-model-independent
manner.

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
 include/linux/phy.h | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index 3cc52826f18e..b1092b2ecee3 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1142,6 +1142,13 @@ struct phy_driver {
 	int (*led_hw_control_get)(struct phy_device *dev, u8 index,
 				  unsigned long *rules);
 
+	/* @calibration_start: Start calibrating the MAC-to-PHY link. */
+	int (*calibration_start)(struct phy_device *dev);
+
+	/* @calibration_start: Finalize MAC-to-PHY link calibration
+	 * and run tests. Returns 0 if the calibration tests are successful.
+	 */
+	int (*calibration_stop)(struct phy_device *dev);
 };
 #define to_phy_driver(d) container_of(to_mdio_common_driver(d),		\
 				      struct phy_driver, mdiodrv)
@@ -1770,6 +1777,27 @@ int phy_start_cable_test_tdr(struct phy_device *phydev,
 }
 #endif
 
+static inline
+int phy_start_calibration(struct phy_device *phydev)
+{
+	if (!(phydev->drv &&
+	      phydev->drv->calibration_start &&
+	      phydev->drv->calibration_stop))
+		return -EOPNOTSUPP;
+
+	return phydev->drv->calibration_start(phydev);
+}
+
+static inline
+int phy_stop_calibration(struct phy_device *phydev)
+{
+	if (!(phydev->drv &&
+	      phydev->drv->calibration_stop))
+		return -EOPNOTSUPP;
+
+	return phydev->drv->calibration_stop(phydev);
+}
+
 static inline void phy_device_reset(struct phy_device *phydev, int value)
 {
 	mdio_device_reset(&phydev->mdio, value);
-- 
2.42.0


