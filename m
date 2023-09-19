Return-Path: <devicetree+bounces-1297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 601C27A5C3F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1562A282549
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 08:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FBE63D381;
	Tue, 19 Sep 2023 08:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A1E30F96
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 08:14:56 +0000 (UTC)
X-Greylist: delayed 315 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 19 Sep 2023 01:14:55 PDT
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729F3FB
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 01:14:55 -0700 (PDT)
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 92A261A06A7;
	Tue, 19 Sep 2023 10:09:38 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 655B61A06AE;
	Tue, 19 Sep 2023 10:09:38 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 652221820F57;
	Tue, 19 Sep 2023 16:09:36 +0800 (+08)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	marex@denx.de,
	peng.fan@nxp.com,
	alexander.stein@ew.tq-group.com,
	laurent.pinchart@ideasonboard.com,
	aford173@gmail.com,
	l.stach@pengutronix.de,
	Frank.Li@nxp.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	shengjiu.wang@gmail.com
Subject: [PATCH] arm64: dts: imx8mp: assign parent clock and rate for audio clocks
Date: Tue, 19 Sep 2023 15:32:55 +0800
Message-Id: <1695108775-22924-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Assign parent clock for audio AHB and AXI clocks, and assign
clock rate for audio PLL1 and PLL2.

Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 6f2f50e1639c..8a8a2c4aff9f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -734,16 +734,26 @@ clk: clock-controller@30380000 {
 						  <&clk IMX8MP_CLK_A53_CORE>,
 						  <&clk IMX8MP_CLK_NOC>,
 						  <&clk IMX8MP_CLK_NOC_IO>,
-						  <&clk IMX8MP_CLK_GIC>;
+						  <&clk IMX8MP_CLK_GIC>,
+						  <&clk IMX8MP_CLK_AUDIO_AHB>,
+						  <&clk IMX8MP_CLK_AUDIO_AXI_SRC>,
+						  <&clk IMX8MP_AUDIO_PLL1>,
+						  <&clk IMX8MP_AUDIO_PLL2>;
 				assigned-clock-parents = <&clk IMX8MP_SYS_PLL1_800M>,
 							 <&clk IMX8MP_ARM_PLL_OUT>,
 							 <&clk IMX8MP_SYS_PLL2_1000M>,
 							 <&clk IMX8MP_SYS_PLL1_800M>,
-							 <&clk IMX8MP_SYS_PLL2_500M>;
+							 <&clk IMX8MP_SYS_PLL2_500M>,
+							 <&clk IMX8MP_SYS_PLL1_800M>,
+							 <&clk IMX8MP_SYS_PLL1_800M>;
 				assigned-clock-rates = <0>, <0>,
 						       <1000000000>,
 						       <800000000>,
-						       <500000000>;
+						       <500000000>,
+						       <400000000>,
+						       <800000000>,
+						       <393216000>,
+						       <361267200>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.34.1


