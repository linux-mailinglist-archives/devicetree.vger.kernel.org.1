Return-Path: <devicetree+bounces-160160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 522D5A6DA85
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:56:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4707A7A69EC
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751EA25F977;
	Mon, 24 Mar 2025 12:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YnPQcJve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C7525F7AC
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820800; cv=none; b=dqxUbsqVlDw9o6PmHQWhGWAeL6uhXoeBaLnoXyO9wRoJa+5yxu3sCPkJJt+lsWQWVHUHg3yJZBIZrUoV5Hvm9+a5d/GgYVkypqMYxTmM+o7WjQaEclxQ04tCqoy8M64r66sFLB/Op+pt5Sf8jUlgfjFoUUMuUc0xC9rtgVendXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820800; c=relaxed/simple;
	bh=aCC06cQYStRLjYVF2ZVpcwRGmX4d+mJq2tiafIi1n7g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r89dSCZ5SYpNE9hiJb0PKUI4KrDaVusMeSxNB75iAGMWnlCy29xbO5nFOkwGNQS1Pr/avzOBNng4S+2YsjugPI8TRF/ZMcSBXCiEx0+UxQHzYtoCZea/D2Fw6KkMKrpVWyuOGz7R5EedLsw0iU8m8lKuLXbVUeBXrv/AZceda4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YnPQcJve; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3978ef9a778so211366f8f.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820797; x=1743425597; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DhkKbL6Pj56pOT19f4sCe0HKXFmoTLO1O69IhcGdyYM=;
        b=YnPQcJve4xeM+tqGA9DuoxKTXVhUw/72V6JhiGTaNcmrFGgSNcNWRYN+oyGj3Fpdmv
         J0L7ERuC7QR9G95DC0vDCOdUCCQJOoqg85AWG093pjI4vG+v4hpwszWx8dk5ihXSmqYl
         B0XWb0sSALJX9gmxuS07t6jcW78fziN6MP/bhIlAaCWTwc/ttbnR8936lL5LoLBuV59a
         j6/kkwKuPUVTQtUqyQDCtC1VoRe2Oqw1BD/bzoLEEf9vpxsWwz2lotC8E9LHAtFZAh6a
         5N3if0WRP58c0Vo2tUy5dVpGFOupQ0M3imYboXLsSxt733PHtYo+nGefVSOdOvgqmbl+
         UFQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820797; x=1743425597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DhkKbL6Pj56pOT19f4sCe0HKXFmoTLO1O69IhcGdyYM=;
        b=SPgDkblc/NH9sWMwhNXXFOpOq6BBe1OV3yklS/T8bUEVYZ+C3m5OvSelu6OCjWB1g4
         G6TdRN1WNdZJHjWPQWSvVpts+Ochlx14SHwmFNDDAUUG+qfjipCLqPPsEeOJYfHnP1xO
         JMtK11rguvj0E63JA3vhRTe0TatYgPbArj3U1TMuEc7F3/SbpLXBoBHD4MvyvlHM5BKf
         egTGTyQSzm6/VAWbhFiH8qneq2sNh4dZE3diT0Aozbca4OooL0SIPhUvs7pxcusCEeEW
         AQxF0BXGWXlQqiR4lbAnwUBkQRTJwgSZ1wR8H7bOJ2yAl08EDz1U1cUjAI8e1mJMGRGl
         oQgw==
X-Forwarded-Encrypted: i=1; AJvYcCWMcC7XjinIDwRPlGz8ULJRpq72ni4l+C1gwnSDZ4f1NDLZxN0qLmARUOTlPkt4tF2JjvT/GdnZsgwL@vger.kernel.org
X-Gm-Message-State: AOJu0YwmagpvRmE0541rSXjCZs4uiv1C86ebE7yGL+frDq5HqDGiAglv
	sqn6O66m3CAAaQJ5kirbPmmlJn+WqSFsmeGwcEHNTlaCowmbhfsnBa6dkOpnL90=
X-Gm-Gg: ASbGncupspTLuqAbzUgWxZvnTZdnGWJAg7MKm4Op5799e/14zjIp/eG++WQYyZ5YkwP
	tj9/M6yVCcQ1PKzYnvF4Fk5V+kIAjaeoMbmtNIKYW0dirdZvIPU8+UpZJ2UxExdbJV5Kvypd/EY
	bH30+OI7fe7asyheLkY5OXajjzlFbD++ytf9S+Pkei8LCxFUXVWe3x6l0bXyT9BOet75vaXxIDx
	czippYJSvxuWSV1VtQsXK6xBfB5sL3MBez/s7maMvPJVExPP7BftfJ9FV2wi+IFFrjXtEmADbtr
	Vfij5MI2TxJeBMQ2h1P91TvD2tWdtl2KCNuFCnxsrxusTZMISG6iDWPki6g6wdDnLP0i
X-Google-Smtp-Source: AGHT+IELSRnS6+jDcoXD4ACf2eotZaDufAhTgDfQtnO8l4nSz1FNdFEmD6wP6RQaXMoBJDuTs30T2A==
X-Received: by 2002:a05:6000:1842:b0:391:2f03:4cb9 with SMTP id ffacd0b85a97d-3997f8f9c98mr4498820f8f.1.1742820796672;
        Mon, 24 Mar 2025 05:53:16 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9efd61sm11017167f8f.91.2025.03.24.05.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:53:16 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Kim Seer Paller <kimseer.paller@analog.com>,
	Anshul Dalal <anshulusr@gmail.com>,
	Ramona Gradinariu <ramona.gradinariu@analog.com>,
	Antoniu Miclaus <antoniu.miclaus@analog.com>,
	Robert Budai <robert.budai@analog.com>,
	Petre Rodan <petre.rodan@subdimension.ro>,
	Andreas Klinger <ak@it-klinger.de>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] dt-bindings: iio: Correct indentation and style in DTS example
Date: Mon, 24 Mar 2025 13:53:12 +0100
Message-ID: <20250324125313.82226-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS example in the bindings should be indented with 2- or 4-spaces and
aligned with opening '- |', so correct any differences like 3-spaces or
mixtures 2- and 4-spaces in one binding.

No functional changes here, but saves some comments during reviews of
new patches built on existing code.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/iio/adc/st,stm32-adc.yaml        | 102 +++++++++---------
 1 file changed, 51 insertions(+), 51 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
index ef9dcc365eab..17bb60e18a1c 100644
--- a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
@@ -498,7 +498,7 @@ patternProperties:
 examples:
   - |
     // Example 1: with stm32f429, ADC1, single-ended channel 8
-      adc123: adc@40012000 {
+    adc123: adc@40012000 {
         compatible = "st,stm32f4-adc-core";
         reg = <0x40012000 0x400>;
         interrupts = <18>;
@@ -512,28 +512,28 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
         adc@0 {
-          compatible = "st,stm32f4-adc";
-          #io-channel-cells = <1>;
-          reg = <0x0>;
-          clocks = <&rcc 0 168>;
-          interrupt-parent = <&adc123>;
-          interrupts = <0>;
-          st,adc-channels = <8>;
-          dmas = <&dma2 0 0 0x400 0x0>;
-          dma-names = "rx";
-          assigned-resolution-bits = <8>;
+            compatible = "st,stm32f4-adc";
+            #io-channel-cells = <1>;
+            reg = <0x0>;
+            clocks = <&rcc 0 168>;
+            interrupt-parent = <&adc123>;
+            interrupts = <0>;
+            st,adc-channels = <8>;
+            dmas = <&dma2 0 0 0x400 0x0>;
+            dma-names = "rx";
+            assigned-resolution-bits = <8>;
         };
         // ...
         // other adc child nodes follow...
-      };
+    };
 
   - |
     // Example 2: with stm32mp157c to setup ADC1 with:
     // - channels 0 & 1 as single-ended
     // - channels 2 & 3 as differential (with resp. 6 & 7 negative inputs)
-      #include <dt-bindings/interrupt-controller/arm-gic.h>
-      #include <dt-bindings/clock/stm32mp1-clks.h>
-      adc12: adc@48003000 {
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    adc12: adc@48003000 {
         compatible = "st,stm32mp1-adc-core";
         reg = <0x48003000 0x400>;
         interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
@@ -550,27 +550,27 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
         adc@0 {
-          compatible = "st,stm32mp1-adc";
-          #io-channel-cells = <1>;
-          reg = <0x0>;
-          interrupt-parent = <&adc12>;
-          interrupts = <0>;
-          st,adc-channels = <0 1>;
-          st,adc-diff-channels = <2 6>, <3 7>;
-          st,min-sample-time-nsecs = <5000>;
-          dmas = <&dmamux1 9 0x400 0x05>;
-          dma-names = "rx";
+            compatible = "st,stm32mp1-adc";
+            #io-channel-cells = <1>;
+            reg = <0x0>;
+            interrupt-parent = <&adc12>;
+            interrupts = <0>;
+            st,adc-channels = <0 1>;
+            st,adc-diff-channels = <2 6>, <3 7>;
+            st,min-sample-time-nsecs = <5000>;
+            dmas = <&dmamux1 9 0x400 0x05>;
+            dma-names = "rx";
         };
         // ...
         // other adc child node follow...
-      };
+    };
 
   - |
     // Example 3: with stm32mp157c to setup ADC2 with:
     // - internal channels 13, 14, 15.
-      #include <dt-bindings/interrupt-controller/arm-gic.h>
-      #include <dt-bindings/clock/stm32mp1-clks.h>
-      adc122: adc@48003000 {
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp1-clks.h>
+    adc122: adc@48003000 {
         compatible = "st,stm32mp1-adc-core";
         reg = <0x48003000 0x400>;
         interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
@@ -587,28 +587,28 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
         adc@100 {
-          compatible = "st,stm32mp1-adc";
-          #io-channel-cells = <1>;
-          reg = <0x100>;
-          interrupts = <1>;
-          #address-cells = <1>;
-          #size-cells = <0>;
-          channel@13 {
-            reg = <13>;
-            label = "vrefint";
-            st,min-sample-time-ns = <9000>;
-          };
-          channel@14 {
-            reg = <14>;
-            label = "vddcore";
-            st,min-sample-time-ns = <9000>;
-          };
-          channel@15 {
-            reg = <15>;
-            label = "vbat";
-            st,min-sample-time-ns = <9000>;
-          };
+            compatible = "st,stm32mp1-adc";
+            #io-channel-cells = <1>;
+            reg = <0x100>;
+            interrupts = <1>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            channel@13 {
+                reg = <13>;
+                label = "vrefint";
+                st,min-sample-time-ns = <9000>;
+            };
+            channel@14 {
+                reg = <14>;
+                label = "vddcore";
+                st,min-sample-time-ns = <9000>;
+            };
+            channel@15 {
+                reg = <15>;
+                label = "vbat";
+                st,min-sample-time-ns = <9000>;
+            };
         };
-      };
+    };
 
 ...
-- 
2.43.0


