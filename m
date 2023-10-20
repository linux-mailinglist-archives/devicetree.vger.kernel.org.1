Return-Path: <devicetree+bounces-10392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C3D7D1029
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 15:00:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80B7CB214D5
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 13:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927AD1A730;
	Fri, 20 Oct 2023 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="GMrSKwaT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0244D1A29C
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 13:00:31 +0000 (UTC)
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E349CD6A;
	Fri, 20 Oct 2023 06:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1697806830; x=1729342830;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6NsjdVRKrU1cywbzFwvQUQKcvsrnAUc1urD+yHBG+gw=;
  b=GMrSKwaT94mK7uFMHwo1rlQbIAwfiSeRGZx6hSLPZhOciekVPSCJmVFL
   7WCeKOu6660Zt/78JVnwHm7Kg1xl+DBARCVbOJPFjdyn4eqVGKk7I18Gk
   Rj4B+rFK8lFtcBJEGnplYULeln6npw94CmaM4Mm//eyzEiwQIxi3zXmRF
   K7xE+c8Dhyj7KAJZRKxXsauUe66VjFAQN0LTjBsEp2IR3b19l8lr9ruu8
   A3rjDmGQa2zaVIujUh1dYi7pD2BqC3fctZchKcGRCm6Zn3hvEa56Z30J2
   LgcabJv6B0AxOhmhjziFSUmIYF9cWm0rkeCQhOK36+vRMneNBLrdQsZ8W
   A==;
X-IronPort-AV: E=Sophos;i="6.03,238,1694728800"; 
   d="scan'208";a="33575471"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 20 Oct 2023 15:00:22 +0200
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 74C8B280086;
	Fri, 20 Oct 2023 15:00:22 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	linux-clk@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: imx93: Add LCDIF & LDB nodes
Date: Fri, 20 Oct 2023 15:00:16 +0200
Message-Id: <20231020130019.665853-4-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

LCDIF port 1 is directly attached to the LVDS Display Bridge (LDB).
Both need the same clock source (VIDEO_PLL1).

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm64/boot/dts/freescale/imx93.dtsi | 76 ++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
index ceccf4766440..c0213850445d 100644
--- a/arch/arm64/boot/dts/freescale/imx93.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
@@ -1037,6 +1037,8 @@ s4muap: mailbox@47520000 {
 		media_blk_ctrl: system-controller@4ac10000 {
 			compatible = "fsl,imx93-media-blk-ctrl", "syscon";
 			reg = <0x4ac10000 0x10000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 			power-domains = <&mediamix>;
 			clocks = <&clk IMX93_CLK_MEDIA_APB>,
 				 <&clk IMX93_CLK_MEDIA_AXI>,
@@ -1050,8 +1052,82 @@ media_blk_ctrl: system-controller@4ac10000 {
 				 <&clk IMX93_CLK_MIPI_DSI_GATE>;
 			clock-names = "apb", "axi", "nic", "disp", "cam",
 				      "pxp", "lcdif", "isi", "csi", "dsi";
+			assigned-clocks = <&clk IMX93_CLK_MEDIA_AXI>,
+					  <&clk IMX93_CLK_MEDIA_APB>,
+					  <&clk IMX93_CLK_VIDEO_PLL>,
+					  <&clk IMX93_CLK_MEDIA_DISP_PIX>;
+			assigned-clock-parents = <&clk IMX93_CLK_SYS_PLL_PFD1>,
+						 <&clk IMX93_CLK_SYS_PLL_PFD1_DIV2>,
+						 <&clk IMX93_CLK_24M>,
+						 <&clk IMX93_CLK_VIDEO_PLL>;
+			assigned-clock-rates = <400000000>, <133333333>;
 			#power-domain-cells = <1>;
 			status = "disabled";
+
+			lvds_bridge: bridge@20 {
+				compatible = "fsl,imx93-ldb";
+				reg = <0x20 0x4>, <0x24 0x4>;
+				reg-names = "ldb", "lvds";
+				clocks = <&clk IMX93_CLK_LVDS_GATE>;
+				clock-names = "ldb";
+				assigned-clocks = <&clk IMX93_CLK_MEDIA_LDB>;
+				assigned-clock-parents = <&clk IMX93_CLK_VIDEO_PLL>;
+				status = "disabled";
+
+				ports {
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					port@0 {
+						reg = <0>;
+
+						ldb_from_lcdif: endpoint {
+							remote-endpoint = <&lcdif_to_ldb>;
+						};
+					};
+
+					port@1 {
+						reg = <1>;
+
+						ldb_lvds: endpoint {
+						};
+					};
+				};
+			};
+		};
+
+		lcdif: display-controller@4ae30000 {
+			compatible = "fsl,imx93-lcdif";
+			reg = <0x4ae30000 0x23c>;
+			interrupts = <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&clk IMX93_CLK_MEDIA_DISP_PIX>,
+				 <&clk IMX93_CLK_LCDIF_GATE>,
+				 <&clk IMX93_CLK_MEDIA_AXI>;
+			clock-names = "pix", "axi", "disp_axi";
+			assigned-clocks = <&clk IMX93_CLK_VIDEO_PLL>,
+					  <&clk IMX93_CLK_MEDIA_DISP_PIX>;
+			assigned-clock-parents = <&clk IMX93_CLK_24M>,
+						 <&clk IMX93_CLK_VIDEO_PLL>;
+			power-domains = <&media_blk_ctrl IMX93_MEDIABLK_PD_LCDIF>;
+			status = "disabled";
+
+			port {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				lcdif_to_dsi: endpoint@0 {
+					reg = <0>;
+				};
+
+				lcdif_to_ldb: endpoint@1 {
+					reg = <1>;
+					remote-endpoint = <&ldb_from_lcdif>;
+				};
+
+				lcdif_to_dpi: endpoint@2 {
+					reg = <2>;
+				};
+			};
 		};
 
 		ddr-pmu@4e300dc0 {
-- 
2.34.1


