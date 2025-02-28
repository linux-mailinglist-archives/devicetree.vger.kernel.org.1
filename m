Return-Path: <devicetree+bounces-152643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 200A9A49BA7
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 15:15:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F3023B6171
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 14:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9ED26F458;
	Fri, 28 Feb 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="apoaV2cy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4026E963;
	Fri, 28 Feb 2025 14:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740752033; cv=none; b=FBSl9RqQPVEhMVLDhRYVDI9LPUXTc6BcXyxwnmz7yJ+bKAxwRdJq72tHVxLtpmfQBfwYSxH0firvruQM7Ub/Gwto6jERZ0oeYXETXA/NY4nEePiVM8xMhLMUGI8VnlZP8Ma7p1yDBp527FGgeWiRycwlm6RLzoVrQoYf2THjBPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740752033; c=relaxed/simple;
	bh=sQHjhSRRKKvn2KS2pRwShOeKMhbOJsbpGQJ+gRuEUlc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BVMSJwbfdl/tbnLPd2YNnzx9dMQrAG7K0ZYyB//yFypXxjzfgEqWkI7pduMCvosfJOksymJZouKQNj7m/Qo6fstvyN5df8/mvJnl9bvtOFt1DFypCjIilhtc+a9ooJFUpwk5llk3nvPEQjMHA7p1bGND4JQeGfeoeAJ4d/tLMPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=apoaV2cy; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43994ef3872so14422595e9.2;
        Fri, 28 Feb 2025 06:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740752030; x=1741356830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kyu0U6EVnwR7jmKKslxFmBDM5pJLOoJgHmbUIvRU74E=;
        b=apoaV2cyG9Dy3/Rdrg4Btvli9edBg1/uI+IHBO8/wEpV3qdSKRUcdA7u7ZPteUUCUj
         em4mzw4WDRJErQVXfBTlo1Lca0KxhaA9fmBvEIYJIApN+PoD/5izKgehXuEKad4h/Txx
         d98mDFxiimwnHWXfdmKwDw5bwAwOX1xbIbfHtvBC/hXq8LaOWa9+V47wLqJehEAjSxFE
         OYSd6HzOMvzABI4ZccVIXh7ZUL88F0E4JXeNfVlA4oGH30L4US7PYRFv/7eAsK0ZXu+B
         ZfQNMtTMtZLTSIcvK2zSlqnPMIx+ZxN8NM5R0L4U1rOv11F/+MmMfD2OmxxW7EsItf71
         EJKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740752030; x=1741356830;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Kyu0U6EVnwR7jmKKslxFmBDM5pJLOoJgHmbUIvRU74E=;
        b=WnLTUikLo9zKLIGUcqVy0wBLvCzPXMnAiyQ2Vpc7s5sOCYdqSt3IbHBnAcMl0kJFzW
         LdDRGRSgqkjcXorTPthbS3wIa/3WpkaX9S/kmUk53801z99eZD2c++IgLXQImeeWqIQI
         SwQhJMZ24AEAzCk1MHyC8Sdpdv+qa1yPzPa36eLTjrTu2Uhb0z8PSMqxaxEBkjZdzm7f
         rIGLhLzo/Jx/s/p9c7899L5VXPJqJxoMxTrW0NLrgbEJViy6u3yoc8N96yRBE3UCG35o
         ncflBTglFbx8aAFOKOINjlOUd0t49abIqu0CAPbYiQ+6DrT8uF5vRB5kjxFPdFmVnAro
         sfrw==
X-Forwarded-Encrypted: i=1; AJvYcCUCAxMbAEH/UYC1ZGzwfGwcP+oB7AhRUZc1wGGCP808dQW1hwj5BWqof1Bbca4rOsRsA4Zx+aEvd/qRvxOw@vger.kernel.org, AJvYcCWm1pCUVYq0ObevXOg2F4eMD7mFOldsM1VMfwBD1wa1+FtY7NopRSjSxj4U87LDtcTvMY2XlwNY/O4X@vger.kernel.org, AJvYcCWuQJbqWaPpIhbOStutaCDE5L7pRV+lL35yO84af95AJV59gzgZ3g/RUfhYuIz3O8lrkkv4Oa+TGYUL@vger.kernel.org, AJvYcCXbQ9oWyDzQH0HXMIyBhBo8odtD+sA0ZLfZJZalEzNSTbtweomy6qGThVlHCriHNlqvy03VSA7j/o34@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9SKbQ3xHd08iqdoy9LQ/5Nb0wx7um0W2lnfORB50RhAQlRa0w
	2kqRSv1EhCbvbaeTog49GIgFbD00Dl+qWX2bIyZcTFfwVuVolw0f
X-Gm-Gg: ASbGnctpawGiYMGRJRDM3XLBta0Wv1/oY6tqcL9UHKByZls2MBUUHfIg/Kv2q7MlsxW
	JEbbXwZyvCvSzB7MAu38AMBTb7FkoyAsrp3nCnKpcbwN2cAXTJ2LMVFPke1z9Pe+tZThrsrkpo5
	cvNNc4dVw5Tvj4CxfctwPQpiV+zTBo6LQyGErJj/kxQCvY2D9PkfWbQCqsNvB+g26EyOR6a0pO7
	74tVJ+HvFwSz+8qBCq52L7q7SW1tTkkDyrZfLqJJj8BDD6TeFdwPCnLhI2fvJ/h5ux58gpoAF3M
	7DYp49M/ChJS0nAELj5LpA==
X-Google-Smtp-Source: AGHT+IHcJnA9bKXjtVLz+yE76Z0QZ4CmOo099FLbQ8yYxwkbiPgU/Mii9m2oIxTJgCOMWJ/3q/f6Zw==
X-Received: by 2002:a05:600c:5014:b0:439:9a40:aa09 with SMTP id 5b1f17b1804b1-43ba730d731mr23068745e9.25.1740752029931;
        Fri, 28 Feb 2025 06:13:49 -0800 (PST)
Received: from spiri.. ([82.77.155.83])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43b736f75c6sm58221645e9.1.2025.02.28.06.13.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 06:13:49 -0800 (PST)
From: Alisa-Dariana Roman <alisadariana@gmail.com>
X-Google-Original-From: Alisa-Dariana Roman <alisa.roman@analog.com>
To: Alisa-Dariana Roman <alisa.roman@analog.com>,
	"Rob Herring (Arm)" <robh@kernel.org>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Ramona Gradinariu <ramona.bolboaca13@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>
Subject: [PATCH v6 1/3] dt-bindings: iio: adc: add AD7191
Date: Fri, 28 Feb 2025 16:06:00 +0200
Message-ID: <20250228141327.262488-2-alisa.roman@analog.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250228141327.262488-1-alisa.roman@analog.com>
References: <20250228141327.262488-1-alisa.roman@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

AD7191 is a pin-programmable, ultra-low noise 24-bit sigma-delta ADC
designed for precision bridge sensor measurements. It features two
differential analog input channels, selectable output rates,
programmable gain, internal temperature sensor and simultaneous
50Hz/60Hz rejection.

Signed-off-by: Alisa-Dariana Roman <alisa.roman@analog.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/iio/adc/adi,ad7191.yaml          | 149 ++++++++++++++++++
 MAINTAINERS                                   |   7 +
 2 files changed, 156 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml
new file mode 100644
index 000000000000..801ed319ee82
--- /dev/null
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml
@@ -0,0 +1,149 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2025 Analog Devices Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iio/adc/adi,ad7191.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Analog Devices AD7191 ADC
+
+maintainers:
+  - Alisa-Dariana Roman <alisa.roman@analog.com>
+
+description: |
+  Bindings for the Analog Devices AD7191 ADC device. Datasheet can be
+  found here:
+  https://www.analog.com/media/en/technical-documentation/data-sheets/AD7191.pdf
+  The device's PDOWN pin must be connected to the SPI controller's chip select
+  pin.
+
+properties:
+  compatible:
+    enum:
+      - adi,ad7191
+
+  reg:
+    maxItems: 1
+
+  spi-cpol: true
+
+  spi-cpha: true
+
+  clocks:
+    maxItems: 1
+    description:
+      Must be present when CLKSEL pin is tied HIGH to select external clock
+      source (either a crystal between MCLK1 and MCLK2 pins, or a
+      CMOS-compatible clock driving MCLK2 pin). Must be absent when CLKSEL pin
+      is tied LOW to use the internal 4.92MHz clock.
+
+  interrupts:
+    maxItems: 1
+
+  avdd-supply:
+    description: AVdd voltage supply
+
+  dvdd-supply:
+    description: DVdd voltage supply
+
+  vref-supply:
+    description: Vref voltage supply
+
+  odr-gpios:
+    description:
+      ODR1 and ODR2 pins for output data rate selection. Should be defined if
+      adi,odr-value is absent.
+    minItems: 2
+    maxItems: 2
+
+  adi,odr-value:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Should be present if ODR pins are pin-strapped. Possible values:
+      120 Hz (ODR1=0, ODR2=0)
+      60 Hz (ODR1=0, ODR2=1)
+      50 Hz (ODR1=1, ODR2=0)
+      10 Hz (ODR1=1, ODR2=1)
+      If defined, odr-gpios must be absent.
+    enum: [120, 60, 50, 10]
+
+  pga-gpios:
+    description:
+      PGA1 and PGA2 pins for gain selection. Should be defined if adi,pga-value
+      is absent.
+    minItems: 2
+    maxItems: 2
+
+  adi,pga-value:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: |
+      Should be present if PGA pins are pin-strapped. Possible values:
+      Gain 1 (PGA1=0, PGA2=0)
+      Gain 8 (PGA1=0, PGA2=1)
+      Gain 64 (PGA1=1, PGA2=0)
+      Gain 128 (PGA1=1, PGA2=1)
+      If defined, pga-gpios must be absent.
+    enum: [1, 8, 64, 128]
+
+  temp-gpios:
+    description: TEMP pin for temperature sensor enable.
+    maxItems: 1
+
+  chan-gpios:
+    description: CHAN pin for input channel selection.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - avdd-supply
+  - dvdd-supply
+  - vref-supply
+  - spi-cpol
+  - spi-cpha
+  - temp-gpios
+  - chan-gpios
+
+allOf:
+  - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - oneOf:
+      - required:
+          - adi,odr-value
+      - required:
+          - odr-gpios
+  - oneOf:
+      - required:
+          - adi,pga-value
+      - required:
+          - pga-gpios
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad7191";
+            reg = <0>;
+            spi-max-frequency = <1000000>;
+            spi-cpol;
+            spi-cpha;
+            clocks = <&ad7191_mclk>;
+            interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-parent = <&gpio>;
+            avdd-supply = <&avdd>;
+            dvdd-supply = <&dvdd>;
+            vref-supply = <&vref>;
+            adi,pga-value = <1>;
+            odr-gpios = <&gpio 23 GPIO_ACTIVE_HIGH>, <&gpio 24 GPIO_ACTIVE_HIGH>;
+            temp-gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
+            chan-gpios = <&gpio 27 GPIO_ACTIVE_HIGH>;
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index bd04375ab4a2..ac1f61256932 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1346,6 +1346,13 @@ W:	http://ez.analog.com/community/linux-device-drivers
 F:	Documentation/devicetree/bindings/iio/adc/adi,ad7091r*
 F:	drivers/iio/adc/ad7091r*
 
+ANALOG DEVICES INC AD7191 DRIVER
+M:	Alisa-Dariana Roman <alisa.roman@analog.com>
+L:	linux-iio@vger.kernel.org
+S:	Supported
+W:	https://ez.analog.com/linux-software-drivers
+F:	Documentation/devicetree/bindings/iio/adc/adi,ad7191.yaml
+
 ANALOG DEVICES INC AD7192 DRIVER
 M:	Alisa-Dariana Roman <alisa.roman@analog.com>
 L:	linux-iio@vger.kernel.org
-- 
2.43.0


