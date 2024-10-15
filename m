Return-Path: <devicetree+bounces-111457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6A99EE4B
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:56:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23882281814
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E93F51B219D;
	Tue, 15 Oct 2024 13:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="B5rwtgea"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1641AF0C7
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729000598; cv=none; b=hLhFjH4B7keR7n4jRTfOt5zxD05sVcLvUFIHuxVMt5sZPsOBPc6bjc4934Tsu1sy1KV6BG546xwdXcTYYqbcRy2j+ydfmtWWBN2XF6M05mKJI2j72wc9w0o3uYMwSAOeqFiX39HOCBnCtwefZYhhpCWgSVhlar8nUy0ZgKxywrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729000598; c=relaxed/simple;
	bh=cnL3eq0CvnDwIBAYvPykYoJ3Fx17pk9WK/iph6l0pIg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eT2RWk4vmPXq+ncMZaNxS5FN99lTujKp/ttK9NMOJU5Ho6EIbHoTWsuH6y6100XOV1/QMTuPO5SlkknQBmGc52Hi/wIrxumnsxOYXgWryZAR5CsFwOZOoah859Y18VVRhDtWj8t89l/JMcrYlEhH8Twcfa3A8J+1O4u4MpyerRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=B5rwtgea; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4311c285bc9so39461225e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729000595; x=1729605395; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=55EhiFz0eoHIW1OIthep7nNdg0DTxW/ypPJriA4rZJE=;
        b=B5rwtgearxZ/TLOBIiBcp81qCEVZGRm2xgfHccIM6cTHH3FpyqlTiHcG34JfAeK9Rm
         odLsQcxJUSzOtCuNMe5lRUNRwq6rgiZl8qG1LQozPA3VGRTItO34G00wqPrF6X5OE33Q
         Nz9ZOPnrO6ar8Ou6Low0gXmb0Yo7AxLknkv3+WVTTc71PAq1T4ftsyW9k4aHDYYyuA/X
         /1QuNG8Qeb+RYbYnra06NDqBionBUSjzWx6IG/j4Xz/LqqXzgwf7Vl3HHw1K8yxGTwW5
         HZGKMt9yXWDRaeSOSm3wJ/EZtqgLGkwJLhAThzJYHKnM92NxiQG/axV1I8VCkOu6YxTK
         PoOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729000595; x=1729605395;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=55EhiFz0eoHIW1OIthep7nNdg0DTxW/ypPJriA4rZJE=;
        b=ZAWfZyznoSK2iv74krJCNTdO8djXi+9zrCWfqJhXnZxpdtaVwDD+vAzUVynutII7H6
         zNQOC7G3eWfFREKHKtNgaoUuIX+yLbM6zAVmSNuGPy7rn3cwxm5pY9G+Jc1HsS+TjSws
         2kIWBNFC80R2GexitQEw2Nutxse2RuXCdCNF4xpuXacF5QA6jpcxjNyUEYy0ZkmH0PzU
         Sxs9rnxlxuzaUr0Shhny+Th0ZUFSiVKGCb0PMeO9WBGCOpfJXWz7HDQg+i3cRzRGI0Df
         tHVqSOe5VH9Oy0rinCHkypEAfnykhP0TedHXuwAzgrGa+KHz5++nKPzG4c+VXKR2oNH6
         ZvkA==
X-Forwarded-Encrypted: i=1; AJvYcCU/rOaYNauPIfixmHY33VS+edRH8hCoJkDH8fWY1eugZwuTGUvRxK4JscAUQvN7riH/Gt82Iq/sJo+i@vger.kernel.org
X-Gm-Message-State: AOJu0YyguoXGqcweCG/+RQcfMEtJWdX011dKVmKNY6uD7rFSXQoioDcg
	5yTyxPRk7VF5zUnYoOmS1ezIEj3wO5oCbIfrj+gT5zS3lzLS3v1PbIJV/LOt+t8=
X-Google-Smtp-Source: AGHT+IGFMDKNEZfRxjTgqBnidg/6QFPy8mj1gXNoC+c98Fc+Fn4B8+8Oa85J417KHNm+8nmGN9G1/A==
X-Received: by 2002:a05:600c:1e07:b0:42c:b7e2:3bc3 with SMTP id 5b1f17b1804b1-4311deec1c6mr140344865e9.19.1729000594442;
        Tue, 15 Oct 2024 06:56:34 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f56f241sm18848295e9.22.2024.10.15.06.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:56:34 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 15 Oct 2024 13:56:15 +0000
Subject: [PATCH v5 2/8] dt-bindings: iio: adc: ad7606: Add iio backend
 bindings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-ad7606_add_iio_backend_support-v5-2-654faf1ae08c@baylibre.com>
References: <20241015-ad7606_add_iio_backend_support-v5-0-654faf1ae08c@baylibre.com>
In-Reply-To: <20241015-ad7606_add_iio_backend_support-v5-0-654faf1ae08c@baylibre.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 aardelean@baylibre.com, dlechner@baylibre.com, jstephan@baylibre.com, 
 nuno.sa@analog.com, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 Guillaume Stols <gstols@baylibre.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729000592; l=3731;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=cnL3eq0CvnDwIBAYvPykYoJ3Fx17pk9WK/iph6l0pIg=;
 b=PJxGnQFCqsmZCxZJEICUrQtpGVcY7GNVmBguDsX09XW0o1CbFQHwQ6tO6N3Rrw4meySd4x+Kp
 nUo+B2XDDfSA9jOlj0PMXl1Nl6n0dFhgK/G3KWGFZL+Szc8pCSnqRLb
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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7606.yaml    | 64 +++++++++++++++++++++-
 1 file changed, 62 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 47081c79a1cf..0a612844029a 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -129,6 +129,29 @@ properties:
       assumed that the pins are hardwired to VDD.
     type: boolean
 
+  pwms:
+    description:
+      In case the conversion is triggered by a PWM instead of a GPIO plugged to
+      the CONVST pin, the PWM must be referenced.
+      The first is the PWM connected to CONVST or CONVST1 for the chips with the
+      2nd PWM connected to CONVST2, if CONVST2 is available and not shorted to
+      CONVST1.
+    minItems: 1
+    maxItems: 2
+
+  pwm-names:
+    items:
+      - const: convst1
+      - const: convst2
+
+  io-backends:
+    description:
+      A reference to the iio-backend, which is responsible handling the BUSY
+      pin's falling edge and communication.
+      An example of backend can be found at
+      http://analogdevicesinc.github.io/hdl/library/axi_ad7606x/index.html
+
+
 patternProperties:
   "^channel@[1-8]$":
     type: object
@@ -175,12 +198,22 @@ required:
   - reg
   - avcc-supply
   - vdrive-supply
-  - interrupts
-  - adi,conversion-start-gpios
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
 
+  - oneOf:
+      - required:
+          - adi,conversion-start-gpios
+      - required:
+          - pwms
+
+  - oneOf:
+      - required:
+          - interrupts
+      - required:
+          - io-backends
+
   - if:
       properties:
         compatible:
@@ -222,6 +255,10 @@ allOf:
         adi,sw-mode: false
     else:
       properties:
+        pwms:
+          maxItems: 1
+        pwm-names:
+          maxItems: 1
         adi,conversion-start-gpios:
           maxItems: 1
 
@@ -247,6 +284,29 @@ allOf:
 unevaluatedProperties: false
 
 examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    iio-backend {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        adi_adc@0 {
+            compatible = "adi,ad7606b";
+            reg = <0>;
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


