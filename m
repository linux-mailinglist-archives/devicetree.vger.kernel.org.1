Return-Path: <devicetree+bounces-253915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA121D12963
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 13:45:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 26A8E305BCEC
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 12:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AFDD357A3C;
	Mon, 12 Jan 2026 12:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="cDlpH1BM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15590.qiye.163.com (mail-m15590.qiye.163.com [101.71.155.90])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE8B4357A50;
	Mon, 12 Jan 2026 12:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.90
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768221868; cv=none; b=JcwWR0oH3ZIqtwzcAeHBwwOIOxHEgu7VmMBqzdCmCnYNJvPJnVNjlaAIxwM4hcwf+O3Sh3FGOY8gcNrIWycIjQ3AgPqo+rQy4vgg17r8DX7Sh1ckUKGdITD4Y2ehY2FiX9t8ZQdhzWUVErneV80FNCdxQzcaMvXVIPMjoeABN0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768221868; c=relaxed/simple;
	bh=b1LAfnyYMBhLKv8Sz2WZ9NO7yPg/4Woob+nCMlI5+I4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dHFb6io8MahuWUN8K9hAK6uHC2NoGebjW/Nn5x40Pg/NPVo6LkJ59i81JVaWTyZGw8I/vVft4QDAv2sihUwE6oCNVE9aYSO5wUXQcIjrSWXjYa5bVHTbnFWDXVZQSraqF+/yMjF3MdWOq+R1SvNL9JL2u6lsu7MVwvjnI4JnLqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=cDlpH1BM; arc=none smtp.client-ip=101.71.155.90
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30573044a;
	Mon, 12 Jan 2026 20:44:15 +0800 (GMT+08:00)
From: Joseph Chen <chenjh@rock-chips.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Joseph Chen <chenjh@rock-chips.com>
Subject: [PATCH v3 1/3] dt-bindings: mfd: Add rk801 binding
Date: Mon, 12 Jan 2026 20:43:49 +0800
Message-Id: <20260112124351.17707-2-chenjh@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260112124351.17707-1-chenjh@rock-chips.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-HM-Tid: 0a9bb23c4efa09d2kunm3fddfe07a7c2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxNQlZJGBoYQ0pCHU1DTxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cDlpH1BMYYZdN1TWXxCXeyvUCQtGkH47q9CK/F96Da9iPvzqPvJqx3QK3DItT4GPIECGqq6krzhCZreTl3vZsmJm+GDSHXhnT1i8JM2gNuuw4fRdMFXkmuLZ16ppLbASYQxxsl1AiWSIrxzrwVf3jU6t1yv9DUMQSV0Pp1PgoKk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2S8QoD+nAVfBD+btYxoEeVM+/hE0CQqqhO0ZYPFytuQ=;
	h=date:mime-version:subject:message-id:from;

Add DT binding document for Rockchip's RK801 PMIC

Signed-off-by: Joseph Chen <chenjh@rock-chips.com>
---
 .../bindings/mfd/rockchip,rk801.yaml          | 197 ++++++++++++++++++
 1 file changed, 197 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
new file mode 100644
index 00000000000..7c71447200b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk801.yaml
@@ -0,0 +1,197 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/rockchip,rk801.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RK801 Power Management Integrated Circuit
+
+maintainers:
+  - Joseph Chen <chenjh@rock-chips.com>
+
+description: |
+  Rockchip RK801 series PMIC. This device consists of an i2c controlled MFD
+  that includes multiple switchable regulators.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk801
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  system-power-controller:
+    type: boolean
+    description:
+      Telling whether or not this PMIC is controlling the system power.
+
+  wakeup-source:
+    type: boolean
+    description:
+      Device can be used as a wakeup source.
+
+  vcc1-supply:
+    description:
+      The input supply for dcdc1.
+
+  vcc2-supply:
+    description:
+      The input supply for dcdc2.
+
+  vcc3-supply:
+    description:
+      The input supply for dcdc3.
+
+  vcc4-supply:
+    description:
+      The input supply for dcdc4.
+
+  vcc5-supply:
+    description:
+      The input supply for ldo1.
+
+  vcc6-supply:
+    description:
+      The input supply for ldo2.
+
+  vcc7-supply:
+    description:
+      The input supply for switch.
+
+  regulators:
+    type: object
+    patternProperties:
+      "^(dcdc[1-4]|ldo[1-2]|switch)$":
+        type: object
+        $ref: /schemas/regulator/regulator.yaml#
+        unevaluatedProperties: false
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        rk801: pmic@27 {
+            compatible = "rockchip,rk801";
+            reg = <0x27>;
+            interrupt-parent = <&gpio0>;
+            interrupts = <RK_PC0 IRQ_TYPE_LEVEL_LOW>;
+            pinctrl-names = "default";
+            pinctrl-0 = <&pmic_int_l>;
+            system-power-controller;
+            wakeup-source;
+
+            vcc1-supply = <&vcc_sys>;
+            vcc2-supply = <&vcc_sys>;
+            vcc3-supply = <&vcc_sys>;
+            vcc4-supply = <&vcc_sys>;
+            vcc5-supply = <&vcc3v3_sys>;
+            vcc6-supply = <&vcc3v3_sys>;
+            vcc7-supply = <&vcc3v3_sys>;
+
+            regulators {
+                vdd_cpu: dcdc1 {
+                    regulator-name = "vdd_cpu";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <1500000>;
+                    regulator-initial-mode = <0x1>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <950000>;
+                    };
+                };
+
+                vcc3v3_sys: dcdc2 {
+                    regulator-name = "vcc3v3_sys";
+                    regulator-min-microvolt = <3300000>;
+                    regulator-max-microvolt = <3300000>;
+                    regulator-initial-mode = <0x1>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-on-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+
+                vcc_ddr: dcdc3 {
+                    regulator-name = "vcc_ddr";
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-on-in-suspend;
+                    };
+                };
+
+                vdd_logic: dcdc4 {
+                    regulator-name = "vdd_logic";
+                    regulator-min-microvolt = <500000>;
+                    regulator-max-microvolt = <1500000>;
+                    regulator-initial-mode = <0x1>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-mode = <0x2>;
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <900000>;
+                    };
+                };
+
+                vdd0v9_sys: ldo1 {
+                    regulator-name = "vdd0v9_sys";
+                    regulator-min-microvolt = <900000>;
+                    regulator-max-microvolt = <900000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <900000>;
+                    };
+                };
+
+                vcc_1v8: ldo2 {
+                    regulator-name = "vcc_1v8";
+                    regulator-min-microvolt = <1800000>;
+                    regulator-max-microvolt = <1800000>;
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <1800000>;
+                    };
+                };
+
+                vcc_3v3: switch {
+                    regulator-name = "vcc_3v3";
+                    regulator-boot-on;
+                    regulator-always-on;
+                    regulator-state-mem {
+                        regulator-off-in-suspend;
+                        regulator-suspend-microvolt = <3300000>;
+                    };
+                };
+            };
+        };
+    };
-- 
2.25.1


