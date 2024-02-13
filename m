Return-Path: <devicetree+bounces-41112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E038526AE
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 02:39:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E58528676F
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 01:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 398A964CE9;
	Tue, 13 Feb 2024 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPSKesRD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F03C24B33;
	Tue, 13 Feb 2024 01:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707786233; cv=none; b=nUnVaQ+jMOgR1xuY/H0oRrkdhoFcfj4YvOnjEahE1PdOdHuWE2WB7pa/Ikg9c4UnpoHRzCoXM9zOaUZ4nmlOg+5LdvLPMZpVxkCNNJGJRmjrEf/Rn269VkvSFfpgKT6oUa4mtN4jZ3VdKgwQSVUmGNVaVSeayzKKdrUJTHNf3oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707786233; c=relaxed/simple;
	bh=OuIAXsTXeI+yVn+RPThfGxCtRwDO4KvymqLeppySnxg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uhJ6v5AeKWrqn3RSe+AiwVpxv9qz6tU6cXeVe0owBGdffmFf5awpX0xQ3nael4Msvti03jPuYwqYu9P+6dFAQmnbahLuelx3oKhH3zrqGVyDuxTGtxFtpfDja87pgURGV9CjcSPDywZp0S9NZfZZjYGUlcpR06Hhko7R5FW7PDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPSKesRD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E802C43399;
	Tue, 13 Feb 2024 01:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707786232;
	bh=OuIAXsTXeI+yVn+RPThfGxCtRwDO4KvymqLeppySnxg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lPSKesRDE06+8WuupQyUWtJr/tCM/7Db30TYpk+YC50IErw/appwRN9Rkn8yNVStK
	 jgIHdUzDlaixwv6zOVEWCTZJTzHl+7BhINotx4MnUgFgZ3gyoHkh2xyKnGSHh5fXdd
	 z7dHf9NryJugUsbdrL91u4rh+d4U9X4V7ZLdA36hbAcSekVh8YfayF93ZWF9bwwTv6
	 hdU5wTfBv8vbEl6sk/fdswbb8NeyriWaDjb28haB2R33qm3Yq7YWJcVxaS7klj3mcL
	 nAzkWZyRf/J3t5zfk81f1g+4YxUZ0TuwTuvp6wgNGVa17ScgzyPzP3LUeobQYYJUEH
	 2nebYieEmVlMw==
Received: by mercury (Postfix, from userid 1000)
	id 22CDA106A02E; Tue, 13 Feb 2024 02:03:49 +0100 (CET)
From: Sebastian Reichel <sre@kernel.org>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/17] dt-bindings: pinctrl: fsl,imx6ul-pinctrl: convert to YAML
Date: Tue, 13 Feb 2024 02:00:50 +0100
Message-ID: <20240213010347.1075251-2-sre@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213010347.1075251-1-sre@kernel.org>
References: <20240213010347.1075251-1-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert i.MX6UL pinctrl bindings to YAML.

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


