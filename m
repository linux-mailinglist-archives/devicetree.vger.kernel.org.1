Return-Path: <devicetree+bounces-246022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F92CB7DB0
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 05:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9021A303091F
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 04:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65EE2D592E;
	Fri, 12 Dec 2025 04:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RB/Ou2Zd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC91299A9E
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 04:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765513564; cv=none; b=rgHZWCp8W06VGdrDjCfOsug5fCQUsPZzAnd18c3y4RVPPact/eJmPAyFBLbI7Bq4d353huEjV2HLaCkm7WwOsk2LjrzbHkAnQKQh3uZLSWrLW5fgbdCoAUr/QXL1+u27ZQWVF79JP0VjMEqKlXqY/IpzWzIYgQuMGzKvy8Nmmlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765513564; c=relaxed/simple;
	bh=S2cZaxAXmLHz+swNGZSf8KT07NnLS5RS1N+gTSFWC34=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NzgGtFrcKeUNBv09OPJeUHj6nygsdOy+lHyEJz0YgvYlvC2um7imZcYVm/Oq7NCrlwxoJjsO/Q4UhiuPzAf4RfrPO30LUiKry39lrQ60m13a2JSooa4aVW6tIiQ3vdyMJhRJqy1QmQJDYOi9JLEC/p7H0p7HX+rZcTeXBRT1DQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RB/Ou2Zd; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5dfccb35b10so521027137.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 20:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765513562; x=1766118362; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UufGb0rKHu2w9BuInnc2Tq0+bwmLShNvOcZfPsVQ+0k=;
        b=RB/Ou2Zd2Qd2R2VOisQiCXhHMLr7yEQZWNr4+LtnbK9uHxIPpyoHR978QHIyzQDNKJ
         mOekHT0IFaMgTEFugpPs+j0WrU/UOZpcTl6Bjuutltmt6Jw65YYioxZZ0hQxeL+fR8wz
         cITJpirj/+DloDIsKT8+bUDFmFAW/Nsr6cnU3MjjipZjYrTrRDoIUOoVv3oCFRPolazS
         4xHxcAgsrgcosSv9JRO9ABKXeELntdOmM37lplM4jJz/THtRC9gm8TMZBNPfgdIIUBsp
         RpaAAEmjqjQTAF0qMzdclb04PFLcmqvbqjceCOASUsl4HLwHlopFAKibP/xT2cYhI6G1
         XWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765513562; x=1766118362;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=UufGb0rKHu2w9BuInnc2Tq0+bwmLShNvOcZfPsVQ+0k=;
        b=tcBxRCE3Vt28RLl2E61hhfyHEYjDRxKR9VZKm/IOrULXD0VtdkeWf5GKK4BCQnsFLl
         +NiGkYIMa31YWxoMgD0eX6F9BnUJH6/ze8TLyo3kQQXIoQSQ0BYl1k3Y3YPmhoQ51pth
         usiiqDhbwdlaOrLK0tPrgPfxkPKBIbe2UOXOVWmZyudu9PpaTsqXhFUAWK1k/xGBvp8n
         sH8+EGNxVO5WphYQJyCnSl81Cbn3eEmOPxXvBU6Eox7iGGl3n/dQbOoDMnBPGyfJTgLf
         7ltpZtwxzgNxzLLruXRd9lrQwKkDAfIsRIOMtxLfePdEE22OP+z8/hedkw4AKuRS240X
         Af+g==
X-Forwarded-Encrypted: i=1; AJvYcCWd4/dB/UnF+9hyrKEC0djnPTuItz++b2nyklfW0UOote1HkMQ4FwjP7vEVLYZaMnlnU4B2vy+rT+92@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl0WPOmX0ZGw2YmFMLYp+FozMEBecaNQf2iaH9fi+yU1kRwgW7
	A5Zr+Af2rB2V9T8uRg0S9SPXQsE/cMdCAPqwERpZwXC89L7+KsUX6q6A8G1L+A==
X-Gm-Gg: AY/fxX5zgzSFzk9ALLWdWxtGULR8YDpJNm4o1Ws8CwrA1GQ95GQArKWH4xgnmIUfjOA
	JdI7wgxdTi2BA7C3I6dRTSSBLgfGFIZke9/A/QGJdvuNMPgFRSiBviOEULcwBBtFH8zpN6oET1l
	QGumpnQViS1i9DR171poeODdsREkaMTHojgGbw8ln5nfE2BPJ1b4Fu0j7/rYKtl9J2T5sKfdtc0
	Xb/FqXJJQzrHAX8PJkgVrdpCGUBRAUOgeRDFd0nhhJwhWH4jopd1w5i/uwgHsWWXA48jvcULy9s
	ve57wzDFVN+npkDwtik4zITTEdyO4+mxi0ZNbOHtE1bCG73Oc3rNHcgLgXFMFtMKJVIkiX4KRLt
	oFKyRJpJTZZyFsK4cf/PcqM+8JBCEPNZdDN3QuQXjfpQflqWPPMhRy+22/rn57LRE722BA1T/Qv
	Gl71eDr5RkripjJSFAcIhYepA=
X-Google-Smtp-Source: AGHT+IEvFIxRTDz8QgR2ys1Z2x8FJaaFiUN5+MRsBxl+vO0DwVxa/+ZrCgnWm+sl76GNHtox5PZx/w==
X-Received: by 2002:a05:6102:f06:b0:5db:32dc:f05b with SMTP id ada2fe7eead31-5e827837dd1mr196127137.42.1765513561977;
        Thu, 11 Dec 2025 20:26:01 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93f5ad0ca0asm1489016241.6.2025.12.11.20.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 20:26:01 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Date: Thu, 11 Dec 2025 23:25:43 -0500
Subject: [PATCH v8 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-ads1x18-v8-1-5cd12ac556da@gmail.com>
References: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
In-Reply-To: <20251211-ads1x18-v8-0-5cd12ac556da@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tobias Sperling <tobias.sperling@softing.com>
Cc: David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Kurt Borja <kuurtb@gmail.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3274; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=S2cZaxAXmLHz+swNGZSf8KT07NnLS5RS1N+gTSFWC34=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJnWM0Ojpx+7o28h9VPBzv4OTy/fToMVsvsuzjuV3Bx0Z
 b4Yj11NRykLgxgXg6yYIkt7wqJvj6Ly3vodCL0PM4eVCWQIAxenAExkFy8jw6pVk9nkrn+vv/R0
 H6fAQuYdTJcXpHixWy1pjLEvbo9IaWFk2M3fu2lKzaabe81Ef60/06D3uWVpl2Xu45fXCp+JmE/
 35QUA
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A

Add documentation for Texas Instruments ADS1018 and ADS1118
analog-to-digital converters.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Kurt Borja <kuurtb@gmail.com>
---
 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    | 82 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 ++
 2 files changed, 88 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
new file mode 100644
index 000000000000..81ee024be2e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/ti,ads1018.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: TI ADS1018/ADS1118 SPI analog to digital converter
+
+maintainers:
+  - Kurt Borja <kuurtb@gmail.com>
+
+description: |
+  The ADS1018/ADS1118 is a precision, low-power, 12-bit/16-bit, analog to
+  digital converter (ADC). It integrates a programmable gain amplifier (PGA),
+  internal voltage reference, oscillator and high-accuracy temperature sensor.
+
+  Datasheets:
+    - ADS1018: https://www.ti.com/lit/ds/symlink/ads1018.pdf
+    - ADS1118: https://www.ti.com/lit/ds/symlink/ads1118.pdf
+
+properties:
+  compatible:
+    enum:
+      - ti,ads1018
+      - ti,ads1118
+
+  reg:
+    maxItems: 1
+
+  vdd-supply: true
+
+  spi-max-frequency:
+    maximum: 4000000
+
+  spi-cpha: true
+
+  interrupts:
+    description: DOUT/DRDY (Data Out/Data Ready) line.
+    maxItems: 1
+
+  drdy-gpios:
+    description:
+      Extra GPIO line connected to DOUT/DRDY (Data Out/Data Ready). This allows
+      distinguishing between interrupts triggered by the data-ready signal and
+      interrupts triggered by an SPI transfer.
+    maxItems: 1
+
+  '#io-channel-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "ti,ads1118";
+            reg = <0>;
+
+            spi-max-frequency = <4000000>;
+            spi-cpha;
+
+            vdd-supply = <&vdd_3v3_reg>;
+
+            interrupts-extended = <&gpio 14 IRQ_TYPE_EDGE_FALLING>;
+            drdy-gpios = <&gpio 14 GPIO_ACTIVE_LOW>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 1fffce20d548..15f1c8ba4497 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25671,6 +25671,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/iio/adc/ti,ads1119.yaml
 F:	drivers/iio/adc/ti-ads1119.c
 
+TI ADS1018 ADC DRIVER
+M:	Kurt Borja <kuurtb@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
+
 TI ADS7924 ADC DRIVER
 M:	Hugo Villeneuve <hvilleneuve@dimonoff.com>
 L:	linux-iio@vger.kernel.org

-- 
2.52.0


