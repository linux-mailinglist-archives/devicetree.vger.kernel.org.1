Return-Path: <devicetree+bounces-46133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE04868303
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 22:27:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08F9FB23AA4
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 21:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC3313175F;
	Mon, 26 Feb 2024 21:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmONmO+X"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE72213172B;
	Mon, 26 Feb 2024 21:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708982865; cv=none; b=ZYM1m2VnvbkRXKpiXYipa5JFNKbqYzBar1/G6AyKLlNaD/u3xhyQ4A1iSMYHrxIJE/1Cst9ljVFAO+maR5vcXhIAOhPq9Yz/zU08fvi/VnzeB8k9MknjYNlaghB3G1/JbnU3aD9u4JCzr/UewIrWl+tLlVW+f8aiv2EFFkJfX3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708982865; c=relaxed/simple;
	bh=resC3EdVnr1VmQ6d66ZukTMXBA464nmyoeCuIzkpf5w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i29zylIHRci1+539vb0xDmJDrQncAd/wTabZ3rF0mJGSaNgpzjnnXgXdBRGNF3DNtfIfTXJp53BuSz9/ClMMx5ASU3CHaifVlMtKscwLxAJ7ctEyNzexTSglHCe5Net9lnhirMrPAkH8Qkqg2uWhgFtqY2dfrxSXq0M8Q22+Dqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmONmO+X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 348EAC433A6;
	Mon, 26 Feb 2024 21:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708982865;
	bh=resC3EdVnr1VmQ6d66ZukTMXBA464nmyoeCuIzkpf5w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mmONmO+XppZSG6LvWPC/lnMImsryJWk884qTzGlqQLwpo+2seJIkUmDWfSIGt38YL
	 VtQgw+qncU/xp6XMHe0+ySYeLqi5JYHhthcoDTbxOLYXRKWj6oQu4q/iA2aprRrnnW
	 SRYDmLb3DQNkhzVnnBSjEQ9DdBwI/sHi9wqc5zZTfcicqR/WN9YIxXlLviEz2Ay1Zu
	 ALQBma+Bm+JYs/Y4azcfTVtuANA7DahM3YncN6aboCFc0F1cYv+8v+z63Rkja3IVfX
	 WMTw465QzDmB91t5NkVFVVCdkjP4N0hlEltKlFvIPyKXlRvYWYRFuOopEuoVDnlcAX
	 zqlG5+hWNociA==
Received: by mercury (Postfix, from userid 1000)
	id A650E1060D95; Mon, 26 Feb 2024 22:27:41 +0100 (CET)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	imx@lists.linux.dev
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Dong Aisheng <aisheng.dong@nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/6] dt-bindings: pinctrl: fsl,imx6ul-pinctrl: convert to YAML
Date: Mon, 26 Feb 2024 22:26:23 +0100
Message-ID: <20240226212740.2019837-2-sre@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240226212740.2019837-1-sre@kernel.org>
References: <20240226212740.2019837-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert i.MX6UL pinctrl bindings to YAML.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sre@kernel.org>
---
 .../bindings/pinctrl/fsl,imx6ul-pinctrl.txt   |  37 ------
 .../bindings/pinctrl/fsl,imx6ul-pinctrl.yaml  | 116 ++++++++++++++++++
 2 files changed, 116 insertions(+), 37 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.txt
deleted file mode 100644
index 7ca4f6118d9a..000000000000
--- a/Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.txt
+++ /dev/null
@@ -1,37 +0,0 @@
-* Freescale i.MX6 UltraLite IOMUX Controller
-
-Please refer to fsl,imx-pinctrl.txt in this directory for common binding part
-and usage.
-
-Required properties:
-- compatible: "fsl,imx6ul-iomuxc" for main IOMUX controller or
-  "fsl,imx6ull-iomuxc-snvs" for i.MX 6ULL's SNVS IOMUX controller.
-- fsl,pins: each entry consists of 6 integers and represents the mux and config
-  setting for one pin.  The first 5 integers <mux_reg conf_reg input_reg mux_val
-  input_val> are specified using a PIN_FUNC_ID macro, which can be found in
-  imx6ul-pinfunc.h under device tree source folder.  The last integer CONFIG is
-  the pad setting value like pull-up on this pin.  Please refer to i.MX6 UltraLite
-  Reference Manual for detailed CONFIG settings.
-
-CONFIG bits definition:
-PAD_CTL_HYS                     (1 << 16)
-PAD_CTL_PUS_100K_DOWN           (0 << 14)
-PAD_CTL_PUS_47K_UP              (1 << 14)
-PAD_CTL_PUS_100K_UP             (2 << 14)
-PAD_CTL_PUS_22K_UP              (3 << 14)
-PAD_CTL_PUE                     (1 << 13)
-PAD_CTL_PKE                     (1 << 12)
-PAD_CTL_ODE                     (1 << 11)
-PAD_CTL_SPEED_LOW               (0 << 6)
-PAD_CTL_SPEED_MED               (1 << 6)
-PAD_CTL_SPEED_HIGH              (3 << 6)
-PAD_CTL_DSE_DISABLE             (0 << 3)
-PAD_CTL_DSE_260ohm              (1 << 3)
-PAD_CTL_DSE_130ohm              (2 << 3)
-PAD_CTL_DSE_87ohm               (3 << 3)
-PAD_CTL_DSE_65ohm               (4 << 3)
-PAD_CTL_DSE_52ohm               (5 << 3)
-PAD_CTL_DSE_43ohm               (6 << 3)
-PAD_CTL_DSE_37ohm               (7 << 3)
-PAD_CTL_SRE_FAST                (1 << 0)
-PAD_CTL_SRE_SLOW                (0 << 0)
diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.yaml
new file mode 100644
index 000000000000..906b264a9e3c
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx6ul-pinctrl.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/fsl,imx6ul-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale IMX6UL IOMUX Controller
+
+maintainers:
+  - Dong Aisheng <aisheng.dong@nxp.com>
+
+description:
+  Please refer to fsl,imx-pinctrl.txt and pinctrl-bindings.txt in this directory
+  for common binding part and usage.
+
+allOf:
+  - $ref: pinctrl.yaml#
+
+properties:
+  compatible:
+    enum:
+      - fsl,imx6ul-iomuxc
+      - fsl,imx6ull-iomuxc-snvs
+
+  reg:
+    maxItems: 1
+
+# Client device subnode's properties
+patternProperties:
+  'grp$':
+    type: object
+    description:
+      Pinctrl node's client devices use subnodes for desired pin configuration.
+      Client device subnodes use below standard properties.
+
+    properties:
+      fsl,pins:
+        description:
+          each entry consists of 6 integers and represents the mux and config
+          setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
+          mux_val input_val> are specified using a PIN_FUNC_ID macro, which can
+          be found in <arch/arm/boot/dts/imx6ul-pinfunc.h>. The last integer
+          CONFIG is the pad setting value like pull-up on this pin. Please
+          refer to i.MX6UL Reference Manual for detailed CONFIG settings.
+        $ref: /schemas/types.yaml#/definitions/uint32-matrix
+        items:
+          items:
+            - description: |
+                "mux_reg" indicates the offset of mux register.
+            - description: |
+                "conf_reg" indicates the offset of pad configuration register.
+            - description: |
+                "input_reg" indicates the offset of select input register.
+            - description: |
+                "mux_val" indicates the mux value to be applied.
+            - description: |
+                "input_val" indicates the select input value to be applied.
+            - description: |
+                "pad_setting" indicates the pad configuration value to be applied:
+                  PAD_CTL_HYS                     (1 << 16)
+                  PAD_CTL_PUS_100K_DOWN           (0 << 14)
+                  PAD_CTL_PUS_47K_UP              (1 << 14)
+                  PAD_CTL_PUS_100K_UP             (2 << 14)
+                  PAD_CTL_PUS_22K_UP              (3 << 14)
+                  PAD_CTL_PUE                     (1 << 13)
+                  PAD_CTL_PKE                     (1 << 12)
+                  PAD_CTL_ODE                     (1 << 11)
+                  PAD_CTL_SPEED_LOW               (0 << 6)
+                  PAD_CTL_SPEED_MED               (1 << 6)
+                  PAD_CTL_SPEED_HIGH              (3 << 6)
+                  PAD_CTL_DSE_DISABLE             (0 << 3)
+                  PAD_CTL_DSE_260ohm              (1 << 3)
+                  PAD_CTL_DSE_130ohm              (2 << 3)
+                  PAD_CTL_DSE_87ohm               (3 << 3)
+                  PAD_CTL_DSE_65ohm               (4 << 3)
+                  PAD_CTL_DSE_52ohm               (5 << 3)
+                  PAD_CTL_DSE_43ohm               (6 << 3)
+                  PAD_CTL_DSE_37ohm               (7 << 3)
+                  PAD_CTL_SRE_FAST                (1 << 0)
+                  PAD_CTL_SRE_SLOW                (0 << 0)
+
+    required:
+      - fsl,pins
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    iomuxc: pinctrl@20e0000 {
+      compatible = "fsl,imx6ul-iomuxc";
+      reg = <0x020e0000 0x4000>;
+
+      mux_uart: uartgrp {
+        fsl,pins = <
+          0x0084 0x0310 0x0000 0 0 0x1b0b1
+          0x0088 0x0314 0x0624 0 3 0x1b0b1
+        >;
+      };
+    };
+  - |
+    iomuxc_snvs: pinctrl@2290000 {
+      compatible = "fsl,imx6ull-iomuxc-snvs";
+      reg = <0x02290000 0x4000>;
+
+      pinctrl_snvs_usbc_det: snvsusbcdetgrp {
+        fsl,pins = <
+          0x0010 0x0054 0x0000 0x5 0x0 0x130b0
+        >;
+      };
+    };
-- 
2.43.0


