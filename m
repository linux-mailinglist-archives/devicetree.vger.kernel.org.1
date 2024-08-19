Return-Path: <devicetree+bounces-94685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECDD9563EC
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 08:49:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 345011C213D4
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 06:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91B9B15921B;
	Mon, 19 Aug 2024 06:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ISYAykmD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42BD158DCE
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 06:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724050070; cv=none; b=o1qKRFWubqplY7dJrj9hajoOLiUJiYeSlGMBV2kU8ECa/jrh7hJBeJ0FaBFdh301v0uon356UTerosJWkUafEcAJ5KgXsNMYO/1E5ucz0qah28lJ2PHHdlDFs73HLjEp4dqhIkDBFRuyLP1o9MZRi3ydCx7IO1eW9jddx0H0rHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724050070; c=relaxed/simple;
	bh=zjkhjxugrpPcOzPM7cJwvWgeaXdH9eHWxMEf0cBLd6I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i/5Yz2Ui9Rauh7RcePC73YRs2p/fydRTjflXugUyersDDKN/lr4AFMitFEjoRGoUhecUEx57PDj018oMVI55Sy0vOjwfkHdlIw1lmsxptQT4djulK+2YySn2GIjWP1cUqPUcOTBjjbz/XGG6wi7NzYGsMiyTdXHXMPSCD9pBFMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ISYAykmD; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5bef259a71fso104892a12.1
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 23:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724050067; x=1724654867; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N5HQOz+OPivxBeIw9/E/M5AYwS74pv+AP5N6QBsRsGE=;
        b=ISYAykmDCc8rGxGOCLKYBKK5MgppA90pFD7mXNotcWCXBdh55zz4w61UcpqN/zyptJ
         Z5TNk+PjuNqJClap8KJUd/PzDQ/LhzxlUpFMgG0ESfhXbDjPGTBODiSDltaOYnezgUZR
         0qBiAx8hM50RgkRqdol8PWR1nEYe1R+uy75N/24BPEtvrV6JOPt0u/qaOACTv7dwqWGU
         evzclpuSveHqeMclH5uRFmaWnVcJD6FV0Y1Do88jaT7zQFM7Yc5cbWP7a/K2wWErEfwG
         DkWTbc++p2Q8wAUv9pm2TjHFKr9O7SRXOsl75SOras9LAfUx2vba0jxiTuOW4+LoxX50
         JlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724050067; x=1724654867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N5HQOz+OPivxBeIw9/E/M5AYwS74pv+AP5N6QBsRsGE=;
        b=qwIGARAIeW0aebiGPIACRba0EQ6p9bYW1l+i+XfeAos6teS93/AaWri3vElzFL5yG3
         LidXb/lX7iOp9A0Gap2zoOQXZLZ/OK4w764L85R1LokerFV4RPdy49ARMnJjMcYNW/GT
         SPYt5vEGhvvn9BH9sc/mbZ6tPwzJ6W2G8YVGd0U0mEZ1/J1DJ+JosNlukTs0QKDP8RXE
         2WWJXPnImSzqvZ7q27sGKn1rE2goXDUQ0nQH3Z9jdOu/5om8WkiJMq/CkQUEFyP3rSHg
         Et7eL1pXMM9AFygmTz/o5lR2ilp7j+y1fxZODr67Ul/vIcwrO9JCZXXN+z7UB+CMK+JC
         JrTA==
X-Forwarded-Encrypted: i=1; AJvYcCW6/SLzYKiTzuXijP5oPHwSyR1hP4NmcBpFGmj8ooLoiQM1/jBsimoJC2ook+eNv7L4RR0Hx4BFBlN3@vger.kernel.org
X-Gm-Message-State: AOJu0YzF6alUm/IQkong+Uw1F3OiaaCkyzjpXH6Th54lv0YLX5yDaj9z
	BD2ik1eQhuZbac0Pq03y+GmUqooYahIBSni3MwKac14NTGjJWuHPkIKWIEEn/VeWRQmDmnmVHav
	v4J4=
X-Google-Smtp-Source: AGHT+IF8k63D6kdG9ePEGXSjcSrgL/j5g6ct6jHlHHPqECtDZSi8DlPJDH0Gb7qX2rmHvBmucGwJnA==
X-Received: by 2002:a17:907:9717:b0:a83:70d0:7a1e with SMTP id a640c23a62f3a-a8392a6b37dmr419257866b.9.1724050066979;
        Sun, 18 Aug 2024 23:47:46 -0700 (PDT)
Received: from neptune.lan ([188.27.128.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838c6bfcsm599069966b.28.2024.08.18.23.47.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 23:47:46 -0700 (PDT)
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
Subject: [PATCH 6/7] dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings
Date: Mon, 19 Aug 2024 09:47:16 +0300
Message-ID: <20240819064721.91494-7-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240819064721.91494-1-aardelean@baylibre.com>
References: <20240819064721.91494-1-aardelean@baylibre.com>
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

This DT adds support for 'channel@X' nodes'

Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 .../bindings/iio/adc/adi,ad7606.yaml          | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index 69408cae3db9..f9e177de3f8c 100644
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
@@ -24,6 +26,8 @@ properties:
       - adi,ad7606-6
       - adi,ad7606-8  # Referred to as AD7606 (without -8) in the datasheet
       - adi,ad7606b
+      - adi,ad7606c-16
+      - adi,ad7606c-18
       - adi,ad7616
 
   reg:
@@ -114,6 +118,30 @@ properties:
       assumed that the pins are hardwired to VDD.
     type: boolean
 
+patternProperties:
+  "^channel@([0-9a-f])$":
+    type: object
+    $ref: adc.yaml
+    unevaluatedProperties: false
+
+    properties:
+      reg:
+        description: The channel number.
+        minimum: 0
+        maximum: 7
+
+      diff-channel:
+        description: Channel is bipolar differential.
+        type: boolean
+
+      bipolar:
+        description: |
+          Channel is bipolar single-ended. If 'diff-channel' is set, then
+          the value of this property will be ignored.
+        type: boolean
+    required:
+      - reg
+
 required:
   - compatible
   - reg
@@ -170,6 +198,21 @@ allOf:
         adi,conversion-start-gpios:
           maxItems: 1
 
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - adi,ad7606c-16
+                - adi,ad7606c-18
+    then:
+      patternProperties:
+        "^channel@([0-9a-f])$":
+          properties:
+            diff-channels: false
+            bipolar: true
+
 unevaluatedProperties: false
 
 examples:
@@ -202,4 +245,44 @@ examples:
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
+            compatible = "adi,ad7606-8";
+            reg = <0>;
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
+                diff-channel;
+            };
+
+            channel@3 {
+                reg = <3>;
+                bipolar;
+            };
+        };
+    };
 ...
-- 
2.46.0


