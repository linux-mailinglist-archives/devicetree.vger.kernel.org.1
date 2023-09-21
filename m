Return-Path: <devicetree+bounces-2002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F08BE7A9723
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:13:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 59B5DB20D65
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4469154A8;
	Thu, 21 Sep 2023 17:05:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C7C154AD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:05:00 +0000 (UTC)
Received: from mail-sh.amlogic.com (mail-sh.amlogic.com [58.32.228.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D231BE4;
	Thu, 21 Sep 2023 10:04:41 -0700 (PDT)
Received: from rd02-sz.amlogic.software (10.28.11.83) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server id 15.1.2507.13; Thu, 21 Sep 2023
 16:34:58 +0800
From: Huqiang Qin <huqiang.qin@amlogic.com>
To: <linus.walleij@linaro.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<neil.armstrong@linaro.org>, <khilman@baylibre.com>, <jbrunet@baylibre.com>,
	<martin.blumenstingl@googlemail.com>, <brgl@bgdev.pl>, <andy@kernel.org>
CC: <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, Huqiang Qin <huqiang.qin@amlogic.com>
Subject: [PATCH V2 1/3] dt-bindings: pinctrl: Add compatibles for Amlogic T7 SoCs
Date: Thu, 21 Sep 2023 16:34:06 +0800
Message-ID: <20230921083407.1167510-3-huqiang.qin@amlogic.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230921083407.1167510-2-huqiang.qin@amlogic.com>
References: <20230921083407.1167510-2-huqiang.qin@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.28.11.83]

Add a new compatible name for Amlogic T7 pin controller, and add
a new dt-binding header file which document the detail pin names.

Signed-off-by: Huqiang Qin <huqiang.qin@amlogic.com>
---

V1 -> V2: Rename amlogic-t7-gpio.h to amlogic,t7-periphs-pinctrl.h

 .../pinctrl/amlogic,meson-pinctrl-a1.yaml     |   1 +
 .../gpio/amlogic,t7-periphs-pinctrl.h         | 179 ++++++++++++++++++
 2 files changed, 180 insertions(+)
 create mode 100644 include/dt-bindings/gpio/amlogic,t7-periphs-pinctrl.h

diff --git a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml
index 4e7a456ea4cc..c7df4cd34197 100644
--- a/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml
@@ -16,6 +16,7 @@ properties:
   compatible:
     enum:
       - amlogic,c3-periphs-pinctrl
+      - amlogic,t7-periphs-pinctrl
       - amlogic,meson-a1-periphs-pinctrl
       - amlogic,meson-s4-periphs-pinctrl
 
diff --git a/include/dt-bindings/gpio/amlogic,t7-periphs-pinctrl.h b/include/dt-bindings/gpio/amlogic,t7-periphs-pinctrl.h
new file mode 100644
index 000000000000..4e16d31a71c9
--- /dev/null
+++ b/include/dt-bindings/gpio/amlogic,t7-periphs-pinctrl.h
@@ -0,0 +1,179 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2023 Amlogic, Inc. All rights reserved.
+ * Author: Huqiang Qin <huqiang.qin@amlogic.com>
+ */
+
+#ifndef _DT_BINDINGS_AMLOGIC_T7_GPIO_H
+#define _DT_BINDINGS_AMLOGIC_T7_GPIO_H
+
+#define GPIOB_0		0
+#define GPIOB_1		1
+#define GPIOB_2		2
+#define GPIOB_3		3
+#define GPIOB_4		4
+#define GPIOB_5		5
+#define GPIOB_6		6
+#define GPIOB_7		7
+#define GPIOB_8		8
+#define GPIOB_9		9
+#define GPIOB_10	10
+#define GPIOB_11	11
+#define GPIOB_12	12
+
+#define GPIOC_0		13
+#define GPIOC_1		14
+#define GPIOC_2		15
+#define GPIOC_3		16
+#define GPIOC_4		17
+#define GPIOC_5		18
+#define GPIOC_6		19
+
+#define GPIOX_0		20
+#define GPIOX_1		21
+#define GPIOX_2		22
+#define GPIOX_3		23
+#define GPIOX_4		24
+#define GPIOX_5		25
+#define GPIOX_6		26
+#define GPIOX_7		27
+#define GPIOX_8		28
+#define GPIOX_9		29
+#define GPIOX_10	30
+#define GPIOX_11	31
+#define GPIOX_12	32
+#define GPIOX_13	33
+#define GPIOX_14	34
+#define GPIOX_15	35
+#define GPIOX_16	36
+#define GPIOX_17	37
+#define GPIOX_18	38
+#define GPIOX_19	39
+
+#define GPIOW_0		40
+#define GPIOW_1		41
+#define GPIOW_2		42
+#define GPIOW_3		43
+#define GPIOW_4		44
+#define GPIOW_5		45
+#define GPIOW_6		46
+#define GPIOW_7		47
+#define GPIOW_8		48
+#define GPIOW_9		49
+#define GPIOW_10	50
+#define GPIOW_11	51
+#define GPIOW_12	52
+#define GPIOW_13	53
+#define GPIOW_14	54
+#define GPIOW_15	55
+#define GPIOW_16	56
+
+#define GPIOD_0		57
+#define GPIOD_1		58
+#define GPIOD_2		59
+#define GPIOD_3		60
+#define GPIOD_4		61
+#define GPIOD_5		62
+#define GPIOD_6		63
+#define GPIOD_7		64
+#define GPIOD_8		65
+#define GPIOD_9		66
+#define GPIOD_10	67
+#define GPIOD_11	68
+#define GPIOD_12	69
+
+#define GPIOE_0		70
+#define GPIOE_1		71
+#define GPIOE_2		72
+#define GPIOE_3		73
+#define GPIOE_4		74
+#define GPIOE_5		75
+#define GPIOE_6		76
+
+#define GPIOZ_0		77
+#define GPIOZ_1		78
+#define GPIOZ_2		79
+#define GPIOZ_3		80
+#define GPIOZ_4		81
+#define GPIOZ_5		82
+#define GPIOZ_6		83
+#define GPIOZ_7		84
+#define GPIOZ_8		85
+#define GPIOZ_9		86
+#define GPIOZ_10	87
+#define GPIOZ_11	88
+#define GPIOZ_12	89
+#define GPIOZ_13	90
+
+#define GPIOT_0		91
+#define GPIOT_1		92
+#define GPIOT_2		93
+#define GPIOT_3		94
+#define GPIOT_4		95
+#define GPIOT_5		96
+#define GPIOT_6		97
+#define GPIOT_7		98
+#define GPIOT_8		99
+#define GPIOT_9		100
+#define GPIOT_10	101
+#define GPIOT_11	102
+#define GPIOT_12	103
+#define GPIOT_13	104
+#define GPIOT_14	105
+#define GPIOT_15	106
+#define GPIOT_16	107
+#define GPIOT_17	108
+#define GPIOT_18	109
+#define GPIOT_19	110
+#define GPIOT_20	111
+#define GPIOT_21	112
+#define GPIOT_22	113
+#define GPIOT_23	114
+
+#define GPIOM_0		115
+#define GPIOM_1		116
+#define GPIOM_2		117
+#define GPIOM_3		118
+#define GPIOM_4		119
+#define GPIOM_5		120
+#define GPIOM_6		121
+#define GPIOM_7		122
+#define GPIOM_8		123
+#define GPIOM_9		124
+#define GPIOM_10	125
+#define GPIOM_11	126
+#define GPIOM_12	127
+#define GPIOM_13	128
+
+#define GPIOY_0		129
+#define GPIOY_1		130
+#define GPIOY_2		131
+#define GPIOY_3		132
+#define GPIOY_4		133
+#define GPIOY_5		134
+#define GPIOY_6		135
+#define GPIOY_7		136
+#define GPIOY_8		137
+#define GPIOY_9		138
+#define GPIOY_10	139
+#define GPIOY_11	140
+#define GPIOY_12	141
+#define GPIOY_13	142
+#define GPIOY_14	143
+#define GPIOY_15	144
+#define GPIOY_16	145
+#define GPIOY_17	146
+#define GPIOY_18	147
+
+#define GPIOH_0		148
+#define GPIOH_1		149
+#define GPIOH_2		150
+#define GPIOH_3		151
+#define GPIOH_4		152
+#define GPIOH_5		153
+#define GPIOH_6		154
+#define GPIOH_7		155
+
+#define GPIO_TEST_N	156
+
+#endif /* _DT_BINDINGS_AMLOGIC_T7_GPIO_H */
-- 
2.42.0


