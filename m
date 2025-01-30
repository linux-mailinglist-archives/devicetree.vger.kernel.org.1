Return-Path: <devicetree+bounces-141833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B32A22C32
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 12:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37D317A247D
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 11:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4538D1DB37A;
	Thu, 30 Jan 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="IEbIpXJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118AA1C1F07
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 11:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738235333; cv=none; b=SQ1DipgXDC3vu8bpQXJKOj7/q0arq6fFUci5v3e0YS8LCOQYgfvWrE9YawojOdBh9xFvltASN/kNsDBsICAauXOhLuYTSO7QjbkVVlSSzrI5gqgHTkwIVsjgZrg+KIRStZEA45flvZkf6rsyZZ+ivk8VhECPuMR/UQjvomDCWN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738235333; c=relaxed/simple;
	bh=xfmK9s8wId2Vg1IQl6Wvtc/c3d0ihGH/76shMd85zP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lBdAqixsvT1GcxgpTovBfljjJ/J+fST9qLhIFYKDjLUP+DkoejBhpy9iHpscwv8uRmKJpxRs+4U27mjqYt5FeI2XQMqy7QS3Uyv7yGRSmHqnLpRc7FRvLQOxGrigR/z6FvZ+bA/83hRTkBSBnb68pF+9tDFbSwWqJCXyh02BQVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=IEbIpXJu; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-385ef8b64b3so618066f8f.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 03:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738235329; x=1738840129; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E9AMklAJ2Mv53cAwLoH966kOiYauexcFeYWldqeYOxc=;
        b=IEbIpXJu15CoA8XR4FkAjKXdd156y9xWwaCxI93cN2E8nzzfL3o4kif+KsCYyGG/v2
         vXcTh8exLAY8krGXKDL1lYefSPlrNNeUg/EavtkxUQ3VyztBm9mWB4vHgwVzD65ZRFKv
         pQoD3+6tSF977bYACnHKPBfhSwQnGlrVhgKP6n/K227nNX6pdyaLqvbonsMHG9W1o/T6
         OOu1H/VT7H82EXhXgMWD3PS92DW3Rd25e6nwXZJvIL5EYn+YLRikroHNvWAh0XZl35ob
         fCZBiEIy+05ACTAi2sB6HwPbu06F6Ek8UBEUurrCPxu35GaX9DV0M2QmsjtLdJpGtIrv
         4Vgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738235329; x=1738840129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E9AMklAJ2Mv53cAwLoH966kOiYauexcFeYWldqeYOxc=;
        b=DScXJ8rV8wYaE4exK0AyYpY8vLwWbH6YjmB/dEm9JqhGJoPmxrHRJVBYM6A5XPm94Z
         XMPQwKKqNrM3LO6as7/KT1lV6u+vSRPrkLQv+KN/5+EbXJumB8cZKTDsrEYIFLJ7KXdM
         rKZfwScbN2cAyDxS8o7bXGTrB8x7/4zl8xmWaWa7KzX5bUEeHGrj/bqbqSrmlCu4vnPC
         w7ZMaPc+rRBMFoxC/IMGbRN+cNr4UgLJ5ajPlTo39f0RK15Z1Mk1MnZW8yWo4WlvA/HP
         Q/vWJFBxcx/EJiR13rE/WBEiU1ETUpoQVe8utXrt/7FQwJt/xatfYOsZESsThbYjM1No
         e11w==
X-Forwarded-Encrypted: i=1; AJvYcCWVv/oyFX5IExZZ9aOF6XddoKx82FWAuereoclLOT3Sujfe5ZoOypYbFAKFX6Lib5mcyOBcOSutleox@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi+SZHl1db2FtTUiUse1y8EEeIZZ7RzZtE/q2CECzzTeVikqJn
	eau1bBvmNfxvct4aRTkQsf97m0bmbN8FX9mJdndjwM9Qhgs3ncKAH0FTeh8yw/0=
X-Gm-Gg: ASbGncv8rAyUIOGzDPcW5KxQmj3sAdoVMcUkvEccIyoWEKfy/dIc0Z3D3yscb06n9yY
	h3GcMGx/H9chBfDib5QuvKbiaQm2BrkNaAGwyzTEARlByiyrfS7JQK3e7zf4OdJobfd9NcVek3w
	7gfoPiA5D6Oa0ml/HfGNQcT0qkIRasTguBSXQSj60yP0Cfx5J1gJdLXWz9J37RTpygcSwKqp7UM
	7tt0Rgl9f8VOXab52Ld/1yFZI2xXxnX3M/kQuWTc41rep3jo6OFbGqF9Q7t4c+Iwaw3OAf8+blz
	wGneEWxAKs5Zk7vZ
X-Google-Smtp-Source: AGHT+IF4C6PETkPaH4I7nCwN4mw1AiWHPGhyx8nc+XH1k37/4DHFRk3X1oY8Wt38ieaKQpsznknZnA==
X-Received: by 2002:a05:6000:1365:b0:38a:888c:a727 with SMTP id ffacd0b85a97d-38c5195dd2amr5217524f8f.25.1738235329359;
        Thu, 30 Jan 2025 03:08:49 -0800 (PST)
Received: from [127.0.0.1] ([2a01:e0a:448:76e0:2c72:cd2d:79b2:82ff])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102bb2sm1689225f8f.34.2025.01.30.03.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 03:08:49 -0800 (PST)
From: Esteban Blanc <eblanc@baylibre.com>
Date: Thu, 30 Jan 2025 12:08:25 +0100
Subject: [PATCH v3 1/6] dt-bindings: iio: adc: add ADI ad4030, ad4630 and
 ad4632
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250130-eblanc-ad4630_v1-v3-1-052e8c2d897d@baylibre.com>
References: <20250130-eblanc-ad4630_v1-v3-0-052e8c2d897d@baylibre.com>
In-Reply-To: <20250130-eblanc-ad4630_v1-v3-0-052e8c2d897d@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, 
 Esteban Blanc <eblanc@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.2

This adds a binding specification for the Analog Devices Inc. AD4030,
AD4630 and AD4632 families of ADCs.

- ad4030-24 is a 1 channel SAR ADC with 24 bits of precision and a
  sampling rate of 2M samples per second
- ad4032-24 is a 1 channel SAR ADC with 24 bits of precision and a
  sampling rate of 500K samples per second
- ad4630-16 is a 2 channels SAR ADC with 16 bits of precision and a
  sampling rate of 2M samples per second
- ad4630-24 is a 2 channels SAR ADC with 24 bits of precision and a
  sampling rate of 2M samples per second
- ad4632-16 is a 2 channels SAR ADC with 16 bits of precision and a
  sampling rate of 500K samples per second
- ad4632-24 is a 2 channels SAR ADC with 24 bits of precision and a
  sampling rate of 500K samples per second

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Esteban Blanc <eblanc@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad4030.yaml    | 111 +++++++++++++++++++++
 MAINTAINERS                                        |   9 ++
 2 files changed, 120 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..cef2dc1eefb9126f836794c742b9e471a847296a
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright 2024 Analog Devices Inc.
+# Copyright 2024 BayLibre, SAS.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,ad4030.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AD4030 and AD4630 ADC families
+
+maintainers:
+  - Michael Hennerich <michael.hennerich@analog.com>
+  - Nuno Sa <nuno.sa@analog.com>
+
+description: |
+  Analog Devices AD4030 single channel and AD4630/AD4632 dual channel precision
+  SAR ADC families
+
+  * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4030-24-4032-24.pdf
+  * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4630-24_ad4632-24.pdf
+  * https://www.analog.com/media/en/technical-documentation/data-sheets/ad4630-16-4632-16.pdf
+
+properties:
+  compatible:
+    enum:
+      - adi,ad4030-24
+      - adi,ad4032-24
+      - adi,ad4630-16
+      - adi,ad4630-24
+      - adi,ad4632-16
+      - adi,ad4632-24
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 102040816
+
+  spi-rx-bus-width:
+    enum: [1, 2, 4]
+
+  vdd-5v-supply: true
+  vdd-1v8-supply: true
+  vio-supply: true
+
+  ref-supply:
+    description:
+      Optional External unbuffered reference. Used when refin-supply is not
+      connected.
+
+  refin-supply:
+    description:
+      Internal buffered Reference. Used when ref-supply is not connected.
+
+  cnv-gpios:
+    description:
+      The Convert Input (CNV). It initiates the sampling conversions.
+    maxItems: 1
+
+  reset-gpios:
+    description:
+      The Reset Input (/RST). Used for asynchronous device reset.
+    maxItems: 1
+
+  interrupts:
+    description:
+      The BUSY pin is used to signal that the conversions results are available
+      to be transferred when in SPI Clocking Mode. This nodes should be
+      connected to an interrupt that is triggered when the BUSY line goes low.
+    maxItems: 1
+
+  interrupt-names:
+    const: busy
+
+required:
+  - compatible
+  - reg
+  - vdd-5v-supply
+  - vdd-1v8-supply
+  - vio-supply
+  - cnv-gpios
+
+oneOf:
+  - required:
+      - ref-supply
+  - required:
+      - refin-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad4030-24";
+            reg = <0>;
+            spi-max-frequency = <80000000>;
+            vdd-5v-supply = <&supply_5V>;
+            vdd-1v8-supply = <&supply_1_8V>;
+            vio-supply = <&supply_1_8V>;
+            ref-supply = <&supply_5V>;
+            cnv-gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+        };
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index 0fa7c5728f1e64d031f4a47b6fce1db484ce0fc2..01e76f76b051b566b0aed48011621e170f192a2b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1273,6 +1273,15 @@ F:	Documentation/devicetree/bindings/iio/adc/adi,ad4000.yaml
 F:	Documentation/iio/ad4000.rst
 F:	drivers/iio/adc/ad4000.c
 
+AD4030 ADC DRIVER (AD4030-24/AD4630-16/AD4630-24/AD4632-16/AD4632-24)
+M:	Michael Hennerich <michael.hennerich@analog.com>
+M:	Nuno Sá <nuno.sa@analog.com>
+R:	Esteban Blanc <eblanc@baylibre.com>
+L:	linux-iio@vger.kernel.org
+S:	Supported
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
+
 ANALOG DEVICES INC AD4130 DRIVER
 M:	Cosmin Tanislav <cosmin.tanislav@analog.com>
 L:	linux-iio@vger.kernel.org

-- 
2.47.2


