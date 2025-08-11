Return-Path: <devicetree+bounces-203346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 886BAB20C68
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 16:46:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F18E67ADCA8
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 14:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D3A02DCF5C;
	Mon, 11 Aug 2025 14:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="XlSDErxm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com [209.85.218.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 680982D5C91
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 14:45:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754923513; cv=none; b=C2R8KETBfoRVqXitAYkU5n523VFrCNVsdXkrqtdXjy/4G++AkNX2ITvQyWtUGrnuY0wJBTNn0ibCbCQIqOYm2J6/FEXCYg+bL4fwz5RuMq0J4RJUvK7EoxfJz4CyAm6UMauN72FyINqzSc1hG9NVsEUUxKnlJ5AhjZrkGR2zmOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754923513; c=relaxed/simple;
	bh=TbQRXEWfGEAqwdEnUaUm6vGN0Pv/eFmzgGUL15Hx9qw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JMaf/vO6dT/35FELdlF9pa5cOOhcUC827nOoYzEKU3GTq5EGpzToZjji6VrWYDmSa0DyIerh5/oCzptw7w6QrDFkFr4T0uOZonFTxxAS0MIocepUTGQwthvRQ6BsSSNaJeNuVXt0mHe2Epp+J1oIAFalnFh9xGzSgblMZEv+fio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=XlSDErxm; arc=none smtp.client-ip=209.85.218.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f67.google.com with SMTP id a640c23a62f3a-ae6f8d3bcd4so788741666b.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 07:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1754923509; x=1755528309; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1opvmD5Gf0O7HnczCsyP5v9V35Vbg6CWzWpnJdyIB0=;
        b=XlSDErxmwmXWOmH4sXmfOxm5sGHLpGCoacoV8U6j7wOMeMmB1x4gIS89hSUd8sJ+Z1
         jrWNLQ6JG21fD5CQNJOq0/0/iQf8KavDIpG1AtBkkDtvbphPbPbISUGIEOtqpVj61dIN
         WtisvmWetqgwcJrLYT8AoZ0hNWlWEdLZHuEPoahoFHlmRGdNk6spi30DwYcuXMSy/NTg
         h1jtux6PkKOZN4NJlytwe3d8zElTlwwoUssYBdCZHCkbHps+1cpkY6foRNdclgDER3Qr
         dMBfS6StNh88uLnxXSMr9u2Jh5GFYLv0T0HTwN3EvIy2+zw74FnBQHEoprBSXJmj0YWR
         2auA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754923509; x=1755528309;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s1opvmD5Gf0O7HnczCsyP5v9V35Vbg6CWzWpnJdyIB0=;
        b=HPbopc0aZnojC0nttWndzWmLp/miZPoZL3MW7RT/5tFegsu3gNmyz11+mNQMFJEYwR
         Rwn06pI7hr1hxdlMm684K2VTvwi+CjjGgKnBAn2R5sbwPsNmgdsNcWp/K9yFhotcClJW
         OJGQtMWmQMFoDadxwh0+n3WjPYMFBc9S/LkthC5TpdIQjOZ+rky2gQq18fi7KVVQh7bs
         4Wm5YtCSo7TrXsot48TBTnjZ5s9A4p2FvwKWC/B/Dewhiij5/82/RSaSXYyaIOma25u3
         u4w9zbARM35lLlFF7K3xdVEH79aJxofOQFldHoGl5WWxZf8g+FdG4COKixiOxFFUbAut
         gu7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVLmcC1mJNZUvbU1enFNM/PtGoM1eW2TUZ4hdAqs1/gnQIN+/+Gao12EcBR4B+HKEbBn+hIxnyc4nHz@vger.kernel.org
X-Gm-Message-State: AOJu0Yyf1zgMcQaSXwy7tE2rNQrKd4bOwEk6tmZ/MBkmXZ1xO7kH3ziM
	BjZMSimy9OO7nZXZiatroG4EixkBJ7QZkry5WRMxBdHxGGdSuR1V5y1uAWyrWk6Xsz8x6znAGTk
	RxY+bnw70jw==
X-Gm-Gg: ASbGncs63TpHbZsIOc2wUCKUqFiP8pNQNSMQ+U0BD2AFJH8peJxTeanhqh1kHZE67n0
	Sbzo+o0czcd5ECocoYdM/AWQkNOCIf+jdXPPvdH8HMidinxONDOI5LROa0Yj0NmYck55JCbg5eD
	HfG7d8tze8U+IoUZdH0zZmVnzmDfHIN0wjw+pdIkfftmt8LAvf/tiPkyaJdWs6WeFdheGgXflOq
	sdS+ovQohSJSgy1l2v/l6upt9UQrAwye/9j/IyDvIZe+wSmdTMSCSigxhKrL8irketQszmVrB4A
	Be1E+JlJ6MO3DzGTU/GGv5aNYswxczHqztD/Bx4WX5F7z5iDyzBu2HaCFbnXdz9U1oPWQMwOUuc
	TAizpOs9ihNn5R3kHwtmamS/1I//rX92lYBqUvGHpNjg+JhNPRouSFotgDymaWgwBZw==
X-Google-Smtp-Source: AGHT+IGnbODAKC0QhobAqDzUSNdh1Q7avIaZAEjyMZjxOFUSbgZxhg+kWhsqIK/Yr8CBAFklngPMcQ==
X-Received: by 2002:a17:907:3e1b:b0:af9:709f:970b with SMTP id a640c23a62f3a-af9c64b14bcmr1205314066b.46.1754923508614;
        Mon, 11 Aug 2025 07:45:08 -0700 (PDT)
Received: from localhost (host-79-44-170-80.retail.telecomitalia.it. [79.44.170.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a21c157sm2040464466b.100.2025.08.11.07.45.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 07:45:07 -0700 (PDT)
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
Subject: [PATCH v3 1/3] dt-bindings: pinctrl: Add support for Broadcom STB pin controller
Date: Mon, 11 Aug 2025 16:46:51 +0200
Message-ID: <6fdbaf2bd0b72badbb5384e43b97bebcda4cc2f0.1754922935.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1754922935.git.andrea.porta@suse.com>
References: <cover.1754922935.git.andrea.porta@suse.com>
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
 .../pinctrl/brcm,bcm2712c0-pinctrl.yaml       | 135 ++++++++++++++++++
 1 file changed, 135 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
new file mode 100644
index 000000000000..28d66336aa2e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712c0-pinctrl.yaml
@@ -0,0 +1,135 @@
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
+description:
+  Broadcom's STB family of memory-mapped pin controllers.
+  This includes the pin controllers inside the BCM2712 SoC which
+  are instances of the STB family and has two silicon variants,
+  C0 and D0, which differs slightly in terms of registers layout.
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
+    description:
+      Pin controller client devices use pin configuration subnodes (children
+      and grandchildren) for desired pin configuration.
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
+        description:
+          Specify the alternative function to be configured for the specified
+          pins.
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


