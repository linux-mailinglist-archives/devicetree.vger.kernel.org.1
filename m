Return-Path: <devicetree+bounces-138650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E689A119BD
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 07:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5A1F1886EB4
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 06:36:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8441222F3B7;
	Wed, 15 Jan 2025 06:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b="CT3tK5b6"
X-Original-To: devicetree@vger.kernel.org
Received: from mailgw01.mediatek.com (unknown [60.244.123.138])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA12B22F395;
	Wed, 15 Jan 2025 06:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.244.123.138
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736922988; cv=none; b=HXDSAQ93w1Y2BTP0qTp5U3ti8CyhGwjXOKvK9/2qCYQPUYIByl7ivRMtZFt2nMcrGB2Bk+x1b3tv6Nvzp1Gshv4UKXfBaUtjuM42t/EqQcdVgSpPB6OuI7+Rmx/Oi1xGM4aptasgMdVTn2OIHMxl/EaByE79+6JToTPzhw52zok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736922988; c=relaxed/simple;
	bh=G2ge4BWiGRav6WxYjA3V4EFLLhTTBExgd6++OEO0jLE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=suZVeM1LuXmNH67zQsMML+0RfgqEkTy1s7b3kIjzYqstspmw/vdR+R2f7PjqwqJYASk4F+TGlr9LHSU8gkxU656eXvIAKCvXxafWZ+lBOnFp3gLacqe+xBgOuTz2woSKtXDh7oTa9UVdlzk5gfXqEjr+gKsMB6MTfz3bnrpdRPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com; spf=pass smtp.mailfrom=mediatek.com; dkim=pass (1024-bit key) header.d=mediatek.com header.i=@mediatek.com header.b=CT3tK5b6; arc=none smtp.client-ip=60.244.123.138
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mediatek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mediatek.com
X-UUID: 050faa94d30b11ef99858b75a2457dd9-20250115
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com; s=dk;
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From; bh=COfjh6ulnHXybjKlYFYVPohAQGGwnZgFjLg593QANnU=;
	b=CT3tK5b6aMsYpU1WLZFGBzivvIHYDfu6l/kBf1Z/uGzLE341BkMKQFyLz+3kJMhK7V/WZ4DXBtD0kvArpfaP4x063xWvKoCk/LV4Ja9h4NyZu1qj2g/GSzUl1sybOSRM/Tul3m0XKEWsrz/ft+Eeu2QkgzBqLVK7wmrNuj8j/bo=;
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.46,REQID:af15433f-c129-4cf9-989c-231e36252c7f,IP:0,U
	RL:0,TC:0,Content:0,EDM:-25,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-25
X-CID-META: VersionHash:60aa074,CLOUDID:8b700f85-0f10-4f52-bb41-91703793d3e4,B
	ulkID:nil,BulkQuantity:0,Recheck:0,SF:81|82|102,TC:nil,Content:0|50,EDM:1|
	19,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:1,OSI:0,OSA:0,
	AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 2,OSH
X-CID-BAS: 2,OSH,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 050faa94d30b11ef99858b75a2457dd9-20250115
Received: from mtkmbs09n2.mediatek.inc [(172.21.101.94)] by mailgw01.mediatek.com
	(envelope-from <ot_cathy.xu@mediatek.com>)
	(Generic MTA with TLSv1.2 ECDHE-RSA-AES256-GCM-SHA384 256/256)
	with ESMTP id 2077215048; Wed, 15 Jan 2025 14:36:15 +0800
Received: from mtkmbs13n2.mediatek.inc (172.21.101.108) by
 MTKMBS09N2.mediatek.inc (172.21.101.94) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.28; Wed, 15 Jan 2025 14:36:14 +0800
Received: from mhfsdcap04.gcn.mediatek.inc (10.17.3.154) by
 mtkmbs13n2.mediatek.inc (172.21.101.73) with Microsoft SMTP Server id
 15.2.1258.28 via Frontend Transport; Wed, 15 Jan 2025 14:36:13 +0800
From: Cathy Xu <ot_cathy.xu@mediatek.com>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
	<angelogioacchino.delregno@collabora.com>, Sean Wang <sean.wang@kernel.org>,
	Lei Xue <lei.xue@mediatek.com>, <wenbin.mei@mediatek.com>
CC: <linux-gpio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, Cathy Xu <ot_cathy.xu@mediatek.com>,
	Guodong Liu <guodong.liu@mediatek.com>
Subject: [PATCH v3 1/2] dt-bindings: pinctrl: mediatek: add support for mt8196
Date: Wed, 15 Jan 2025 14:35:38 +0800
Message-ID: <20250115063555.32492-2-ot_cathy.xu@mediatek.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20250115063555.32492-1-ot_cathy.xu@mediatek.com>
References: <20250115063555.32492-1-ot_cathy.xu@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

1.Add the new binding document for pinctrl on MediaTek mt8196.
2.Add the pinctrl header file on MediaTek mt8196.

Signed-off-by: Guodong Liu <guodong.liu@mediatek.com>
Signed-off-by: Cathy Xu <ot_cathy.xu@mediatek.com>
---
 .../pinctrl/mediatek,mt8196-pinctrl.yaml      |  244 +++
 include/dt-bindings/pinctrl/mt8196-pinfunc.h  | 1572 +++++++++++++++++
 2 files changed, 1816 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt8196-pinctrl.yaml
 create mode 100644 include/dt-bindings/pinctrl/mt8196-pinfunc.h

diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt8196-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8196-pinctrl.yaml
new file mode 100644
index 000000000000..56a2d2de7ec1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt8196-pinctrl.yaml
@@ -0,0 +1,244 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/mediatek,mt8196-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MediaTek MT8196 Pin Controller
+
+maintainers:
+  - Lei Xue <lei.xue@mediatek.com>
+  - Cathy Xu <ot_cathy.xu@mediatek.com>
+
+description:
+  The MediaTek's MT8196 Pin controller is used to control SoC pins.
+
+properties:
+  compatible:
+    const: mediatek,mt8196-pinctrl
+
+  gpio-controller: true
+
+  '#gpio-cells':
+    description:
+      Number of cells in GPIO specifier, should be two. The first cell is the
+      pin number, the second cell is used to specify optional parameters which
+      are defined in <dt-bindings/gpio/gpio.h>.
+    const: 2
+
+  gpio-ranges:
+    maxItems: 1
+
+  gpio-line-names: true
+
+  reg:
+    items:
+      - description: gpio registers base address
+      - description: rt group io configuration registers base address
+      - description: rm1 group io configuration registers base address
+      - description: rm2 group io configuration registers base address
+      - description: rb group io configuration registers base address
+      - description: bm1 group io configuration registers base address
+      - description: bm2 group io configuration registers base address
+      - description: bm3 group io configuration registers base address
+      - description: lt group io configuration registers base address
+      - description: lm1 group io configuration registers base address
+      - description: lm2 group io configuration registers base address
+      - description: lb1 group io configuration registers base address
+      - description: lb2 group io configuration registers base address
+      - description: tm1 group io configuration registers base address
+      - description: tm2 group io configuration registers base address
+      - description: tm3 group io configuration registers base address
+
+  reg-names:
+    items:
+      - const: iocfg0
+      - const: iocfg_rt
+      - const: iocfg_rm1
+      - const: iocfg_rm2
+      - const: iocfg_rb
+      - const: iocfg_bm1
+      - const: iocfg_bm2
+      - const: iocfg_bm3
+      - const: iocfg_lt
+      - const: iocfg_lm1
+      - const: iocfg_lm2
+      - const: iocfg_lb1
+      - const: iocfg_lb2
+      - const: iocfg_tm1
+      - const: iocfg_tm2
+      - const: iocfg_tm3
+
+  interrupt-controller: true
+
+  '#interrupt-cells':
+    const: 2
+
+  interrupts:
+    description: The interrupt outputs to sysirq.
+    maxItems: 1
+
+# PIN CONFIGURATION NODES
+patternProperties:
+  '-pins$':
+    type: object
+    additionalProperties: false
+
+    patternProperties:
+      '^pins':
+        type: object
+        $ref: /schemas/pinctrl/pincfg-node.yaml
+        additionalProperties: false
+        description:
+          A pinctrl node should contain at least one subnode representing the
+          pinctrl groups available on the machine. Each subnode will list the
+          pins it needs, and how they should be configured, with regard to muxer
+          configuration, pullups, drive strength, input enable/disable and input
+          schmitt.
+
+        properties:
+          pinmux:
+            description:
+              Integer array, represents gpio pin number and mux setting.
+              Supported pin number and mux varies for different SoCs, and are
+              defined as macros in dt-bindings/pinctrl/mt8196-pinfunc.h
+              directly, for this SoC.
+
+          drive-strength:
+            enum: [2, 4, 6, 8, 10, 12, 14, 16]
+
+          bias-pull-down:
+            oneOf:
+              - type: boolean
+              - enum: [100, 101, 102, 103]
+                description: mt8196 pull down PUPD/R0/R1 type define value.
+              - enum: [200, 201, 202, 203, 204, 205, 206, 207]
+                description: mt8196 pull down RSEL type define value.
+            description: |
+              For pull down type is normal, it doesn't need add RSEL & R1R0.
+              For pull down type is PUPD/R0/R1 type, it can add R1R0 define to
+              set different resistance. It can support "MTK_PUPD_SET_R1R0_00" &
+              "MTK_PUPD_SET_R1R0_01" & "MTK_PUPD_SET_R1R0_10" &
+              "MTK_PUPD_SET_R1R0_11" define in mt8196.
+              For pull down type is PD/RSEL, it can add RSEL define to set
+              different resistance. It can support
+              "MTK_PULL_SET_RSEL_000" & "MTK_PULL_SET_RSEL_001" &
+              "MTK_PULL_SET_RSEL_010" & "MTK_PULL_SET_RSEL_011" &
+              "MTK_PULL_SET_RSEL_100" & "MTK_PULL_SET_RSEL_101" &
+              "MTK_PULL_SET_RSEL_110" & "MTK_PULL_SET_RSEL_111" define in
+              mt8196.
+
+          bias-pull-up:
+            oneOf:
+              - type: boolean
+              - enum: [100, 101, 102, 103]
+                description: mt8196 pull up PUPD/R0/R1 type define value.
+              - enum: [200, 201, 202, 203, 204, 205, 206, 207]
+                description: mt8196 pull up RSEL type define value.
+            description: |
+              For pull up type is normal, it don't need add RSEL & R1R0.
+              For pull up type is PUPD/R0/R1 type, it can add R1R0 define to
+              set different resistance. It can support "MTK_PUPD_SET_R1R0_00" &
+              "MTK_PUPD_SET_R1R0_01" & "MTK_PUPD_SET_R1R0_10" &
+              "MTK_PUPD_SET_R1R0_11" define in mt8196.
+              For pull up type is PU/RSEL, it can add RSEL define to set
+              different resistance. It can support
+              "MTK_PULL_SET_RSEL_000" & "MTK_PULL_SET_RSEL_001" &
+              "MTK_PULL_SET_RSEL_010" & "MTK_PULL_SET_RSEL_011" &
+              "MTK_PULL_SET_RSEL_100" & "MTK_PULL_SET_RSEL_101" &
+              "MTK_PULL_SET_RSEL_110" & "MTK_PULL_SET_RSEL_111" define in
+              mt8196.
+
+          bias-disable: true
+
+          output-high: true
+
+          output-low: true
+
+          input-enable: true
+
+          input-disable: true
+
+          input-schmitt-enable: true
+
+          input-schmitt-disable: true
+
+        required:
+          - pinmux
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupt-controller
+  - '#interrupt-cells'
+  - gpio-controller
+  - '#gpio-cells'
+  - gpio-ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/mt8196-pinfunc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    pio: pinctrl@10005000 {
+        compatible = "mediatek,mt8196-pinctrl";
+        reg = <0x1002d000 0x1000>,
+              <0x12000000 0x1000>,
+              <0x12020000 0x1000>,
+              <0x12040000 0x1000>,
+              <0x12060000 0x1000>,
+              <0x12820000 0x1000>,
+              <0x12840000 0x1000>,
+              <0x12860000 0x1000>,
+              <0x13000000 0x1000>,
+              <0x13020000 0x1000>,
+              <0x13040000 0x1000>,
+              <0x130f0000 0x1000>,
+              <0x13110000 0x1000>,
+              <0x13800000 0x1000>,
+              <0x13820000 0x1000>,
+              <0x13860000 0x1000>;
+        reg-names = "iocfg0", "iocfg_rt",
+                    "iocfg_rm1", "iocfg_rm2", "iocfg_rb",
+                    "iocfg_bm1", "iocfg_bm2", "iocfg_bm3",
+                    "iocfg_lt", "iocfg_lm1", "iocfg_lm2",
+                    "iocfg_lb1", "iocfg_lb2", "iocfg_tm1",
+                    "iocfg_tm2", "iocfg_tm3";
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&pio 0 0 271>;
+        interrupt-controller;
+        interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH 0>;
+        #interrupt-cells = <2>;
+
+        pio-pins {
+            pins {
+                pinmux = <PINMUX_GPIO0__FUNC_GPIO0>;
+                output-low;
+            };
+        };
+
+        spi0-pins {
+            pins-spi {
+                pinmux = <PINMUX_GPIO110__FUNC_SPI1_CLK>,
+                         <PINMUX_GPIO111__FUNC_SPI1_CSB>,
+                         <PINMUX_GPIO112__FUNC_SPI1_MO>;
+                drive-strength = <6>;
+            };
+            pins-spi-mi {
+                pinmux = <PINMUX_GPIO113__FUNC_SPI1_MI>;
+                bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
+            };
+        };
+
+        i2c0-pins {
+            pins {
+                pinmux = <PINMUX_GPIO99__FUNC_SCL0>,
+                         <PINMUX_GPIO100__FUNC_SDA0>;
+                bias-disable;
+            };
+        };
+    };
diff --git a/include/dt-bindings/pinctrl/mt8196-pinfunc.h b/include/dt-bindings/pinctrl/mt8196-pinfunc.h
new file mode 100644
index 000000000000..bf0c8374407c
--- /dev/null
+++ b/include/dt-bindings/pinctrl/mt8196-pinfunc.h
@@ -0,0 +1,1572 @@
+/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
+/*
+ * Copyright (C) 2025 Mediatek Inc.
+ * Author: Guodong Liu <Guodong.Liu@mediatek.com>
+ */
+
+#ifndef __MT8196_PINFUNC_H
+#define __MT8196_PINFUNC_H
+
+#include <dt-bindings/pinctrl/mt65xx.h>
+
+#define PINMUX_GPIO0__FUNC_GPIO0 (MTK_PIN_NO(0) | 0)
+#define PINMUX_GPIO0__FUNC_DMIC1_CLK (MTK_PIN_NO(0) | 1)
+#define PINMUX_GPIO0__FUNC_SPI3_A_MO (MTK_PIN_NO(0) | 3)
+#define PINMUX_GPIO0__FUNC_FMI2S_B_LRCK (MTK_PIN_NO(0) | 4)
+#define PINMUX_GPIO0__FUNC_SCP_DMIC1_CLK (MTK_PIN_NO(0) | 5)
+#define PINMUX_GPIO0__FUNC_TP_GPIO14_AO (MTK_PIN_NO(0) | 6)
+
+#define PINMUX_GPIO1__FUNC_GPIO1 (MTK_PIN_NO(1) | 0)
+#define PINMUX_GPIO1__FUNC_DMIC1_DAT (MTK_PIN_NO(1) | 1)
+#define PINMUX_GPIO1__FUNC_SRCLKENAI1 (MTK_PIN_NO(1) | 2)
+#define PINMUX_GPIO1__FUNC_SPI3_A_MI (MTK_PIN_NO(1) | 3)
+#define PINMUX_GPIO1__FUNC_FMI2S_B_DI (MTK_PIN_NO(1) | 4)
+#define PINMUX_GPIO1__FUNC_SCP_DMIC1_DAT (MTK_PIN_NO(1) | 5)
+#define PINMUX_GPIO1__FUNC_TP_GPIO15_AO (MTK_PIN_NO(1) | 6)
+
+#define PINMUX_GPIO2__FUNC_GPIO2 (MTK_PIN_NO(2) | 0)
+#define PINMUX_GPIO2__FUNC_PWM_VLP (MTK_PIN_NO(2) | 1)
+#define PINMUX_GPIO2__FUNC_DSI_HSYNC (MTK_PIN_NO(2) | 2)
+#define PINMUX_GPIO2__FUNC_RG_TSFDC_LDO_EN (MTK_PIN_NO(2) | 5)
+#define PINMUX_GPIO2__FUNC_TP_GPIO8_AO (MTK_PIN_NO(2) | 6)
+
+#define PINMUX_GPIO3__FUNC_GPIO3 (MTK_PIN_NO(3) | 0)
+#define PINMUX_GPIO3__FUNC_MD_INT0 (MTK_PIN_NO(3) | 1)
+#define PINMUX_GPIO3__FUNC_DSI1_HSYNC (MTK_PIN_NO(3) | 2)
+#define PINMUX_GPIO3__FUNC_DA_TSFDC_LDO_MODE (MTK_PIN_NO(3) | 5)
+#define PINMUX_GPIO3__FUNC_TP_GPIO9_AO (MTK_PIN_NO(3) | 6)
+
+#define PINMUX_GPIO4__FUNC_GPIO4 (MTK_PIN_NO(4) | 0)
+#define PINMUX_GPIO4__FUNC_DISP_PWM1 (MTK_PIN_NO(4) | 1)
+#define PINMUX_GPIO4__FUNC_MD32_0_GPIO0 (MTK_PIN_NO(4) | 2)
+
+#define PINMUX_GPIO5__FUNC_GPIO5 (MTK_PIN_NO(5) | 0)
+#define PINMUX_GPIO5__FUNC_LCM1_RST (MTK_PIN_NO(5) | 1)
+#define PINMUX_GPIO5__FUNC_SPI7_A_CLK (MTK_PIN_NO(5) | 2)
+
+#define PINMUX_GPIO6__FUNC_GPIO6 (MTK_PIN_NO(6) | 0)
+#define PINMUX_GPIO6__FUNC_DSI1_TE (MTK_PIN_NO(6) | 1)
+#define PINMUX_GPIO6__FUNC_SPI7_A_CSB (MTK_PIN_NO(6) | 2)
+
+#define PINMUX_GPIO7__FUNC_GPIO7 (MTK_PIN_NO(7) | 0)
+#define PINMUX_GPIO7__FUNC_SPI7_A_MO (MTK_PIN_NO(7) | 2)
+#define PINMUX_GPIO7__FUNC_GPS_PPS0 (MTK_PIN_NO(7) | 3)
+
+#define PINMUX_GPIO8__FUNC_GPIO8 (MTK_PIN_NO(8) | 0)
+#define PINMUX_GPIO8__FUNC_SPI7_A_MI (MTK_PIN_NO(8) | 2)
+#define PINMUX_GPIO8__FUNC_EDP_TX_HPD (MTK_PIN_NO(8) | 3)
+
+#define PINMUX_GPIO9__FUNC_GPIO9 (MTK_PIN_NO(9) | 0)
+#define PINMUX_GPIO9__FUNC_I2SIN1_LRCK (MTK_PIN_NO(9) | 3)
+#define PINMUX_GPIO9__FUNC_RG_TSFDC_LDO_REFSEL0 (MTK_PIN_NO(9) | 7)
+
+#define PINMUX_GPIO10__FUNC_GPIO10 (MTK_PIN_NO(10) | 0)
+#define PINMUX_GPIO10__FUNC_I2SOUT1_DO (MTK_PIN_NO(10) | 3)
+#define PINMUX_GPIO10__FUNC_RG_TSFDC_LDO_REFSEL1 (MTK_PIN_NO(10) | 7)
+
+#define PINMUX_GPIO11__FUNC_GPIO11 (MTK_PIN_NO(11) | 0)
+#define PINMUX_GPIO11__FUNC_FMI2S_B_BCK (MTK_PIN_NO(11) | 4)
+#define PINMUX_GPIO11__FUNC_DBG_MON_A30 (MTK_PIN_NO(11) | 7)
+
+#define PINMUX_GPIO12__FUNC_GPIO12 (MTK_PIN_NO(12) | 0)
+#define PINMUX_GPIO12__FUNC_I2SIN1_DI_B (MTK_PIN_NO(12) | 3)
+
+#define PINMUX_GPIO13__FUNC_GPIO13 (MTK_PIN_NO(13) | 0)
+#define PINMUX_GPIO13__FUNC_EDP_TX_HPD (MTK_PIN_NO(13) | 1)
+#define PINMUX_GPIO13__FUNC_GPS_PPS1 (MTK_PIN_NO(13) | 2)
+
+#define PINMUX_GPIO14__FUNC_GPIO14 (MTK_PIN_NO(14) | 0)
+#define PINMUX_GPIO14__FUNC_SRCLKENA2 (MTK_PIN_NO(14) | 1)
+#define PINMUX_GPIO14__FUNC_DSI2_TE (MTK_PIN_NO(14) | 2)
+#define PINMUX_GPIO14__FUNC_SPMI_P_TRIG_FLAG (MTK_PIN_NO(14) | 3)
+#define PINMUX_GPIO14__FUNC_MD_INT3 (MTK_PIN_NO(14) | 5)
+#define PINMUX_GPIO14__FUNC_TP_GPIO8_AO (MTK_PIN_NO(14) | 6)
+
+#define PINMUX_GPIO15__FUNC_GPIO15 (MTK_PIN_NO(15) | 0)
+#define PINMUX_GPIO15__FUNC_SRCLKENAI0 (MTK_PIN_NO(15) | 1)
+#define PINMUX_GPIO15__FUNC_SPMI_M_TRIG_FLAG (MTK_PIN_NO(15) | 2)
+#define PINMUX_GPIO15__FUNC_UCTS0 (MTK_PIN_NO(15) | 3)
+#define PINMUX_GPIO15__FUNC_MD_INT4 (MTK_PIN_NO(15) | 4)
+#define PINMUX_GPIO15__FUNC_I2SOUT2_DO (MTK_PIN_NO(15) | 5)
+#define PINMUX_GPIO15__FUNC_TP_GPIO9_AO (MTK_PIN_NO(15) | 6)
+
+#define PINMUX_GPIO16__FUNC_GPIO16 (MTK_PIN_NO(16) | 0)
+#define PINMUX_GPIO16__FUNC_SRCLKENAI1 (MTK_PIN_NO(16) | 1)
+#define PINMUX_GPIO16__FUNC_DP_TX_HPD (MTK_PIN_NO(16) | 2)
+#define PINMUX_GPIO16__FUNC_URTS0 (MTK_PIN_NO(16) | 3)
+#define PINMUX_GPIO16__FUNC_GPS_L5_ELNA_EN (MTK_PIN_NO(16) | 4)
+#define PINMUX_GPIO16__FUNC_KPROW2 (MTK_PIN_NO(16) | 5)
+#define PINMUX_GPIO16__FUNC_TP_GPIO10_AO (MTK_PIN_NO(16) | 6)
+
+#define PINMUX_GPIO17__FUNC_GPIO17 (MTK_PIN_NO(17) | 0)
+#define PINMUX_GPIO17__FUNC_MD_INT0 (MTK_PIN_NO(17) | 1)
+#define PINMUX_GPIO17__FUNC_DP_OC_EN (MTK_PIN_NO(17) | 2)
+#define PINMUX_GPIO17__FUNC_UCTS1 (MTK_PIN_NO(17) | 3)
+#define PINMUX_GPIO17__FUNC_MD_NTN_URXD1 (MTK_PIN_NO(17) | 4)
+#define PINMUX_GPIO17__FUNC_KPCOL2 (MTK_PIN_NO(17) | 5)
+#define PINMUX_GPIO17__FUNC_TP_GPIO11_AO (MTK_PIN_NO(17) | 6)
+
+#define PINMUX_GPIO18__FUNC_GPIO18 (MTK_PIN_NO(18) | 0)
+#define PINMUX_GPIO18__FUNC_DMIC1_CLK (MTK_PIN_NO(18) | 1)
+#define PINMUX_GPIO18__FUNC_DP_RAUX_SBU1 (MTK_PIN_NO(18) | 2)
+#define PINMUX_GPIO18__FUNC_URTS1 (MTK_PIN_NO(18) | 3)
+#define PINMUX_GPIO18__FUNC_MD_NTN_UTXD1 (MTK_PIN_NO(18) | 4)
+#define PINMUX_GPIO18__FUNC_I2SIN2_DI (MTK_PIN_NO(18) | 5)
+#define PINMUX_GPIO18__FUNC_TP_UTXD_GNSS_VLP (MTK_PIN_NO(18) | 6)
+
+#define PINMUX_GPIO19__FUNC_GPIO19 (MTK_PIN_NO(19) | 0)
+#define PINMUX_GPIO19__FUNC_DMIC1_DAT (MTK_PIN_NO(19) | 1)
+#define PINMUX_GPIO19__FUNC_DP_RAUX_SBU2 (MTK_PIN_NO(19) | 2)
+#define PINMUX_GPIO19__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(19) | 3)
+#define PINMUX_GPIO19__FUNC_CLKM3_A (MTK_PIN_NO(19) | 4)
+#define PINMUX_GPIO19__FUNC_I2SIN2_BCK (MTK_PIN_NO(19) | 5)
+#define PINMUX_GPIO19__FUNC_TP_URXD_GNSS_VLP (MTK_PIN_NO(19) | 6)
+
+#define PINMUX_GPIO20__FUNC_GPIO20 (MTK_PIN_NO(20) | 0)
+#define PINMUX_GPIO20__FUNC_IDDIG (MTK_PIN_NO(20) | 1)
+#define PINMUX_GPIO20__FUNC_LCM2_RST (MTK_PIN_NO(20) | 2)
+#define PINMUX_GPIO20__FUNC_GPS_PPS1 (MTK_PIN_NO(20) | 3)
+#define PINMUX_GPIO20__FUNC_CLKM2_A (MTK_PIN_NO(20) | 4)
+
+#define PINMUX_GPIO21__FUNC_GPIO21 (MTK_PIN_NO(21) | 0)
+#define PINMUX_GPIO21__FUNC_BPI_BUS11 (MTK_PIN_NO(21) | 1)
+#define PINMUX_GPIO21__FUNC_PCIE_PERSTN_1P (MTK_PIN_NO(21) | 2)
+#define PINMUX_GPIO21__FUNC_DSI1_TE (MTK_PIN_NO(21) | 3)
+#define PINMUX_GPIO21__FUNC_DMIC_CLK (MTK_PIN_NO(21) | 4)
+#define PINMUX_GPIO21__FUNC_SCP_DMIC_CLK (MTK_PIN_NO(21) | 5)
+
+#define PINMUX_GPIO22__FUNC_GPIO22 (MTK_PIN_NO(22) | 0)
+#define PINMUX_GPIO22__FUNC_BPI_BUS12 (MTK_PIN_NO(22) | 1)
+#define PINMUX_GPIO22__FUNC_PCIE_CLKREQN_1P (MTK_PIN_NO(22) | 2)
+#define PINMUX_GPIO22__FUNC_DSI2_TE (MTK_PIN_NO(22) | 3)
+#define PINMUX_GPIO22__FUNC_DMIC_DAT (MTK_PIN_NO(22) | 4)
+#define PINMUX_GPIO22__FUNC_SCP_DMIC_DAT (MTK_PIN_NO(22) | 5)
+
+#define PINMUX_GPIO23__FUNC_GPIO23 (MTK_PIN_NO(23) | 0)
+#define PINMUX_GPIO23__FUNC_BPI_BUS13 (MTK_PIN_NO(23) | 1)
+#define PINMUX_GPIO23__FUNC_PCIE_WAKEN_1P (MTK_PIN_NO(23) | 2)
+#define PINMUX_GPIO23__FUNC_DSI3_TE (MTK_PIN_NO(23) | 3)
+#define PINMUX_GPIO23__FUNC_DMIC1_CLK (MTK_PIN_NO(23) | 4)
+#define PINMUX_GPIO23__FUNC_SCP_DMIC1_CLK (MTK_PIN_NO(23) | 5)
+
+#define PINMUX_GPIO24__FUNC_GPIO24 (MTK_PIN_NO(24) | 0)
+#define PINMUX_GPIO24__FUNC_BPI_BUS14 (MTK_PIN_NO(24) | 1)
+#define PINMUX_GPIO24__FUNC_LCM1_RST (MTK_PIN_NO(24) | 2)
+#define PINMUX_GPIO24__FUNC_AGPS_SYNC (MTK_PIN_NO(24) | 3)
+#define PINMUX_GPIO24__FUNC_DMIC1_DAT (MTK_PIN_NO(24) | 4)
+#define PINMUX_GPIO24__FUNC_SCP_DMIC1_DAT (MTK_PIN_NO(24) | 5)
+#define PINMUX_GPIO24__FUNC_DISP_PWM1 (MTK_PIN_NO(24) | 6)
+
+#define PINMUX_GPIO25__FUNC_GPIO25 (MTK_PIN_NO(25) | 0)
+#define PINMUX_GPIO25__FUNC_BPI_BUS15 (MTK_PIN_NO(25) | 1)
+#define PINMUX_GPIO25__FUNC_LCM2_RST (MTK_PIN_NO(25) | 2)
+#define PINMUX_GPIO25__FUNC_SRCLKENAI1 (MTK_PIN_NO(25) | 3)
+#define PINMUX_GPIO25__FUNC_DMIC2_CLK (MTK_PIN_NO(25) | 4)
+#define PINMUX_GPIO25__FUNC_DISP_PWM2 (MTK_PIN_NO(25) | 6)
+
+#define PINMUX_GPIO26__FUNC_GPIO26 (MTK_PIN_NO(26) | 0)
+#define PINMUX_GPIO26__FUNC_BPI_BUS16 (MTK_PIN_NO(26) | 1)
+#define PINMUX_GPIO26__FUNC_LCM3_RST (MTK_PIN_NO(26) | 2)
+#define PINMUX_GPIO26__FUNC_DMIC2_DAT (MTK_PIN_NO(26) | 4)
+#define PINMUX_GPIO26__FUNC_DISP_PWM3 (MTK_PIN_NO(26) | 6)
+
+#define PINMUX_GPIO27__FUNC_GPIO27 (MTK_PIN_NO(27) | 0)
+#define PINMUX_GPIO27__FUNC_BPI_BUS17 (MTK_PIN_NO(27) | 1)
+#define PINMUX_GPIO27__FUNC_UTXD4 (MTK_PIN_NO(27) | 2)
+#define PINMUX_GPIO27__FUNC_DISP_PWM4 (MTK_PIN_NO(27) | 6)
+#define PINMUX_GPIO27__FUNC_DBG_MON_A20 (MTK_PIN_NO(27) | 7)
+
+#define PINMUX_GPIO28__FUNC_GPIO28 (MTK_PIN_NO(28) | 0)
+#define PINMUX_GPIO28__FUNC_BPI_BUS18 (MTK_PIN_NO(28) | 1)
+#define PINMUX_GPIO28__FUNC_URXD4 (MTK_PIN_NO(28) | 2)
+#define PINMUX_GPIO28__FUNC_SPI2_A_MI (MTK_PIN_NO(28) | 3)
+#define PINMUX_GPIO28__FUNC_CLKM0_A (MTK_PIN_NO(28) | 4)
+#define PINMUX_GPIO28__FUNC_DBG_MON_A21 (MTK_PIN_NO(28) | 7)
+
+#define PINMUX_GPIO29__FUNC_GPIO29 (MTK_PIN_NO(29) | 0)
+#define PINMUX_GPIO29__FUNC_BPI_BUS19 (MTK_PIN_NO(29) | 1)
+#define PINMUX_GPIO29__FUNC_MD_NTN_UTXD1 (MTK_PIN_NO(29) | 2)
+#define PINMUX_GPIO29__FUNC_SPI2_A_MO (MTK_PIN_NO(29) | 3)
+#define PINMUX_GPIO29__FUNC_CLKM1_A (MTK_PIN_NO(29) | 4)
+#define PINMUX_GPIO29__FUNC_UCTS4 (MTK_PIN_NO(29) | 6)
+#define PINMUX_GPIO29__FUNC_DBG_MON_A17 (MTK_PIN_NO(29) | 7)
+
+#define PINMUX_GPIO30__FUNC_GPIO30 (MTK_PIN_NO(30) | 0)
+#define PINMUX_GPIO30__FUNC_BPI_BUS20 (MTK_PIN_NO(30) | 1)
+#define PINMUX_GPIO30__FUNC_MD_NTN_URXD1 (MTK_PIN_NO(30) | 2)
+#define PINMUX_GPIO30__FUNC_SPI2_A_CLK (MTK_PIN_NO(30) | 3)
+#define PINMUX_GPIO30__FUNC_CLKM2_A (MTK_PIN_NO(30) | 4)
+#define PINMUX_GPIO30__FUNC_DSI3_HSYNC (MTK_PIN_NO(30) | 5)
+#define PINMUX_GPIO30__FUNC_URTS4 (MTK_PIN_NO(30) | 6)
+#define PINMUX_GPIO30__FUNC_DBG_MON_A18 (MTK_PIN_NO(30) | 7)
+
+#define PINMUX_GPIO31__FUNC_GPIO31 (MTK_PIN_NO(31) | 0)
+#define PINMUX_GPIO31__FUNC_BPI_BUS21 (MTK_PIN_NO(31) | 1)
+#define PINMUX_GPIO31__FUNC_SPI2_A_CSB (MTK_PIN_NO(31) | 3)
+#define PINMUX_GPIO31__FUNC_CLKM3_A (MTK_PIN_NO(31) | 4)
+#define PINMUX_GPIO31__FUNC_EDP_TX_HPD (MTK_PIN_NO(31) | 6)
+#define PINMUX_GPIO31__FUNC_DBG_MON_A19 (MTK_PIN_NO(31) | 7)
+
+#define PINMUX_GPIO32__FUNC_GPIO32 (MTK_PIN_NO(32) | 0)
+#define PINMUX_GPIO32__FUNC_LCM4_RST (MTK_PIN_NO(32) | 1)
+#define PINMUX_GPIO32__FUNC_DP_TX_HPD (MTK_PIN_NO(32) | 2)
+#define PINMUX_GPIO32__FUNC_SSPM_JTAG_TCK_VLP (MTK_PIN_NO(32) | 3)
+#define PINMUX_GPIO32__FUNC_ADSP_JTAG0_TCK (MTK_PIN_NO(32) | 4)
+#define PINMUX_GPIO32__FUNC_SCP_JTAG0_TCK_VLP (MTK_PIN_NO(32) | 5)
+#define PINMUX_GPIO32__FUNC_SPU0_TCK (MTK_PIN_NO(32) | 6)
+#define PINMUX_GPIO32__FUNC_IO_JTAG_TCK (MTK_PIN_NO(32) | 7)
+
+#define PINMUX_GPIO33__FUNC_GPIO33 (MTK_PIN_NO(33) | 0)
+#define PINMUX_GPIO33__FUNC_DSI4_TE (MTK_PIN_NO(33) | 1)
+#define PINMUX_GPIO33__FUNC_DP_OC_EN (MTK_PIN_NO(33) | 2)
+#define PINMUX_GPIO33__FUNC_SSPM_JTAG_TRSTN_VLP (MTK_PIN_NO(33) | 3)
+#define PINMUX_GPIO33__FUNC_ADSP_JTAG0_TRSTN (MTK_PIN_NO(33) | 4)
+#define PINMUX_GPIO33__FUNC_SCP_JTAG0_TRSTN_VLP (MTK_PIN_NO(33) | 5)
+#define PINMUX_GPIO33__FUNC_SPU0_NTRST (MTK_PIN_NO(33) | 6)
+#define PINMUX_GPIO33__FUNC_IO_JTAG_TRSTN (MTK_PIN_NO(33) | 7)
+
+#define PINMUX_GPIO34__FUNC_GPIO34 (MTK_PIN_NO(34) | 0)
+#define PINMUX_GPIO34__FUNC_UCTS5 (MTK_PIN_NO(34) | 1)
+#define PINMUX_GPIO34__FUNC_DP_RAUX_SBU1 (MTK_PIN_NO(34) | 2)
+#define PINMUX_GPIO34__FUNC_SSPM_JTAG_TDI_VLP (MTK_PIN_NO(34) | 3)
+#define PINMUX_GPIO34__FUNC_ADSP_JTAG0_TDI (MTK_PIN_NO(34) | 4)
+#define PINMUX_GPIO34__FUNC_SCP_JTAG0_TDI_VLP (MTK_PIN_NO(34) | 5)
+#define PINMUX_GPIO34__FUNC_SPU0_TDI (MTK_PIN_NO(34) | 6)
+#define PINMUX_GPIO34__FUNC_IO_JTAG_TDI (MTK_PIN_NO(34) | 7)
+
+#define PINMUX_GPIO35__FUNC_GPIO35 (MTK_PIN_NO(35) | 0)
+#define PINMUX_GPIO35__FUNC_URTS5 (MTK_PIN_NO(35) | 1)
+#define PINMUX_GPIO35__FUNC_DP_RAUX_SBU2 (MTK_PIN_NO(35) | 2)
+#define PINMUX_GPIO35__FUNC_SSPM_JTAG_TDO_VLP (MTK_PIN_NO(35) | 3)
+#define PINMUX_GPIO35__FUNC_ADSP_JTAG0_TDO (MTK_PIN_NO(35) | 4)
+#define PINMUX_GPIO35__FUNC_SCP_JTAG0_TDO_VLP (MTK_PIN_NO(35) | 5)
+#define PINMUX_GPIO35__FUNC_SPU0_TDO (MTK_PIN_NO(35) | 6)
+#define PINMUX_GPIO35__FUNC_IO_JTAG_TDO (MTK_PIN_NO(35) | 7)
+
+#define PINMUX_GPIO36__FUNC_GPIO36 (MTK_PIN_NO(36) | 0)
+#define PINMUX_GPIO36__FUNC_UTXD5 (MTK_PIN_NO(36) | 1)
+#define PINMUX_GPIO36__FUNC_SSPM_JTAG_TMS_VLP (MTK_PIN_NO(36) | 3)
+#define PINMUX_GPIO36__FUNC_ADSP_JTAG0_TMS (MTK_PIN_NO(36) | 4)
+#define PINMUX_GPIO36__FUNC_SCP_JTAG0_TMS_VLP (MTK_PIN_NO(36) | 5)
+#define PINMUX_GPIO36__FUNC_SPU0_TMS (MTK_PIN_NO(36) | 6)
+#define PINMUX_GPIO36__FUNC_IO_JTAG_TMS (MTK_PIN_NO(36) | 7)
+
+#define PINMUX_GPIO37__FUNC_GPIO37 (MTK_PIN_NO(37) | 0)
+#define PINMUX_GPIO37__FUNC_URXD5 (MTK_PIN_NO(37) | 1)
+#define PINMUX_GPIO37__FUNC_MD_INT3 (MTK_PIN_NO(37) | 3)
+#define PINMUX_GPIO37__FUNC_CLKM0_B (MTK_PIN_NO(37) | 4)
+#define PINMUX_GPIO37__FUNC_TP_GPIO5_AO (MTK_PIN_NO(37) | 5)
+#define PINMUX_GPIO37__FUNC_SPU0_UTX (MTK_PIN_NO(37) | 6)
+#define PINMUX_GPIO37__FUNC_DAP_MD32_SWCK (MTK_PIN_NO(37) | 7)
+
+#define PINMUX_GPIO38__FUNC_GPIO38 (MTK_PIN_NO(38) | 0)
+#define PINMUX_GPIO38__FUNC_SPMI_P_TRIG_FLAG (MTK_PIN_NO(38) | 2)
+#define PINMUX_GPIO38__FUNC_MD_INT4 (MTK_PIN_NO(38) | 3)
+#define PINMUX_GPIO38__FUNC_CLKM1_B (MTK_PIN_NO(38) | 4)
+#define PINMUX_GPIO38__FUNC_TP_GPIO6_AO (MTK_PIN_NO(38) | 5)
+#define PINMUX_GPIO38__FUNC_SPU0_URX (MTK_PIN_NO(38) | 6)
+#define PINMUX_GPIO38__FUNC_DAP_MD32_SWD (MTK_PIN_NO(38) | 7)
+
+#define PINMUX_GPIO39__FUNC_GPIO39 (MTK_PIN_NO(39) | 0)
+#define PINMUX_GPIO39__FUNC_I2S_MCK0 (MTK_PIN_NO(39) | 1)
+#define PINMUX_GPIO39__FUNC_GPS_PPS0 (MTK_PIN_NO(39) | 3)
+#define PINMUX_GPIO39__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(39) | 4)
+#define PINMUX_GPIO39__FUNC_DBG_MON_B12 (MTK_PIN_NO(39) | 7)
+
+#define PINMUX_GPIO40__FUNC_GPIO40 (MTK_PIN_NO(40) | 0)
+#define PINMUX_GPIO40__FUNC_I2SIN6_0_BCK (MTK_PIN_NO(40) | 1)
+#define PINMUX_GPIO40__FUNC_SPI4_B_CLK (MTK_PIN_NO(40) | 3)
+#define PINMUX_GPIO40__FUNC_UCTS2 (MTK_PIN_NO(40) | 4)
+#define PINMUX_GPIO40__FUNC_CCU1_UTXD (MTK_PIN_NO(40) | 5)
+#define PINMUX_GPIO40__FUNC_DBG_MON_B13 (MTK_PIN_NO(40) | 7)
+
+#define PINMUX_GPIO41__FUNC_GPIO41 (MTK_PIN_NO(41) | 0)
+#define PINMUX_GPIO41__FUNC_I2SIN6_0_LRCK (MTK_PIN_NO(41) | 1)
+#define PINMUX_GPIO41__FUNC_SPI4_B_CSB (MTK_PIN_NO(41) | 3)
+#define PINMUX_GPIO41__FUNC_URTS2 (MTK_PIN_NO(41) | 4)
+#define PINMUX_GPIO41__FUNC_CCU1_URXD (MTK_PIN_NO(41) | 5)
+#define PINMUX_GPIO41__FUNC_DBG_MON_B14 (MTK_PIN_NO(41) | 7)
+
+#define PINMUX_GPIO42__FUNC_GPIO42 (MTK_PIN_NO(42) | 0)
+#define PINMUX_GPIO42__FUNC_I2SIN6_0_DI (MTK_PIN_NO(42) | 1)
+#define PINMUX_GPIO42__FUNC_SPI4_B_MI (MTK_PIN_NO(42) | 3)
+#define PINMUX_GPIO42__FUNC_URXD2 (MTK_PIN_NO(42) | 4)
+#define PINMUX_GPIO42__FUNC_CCU1_URTS (MTK_PIN_NO(42) | 5)
+#define PINMUX_GPIO42__FUNC_MD32_0_RXD (MTK_PIN_NO(42) | 6)
+#define PINMUX_GPIO42__FUNC_DBG_MON_B15 (MTK_PIN_NO(42) | 7)
+
+#define PINMUX_GPIO43__FUNC_GPIO43 (MTK_PIN_NO(43) | 0)
+#define PINMUX_GPIO43__FUNC_I2SOUT6_0_DO (MTK_PIN_NO(43) | 1)
+#define PINMUX_GPIO43__FUNC_SPI4_B_MO (MTK_PIN_NO(43) | 3)
+#define PINMUX_GPIO43__FUNC_UTXD2 (MTK_PIN_NO(43) | 4)
+#define PINMUX_GPIO43__FUNC_CCU1_UCTS (MTK_PIN_NO(43) | 5)
+#define PINMUX_GPIO43__FUNC_MD32_0_TXD (MTK_PIN_NO(43) | 6)
+#define PINMUX_GPIO43__FUNC_DBG_MON_B16 (MTK_PIN_NO(43) | 7)
+
+#define PINMUX_GPIO44__FUNC_GPIO44 (MTK_PIN_NO(44) | 0)
+#define PINMUX_GPIO44__FUNC_MD_INT1_C2K_UIM0_HOT_PLUG (MTK_PIN_NO(44) | 1)
+#define PINMUX_GPIO44__FUNC_SPI3_A_CLK (MTK_PIN_NO(44) | 3)
+#define PINMUX_GPIO44__FUNC_TP_GPIO10_AO (MTK_PIN_NO(44) | 6)
+
+#define PINMUX_GPIO45__FUNC_GPIO45 (MTK_PIN_NO(45) | 0)
+#define PINMUX_GPIO45__FUNC_MD_INT2_C2K_UIM1_HOT_PLUG (MTK_PIN_NO(45) | 1)
+#define PINMUX_GPIO45__FUNC_DSI2_HSYNC (MTK_PIN_NO(45) | 2)
+#define PINMUX_GPIO45__FUNC_SPI3_A_CSB (MTK_PIN_NO(45) | 3)
+#define PINMUX_GPIO45__FUNC_PWM_VLP (MTK_PIN_NO(45) | 4)
+#define PINMUX_GPIO45__FUNC_TP_GPIO11_AO (MTK_PIN_NO(45) | 6)
+
+#define PINMUX_GPIO46__FUNC_GPIO46 (MTK_PIN_NO(46) | 0)
+#define PINMUX_GPIO46__FUNC_SCP_SCL4 (MTK_PIN_NO(46) | 1)
+#define PINMUX_GPIO46__FUNC_PWM_VLP (MTK_PIN_NO(46) | 2)
+#define PINMUX_GPIO46__FUNC_SCP_ILDO_DTEST1_VLP (MTK_PIN_NO(46) | 4)
+#define PINMUX_GPIO46__FUNC_UFS_MPHY_SCL (MTK_PIN_NO(46) | 5)
+#define PINMUX_GPIO46__FUNC_TP_GPIO0_AO (MTK_PIN_NO(46) | 6)
+
+#define PINMUX_GPIO47__FUNC_GPIO47 (MTK_PIN_NO(47) | 0)
+#define PINMUX_GPIO47__FUNC_SCP_SDA4 (MTK_PIN_NO(47) | 1)
+#define PINMUX_GPIO47__FUNC_SCP_ILDO_DTEST2_VLP (MTK_PIN_NO(47) | 4)
+#define PINMUX_GPIO47__FUNC_UFS_MPHY_SDA (MTK_PIN_NO(47) | 5)
+#define PINMUX_GPIO47__FUNC_TP_GPIO1_AO (MTK_PIN_NO(47) | 6)
+
+#define PINMUX_GPIO48__FUNC_GPIO48 (MTK_PIN_NO(48) | 0)
+#define PINMUX_GPIO48__FUNC_SCP_SCL5 (MTK_PIN_NO(48) | 1)
+#define PINMUX_GPIO48__FUNC_PWM_VLP (MTK_PIN_NO(48) | 2)
+#define PINMUX_GPIO48__FUNC_CCU0_UTXD (MTK_PIN_NO(48) | 3)
+#define PINMUX_GPIO48__FUNC_SCP_ILDO_DTEST3_VLP (MTK_PIN_NO(48) | 4)
+#define PINMUX_GPIO48__FUNC_TP_GPIO2_AO (MTK_PIN_NO(48) | 6)
+
+#define PINMUX_GPIO49__FUNC_GPIO49 (MTK_PIN_NO(49) | 0)
+#define PINMUX_GPIO49__FUNC_SCP_SDA5 (MTK_PIN_NO(49) | 1)
+#define PINMUX_GPIO49__FUNC_CCU0_URXD (MTK_PIN_NO(49) | 3)
+#define PINMUX_GPIO49__FUNC_SCP_ILDO_DTEST4_VLP (MTK_PIN_NO(49) | 4)
+#define PINMUX_GPIO49__FUNC_TP_GPIO3_AO (MTK_PIN_NO(49) | 6)
+
+#define PINMUX_GPIO50__FUNC_GPIO50 (MTK_PIN_NO(50) | 0)
+#define PINMUX_GPIO50__FUNC_SCP_SCL6 (MTK_PIN_NO(50) | 1)
+#define PINMUX_GPIO50__FUNC_PWM_VLP (MTK_PIN_NO(50) | 2)
+#define PINMUX_GPIO50__FUNC_CCU0_URTS (MTK_PIN_NO(50) | 3)
+#define PINMUX_GPIO50__FUNC_DSI_HSYNC (MTK_PIN_NO(50) | 4)
+#define PINMUX_GPIO50__FUNC_TP_GPIO4_AO (MTK_PIN_NO(50) | 6)
+
+#define PINMUX_GPIO51__FUNC_GPIO51 (MTK_PIN_NO(51) | 0)
+#define PINMUX_GPIO51__FUNC_SCP_SDA6 (MTK_PIN_NO(51) | 1)
+#define PINMUX_GPIO51__FUNC_CCU0_UCTS (MTK_PIN_NO(51) | 3)
+#define PINMUX_GPIO51__FUNC_DSI1_HSYNC (MTK_PIN_NO(51) | 4)
+#define PINMUX_GPIO51__FUNC_TP_GPIO5_AO (MTK_PIN_NO(51) | 6)
+
+#define PINMUX_GPIO52__FUNC_GPIO52 (MTK_PIN_NO(52) | 0)
+#define PINMUX_GPIO52__FUNC_SCP_SCL1 (MTK_PIN_NO(52) | 1)
+#define PINMUX_GPIO52__FUNC_TDM_DATA2 (MTK_PIN_NO(52) | 3)
+
+#define PINMUX_GPIO53__FUNC_GPIO53 (MTK_PIN_NO(53) | 0)
+#define PINMUX_GPIO53__FUNC_SCP_SDA1 (MTK_PIN_NO(53) | 1)
+#define PINMUX_GPIO53__FUNC_TDM_DATA3 (MTK_PIN_NO(53) | 3)
+
+#define PINMUX_GPIO54__FUNC_GPIO54 (MTK_PIN_NO(54) | 0)
+#define PINMUX_GPIO54__FUNC_AUD_CLK_MOSI (MTK_PIN_NO(54) | 1)
+#define PINMUX_GPIO54__FUNC_TDM_MCK (MTK_PIN_NO(54) | 3)
+
+#define PINMUX_GPIO55__FUNC_GPIO55 (MTK_PIN_NO(55) | 0)
+#define PINMUX_GPIO55__FUNC_AUD_CLK_MISO (MTK_PIN_NO(55) | 1)
+#define PINMUX_GPIO55__FUNC_I2SOUT2_BCK (MTK_PIN_NO(55) | 2)
+#define PINMUX_GPIO55__FUNC_TDM_BCK (MTK_PIN_NO(55) | 3)
+
+#define PINMUX_GPIO56__FUNC_GPIO56 (MTK_PIN_NO(56) | 0)
+#define PINMUX_GPIO56__FUNC_AUD_DAT_MOSI0 (MTK_PIN_NO(56) | 1)
+#define PINMUX_GPIO56__FUNC_I2SOUT2_LRCK (MTK_PIN_NO(56) | 2)
+#define PINMUX_GPIO56__FUNC_TDM_LRCK (MTK_PIN_NO(56) | 3)
+
+#define PINMUX_GPIO57__FUNC_GPIO57 (MTK_PIN_NO(57) | 0)
+#define PINMUX_GPIO57__FUNC_AUD_DAT_MOSI1 (MTK_PIN_NO(57) | 1)
+#define PINMUX_GPIO57__FUNC_I2SOUT2_DO (MTK_PIN_NO(57) | 2)
+#define PINMUX_GPIO57__FUNC_TDM_DATA0 (MTK_PIN_NO(57) | 3)
+
+#define PINMUX_GPIO58__FUNC_GPIO58 (MTK_PIN_NO(58) | 0)
+#define PINMUX_GPIO58__FUNC_AUD_DAT_MISO0 (MTK_PIN_NO(58) | 1)
+#define PINMUX_GPIO58__FUNC_TDM_DATA1 (MTK_PIN_NO(58) | 3)
+
+#define PINMUX_GPIO59__FUNC_GPIO59 (MTK_PIN_NO(59) | 0)
+#define PINMUX_GPIO59__FUNC_AUD_DAT_MISO1 (MTK_PIN_NO(59) | 1)
+#define PINMUX_GPIO59__FUNC_I2SIN1_BCK (MTK_PIN_NO(59) | 3)
+
+#define PINMUX_GPIO60__FUNC_GPIO60 (MTK_PIN_NO(60) | 0)
+#define PINMUX_GPIO60__FUNC_KPCOL0 (MTK_PIN_NO(60) | 1)
+#define PINMUX_GPIO60__FUNC_TP_GPIO13_AO (MTK_PIN_NO(60) | 6)
+
+#define PINMUX_GPIO61__FUNC_GPIO61 (MTK_PIN_NO(61) | 0)
+#define PINMUX_GPIO61__FUNC_MCU_M_PMIC_POC_I (MTK_PIN_NO(61) | 1)
+
+#define PINMUX_GPIO62__FUNC_GPIO62 (MTK_PIN_NO(62) | 0)
+#define PINMUX_GPIO62__FUNC_MCU_B_PMIC_POC_I (MTK_PIN_NO(62) | 1)
+
+#define PINMUX_GPIO63__FUNC_GPIO63 (MTK_PIN_NO(63) | 0)
+#define PINMUX_GPIO63__FUNC_MFG_PMIC_POC_I (MTK_PIN_NO(63) | 1)
+
+#define PINMUX_GPIO64__FUNC_GPIO64 (MTK_PIN_NO(64) | 0)
+#define PINMUX_GPIO64__FUNC_PRE_UVLO (MTK_PIN_NO(64) | 1)
+
+#define PINMUX_GPIO65__FUNC_GPIO65 (MTK_PIN_NO(65) | 0)
+#define PINMUX_GPIO65__FUNC_DPM2PMIC (MTK_PIN_NO(65) | 1)
+#define PINMUX_GPIO65__FUNC_SRCLKENA1 (MTK_PIN_NO(65) | 2)
+
+#define PINMUX_GPIO66__FUNC_GPIO66 (MTK_PIN_NO(66) | 0)
+#define PINMUX_GPIO66__FUNC_WATCHDOG (MTK_PIN_NO(66) | 1)
+
+#define PINMUX_GPIO67__FUNC_GPIO67 (MTK_PIN_NO(67) | 0)
+#define PINMUX_GPIO67__FUNC_SRCLKENA0 (MTK_PIN_NO(67) | 1)
+
+#define PINMUX_GPIO68__FUNC_GPIO68 (MTK_PIN_NO(68) | 0)
+#define PINMUX_GPIO68__FUNC_SCP_VREQ_VAO (MTK_PIN_NO(68) | 1)
+
+#define PINMUX_GPIO69__FUNC_GPIO69 (MTK_PIN_NO(69) | 0)
+#define PINMUX_GPIO69__FUNC_RTC32K_CK (MTK_PIN_NO(69) | 1)
+
+#define PINMUX_GPIO70__FUNC_GPIO70 (MTK_PIN_NO(70) | 0)
+#define PINMUX_GPIO70__FUNC_CMFLASH0 (MTK_PIN_NO(70) | 1)
+
+#define PINMUX_GPIO71__FUNC_GPIO71 (MTK_PIN_NO(71) | 0)
+
+#define PINMUX_GPIO72__FUNC_GPIO72 (MTK_PIN_NO(72) | 0)
+
+#define PINMUX_GPIO73__FUNC_GPIO73 (MTK_PIN_NO(73) | 0)
+
+#define PINMUX_GPIO74__FUNC_GPIO74 (MTK_PIN_NO(74) | 0)
+#define PINMUX_GPIO74__FUNC_DCXO_FPM_LPM (MTK_PIN_NO(74) | 1)
+
+#define PINMUX_GPIO75__FUNC_GPIO75 (MTK_PIN_NO(75) | 0)
+#define PINMUX_GPIO75__FUNC_SPMI_M_SCL (MTK_PIN_NO(75) | 1)
+
+#define PINMUX_GPIO76__FUNC_GPIO76 (MTK_PIN_NO(76) | 0)
+#define PINMUX_GPIO76__FUNC_SPMI_M_SDA (MTK_PIN_NO(76) | 1)
+
+#define PINMUX_GPIO77__FUNC_GPIO77 (MTK_PIN_NO(77) | 0)
+#define PINMUX_GPIO77__FUNC_SPMI_P_SCL (MTK_PIN_NO(77) | 1)
+
+#define PINMUX_GPIO78__FUNC_GPIO78 (MTK_PIN_NO(78) | 0)
+#define PINMUX_GPIO78__FUNC_SPMI_P_SDA (MTK_PIN_NO(78) | 1)
+
+#define PINMUX_GPIO79__FUNC_GPIO79 (MTK_PIN_NO(79) | 0)
+#define PINMUX_GPIO79__FUNC_CMMCLK0 (MTK_PIN_NO(79) | 1)
+#define PINMUX_GPIO79__FUNC_MD_INT4 (MTK_PIN_NO(79) | 2)
+
+#define PINMUX_GPIO80__FUNC_GPIO80 (MTK_PIN_NO(80) | 0)
+#define PINMUX_GPIO80__FUNC_CMMCLK1 (MTK_PIN_NO(80) | 1)
+
+#define PINMUX_GPIO81__FUNC_GPIO81 (MTK_PIN_NO(81) | 0)
+#define PINMUX_GPIO81__FUNC_SCP_SPI0_CK (MTK_PIN_NO(81) | 1)
+#define PINMUX_GPIO81__FUNC_SPI6_B_CLK (MTK_PIN_NO(81) | 2)
+#define PINMUX_GPIO81__FUNC_PWM_VLP (MTK_PIN_NO(81) | 3)
+#define PINMUX_GPIO81__FUNC_I2SOUT5_BCK (MTK_PIN_NO(81) | 4)
+#define PINMUX_GPIO81__FUNC_TP_GPIO0_AO (MTK_PIN_NO(81) | 6)
+
+#define PINMUX_GPIO82__FUNC_GPIO82 (MTK_PIN_NO(82) | 0)
+#define PINMUX_GPIO82__FUNC_SCP_SPI0_CS (MTK_PIN_NO(82) | 1)
+#define PINMUX_GPIO82__FUNC_SPI6_B_CSB (MTK_PIN_NO(82) | 2)
+#define PINMUX_GPIO82__FUNC_I2SOUT5_LRCK (MTK_PIN_NO(82) | 4)
+#define PINMUX_GPIO82__FUNC_TP_GPIO1_AO (MTK_PIN_NO(82) | 6)
+
+#define PINMUX_GPIO83__FUNC_GPIO83 (MTK_PIN_NO(83) | 0)
+#define PINMUX_GPIO83__FUNC_SCP_SPI0_MO (MTK_PIN_NO(83) | 1)
+#define PINMUX_GPIO83__FUNC_SPI6_B_MO (MTK_PIN_NO(83) | 2)
+#define PINMUX_GPIO83__FUNC_I2SOUT5_DATA0 (MTK_PIN_NO(83) | 4)
+#define PINMUX_GPIO83__FUNC_TP_GPIO2_AO (MTK_PIN_NO(83) | 6)
+
+#define PINMUX_GPIO84__FUNC_GPIO84 (MTK_PIN_NO(84) | 0)
+#define PINMUX_GPIO84__FUNC_SCP_SPI0_MI (MTK_PIN_NO(84) | 1)
+#define PINMUX_GPIO84__FUNC_SPI6_B_MI (MTK_PIN_NO(84) | 2)
+#define PINMUX_GPIO84__FUNC_I2SOUT5_DATA1 (MTK_PIN_NO(84) | 4)
+#define PINMUX_GPIO84__FUNC_TP_GPIO3_AO (MTK_PIN_NO(84) | 6)
+
+#define PINMUX_GPIO85__FUNC_GPIO85 (MTK_PIN_NO(85) | 0)
+#define PINMUX_GPIO85__FUNC_SCP_SPI1_CK (MTK_PIN_NO(85) | 1)
+#define PINMUX_GPIO85__FUNC_SPI7_B_CLK (MTK_PIN_NO(85) | 2)
+#define PINMUX_GPIO85__FUNC_I2SIN5_DATA0 (MTK_PIN_NO(85) | 4)
+#define PINMUX_GPIO85__FUNC_PWM_VLP (MTK_PIN_NO(85) | 5)
+#define PINMUX_GPIO85__FUNC_TP_GPIO4_AO (MTK_PIN_NO(85) | 6)
+
+#define PINMUX_GPIO86__FUNC_GPIO86 (MTK_PIN_NO(86) | 0)
+#define PINMUX_GPIO86__FUNC_SCP_SPI1_CS (MTK_PIN_NO(86) | 1)
+#define PINMUX_GPIO86__FUNC_SPI7_B_CSB (MTK_PIN_NO(86) | 2)
+#define PINMUX_GPIO86__FUNC_I2SIN5_DATA1 (MTK_PIN_NO(86) | 4)
+#define PINMUX_GPIO86__FUNC_TP_GPIO5_AO (MTK_PIN_NO(86) | 6)
+
+#define PINMUX_GPIO87__FUNC_GPIO87 (MTK_PIN_NO(87) | 0)
+#define PINMUX_GPIO87__FUNC_SCP_SPI1_MO (MTK_PIN_NO(87) | 1)
+#define PINMUX_GPIO87__FUNC_SPI7_B_MO (MTK_PIN_NO(87) | 2)
+#define PINMUX_GPIO87__FUNC_I2SIN5_BCK (MTK_PIN_NO(87) | 4)
+#define PINMUX_GPIO87__FUNC_TP_GPIO6_AO (MTK_PIN_NO(87) | 6)
+
+#define PINMUX_GPIO88__FUNC_GPIO88 (MTK_PIN_NO(88) | 0)
+#define PINMUX_GPIO88__FUNC_SCP_SPI1_MI (MTK_PIN_NO(88) | 1)
+#define PINMUX_GPIO88__FUNC_SPI7_B_MI (MTK_PIN_NO(88) | 2)
+#define PINMUX_GPIO88__FUNC_I2SIN5_LRCK (MTK_PIN_NO(88) | 4)
+#define PINMUX_GPIO88__FUNC_TP_GPIO7_AO (MTK_PIN_NO(88) | 6)
+
+#define PINMUX_GPIO89__FUNC_GPIO89 (MTK_PIN_NO(89) | 0)
+#define PINMUX_GPIO89__FUNC_DSI_TE (MTK_PIN_NO(89) | 1)
+#define PINMUX_GPIO89__FUNC_DSI1_TE (MTK_PIN_NO(89) | 2)
+#define PINMUX_GPIO89__FUNC_DBG_MON_B30 (MTK_PIN_NO(89) | 7)
+
+#define PINMUX_GPIO90__FUNC_GPIO90 (MTK_PIN_NO(90) | 0)
+#define PINMUX_GPIO90__FUNC_LCM_RST (MTK_PIN_NO(90) | 1)
+#define PINMUX_GPIO90__FUNC_LCM1_RST (MTK_PIN_NO(90) | 2)
+#define PINMUX_GPIO90__FUNC_DBG_MON_B31 (MTK_PIN_NO(90) | 7)
+
+#define PINMUX_GPIO91__FUNC_GPIO91 (MTK_PIN_NO(91) | 0)
+#define PINMUX_GPIO91__FUNC_CMFLASH2 (MTK_PIN_NO(91) | 1)
+#define PINMUX_GPIO91__FUNC_SF_D0 (MTK_PIN_NO(91) | 2)
+#define PINMUX_GPIO91__FUNC_SRCLKENAI1 (MTK_PIN_NO(91) | 3)
+#define PINMUX_GPIO91__FUNC_KPCOL2 (MTK_PIN_NO(91) | 5)
+#define PINMUX_GPIO91__FUNC_TP_GPIO11_AO (MTK_PIN_NO(91) | 6)
+
+#define PINMUX_GPIO92__FUNC_GPIO92 (MTK_PIN_NO(92) | 0)
+#define PINMUX_GPIO92__FUNC_CMFLASH3 (MTK_PIN_NO(92) | 1)
+#define PINMUX_GPIO92__FUNC_SF_D1 (MTK_PIN_NO(92) | 2)
+#define PINMUX_GPIO92__FUNC_DISP_PWM1 (MTK_PIN_NO(92) | 4)
+#define PINMUX_GPIO92__FUNC_TP_GPIO12_AO (MTK_PIN_NO(92) | 6)
+
+#define PINMUX_GPIO93__FUNC_GPIO93 (MTK_PIN_NO(93) | 0)
+#define PINMUX_GPIO93__FUNC_CMFLASH1 (MTK_PIN_NO(93) | 1)
+#define PINMUX_GPIO93__FUNC_SF_D2 (MTK_PIN_NO(93) | 2)
+#define PINMUX_GPIO93__FUNC_SRCLKENAI0 (MTK_PIN_NO(93) | 3)
+#define PINMUX_GPIO93__FUNC_KPROW2 (MTK_PIN_NO(93) | 5)
+#define PINMUX_GPIO93__FUNC_TP_GPIO13_AO (MTK_PIN_NO(93) | 6)
+
+#define PINMUX_GPIO94__FUNC_GPIO94 (MTK_PIN_NO(94) | 0)
+#define PINMUX_GPIO94__FUNC_I2S_MCK1 (MTK_PIN_NO(94) | 1)
+#define PINMUX_GPIO94__FUNC_SF_D3 (MTK_PIN_NO(94) | 2)
+#define PINMUX_GPIO94__FUNC_MD32_0_GPIO0 (MTK_PIN_NO(94) | 4)
+#define PINMUX_GPIO94__FUNC_CLKM0_A (MTK_PIN_NO(94) | 5)
+#define PINMUX_GPIO94__FUNC_TP_GPIO14_AO (MTK_PIN_NO(94) | 6)
+#define PINMUX_GPIO94__FUNC_DBG_MON_B18 (MTK_PIN_NO(94) | 7)
+
+#define PINMUX_GPIO95__FUNC_GPIO95 (MTK_PIN_NO(95) | 0)
+#define PINMUX_GPIO95__FUNC_I2SIN1_BCK (MTK_PIN_NO(95) | 1)
+#define PINMUX_GPIO95__FUNC_I2SIN4_BCK (MTK_PIN_NO(95) | 2)
+#define PINMUX_GPIO95__FUNC_SPI6_A_CLK (MTK_PIN_NO(95) | 3)
+#define PINMUX_GPIO95__FUNC_MD32_1_GPIO0 (MTK_PIN_NO(95) | 4)
+#define PINMUX_GPIO95__FUNC_CLKM1_A (MTK_PIN_NO(95) | 5)
+#define PINMUX_GPIO95__FUNC_TP_GPIO15_AO (MTK_PIN_NO(95) | 6)
+#define PINMUX_GPIO95__FUNC_DBG_MON_B19 (MTK_PIN_NO(95) | 7)
+
+#define PINMUX_GPIO96__FUNC_GPIO96 (MTK_PIN_NO(96) | 0)
+#define PINMUX_GPIO96__FUNC_I2SIN1_LRCK (MTK_PIN_NO(96) | 1)
+#define PINMUX_GPIO96__FUNC_I2SIN4_LRCK (MTK_PIN_NO(96) | 2)
+#define PINMUX_GPIO96__FUNC_SPI6_A_CSB (MTK_PIN_NO(96) | 3)
+#define PINMUX_GPIO96__FUNC_MD32_2_GPIO0 (MTK_PIN_NO(96) | 4)
+#define PINMUX_GPIO96__FUNC_CLKM2_A (MTK_PIN_NO(96) | 5)
+#define PINMUX_GPIO96__FUNC_DBG_MON_B20 (MTK_PIN_NO(96) | 7)
+
+#define PINMUX_GPIO97__FUNC_GPIO97 (MTK_PIN_NO(97) | 0)
+#define PINMUX_GPIO97__FUNC_I2SIN1_DI_A (MTK_PIN_NO(97) | 1)
+#define PINMUX_GPIO97__FUNC_I2SIN4_DATA0 (MTK_PIN_NO(97) | 2)
+#define PINMUX_GPIO97__FUNC_SPI6_A_MO (MTK_PIN_NO(97) | 3)
+#define PINMUX_GPIO97__FUNC_MD32_3_GPIO0 (MTK_PIN_NO(97) | 4)
+#define PINMUX_GPIO97__FUNC_CLKM3_A (MTK_PIN_NO(97) | 5)
+#define PINMUX_GPIO97__FUNC_DBG_MON_B21 (MTK_PIN_NO(97) | 7)
+
+#define PINMUX_GPIO98__FUNC_GPIO98 (MTK_PIN_NO(98) | 0)
+#define PINMUX_GPIO98__FUNC_I2SOUT1_DO (MTK_PIN_NO(98) | 1)
+#define PINMUX_GPIO98__FUNC_I2SOUT4_DATA0 (MTK_PIN_NO(98) | 2)
+#define PINMUX_GPIO98__FUNC_SPI6_A_MI (MTK_PIN_NO(98) | 3)
+#define PINMUX_GPIO98__FUNC_DBG_MON_B22 (MTK_PIN_NO(98) | 7)
+
+#define PINMUX_GPIO99__FUNC_GPIO99 (MTK_PIN_NO(99) | 0)
+#define PINMUX_GPIO99__FUNC_SCL0 (MTK_PIN_NO(99) | 1)
+#define PINMUX_GPIO99__FUNC_LCM2_RST (MTK_PIN_NO(99) | 2)
+#define PINMUX_GPIO99__FUNC_AUD_DAC_26M_CLK (MTK_PIN_NO(99) | 3)
+#define PINMUX_GPIO99__FUNC_SPU0_SCL (MTK_PIN_NO(99) | 4)
+#define PINMUX_GPIO99__FUNC_DBG_MON_B24 (MTK_PIN_NO(99) | 7)
+
+#define PINMUX_GPIO100__FUNC_GPIO100 (MTK_PIN_NO(100) | 0)
+#define PINMUX_GPIO100__FUNC_SDA0 (MTK_PIN_NO(100) | 1)
+#define PINMUX_GPIO100__FUNC_DSI2_TE (MTK_PIN_NO(100) | 2)
+#define PINMUX_GPIO100__FUNC_SPU0_SDA (MTK_PIN_NO(100) | 4)
+#define PINMUX_GPIO100__FUNC_DBG_MON_B25 (MTK_PIN_NO(100) | 7)
+
+#define PINMUX_GPIO101__FUNC_GPIO101 (MTK_PIN_NO(101) | 0)
+#define PINMUX_GPIO101__FUNC_SCL10 (MTK_PIN_NO(101) | 1)
+#define PINMUX_GPIO101__FUNC_SF_CS (MTK_PIN_NO(101) | 2)
+#define PINMUX_GPIO101__FUNC_SCP_DMIC1_CLK (MTK_PIN_NO(101) | 3)
+#define PINMUX_GPIO101__FUNC_I2SIN5_DATA2 (MTK_PIN_NO(101) | 4)
+#define PINMUX_GPIO101__FUNC_SCP_SCL_OIS (MTK_PIN_NO(101) | 5)
+#define PINMUX_GPIO101__FUNC_TP_GPIO10_AO (MTK_PIN_NO(101) | 6)
+#define PINMUX_GPIO101__FUNC_DBG_MON_B28 (MTK_PIN_NO(101) | 7)
+
+#define PINMUX_GPIO102__FUNC_GPIO102 (MTK_PIN_NO(102) | 0)
+#define PINMUX_GPIO102__FUNC_SDA10 (MTK_PIN_NO(102) | 1)
+#define PINMUX_GPIO102__FUNC_SF_CK (MTK_PIN_NO(102) | 2)
+#define PINMUX_GPIO102__FUNC_SCP_DMIC1_DAT (MTK_PIN_NO(102) | 3)
+#define PINMUX_GPIO102__FUNC_I2SIN5_DATA3 (MTK_PIN_NO(102) | 4)
+#define PINMUX_GPIO102__FUNC_SCP_SDA_OIS (MTK_PIN_NO(102) | 5)
+#define PINMUX_GPIO102__FUNC_TP_GPIO11_AO (MTK_PIN_NO(102) | 6)
+#define PINMUX_GPIO102__FUNC_DBG_MON_B29 (MTK_PIN_NO(102) | 7)
+
+#define PINMUX_GPIO103__FUNC_GPIO103 (MTK_PIN_NO(103) | 0)
+#define PINMUX_GPIO103__FUNC_DISP_PWM (MTK_PIN_NO(103) | 1)
+#define PINMUX_GPIO103__FUNC_DSI1_TE (MTK_PIN_NO(103) | 2)
+#define PINMUX_GPIO103__FUNC_I2S_MCK0 (MTK_PIN_NO(103) | 5)
+#define PINMUX_GPIO103__FUNC_DBG_MON_B23 (MTK_PIN_NO(103) | 7)
+
+#define PINMUX_GPIO104__FUNC_GPIO104 (MTK_PIN_NO(104) | 0)
+#define PINMUX_GPIO104__FUNC_SCL6 (MTK_PIN_NO(104) | 1)
+#define PINMUX_GPIO104__FUNC_SPU1_SCL (MTK_PIN_NO(104) | 2)
+#define PINMUX_GPIO104__FUNC_AUD_DAC_26M_CLK (MTK_PIN_NO(104) | 3)
+#define PINMUX_GPIO104__FUNC_USB_DRVVBUS_2P (MTK_PIN_NO(104) | 4)
+#define PINMUX_GPIO104__FUNC_I2S_MCK1 (MTK_PIN_NO(104) | 5)
+#define PINMUX_GPIO104__FUNC_IDDIG_2P (MTK_PIN_NO(104) | 6)
+#define PINMUX_GPIO104__FUNC_DBG_MON_B26 (MTK_PIN_NO(104) | 7)
+
+#define PINMUX_GPIO105__FUNC_GPIO105 (MTK_PIN_NO(105) | 0)
+#define PINMUX_GPIO105__FUNC_SDA6 (MTK_PIN_NO(105) | 1)
+#define PINMUX_GPIO105__FUNC_SPU1_SDA (MTK_PIN_NO(105) | 2)
+#define PINMUX_GPIO105__FUNC_DISP_PWM2 (MTK_PIN_NO(105) | 3)
+#define PINMUX_GPIO105__FUNC_VBUSVALID_2P (MTK_PIN_NO(105) | 4)
+#define PINMUX_GPIO105__FUNC_I2S_MCK2 (MTK_PIN_NO(105) | 5)
+#define PINMUX_GPIO105__FUNC_VBUSVALID_3P (MTK_PIN_NO(105) | 6)
+#define PINMUX_GPIO105__FUNC_DBG_MON_B27 (MTK_PIN_NO(105) | 7)
+
+#define PINMUX_GPIO106__FUNC_GPIO106 (MTK_PIN_NO(106) | 0)
+#define PINMUX_GPIO106__FUNC_SCP_SPI3_CK (MTK_PIN_NO(106) | 1)
+#define PINMUX_GPIO106__FUNC_SPI3_B_CLK (MTK_PIN_NO(106) | 2)
+#define PINMUX_GPIO106__FUNC_MD_UTXD0 (MTK_PIN_NO(106) | 3)
+#define PINMUX_GPIO106__FUNC_TP_UTXD1_VLP (MTK_PIN_NO(106) | 4)
+#define PINMUX_GPIO106__FUNC_CONN_BG_GPS_MCU_UART0_TXD (MTK_PIN_NO(106) | 5)
+#define PINMUX_GPIO106__FUNC_TP_GPIO6_AO (MTK_PIN_NO(106) | 6)
+#define PINMUX_GPIO106__FUNC_DBG_MON_B0 (MTK_PIN_NO(106) | 7)
+
+#define PINMUX_GPIO107__FUNC_GPIO107 (MTK_PIN_NO(107) | 0)
+#define PINMUX_GPIO107__FUNC_SCP_SPI3_CS (MTK_PIN_NO(107) | 1)
+#define PINMUX_GPIO107__FUNC_SPI3_B_CSB (MTK_PIN_NO(107) | 2)
+#define PINMUX_GPIO107__FUNC_MD_URXD0 (MTK_PIN_NO(107) | 3)
+#define PINMUX_GPIO107__FUNC_TP_URXD1_VLP (MTK_PIN_NO(107) | 4)
+#define PINMUX_GPIO107__FUNC_CONN_BG_GPS_MCU_UART0_RXD (MTK_PIN_NO(107) | 5)
+#define PINMUX_GPIO107__FUNC_TP_GPIO7_AO (MTK_PIN_NO(107) | 6)
+#define PINMUX_GPIO107__FUNC_DBG_MON_B1 (MTK_PIN_NO(107) | 7)
+
+#define PINMUX_GPIO108__FUNC_GPIO108 (MTK_PIN_NO(108) | 0)
+#define PINMUX_GPIO108__FUNC_SCP_SPI3_MO (MTK_PIN_NO(108) | 1)
+#define PINMUX_GPIO108__FUNC_SPI3_B_MO (MTK_PIN_NO(108) | 2)
+#define PINMUX_GPIO108__FUNC_MD_UTXD1 (MTK_PIN_NO(108) | 3)
+#define PINMUX_GPIO108__FUNC_MD32PCM_UTXD_AO_VLP (MTK_PIN_NO(108) | 4)
+#define PINMUX_GPIO108__FUNC_CONN_BG_GPS_MCU_UART1_TXD (MTK_PIN_NO(108) | 5)
+#define PINMUX_GPIO108__FUNC_TP_GPIO8_AO (MTK_PIN_NO(108) | 6)
+#define PINMUX_GPIO108__FUNC_DBG_MON_B2 (MTK_PIN_NO(108) | 7)
+
+#define PINMUX_GPIO109__FUNC_GPIO109 (MTK_PIN_NO(109) | 0)
+#define PINMUX_GPIO109__FUNC_SCP_SPI3_MI (MTK_PIN_NO(109) | 1)
+#define PINMUX_GPIO109__FUNC_SPI3_B_MI (MTK_PIN_NO(109) | 2)
+#define PINMUX_GPIO109__FUNC_MD_URXD1 (MTK_PIN_NO(109) | 3)
+#define PINMUX_GPIO109__FUNC_MD32PCM_URXD_AO_VLP (MTK_PIN_NO(109) | 4)
+#define PINMUX_GPIO109__FUNC_CONN_BG_GPS_MCU_UART1_RXD (MTK_PIN_NO(109) | 5)
+#define PINMUX_GPIO109__FUNC_TP_GPIO9_AO (MTK_PIN_NO(109) | 6)
+#define PINMUX_GPIO109__FUNC_DBG_MON_B3 (MTK_PIN_NO(109) | 7)
+
+#define PINMUX_GPIO110__FUNC_GPIO110 (MTK_PIN_NO(110) | 0)
+#define PINMUX_GPIO110__FUNC_SPI1_CLK (MTK_PIN_NO(110) | 1)
+#define PINMUX_GPIO110__FUNC_PWM_0 (MTK_PIN_NO(110) | 2)
+#define PINMUX_GPIO110__FUNC_MD_UCTS0 (MTK_PIN_NO(110) | 3)
+#define PINMUX_GPIO110__FUNC_TP_UCTS1_VLP (MTK_PIN_NO(110) | 4)
+#define PINMUX_GPIO110__FUNC_SPU0_GPIO_O (MTK_PIN_NO(110) | 6)
+#define PINMUX_GPIO110__FUNC_DBG_MON_B4 (MTK_PIN_NO(110) | 7)
+
+#define PINMUX_GPIO111__FUNC_GPIO111 (MTK_PIN_NO(111) | 0)
+#define PINMUX_GPIO111__FUNC_SPI1_CSB (MTK_PIN_NO(111) | 1)
+#define PINMUX_GPIO111__FUNC_PWM_1 (MTK_PIN_NO(111) | 2)
+#define PINMUX_GPIO111__FUNC_MD_URTS0 (MTK_PIN_NO(111) | 3)
+#define PINMUX_GPIO111__FUNC_TP_URTS1_VLP (MTK_PIN_NO(111) | 4)
+#define PINMUX_GPIO111__FUNC_SPU0_GPIO_I (MTK_PIN_NO(111) | 6)
+#define PINMUX_GPIO111__FUNC_DBG_MON_B5 (MTK_PIN_NO(111) | 7)
+
+#define PINMUX_GPIO112__FUNC_GPIO112 (MTK_PIN_NO(112) | 0)
+#define PINMUX_GPIO112__FUNC_SPI1_MO (MTK_PIN_NO(112) | 1)
+#define PINMUX_GPIO112__FUNC_PWM_2 (MTK_PIN_NO(112) | 2)
+#define PINMUX_GPIO112__FUNC_MD_UCTS1 (MTK_PIN_NO(112) | 3)
+#define PINMUX_GPIO112__FUNC_SPU1_GPIO_O (MTK_PIN_NO(112) | 6)
+#define PINMUX_GPIO112__FUNC_DBG_MON_B6 (MTK_PIN_NO(112) | 7)
+
+#define PINMUX_GPIO113__FUNC_GPIO113 (MTK_PIN_NO(113) | 0)
+#define PINMUX_GPIO113__FUNC_SPI1_MI (MTK_PIN_NO(113) | 1)
+#define PINMUX_GPIO113__FUNC_PWM_3 (MTK_PIN_NO(113) | 2)
+#define PINMUX_GPIO113__FUNC_MD_URTS1 (MTK_PIN_NO(113) | 3)
+#define PINMUX_GPIO113__FUNC_SPU1_GPIO_I (MTK_PIN_NO(113) | 6)
+#define PINMUX_GPIO113__FUNC_DBG_MON_B7 (MTK_PIN_NO(113) | 7)
+
+#define PINMUX_GPIO114__FUNC_GPIO114 (MTK_PIN_NO(114) | 0)
+#define PINMUX_GPIO114__FUNC_SPI0_SPU_CLK (MTK_PIN_NO(114) | 1)
+#define PINMUX_GPIO114__FUNC_SPI4_A_CLK (MTK_PIN_NO(114) | 2)
+#define PINMUX_GPIO114__FUNC_CONN_BG_GPS_MCU_DBG_UART_TXD (MTK_PIN_NO(114) | 5)
+#define PINMUX_GPIO114__FUNC_DBG_MON_B8 (MTK_PIN_NO(114) | 7)
+
+#define PINMUX_GPIO115__FUNC_GPIO115 (MTK_PIN_NO(115) | 0)
+#define PINMUX_GPIO115__FUNC_SPI0_SPU_CSB (MTK_PIN_NO(115) | 1)
+#define PINMUX_GPIO115__FUNC_SPI4_A_CSB (MTK_PIN_NO(115) | 2)
+#define PINMUX_GPIO115__FUNC_DBG_MON_B9 (MTK_PIN_NO(115) | 7)
+
+#define PINMUX_GPIO116__FUNC_GPIO116 (MTK_PIN_NO(116) | 0)
+#define PINMUX_GPIO116__FUNC_SPI0_SPU_MO (MTK_PIN_NO(116) | 1)
+#define PINMUX_GPIO116__FUNC_SPI4_A_MO (MTK_PIN_NO(116) | 2)
+#define PINMUX_GPIO116__FUNC_LCM1_RST (MTK_PIN_NO(116) | 3)
+#define PINMUX_GPIO116__FUNC_DBG_MON_B10 (MTK_PIN_NO(116) | 7)
+
+#define PINMUX_GPIO117__FUNC_GPIO117 (MTK_PIN_NO(117) | 0)
+#define PINMUX_GPIO117__FUNC_SPI0_SPU_MI (MTK_PIN_NO(117) | 1)
+#define PINMUX_GPIO117__FUNC_SPI4_A_MI (MTK_PIN_NO(117) | 2)
+#define PINMUX_GPIO117__FUNC_DSI1_TE (MTK_PIN_NO(117) | 3)
+#define PINMUX_GPIO117__FUNC_DBG_MON_B11 (MTK_PIN_NO(117) | 7)
+
+#define PINMUX_GPIO118__FUNC_GPIO118 (MTK_PIN_NO(118) | 0)
+#define PINMUX_GPIO118__FUNC_SPI5_CLK (MTK_PIN_NO(118) | 1)
+#define PINMUX_GPIO118__FUNC_USB_DRVVBUS (MTK_PIN_NO(118) | 2)
+#define PINMUX_GPIO118__FUNC_DP_TX_HPD (MTK_PIN_NO(118) | 3)
+#define PINMUX_GPIO118__FUNC_AD_ILDO_DTEST0 (MTK_PIN_NO(118) | 4)
+
+#define PINMUX_GPIO119__FUNC_GPIO119 (MTK_PIN_NO(119) | 0)
+#define PINMUX_GPIO119__FUNC_SPI5_CSB (MTK_PIN_NO(119) | 1)
+#define PINMUX_GPIO119__FUNC_VBUSVALID (MTK_PIN_NO(119) | 2)
+#define PINMUX_GPIO119__FUNC_DP_OC_EN (MTK_PIN_NO(119) | 3)
+#define PINMUX_GPIO119__FUNC_AD_ILDO_DTEST1 (MTK_PIN_NO(119) | 4)
+
+#define PINMUX_GPIO120__FUNC_GPIO120 (MTK_PIN_NO(120) | 0)
+#define PINMUX_GPIO120__FUNC_SPI5_MO (MTK_PIN_NO(120) | 1)
+#define PINMUX_GPIO120__FUNC_LCM2_RST (MTK_PIN_NO(120) | 2)
+#define PINMUX_GPIO120__FUNC_DP_RAUX_SBU1 (MTK_PIN_NO(120) | 3)
+#define PINMUX_GPIO120__FUNC_AD_ILDO_DTEST2 (MTK_PIN_NO(120) | 4)
+#define PINMUX_GPIO120__FUNC_IDDIG_3P (MTK_PIN_NO(120) | 6)
+
+#define PINMUX_GPIO121__FUNC_GPIO121 (MTK_PIN_NO(121) | 0)
+#define PINMUX_GPIO121__FUNC_SPI5_MI (MTK_PIN_NO(121) | 1)
+#define PINMUX_GPIO121__FUNC_DSI2_TE (MTK_PIN_NO(121) | 2)
+#define PINMUX_GPIO121__FUNC_DP_RAUX_SBU2 (MTK_PIN_NO(121) | 3)
+#define PINMUX_GPIO121__FUNC_AD_ILDO_DTEST3 (MTK_PIN_NO(121) | 4)
+#define PINMUX_GPIO121__FUNC_USB_DRVVBUS_3P (MTK_PIN_NO(121) | 6)
+#define PINMUX_GPIO121__FUNC_DBG_MON_B17 (MTK_PIN_NO(121) | 7)
+
+#define PINMUX_GPIO122__FUNC_GPIO122 (MTK_PIN_NO(122) | 0)
+#define PINMUX_GPIO122__FUNC_AP_GOOD (MTK_PIN_NO(122) | 1)
+#define PINMUX_GPIO122__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(122) | 2)
+
+#define PINMUX_GPIO123__FUNC_GPIO123 (MTK_PIN_NO(123) | 0)
+#define PINMUX_GPIO123__FUNC_SCL3 (MTK_PIN_NO(123) | 1)
+#define PINMUX_GPIO123__FUNC_I2SIN2_LRCK (MTK_PIN_NO(123) | 5)
+#define PINMUX_GPIO123__FUNC_TP_UTXD_MD_VCORE (MTK_PIN_NO(123) | 6)
+
+#define PINMUX_GPIO124__FUNC_GPIO124 (MTK_PIN_NO(124) | 0)
+#define PINMUX_GPIO124__FUNC_SDA3 (MTK_PIN_NO(124) | 1)
+#define PINMUX_GPIO124__FUNC_TP_URXD_MD_VCORE (MTK_PIN_NO(124) | 6)
+
+#define PINMUX_GPIO125__FUNC_GPIO125 (MTK_PIN_NO(125) | 0)
+#define PINMUX_GPIO125__FUNC_MSDC1_CLK (MTK_PIN_NO(125) | 1)
+#define PINMUX_GPIO125__FUNC_MD1_SIM2_SCLK (MTK_PIN_NO(125) | 2)
+#define PINMUX_GPIO125__FUNC_HFRP_JTAG0_TCK (MTK_PIN_NO(125) | 3)
+#define PINMUX_GPIO125__FUNC_UDI_TCK (MTK_PIN_NO(125) | 4)
+#define PINMUX_GPIO125__FUNC_CONN_BGF_DSP_L1_JCK (MTK_PIN_NO(125) | 5)
+#define PINMUX_GPIO125__FUNC_SCP_JTAG_LITTLE_TCK_VLP (MTK_PIN_NO(125) | 6)
+#define PINMUX_GPIO125__FUNC_JTCK2_SEL1 (MTK_PIN_NO(125) | 7)
+
+#define PINMUX_GPIO126__FUNC_GPIO126 (MTK_PIN_NO(126) | 0)
+#define PINMUX_GPIO126__FUNC_MSDC1_CMD (MTK_PIN_NO(126) | 1)
+#define PINMUX_GPIO126__FUNC_HFRP_JTAG0_TMS (MTK_PIN_NO(126) | 3)
+#define PINMUX_GPIO126__FUNC_UDI_TMS (MTK_PIN_NO(126) | 4)
+#define PINMUX_GPIO126__FUNC_CONN_BGF_DSP_L1_JMS (MTK_PIN_NO(126) | 5)
+#define PINMUX_GPIO126__FUNC_SCP_JTAG_LITTLE_TMS_VLP (MTK_PIN_NO(126) | 6)
+#define PINMUX_GPIO126__FUNC_JTMS2_SEL1 (MTK_PIN_NO(126) | 7)
+
+#define PINMUX_GPIO127__FUNC_GPIO127 (MTK_PIN_NO(127) | 0)
+#define PINMUX_GPIO127__FUNC_MSDC1_DAT0 (MTK_PIN_NO(127) | 1)
+#define PINMUX_GPIO127__FUNC_MD1_SIM2_SRST (MTK_PIN_NO(127) | 2)
+#define PINMUX_GPIO127__FUNC_HFRP_JTAG0_TDI (MTK_PIN_NO(127) | 3)
+#define PINMUX_GPIO127__FUNC_UDI_TDI_0 (MTK_PIN_NO(127) | 4)
+#define PINMUX_GPIO127__FUNC_CONN_BGF_DSP_L1_JDI (MTK_PIN_NO(127) | 5)
+#define PINMUX_GPIO127__FUNC_SCP_JTAG_LITTLE_TDI_VLP (MTK_PIN_NO(127) | 6)
+#define PINMUX_GPIO127__FUNC_JTDI2_SEL1 (MTK_PIN_NO(127) | 7)
+
+#define PINMUX_GPIO128__FUNC_GPIO128 (MTK_PIN_NO(128) | 0)
+#define PINMUX_GPIO128__FUNC_MSDC1_DAT1 (MTK_PIN_NO(128) | 1)
+#define PINMUX_GPIO128__FUNC_MD1_SIM2_SIO (MTK_PIN_NO(128) | 2)
+#define PINMUX_GPIO128__FUNC_HFRP_JTAG0_TDO (MTK_PIN_NO(128) | 3)
+#define PINMUX_GPIO128__FUNC_UDI_TDO_0 (MTK_PIN_NO(128) | 4)
+#define PINMUX_GPIO128__FUNC_CONN_BGF_DSP_L1_JDO (MTK_PIN_NO(128) | 5)
+#define PINMUX_GPIO128__FUNC_SCP_JTAG_LITTLE_TDO_VLP (MTK_PIN_NO(128) | 6)
+#define PINMUX_GPIO128__FUNC_JTDO2_SEL1 (MTK_PIN_NO(128) | 7)
+
+#define PINMUX_GPIO129__FUNC_GPIO129 (MTK_PIN_NO(129) | 0)
+#define PINMUX_GPIO129__FUNC_MSDC1_DAT2 (MTK_PIN_NO(129) | 1)
+#define PINMUX_GPIO129__FUNC_DSI2_HSYNC (MTK_PIN_NO(129) | 2)
+#define PINMUX_GPIO129__FUNC_HFRP_JTAG0_TRSTN (MTK_PIN_NO(129) | 3)
+#define PINMUX_GPIO129__FUNC_UDI_NTRST (MTK_PIN_NO(129) | 4)
+#define PINMUX_GPIO129__FUNC_SCP_JTAG_LITTLE_TRSTN_VLP (MTK_PIN_NO(129) | 6)
+#define PINMUX_GPIO129__FUNC_JTRSTN2_SEL1 (MTK_PIN_NO(129) | 7)
+
+#define PINMUX_GPIO130__FUNC_GPIO130 (MTK_PIN_NO(130) | 0)
+#define PINMUX_GPIO130__FUNC_MSDC1_DAT3 (MTK_PIN_NO(130) | 1)
+#define PINMUX_GPIO130__FUNC_DSI3_HSYNC (MTK_PIN_NO(130) | 2)
+#define PINMUX_GPIO130__FUNC_CONN_BGF_DSP_L1_JINTP (MTK_PIN_NO(130) | 5)
+
+#define PINMUX_GPIO131__FUNC_GPIO131 (MTK_PIN_NO(131) | 0)
+#define PINMUX_GPIO131__FUNC_MD1_SIM2_SCLK (MTK_PIN_NO(131) | 1)
+#define PINMUX_GPIO131__FUNC_MD1_SIM1_SCLK (MTK_PIN_NO(131) | 2)
+#define PINMUX_GPIO131__FUNC_MCUPM_JTAG_TDI (MTK_PIN_NO(131) | 3)
+#define PINMUX_GPIO131__FUNC_CLKM0_A (MTK_PIN_NO(131) | 4)
+#define PINMUX_GPIO131__FUNC_CONN_BGF_DSP_L5_JDI (MTK_PIN_NO(131) | 5)
+#define PINMUX_GPIO131__FUNC_TSFDC_SCK (MTK_PIN_NO(131) | 6)
+#define PINMUX_GPIO131__FUNC_SCP_JTAG0_TDI_VCORE (MTK_PIN_NO(131) | 7)
+
+#define PINMUX_GPIO132__FUNC_GPIO132 (MTK_PIN_NO(132) | 0)
+#define PINMUX_GPIO132__FUNC_MD1_SIM2_SRST (MTK_PIN_NO(132) | 1)
+#define PINMUX_GPIO132__FUNC_MD1_SIM1_SRST (MTK_PIN_NO(132) | 2)
+#define PINMUX_GPIO132__FUNC_MCUPM_JTAG_TMS (MTK_PIN_NO(132) | 3)
+#define PINMUX_GPIO132__FUNC_CLKM1_B (MTK_PIN_NO(132) | 4)
+#define PINMUX_GPIO132__FUNC_CONN_BGF_DSP_L5_JMS (MTK_PIN_NO(132) | 5)
+#define PINMUX_GPIO132__FUNC_TSFDC_SDI (MTK_PIN_NO(132) | 6)
+#define PINMUX_GPIO132__FUNC_SCP_JTAG0_TMS_VCORE (MTK_PIN_NO(132) | 7)
+
+#define PINMUX_GPIO133__FUNC_GPIO133 (MTK_PIN_NO(133) | 0)
+#define PINMUX_GPIO133__FUNC_MD1_SIM2_SIO (MTK_PIN_NO(133) | 1)
+#define PINMUX_GPIO133__FUNC_MD1_SIM1_SIO (MTK_PIN_NO(133) | 2)
+#define PINMUX_GPIO133__FUNC_MCUPM_JTAG_TDO (MTK_PIN_NO(133) | 3)
+#define PINMUX_GPIO133__FUNC_CONN_BGF_DSP_L5_JDO (MTK_PIN_NO(133) | 5)
+#define PINMUX_GPIO133__FUNC_TSFDC_SCF (MTK_PIN_NO(133) | 6)
+#define PINMUX_GPIO133__FUNC_SCP_JTAG0_TDO_VCORE (MTK_PIN_NO(133) | 7)
+
+#define PINMUX_GPIO134__FUNC_GPIO134 (MTK_PIN_NO(134) | 0)
+#define PINMUX_GPIO134__FUNC_MD1_SIM1_SCLK (MTK_PIN_NO(134) | 1)
+#define PINMUX_GPIO134__FUNC_MD1_SIM2_SCLK (MTK_PIN_NO(134) | 2)
+#define PINMUX_GPIO134__FUNC_TSFDC_26M (MTK_PIN_NO(134) | 6)
+
+#define PINMUX_GPIO135__FUNC_GPIO135 (MTK_PIN_NO(135) | 0)
+#define PINMUX_GPIO135__FUNC_MD1_SIM1_SRST (MTK_PIN_NO(135) | 1)
+#define PINMUX_GPIO135__FUNC_MD1_SIM2_SRST (MTK_PIN_NO(135) | 2)
+#define PINMUX_GPIO135__FUNC_MCUPM_JTAG_TCK (MTK_PIN_NO(135) | 3)
+#define PINMUX_GPIO135__FUNC_CONN_BGF_DSP_L5_JCK (MTK_PIN_NO(135) | 5)
+#define PINMUX_GPIO135__FUNC_TSFDC_SDO (MTK_PIN_NO(135) | 6)
+#define PINMUX_GPIO135__FUNC_SCP_JTAG0_TCK_VCORE (MTK_PIN_NO(135) | 7)
+
+#define PINMUX_GPIO136__FUNC_GPIO136 (MTK_PIN_NO(136) | 0)
+#define PINMUX_GPIO136__FUNC_MD1_SIM1_SIO (MTK_PIN_NO(136) | 1)
+#define PINMUX_GPIO136__FUNC_MD1_SIM2_SIO (MTK_PIN_NO(136) | 2)
+#define PINMUX_GPIO136__FUNC_MCUPM_JTAG_TRSTN (MTK_PIN_NO(136) | 3)
+#define PINMUX_GPIO136__FUNC_CONN_BGF_DSP_L5_JINTP (MTK_PIN_NO(136) | 5)
+#define PINMUX_GPIO136__FUNC_TSFDC_FOUT (MTK_PIN_NO(136) | 6)
+#define PINMUX_GPIO136__FUNC_SCP_JTAG0_TRSTN_VCORE (MTK_PIN_NO(136) | 7)
+
+#define PINMUX_GPIO137__FUNC_GPIO137 (MTK_PIN_NO(137) | 0)
+#define PINMUX_GPIO137__FUNC_MIPI0_D_SCLK (MTK_PIN_NO(137) | 1)
+#define PINMUX_GPIO137__FUNC_BPI_BUS16 (MTK_PIN_NO(137) | 2)
+#define PINMUX_GPIO137__FUNC_EXT_FRAME_SYNC (MTK_PIN_NO(137) | 4)
+#define PINMUX_GPIO137__FUNC_SPM_JTAG_TRSTN_VCORE (MTK_PIN_NO(137) | 6)
+#define PINMUX_GPIO137__FUNC_DBG_MON_A0 (MTK_PIN_NO(137) | 7)
+
+#define PINMUX_GPIO138__FUNC_GPIO138 (MTK_PIN_NO(138) | 0)
+#define PINMUX_GPIO138__FUNC_MIPI0_D_SDATA (MTK_PIN_NO(138) | 1)
+#define PINMUX_GPIO138__FUNC_BPI_BUS17 (MTK_PIN_NO(138) | 2)
+#define PINMUX_GPIO138__FUNC_PCM0_LRCK (MTK_PIN_NO(138) | 4)
+#define PINMUX_GPIO138__FUNC_SPM_JTAG_TCK_VCORE (MTK_PIN_NO(138) | 6)
+#define PINMUX_GPIO138__FUNC_DBG_MON_A1 (MTK_PIN_NO(138) | 7)
+
+#define PINMUX_GPIO139__FUNC_GPIO139 (MTK_PIN_NO(139) | 0)
+#define PINMUX_GPIO139__FUNC_MIPI1_D_SCLK (MTK_PIN_NO(139) | 1)
+#define PINMUX_GPIO139__FUNC_BPI_BUS18 (MTK_PIN_NO(139) | 2)
+#define PINMUX_GPIO139__FUNC_MD_GPS_BLANK (MTK_PIN_NO(139) | 4)
+#define PINMUX_GPIO139__FUNC_SPM_JTAG_TMS_VCORE (MTK_PIN_NO(139) | 6)
+#define PINMUX_GPIO139__FUNC_DBG_MON_A2 (MTK_PIN_NO(139) | 7)
+
+#define PINMUX_GPIO140__FUNC_GPIO140 (MTK_PIN_NO(140) | 0)
+#define PINMUX_GPIO140__FUNC_MIPI1_D_SDATA (MTK_PIN_NO(140) | 1)
+#define PINMUX_GPIO140__FUNC_BPI_BUS19 (MTK_PIN_NO(140) | 2)
+#define PINMUX_GPIO140__FUNC_MD_URXD1_CONN (MTK_PIN_NO(140) | 4)
+#define PINMUX_GPIO140__FUNC_SPM_JTAG_TDO_VCORE (MTK_PIN_NO(140) | 6)
+#define PINMUX_GPIO140__FUNC_DBG_MON_A3 (MTK_PIN_NO(140) | 7)
+
+#define PINMUX_GPIO141__FUNC_GPIO141 (MTK_PIN_NO(141) | 0)
+#define PINMUX_GPIO141__FUNC_MIPI2_D_SCLK (MTK_PIN_NO(141) | 1)
+#define PINMUX_GPIO141__FUNC_BPI_BUS20 (MTK_PIN_NO(141) | 2)
+#define PINMUX_GPIO141__FUNC_MD_UTXD1_CONN (MTK_PIN_NO(141) | 4)
+#define PINMUX_GPIO141__FUNC_SPM_JTAG_TDI_VCORE (MTK_PIN_NO(141) | 6)
+#define PINMUX_GPIO141__FUNC_DBG_MON_A4 (MTK_PIN_NO(141) | 7)
+
+#define PINMUX_GPIO142__FUNC_GPIO142 (MTK_PIN_NO(142) | 0)
+#define PINMUX_GPIO142__FUNC_MIPI2_D_SDATA (MTK_PIN_NO(142) | 1)
+#define PINMUX_GPIO142__FUNC_BPI_BUS21 (MTK_PIN_NO(142) | 2)
+#define PINMUX_GPIO142__FUNC_SSPM_JTAG_TRSTN_VCORE (MTK_PIN_NO(142) | 6)
+#define PINMUX_GPIO142__FUNC_DBG_MON_A5 (MTK_PIN_NO(142) | 7)
+
+#define PINMUX_GPIO143__FUNC_GPIO143 (MTK_PIN_NO(143) | 0)
+#define PINMUX_GPIO143__FUNC_MIPI3_D_SCLK (MTK_PIN_NO(143) | 1)
+#define PINMUX_GPIO143__FUNC_BPI_BUS22 (MTK_PIN_NO(143) | 2)
+#define PINMUX_GPIO143__FUNC_TP_UTXD_GNSS_VLP (MTK_PIN_NO(143) | 4)
+#define PINMUX_GPIO143__FUNC_MD_UTXD1_CONN (MTK_PIN_NO(143) | 5)
+#define PINMUX_GPIO143__FUNC_SSPM_JTAG_TCK_VCORE (MTK_PIN_NO(143) | 6)
+
+#define PINMUX_GPIO144__FUNC_GPIO144 (MTK_PIN_NO(144) | 0)
+#define PINMUX_GPIO144__FUNC_MIPI3_D_SDATA (MTK_PIN_NO(144) | 1)
+#define PINMUX_GPIO144__FUNC_BPI_BUS23 (MTK_PIN_NO(144) | 2)
+#define PINMUX_GPIO144__FUNC_TP_URXD_GNSS_VLP (MTK_PIN_NO(144) | 4)
+#define PINMUX_GPIO144__FUNC_MD_URXD1_CONN (MTK_PIN_NO(144) | 5)
+#define PINMUX_GPIO144__FUNC_SSPM_JTAG_TMS_VCORE (MTK_PIN_NO(144) | 6)
+
+#define PINMUX_GPIO145__FUNC_GPIO145 (MTK_PIN_NO(145) | 0)
+#define PINMUX_GPIO145__FUNC_BPI_BUS0 (MTK_PIN_NO(145) | 1)
+#define PINMUX_GPIO145__FUNC_PCIE_WAKEN_1P (MTK_PIN_NO(145) | 4)
+#define PINMUX_GPIO145__FUNC_SSPM_JTAG_TDO_VCORE (MTK_PIN_NO(145) | 6)
+#define PINMUX_GPIO145__FUNC_DBG_MON_A10 (MTK_PIN_NO(145) | 7)
+
+#define PINMUX_GPIO146__FUNC_GPIO146 (MTK_PIN_NO(146) | 0)
+#define PINMUX_GPIO146__FUNC_BPI_BUS1 (MTK_PIN_NO(146) | 1)
+#define PINMUX_GPIO146__FUNC_PCIE_PERSTN_1P (MTK_PIN_NO(146) | 4)
+#define PINMUX_GPIO146__FUNC_SSPM_JTAG_TDI_VCORE (MTK_PIN_NO(146) | 6)
+#define PINMUX_GPIO146__FUNC_DBG_MON_A11 (MTK_PIN_NO(146) | 7)
+
+#define PINMUX_GPIO147__FUNC_GPIO147 (MTK_PIN_NO(147) | 0)
+#define PINMUX_GPIO147__FUNC_BPI_BUS2 (MTK_PIN_NO(147) | 1)
+#define PINMUX_GPIO147__FUNC_AUD_DAC_26M_CLK (MTK_PIN_NO(147) | 2)
+#define PINMUX_GPIO147__FUNC_PCIE_CLKREQN_1P (MTK_PIN_NO(147) | 4)
+#define PINMUX_GPIO147__FUNC_SCP_JTAG_LITTLE_TRSTN_VCORE (MTK_PIN_NO(147) | 6)
+#define PINMUX_GPIO147__FUNC_DBG_MON_A12 (MTK_PIN_NO(147) | 7)
+
+#define PINMUX_GPIO148__FUNC_GPIO148 (MTK_PIN_NO(148) | 0)
+#define PINMUX_GPIO148__FUNC_BPI_BUS3 (MTK_PIN_NO(148) | 1)
+#define PINMUX_GPIO148__FUNC_AUD_DAC_26M_CLK (MTK_PIN_NO(148) | 2)
+#define PINMUX_GPIO148__FUNC_TP_UTXD_MD_VLP (MTK_PIN_NO(148) | 4)
+#define PINMUX_GPIO148__FUNC_TP_GPIO0_AO (MTK_PIN_NO(148) | 5)
+#define PINMUX_GPIO148__FUNC_SCP_JTAG_LITTLE_TCK_VCORE (MTK_PIN_NO(148) | 6)
+#define PINMUX_GPIO148__FUNC_DBG_MON_A13 (MTK_PIN_NO(148) | 7)
+
+#define PINMUX_GPIO149__FUNC_GPIO149 (MTK_PIN_NO(149) | 0)
+#define PINMUX_GPIO149__FUNC_BPI_BUS4 (MTK_PIN_NO(149) | 1)
+#define PINMUX_GPIO149__FUNC_EXT_FRAME_SYNC (MTK_PIN_NO(149) | 2)
+#define PINMUX_GPIO149__FUNC_TP_URXD_MD_VLP (MTK_PIN_NO(149) | 4)
+#define PINMUX_GPIO149__FUNC_TP_GPIO1_AO (MTK_PIN_NO(149) | 5)
+#define PINMUX_GPIO149__FUNC_SCP_JTAG_LITTLE_TMS_VCORE (MTK_PIN_NO(149) | 6)
+#define PINMUX_GPIO149__FUNC_DBG_MON_A14 (MTK_PIN_NO(149) | 7)
+
+#define PINMUX_GPIO150__FUNC_GPIO150 (MTK_PIN_NO(150) | 0)
+#define PINMUX_GPIO150__FUNC_BPI_BUS5 (MTK_PIN_NO(150) | 1)
+#define PINMUX_GPIO150__FUNC_GPS_PPS0 (MTK_PIN_NO(150) | 2)
+#define PINMUX_GPIO150__FUNC_TP_GPIO2_AO (MTK_PIN_NO(150) | 5)
+#define PINMUX_GPIO150__FUNC_SCP_JTAG_LITTLE_TDO_VCORE (MTK_PIN_NO(150) | 6)
+#define PINMUX_GPIO150__FUNC_DBG_MON_A15 (MTK_PIN_NO(150) | 7)
+
+#define PINMUX_GPIO151__FUNC_GPIO151 (MTK_PIN_NO(151) | 0)
+#define PINMUX_GPIO151__FUNC_BPI_BUS6 (MTK_PIN_NO(151) | 1)
+#define PINMUX_GPIO151__FUNC_GPS_PPS1 (MTK_PIN_NO(151) | 2)
+#define PINMUX_GPIO151__FUNC_TP_GPIO3_AO (MTK_PIN_NO(151) | 5)
+#define PINMUX_GPIO151__FUNC_SCP_JTAG_LITTLE_TDI_VCORE (MTK_PIN_NO(151) | 6)
+
+#define PINMUX_GPIO152__FUNC_GPIO152 (MTK_PIN_NO(152) | 0)
+#define PINMUX_GPIO152__FUNC_BPI_BUS7 (MTK_PIN_NO(152) | 1)
+#define PINMUX_GPIO152__FUNC_EDP_TX_HPD (MTK_PIN_NO(152) | 2)
+#define PINMUX_GPIO152__FUNC_AGPS_SYNC (MTK_PIN_NO(152) | 5)
+#define PINMUX_GPIO152__FUNC_SSPM_UTXD_AO_VCORE (MTK_PIN_NO(152) | 6)
+
+#define PINMUX_GPIO153__FUNC_GPIO153 (MTK_PIN_NO(153) | 0)
+#define PINMUX_GPIO153__FUNC_MD_UCNT_A_TGL (MTK_PIN_NO(153) | 1)
+#define PINMUX_GPIO153__FUNC_TP_URTS1_VCORE (MTK_PIN_NO(153) | 6)
+#define PINMUX_GPIO153__FUNC_DBG_MON_A8 (MTK_PIN_NO(153) | 7)
+
+#define PINMUX_GPIO154__FUNC_GPIO154 (MTK_PIN_NO(154) | 0)
+#define PINMUX_GPIO154__FUNC_DIGRF_IRQ (MTK_PIN_NO(154) | 1)
+#define PINMUX_GPIO154__FUNC_TP_UCTS1_VCORE (MTK_PIN_NO(154) | 6)
+#define PINMUX_GPIO154__FUNC_DBG_MON_A9 (MTK_PIN_NO(154) | 7)
+
+#define PINMUX_GPIO155__FUNC_GPIO155 (MTK_PIN_NO(155) | 0)
+#define PINMUX_GPIO155__FUNC_MIPI_M_SCLK (MTK_PIN_NO(155) | 1)
+#define PINMUX_GPIO155__FUNC_UCTS2 (MTK_PIN_NO(155) | 4)
+#define PINMUX_GPIO155__FUNC_TP_UTXD_CONSYS_VCORE (MTK_PIN_NO(155) | 6)
+#define PINMUX_GPIO155__FUNC_DBG_MON_A6 (MTK_PIN_NO(155) | 7)
+
+#define PINMUX_GPIO156__FUNC_GPIO156 (MTK_PIN_NO(156) | 0)
+#define PINMUX_GPIO156__FUNC_MIPI_M_SDATA (MTK_PIN_NO(156) | 1)
+#define PINMUX_GPIO156__FUNC_URTS2 (MTK_PIN_NO(156) | 4)
+#define PINMUX_GPIO156__FUNC_TP_URXD_CONSYS_VCORE (MTK_PIN_NO(156) | 6)
+#define PINMUX_GPIO156__FUNC_DBG_MON_A7 (MTK_PIN_NO(156) | 7)
+
+#define PINMUX_GPIO157__FUNC_GPIO157 (MTK_PIN_NO(157) | 0)
+#define PINMUX_GPIO157__FUNC_BPI_BUS8 (MTK_PIN_NO(157) | 1)
+#define PINMUX_GPIO157__FUNC_UTXD2 (MTK_PIN_NO(157) | 4)
+#define PINMUX_GPIO157__FUNC_CLKM0_A (MTK_PIN_NO(157) | 5)
+#define PINMUX_GPIO157__FUNC_SSPM_URXD_AO_VCORE (MTK_PIN_NO(157) | 6)
+#define PINMUX_GPIO157__FUNC_DBG_MON_A16 (MTK_PIN_NO(157) | 7)
+
+#define PINMUX_GPIO158__FUNC_GPIO158 (MTK_PIN_NO(158) | 0)
+#define PINMUX_GPIO158__FUNC_BPI_BUS9 (MTK_PIN_NO(158) | 1)
+#define PINMUX_GPIO158__FUNC_URXD2 (MTK_PIN_NO(158) | 4)
+#define PINMUX_GPIO158__FUNC_CLKM1_A (MTK_PIN_NO(158) | 5)
+#define PINMUX_GPIO158__FUNC_TP_UTXD1_VCORE (MTK_PIN_NO(158) | 6)
+
+#define PINMUX_GPIO159__FUNC_GPIO159 (MTK_PIN_NO(159) | 0)
+#define PINMUX_GPIO159__FUNC_BPI_BUS10 (MTK_PIN_NO(159) | 1)
+#define PINMUX_GPIO159__FUNC_MD_INT0 (MTK_PIN_NO(159) | 2)
+#define PINMUX_GPIO159__FUNC_SRCLKENAI1 (MTK_PIN_NO(159) | 3)
+#define PINMUX_GPIO159__FUNC_CLKM2_A (MTK_PIN_NO(159) | 5)
+#define PINMUX_GPIO159__FUNC_TP_URXD1_VCORE (MTK_PIN_NO(159) | 6)
+
+#define PINMUX_GPIO160__FUNC_GPIO160 (MTK_PIN_NO(160) | 0)
+#define PINMUX_GPIO160__FUNC_UTXD0 (MTK_PIN_NO(160) | 1)
+#define PINMUX_GPIO160__FUNC_MD_UTXD1 (MTK_PIN_NO(160) | 2)
+#define PINMUX_GPIO160__FUNC_MBISTREADEN_TRIGGER (MTK_PIN_NO(160) | 5)
+#define PINMUX_GPIO160__FUNC_CONN_BG_GPS_MCU_DBG_UART_TXD (MTK_PIN_NO(160) | 6)
+
+#define PINMUX_GPIO161__FUNC_GPIO161 (MTK_PIN_NO(161) | 0)
+#define PINMUX_GPIO161__FUNC_URXD0 (MTK_PIN_NO(161) | 1)
+#define PINMUX_GPIO161__FUNC_MD_URXD1 (MTK_PIN_NO(161) | 2)
+#define PINMUX_GPIO161__FUNC_MBISTWRITEEN_TRIGGER (MTK_PIN_NO(161) | 5)
+
+#define PINMUX_GPIO162__FUNC_GPIO162 (MTK_PIN_NO(162) | 0)
+#define PINMUX_GPIO162__FUNC_UTXD1 (MTK_PIN_NO(162) | 1)
+#define PINMUX_GPIO162__FUNC_MD_UTXD0 (MTK_PIN_NO(162) | 2)
+#define PINMUX_GPIO162__FUNC_TP_UTXD1_VLP (MTK_PIN_NO(162) | 3)
+#define PINMUX_GPIO162__FUNC_ADSP_UTXD0 (MTK_PIN_NO(162) | 4)
+#define PINMUX_GPIO162__FUNC_SSPM_UTXD_AO_VLP (MTK_PIN_NO(162) | 5)
+#define PINMUX_GPIO162__FUNC_HFRP_UTXD1 (MTK_PIN_NO(162) | 6)
+
+#define PINMUX_GPIO163__FUNC_GPIO163 (MTK_PIN_NO(163) | 0)
+#define PINMUX_GPIO163__FUNC_URXD1 (MTK_PIN_NO(163) | 1)
+#define PINMUX_GPIO163__FUNC_MD_URXD0 (MTK_PIN_NO(163) | 2)
+#define PINMUX_GPIO163__FUNC_TP_URXD1_VLP (MTK_PIN_NO(163) | 3)
+#define PINMUX_GPIO163__FUNC_ADSP_URXD0 (MTK_PIN_NO(163) | 4)
+#define PINMUX_GPIO163__FUNC_SSPM_URXD_AO_VLP (MTK_PIN_NO(163) | 5)
+#define PINMUX_GPIO163__FUNC_HFRP_URXD1 (MTK_PIN_NO(163) | 6)
+
+#define PINMUX_GPIO164__FUNC_GPIO164 (MTK_PIN_NO(164) | 0)
+#define PINMUX_GPIO164__FUNC_SCP_SCL0 (MTK_PIN_NO(164) | 1)
+#define PINMUX_GPIO164__FUNC_TP_GPIO0_AO (MTK_PIN_NO(164) | 6)
+#define PINMUX_GPIO164__FUNC_DBG_MON_A22 (MTK_PIN_NO(164) | 7)
+
+#define PINMUX_GPIO165__FUNC_GPIO165 (MTK_PIN_NO(165) | 0)
+#define PINMUX_GPIO165__FUNC_SCP_SDA0 (MTK_PIN_NO(165) | 1)
+#define PINMUX_GPIO165__FUNC_TP_GPIO1_AO (MTK_PIN_NO(165) | 6)
+#define PINMUX_GPIO165__FUNC_DBG_MON_A23 (MTK_PIN_NO(165) | 7)
+
+#define PINMUX_GPIO166__FUNC_GPIO166 (MTK_PIN_NO(166) | 0)
+#define PINMUX_GPIO166__FUNC_SCP_SCL2 (MTK_PIN_NO(166) | 1)
+#define PINMUX_GPIO166__FUNC_TP_GPIO2_AO (MTK_PIN_NO(166) | 6)
+#define PINMUX_GPIO166__FUNC_DBG_MON_A24 (MTK_PIN_NO(166) | 7)
+
+#define PINMUX_GPIO167__FUNC_GPIO167 (MTK_PIN_NO(167) | 0)
+#define PINMUX_GPIO167__FUNC_SCP_SDA2 (MTK_PIN_NO(167) | 1)
+#define PINMUX_GPIO167__FUNC_TP_GPIO3_AO (MTK_PIN_NO(167) | 6)
+#define PINMUX_GPIO167__FUNC_DBG_MON_A25 (MTK_PIN_NO(167) | 7)
+
+#define PINMUX_GPIO168__FUNC_GPIO168 (MTK_PIN_NO(168) | 0)
+#define PINMUX_GPIO168__FUNC_SCP_SPI2_CK (MTK_PIN_NO(168) | 1)
+#define PINMUX_GPIO168__FUNC_SPI2_B_CLK (MTK_PIN_NO(168) | 2)
+#define PINMUX_GPIO168__FUNC_PWM_VLP (MTK_PIN_NO(168) | 3)
+#define PINMUX_GPIO168__FUNC_SCP_SCL2 (MTK_PIN_NO(168) | 4)
+#define PINMUX_GPIO168__FUNC_DBG_MON_A26 (MTK_PIN_NO(168) | 7)
+
+#define PINMUX_GPIO169__FUNC_GPIO169 (MTK_PIN_NO(169) | 0)
+#define PINMUX_GPIO169__FUNC_SCP_SPI2_CS (MTK_PIN_NO(169) | 1)
+#define PINMUX_GPIO169__FUNC_SPI2_B_CSB (MTK_PIN_NO(169) | 2)
+#define PINMUX_GPIO169__FUNC_DBG_MON_A27 (MTK_PIN_NO(169) | 7)
+
+#define PINMUX_GPIO170__FUNC_GPIO170 (MTK_PIN_NO(170) | 0)
+#define PINMUX_GPIO170__FUNC_SCP_SPI2_MO (MTK_PIN_NO(170) | 1)
+#define PINMUX_GPIO170__FUNC_SPI2_B_MO (MTK_PIN_NO(170) | 2)
+#define PINMUX_GPIO170__FUNC_SCP_SDA2 (MTK_PIN_NO(170) | 4)
+#define PINMUX_GPIO170__FUNC_DBG_MON_A28 (MTK_PIN_NO(170) | 7)
+
+#define PINMUX_GPIO171__FUNC_GPIO171 (MTK_PIN_NO(171) | 0)
+#define PINMUX_GPIO171__FUNC_SCP_SPI2_MI (MTK_PIN_NO(171) | 1)
+#define PINMUX_GPIO171__FUNC_SPI2_B_MI (MTK_PIN_NO(171) | 2)
+#define PINMUX_GPIO171__FUNC_DBG_MON_A29 (MTK_PIN_NO(171) | 7)
+
+#define PINMUX_GPIO172__FUNC_GPIO172 (MTK_PIN_NO(172) | 0)
+#define PINMUX_GPIO172__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(172) | 1)
+
+#define PINMUX_GPIO173__FUNC_GPIO173 (MTK_PIN_NO(173) | 0)
+#define PINMUX_GPIO173__FUNC_CMFLASH3 (MTK_PIN_NO(173) | 1)
+#define PINMUX_GPIO173__FUNC_PWM_3 (MTK_PIN_NO(173) | 2)
+#define PINMUX_GPIO173__FUNC_MD_GPS_L5_BLANK (MTK_PIN_NO(173) | 3)
+#define PINMUX_GPIO173__FUNC_CLKM1_A (MTK_PIN_NO(173) | 4)
+#define PINMUX_GPIO173__FUNC_DBG_MON_A31 (MTK_PIN_NO(173) | 7)
+
+#define PINMUX_GPIO174__FUNC_GPIO174 (MTK_PIN_NO(174) | 0)
+#define PINMUX_GPIO174__FUNC_CMFLASH0 (MTK_PIN_NO(174) | 1)
+#define PINMUX_GPIO174__FUNC_PWM_0 (MTK_PIN_NO(174) | 2)
+#define PINMUX_GPIO174__FUNC_VBUSVALID_1P (MTK_PIN_NO(174) | 3)
+#define PINMUX_GPIO174__FUNC_MD32_2_RXD (MTK_PIN_NO(174) | 4)
+#define PINMUX_GPIO174__FUNC_DISP_PWM3 (MTK_PIN_NO(174) | 5)
+
+#define PINMUX_GPIO175__FUNC_GPIO175 (MTK_PIN_NO(175) | 0)
+#define PINMUX_GPIO175__FUNC_CMFLASH1 (MTK_PIN_NO(175) | 1)
+#define PINMUX_GPIO175__FUNC_PWM_1 (MTK_PIN_NO(175) | 2)
+#define PINMUX_GPIO175__FUNC_EDP_TX_HPD (MTK_PIN_NO(175) | 3)
+#define PINMUX_GPIO175__FUNC_MD32_2_TXD (MTK_PIN_NO(175) | 4)
+#define PINMUX_GPIO175__FUNC_DISP_PWM4 (MTK_PIN_NO(175) | 5)
+
+#define PINMUX_GPIO176__FUNC_GPIO176 (MTK_PIN_NO(176) | 0)
+#define PINMUX_GPIO176__FUNC_SCL5 (MTK_PIN_NO(176) | 1)
+#define PINMUX_GPIO176__FUNC_LCM3_RST (MTK_PIN_NO(176) | 2)
+#define PINMUX_GPIO176__FUNC_MD_URXD1_CONN (MTK_PIN_NO(176) | 4)
+#define PINMUX_GPIO176__FUNC_TP_UTXD_GNSS_VCORE (MTK_PIN_NO(176) | 6)
+
+#define PINMUX_GPIO177__FUNC_GPIO177 (MTK_PIN_NO(177) | 0)
+#define PINMUX_GPIO177__FUNC_SDA5 (MTK_PIN_NO(177) | 1)
+#define PINMUX_GPIO177__FUNC_DSI3_TE (MTK_PIN_NO(177) | 2)
+#define PINMUX_GPIO177__FUNC_MD_UTXD1_CONN (MTK_PIN_NO(177) | 4)
+#define PINMUX_GPIO177__FUNC_TP_URXD_GNSS_VCORE (MTK_PIN_NO(177) | 6)
+
+#define PINMUX_GPIO178__FUNC_GPIO178 (MTK_PIN_NO(178) | 0)
+#define PINMUX_GPIO178__FUNC_DMIC_CLK (MTK_PIN_NO(178) | 1)
+#define PINMUX_GPIO178__FUNC_SCP_DMIC_CLK (MTK_PIN_NO(178) | 2)
+#define PINMUX_GPIO178__FUNC_SRCLKENAI0 (MTK_PIN_NO(178) | 3)
+#define PINMUX_GPIO178__FUNC_CLKM2_B (MTK_PIN_NO(178) | 4)
+#define PINMUX_GPIO178__FUNC_TP_GPIO7_AO (MTK_PIN_NO(178) | 5)
+#define PINMUX_GPIO178__FUNC_SPU1_UTX (MTK_PIN_NO(178) | 6)
+#define PINMUX_GPIO178__FUNC_DAP_SONIC_SWCK (MTK_PIN_NO(178) | 7)
+
+#define PINMUX_GPIO179__FUNC_GPIO179 (MTK_PIN_NO(179) | 0)
+#define PINMUX_GPIO179__FUNC_DMIC_DAT (MTK_PIN_NO(179) | 1)
+#define PINMUX_GPIO179__FUNC_SCP_DMIC_DAT (MTK_PIN_NO(179) | 2)
+#define PINMUX_GPIO179__FUNC_SRCLKENAI1 (MTK_PIN_NO(179) | 3)
+#define PINMUX_GPIO179__FUNC_CLKM3_B (MTK_PIN_NO(179) | 4)
+#define PINMUX_GPIO179__FUNC_TP_GPIO8_AO (MTK_PIN_NO(179) | 5)
+#define PINMUX_GPIO179__FUNC_SPU1_URX (MTK_PIN_NO(179) | 6)
+#define PINMUX_GPIO179__FUNC_DAP_SONIC_SWD (MTK_PIN_NO(179) | 7)
+
+#define PINMUX_GPIO180__FUNC_GPIO180 (MTK_PIN_NO(180) | 0)
+#define PINMUX_GPIO180__FUNC_IDDIG_1P (MTK_PIN_NO(180) | 1)
+#define PINMUX_GPIO180__FUNC_CMVREF0 (MTK_PIN_NO(180) | 2)
+#define PINMUX_GPIO180__FUNC_GPS_PPS1 (MTK_PIN_NO(180) | 3)
+#define PINMUX_GPIO180__FUNC_GPS_L5_ELNA_EN (MTK_PIN_NO(180) | 4)
+#define PINMUX_GPIO180__FUNC_DISP_PWM1 (MTK_PIN_NO(180) | 5)
+
+#define PINMUX_GPIO181__FUNC_GPIO181 (MTK_PIN_NO(181) | 0)
+#define PINMUX_GPIO181__FUNC_USB_DRVVBUS_1P (MTK_PIN_NO(181) | 1)
+#define PINMUX_GPIO181__FUNC_CMVREF1 (MTK_PIN_NO(181) | 2)
+#define PINMUX_GPIO181__FUNC_MFG_EB_JTAG_TRSTN (MTK_PIN_NO(181) | 3)
+#define PINMUX_GPIO181__FUNC_ADSP_JTAG1_TRSTN (MTK_PIN_NO(181) | 4)
+#define PINMUX_GPIO181__FUNC_HFRP_JTAG1_TRSTN (MTK_PIN_NO(181) | 5)
+#define PINMUX_GPIO181__FUNC_SPU1_NTRST (MTK_PIN_NO(181) | 6)
+#define PINMUX_GPIO181__FUNC_CONN_BG_GPS_MCU_TRST_B (MTK_PIN_NO(181) | 7)
+
+#define PINMUX_GPIO182__FUNC_GPIO182 (MTK_PIN_NO(182) | 0)
+#define PINMUX_GPIO182__FUNC_SCL11 (MTK_PIN_NO(182) | 1)
+#define PINMUX_GPIO182__FUNC_CMVREF2 (MTK_PIN_NO(182) | 2)
+#define PINMUX_GPIO182__FUNC_MFG_EB_JTAG_TCK (MTK_PIN_NO(182) | 3)
+#define PINMUX_GPIO182__FUNC_ADSP_JTAG1_TCK (MTK_PIN_NO(182) | 4)
+#define PINMUX_GPIO182__FUNC_HFRP_JTAG1_TCK (MTK_PIN_NO(182) | 5)
+#define PINMUX_GPIO182__FUNC_SPU1_TCK (MTK_PIN_NO(182) | 6)
+#define PINMUX_GPIO182__FUNC_CONN_BG_GPS_MCU_TCK (MTK_PIN_NO(182) | 7)
+
+#define PINMUX_GPIO183__FUNC_GPIO183 (MTK_PIN_NO(183) | 0)
+#define PINMUX_GPIO183__FUNC_SDA11 (MTK_PIN_NO(183) | 1)
+#define PINMUX_GPIO183__FUNC_CMVREF3 (MTK_PIN_NO(183) | 2)
+#define PINMUX_GPIO183__FUNC_MFG_EB_JTAG_TMS (MTK_PIN_NO(183) | 3)
+#define PINMUX_GPIO183__FUNC_ADSP_JTAG1_TMS (MTK_PIN_NO(183) | 4)
+#define PINMUX_GPIO183__FUNC_HFRP_JTAG1_TMS (MTK_PIN_NO(183) | 5)
+#define PINMUX_GPIO183__FUNC_SPU1_TMS (MTK_PIN_NO(183) | 6)
+#define PINMUX_GPIO183__FUNC_CONN_BG_GPS_MCU_TMS (MTK_PIN_NO(183) | 7)
+
+#define PINMUX_GPIO184__FUNC_GPIO184 (MTK_PIN_NO(184) | 0)
+#define PINMUX_GPIO184__FUNC_SCL12 (MTK_PIN_NO(184) | 1)
+#define PINMUX_GPIO184__FUNC_CMVREF4 (MTK_PIN_NO(184) | 2)
+#define PINMUX_GPIO184__FUNC_MFG_EB_JTAG_TDO (MTK_PIN_NO(184) | 3)
+#define PINMUX_GPIO184__FUNC_ADSP_JTAG1_TDO (MTK_PIN_NO(184) | 4)
+#define PINMUX_GPIO184__FUNC_HFRP_JTAG1_TDO (MTK_PIN_NO(184) | 5)
+#define PINMUX_GPIO184__FUNC_SPU1_TDO (MTK_PIN_NO(184) | 6)
+#define PINMUX_GPIO184__FUNC_CONN_BG_GPS_MCU_TDO (MTK_PIN_NO(184) | 7)
+
+#define PINMUX_GPIO185__FUNC_GPIO185 (MTK_PIN_NO(185) | 0)
+#define PINMUX_GPIO185__FUNC_SDA12 (MTK_PIN_NO(185) | 1)
+#define PINMUX_GPIO185__FUNC_CMVREF5 (MTK_PIN_NO(185) | 2)
+#define PINMUX_GPIO185__FUNC_MFG_EB_JTAG_TDI (MTK_PIN_NO(185) | 3)
+#define PINMUX_GPIO185__FUNC_ADSP_JTAG1_TDI (MTK_PIN_NO(185) | 4)
+#define PINMUX_GPIO185__FUNC_HFRP_JTAG1_TDI (MTK_PIN_NO(185) | 5)
+#define PINMUX_GPIO185__FUNC_SPU1_TDI (MTK_PIN_NO(185) | 6)
+#define PINMUX_GPIO185__FUNC_CONN_BG_GPS_MCU_TDI (MTK_PIN_NO(185) | 7)
+
+#define PINMUX_GPIO186__FUNC_GPIO186 (MTK_PIN_NO(186) | 0)
+#define PINMUX_GPIO186__FUNC_MD_GPS_L1_BLANK (MTK_PIN_NO(186) | 1)
+#define PINMUX_GPIO186__FUNC_PMSR_SMAP (MTK_PIN_NO(186) | 2)
+#define PINMUX_GPIO186__FUNC_TP_GPIO2_AO (MTK_PIN_NO(186) | 3)
+
+#define PINMUX_GPIO187__FUNC_GPIO187 (MTK_PIN_NO(187) | 0)
+#define PINMUX_GPIO187__FUNC_MD_GPS_L5_BLANK (MTK_PIN_NO(187) | 1)
+#define PINMUX_GPIO187__FUNC_TP_GPIO4_AO (MTK_PIN_NO(187) | 3)
+
+#define PINMUX_GPIO188__FUNC_GPIO188 (MTK_PIN_NO(188) | 0)
+#define PINMUX_GPIO188__FUNC_SCL2 (MTK_PIN_NO(188) | 1)
+#define PINMUX_GPIO188__FUNC_SCP_SCL8 (MTK_PIN_NO(188) | 2)
+
+#define PINMUX_GPIO189__FUNC_GPIO189 (MTK_PIN_NO(189) | 0)
+#define PINMUX_GPIO189__FUNC_SDA2 (MTK_PIN_NO(189) | 1)
+#define PINMUX_GPIO189__FUNC_SCP_SDA8 (MTK_PIN_NO(189) | 2)
+
+#define PINMUX_GPIO190__FUNC_GPIO190 (MTK_PIN_NO(190) | 0)
+#define PINMUX_GPIO190__FUNC_SCL4 (MTK_PIN_NO(190) | 1)
+#define PINMUX_GPIO190__FUNC_SCP_SCL9 (MTK_PIN_NO(190) | 2)
+#define PINMUX_GPIO190__FUNC_UDI_TDI_6 (MTK_PIN_NO(190) | 6)
+
+#define PINMUX_GPIO191__FUNC_GPIO191 (MTK_PIN_NO(191) | 0)
+#define PINMUX_GPIO191__FUNC_SDA4 (MTK_PIN_NO(191) | 1)
+#define PINMUX_GPIO191__FUNC_SCP_SDA9 (MTK_PIN_NO(191) | 2)
+#define PINMUX_GPIO191__FUNC_UDI_TDI_7 (MTK_PIN_NO(191) | 6)
+
+#define PINMUX_GPIO192__FUNC_GPIO192 (MTK_PIN_NO(192) | 0)
+#define PINMUX_GPIO192__FUNC_CMMCLK2 (MTK_PIN_NO(192) | 1)
+#define PINMUX_GPIO192__FUNC_MD32_3_RXD (MTK_PIN_NO(192) | 4)
+
+#define PINMUX_GPIO193__FUNC_GPIO193 (MTK_PIN_NO(193) | 0)
+#define PINMUX_GPIO193__FUNC_CLKM0_B (MTK_PIN_NO(193) | 3)
+#define PINMUX_GPIO193__FUNC_MD32_3_TXD (MTK_PIN_NO(193) | 4)
+#define PINMUX_GPIO193__FUNC_UDI_TDO_7 (MTK_PIN_NO(193) | 6)
+
+#define PINMUX_GPIO194__FUNC_GPIO194 (MTK_PIN_NO(194) | 0)
+#define PINMUX_GPIO194__FUNC_SCL7 (MTK_PIN_NO(194) | 1)
+#define PINMUX_GPIO194__FUNC_MD32_3_GPIO0 (MTK_PIN_NO(194) | 2)
+#define PINMUX_GPIO194__FUNC_CLKM2_B (MTK_PIN_NO(194) | 3)
+#define PINMUX_GPIO194__FUNC_UDI_TDI_2 (MTK_PIN_NO(194) | 6)
+
+#define PINMUX_GPIO195__FUNC_GPIO195 (MTK_PIN_NO(195) | 0)
+#define PINMUX_GPIO195__FUNC_SDA7 (MTK_PIN_NO(195) | 1)
+#define PINMUX_GPIO195__FUNC_CLKM3_B (MTK_PIN_NO(195) | 3)
+#define PINMUX_GPIO195__FUNC_UDI_TDI_3 (MTK_PIN_NO(195) | 6)
+
+#define PINMUX_GPIO196__FUNC_GPIO196 (MTK_PIN_NO(196) | 0)
+#define PINMUX_GPIO196__FUNC_CMMCLK3 (MTK_PIN_NO(196) | 1)
+
+#define PINMUX_GPIO197__FUNC_GPIO197 (MTK_PIN_NO(197) | 0)
+#define PINMUX_GPIO197__FUNC_CLKM1_B (MTK_PIN_NO(197) | 3)
+#define PINMUX_GPIO197__FUNC_UDI_TDI_1 (MTK_PIN_NO(197) | 6)
+
+#define PINMUX_GPIO198__FUNC_GPIO198 (MTK_PIN_NO(198) | 0)
+#define PINMUX_GPIO198__FUNC_SCL8 (MTK_PIN_NO(198) | 1)
+#define PINMUX_GPIO198__FUNC_UDI_TDI_4 (MTK_PIN_NO(198) | 6)
+
+#define PINMUX_GPIO199__FUNC_GPIO199 (MTK_PIN_NO(199) | 0)
+#define PINMUX_GPIO199__FUNC_SDA8 (MTK_PIN_NO(199) | 1)
+#define PINMUX_GPIO199__FUNC_UDI_TDI_5 (MTK_PIN_NO(199) | 6)
+
+#define PINMUX_GPIO200__FUNC_GPIO200 (MTK_PIN_NO(200) | 0)
+#define PINMUX_GPIO200__FUNC_SCL1 (MTK_PIN_NO(200) | 1)
+
+#define PINMUX_GPIO201__FUNC_GPIO201 (MTK_PIN_NO(201) | 0)
+#define PINMUX_GPIO201__FUNC_SDA1 (MTK_PIN_NO(201) | 1)
+#define PINMUX_GPIO201__FUNC_TSFDC_BG_COMP (MTK_PIN_NO(201) | 7)
+
+#define PINMUX_GPIO202__FUNC_GPIO202 (MTK_PIN_NO(202) | 0)
+#define PINMUX_GPIO202__FUNC_SCL9 (MTK_PIN_NO(202) | 1)
+#define PINMUX_GPIO202__FUNC_SCP_SCL7 (MTK_PIN_NO(202) | 2)
+#define PINMUX_GPIO202__FUNC_TP_GPIO15_AO (MTK_PIN_NO(202) | 6)
+
+#define PINMUX_GPIO203__FUNC_GPIO203 (MTK_PIN_NO(203) | 0)
+#define PINMUX_GPIO203__FUNC_SDA9 (MTK_PIN_NO(203) | 1)
+#define PINMUX_GPIO203__FUNC_SCP_SDA7 (MTK_PIN_NO(203) | 2)
+#define PINMUX_GPIO203__FUNC_TP_GPIO9_AO (MTK_PIN_NO(203) | 6)
+
+#define PINMUX_GPIO204__FUNC_GPIO204 (MTK_PIN_NO(204) | 0)
+#define PINMUX_GPIO204__FUNC_SCL13 (MTK_PIN_NO(204) | 1)
+#define PINMUX_GPIO204__FUNC_CMVREF6 (MTK_PIN_NO(204) | 2)
+#define PINMUX_GPIO204__FUNC_GPS_L1_ELNA_EN (MTK_PIN_NO(204) | 3)
+#define PINMUX_GPIO204__FUNC_CLKM2_B (MTK_PIN_NO(204) | 5)
+#define PINMUX_GPIO204__FUNC_TP_GPIO12_AO (MTK_PIN_NO(204) | 6)
+
+#define PINMUX_GPIO205__FUNC_GPIO205 (MTK_PIN_NO(205) | 0)
+#define PINMUX_GPIO205__FUNC_SDA13 (MTK_PIN_NO(205) | 1)
+#define PINMUX_GPIO205__FUNC_CMVREF7 (MTK_PIN_NO(205) | 2)
+#define PINMUX_GPIO205__FUNC_GPS_L5_ELNA_EN (MTK_PIN_NO(205) | 3)
+#define PINMUX_GPIO205__FUNC_CLKM3_B (MTK_PIN_NO(205) | 5)
+#define PINMUX_GPIO205__FUNC_TP_GPIO13_AO (MTK_PIN_NO(205) | 6)
+
+#define PINMUX_GPIO206__FUNC_GPIO206 (MTK_PIN_NO(206) | 0)
+#define PINMUX_GPIO206__FUNC_MD32_2_GPIO0 (MTK_PIN_NO(206) | 2)
+#define PINMUX_GPIO206__FUNC_VBUSVALID (MTK_PIN_NO(206) | 5)
+#define PINMUX_GPIO206__FUNC_UDI_TDO_3 (MTK_PIN_NO(206) | 6)
+
+#define PINMUX_GPIO207__FUNC_GPIO207 (MTK_PIN_NO(207) | 0)
+#define PINMUX_GPIO207__FUNC_PCIE_WAKEN_2P (MTK_PIN_NO(207) | 1)
+#define PINMUX_GPIO207__FUNC_PMSR_SMAP_MAX (MTK_PIN_NO(207) | 2)
+#define PINMUX_GPIO207__FUNC_FMI2S_A_BCK (MTK_PIN_NO(207) | 4)
+#define PINMUX_GPIO207__FUNC_UDI_TDO_4 (MTK_PIN_NO(207) | 6)
+
+#define PINMUX_GPIO208__FUNC_GPIO208 (MTK_PIN_NO(208) | 0)
+#define PINMUX_GPIO208__FUNC_PCIE_CLKREQN_2P (MTK_PIN_NO(208) | 1)
+#define PINMUX_GPIO208__FUNC_PMSR_SMAP_MAX_W (MTK_PIN_NO(208) | 2)
+#define PINMUX_GPIO208__FUNC_FMI2S_A_LRCK (MTK_PIN_NO(208) | 4)
+#define PINMUX_GPIO208__FUNC_CLKM0_B (MTK_PIN_NO(208) | 5)
+#define PINMUX_GPIO208__FUNC_UDI_TDO_5 (MTK_PIN_NO(208) | 6)
+
+#define PINMUX_GPIO209__FUNC_GPIO209 (MTK_PIN_NO(209) | 0)
+#define PINMUX_GPIO209__FUNC_PCIE_PERSTN_2P (MTK_PIN_NO(209) | 1)
+#define PINMUX_GPIO209__FUNC_PMSR_SMAP (MTK_PIN_NO(209) | 2)
+#define PINMUX_GPIO209__FUNC_FMI2S_A_DI (MTK_PIN_NO(209) | 4)
+#define PINMUX_GPIO209__FUNC_CLKM1_B (MTK_PIN_NO(209) | 5)
+#define PINMUX_GPIO209__FUNC_UDI_TDO_6 (MTK_PIN_NO(209) | 6)
+
+#define PINMUX_GPIO210__FUNC_GPIO210 (MTK_PIN_NO(210) | 0)
+#define PINMUX_GPIO210__FUNC_CMMCLK4 (MTK_PIN_NO(210) | 1)
+
+#define PINMUX_GPIO211__FUNC_GPIO211 (MTK_PIN_NO(211) | 0)
+#define PINMUX_GPIO211__FUNC_CMMCLK5 (MTK_PIN_NO(211) | 1)
+#define PINMUX_GPIO211__FUNC_CONN_TCXOENA_REQ (MTK_PIN_NO(211) | 2)
+
+#define PINMUX_GPIO212__FUNC_GPIO212 (MTK_PIN_NO(212) | 0)
+#define PINMUX_GPIO212__FUNC_CMMCLK6 (MTK_PIN_NO(212) | 1)
+#define PINMUX_GPIO212__FUNC_TP_GPIO10_AO (MTK_PIN_NO(212) | 2)
+#define PINMUX_GPIO212__FUNC_IDDIG (MTK_PIN_NO(212) | 5)
+#define PINMUX_GPIO212__FUNC_UDI_TDO_1 (MTK_PIN_NO(212) | 6)
+
+#define PINMUX_GPIO213__FUNC_GPIO213 (MTK_PIN_NO(213) | 0)
+#define PINMUX_GPIO213__FUNC_CMMCLK7 (MTK_PIN_NO(213) | 1)
+#define PINMUX_GPIO213__FUNC_TP_GPIO11_AO (MTK_PIN_NO(213) | 2)
+#define PINMUX_GPIO213__FUNC_USB_DRVVBUS (MTK_PIN_NO(213) | 5)
+#define PINMUX_GPIO213__FUNC_UDI_TDO_2 (MTK_PIN_NO(213) | 6)
+
+#define PINMUX_GPIO214__FUNC_GPIO214 (MTK_PIN_NO(214) | 0)
+#define PINMUX_GPIO214__FUNC_SCP_SCL3 (MTK_PIN_NO(214) | 1)
+#define PINMUX_GPIO214__FUNC_SDA14_E1 (MTK_PIN_NO(214) | 2)
+#define PINMUX_GPIO214__FUNC_SCL14_E2 (MTK_PIN_NO(214) | 2)
+#define PINMUX_GPIO214__FUNC_GBE1_MDC (MTK_PIN_NO(214) | 6)
+#define PINMUX_GPIO214__FUNC_GBE0_MDC (MTK_PIN_NO(214) | 7)
+
+#define PINMUX_GPIO215__FUNC_GPIO215 (MTK_PIN_NO(215) | 0)
+#define PINMUX_GPIO215__FUNC_SCP_SDA3 (MTK_PIN_NO(215) | 1)
+#define PINMUX_GPIO215__FUNC_SCL14_E1 (MTK_PIN_NO(215) | 2)
+#define PINMUX_GPIO215__FUNC_SDA14_E2 (MTK_PIN_NO(215) | 2)
+#define PINMUX_GPIO215__FUNC_GBE1_MDIO (MTK_PIN_NO(215) | 6)
+#define PINMUX_GPIO215__FUNC_GBE0_MDIO (MTK_PIN_NO(215) | 7)
+
+#define PINMUX_GPIO216__FUNC_GPIO216 (MTK_PIN_NO(216) | 0)
+#define PINMUX_GPIO216__FUNC_GPS_PPS0 (MTK_PIN_NO(216) | 1)
+
+#define PINMUX_GPIO217__FUNC_GPIO217 (MTK_PIN_NO(217) | 0)
+#define PINMUX_GPIO217__FUNC_KPROW0 (MTK_PIN_NO(217) | 1)
+#define PINMUX_GPIO217__FUNC_TP_GPIO12_AO (MTK_PIN_NO(217) | 6)
+
+#define PINMUX_GPIO218__FUNC_GPIO218 (MTK_PIN_NO(218) | 0)
+#define PINMUX_GPIO218__FUNC_KPROW1 (MTK_PIN_NO(218) | 1)
+#define PINMUX_GPIO218__FUNC_SPI0_WP (MTK_PIN_NO(218) | 2)
+#define PINMUX_GPIO218__FUNC_MBISTREADEN_TRIGGER (MTK_PIN_NO(218) | 3)
+#define PINMUX_GPIO218__FUNC_GPS_L5_ELNA_EN (MTK_PIN_NO(218) | 5)
+#define PINMUX_GPIO218__FUNC_TP_GPIO14_AO (MTK_PIN_NO(218) | 6)
+
+#define PINMUX_GPIO219__FUNC_GPIO219 (MTK_PIN_NO(219) | 0)
+#define PINMUX_GPIO219__FUNC_KPCOL1 (MTK_PIN_NO(219) | 1)
+#define PINMUX_GPIO219__FUNC_SPI0_HOLD (MTK_PIN_NO(219) | 2)
+#define PINMUX_GPIO219__FUNC_MBISTWRITEEN_TRIGGER (MTK_PIN_NO(219) | 3)
+#define PINMUX_GPIO219__FUNC_SPMI_M_TRIG_FLAG (MTK_PIN_NO(219) | 4)
+#define PINMUX_GPIO219__FUNC_GPS_L1_ELNA_EN (MTK_PIN_NO(219) | 5)
+#define PINMUX_GPIO219__FUNC_SPM_JTAG_TRSTN_VLP (MTK_PIN_NO(219) | 6)
+#define PINMUX_GPIO219__FUNC_JTRSTN_SEL1 (MTK_PIN_NO(219) | 7)
+
+#define PINMUX_GPIO220__FUNC_GPIO220 (MTK_PIN_NO(220) | 0)
+#define PINMUX_GPIO220__FUNC_SPI0_CLK (MTK_PIN_NO(220) | 1)
+#define PINMUX_GPIO220__FUNC_SPM_JTAG_TCK_VLP (MTK_PIN_NO(220) | 6)
+#define PINMUX_GPIO220__FUNC_JTCK_SEL1 (MTK_PIN_NO(220) | 7)
+
+#define PINMUX_GPIO221__FUNC_GPIO221 (MTK_PIN_NO(221) | 0)
+#define PINMUX_GPIO221__FUNC_SPI0_CSB (MTK_PIN_NO(221) | 1)
+#define PINMUX_GPIO221__FUNC_SPM_JTAG_TMS_VLP (MTK_PIN_NO(221) | 6)
+#define PINMUX_GPIO221__FUNC_JTMS_SEL1 (MTK_PIN_NO(221) | 7)
+
+#define PINMUX_GPIO222__FUNC_GPIO222 (MTK_PIN_NO(222) | 0)
+#define PINMUX_GPIO222__FUNC_SPI0_MO (MTK_PIN_NO(222) | 1)
+#define PINMUX_GPIO222__FUNC_SCP_SCL7 (MTK_PIN_NO(222) | 2)
+#define PINMUX_GPIO222__FUNC_SPM_JTAG_TDO_VLP (MTK_PIN_NO(222) | 6)
+#define PINMUX_GPIO222__FUNC_JTDO_SEL1 (MTK_PIN_NO(222) | 7)
+
+#define PINMUX_GPIO223__FUNC_GPIO223 (MTK_PIN_NO(223) | 0)
+#define PINMUX_GPIO223__FUNC_SPI0_MI (MTK_PIN_NO(223) | 1)
+#define PINMUX_GPIO223__FUNC_SCP_SDA7 (MTK_PIN_NO(223) | 2)
+#define PINMUX_GPIO223__FUNC_SPM_JTAG_TDI_VLP (MTK_PIN_NO(223) | 6)
+#define PINMUX_GPIO223__FUNC_JTDI_SEL1 (MTK_PIN_NO(223) | 7)
+
+#define PINMUX_GPIO224__FUNC_GPIO224 (MTK_PIN_NO(224) | 0)
+#define PINMUX_GPIO224__FUNC_MSDC2_CLK (MTK_PIN_NO(224) | 1)
+#define PINMUX_GPIO224__FUNC_DMIC2_CLK (MTK_PIN_NO(224) | 2)
+#define PINMUX_GPIO224__FUNC_GBE0_AUX_PPS0 (MTK_PIN_NO(224) | 3)
+#define PINMUX_GPIO224__FUNC_GBE0_TXER (MTK_PIN_NO(224) | 4)
+#define PINMUX_GPIO224__FUNC_GBE1_TXER (MTK_PIN_NO(224) | 5)
+#define PINMUX_GPIO224__FUNC_GBE1_AUX_PPS0 (MTK_PIN_NO(224) | 6)
+#define PINMUX_GPIO224__FUNC_MD32_1_TXD (MTK_PIN_NO(224) | 7)
+
+#define PINMUX_GPIO225__FUNC_GPIO225 (MTK_PIN_NO(225) | 0)
+#define PINMUX_GPIO225__FUNC_MSDC2_CMD (MTK_PIN_NO(225) | 1)
+#define PINMUX_GPIO225__FUNC_DMIC2_DAT (MTK_PIN_NO(225) | 2)
+#define PINMUX_GPIO225__FUNC_GBE0_AUX_PPS1 (MTK_PIN_NO(225) | 3)
+#define PINMUX_GPIO225__FUNC_GBE0_RXER (MTK_PIN_NO(225) | 4)
+#define PINMUX_GPIO225__FUNC_GBE1_RXER (MTK_PIN_NO(225) | 5)
+#define PINMUX_GPIO225__FUNC_GBE1_AUX_PPS1 (MTK_PIN_NO(225) | 6)
+#define PINMUX_GPIO225__FUNC_MD32_1_RXD (MTK_PIN_NO(225) | 7)
+
+#define PINMUX_GPIO226__FUNC_GPIO226 (MTK_PIN_NO(226) | 0)
+#define PINMUX_GPIO226__FUNC_MSDC2_DAT0 (MTK_PIN_NO(226) | 1)
+#define PINMUX_GPIO226__FUNC_I2SIN3_BCK (MTK_PIN_NO(226) | 2)
+#define PINMUX_GPIO226__FUNC_GBE0_AUX_PPS2 (MTK_PIN_NO(226) | 3)
+#define PINMUX_GPIO226__FUNC_GBE0_COL (MTK_PIN_NO(226) | 4)
+#define PINMUX_GPIO226__FUNC_GBE1_COL (MTK_PIN_NO(226) | 5)
+#define PINMUX_GPIO226__FUNC_GBE1_AUX_PPS2 (MTK_PIN_NO(226) | 6)
+#define PINMUX_GPIO226__FUNC_GBE1_MDC (MTK_PIN_NO(226) | 7)
+
+#define PINMUX_GPIO227__FUNC_GPIO227 (MTK_PIN_NO(227) | 0)
+#define PINMUX_GPIO227__FUNC_MSDC2_DAT1 (MTK_PIN_NO(227) | 1)
+#define PINMUX_GPIO227__FUNC_I2SIN3_LRCK (MTK_PIN_NO(227) | 2)
+#define PINMUX_GPIO227__FUNC_GBE0_AUX_PPS3 (MTK_PIN_NO(227) | 3)
+#define PINMUX_GPIO227__FUNC_GBE0_INTR (MTK_PIN_NO(227) | 4)
+#define PINMUX_GPIO227__FUNC_GBE1_INTR (MTK_PIN_NO(227) | 5)
+#define PINMUX_GPIO227__FUNC_GBE1_AUX_PPS3 (MTK_PIN_NO(227) | 6)
+#define PINMUX_GPIO227__FUNC_GBE1_MDIO (MTK_PIN_NO(227) | 7)
+
+#define PINMUX_GPIO228__FUNC_GPIO228 (MTK_PIN_NO(228) | 0)
+#define PINMUX_GPIO228__FUNC_MSDC2_DAT2 (MTK_PIN_NO(228) | 1)
+#define PINMUX_GPIO228__FUNC_I2SIN3_DI (MTK_PIN_NO(228) | 2)
+#define PINMUX_GPIO228__FUNC_GBE0_MDC (MTK_PIN_NO(228) | 3)
+#define PINMUX_GPIO228__FUNC_GBE1_MDC (MTK_PIN_NO(228) | 4)
+#define PINMUX_GPIO228__FUNC_CONN_BG_GPS_MCU_AICE_TCKC (MTK_PIN_NO(228) | 5)
+
+#define PINMUX_GPIO229__FUNC_GPIO229 (MTK_PIN_NO(229) | 0)
+#define PINMUX_GPIO229__FUNC_MSDC2_DAT3 (MTK_PIN_NO(229) | 1)
+#define PINMUX_GPIO229__FUNC_I2SOUT3_DO (MTK_PIN_NO(229) | 2)
+#define PINMUX_GPIO229__FUNC_GBE0_MDIO (MTK_PIN_NO(229) | 3)
+#define PINMUX_GPIO229__FUNC_GBE1_MDIO (MTK_PIN_NO(229) | 4)
+#define PINMUX_GPIO229__FUNC_CONN_BG_GPS_MCU_AICE_TMSC (MTK_PIN_NO(229) | 5)
+#define PINMUX_GPIO229__FUNC_AVB_CLK2 (MTK_PIN_NO(229) | 7)
+
+#define PINMUX_GPIO230__FUNC_GPIO230 (MTK_PIN_NO(230) | 0)
+#define PINMUX_GPIO230__FUNC_CONN_TOP_CLK (MTK_PIN_NO(230) | 1)
+
+#define PINMUX_GPIO231__FUNC_GPIO231 (MTK_PIN_NO(231) | 0)
+#define PINMUX_GPIO231__FUNC_CONN_TOP_DATA (MTK_PIN_NO(231) | 1)
+
+#define PINMUX_GPIO232__FUNC_GPIO232 (MTK_PIN_NO(232) | 0)
+#define PINMUX_GPIO232__FUNC_CONN_HRST_B (MTK_PIN_NO(232) | 1)
+
+#define PINMUX_GPIO233__FUNC_GPIO233 (MTK_PIN_NO(233) | 0)
+#define PINMUX_GPIO233__FUNC_I2SIN0_BCK (MTK_PIN_NO(233) | 1)
+
+#define PINMUX_GPIO234__FUNC_GPIO234 (MTK_PIN_NO(234) | 0)
+#define PINMUX_GPIO234__FUNC_I2SIN0_LRCK (MTK_PIN_NO(234) | 1)
+
+#define PINMUX_GPIO235__FUNC_GPIO235 (MTK_PIN_NO(235) | 0)
+#define PINMUX_GPIO235__FUNC_I2SIN0_DI (MTK_PIN_NO(235) | 1)
+
+#define PINMUX_GPIO236__FUNC_GPIO236 (MTK_PIN_NO(236) | 0)
+#define PINMUX_GPIO236__FUNC_I2SOUT0_DO (MTK_PIN_NO(236) | 1)
+
+#define PINMUX_GPIO237__FUNC_GPIO237 (MTK_PIN_NO(237) | 0)
+#define PINMUX_GPIO237__FUNC_CONN_UARTHUB_UART_TX (MTK_PIN_NO(237) | 1)
+#define PINMUX_GPIO237__FUNC_UTXD3 (MTK_PIN_NO(237) | 3)
+
+#define PINMUX_GPIO238__FUNC_GPIO238 (MTK_PIN_NO(238) | 0)
+#define PINMUX_GPIO238__FUNC_CONN_UARTHUB_UART_RX (MTK_PIN_NO(238) | 1)
+#define PINMUX_GPIO238__FUNC_URXD3 (MTK_PIN_NO(238) | 3)
+
+#define PINMUX_GPIO239__FUNC_GPIO239 (MTK_PIN_NO(239) | 0)
+#define PINMUX_GPIO239__FUNC_TP_UTXD_CONSYS_VLP (MTK_PIN_NO(239) | 1)
+#define PINMUX_GPIO239__FUNC_TP_URXD_CONSYS_VLP (MTK_PIN_NO(239) | 2)
+
+#define PINMUX_GPIO240__FUNC_GPIO240 (MTK_PIN_NO(240) | 0)
+#define PINMUX_GPIO240__FUNC_TP_URXD_CONSYS_VLP (MTK_PIN_NO(240) | 1)
+#define PINMUX_GPIO240__FUNC_TP_UTXD_CONSYS_VLP (MTK_PIN_NO(240) | 2)
+
+#define PINMUX_GPIO241__FUNC_GPIO241 (MTK_PIN_NO(241) | 0)
+#define PINMUX_GPIO241__FUNC_PCIE_PERSTN (MTK_PIN_NO(241) | 1)
+
+#define PINMUX_GPIO242__FUNC_GPIO242 (MTK_PIN_NO(242) | 0)
+#define PINMUX_GPIO242__FUNC_PCIE_WAKEN (MTK_PIN_NO(242) | 1)
+
+#define PINMUX_GPIO243__FUNC_GPIO243 (MTK_PIN_NO(243) | 0)
+#define PINMUX_GPIO243__FUNC_PCIE_CLKREQN (MTK_PIN_NO(243) | 1)
+
+#define PINMUX_GPIO244__FUNC_GPIO244 (MTK_PIN_NO(244) | 0)
+#define PINMUX_GPIO244__FUNC_CONN_RST (MTK_PIN_NO(244) | 1)
+
+#define PINMUX_GPIO245__FUNC_GPIO245 (MTK_PIN_NO(245) | 0)
+
+#define PINMUX_GPIO246__FUNC_GPIO246 (MTK_PIN_NO(246) | 0)
+#define PINMUX_GPIO246__FUNC_CONN_PTA_TXD0 (MTK_PIN_NO(246) | 1)
+
+#define PINMUX_GPIO247__FUNC_GPIO247 (MTK_PIN_NO(247) | 0)
+#define PINMUX_GPIO247__FUNC_CONN_PTA_RXD0 (MTK_PIN_NO(247) | 1)
+
+#define PINMUX_GPIO248__FUNC_GPIO248 (MTK_PIN_NO(248) | 0)
+#define PINMUX_GPIO248__FUNC_UCTS3 (MTK_PIN_NO(248) | 3)
+
+#define PINMUX_GPIO249__FUNC_GPIO249 (MTK_PIN_NO(249) | 0)
+#define PINMUX_GPIO249__FUNC_URTS3 (MTK_PIN_NO(249) | 3)
+
+#define PINMUX_GPIO250__FUNC_GPIO250 (MTK_PIN_NO(250) | 0)
+
+#define PINMUX_GPIO251__FUNC_GPIO251 (MTK_PIN_NO(251) | 0)
+#define PINMUX_GPIO251__FUNC_IDDIG_1P (MTK_PIN_NO(251) | 1)
+
+#define PINMUX_GPIO252__FUNC_GPIO252 (MTK_PIN_NO(252) | 0)
+#define PINMUX_GPIO252__FUNC_USB_DRVVBUS_1P (MTK_PIN_NO(252) | 1)
+
+#define PINMUX_GPIO253__FUNC_GPIO253 (MTK_PIN_NO(253) | 0)
+#define PINMUX_GPIO253__FUNC_VBUSVALID_1P (MTK_PIN_NO(253) | 1)
+
+#define PINMUX_GPIO254__FUNC_GPIO254 (MTK_PIN_NO(254) | 0)
+#define PINMUX_GPIO254__FUNC_IDDIG_2P (MTK_PIN_NO(254) | 1)
+
+#define PINMUX_GPIO255__FUNC_GPIO255 (MTK_PIN_NO(255) | 0)
+#define PINMUX_GPIO255__FUNC_USB_DRVVBUS_2P (MTK_PIN_NO(255) | 1)
+
+#define PINMUX_GPIO256__FUNC_GPIO256 (MTK_PIN_NO(256) | 0)
+#define PINMUX_GPIO256__FUNC_VBUSVALID_2P (MTK_PIN_NO(256) | 1)
+
+#define PINMUX_GPIO257__FUNC_GPIO257 (MTK_PIN_NO(257) | 0)
+#define PINMUX_GPIO257__FUNC_VBUSVALID_3P (MTK_PIN_NO(257) | 1)
+
+#define PINMUX_GPIO258__FUNC_GPIO258 (MTK_PIN_NO(258) | 0)
+#define PINMUX_GPIO258__FUNC_AVB_CLK1 (MTK_PIN_NO(258) | 7)
+
+#define PINMUX_GPIO259__FUNC_GPIO259 (MTK_PIN_NO(259) | 0)
+#define PINMUX_GPIO259__FUNC_GBE0_TXD0 (MTK_PIN_NO(259) | 1)
+#define PINMUX_GPIO259__FUNC_GBE1_TXD0 (MTK_PIN_NO(259) | 2)
+
+#define PINMUX_GPIO260__FUNC_GPIO260 (MTK_PIN_NO(260) | 0)
+#define PINMUX_GPIO260__FUNC_GBE0_TXD1 (MTK_PIN_NO(260) | 1)
+#define PINMUX_GPIO260__FUNC_GBE1_TXD1 (MTK_PIN_NO(260) | 2)
+
+#define PINMUX_GPIO261__FUNC_GPIO261 (MTK_PIN_NO(261) | 0)
+#define PINMUX_GPIO261__FUNC_GBE0_TXC (MTK_PIN_NO(261) | 1)
+#define PINMUX_GPIO261__FUNC_GBE1_TXC (MTK_PIN_NO(261) | 2)
+
+#define PINMUX_GPIO262__FUNC_GPIO262 (MTK_PIN_NO(262) | 0)
+#define PINMUX_GPIO262__FUNC_GBE0_TXEN (MTK_PIN_NO(262) | 1)
+#define PINMUX_GPIO262__FUNC_GBE1_TXEN (MTK_PIN_NO(262) | 2)
+
+#define PINMUX_GPIO263__FUNC_GPIO263 (MTK_PIN_NO(263) | 0)
+#define PINMUX_GPIO263__FUNC_GBE0_RXD0 (MTK_PIN_NO(263) | 1)
+#define PINMUX_GPIO263__FUNC_GBE1_RXD0 (MTK_PIN_NO(263) | 2)
+#define PINMUX_GPIO263__FUNC_GBE0_AUX_PPS0 (MTK_PIN_NO(263) | 3)
+
+#define PINMUX_GPIO264__FUNC_GPIO264 (MTK_PIN_NO(264) | 0)
+#define PINMUX_GPIO264__FUNC_GBE0_RXD1 (MTK_PIN_NO(264) | 1)
+#define PINMUX_GPIO264__FUNC_GBE1_RXD1 (MTK_PIN_NO(264) | 2)
+#define PINMUX_GPIO264__FUNC_GBE0_AUX_PPS1 (MTK_PIN_NO(264) | 3)
+
+#define PINMUX_GPIO265__FUNC_GPIO265 (MTK_PIN_NO(265) | 0)
+#define PINMUX_GPIO265__FUNC_GBE0_RXC (MTK_PIN_NO(265) | 1)
+#define PINMUX_GPIO265__FUNC_GBE1_RXC (MTK_PIN_NO(265) | 2)
+#define PINMUX_GPIO265__FUNC_GBE0_AUX_PPS2 (MTK_PIN_NO(265) | 3)
+
+#define PINMUX_GPIO266__FUNC_GPIO266 (MTK_PIN_NO(266) | 0)
+#define PINMUX_GPIO266__FUNC_GBE0_RXDV (MTK_PIN_NO(266) | 1)
+#define PINMUX_GPIO266__FUNC_GBE1_RXDV (MTK_PIN_NO(266) | 2)
+#define PINMUX_GPIO266__FUNC_GBE0_AUX_PPS3 (MTK_PIN_NO(266) | 3)
+
+#define PINMUX_GPIO267__FUNC_GPIO267 (MTK_PIN_NO(267) | 0)
+#define PINMUX_GPIO267__FUNC_GBE0_TXD2 (MTK_PIN_NO(267) | 1)
+#define PINMUX_GPIO267__FUNC_GBE1_TXD2 (MTK_PIN_NO(267) | 2)
+#define PINMUX_GPIO267__FUNC_GBE0_RXER (MTK_PIN_NO(267) | 3)
+#define PINMUX_GPIO267__FUNC_GBE1_RXER (MTK_PIN_NO(267) | 4)
+
+#define PINMUX_GPIO268__FUNC_GPIO268 (MTK_PIN_NO(268) | 0)
+#define PINMUX_GPIO268__FUNC_GBE0_TXD3 (MTK_PIN_NO(268) | 1)
+#define PINMUX_GPIO268__FUNC_GBE1_TXD3 (MTK_PIN_NO(268) | 2)
+
+#define PINMUX_GPIO269__FUNC_GPIO269 (MTK_PIN_NO(269) | 0)
+#define PINMUX_GPIO269__FUNC_GBE0_RXD2 (MTK_PIN_NO(269) | 1)
+#define PINMUX_GPIO269__FUNC_GBE1_RXD2 (MTK_PIN_NO(269) | 2)
+#define PINMUX_GPIO269__FUNC_GBE0_MDC (MTK_PIN_NO(269) | 3)
+
+#define PINMUX_GPIO270__FUNC_GPIO270 (MTK_PIN_NO(270) | 0)
+#define PINMUX_GPIO270__FUNC_GBE0_RXD3 (MTK_PIN_NO(270) | 1)
+#define PINMUX_GPIO270__FUNC_GBE1_RXD3 (MTK_PIN_NO(270) | 2)
+#define PINMUX_GPIO270__FUNC_GBE0_MDIO (MTK_PIN_NO(270) | 3)
+
+#endif /* __MT8196_PINFUNC_H */
-- 
2.34.1


