Return-Path: <devicetree+bounces-210001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CA785B39DA0
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:46:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89EA6203691
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA0630FC01;
	Thu, 28 Aug 2025 12:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="K0hOY4fG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2BE21147B
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385155; cv=none; b=owTb05ssUZWBAJ7fUcGpNGOnV+mrTE3cLHhGglJ34gXLjymk9cT6mvp1A8AyX51kAnCqxpNag3UDUIj6Ym8Y1R2N/myKLqLM+Zgu3XlYTiZ7rJ4VksPktiSgMUP0ZgiWg8V1PoxrFSXiVcRN3V2bSJTey3ztbMOr22CQu5D0HzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385155; c=relaxed/simple;
	bh=D7JlYqTpC+y/zZZEn8ZQupPVDg0KbxwSki5Ii7Uk1fs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dIg18vGW88tW5Y5Eh63k0qZJyF+oxtLr/WrfoVbizSa8bOC8/r2FMPluxv8L+llq3E2K1GAKDFOp9wmAMQtHteYtbDotzDiDJCm4AzPMSqNw5lgAI1OxgXVoX89L5zSAzdnQnRfn1rZw8SpAEX6Mdb3UH6gocWoz42SohKV5OBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=K0hOY4fG; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-61cdab7eee8so896828a12.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756385151; x=1756989951; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uBz+6uZRhAuIyPnfIHCkIx6hrzv/9myk5UkNLISEK7M=;
        b=K0hOY4fGjxWam9gHmMC5R9JsaRzC5yNxheSpRs11yyUVma0Wud9HhCym96gUouJ46A
         36+XMx7Jm/OX64qGmQrV8Wex1AhCYgWrEVOc4cOdPrqIpOlo4CHtQepToxGl5MAiMxz8
         L6gc2WUU10HI9LVbwCNWY1+5jIpGSxy45j4r95Wcl6Qb90ixxpbOZ9mkuMfR2iCBfOfH
         r2lqhjvYeR1Md+V4Oqjh7u7mhO/0rYE49GNyOuIf+HSAoBjfiNCHDYSvXQEY1Vy5c2Ee
         nNlNqYItFHLoFueGsGf0A9IA6yb0Ll/czC8UBHUDo5+g07Hoc8YcqxZeKX4wYLiq+dZz
         MQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385151; x=1756989951;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uBz+6uZRhAuIyPnfIHCkIx6hrzv/9myk5UkNLISEK7M=;
        b=mQD7aQyox9GiO7jxDXyutu1B7EzrKusb85lgsc5VfOshP6f8PjmQzgmQbsDjAzUzXl
         bfUxTgCE0yckn+yn7HxAD1Nhq6+QDt//QuVR4RutClpARUvuTsalh+rNEqBj8zgDESzY
         NcbR9V8eGVJrIBGTVgbAkrpg/VroLw9mNf4QJ5SaL/JykDyfVF27fW7wh78xObjQh+2O
         wB8RENgvy/w6ai4+GCZK8X5dpfivaXQvDEePDghUCDBNQXWa01UoCLbMX1qLq5M6ADvR
         j05VKzwJ2EPPhfCCQ1uTPmeS2ZsrIup30BhH07saG1YXmTQfDZlPUlVveezujziHAi9X
         kSFA==
X-Forwarded-Encrypted: i=1; AJvYcCVIYHvD4jl/8q37DmRkDqoIwOCh6/7ZJssxtoT8KYozz3co9y5LLRhOeQTeAm7NMWUeBWwxucgCFybQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6IdrM+EhRsYPdHzZ4e8GRGgpb9qVZ4XQfelfnyEyFfWP21PSb
	uFPmJ1yO2cAbZpwOcr12LMi6YGxBfTRQ6u40+fSKm8fy27TojnzhTsSc4j4OZQLVGy0=
X-Gm-Gg: ASbGncusRuyA20UfQ/H9zDvYpKgTaCTm1V4kojhOzCjyUjpz8Bkhsc2lx4cMLRrr8Vt
	/a29c2hOOby6cKYnoOVQWp0XJ212A8yP6j7libMdI3n/oAgOy6+84nruH51gCc+Xitiwh39KHws
	0pTHLJCjiCsTYOwQ7SWEeBjftQ02FwZwzl+6gwMnvzkMU7Vymq8iX7xjZIPv20Je2K7cwc/wsAR
	5243iIFqSznzyQojDHDr/lKh4pnlSAvTWMJGLMDm3L18Lhc1ynk/1juwFnBth/0Pz/blwCjLPVl
	1ymI37asrkQdBNGTVw8cPlKH3vBxIeZFLmChhpTiP3+g1GA970XJZlw771U/CXYgNRJqxviAtil
	54rcp5Ju9cJw5oIqsZn1wFswb0D6RMO7cmx6ZcZv1/WpliHmjn8Y6xYVu060Z0HKgGqMS6tTjLP
	hfw8laA7yL45Guy7nZhENejO3KB3c=
X-Google-Smtp-Source: AGHT+IGPdnslhHtWwDXi8CWf0WUgTci6zKmKHxIJAPlEjB/fI84WomFtAqz/+4k3SGbnuYIM9OOe/w==
X-Received: by 2002:a17:907:3d91:b0:afe:8bee:fdb9 with SMTP id a640c23a62f3a-afe8beefe3dmr1180328466b.28.1756385150607;
        Thu, 28 Aug 2025 05:45:50 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afedaa774d1sm186721966b.89.2025.08.28.05.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:45:50 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: linus.walleij@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	wahrenst@gmx.net,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	iivanov@suse.de,
	svarbanov@suse.de,
	mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Cc: Andrea della Porta <andrea.porta@suse.com>
Subject: [PATCH v4 1/3] dt-bindings: pinctrl: Add support for Broadcom STB pin controller
Date: Thu, 28 Aug 2025 14:47:38 +0200
Message-ID: <7ed0f2779829f4e63b69d8cf5cedda9f849996bc.1756372805.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <cover.1756372805.git.andrea.porta@suse.com>
References: <cover.1756372805.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "Ivan T. Ivanov" <iivanov@suse.de>

The STB pin controller represents a family whose silicon instances
are found e.g. on BCM2712 SoC.

In particular, on RaspberryPi 5, there are two separate instantiations
of the same IP block which differ in the number of pins that are
associated and the pinmux functions for each of those pins. The
-aon- variant stands for 'Always On'.

Depending on the revision of the BCM2712 (CO or D0), the pin
controller instance has slight differences in the register layout.

Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../pinctrl/brcm,bcm2712c0-pinctrl.yaml       | 137 ++++++++++++++++++
 1 file changed, 137 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
new file mode 100644
index 000000000000..1e5d5234ee8d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
@@ -0,0 +1,137 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/brcm,bcm2712c0-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom STB family pin controller
+
+maintainers:
+  - Ivan T. Ivanov <iivanov@suse.de>
+  - A. della Porta <andrea.porta@suse.com>
+
+description: >
+  Broadcom's STB family of memory-mapped pin controllers.
+
+  This includes the pin controllers inside the BCM2712 SoC which
+  are instances of the STB family and has two silicon variants,
+  C0 and D0, which differs slightly in terms of registers layout.
+
+  The -aon- (Always On) variant is the same IP block but differs
+  in the number of pins that are associated and the pinmux functions
+  for each of those pins.
+
+allOf:
+  - $ref: pinctrl.yaml#
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2712c0-pinctrl
+      - brcm,bcm2712c0-aon-pinctrl
+      - brcm,bcm2712d0-pinctrl
+      - brcm,bcm2712d0-aon-pinctrl
+
+  reg:
+    maxItems: 1
+
+patternProperties:
+  '-state$':
+    oneOf:
+      - $ref: '#/$defs/brcmstb-pinctrl-state'
+      - patternProperties:
+          '-pins$':
+            $ref: '#/$defs/brcmstb-pinctrl-state'
+        additionalProperties: false
+
+$defs:
+  brcmstb-pinctrl-state:
+    allOf:
+      - $ref: pincfg-node.yaml#
+      - $ref: pinmux-node.yaml#
+
+    description: >
+      Pin controller client devices use pin configuration subnodes (children
+      and grandchildren) for desired pin configuration.
+
+      Client device subnodes use below standard properties.
+
+    properties:
+      pins:
+        description:
+          List of gpio pins affected by the properties specified in this
+          subnode (either this or "groups" must be specified).
+        items:
+          pattern: '^((aon_)?s?gpio[0-6]?[0-9])|(emmc_(clk|cmd|dat[0-7]|ds))$'
+
+      function:
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
+        enum: [ gpio, alt1, alt2, alt3, alt4, alt5, alt6, alt7, alt8,
+                aon_cpu_standbyb, aon_fp_4sec_resetb, aon_gpclk, aon_pwm,
+                arm_jtag, aud_fs_clk0, avs_pmu_bsc, bsc_m0, bsc_m1, bsc_m2,
+                bsc_m3, clk_observe, ctl_hdmi_5v, enet0, enet0_mii, enet0_rgmii,
+                ext_sc_clk, fl0, fl1, gpclk0, gpclk1, gpclk2, hdmi_tx0_auto_i2c,
+                hdmi_tx0_bsc, hdmi_tx1_auto_i2c, hdmi_tx1_bsc, i2s_in, i2s_out,
+                ir_in, mtsif, mtsif_alt, mtsif_alt1, pdm, pkt, pm_led_out, sc0,
+                sd0, sd2, sd_card_a, sd_card_b, sd_card_c, sd_card_d, sd_card_e,
+                sd_card_f, sd_card_g, spdif_out, spi_m, spi_s, sr_edm_sense, te0,
+                te1, tsio, uart0, uart1, uart2, usb_pwr, usb_vbus, uui, vc_i2c0,
+                vc_i2c3, vc_i2c4, vc_i2c5, vc_i2csl, vc_pcm, vc_pwm0, vc_pwm1,
+                vc_spi0, vc_spi3, vc_spi4, vc_spi5, vc_uart0, vc_uart2, vc_uart3,
+                vc_uart4 ]
+
+      bias-disable: true
+      bias-pull-down: true
+      bias-pull-up: true
+
+    required:
+      - pins
+
+    if:
+      properties:
+        pins:
+          not:
+            contains:
+              pattern: "^emmc_(clk|cmd|dat[0-7]|ds)$"
+    then:
+      required:
+        - function
+    else:
+      properties:
+        function: false
+
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    brcm_pinctrl: pinctrl@7d504100 {
+        compatible = "brcm,bcm2712c0-pinctrl";
+        reg = <0x7d504100 0x30>;
+
+        bt-shutdown-default-state {
+           function = "gpio";
+           pins = "gpio29";
+        };
+
+        uarta-default-state {
+            rts-tx-pins {
+                function = "uart0";
+                pins = "gpio24", "gpio26";
+                bias-disable;
+            };
+
+            cts-rx-pins {
+                function = "uart0";
+                pins = "gpio25", "gpio27";
+                bias-pull-up;
+            };
+        };
+    };
-- 
2.35.3


