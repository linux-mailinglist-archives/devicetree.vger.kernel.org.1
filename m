Return-Path: <devicetree+bounces-64272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFEF8B8C3B
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EA2E1C21E57
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E508C12F395;
	Wed,  1 May 2024 14:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HZWK5idm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC7F212F373
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575352; cv=none; b=NTyHCa2NttaOdS95rK96Vwjz3hH0jrMa+zMThoKlDCPZJrakjcYbSDcvlBGsnAoPUn4bw7PdPiXkd289nhOPyn0r/0iBhsATLREBUKpYyd9qhoXiS565dLhD4EfFYh+XcdGvVdz2WjW8Z9wl21qvN+rVOzfGI+A+afgnRUHPqUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575352; c=relaxed/simple;
	bh=IDhrjIJtC1G3o2fCZqsHvxz7NEDrI0F5jKU0EEQs398=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UXowGhCDCdkC49QNAs2O+xv7cVHBwMxnCbOSiWFw3ODXVcvEBwSRCXh1SvjgH5zvxfB+jnbD7zvlbmNu3s26316jG6hIVPFAGf8BMjyuSB3+kwRrWDbtgJe1af8k9+Ern4Pkhnc/0xNFJsvb4cJhmjQqT9tnaQZhsr8jam/PRIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HZWK5idm; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e09138a2b1so41062491fa.3
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714575349; x=1715180149; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Fhz/hQk8RD1tt0hu/cR4amFoB9mWCchFbN+TxPow/AQ=;
        b=HZWK5idmP6QILE3q3N3KEcFMgKf6S+NSTqRhw5tSLPSieMEYngUugUXemk6LlhS8Wg
         hQSkXexZpa8QZiDpL8c0M0QFL7rncNPbbQCmtZQQUq0ou1Lm+e0NrVwVHmgawXzBCWyI
         hgFNVHVva4xsacW+JUqAtmDKxzAR0EtdTXx83v5ct9TxbEJ5piXUTfNYLlYbeCAV5qn1
         OlfD/GT79UAZ9AUBZnNfxahAzN+YaDIFDDUF4e1Zzf6bzzLz3TrNijo+PO1qqxkoHpXD
         pnSCKiL9/JJ1IAGekKlcwv25fqE19dDWd6GACM6jRN+IYoFydQgUcfZt2GspX20kuS/6
         7pFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575349; x=1715180149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fhz/hQk8RD1tt0hu/cR4amFoB9mWCchFbN+TxPow/AQ=;
        b=o0/b+6onof+gBTWzHgHwo3KdYdLY1Lm3VRrc+cn2rxi/ZS7B/YkJV/oA/zm+9X7tHZ
         KodISD+nyGUZvovck6hxKUSX7egL7JGfjq6Mx9WU7xilZOozqCOqGOw36ldUdQwIYR1N
         /oP9jIVaq8Hjei7z4PKeAZsSm0kdH64SMWRuUquR0hvLCOCIA0DX3XcUp2RxchFNJTwe
         wUx/ocOqmEQPs3FnAUsSxZpHilU/DPoJuge472YttW2el7N/f3nyngR8IGrTRRxZ4+bf
         AFkK9Iw0mLHAQod87cs8imcTH10TKuICFsVXFhCwPhh58iK/bYf7XJ5W7sr9tggJcf/v
         AHKw==
X-Forwarded-Encrypted: i=1; AJvYcCVuV+Z+l2q7H8bRUouiz8IVnSCeHXtdtrSks+oVQ/MxILWMkGywPnsYzAYeUgq+iugPmJt64WF4bluHvMbnFF20y7a5xnGvsorsZA==
X-Gm-Message-State: AOJu0YxjK0PTja4oB18DDVWY4mqTkyA1sp++ky8zUHNQUBod7k06e6ef
	FG4RewfGTEtP3Zhi4Ica8nnVXfQtT4XlXGgFK0n3wgp2N+nrWzE1VTK3chwhQOo=
X-Google-Smtp-Source: AGHT+IExWbzFu/y+P/BHymNniS1NWoawv6PjReU8jo15sbOyMVB1Zznn6zp0RVZFa5o0QkTLX+GZDA==
X-Received: by 2002:a05:651c:222:b0:2d8:930c:bbfa with SMTP id z2-20020a05651c022200b002d8930cbbfamr1798566ljn.5.1714575348754;
        Wed, 01 May 2024 07:55:48 -0700 (PDT)
Received: from [192.168.1.61] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b00418a386c17bsm2422999wms.12.2024.05.01.07.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:55:48 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 01 May 2024 16:55:34 +0200
Subject: [PATCH RFC v6 01/10] dt-bindings: iio: adc: Add binding for AD7380
 ADCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240501-adding-new-ad738x-driver-v6-1-3c0741154728@baylibre.com>
References: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
In-Reply-To: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0

From: David Lechner <dlechner@baylibre.com>

This adds a binding specification for the Analog Devices Inc. AD7380
family of ADCs.

Signed-off-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 82 ++++++++++++++++++++++
 MAINTAINERS                                        |  9 +++
 2 files changed, 91 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
new file mode 100644
index 000000000000..5e1ee0ebe0a2
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,ad7380.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices Simultaneous Sampling Analog to Digital Converters
+
+maintainers:
+  - Michael Hennerich <Michael.Hennerich@analog.com>
+  - Nuno Sá <nuno.sa@analog.com>
+
+description: |
+  * https://www.analog.com/en/products/ad7380.html
+  * https://www.analog.com/en/products/ad7381.html
+
+$ref: /schemas/spi/spi-peripheral-props.yaml#
+
+properties:
+  compatible:
+    enum:
+      - adi,ad7380
+      - adi,ad7381
+
+  reg:
+    maxItems: 1
+
+  spi-max-frequency:
+    maximum: 80000000
+  spi-cpol: true
+  spi-cpha: true
+
+  vcc-supply:
+    description: A 3V to 3.6V supply that powers the chip.
+
+  vlogic-supply:
+    description:
+      A 1.65V to 3.6V supply for the logic pins.
+
+  refio-supply:
+    description:
+      A 2.5V to 3.3V supply for the external reference voltage. When omitted,
+      the internal 2.5V reference is used.
+
+  interrupts:
+    description:
+      When the device is using 1-wire mode, this property is used to optionally
+      specify the ALERT interrupt.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - vcc-supply
+  - vlogic-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad7380";
+            reg = <0>;
+
+            spi-cpol;
+            spi-cpha;
+            spi-max-frequency = <80000000>;
+
+            interrupts = <27 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-parent = <&gpio0>;
+
+            vcc-supply = <&supply_3_3V>;
+            vlogic-supply = <&supply_3_3V>;
+            refio-supply = <&supply_2_5V>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 8ad79cf70552..5bb168937853 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -427,6 +427,15 @@ W:	http://wiki.analog.com/AD7142
 W:	https://ez.analog.com/linux-software-drivers
 F:	drivers/input/misc/ad714x.c
 
+AD738X ADC DRIVER (AD7380/1/2/4)
+M:	Michael Hennerich <michael.hennerich@analog.com>
+M:	Nuno Sá <nuno.sa@analog.com>
+R:	David Lechner <dlechner@baylibre.com>
+S:	Supported
+W:	https://wiki.analog.com/resources/tools-software/linux-drivers/iio-adc/ad738x
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+
 AD7877 TOUCHSCREEN DRIVER
 M:	Michael Hennerich <michael.hennerich@analog.com>
 S:	Supported

-- 
2.44.0


