Return-Path: <devicetree+bounces-135885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FCDA02D60
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8BB57A2C9F
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36CAE1DEFEC;
	Mon,  6 Jan 2025 16:07:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F881DED60
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736179634; cv=none; b=G7HmUMZ1dTGTwIYzeKydHaGRAG52mzm8x9JeWlydB9KjG8yyUncxq3WUDiQniZumWxP2SNZCfrHc1U5oxKPIKeHYEtoA85vXcvm0qtyxBhPb0BSJFLQCJKar0UoJTU1ymdM3WUmW2r2wQHm5Bxfz5JIuI6Qegw5Ca/WepCKjE6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736179634; c=relaxed/simple;
	bh=EU9qni+9kj2/BSp6QJ7cQAb3mXr+ZwEsDc7gJwrsMB0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=arY84oC6blQmLSgpCJu8z3OqWFzmrgwknVkyZWAwX/IWwoeHD0/NRBGLtWmZZ5XdOgApszJNoq4c0/1bypzZ+1M0FNIfX0/NnVn1JrrxjGkrE+g1SKhErGXIv91BWhaahnkFMi8aBLxkegJz603D20TxNu4+fTJnYtf8lVfOt9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcx-0000C6-KC; Mon, 06 Jan 2025 17:06:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-007C9n-0y;
	Mon, 06 Jan 2025 17:06:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUpcw-009dVc-34;
	Mon, 06 Jan 2025 17:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 06 Jan 2025 17:06:38 +0100
Subject: [PATCH v2 03/10] arm64: dts: imx8mp-skov: use I2C5 for DDC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-skov-dt-updates-v2-3-4504d3f00ecb@pengutronix.de>
References: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
In-Reply-To: <20250106-skov-dt-updates-v2-0-4504d3f00ecb@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 Frank Li <Frank.li@nxp.com>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The HDMI DDC pads can be muxed either to an i.MX I2C controller or
to a limited I2C controller within the Designware HDMI bridge.

So far, the pads were muxed to the HDMI bridge, but the i.MX I2C controller
is the better choice:

  - The Designware HDMI I2C controller doesn't support multi-byte
    requests and the Linux driver refuses[1] transfers to/from address
    0x37, but these are required for display/brightness configuration,

  - The driver doesn't support I2C bus recovery, but some HDMI panels used
    with the board can be flaky and require it.

As the i.MX I2C controller and driver don't have either of these
limitations, let's make use of it instead.

[1]: https://lore.kernel.org/all/20190722181945.244395-1-mka@chromium.org/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - use passive voice instead of "we" (Frank)
---
 .../boot/dts/freescale/imx8mp-skov-revb-hdmi.dts   | 26 ++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-hdmi.dts
index c1ca69da3cb8edf5424b727e3ba8bb74affe8e93..206116be816662349ef5b54e288b945f171f5637 100644
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


