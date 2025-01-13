Return-Path: <devicetree+bounces-138040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FB1A0B882
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:45:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE076167869
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 13:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FEEE246353;
	Mon, 13 Jan 2025 13:43:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92057246331
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 13:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736775799; cv=none; b=WhaBAbJWZWCUhEdJ1oCsvWGlZpAYR8gewyC7kv53yg4NB/NJx/1Wvymjb7at8Ghu4jhCiKZMUkK88HYWfBf/Lem4WInQIg4vGFQ8uygo99NnwC11b8QjzZS5hcCv6fjf9vqZuXI28MSQG8yLnMPHXu2wZTdNgF/ZX1O2IXESLeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736775799; c=relaxed/simple;
	bh=aZizG9wVc2BYNv87OCFTho53UtqStXXRjOOm4tYUmqQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gG0zi0i8xVboT1Dmh/9isjGMVUMMH2ok6JAb1a65ph/en3OMvB7UET9jPjMZpohUAFpbvosXp629cNjfTO52uBdiXWr0xdxx+IjNywTmVW8V8it0mrJFl4o79i10AQxsLYDDkn3xMDcl9e85GS4bWAyIxNS5VHlL0UUM0L565PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXKib-0002p5-Dg; Mon, 13 Jan 2025 14:43:01 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXKia-000Ghy-1W;
	Mon, 13 Jan 2025 14:43:01 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tXKib-00GZFh-1t;
	Mon, 13 Jan 2025 14:43:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Jan 2025 14:42:54 +0100
Subject: [PATCH v3 4/6] arm64: dts: freescale: imx8mp-skov: fix LDB clock
 rate configuration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-imx8m-clk-v3-4-0d6e9bdeaa4e@pengutronix.de>
References: <20250113-imx8m-clk-v3-0-0d6e9bdeaa4e@pengutronix.de>
In-Reply-To: <20250113-imx8m-clk-v3-0-0d6e9bdeaa4e@pengutronix.de>
To: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
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

When the imx8mp-skov-revb-mi1010ait-1cp1 device tree was first added, it
configured the minimum clock rate supported by the panel instead of
the typical clock rate:

  fsl-ldb 32ec0000.blk-ctrl:bridge@5c: Configured LDB clock
  (482300000 Hz) does not match requested LVDS clock: 490000000 Hz

Besides the warning, the display functioned normally though
This broke with commit ff06ea04e4cf ("clk: imx: clk-imx8mp: Allow
media_disp pixel clock reconfigure parent rate") as the reconfiguration
of the parent clocks removed setting the IMX8MP_VIDEO_PLL1 to 7 times
the display clock rate:

  fsl-ldb 32ec0000.blk-ctrl:bridge@5c: Configured LDB clock
  (70000000 Hz) does not match requested LVDS clock: 490000000 Hz

Fix this by configuring the typical rate instead and benefit from
the new commit by dropping the now unneeded assigned-clock-rates
in &media_blk_ctrl.

Fixes: ff06ea04e4cf ("clk: imx: clk-imx8mp: Allow media_disp pixel clock reconfigure parent rate")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts
index 30962922b361c9d05887722769c7585eb85b44a0..a13f6d76a495936575ead53e4ea69ed39f80d61c 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-skov-revb-mi1010ait-1cp1.dts
@@ -51,8 +51,11 @@ &lcdif2 {
 };
 
 &lvds_bridge {
-	/* IMX8MP_CLK_MEDIA_LDB = IMX8MP_CLK_MEDIA_DISP2_PIX * 7 */
-	assigned-clock-rates = <482300000>;
+	assigned-clocks = <&clk IMX8MP_CLK_MEDIA_LDB>,
+				 <&clk IMX8MP_VIDEO_PLL1>;
+	assigned-clock-parents = <&clk IMX8MP_VIDEO_PLL1_OUT>;
+	/* IMX8MP_VIDEO_PLL1 = IMX8MP_CLK_MEDIA_DISP2_PIX * 2 * 7 */
+	assigned-clock-rates = <0>, <980000000>;
 	status = "okay";
 
 	ports {
@@ -64,18 +67,6 @@ ldb_lvds_ch0: endpoint {
 	};
 };
 
-&media_blk_ctrl {
-	/* currently it is not possible to let display clocks confugure
-	 * automatically, so we need to set them manually
-	 */
-	assigned-clock-rates = <500000000>, <200000000>, <0>,
-		/* IMX8MP_CLK_MEDIA_DISP2_PIX = pixelclk of lvds panel */
-		<68900000>,
-		<500000000>,
-		/* IMX8MP_VIDEO_PLL1 = IMX8MP_CLK_MEDIA_LDB * 2 */
-		<964600000>;
-};
-
 &pwm4 {
 	status = "okay";
 };

-- 
2.39.5


