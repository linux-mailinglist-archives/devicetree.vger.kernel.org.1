Return-Path: <devicetree+bounces-242894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EF5C90C90
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 04:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 017793A86E1
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 03:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CEC2D7810;
	Fri, 28 Nov 2025 03:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kk/gtXCx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A74D2D63E2
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764301052; cv=none; b=dEfovLiR0R2WLE4VWZo3/9o1C/T8AM2Y358xeapQ4TfDN3kOfBX81HcJ1C4qXtOeYHp5DuQMKsHZpr0+Sys1dxSDiAyp3fXr9QVCBm9q/E388OtQH4A3eTTxywWyV/Ynzbk3fLUEdWLy4j34unkSyesfzGYSCFzpEvECR+o6PYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764301052; c=relaxed/simple;
	bh=zN4mTvAlNG+j5dkz9olyk6N5wrggUvPOvD8a++d87Lc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qx2DGEldSgPdLVETNMXVQ8qenPOWZ3kKZChxpnvl55ud8JK5mU4orYRzew0TvS6ukgEBKvZ5MQU2VmBMmur4/NhQbn3JD2V2WjMPUU4DdJQuQ1YeBQyuB0/Sp6fMCe1IvKC6k9fXvyrnlWqbQG+Ml0lBbGfn81wsf45C31UlSfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kk/gtXCx; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dbe6be1ac5so483315137.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 19:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764301049; x=1764905849; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AABb+J7VAVGq7TKx/cUCiui5FZaOhmyV1W31gf2aLcI=;
        b=Kk/gtXCxyuI/+Zj2QpW4Uuw6gpW57vrQpEg+4OZhQ19oX651avu7+45tOImfkzfXsk
         U1SogdedPMfNRYqwqnMubCD6L4+XZuAZVx9Ta6yamwnZLYS5QCtWiWc0JpazGpa4i/ks
         GkyqAy6ezcj4H/hF7IPAalpFgdSVh9BrnU+9KNKDzPqLLOA5yimDs7Q/FKEbVyIO9s2L
         A9HeiE2NdwbkhC2Q3LC7knJf8CsKqKhfr5RR5HLtxZlcmOQNaRY8e6XMpLCJ8MArmMdO
         7GNJEcgut4TmiSCrefOQ4pyiXtYFJbxtksbnm1FcO6cCnUf1q2VzaSFvTmS/LTodLzF0
         TVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764301049; x=1764905849;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AABb+J7VAVGq7TKx/cUCiui5FZaOhmyV1W31gf2aLcI=;
        b=FeD8BWz7HDpusLgy37Y7bU6uCa1y/pL0HYGpvp6/HPwpiI7FnZHklJce/vFrGEi34t
         4wyAVxf8acEN5cysRUl87qulIxZKIIx78ca6zNUlal/m/30sm6bwupG6lYdwpFJCk3I+
         cWJXE6RAzhXZ1A+dv91AXAXntwXEFvo+MSCYgwgsBvoxbIBH65aNZlqz65zTlB97cb0e
         0b4zdqKxDqh7eM7UCv8m4FuMT3KH3oERsRIqWnPLmcCAQux7P17BbaxdrCDAmLKxyrhP
         eZgD7gGrRTVIKRbyaeSoNWB0El50Up+IqrjO9ck1x/VH5nsWNrqo0IYO81D5nIFhJhzw
         pNPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrzNfEnm5WApPu7Ck7DrsZEvwg378wK6Xvok9ikLHjq7GtRcDvwFb9P0hEIMJwmzsKxCu1Rm5sUzq5@vger.kernel.org
X-Gm-Message-State: AOJu0YyIydyPLAFw1MkSzDQbG+XfR0fV6a/5RIG97/qrNvBiDL5J+HYF
	uY2LPzlVSN2irmqHeVx2T0RY9p6vq90aQLzx14XMsRVwev+68WG3Zznx
X-Gm-Gg: ASbGnctO3eepqtNp9Lf2hdDvWYNE9pNnW9WQioM9C3pSe6/Q/cyDk641061tBIZmGPV
	IdD2a54ukkdC6t+ANslNFeDPBtNLpjgn7c+BA4p6YUBR2eHi0GlXcA5u6a1jQhTi6aomMbbO8jZ
	vaYwEphzzH3vj/32kSm6dYeEYckNoSMjY7LcTVGsG9NpJaLOcnh3yf8CBqdfV214nixE+Fbux7r
	WnJLrOOPOc/XeU5OZc+NepiUn1tfNRPVNGaPTcqScILM77TJpZdNx2cKwjYHNNjAo+7xhSRRqQ2
	2GrYkWgKqJp6+YyFDEYS5LD6r4Cd/NXqTw52rT78ODYC7Z2IwHAFZ/nuLJqZ5a4H3Z4hYWdrzVt
	iQSocldXjEnoxsscfyx2XQRrfDBg6gY0BLcIK7uTyaX/HtRNFkB4eebItQlHK52jnUyFxe3FKBT
	V8wCX3QqeTr+66TC5A5dIFK5g=
X-Google-Smtp-Source: AGHT+IGwtp7PrAsIHTD4uB2Oxo042oMNiACJI0iD4v9fC+ytl628G33X0a2EjGjxFvkynmU5sWJKog==
X-Received: by 2002:a05:6102:5107:b0:5db:ef30:b74f with SMTP id ada2fe7eead31-5e1de0c07b0mr7355964137.8.1764301049390;
        Thu, 27 Nov 2025 19:37:29 -0800 (PST)
Received: from [192.168.100.70] ([2800:bf0:82:3d2:875c:6c76:e06b:3095])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24d94f2d2sm1170483137.8.2025.11.27.19.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 19:37:29 -0800 (PST)
From: Kurt Borja <kuurtb@gmail.com>
Date: Thu, 27 Nov 2025 22:37:10 -0500
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: Add TI ADS1018/ADS1118
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-ads1x18-v2-1-2ebfd780b633@gmail.com>
References: <20251127-ads1x18-v2-0-2ebfd780b633@gmail.com>
In-Reply-To: <20251127-ads1x18-v2-0-2ebfd780b633@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Tobias Sperling <tobias.sperling@softing.com>
Cc: David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Kurt Borja <kuurtb@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3398; i=kuurtb@gmail.com;
 h=from:subject:message-id; bh=zN4mTvAlNG+j5dkz9olyk6N5wrggUvPOvD8a++d87Lc=;
 b=owGbwMvMwCUmluBs8WX+lTTG02pJDJmaEl9MrcTCq50kNO+tqjTMcJz2lT+2+0inrqiyrM2jI
 uUXjYodpSwMYlwMsmKKLO0Ji749isp763cg9D7MHFYmkCEMXJwCMJF5JowMt69LnxfetNJtkaKo
 xCXLYF/zEwL1jUufvft8vddqddJ7WUaGMyc4Y20fLz45obPsYaLj4cjYmVIn+DNZ31gkKFkKqS9
 nAwA=
X-Developer-Key: i=kuurtb@gmail.com; a=openpgp;
 fpr=54D3BE170AEF777983C3C63B57E3B6585920A69A

Add documentation for Texas Instruments ADS1018 and ADS1118
analog-to-digital converters.

Signed-off-by: Kurt Borja <kuurtb@gmail.com>
---
 .../devicetree/bindings/iio/adc/ti,ads1018.yaml    | 93 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 ++
 2 files changed, 99 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
new file mode 100644
index 000000000000..021f2a3ca4be
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/ti,ads1018.yaml
@@ -0,0 +1,93 @@
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
+  The ADS1018/ADS1118 is a precision, low-power, 12-bit or 16-bit, noise-free,
+  analog-to-digital converter (ADC). It integrates a programmable gain amplifier
+  (PGA), voltage reference, oscillator and high-accuracy temperature sensor.
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
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
+  '#io-channel-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+  - '#address-cells'
+  - '#size-cells'
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+
+unevaluatedProperties: true
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
+            #address-cells = <1>;
+            #size-cells = <0>;
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
index 31d98efb1ad1..3d5295b5d6eb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25646,6 +25646,12 @@ S:	Maintained
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


