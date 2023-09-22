Return-Path: <devicetree+bounces-2465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D749C7AAE76
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:44:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 8909F282B63
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4216C1E527;
	Fri, 22 Sep 2023 09:44:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95601E520
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:44:08 +0000 (UTC)
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77C471AC;
	Fri, 22 Sep 2023 02:44:07 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Fri, 22 Sep 2023
 17:43:52 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<neil.armstrong@linaro.org>, <khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <brgl@bgdev.pl>, <andy@kernel.org>
CC: <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH V3 3/3] arm64: dts: Add pinctrl node for Amlogic T7 SoCs
Date: Fri, 22 Sep 2023 17:43:42 +0800
Message-ID: <20230922094342.637251-4-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230922094342.637251-1-huqiang.qin@amlogic.com>
References: <20230922094342.637251-1-huqiang.qin@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.83]
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add pinctrl device.

Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
---

V1 -> V2: Unchanged.
V2 -> V3: Unchanged.

 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index dae3465bd39b..a03c7667d2b6 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -155,6 +155,22 @@ watchdog@2100 {
 				clocks = <&xtal>;
 			};
 
+			periphs_pinctrl: pinctrl@4000 {
+				compatible = "amlogic,t7-periphs-pinctrl";
+				#address-cells = <2>;
+				#size-cells = <2>;
+				ranges;
+
+				gpio: bank@4000 {
+					reg = <0x0 0x4000 0x0 0x0064>,
+					      <0x0 0x40c0 0x0 0x0220>;
+					reg-names = "mux", "gpio";
+					gpio-controller;
+					#gpio-cells = <2>;
+					gpio-ranges = <&periphs_pinctrl 0 0 157>;
+				};
+			};
+
 			uart_a: serial@78000 {
 				compatible = "amlogic,t7-uart", "amlogic,meson-s4-uart";
 				reg = <0x0 0x78000 0x0 0x18>;
-- 
2.42.0


