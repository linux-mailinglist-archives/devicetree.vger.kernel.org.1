Return-Path: <devicetree+bounces-156687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4231AA5CF9B
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 20:41:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D62843B0EF4
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 19:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D49526462E;
	Tue, 11 Mar 2025 19:41:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D092641F0
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 19:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741722097; cv=none; b=O7uVH2Enl9ukgXE/8IOfgb08Z3g2W0QpygmaOMk7ONxc2KROfl1sQiPDC/P/suREr+wvFPFz79Wy9YFsixrEiIR622+61RWgKvjC+gBd6fvJpE9u5hDW+ePFD1VLh6fmgCectobMuiOpPiV072ReVShrNq57qQRbr0UMIXACoao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741722097; c=relaxed/simple;
	bh=3sZEVpOpMnWgAyLZBmsVsQDMF5e4p5snXFNG0axQQ6w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tt6WPI7QXWWERFnAOZ8OSzfbQDL6ahzAp9UhVCfRHX+Ho25zb7mPySVcq74TwXi4wQnuwsSqrOVsGBxn3cj9t4LTjGc/YCTq/GoYs2+tZJ3hl7orNEs+VCZwNiNo7S915uCJHaIrYdDOGyZfhcO1scoP636VuzNRZjON79idjzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ts5Tg-0007gL-85; Tue, 11 Mar 2025 20:41:24 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ts5Tf-005ESk-1n;
	Tue, 11 Mar 2025 20:41:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ts5Tf-001qa6-1Z;
	Tue, 11 Mar 2025 20:41:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Mar 2025 20:41:12 +0100
Subject: [PATCH] arm64: dts: imx8mp: configure GPU and NPU clocks in
 nominal DTSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-imx8m-clk-nominal-gpu-v1-1-78de5ea24c5d@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIANeR0GcC/x3MQQqAIBBA0avErBvQQqyuEi1SpxpKC6UIorsnL
 d/i/wcSRaYEXfFApIsT7yFDlgXYZQwzIbtsqESlRC0lsr8bj3ZbMeyew7jhfJzoTG2cNtq2QkF
 uj0gT3/+3H973A8Jlk9NnAAAA
X-Change-ID: 20250311-imx8m-clk-nominal-gpu-db3bd7b7c905
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Lucas Stach <l.stach@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Commit 255fbd9eabe7 ("arm64: dts: imx8mp: Add optional nominal drive
mode DTSI") added imx8mp-nominal.dtsi, which overrides all overdrive
clock rates in imx8mp.dtsi to the nominal rates.

At the same time, commit 9f7595b3e5ae ("arm64: dts: imx8mp: configure
GPU and NPU clocks to overdrive rate") went in, which changed some
clock rates away from the nominal values.

Resolve the discrepancy by effectively reverting the changes in the
latter commit inside imx8mp-nominal.dtsi. This is required for proper
operation of the imx8mp-skov boards, which are currently
imx8mp-nominal.dtsi's only users and lets all other boards that don't
include it benefit from the new higher frequencies.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
If the commit hashes are not stable, please feel free to squash this
change directly into what's currently commit 255fbd9eabe7 ("arm64: dts:

imx8mp: Add optional nominal drive mode DTSI").
---
 arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
index a1b75c9068b288a2fba73bbd96b1519a50df85a3..dc0ccd723c6d92e7946ebd52bac535e4175498d0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-nominal.dtsi
@@ -24,6 +24,20 @@ &clk {
 	fsl,operating-mode = "nominal";
 };
 
+&gpu2d {
+	assigned-clocks = <&clk IMX8MP_CLK_GPU2D_CORE>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <800000000>;
+};
+
+&gpu3d {
+	assigned-clocks = <&clk IMX8MP_CLK_GPU3D_CORE>,
+			  <&clk IMX8MP_CLK_GPU3D_SHADER_CORE>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <800000000>, <800000000>;
+};
+
 &pgc_hdmimix {
 	assigned-clocks = <&clk IMX8MP_CLK_HDMI_AXI>,
 			  <&clk IMX8MP_CLK_HDMI_APB>;
@@ -46,6 +60,18 @@ &pgc_gpumix {
 	assigned-clock-rates = <600000000>, <300000000>;
 };
 
+&pgc_mlmix {
+	assigned-clocks = <&clk IMX8MP_CLK_ML_CORE>,
+			  <&clk IMX8MP_CLK_ML_AXI>,
+			  <&clk IMX8MP_CLK_ML_AHB>;
+	assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL1_800M>,
+				 <&clk IMX8MP_SYS_PLL1_800M>;
+	assigned-clock-rates = <800000000>,
+			       <800000000>,
+			       <300000000>;
+};
+
 &media_blk_ctrl {
 	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_AXI>,
 			  <&clk IMX8MP_CLK_MEDIA_APB>,

---
base-commit: 5a690619426fc4b09c7fd3f40d3a69264ef3db0f
change-id: 20250311-imx8m-clk-nominal-gpu-db3bd7b7c905

Best regards,
-- 
Ahmad Fatoum <a.fatoum@pengutronix.de>


