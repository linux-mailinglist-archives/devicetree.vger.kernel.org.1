Return-Path: <devicetree+bounces-104198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D43CE97D91E
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 19:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D41A2828C2
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 17:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51899185944;
	Fri, 20 Sep 2024 17:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="fOUzU5Di"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43A839FF3
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 17:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726853613; cv=none; b=j68RgnGixMZyY+5QOXLvZEFmINF1ZLJGpBabZwcaFYOFnz2N4MoUxwvvMMNnCHCgngpwyKrX98PoX+qpup/nTDqWS8nfxl2EKEuRoQ0U2yDnlVG9WPUswfpl01xQGWOZdoNQa7w+LAPpffba6MwiSQy71yp+dPyeNCHNzeRrlNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726853613; c=relaxed/simple;
	bh=hCvBf/Yi5is31u2E+lcg/efeEZpWLiB9YIEAE1XR084=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A83wfOJSksapc984OO+Iyj0kr1L1T0YliI2YiPW4x22maG7cpeypvBiQZ6AZWb2T/ou7hgF0Ki2ZYsCowfcOlMBawPhZpSns4MgUP4cEc2+ZrmmQiLnOma3ndXeLgIpf6PiLba1j5zleilRX8EsYiAemLFJSL55GXQK0C5nWYSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=fOUzU5Di; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-374d29ad870so1315355f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 10:33:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726853609; x=1727458409; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lOFKCe6sdi8A5CKCidxbjMFE10YBl76flNsUsMX1UAg=;
        b=fOUzU5DiyGtlQtAEVoxICi77EMdIZ2KLcAcfL53osweK1JWwR9uuYFMi8DRBibOYK0
         GHXjRq+FLa6b6a8ZYO6Jkkfkqv3SnhUTy76sbcSg8PnPsAeaW3mJBH6dOFfmFRYzGa9C
         eGyCQ8yJG2RQ89JQUQkWTab7xwS76Nm8B/8m5yOXL+otAEUjVSEZ+SKK4+U2H8Wq0JCS
         kubOMFJE2aUTQa8r/yJrsIhafGAih8gDKUkbxRKHYfRyMzj6N44zmzBDvw6jPg7RF3DY
         6i/T3dzBPDn0cdzAlBwfMJ5z2zunhEeEABhU2MERpXTC6u1ZUrPrt03ZFe14CRyv3uOC
         xSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726853609; x=1727458409;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lOFKCe6sdi8A5CKCidxbjMFE10YBl76flNsUsMX1UAg=;
        b=Itynb4T0ucTaUM+FbylRq7XhtjvuldQugn8mHJkHrJSNGFEc52OmukAkNm61Pog0rN
         ClF0WcSOypjMWIopH7kddlTmDxf2QGxlZGSTXclDEIGqNVm5i7atg8kUVUpirPFV0xt2
         Uz8kLwtaZDgOXxrO//QXS1cDe9uST9HHWDcsRPX/3OpLQJSjY7sENUCSnn8NTU0h5ORj
         DHG1da8d21hc3nuvYrssBY/Wsh15BMsg1eUffVY+YreXd6BCwBKXwjhbm9Joe8gMOKXP
         EziDCY+n1KGAhNFILCq2AcZoqS7lriq2u7iuCGy9c+8lcoZPpo2ttkmgl+qhh4vnbuud
         mbkg==
X-Forwarded-Encrypted: i=1; AJvYcCUb5fWTiFcyJqR+JNADiR8pXf8QUxPzVkJadjagI0tMoy2YDAdNRSQFOEivlyBl1dd1aDk3bYtX9w/D@vger.kernel.org
X-Gm-Message-State: AOJu0YzJnEB0bKDsslEqXw7XwCL+d/UfWogJQyvjvZtW9Cj2yCGbqC8T
	UKxgv0LvxTzEPKulqDcoMuq10TKwc0VQixgZTPQRWi0LWYTLq7cOo2HziLYvpwg=
X-Google-Smtp-Source: AGHT+IHeseTeNh8p/rbq5UK3FGl5FvK9TQhgAatgTwAK1PVEjche+ebL4RlSN1DQOblBxzdhZlHkZw==
X-Received: by 2002:adf:dd90:0:b0:36b:bb84:33e2 with SMTP id ffacd0b85a97d-37a4235a1d3mr2011507f8f.37.1726853608620;
        Fri, 20 Sep 2024 10:33:28 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e780e029sm18111177f8f.116.2024.09.20.10.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 10:33:28 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 20 Sep 2024 17:33:23 +0000
Subject: [PATCH v2 03/10] dt-bindings: iio: adc: ad7606: Add iio backend
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-ad7606_add_iio_backend_support-v2-3-0e78782ae7d0@baylibre.com>
References: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
In-Reply-To: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Michal Marek <mmarek@suse.com>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 aardelean@baylibre.com, dlechner@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1726853604; l=3763;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=hCvBf/Yi5is31u2E+lcg/efeEZpWLiB9YIEAE1XR084=;
 b=agNRyK65OgqM6pe57O+QNJm7EyEBxOjsJAmCn1CfbjhAt22bewNPyXm80YHbvFl3vHOwMRyPE
 AjVKmBGuplHASaJXpQR8nny+XZiJ7rgvsgcwicb4FSXoKfc1IPRFvXl
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

Add the required properties for iio-backend support, as well as an
example and the conditions to mutually exclude interruption and
conversion trigger with iio-backend.
The iio-backend's function is to controls the communication, and thus the
interruption pin won't be available anymore.
As a consequence, the conversion pin must be controlled externally since
we will miss information about when every single conversion cycle (i.e
conversion + data transfer) ends, hence a PWM is introduced to trigger
the conversions.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 76 +++++++++++++++++++++-
 1 file changed, 74 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 12995ebcddc2..74a8680904b1 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -118,13 +118,32 @@ properties:
       this property must be defined.
     type: boolean
 
+  pwms:
+    description:
+      In case the conversion is triggered by a PWM instead of a GPIO plugged to
+      the CONVST pin, the PWM must be referenced.
+    minItems: 1
+    maxItems: 2
+
+  pwm-names:
+    description:
+      The name of each PWM, the first is connected to CONVST, and the second is
+      connected to CONVST2 if CONVST2 is available and not connected to CONVST1.
+    minItems: 1
+    maxItems: 2
+
+  io-backends:
+    description:
+      A reference to the iio-backend, which is responsible handling the BUSY
+      pin's falling edge and communication.
+      An example of backend can be found at
+      http://analogdevicesinc.github.io/hdl/library/axi_ad7606x/index.html
+
 required:
   - compatible
   - reg
   - avcc-supply
   - vdrive-supply
-  - interrupts
-  - adi,conversion-start-gpios
 
 oneOf:
   - required:
@@ -138,6 +157,34 @@ oneOf:
           - spi-cpol
 
 allOf:
+  - if:
+      properties:
+        pwms: false
+    then:
+      required:
+        - adi,conversion-start-gpios
+
+  - if:
+      properties:
+        adi,conversion-start-gpios: false
+    then:
+      required:
+        - pwms
+
+  - if:
+      properties:
+        interrupts: false
+    then:
+      required:
+        - io-backends
+
+  - if:
+      properties:
+        io-backends: false
+    then:
+      required:
+        - interrupts
+
   - if:
       properties:
         compatible:
@@ -179,12 +226,37 @@ allOf:
         adi,sw-mode: false
     else:
       properties:
+        pwms:
+          maxItems: 1
+        pwm-names:
+          maxItems: 1
         adi,conversion-start-gpios:
           maxItems: 1
 
 unevaluatedProperties: false
 
 examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    / {
+        adi_adc {
+            compatible = "adi,ad7606b";
+            parallel-interface;
+            pwms = <&axi_pwm_gen 0 0>;
+
+            avcc-supply = <&adc_vref>;
+            vdrive-supply = <&vdd_supply>;
+
+            reset-gpios = <&gpio0 91 GPIO_ACTIVE_HIGH>;
+            standby-gpios = <&gpio0 90 GPIO_ACTIVE_LOW>;
+            adi,range-gpios = <&gpio0 89 GPIO_ACTIVE_HIGH>;
+            adi,oversampling-ratio-gpios = <&gpio0 88 GPIO_ACTIVE_HIGH
+                                            &gpio0 87 GPIO_ACTIVE_HIGH
+                                            &gpio0 86 GPIO_ACTIVE_HIGH>;
+            io-backends = <&iio_backend>;
+        };
+    };
+
   - |
     #include <dt-bindings/gpio/gpio.h>
     #include <dt-bindings/interrupt-controller/irq.h>

-- 
2.34.1


