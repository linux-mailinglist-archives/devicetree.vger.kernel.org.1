Return-Path: <devicetree+bounces-102755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4D1978217
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 16:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF0F92886D9
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 980091E5027;
	Fri, 13 Sep 2024 13:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zAKV3ZPL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E901E00B1
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726235883; cv=none; b=PAtPV0Cyysv5J4/xNsYdfqUIVJ7FrH8o7rppdCyAOOqs7oNsCrYJIFE/gpj6R5OSL3mOTG9xlUqSZOgld5FABnFWlHroK1DtEDHclEW720914dLuKdpQ8wI5Mc0xtwb04SxflIj1YGLQMUETMjyTUAUO+kTR1W7GySDsugsn+ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726235883; c=relaxed/simple;
	bh=GQdyZWqzfnQT3hAZa3L+fZIM4t+AoyLa8IiB5e8peIs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WkuSNxHTgC/xM0bVV6Pxl9JhSvaO+EGY61l5X6PzbE+WK4x+WIki3RQF5htJg0+Z9q17V0DqbgQ+BadU7IMnJzhL4yQYq/kxVy8QNoK4tiP6z44B2Txfg98gAPjFWie6LwkIlvkThCfz1wyQnH9uBz3jFHMwUCpMD/aL8RHBoIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zAKV3ZPL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-374b25263a3so725108f8f.0
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 06:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726235880; x=1726840680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G7id2uNYW2O+D+9KmRKjfLk5jRelw+ydc8eaTsKnZHc=;
        b=zAKV3ZPLLWbewRoFvPloAhbvijnkgbxV32M2cXzSfv+JADXNnsvTUdtmMSK7mKhzMS
         aav+9ilRrISfetLpPRfFzy1iBg8GjKDiDbxuMAkteIgmb7E5QeedyATvipa2m7o0cZl6
         6EFglQGr7NhKCJc9X7t1Pluy38MsZOnLiaziZs3FX043HRNs4OdkE8VHPw/P+WooS0vB
         XlckFHjcumUkbO0cnwSuJq+m/fElBQDb9icjDYT8sKpmlgOku1TEaLs9NrtxCsVf0ctx
         am8kNC4bwuPGzCNL+qZ+yR3HJlsfGFDUoSPU5AnpH7cKblM+V6eiMVYa16pvS+89qIUd
         g0Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726235880; x=1726840680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G7id2uNYW2O+D+9KmRKjfLk5jRelw+ydc8eaTsKnZHc=;
        b=Gg/Sip1qrxhh34ivZ6zfdKS4umwQFW9RMRHo+vd/g88qDHxUlPX/OMW15oZPcbTcxX
         SNc4os4sG7zwLBObuEAUdT5+2sYwPZVkts611qFY+zx83MqzXrJ0cjPpY8geMIeQ5BXC
         OEoi0Ixv6ds4mq0DGmk5VEz0WW98NWAo6fYZeOftQQyXcrA83yWoJskokeopm43RGFqz
         u7QF+fSuGPMl3TcQWqWNHTrNO9eC+ldnuujft3/2VoHM4gUHA9p0GO9ITMErFUQPDgQU
         OcqIaqtADHrhnOJ2+OqjjTtcgEWdH+PV2iBn/ifUQGf4Po6kT6rzXgdg0JKsmi9WVmqh
         IlQw==
X-Forwarded-Encrypted: i=1; AJvYcCXj9FRP11FodnDng27tfp/PStMBoGthktp3vVGVjKKG7koCFfC0uTw4+hv08TIUrLgVsK3yuo9XTV3w@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzz/65HPXUOpeBlltcer7fGoAcErLR7My/IihRLiiKLNIw1QSZ
	HqToTbrtDcmV/D2zKLfVTGfz+3oNEVF0YkeuUl1gocd1iYsd3l0pW1N0y+q+isg=
X-Google-Smtp-Source: AGHT+IEnMOy/us1WMCDm1uQTWUXvboHtKWEVOeATyWAagk22igiC4OpFI/i1oBSsRNFaX/qPXg4Mjg==
X-Received: by 2002:a05:6000:1802:b0:374:c9cd:9bf4 with SMTP id ffacd0b85a97d-378d62537demr1697313f8f.52.1726235879673;
        Fri, 13 Sep 2024 06:57:59 -0700 (PDT)
Received: from neptune.lan ([188.27.129.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956d3941sm17104749f8f.84.2024.09.13.06.57.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 06:57:59 -0700 (PDT)
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
	dlechner@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 7/8] dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts
Date: Fri, 13 Sep 2024 16:57:42 +0300
Message-ID: <20240913135744.152669-8-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240913135744.152669-1-aardelean@baylibre.com>
References: <20240913135744.152669-1-aardelean@baylibre.com>
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
 .../bindings/iio/adc/adi,ad7606.yaml          | 120 ++++++++++++++++++
 1 file changed, 120 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 69408cae3db9..bec7cfba52a7 100644
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
@@ -114,6 +124,47 @@ properties:
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
+          Each channel can be configured as a bipolar differential channel.
+          The ADC uses the same positive and negative inputs for this.
+          This property must be specified as 'reg' (or the channel number) for
+          both positive and negative inputs (i.e. diff-channels = <reg reg>).
+          Since the configuration is bipolar differential, the 'bipolar'
+          property is required.
+        items:
+          minimum: 1
+          maximum: 8
+
+      bipolar:
+        description:
+          The ADC channels can be configured as
+             * Bipolar single-ended
+             * Unipolar single-ended
+             * Bipolar differential
+          Therefore in the DT, if no channel node is specified, it is considered
+          'unipolar single-ended'. So for the other configurations the 'bipolar'
+          property must be specified. If 'diff-channels' is specified, it is
+          considered a bipolar differential channel. Otherwise it is bipolar
+          single-ended.
+
+    required:
+      - reg
+      - bipolar
+
 required:
   - compatible
   - reg
@@ -170,6 +221,25 @@ allOf:
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
@@ -202,4 +272,54 @@ examples:
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
+                bipolar;
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
+                bipolar;
+            };
+
+        };
+    };
 ...
-- 
2.46.0


