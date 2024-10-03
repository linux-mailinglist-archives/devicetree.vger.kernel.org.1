Return-Path: <devicetree+bounces-107625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A53CC98F520
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 19:31:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2E4E61F21466
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E743B1AB535;
	Thu,  3 Oct 2024 17:30:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pjL6gmhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB541AAE2E
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 17:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727976637; cv=none; b=lMb8uysZBNOrL7PtimyB/PAv6SDTMcjARz5LtzNs0upRJ97j9liI8LWXkWsiZnHLICjjVrla9XVrsoobhi4MpBJwGbQvJEDx99VhInYYUJmYOS+JB9GB/UnrW4HC/WHEbHaHyMaoHC4I6AsETuJFSt+WFT84lRFDFi1WwDXHrZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727976637; c=relaxed/simple;
	bh=VqAocCOsSbFOPIH3iE5x2Aum74O5pxc/K/81v3yUg8M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KepTZlrZk+0CzSrlFgEQUcBb+Wk2Dn/C0yynisygxRcGkKgRliv5GF5h1lwDzCBxjwu0gLDPW5eho/60B+2PV27FeO896Kh7Yhph5O6HTs32N/X4zqXK6gYlilQKY36k18+E+lvKbrxG0FZLcBhBOjnvhIZutq/WvnNFSVXUxsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pjL6gmhi; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42cd46f3a26so10902465e9.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 10:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727976634; x=1728581434; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ivEk4g98MHv0mYomhJwL9zdI/5NCH+qrlU0CuQ2UBeo=;
        b=pjL6gmhisCapfwx3npVqRM1HidFrAyofdryLY3jLJvbQkv2iQbt5W2PuhtivXZ0exW
         1wQo0fsuXWZoqXwNlQTX9HuPjYfCyJa6rk7peYAVwlbCQ6qnrkv0m0IijrLFYE/6YzTs
         GQ2zfYAIpQ4CqmlmgjGQ+kkY+uZ4u7aVIDWN4wd2GUrKRfRRtuxT4ciyc+Jorfsu3Drz
         EiTBW5/nKp4EYjmkh5gnRsaoSuBJ/3I1gpeJD5Y6fGXYEKnnpvoIOamYAtXmr48JG+lD
         Z9Jza/lcu+ww3x1aCN4gbcL8oyRopCHXs8CLUBsrEUfv+XqcKvMbHL22xvWj3h6hunzH
         36QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727976634; x=1728581434;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ivEk4g98MHv0mYomhJwL9zdI/5NCH+qrlU0CuQ2UBeo=;
        b=VXFjwmp5L87DcvXQH+mwt+XOkJXgUdcDudTfbxesxAPA4o/VC/FUBR6CGZwkC/vUAt
         LfVnRgl3Q0q4Ok8X0futqsbt+esjLd/MT5fMqRGeNqHSZSLX260wu0xJ081m6y8uBYrV
         7d9x/CaA4zGXLhirJ4pzHg4LdngZlIQFiDMr6JNLMaJ9N9cvhXyugLXxito7uavs98jc
         9Gn9J2fhzQtS7Akx5wntcLsnbWJyMCr5nPXCQ6UC+fwrxeKWN030cS52HtVlTiP//pHC
         y5c/4JZgB4eSTPeDqD9HUikGKM5V7/spiI1yLeZPfv7ydAXvWRGvAg1sQKDY70U7W2Mh
         Ak3w==
X-Forwarded-Encrypted: i=1; AJvYcCWdf0OOhFQyIC6TW90A0YnPaMJQ8aXscGNvHG6bdm+Mu2MhohZjMz0EZi9dktVkLHEYZCVxFpxN3RCI@vger.kernel.org
X-Gm-Message-State: AOJu0YxErW8R40ZbGmkzTbl+z2sL+dOLwZAixyI5B4IS+41WjE5zATRh
	LNVJ6QhLYulRCiod4Ky80J7NwrMXC41jUNnu+/ZSnIIKDZAeuhpkVlIuZAzqD2w=
X-Google-Smtp-Source: AGHT+IG7AtDqMUdyqIalmcmN5PguXIzVAe7vAArMq6JxMZsNkorjjy3GsvqCWuhO6CjcZGDvr0UhOQ==
X-Received: by 2002:adf:fc4d:0:b0:37c:ccbe:39ae with SMTP id ffacd0b85a97d-37d0e8f6a75mr89719f8f.48.1727976633719;
        Thu, 03 Oct 2024 10:30:33 -0700 (PDT)
Received: from [127.0.1.1] (host-79-54-25-3.retail.telecomitalia.it. [79.54.25.3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d082d116asm1703735f8f.90.2024.10.03.10.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 10:30:33 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 03 Oct 2024 19:29:00 +0200
Subject: [PATCH v4 03/11] dt-bindings: iio: dac: adi-axi-dac: add ad3552r
 axi variant
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-3-ceb157487329@baylibre.com>
References: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
In-Reply-To: <20241003-wip-bl-ad3552r-axi-v0-iio-testing-v4-0-ceb157487329@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Nuno Sa <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mihail Chindris <mihail.chindris@analog.com>, 
 Olivier Moysan <olivier.moysan@foss.st.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, devicetree@vger.kernel.org, 
 dlechner@baylibre.com, Mark Brown <broonie@kernel.org>, 
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

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 .../devicetree/bindings/iio/dac/adi,axi-dac.yaml   | 49 +++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml b/Documentation/devicetree/bindings/iio/dac/adi,axi-dac.yaml
index a55e9bfc66d7..e15d02ef6be9 100644
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
@@ -41,13 +43,28 @@ properties:
   '#io-backend-cells':
     const: 0
 
+  '#address-cells':
+    const: 1
+
+  '#size-cells':
+    const: 0
+
 required:
   - compatible
   - dmas
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
+
+unevaluatedProperties: false
 
 examples:
   - |
@@ -59,4 +76,34 @@ examples:
         #io-backend-cells = <0>;
         clocks = <&axi_clk>;
     };
+
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    axi_dac: spi@44a70000 {
+        compatible = "adi,axi-ad3552r";
+        reg = <0x44a70000 0x1000>;
+        dmas = <&dac_tx_dma 0>;
+        dma-names = "tx";
+        #io-backend-cells = <0>;
+        clocks = <&axi_clk>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        dac@0 {
+            compatible = "adi,ad3552r";
+            reg = <0>;
+            reset-gpios = <&gpio0 92 GPIO_ACTIVE_HIGH>;
+            io-backends = <&axi_dac>;
+            spi-max-frequency = <66000000>;
+
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            channel@0 {
+                reg = <0>;
+                adi,output-range-microvolt = <(-10000000) (10000000)>;
+            };
+        };
+    };
 ...

-- 
2.45.0.rc1


