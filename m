Return-Path: <devicetree+bounces-101023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B02970079
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 08:53:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5D224B23EB7
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 06:53:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F25AE15B13D;
	Sat,  7 Sep 2024 06:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RzLECZQD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D920415886D
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 06:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725691866; cv=none; b=ZoC01uGp1GRi1mkz4V2JyVc6qGmvAYlWzvNsRICi0VngwuHi1TN8lclG11+jAhGptAdAoi9IB6Vlg51O08MGv+GcVIVu93UQBNQvJMYJugpcVLpL/6xur+cEGaLXS5UaWknlKIGfsCp1AYKqOKKELz9c2ujFReaUKIwvnpIaVQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725691866; c=relaxed/simple;
	bh=WtTqoqsoPDCsAqupR0u+y5bxkErf4GAtT/qIF8GJb84=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sO5fcik9Xq3LpIfEqAGtnYl/DlW2svzF5WrOo9+VSONHriMVt5YZrkWdgDrDLYW9V7sjgeiibCMkfxYvLiAk+yN7uYndBGdm0GGKABdj81pfhDgroeSX4+OkqQ02lm9OjnmplNteKC/jDgXahoZs4XVAT3r6SeWEUaEAHxmsGn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RzLECZQD; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2f029e9c9cfso37391591fa.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 23:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725691863; x=1726296663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HT8k5fM4ZWLcTvzIYnUe0nI5L7nA0F+Tipopd6qH/00=;
        b=RzLECZQDGskcEj97s1fp7YGzSXQcUVdfZvHkt3lLTSrnVkgDNNsEvwl0OhMoc5NTGt
         iqhEetdWWIRK7h2EmWY5bGgfZcNdgSPCuIdWq2f7VaI7N2qjwl8l6KZkvnKQ0Tg/m2Np
         Onf3Z9+zMXXJx7wLl6AjUFa80+uoV13CuCCz1LcWoqS84GYUJzEf6mntBskHOfnbp0i+
         EH35fegdFFoXrMtkr7MTF/TTHwa/JxX3pY1Lce93j7EXFCD4tjZK/A0UiGivgx/JnQKs
         p6Oee7/HJFZBY8UhEAeNPBX6lQwVrRlOYEsrRxZAgNZI2AwrhhufRmj4wkBa8N4kTQdK
         m7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725691863; x=1726296663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HT8k5fM4ZWLcTvzIYnUe0nI5L7nA0F+Tipopd6qH/00=;
        b=mblH7EnmhZuz+i1V6LNCduXWg76hILQe3rkv4ceSf+pjR7Gvb4lIKYxTLW0IBDODk1
         4ExxP3xNqmzRoMzMAUr9Lgdvhy/1YEorMPQgyPJezrFhQ7zDOMSo4mNEL5324gDubiMt
         743MCynbLP0I0Ry0CS5FITtash1kTEG2duBMHtdiGn+SbSl4LMVPAWWqQswZ1UgtLBnl
         kaa00INw4i4MOIyMAyRVX/46viQcLq3nYNVn9gmVQbEQ0+ikM9OyZc2cTTh7zvHNwZvL
         HBKuNlfU+OnRBA03VZ5Y4f6OnlSMI9iaQ0tYrYWEpltfh0Hyj+NsKm7NZ7YZxHhCjGMl
         20Hw==
X-Forwarded-Encrypted: i=1; AJvYcCU3r1WbhevtzJfhOVCaY5zHtqUMZBXjeq9ekAgwBHNOgeky0jiVFr5oY/pvp/nkdeJkV6mjMtV+FA4W@vger.kernel.org
X-Gm-Message-State: AOJu0YwiueG6v9F891Sv5BZiWgqdWDD474KbnQ5UKfWkOtBO2f6Qjso1
	/sTr0oX+2SWOz59SDvo/lKDNDvmnFb/KbuFoljwTpbseCdt3tZL/OG4QFXBrlww=
X-Google-Smtp-Source: AGHT+IEci4IEtTe0vISInRqxpOJtLwF9ALHuxFoVHVuWCccPUOKu/XXZes/b6LFy3N1NkxKZv9osKg==
X-Received: by 2002:a05:651c:1548:b0:2f7:5049:160 with SMTP id 38308e7fff4ca-2f75a98689bmr9815101fa.13.1725691862729;
        Fri, 06 Sep 2024 23:51:02 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8d25835a76sm36539266b.39.2024.09.06.23.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 23:51:02 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 8/9] dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts
Date: Sat,  7 Sep 2024 09:50:41 +0300
Message-ID: <20240907065043.771364-9-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240907065043.771364-1-aardelean@baylibre.com>
References: <20240907065043.771364-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The driver will support the AD7606C-16 and AD7606C-18.
This change adds the compatible strings for these devices.

The AD7606C-16,18 channels also support these (individually configurable)
types of channels:
 - bipolar single-ended
 - unipolar single-ended
 - bipolar differential

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 .../bindings/iio/adc/adi,ad7606.yaml          | 117 ++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 69408cae3db9..2329afc1d6f9 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -14,6 +14,8 @@ description: |
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7605-4.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606_7606-6_7606-4.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7606B.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-16.pdf
+  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-18.pdf
   https://www.analog.com/media/en/technical-documentation/data-sheets/AD7616.pdf
 
 properties:
@@ -24,11 +26,19 @@ properties:
       - adi,ad7606-6
       - adi,ad7606-8  # Referred to as AD7606 (without -8) in the datasheet
       - adi,ad7606b
+      - adi,ad7606c-16
+      - adi,ad7606c-18
       - adi,ad7616
 
   reg:
     maxItems: 1
 
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
   spi-cpha: true
 
   spi-cpol: true
@@ -114,6 +124,46 @@ properties:
       assumed that the pins are hardwired to VDD.
     type: boolean
 
+patternProperties:
+  "^channel@[1-8]$":
+    type: object
+    $ref: adc.yaml
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description:
+          The channel number, as specified in the datasheet (from 1 to 8).
+        minimum: 1
+        maximum: 8
+
+      diff-channels:
+        description:
+          Each channel can be configured as a differential bipolar channel.
+          The ADC uses the same positive and negative inputs for this.
+          This property must be specified as 'reg' (or the channel number) for
+          both positive and negative inputs (i.e. diff-channels = <reg reg>).
+        items:
+          minimum: 1
+          maximum: 8
+
+      bipolar:
+        description:
+          Each channel can be configured as a unipolar or bipolar single-ended.
+          When this property is not specified, it's unipolar, so the ADC will
+          have only the positive input wired.
+          For this ADC the 'diff-channels' & 'bipolar' properties are mutually
+          exclusive.
+
+    required:
+      - reg
+
+    oneOf:
+      - required:
+          - diff-channels
+      - required:
+          - bipolar
+
 required:
   - compatible
   - reg
@@ -170,6 +220,25 @@ allOf:
         adi,conversion-start-gpios:
           maxItems: 1
 
+  - if:
+      not:
+        required:
+          - adi,sw-mode
+    then:
+      patternProperties:
+        "^channel@[1-8]$": false
+
+  - if:
+      not:
+        properties:
+          compatible:
+            enum:
+              - adi,ad7606c-16
+              - adi,ad7606c-18
+    then:
+      patternProperties:
+        "^channel@[1-8]$": false
+
 unevaluatedProperties: false
 
 examples:
@@ -202,4 +271,52 @@ examples:
             standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
         };
     };
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        adc@0 {
+            compatible = "adi,ad7606c-18";
+            reg = <0>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            spi-max-frequency = <1000000>;
+            spi-cpol;
+            spi-cpha;
+
+            avcc-supply = <&adc_vref>;
+            vdrive-supply = <&vdd_supply>;
+
+            interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
+            interrupt-parent = <&gpio>;
+
+            adi,conversion-start-gpios = <&gpio 17 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio 27 GPIO_ACTIVE_HIGH>;
+            adi,first-data-gpios = <&gpio 22 GPIO_ACTIVE_HIGH>;
+            standby-gpios = <&gpio 24 GPIO_ACTIVE_LOW>;
+
+            adi,sw-mode;
+
+            channel@1 {
+                reg = <1>;
+                diff-channels = <1 1>;
+            };
+
+            channel@3 {
+                reg = <3>;
+                bipolar;
+            };
+
+            channel@8 {
+                reg = <8>;
+                diff-channels = <8 8>;
+            };
+
+        };
+    };
 ...
-- 
2.46.0


