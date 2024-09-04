Return-Path: <devicetree+bounces-99780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 285E896B2DC
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D31E0287B84
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6F351547E9;
	Wed,  4 Sep 2024 07:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="i0eNphas"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB52B146A69
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:27:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434859; cv=none; b=X/Lqpv0rNax5AhE6F0ExUgNhAAa8WJT9E1HZf11wfSXYtAuReEOnityhROM2U9joRfyeGy9/YHwqysSr6OQAjlEf4b+Oi1+VR62U+PRuG6u9A/ORba2PJftTL2+oBSu0PkOwUtksxiAaMrxZp8qwphu/mcmbRxk9VyFYaiXRv3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434859; c=relaxed/simple;
	bh=TpEbAOxLJo9X3Zeeh01HKv1eBJqkYuV62EEVQKT90Tg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UAbKcD2miAZXR2WMFtiOPZKYku3ICEzuV5v3qTrLbL4AKKnGxsmXAqGyEVj+xnIvMsyGFg25RkmBUybvHPqjVB+zDwe+eCzhSl6R1YZDg1TFt9xiuVO3PgZgGy0H0Dwm8rF5BskF+OPT7PpO+NxtYZehtSE++FoK+bwMR2O3JNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=i0eNphas; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a868831216cso735168066b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 00:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725434856; x=1726039656; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jh5+8dfcxP1n12UyJdsCb2LbYKxVcZ8KkWJqqimBRgs=;
        b=i0eNphasexN6iAQD/37AoHqM9q/IRbcSahPvWCTEBb7mkC818hospyUNuW0doDW6jy
         m0JiJ04HTSoiSeyXs1puZtdJKXZ+trjd95+A2AzAGaKYILOVyavq5AT/BNLAa74Ve2mS
         1A0PhAdLmG+r4rjNuRAL6nVeB2WZ6uj/eOphWaDWceTc3BQbWTiWenDEb0vBfQM/AEY0
         o4VNib7OErSmtLkGXTdqgcLI9RDbimZKHo2N2caxIeTUswq6SrY/Dmyonjh3LOOO0mY5
         R+zwPWBvMd4CdJfqseZK8qDkzHgbH6Ep1CruQiO/aRAfyex2UUKqKln37qSavbT+HYaW
         jkEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725434856; x=1726039656;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jh5+8dfcxP1n12UyJdsCb2LbYKxVcZ8KkWJqqimBRgs=;
        b=UGGHRftwf+XmbIKNeWP2osstW1KwB4K18to1lYGgQFsludeQ0TjJQ9+tyrx83KApxs
         WbbVH0MqrOhjDPs5fv38S3vGGjo15QWapGnpJqJBBmqBMV+BtaN5l9XoKbKGis+9X7M3
         nB8Qpjv/Z28lU7VKb/dNxQRJ9nsPu8ZkSTBY5DYEHPVd2hu39C/fsfN9NKnjiJ36zxVQ
         OF59nUn8WNHLmluwx5gfVSSh9/rIA4HdFQUte6o0KZ4Ljy8yBn0FQAEEU1pMyiklzxL4
         DeVKVltmXOULNqWjNrQeWwi3NerYH1rRKAeco0i//u78TgCGVyrVDGXbhjajT45mDmN+
         OV5w==
X-Forwarded-Encrypted: i=1; AJvYcCWqt1GL3grEReoVccEiI9vXS1ManjnCw1tduZ3jZNWCVK16JB+CK2L6R2RL5mYZwK86mEFYBa8FylML@vger.kernel.org
X-Gm-Message-State: AOJu0YzzzgyYS258vBvEUuQJ36cBN5NWhyJEpz9xh21YHH3kHVbkAO2d
	DFRDXD+SWAHMoWs1O962lAnZTACFwhQNzBTWS+WzGMGjHNl2m0gpCOY97GUobUyXoKrTq2m93xs
	Qyuk=
X-Google-Smtp-Source: AGHT+IF/mKU8VtKGw3txHXGLrkIcatKpJc6EndsKLR57NmvuX6ejS8m9dixlho5QXWEHWPCuOzFDMg==
X-Received: by 2002:a17:907:7e82:b0:a86:6807:6c34 with SMTP id a640c23a62f3a-a89b9568e96mr956726466b.39.1725434856155;
        Wed, 04 Sep 2024 00:27:36 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d77fasm771151766b.167.2024.09.04.00.27.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 00:27:35 -0700 (PDT)
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
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v3 7/8] dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings
Date: Wed,  4 Sep 2024 10:27:15 +0300
Message-ID: <20240904072718.1143440-8-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240904072718.1143440-1-aardelean@baylibre.com>
References: <20240904072718.1143440-1-aardelean@baylibre.com>
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

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 .../bindings/iio/adc/adi,ad7606.yaml          | 108 ++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 69408cae3db9..f6fbc760d25d 100644
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
@@ -114,6 +124,45 @@ properties:
       assumed that the pins are hardwired to VDD.
     type: boolean
 
+patternProperties:
+  "^channel@([1-8])$":
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
+    oneOf:
+      - required:
+          - reg
+          - diff-channels
+      - required:
+          - reg
+          - bipolar
+
 required:
   - compatible
   - reg
@@ -170,6 +219,17 @@ allOf:
         adi,conversion-start-gpios:
           maxItems: 1
 
+  - if:
+      not:
+        properties:
+          compatible:
+            enum:
+              - adi,ad7606c-16
+              - adi,ad7606c-18
+    then:
+      patternProperties:
+        "^channel@[1-8]+$": false
+
 unevaluatedProperties: false
 
 examples:
@@ -202,4 +262,52 @@ examples:
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


