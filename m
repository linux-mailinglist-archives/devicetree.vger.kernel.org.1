Return-Path: <devicetree+bounces-59004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C068A3F60
	for <lists+devicetree@lfdr.de>; Sun, 14 Apr 2024 00:14:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3CDF2816BE
	for <lists+devicetree@lfdr.de>; Sat, 13 Apr 2024 22:14:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C17375730A;
	Sat, 13 Apr 2024 22:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="c4Wxe5en"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D0556B7B
	for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 22:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713046485; cv=none; b=HT9dVOxHbPpw5da+ZmLskAEDhF8mRyqS8cxSIke+i9qM7E9QuxJEp5PPmDj+XLwbcH5L63IMvcc3kaYWJ/MJWW+5dJnd2Ar5P6lZScmCcBzlZDuIuBD25dzsEkxzySOwnNUO2K/lroHu1VMgvGe8bJHVS7Ij5tFm31n9rdSinLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713046485; c=relaxed/simple;
	bh=4IEOevbT+EXFyMqOZWAejLbNHWKkLa13ytu7fg6PdRA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=E78UiupoYcES+vqh9pmmRruK4771JjdZLiBeDzum/E4Mv4Bqec0p6/k1SOmRlwOOswwXqACmPdbfdR0nXRfrEJTK4DLqMFKRHKH+wybhDoV/y02pTlVLvpuHPHYaxcEr5tkkxXbQp2V8SlgFYVia7Q8k2KTsV8RoHgvHqOzE1rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=c4Wxe5en; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56e47843cc7so1907830a12.0
        for <devicetree@vger.kernel.org>; Sat, 13 Apr 2024 15:14:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1713046482; x=1713651282; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YTT6p3JdD6iIGkz1qRSEnktJlf1231ftu3Zq8pQLVBE=;
        b=c4Wxe5enB6nCJ/s8VPvv7UngnYXrJwJEnZlXoHJpMLM5TXR84LIYsxb7gG+zimgwJn
         Vw9pqTgwSUWS0YNw3Ma93tpHxEoFxOdW9sb+EEKPXIuZrQOrfPQgGM71H09TPANBn+m9
         jP5swW1NY3aVJoMIejKLOHDnviZU3V+OPKGzsYVD56UK2C2M7lUKAa7crgiX908aSpYx
         Nwyb5dduIk8et9lxyH50Z4yyPix/+yBKhBXrvwoIEWXFpKdRVEaSsGMSE8LberN2AzPz
         HmtjweyUBQKS+ZcgjOHqmMaUjrKRWmAjIgV8bBP3qmpCBqQVDi1W7L2YSUIxIT5uW/fw
         jwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713046482; x=1713651282;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YTT6p3JdD6iIGkz1qRSEnktJlf1231ftu3Zq8pQLVBE=;
        b=NUbzvEKkR3VkeKZmE0e4ROM8usOWU81HnN1sapZS10UXwxjPXpSBpk9lpxSnKfgSvY
         WV4qcoQ+BwM8zRUN0+CHUg9kSoI/6dpIH0I8KltOn7xMpJ8rvhmlf2+cQvEpbM12DVks
         S4Jq7n02kvUxzACFU4I1/mxi2lXz2ZEIguX95ZK/owsegDUu+4QkSEqHgnZOy+3gfjvW
         dRymuzsC8q8dO/5qYs6sAE87kIMgH9H61bCEG3OC/dFTlCc/oxXeL/Jw9aAVpiIkP9VP
         Pkkb+maT8mWxec4mb0DYwehcRpm89xMRgijwJkU7tMzGQUb3/4GBa2Dlc3zixjsCf/wm
         2Feg==
X-Forwarded-Encrypted: i=1; AJvYcCWyEF+mfhKwaAAaORj1yHID5WeC7MTRMcas9yK3ES7StlR7EEsL1MPSYnD68chh65L8NS/dTpsI3jhzIV/GA0OgPc+vjCEx9Y4UPA==
X-Gm-Message-State: AOJu0Yw+Y0Yn+kodO06eGkH6Fs656mk3P5K4Fr0wqeKdS2Hnpqb8+8Ye
	/gSR96j7EaF9URxc5Oh7TZ7y8FuV2r4I7XhJEl/m0Co/Sf2JaA40aHqNkQtf4nk=
X-Google-Smtp-Source: AGHT+IHvdgPgM6YCX7nXGiRe0PMOpJ528SyHSzEBMH11ypp2OlQZEyO0zCKKKxpm14WAjFxMlCHWNA==
X-Received: by 2002:a50:d59e:0:b0:56c:5a7b:5dbd with SMTP id v30-20020a50d59e000000b0056c5a7b5dbdmr3850975edi.15.1713046482214;
        Sat, 13 Apr 2024 15:14:42 -0700 (PDT)
Received: from localhost (host-87-4-160-102.retail.telecomitalia.it. [87.4.160.102])
        by smtp.gmail.com with ESMTPSA id x7-20020a056402414700b0056feb6315easm2782050eda.1.2024.04.13.15.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Apr 2024 15:14:41 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Kamal Dasu <kamal.dasu@broadcom.com>,
	Al Cooper <alcooperx@gmail.com>,
	della Porta <andrea.porta@suse.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: [PATCH 1/6] dt-bindings: pinctrl: Add support for BCM2712 pin controller
Date: Sun, 14 Apr 2024 00:14:23 +0200
Message-ID: <2d1272cad92ad618297a6683e9264e31b8f2df73.1713036964.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1713036964.git.andrea.porta@suse.com>
References: <cover.1713036964.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 .../pinctrl/brcm,bcm2712-pinctrl.yaml         | 99 +++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/brcm,bcm2712-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712-pinctrl.yaml
new file mode 100644
index 000000000000..2908dfe99f3e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2712-pinctrl.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/brcm,bcm2712-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM2712 pin controller
+
+maintainers:
+  - Andrea della Porta <andrea.porta@suse.com>
+
+description:
+  Bindings for Broadcom's BCM2712 memory-mapped pin controller.
+
+properties:
+  compatible:
+    enum:
+      - brcm,bcm2712-pinctrl
+      - brcm,bcm2712-aon-pinctrl
+      - brcm,bcm2712c0-pinctrl
+      - brcm,bcm2712c0-aon-pinctrl
+      - brcm,bcm2712d0-pinctrl
+      - brcm,bcm2712d0-aon-pinctrl
+
+  reg:
+    items:
+      - description: pin control registers
+
+allOf:
+  - $ref: pinctrl.yaml#
+
+required:
+  - compatible
+  - reg
+
+additionalProperties:
+  anyOf:
+    - type: object  
+      allOf:
+        - $ref: pincfg-node.yaml#
+        - $ref: pinmux-node.yaml#
+
+      properties:
+        function: 
+          enum: [ gpio, alt1, alt2, alt3, alt4, alt5, alt6, alt7, alt8,
+                 aon_cpu_standbyb, aon_fp_4sec_resetb, aon_gpclk, aon_pwm,
+                 arm_jtag, aud_fs_clk0, avs_pmu_bsc, bsc_m0, bsc_m1, bsc_m2,
+                 bsc_m3, clk_observe, ctl_hdmi_5v, enet0, enet0_mii,
+                 enet0_rgmii, ext_sc_clk, fl0, fl1, gpclk0, gpclk1, gpclk2,
+                 hdmi_tx0_auto_i2c, hdmi_tx0_bsc, hdmi_tx1_auto_i2c,
+                 hdmi_tx1_bsc, i2s_in, i2s_out, ir_in, mtsif, mtsif_alt,
+                 mtsif_alt1, pdm, pkt, pm_led_out, sc0, sd0, sd2, sd_card_a,
+                 sd_card_b, sd_card_c, sd_card_d, sd_card_e, sd_card_f,
+                 sd_card_g, spdif_out, spi_m, spi_s, sr_edm_sense, te0, te1,
+                 tsio, uart0, uart1, uart2, usb_pwr, usb_vbus, uui, vc_i2c0,
+                 vc_i2c3, vc_i2c4, vc_i2c5, vc_i2csl, vc_pcm, vc_pwm0,
+                 vc_pwm1, vc_spi0, vc_spi3, vc_spi4, vc_spi5, vc_uart0,
+                 vc_uart2, vc_uart3, vc_uart4 ]
+
+        pins:
+          items:
+            pattern: "^((aon_)?s?gpio[0-6]?[0-9])|(emmc_(clk|cmd|dat[0-7]|ds))$"
+
+        bias-disable: true
+        bias-pull-down: true
+        bias-pull-up: true
+      additionalProperties: false
+
+    - type: object
+      additionalProperties:
+        $ref: "#/additionalProperties/anyOf/0"
+
+examples:
+  - |
+    pinctrl: pinctrl@7d504100 {
+      compatible = "brcm,bcm2712-pinctrl";
+        reg = <0x7d504100 0x30>;
+
+        uarta_24_pins: uarta_24_pins {
+          pin_rts {
+            function = "uart0";
+            pins = "gpio24";
+            bias-disable;
+        };
+
+        pin_cts {
+            function = "uart0";
+            pins = "gpio25";
+            bias-pull-up;
+        };
+      };
+
+      spi10_gpio2: spi10_gpio2 {
+        function = "vc_spi0";
+        pins = "gpio2", "gpio3", "gpio4";
+        bias-disable;
+      };
+    };
+...
-- 
2.35.3


