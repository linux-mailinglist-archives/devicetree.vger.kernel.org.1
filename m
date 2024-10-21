Return-Path: <devicetree+bounces-113666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C44A9A68CC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 14:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18A5C2895DC
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:41:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EAF71F7068;
	Mon, 21 Oct 2024 12:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DyNcZWJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com [209.85.128.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFBE1F4FA1
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 12:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729514500; cv=none; b=gpJKJ6PuIecdrbOtELnO99DO2qMnyFE+JdnG/hYu6rUHBxFfH9iXDuyDthzudTuXR/i/M3uZ37k8L/qhuC2gu0IGGhUXst4w2ij3MRwLb1te/qnz/6ylZuT9hIqiRXZVdfJZ8KZR6NiXX2wx1dVXsYUPstcJn2e9tPSMbdL1rRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729514500; c=relaxed/simple;
	bh=817NpBhsFo0YO53ztE+JzVAnUTKLGkw9f/63H82CZCY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JT1tW4muHT8NRDT7d2RmoYTKi+sWzAXY8GcS9cn70aycFv85qMWbn0R3PG2HMN9x8P2NnCBuUm6P99R4b3+B5b+lbw+FsLzm1ppEm2WdJDZpWkHtpLK5BuExsFT4a4CWkx7ATX7HOabcA15ayqfDdDlZvcXnrRQzS+PffOFrvOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DyNcZWJb; arc=none smtp.client-ip=209.85.128.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f68.google.com with SMTP id 5b1f17b1804b1-43155afca99so31320985e9.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 05:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729514496; x=1730119296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OF/r/TVgTeqXnk6myjMpZwlua4wzhd0TmK63kcaDYtM=;
        b=DyNcZWJbFD2T8bSrN7tWGMXzDPOUINLi4fgnlzl3cb8p+aQZjlBmECM4MDXP6v4JPi
         ckMmnY95G8xvs5UQeJGWDiFHFl+uN+JS+40BaD+Yv93yDXA4a4Ge0gP7j5Myy6sOPZJZ
         FKjZ8CAGZfNCjv4DKs3KAZ+efdhulJrs8IRI0cS6jJeGK92wgk5GU8xC/0mwX/rCGILY
         VcetdDnAvuQojw6yIpwNXhgGcF0lOCRGJtBl23iKpFNVZAsm4V6aem90kHgXnBAxsYK8
         ocf9ZQariqI+Sgj/AGYY8FnDz5I2p4MPq+7uH2tf4I8cCFdkDOgbkkY7kqj4CwihZDmV
         /BpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729514496; x=1730119296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OF/r/TVgTeqXnk6myjMpZwlua4wzhd0TmK63kcaDYtM=;
        b=XxVXI6xw+g903XUfIq5S1BJ4IMba6L8n2L3iStgJaAQ0E7IldPtDwcB32f2cA1Px5D
         BV32u5VSLq/kFwHc8X0lCDxOhk2CYybExCD3wuvALz6xLT4njj/LdWVXMt8GHSHLMnHb
         dNuE6qWGThqmxSzrb/vWsZ+TjMkND0RRIxSJ+V6KA4T2+nj7v2ZgrWKSbcNBNkScK3rp
         Np88JOxa4PMRZqgYhOf/KWRPMmMlFhOO7MdOc/v3QYd8hvw5rNP0sECxWJ7fAe6VYDIh
         EEX+FiqF2YFt1Vw9Scs5rQ7h7wj/WCG05bdhhrfvA1rECRWz+iDfjRzVp6lZRanPLQUj
         wtkA==
X-Forwarded-Encrypted: i=1; AJvYcCV0ASeOrYJcnPgCADsGT2+rd8bNnIvmWm2KmpcLKZpX4iK3ZGmTA9tfmCDsXwWclVRNM2YA63cCbgOA@vger.kernel.org
X-Gm-Message-State: AOJu0YxHZA3rT7j0vj6n3n8xCpKwkMxeSpRHSxlXjhZ4ZypX9isagDZo
	BM/AvlSuoom89tm/NXgnp2rjh2qgoayGsnOoZEU+plHjTFnrtUS6Lk4R0dpdoTM=
X-Google-Smtp-Source: AGHT+IEMkFGQDUO6rCKtdIXPp9bv0uuyQ5w3XqgBV6SjsYDRwmMNFrntGTMMxswg7d3SpT+bbCIN/g==
X-Received: by 2002:a05:600c:4ed2:b0:431:57cf:f13d with SMTP id 5b1f17b1804b1-4316161dcc1mr69586315e9.3.1729514496272;
        Mon, 21 Oct 2024 05:41:36 -0700 (PDT)
Received: from [127.0.1.1] (host-82-61-199-210.retail.telecomitalia.it. [82.61.199.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f5cc88esm55996075e9.46.2024.10.21.05.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 05:41:35 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 21 Oct 2024 14:40:12 +0200
Subject: [PATCH v7 2/8] dt-bindings: iio: dac: adi-axi-dac: add ad3552r axi
 variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-wip-bl-ad3552r-axi-v0-iio-testing-v7-2-969694f53c5d@baylibre.com>
References: <20241021-wip-bl-ad3552r-axi-v0-iio-testing-v7-0-969694f53c5d@baylibre.com>
In-Reply-To: <20241021-wip-bl-ad3552r-axi-v0-iio-testing-v7-0-969694f53c5d@baylibre.com>
To: =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, dlechner@baylibre.com, 
 Mark Brown <broonie@kernel.org>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Add a new compatible and related bindigns for the fpga-based
"ad3552r" AXI IP core, a variant of the generic AXI DAC IP.

The AXI "ad3552r" IP is a very similar HDL (fpga) variant of the
generic AXI "DAC" IP, intended to control ad3552r and similar chips,
mainly to reach high speed transfer rates using a QSPI DDR
(dobule-data-rate) interface.

The ad3552r device is defined as a child of the AXI DAC, that in
this case is acting as an SPI controller.

Note, #io-backend is present because it is possible (in theory anyway)
to use a separate controller for the control path than that used
for the datapath.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 69 +++++++++++++++++++++-
 1 file changed, 66 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
index a55e9bfc66d7..0aabb210f26d 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
@@ -19,11 +19,13 @@ description: |
   memory via DMA into the DAC.
 
   https://wiki.analog.com/resources/fpga/docs/axi_dac_ip
+  https://analogdevicesinc.github.io/hdl/library/axi_ad3552r/index.html
 
 properties:
   compatible:
     enum:
       - adi,axi-dac-9.1.b
+      - adi,axi-ad3552r
 
   reg:
     maxItems: 1
@@ -36,7 +38,12 @@ properties:
       - const: tx
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
   '#io-backend-cells':
     const: 0
@@ -47,7 +54,31 @@ required:
   - reg
   - clocks
 
-additionalProperties: false
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: adi,axi-ad3552r
+    then:
+      $ref: /schemas/spi/spi-controller.yaml#
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: s_axi_aclk
+            - const: dac_clk
+    else:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          items:
+            - const: s_axi_aclk
+
+unevaluatedProperties: false
 
 examples:
   - |
@@ -57,6 +88,38 @@ examples:
         dmas = <&tx_dma 0>;
         dma-names = "tx";
         #io-backend-cells = <0>;
-        clocks = <&axi_clk>;
+        clocks = <&clkc 15>;
+        clock-names = "s_axi_aclk";
+    };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    axi_dac: spi@44a70000 {
+        compatible = "adi,axi-ad3552r";
+        reg = <0x44a70000 0x1000>;
+        dmas = <&dac_tx_dma 0>;
+        dma-names = "tx";
+        #io-backend-cells = <0>;
+        clocks = <&clkc 15>, <&ref_clk>;
+        clock-names = "s_axi_aclk", "dac_clk";
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        dac@0 {
+            compatible = "adi,ad3552r";
+            reg = <0>;
+            reset-gpios = <&gpio0 92 GPIO_ACTIVE_HIGH>;
+            io-backends = <&axi_dac>;
+            spi-max-frequency = <20000000>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            channel@0 {
+                reg = <0>;
+                adi,output-range-microvolt = <(-10000000) (10000000)>;
+            };
+        };
     };
 ...

-- 
2.45.0.rc1


