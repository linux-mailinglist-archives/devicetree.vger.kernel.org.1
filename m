Return-Path: <devicetree+bounces-3078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2DE7AD433
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 11:07:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 9A7261C204F7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 09:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C493E13ADC;
	Mon, 25 Sep 2023 09:07:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDAC13AD5
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 09:07:14 +0000 (UTC)
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 784209B;
	Mon, 25 Sep 2023 02:07:11 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Mon, 25 Sep 2023
 17:07:07 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <neil.armstrong@linaro.org>, <khilman@baylibre.com>,
	<jbrunet@baylibre.com>, <martin.blumenstingl@googlemail.com>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>,
	<linux-amlogic@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH] arm64: dts: Add watchdog node for Amlogic-C3 SoCs
Date: Mon, 25 Sep 2023 17:06:40 +0800
Message-ID: <20230925090641.1185942-1-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.83]
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add watchdog device.

Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
index 998f5050795c..106f4dd09a1b 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-c3.dtsi
@@ -81,6 +81,12 @@ apb4: bus@fe000000 {
 			#size-cells = <2>;
 			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x480000>;
 
+			watchdog@2100 {
+				compatible = "amlogic,t7-wdt";
+				reg = <0x0 0x2100 0x0 0x10>;
+				clocks = <&xtal>;
+			};
+
 			periphs_pinctrl: pinctrl@4000 {
 				compatible = "amlogic,c3-periphs-pinctrl";
 				#address-cells = <2>;

base-commit: 8fff9184d1b5810dca5dd1a02726d4f844af88fc
-- 
2.42.0


