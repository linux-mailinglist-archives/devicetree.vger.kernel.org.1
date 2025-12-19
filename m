Return-Path: <devicetree+bounces-248371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B936FCD1FB2
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 22:33:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D136C3013969
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 21:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC323446C5;
	Fri, 19 Dec 2025 21:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="h5xDNzCY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4692EC54C
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 21:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180013; cv=none; b=HB4fHKesE4zn9elelp4AQpuyxbEMz8iChTxaQMRQz9j+DJ24juPt6ess5bNtaKrnb6/fw0914Fc97NqbD6sJK6fFNcSjMJ6cPFD1fMcoaJ5ke67kSFVGrhja9oYuDcGgE1M/QIf54rCyu89AkIl62AWAOZ+NSyMIIbeYFYHrEP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180013; c=relaxed/simple;
	bh=eXLLDXKfOA+2V2f1sRQNUzsvVCDsgch7yTVzmIc7Kfs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Yu++AwtJM9zul1IYvuclKF10Zsydy9B3oxIiWvZ/r5vcJRMtJwc6k7thQaX37aRO1jt6VpAl03J+Glggny7WYhWpk6vuDmVX1QtSgdLeeaxhIMJiFQpZ0JYcIAAJ4AmwR49KNcWdfc3Kzp2Yo7WQkGytGCKwG4pX/+m47IJUnCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=h5xDNzCY; arc=none smtp.client-ip=209.85.167.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-45358572a11so1299879b6e.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1766180009; x=1766784809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CwhL2XTdSKphpbDNArSNYm/QFBPbMdsK+MdRobcyzN8=;
        b=h5xDNzCYa+kR/oZEZWzDXsu2VAju3tz9jqbZH4p16XSnK2vaFfv9RC4ETj2MfTg+7R
         d6JVlEAsiGiA7gSYYVW26FtqFYG48LYc0qVKQOIwDIUdPDJ3MRw899XtSBB0/JjeNrVH
         QQSqIc6K2BXHHMyuDyO6W5JtymoC6wNmfBiSScdRal11J+zzA74yky/gzm9U1aBbRj/L
         lvf/l2xeICZEyxWqk/r67rQUGapGB5Q4lNYLAlsZM9C4Xyg1suQa7VcS0lBES41XX7h8
         tq1/eFQWFse2jJZz7AblaEKkbbHlQpBruRAkbSAcO5mR86Y2YXaUuDRn77OglurseAHR
         Jc/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766180009; x=1766784809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CwhL2XTdSKphpbDNArSNYm/QFBPbMdsK+MdRobcyzN8=;
        b=YbcYMX9L2mcM7u4f/4KbOnz+CvqkMMyVcV3dcvJHL2ClUDS1VvRZRN4tiJ5YSrYJ8Q
         9QlnGzxs9uyxnDwjn6KLmJ9OdSyrL3IJ3DAsks03POZrdV7SaiFPS4GDZnfDOUFYHnQe
         1lGZoSvn8AnHL3wOzPaUUzsehjsZKYcYPu8e+BX+rVB7iNeAWzoHlXr6umQX7z7NJpu1
         gFoekxiebk+FRLANLc8AC8Jii2k7eK3K482Be003R/j3v7gX4OeetPNHxe5+ypgcoHcP
         l90MTFqzaKhsw5FkFQp6HY3UvAl/ZDOUrxOqiLdbLiOYh1/jmSR5l40+o0omcuzXAof+
         KuCA==
X-Forwarded-Encrypted: i=1; AJvYcCUH8qiwOvHyn0kG8sheoEGpJYHqmPvo/3WOquMN54g/48fBUM4HcBNhKFObyaBHrew0H8SXtilDsvG/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9GYq5/RV3omVNHu73aZiDUoOZr1gb1dbsjikWsi/UHR1U6ydI
	sz1rZN3NtH1VPyL979P+zSMm5RiCtaORG+2foDDvbG6za6p5U5k/uh8xGebWGlv35Jg=
X-Gm-Gg: AY/fxX7ivGmR+auB3GDCkp4Wz02McLnDXPswfofwb2FxP/fhoD06dI1YcRzxEVzgJ6Q
	WVKlIJORpPkF8yo4xCbH/6oaeJoVwtRFCvPd1N7ALCRVTS2LeFphv1s5ebyDEfA3rpiQcEVDanD
	KmN1VpMIlek9xiUui7lYEflRAYytZJeMlZabYbQc1l/+yG8ONJKIWNE26B8w8TQJs0+nUE4aVsm
	u+RB863aQ/xbrRiINpz36vh1kgXswRGZ7puo3L0MBYhMawkDIvD8JnIghUxXK3kKFR8/+mFDPMW
	Uag/NpXzK9KC29MYMYgScjsUAHFTefqJCNis726mfHMnPZTHvn+OER5u8ePHCNJ7M8wU/Pj9KA3
	gUyh4Lh5Be+RRHq8pzspwEme1N0KmS3vKZYpOSnhkv1xoFwD9yNeyjnCejimGOymsj1Lb5SJYmr
	J0T7HnGY/XQZfikg==
X-Google-Smtp-Source: AGHT+IHZJw+RiDLBmaeDbeQUFrqbDtSK1//gqrxlOK/7F319JCtYiEBVmJe2iut00bN7PQ7TNXN7GQ==
X-Received: by 2002:a05:6808:189e:b0:450:c877:fd5f with SMTP id 5614622812f47-457b200ba40mr2182741b6e.49.1766180009065;
        Fri, 19 Dec 2025 13:33:29 -0800 (PST)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:9b20:bac4:9680:435])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7cc667563ffsm2485045a34.13.2025.12.19.13.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 13:33:28 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 19 Dec 2025 15:32:09 -0600
Subject: [PATCH v4 1/9] spi: dt-bindings: change spi-{rx,tx}-bus-width to
 arrays
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-spi-add-multi-bus-support-v4-1-145dc5204cd8@baylibre.com>
References: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
In-Reply-To: <20251219-spi-add-multi-bus-support-v4-0-145dc5204cd8@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marcelo Schmitt <marcelo.schmitt@analog.com>, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=9014; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=eXLLDXKfOA+2V2f1sRQNUzsvVCDsgch7yTVzmIc7Kfs=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpRcRqhY5V6vWS8QZzXn5TO9ZsSyacivD7iII1g
 aFHllTGzXWJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaUXEagAKCRDCzCAB/wGP
 wKTNCACM6BZcUhlLZs31DgYm4ylqfRE/65t20Nh62ANpb0i3H5ZSZEa+LB73pzj868YLQjlEYo/
 IEiz3BUDJdRjxh+Jc1hY7490TCgX9uLua7OCy88M58/i5SfTm/mFkmfSPJQ90vPciOLVWyO9G5d
 ++uOVWW8BHbx1Jy5/bMZnsNaTXS1kHDBCnM/VoSObk+8GYuY/UpKgZENTF3Cye1LF80HOQAs/Sz
 Mqgc645DVmGl2gP3qWifSinC+0Or2hjuwjuAoT7SZ9k6J8gr1M+ACfhL8WBEcNLSJJLrDPaaaZL
 /ZawSYElxndMZbmh6FBhDYyXuGKcx6mVg+3Z0LzxfslZ7tk+
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Change spi-rx-bus-width and spi-tx-bus-width properties from single
uint32 values to arrays of uint32 values. This allows describing SPI
peripherals connected to controllers that have multiple data lanes for
receiving or transmitting two or more words in parallel.

Each index in the array corresponds to a physical data lane (one or more
wires depending on the bus width). Additional mapping properties will be
needed in cases where a lane on the controller or peripheral is skipped.

Bindings that make use of this property are updated in the same commit
to avoid validation errors.

The adi,ad4030 binding can now better describe the chips multi-lane
capabilities, so that binding is refined and gets a new example.

Converting from single uint32 to array of uint32 does not break .dts/
.dtb files since there is no difference between specifying a single
uint32 value and an array with a single uint32 value in devicetree.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v4 changes:
- New patch to replace data-lanes property patch.

In v3, Rob suggested possibly splitting the spi-controller.yaml file
to have a way to make most SPI controllers have maxItems: 1 for these
properties. I would like to avoid that because it doesn't seem scalable,
e.g. if we need another similar split in the future, the number of
combinations would grow exponentially (factorially?). I have an idea to
instead do this using $dynamicAnchor and $dynamicRef, but dt-schema
doesn't currently support that. So I propose we do the best we can for
now with the current dt-schema and make further improvements later.

Also, in v3, I suggested that we could have leading 0s in the arrays
to indicate unused lanes. But after further consideration, I think it's
better to have separate lane-mapping properties for that purpose. It
will be easier to explain and parse and be a bit more flexible that way.
---
 .../bindings/display/panel/sitronix,st7789v.yaml   |  5 +--
 .../devicetree/bindings/iio/adc/adi,ad4030.yaml    | 42 +++++++++++++++++++++-
 .../devicetree/bindings/iio/adc/adi,ad4695.yaml    |  5 +--
 .../bindings/spi/allwinner,sun4i-a10-spi.yaml      |  6 ++--
 .../bindings/spi/allwinner,sun6i-a31-spi.yaml      |  6 ++--
 .../bindings/spi/nvidia,tegra210-quad.yaml         |  6 ++--
 .../bindings/spi/spi-peripheral-props.yaml         | 26 ++++++++++----
 7 files changed, 79 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
index 0ce2ea13583d..c35d4f2ab9a4 100644
--- a/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sitronix,st7789v.yaml
@@ -34,8 +34,9 @@ properties:
   spi-cpol: true
 
   spi-rx-bus-width:
-    minimum: 0
-    maximum: 1
+    items:
+      minimum: 0
+      maximum: 1
 
   dc-gpios:
     maxItems: 1
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
index 54e7349317b7..e22d518135f2 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4030.yaml
@@ -37,7 +37,15 @@ properties:
     maximum: 102040816
 
   spi-rx-bus-width:
-    enum: [1, 2, 4]
+    maxItems: 2
+    # all lanes must have the same width
+    oneOf:
+      - contains:
+          const: 1
+      - contains:
+          const: 2
+      - contains:
+          const: 4
 
   vdd-5v-supply: true
   vdd-1v8-supply: true
@@ -88,6 +96,18 @@ oneOf:
 
 unevaluatedProperties: false
 
+allOf:
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad4030-24
+            - adi,ad4032-24
+    then:
+      properties:
+        spi-rx-bus-width:
+          maxItems: 1
+
 examples:
   - |
     #include <dt-bindings/gpio/gpio.h>
@@ -108,3 +128,23 @@ examples:
             reset-gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
         };
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad4630-24";
+            reg = <0>;
+            spi-max-frequency = <80000000>;
+            spi-rx-bus-width = <4>, <4>;
+            vdd-5v-supply = <&supply_5V>;
+            vdd-1v8-supply = <&supply_1_8V>;
+            vio-supply = <&supply_1_8V>;
+            ref-supply = <&supply_5V>;
+            cnv-gpios = <&gpio0 0 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
index cbde7a0505d2..ae8d0b5f328b 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
@@ -38,8 +38,9 @@ properties:
   spi-cpha: true
 
   spi-rx-bus-width:
-    minimum: 1
-    maximum: 4
+    items:
+      minimum: 1
+      maximum: 4
 
   avdd-supply:
     description: Analog power supply.
diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
index e1ab3f523ad6..a34e6471dbe8 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun4i-a10-spi.yaml
@@ -55,10 +55,12 @@ patternProperties:
           maximum: 4
 
       spi-rx-bus-width:
-        const: 1
+        items:
+          - const: 1
 
       spi-tx-bus-width:
-        const: 1
+        items:
+          - const: 1
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
index 3b47b68b92cb..414f5bc36304 100644
--- a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
@@ -77,10 +77,12 @@ patternProperties:
           maximum: 4
 
       spi-rx-bus-width:
-        const: 1
+        items:
+          - const: 1
 
       spi-tx-bus-width:
-        const: 1
+        items:
+          - const: 1
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
index 8b3640280559..909c204b8adf 100644
--- a/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
+++ b/Documentation/devicetree/bindings/spi/nvidia,tegra210-quad.yaml
@@ -54,10 +54,12 @@ patternProperties:
 
     properties:
       spi-rx-bus-width:
-        enum: [1, 2, 4]
+        items:
+          - enum: [1, 2, 4]
 
       spi-tx-bus-width:
-        enum: [1, 2, 4]
+        items:
+          - enum: [1, 2, 4]
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
index 8b6e8fc009db..59ddead7da14 100644
--- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
@@ -64,9 +64,16 @@ properties:
     description:
       Bus width to the SPI bus used for read transfers.
       If 0 is provided, then no RX will be possible on this device.
-    $ref: /schemas/types.yaml#/definitions/uint32
-    enum: [0, 1, 2, 4, 8]
-    default: 1
+
+      Some SPI peripherals and controllers may have multiple data lanes for
+      receiving two or more words at the same time. If this is the case, each
+      index in the array represents the lane on both the SPI peripheral and
+      controller. Additional mapping properties may be needed if a lane is
+      skipped on either side.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      enum: [0, 1, 2, 4, 8]
+    default: [1]
 
   spi-rx-delay-us:
     description:
@@ -81,9 +88,16 @@ properties:
     description:
       Bus width to the SPI bus used for write transfers.
       If 0 is provided, then no TX will be possible on this device.
-    $ref: /schemas/types.yaml#/definitions/uint32
-    enum: [0, 1, 2, 4, 8]
-    default: 1
+
+      Some SPI peripherals and controllers may have multiple data lanes for
+      transmitting two or more words at the same time. If this is the case, each
+      index in the array represents the lane on both the SPI peripheral and
+      controller. Additional mapping properties may be needed if a lane is
+      skipped on either side.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      enum: [0, 1, 2, 4, 8]
+    default: [1]
 
   spi-tx-delay-us:
     description:

-- 
2.43.0


