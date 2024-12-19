Return-Path: <devicetree+bounces-132733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F7C9F7EF9
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 17:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98AD3188F463
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:11:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFBAD226889;
	Thu, 19 Dec 2024 16:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="TTyVxQXG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D4C22619A
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 16:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734624683; cv=none; b=M8w0iq0j33d6eDzA5IuNWqFYu52brFvcMcInkydlm+VvHWT+xVIDifm3F0gCJQU5G2kxmMXgGVJY4TW2upIetioOpDw70HfGspsaN4ZqiFVt+d5b6BQ3bKsOgQjQ8hlui4B+XoQYpwTF4tHoyNlhQfrA8noaHU7wE0F8HSkCflA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734624683; c=relaxed/simple;
	bh=qzl73SqeHEJIp8AO2Ug4uHTZxUacawa2/mg58hiU7fM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hXoVcKkVuvQvl58BI/0ByLpFfFb3YpMdtl4XYXsnUPbzZLW8hVe8gs7GmmWQgwRHuMICuAKj70Rws66tWWQvYdulCcICZpp3hkyAvzTDlzXKe/C+iOq/pQVKptgppZtysoH5EXG7xrb8sWtA0RUwdjpboXz6G8CjodktGhax1ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=TTyVxQXG; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436637e8c8dso5445175e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 08:11:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734624679; x=1735229479; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eylymrfi7tAywmSnUEo3ZHKuoD67G+9IIxMiDlaE1Nw=;
        b=TTyVxQXGs1Xuw6EjV2yP29vbBqPxoll+bO8EALL7MM0aTIDHTjgx0SXPcuqfwXwMCP
         yKIeJCF2tiEdqGqKkpi1UI6Ofcu0VFtxbkAYe9rCWuvx4ryyvTNyJNCMdOwBDpYKL7L9
         lTjcBw5ydupRc/gW3r8DcevH24jlavpJgIXQ4/M7NGHDf+geM9jsqf1LIox8jlg3nkyx
         WyXvI9m/JvRkqRK1uRdJ3cbF1aXP7/dxt5Sc7nLGTC6H0IwhNO/BMWEmk0nQG2465UtK
         znYB7UUwcnPhLngj/7sNoZ1JTMqTIMgsa1JVlwJ0gp8RCO1whoxvpgzLjXsNzNvMeP3w
         w7eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734624679; x=1735229479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eylymrfi7tAywmSnUEo3ZHKuoD67G+9IIxMiDlaE1Nw=;
        b=epR6wkZ02cv5nh8BTtl95DdX6fkCo82xH9LmR6CDJhB4eA5wEs1qPW989mkYVFC4/L
         T7nXtnd4u2vS/vGMqmiVOKEhzrdvLdDLmYae0zT7kK3F/rcTZ0Xnx81KmJSjlXI0u1No
         u64gqIVEiXmz/DGcSfmZZhPMhvoaH4C/cbzo4ZowndPlge83Dg09AGxw7yd1/eMeo1Td
         QUfZgXWysGHyeJ4P68PpfWTSpd8YscDRHC1xd1WjFWWvm06XJvniwm0cPeJopje0C58y
         abrgUxLIcE3pmgqmDqz1ISLYljYVqkvULNmB68Q+XPzldprjSeruk3y2lgKGizxUISAe
         tFAA==
X-Forwarded-Encrypted: i=1; AJvYcCXGzVPHZVk+fFXVH6pyVzcsQkLnOUO9TjF0uHhhSu6eLL9a9pVfPb5xXPeiIZihzjemsuGPPUXJFlOZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzYX0/PSCpoOyxZn11AXNcSPwQA3HwQuq2PdD5+AbLI+oOuRF9w
	xtLYqpjLcFvIi2+ilVGuWR1x57jfbu5cE6pdBJy2qmBHXBixV52mgXozvqzbi6s7Gz494+x0phF
	Z
X-Gm-Gg: ASbGncv0WlNnpf+w9LQWTmwPcZnaL3bLnANn6mWeQO+fAsjZzumwK+WZlxcp+cLHbfu
	NXW9A3ReEwbAqFX1AjpNMWPzfegFiUOcXjOfsQ2z/1jjFhqe+cXg6J98daCFs1q3GlP/vwEk9B2
	Qtr+7kV+4hhkMoKYyTZ300wTHHjrRwTqvF4E/Aefn2e9uMncBuKc1yQJaYFYY5Nq6xQSC05zBDh
	mvA75tf42OwYM0gYUX0Kb4Eai8CLld2X/WevDuKdt27LUpnC//kr4iW81jU7P43B2+TC+4z7kK7
	+sUBj+PjLCAmOxhdIKrCrEK5eafm7vWHFIYM6Q==
X-Google-Smtp-Source: AGHT+IE8jrwkzEMiWTfzu00TpiSBHgvNmtSxtLr8WHg4BFFgCNIogP4FICHyllOErSa6VWRsGTv9/Q==
X-Received: by 2002:a05:600c:3b22:b0:431:5632:448b with SMTP id 5b1f17b1804b1-43655400afdmr60143905e9.25.1734624679459;
        Thu, 19 Dec 2024 08:11:19 -0800 (PST)
Received: from [127.0.0.1] (amontpellier-556-1-148-206.w109-210.abo.wanadoo.fr. [109.210.4.206])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b3b295sm57526225e9.33.2024.12.19.08.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 08:11:19 -0800 (PST)
From: Esteban Blanc <eblanc@baylibre.com>
Date: Thu, 19 Dec 2024 17:10:36 +0100
Subject: [PATCH v2 1/6] dt-bindings: iio: adc: add ADI ad4030, ad4630 and
 ad4632
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241219-eblanc-ad4630_v1-v2-1-f36e55907bf5@baylibre.com>
References: <20241219-eblanc-ad4630_v1-v2-0-f36e55907bf5@baylibre.com>
In-Reply-To: <20241219-eblanc-ad4630_v1-v2-0-f36e55907bf5@baylibre.com>
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
index 1e930c7a58b13d8bbe6bf133ba7b36aa24c2b5e0..f17ead8c1e7b9abd2ae406494a24e117fb76435a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1274,6 +1274,15 @@ F:	Documentation/devicetree/bindings/iio/adc/adi,ad4000.yaml
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
2.47.0


