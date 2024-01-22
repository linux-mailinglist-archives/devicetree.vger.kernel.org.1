Return-Path: <devicetree+bounces-33791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7F08365BF
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 15:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D54BD1C21A3B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:45:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAEFB3D55C;
	Mon, 22 Jan 2024 14:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="yZ0u6R9b"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D73F20DF0
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705934715; cv=none; b=epufdPYvxQPJCMIG5ePleRX9upJ95pWOM98AO7TB5O7NaqLCGgaLdR9Tfl21v2K8ZjA2qyhVCx4BlGKxXNkCX8j2vL1Cgl/RT0Sb7PafGyGu9P/YXdNBkAt6MJrXdIIQoanWpTD25Qti64nBVJr8bEB9WWXP2rph+cH7TJ5Xqls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705934715; c=relaxed/simple;
	bh=Tdi7jqP/Ahm91xwrJPdPYHdWE3cI5WYMR6XCTe64V68=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YBz1HULhR6vX8wbxIQY6HrO/CxXfKwSYPJ+wCnmTG3R0OT4s/+YYI0+JJO6gZOM3UyowA1RVluI8x0y9Ijfr+qTq8Q22oIi/pv6VCcZS25mjOjRcgqKdCPRI1O8KiNLLbTsefXj2D372qeLeHX5TcGjWJrnBMgxPSPT0OIBQjMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=yZ0u6R9b; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 24FD4878BA;
	Mon, 22 Jan 2024 15:45:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1705934712;
	bh=mOfQpsofe/9CudeON+4ViQNIvGkG9vle0x1jdEQqmJQ=;
	h=From:To:Cc:Subject:Date:From;
	b=yZ0u6R9blurmHVGX5mWbHsARV0R6Fxj3SqCRfftPFfkDd2zoFK8dMHrI5THM4PBK4
	 EfqBogt/eo6aa3DoL69HZmoiqM0lxtyW2TjRTGnE9LFrRZsTnMVMe/SFgyZCRreN38
	 Ov5nMNNCPfmoukg4tv+oy/j6r4rbbN4yuDbGAxqGjRnlm8KrFYL5d/agb+bJsBpDdf
	 388TBoUVtVfakbpp0MmhiZceV0oFfJThtgSizc8JVFudIKHxoQDY+zvkBafso+bAEy
	 Ne83nKIxxnpTMhbSar8vIdhmAk9tTGDWJhdwqQt7GnODchZXEGivv5IoN3fe21d3/s
	 GB9bUxvarPA1Q==
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8mp: Enable PCIe to Data Modul i.MX8M Plus eDM SBC
Date: Mon, 22 Jan 2024 15:44:44 +0100
Message-ID: <20240122144501.169941-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Enable PCIe support on Data Modul i.MX8M Plus eDM SBC.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
---
 .../dts/freescale/imx8mp-data-modul-edm-sbc.dts  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
index 433b2c9468f89..806dbec56fdfe 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-data-modul-edm-sbc.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/net/qca-ar803x.h>
+#include <dt-bindings/phy/phy-imx8-pcie.h>
 #include "imx8mp.dtsi"
 
 / {
@@ -469,6 +470,21 @@ &i2c5 {	/* HDMI EDID bus */
 	status = "okay";
 };
 
+&pcie_phy {
+	clocks = <&pcieclk 0>;
+	clock-names = "ref";
+	fsl,refclk-pad-mode = <IMX8_PCIE_REFCLK_PAD_INPUT>;
+	status = "okay";
+};
+
+&pcie {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pcie0>;
+	fsl,max-link-speed = <3>;
+	reset-gpio = <&gpio1 5 GPIO_ACTIVE_LOW>;
+	status = "okay";
+};
+
 &pwm1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_panel_pwm>;
-- 
2.43.0


