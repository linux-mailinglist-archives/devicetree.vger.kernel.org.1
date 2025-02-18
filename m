Return-Path: <devicetree+bounces-148033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C950A3A571
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 19:27:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65CEF1739C8
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 18:27:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970D22356AE;
	Tue, 18 Feb 2025 18:26:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7842356A8
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 18:26:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739903219; cv=none; b=PzkjZH590rNbaARgbIQfughn/RSpaCa+PanFkC6JlcXeB2H3snNxOq8xr/aBpH8BUaB3nquCoGtuEeOIaKFmS/0sx0sGAmFDoKXVlA+JfWDYB2OwWjZ2Zi0Nt/JB5U59ZBipFHvZqilR6RBUCj5DWlwm1X/P4Tok0VwygZBQoxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739903219; c=relaxed/simple;
	bh=Juc2Akbil/KjIj7GVAhkfHO1s/KyIG4/hSAIW20NKvo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UxIdHhAYoqSDMotuz+cvRcaAfC+C+gTjHTLWu9Pz2XthLgJ0U3SEUpI0CHVeysIcDn2RkLSuzzpXd/v+/XQrMckCK8j6eVbrZHbKdwa/S5auF4IZObKmGG6j+9iDxmZH5wQoT0rR9MGoOz1CT8nMuj0dCJGRsOsXeuwplV+WGCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkSIy-0006Bk-0v; Tue, 18 Feb 2025 19:26:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkSIx-001dVB-1e;
	Tue, 18 Feb 2025 19:26:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tkSIx-00A9Hm-1C;
	Tue, 18 Feb 2025 19:26:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2025 19:26:42 +0100
Subject: [PATCH v4 2/6] arm64: dts: imx8mp: Add optional nominal drive mode
 DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-imx8m-clk-v4-2-b7697dc2dcd0@pengutronix.de>
References: <20250218-imx8m-clk-v4-0-b7697dc2dcd0@pengutronix.de>
In-Reply-To: <20250218-imx8m-clk-v4-0-b7697dc2dcd0@pengutronix.de>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Frank Li <Frank.li@nxp.com>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Abel Vesa <abel.vesa@linaro.org>, 
 Marek Vasut <marex@denx.de>
Cc: linux-clk@vger.kernel.org, imx@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the device tree for
the i.MX8MP configures some clocks at frequencies that are only validated
for overdrive mode, i.e. when VDD_SOC is 950 mV.

Boards may want to run their SoC at the lower voltage of 850 mV though
to reduce heat generation and power usage. For this to work, clock rates
need to adhere to the limits of the nominal drive mode.

Add an optional DTSI file which can be included by various boards to run
in this mode.

Reviewed-by: Peng Fan <peng.fan@nxp.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi | 63 +++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..f9a82a663033a1dfb72163eebb62e4aee66cee2f
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
@@ -0,0 +1,63 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2024 Pengutronix, Ahmad Fatoum <kernel@pengutronix.de>
+ */
+
+&clk {
+	assigned-clocks = <&clk IMX8MP_CLK_A53_SRC>,
+			  <&clk IMX8MP_CLK_A53_CORE>,
+			  <&clk IMX8MP_SYS_PLL3>,
+			  <&clk IMX8MP_CLK_NOC>,
+			  <&clk IMX8MP_CLK_NOC_IO>,
+			  <&clk IMX8MP_CLK_GIC>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_ARM_PLL_OUT>,
+				 <0>,
+				 <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL3_OUT>,
+				 <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <0>, <0>,
+			       <600000000>,
+			       <800000000>,
+			       <600000000>,
+			       <400000000>;
+};
+
+&pgc_hdmimix {
+	assigned-clocks = <&clk IMX8MP_CLK_HDMI_AXI>,
+			  <&clk IMX8MP_CLK_HDMI_APB>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL1_133M>;
+	assigned-clock-rates = <400000000>, <133000000>;
+};
+
+&pgc_hsiomix {
+	assigned-clocks = <&clk IMX8MP_CLK_HSIO_AXI>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <400000000>;
+};
+
+&pgc_gpumix {
+	assigned-clocks = <&clk IMX8MP_CLK_GPU_AXI>,
+			  <&clk IMX8MP_CLK_GPU_AHB>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL3_OUT>,
+				 <&clk IMX8MP_SYS_PLL3_OUT>;
+	assigned-clock-rates = <600000000>, <300000000>;
+};
+
+&media_blk_ctrl {
+	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI>,
+			  <&clk IMX8MP_CLK_MEDIA_APB>,
+			  <&clk IMX8MP_CLK_MEDIA_DISP1_PIX>,
+			  <&clk IMX8MP_CLK_MEDIA_DISP2_PIX>,
+			  <&clk IMX8MP_CLK_MEDIA_ISP>,
+			  <&clk IMX8MP_VIDEO_PLL1>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_VIDEO_PLL1_OUT>,
+				 <&clk IMX8MP_VIDEO_PLL1_OUT>,
+				 <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <400000000>, <200000000>,
+			       <0>, <0>, <400000000>,
+			       <1039500000>;
+};

-- 
2.39.5


