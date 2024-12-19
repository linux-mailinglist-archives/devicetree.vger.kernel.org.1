Return-Path: <devicetree+bounces-132494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F149F756F
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 08:27:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1C59F167CC4
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 07:27:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E3D218840;
	Thu, 19 Dec 2024 07:26:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6201E217673
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734593166; cv=none; b=cDejKIp7MD01beKBspWsRs5dsyQ7RxvVLh3CXf+bYwHszJY3pgEnOdVJR25V2GEFwFYFmqKW6ozleQybySa++L8my3E0yIZb/oj8RWnXKa3q6v3hyH4vf8cEhTRYSZ9MCVZNZ8fgH6TDSD2venGCWqT8Ru+AGtji9hAOefJU1Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734593166; c=relaxed/simple;
	bh=+xkOe3wuQFceQ83+5VZ8+ZMmZTa4jasY/LfgOipccvs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SRKVa6ACtjtdvEePwMJGLOiZzHutGm2VLD3i3Au4qdWVLJIp92vQE3WwCG6zsE/+27yCkbkbyfYUI3f1C4mrZ+FydwDg3W5wVau9wVNjXIJdbxa3cFLg8tDz7OpOaNj5sH9VV0KjXmCu4KM8sfT7vG+DO2t9alDDJ9uyk30jf74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOAuc-00064Q-2D; Thu, 19 Dec 2024 08:25:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOAua-004AOC-2u;
	Thu, 19 Dec 2024 08:25:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tOAub-00GenW-1g;
	Thu, 19 Dec 2024 08:25:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 19 Dec 2024 08:25:27 +0100
Subject: [PATCH 03/10] arm64: dts: imx8mp-skov: use I2C5 for DDC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-skov-dt-updates-v1-3-38bf80dc22df@pengutronix.de>
References: <20241219-skov-dt-updates-v1-0-38bf80dc22df@pengutronix.de>
In-Reply-To: <20241219-skov-dt-updates-v1-0-38bf80dc22df@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13-dev
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The HDMI DDC pads can be muxed either to an i.MX I2C controller or
to a limited I2C controller within the Designware HDMI bridge.

So far we muxed the pads to the HDMI bridge, but the i.MX I2C controller
is the better choice:

  - We use DDC/CI commands for display brightness configuration, but the
    Linux driver refuses[1] transfers to/from address 0x37, because the
    controller doesn't support multi-byte requests.

  - The driver doesn't support I2C bus recovery, but we need that,
    because some HDMI panels used with the board can be flaky.

As the i.MX I2C controller doesn't have either of these limitations,
let's make use of it instead.

[1]: https://lore.kernel.org/all/20190722181945.244395-1-mka@chromium.org/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../boot/dts/freescale/imx8mp-skov-revb-hdmi.dts   | 26 ++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
index c1ca69da3cb8..206116be8166 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
@@ -9,12 +9,34 @@ / {
 	compatible = "skov,imx8mp-skov-revb-hdmi", "fsl,imx8mp";
 };
 
+&i2c5 {
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c5>;
+	pinctrl-1 = <&pinctrl_i2c5_gpio>;
+	scl-gpios = <&gpio3 26 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio3 27 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	clock-frequency = <100000>;
+	status = "okay";
+};
+
 &iomuxc {
 	pinctrl_hdmi: hdmigrp {
 		fsl,pins = <
-			MX8MP_IOMUXC_HDMI_DDC_SCL__HDMIMIX_HDMI_SCL		0x1c3
-			MX8MP_IOMUXC_HDMI_DDC_SDA__HDMIMIX_HDMI_SDA		0x1c3
 			MX8MP_IOMUXC_HDMI_HPD__HDMIMIX_HDMI_HPD			0x19
 		>;
 	};
+
+	pinctrl_i2c5: i2c5grp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__I2C5_SCL			0x400001c2
+			MX8MP_IOMUXC_HDMI_DDC_SDA__I2C5_SDA			0x400001c2
+		>;
+	};
+
+	pinctrl_i2c5_gpio: i2c5gpiogrp {
+		fsl,pins = <
+			MX8MP_IOMUXC_HDMI_DDC_SCL__GPIO3_IO26			0x400001c2
+			MX8MP_IOMUXC_HDMI_DDC_SDA__GPIO3_IO27			0x400001c2
+		>;
+	};
 };

-- 
2.39.5


