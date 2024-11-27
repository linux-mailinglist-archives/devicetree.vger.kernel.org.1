Return-Path: <devicetree+bounces-125072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1231B9DAA43
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 57C8EB2158D
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00EC72BCFF;
	Wed, 27 Nov 2024 15:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MsH9BkWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89961442E8
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 15:00:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732719613; cv=none; b=TpiGjjwJ5Jum0o/4/aQD61I4/HTHTK7OfWyqKzQ0fVNl5ohRzWvmmwXYB0yIRwcuq10cEy6+6jykxwl3T4BIIu4FCibuV3gL6UNgZkvS09pYbyejERt5nUFlV9kIqReKMlEfV31/jlFoYoVOmPJbP3a/5IaS4/jr6f5rzwSSVRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732719613; c=relaxed/simple;
	bh=c2chI2fPb2+IVOeXoz9ZQxtBUVAWnKXiOkqBr41MPhg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=txdDGgoF/CuhCm5KUzM3KkQnCYZikrxqUubxw+Zgs6vM3MfWg476+jmSdp2KCub1RL7ieW7cKc1zmAq3vwWeDbxglxbz5P4WMRYbqoRV6PKzAFsXIivtyrifjtCFxDHFicbX5309c5mFW3fGN/QZL6QMMiLeDuHHv+rEUS7hZDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MsH9BkWt; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-382296631f1so5656578f8f.3
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 07:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732719610; x=1733324410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0lFn9ttFUfc23iC9zAXiCY9LVgl7Q1TQYlmWddMFg4=;
        b=MsH9BkWt7mEQUHK3fIz9QjthVQ8IwmFxTLV7jVXtDAQRReGpjG/+16uG1/4P/7Yj7a
         nlOJBwc/nYzNBVk9x9um+rkCTfATUenGBjk8xkAIsQkZBb/lIUMUZ5E5eCTe+JtpEbIe
         1ZkV1vTdWoW+AfblGYy44M35XiC4p+b2QZWchAfHnkHN+QIK6lEP0+TLqc7PV5woUPJ8
         zUY918CiVvMc/ebqBWDjwrLsOtMiHHxBfq6BGxTxl3Wk6vP6sDF2KlD53V3iQatTw2Tv
         ZfXyzWtvgBUT4U9pkeOZOhGj+AmOyy4b2bGGirnw1URnYOJXIVlVQGNo5XNe0gZ2nTdv
         lynA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732719610; x=1733324410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k0lFn9ttFUfc23iC9zAXiCY9LVgl7Q1TQYlmWddMFg4=;
        b=lQzorv1cH+FdzSB7sDhvUO/neBvDM28ntjrtLclHQ+e0K2heDytDrK75Tzfmf9DsIg
         zm7yrUXkfIaik5vF/P+XRRes8rQzpsIOhd6VpieNJ2UdfezIV2gQOvuhIa7FRedxp97W
         WDxYl9FbcwYKBnTzmqamxUHy2/efd2gYmHvMjWjGoE5Ntghn8edDvVhh/x12iS5tMeOg
         NyCvtAQFxjTpcBHwj6C5NmG0YctcS4hLfKtqbk/UY4UQLi1zLGrci3vcmw2TKJ24oUAy
         Xdf9zfOMw2lxPoe2GuHOka4NvAXEiWSX0XLmxlwvvm7v511ZQqss1eq8M3CsIP0QUVB+
         Py8w==
X-Forwarded-Encrypted: i=1; AJvYcCVge817jVl04J07Ve4mZmeu0blDsIOoE4fuFefSX850s1kS7TsHtvfctt3GhFzRfgPhvvWfrXy9Ya8e@vger.kernel.org
X-Gm-Message-State: AOJu0YxHJb+E0fgcQ14SWJ+ABk4Qsp+mUcpa97uxfpESdLrkd4d8IWOe
	wJQTAsaD5bKarWFgiXQWH+swAHWh+vOtS5lYzGV0FTHPNCt4urwo/FOhqFtAC48=
X-Gm-Gg: ASbGnctZEKuptnEkDkqS0NHgRB29L3IDDbWRPTdpbB7G+X/nw2Uo4tfQvXdYk1IvHDi
	bWwKdgcqLU51oGGQ6Hq6uFY7TgJlqXEXJ6MgLKK1br4d6MSYFU6uFd0PHopDlElI2zS8YJTVshN
	s4t5gB7e6NHMrBdopfHNw//CRTHysbyEqQU3Jpx8Z2fRSOy/UEYD4cXIksEzsb80OgliDiwIK/A
	jFgs3jm4VD+VAqMQQK/P0ueGYKpbZcB9hBQcPUAfb6OW8cZ+eCCQixCRfzwOuf/6uGf1xhfgTD2
	n1Rx
X-Google-Smtp-Source: AGHT+IEHULXerSP+r+yOAEyZw83Nm59b2Y30xx4nztgFcNfqFf979iBcJXlHTwjZpUxMDllbcwGq3w==
X-Received: by 2002:a05:6000:2d04:b0:382:4a27:132a with SMTP id ffacd0b85a97d-385c6ebcbdemr2027807f8f.16.1732719610204;
        Wed, 27 Nov 2024 07:00:10 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa763a59sm23577435e9.11.2024.11.27.07.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 07:00:09 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Trevor Gamblin <tgamblin@baylibre.com>,
	Nuno Sa <nuno.sa@analog.com>
Subject: [PATCH v4 03/10] dt-bindings: iio: adc: adi,ad7{124,173,192,780}: Allow specifications of a gpio for irq line
Date: Wed, 27 Nov 2024 15:59:32 +0100
Message-ID: <20241127145929.679408-15-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241127145929.679408-12-u.kleine-koenig@baylibre.com>
References: <20241127145929.679408-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=6977; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=c2chI2fPb2+IVOeXoz9ZQxtBUVAWnKXiOkqBr41MPhg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnRzPZBWQdAg1OhqqsYO5AHj5Et9uJ2+Ghb70hc IP1Mig6PCCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0cz2QAKCRCPgPtYfRL+ TqB8B/92m1qv5vDKwe8mGHUTgKPjkCSocGGUxzEPY5vyRexd+hWt9KH9P0ciCMwffCdOBeDzQVq VaNglcpnajGr4mydMmHqlVZhKNR5Ae+FTeZ9FaUHWDy4AwPHYVCWndE1ykE8FpPjKRkP5W1LTI4 yfvy4B2HaJ1xtzwXbZB+s0rdN3wPKWXzUHupX6JcDrpw6x+z/IvQJEx6fNc8xhvbUdXEmVkqg59 bOk0yKVdZobocaj44nobbMVCH8m6zKKUQNOV9yVfDbS+AWh84HDeg6OGUicJNDVdFCkcGVCRZQX 80CjgSyVbjq8/Vz12xeilAEsW8b953GQ/9i/2pKxqpP4UzvF
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

For the AD7124 chip and some of its cousins the logical irq line (̅R̅D̅Y)
is physically on the same pin as the spi MISO output (DOUT) and so
reading a register might trigger an interrupt. For correct operation
it's critical that the actual state of the pin can be read to judge if
an interrupt event is a real one or just a spurious one triggered by
toggling the line in its MISO mode.

Allow specification of an "rdy-gpios" property that references a GPIO
that can be used for that purpose. While this is typically the same GPIO
also used (implicitly) as interrupt source, it is still supposed that
the interrupt is specified as before and usual.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7124.yaml   | 13 +++++++++++++
 .../devicetree/bindings/iio/adc/adi,ad7173.yaml   | 12 ++++++++++++
 .../devicetree/bindings/iio/adc/adi,ad7192.yaml   | 15 +++++++++++++++
 .../devicetree/bindings/iio/adc/adi,ad7780.yaml   | 11 +++++++++++
 4 files changed, 51 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
index 35ed04350e28..9f34a055fdf1 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7124.yaml
@@ -37,6 +37,17 @@ properties:
     description: IRQ line for the ADC
     maxItems: 1
 
+  rdy-gpios:
+    description: |
+      GPIO reading the ̅̅R̅D̅Y line. Having such a GPIO is technically optional but
+      highly recommended because DOUT/̅R̅D̅Y toggles during SPI transfers (in its
+      DOUT aka MISO role) and so usually triggers a spurious interrupt. The
+      distinction between such a spurious event and a real one can only be done
+      by reading such a GPIO. (There is a register telling the same
+      information, but accessing that one needs a SPI transfer which then
+      triggers another interrupt event.)
+    maxItems: 1
+
   '#address-cells':
     const: 1
 
@@ -111,6 +122,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     spi {
       #address-cells = <1>;
       #size-cells = <0>;
@@ -121,6 +133,7 @@ examples:
         spi-max-frequency = <5000000>;
         interrupts = <25 2>;
         interrupt-parent = <&gpio>;
+        rdy-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
         refin1-supply = <&adc_vref>;
         clocks = <&ad7124_mclk>;
         clock-names = "mclk";
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
index 17c5d39cc2c1..c70eb75c6a65 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7173.yaml
@@ -133,6 +133,17 @@ properties:
   '#clock-cells':
     const: 0
 
+  rdy-gpios:
+    description: |
+      GPIO reading the ̅̅R̅D̅Y line. Having such a GPIO is technically optional but
+      highly recommended because DOUT/̅R̅D̅Y toggles during SPI transfers (in its
+      DOUT aka MISO role) and so usually triggers a spurious interrupt. The
+      distinction between such a spurious event and a real one can only be done
+      by reading such a GPIO. (There is a register telling the same
+      information, but accessing that one needs a SPI transfer which then
+      triggers another interrupt event.)
+    maxItems: 1
+
 patternProperties:
   "^channel@[0-9a-f]$":
     type: object
@@ -440,6 +451,7 @@ examples:
         interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
         interrupt-names = "rdy";
         interrupt-parent = <&gpio>;
+        rdy-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
         spi-max-frequency = <5000000>;
         gpio-controller;
         #gpio-cells = <2>;
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
index 66dd1c549bd3..204766de1e01 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7192.yaml
@@ -106,6 +106,17 @@ properties:
     description: see Documentation/devicetree/bindings/iio/adc/adc.yaml
     type: boolean
 
+  rdy-gpios:
+    description: |
+      GPIO reading the ̅̅R̅D̅Y line. Having such a GPIO is technically optional but
+      highly recommended because DOUT/̅R̅D̅Y toggles during SPI transfers (in its
+      DOUT aka MISO role) and so usually triggers a spurious interrupt. The
+      distinction between such a spurious event and a real one can only be done
+      by reading such a GPIO. (There is a register telling the same
+      information, but accessing that one needs a SPI transfer which then
+      triggers another interrupt event.)
+    maxItems: 1
+
 patternProperties:
   "^channel@[0-9a-f]+$":
     type: object
@@ -181,6 +192,7 @@ unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/gpio/gpio.h>
     spi {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -195,6 +207,7 @@ examples:
             clock-names = "mclk";
             interrupts = <25 0x2>;
             interrupt-parent = <&gpio>;
+            rdy-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
             aincom-supply = <&aincom>;
             dvdd-supply = <&dvdd>;
             avdd-supply = <&avdd>;
@@ -207,6 +220,7 @@ examples:
         };
     };
   - |
+    #include <dt-bindings/gpio/gpio.h>
     spi {
         #address-cells = <1>;
         #size-cells = <0>;
@@ -224,6 +238,7 @@ examples:
             #clock-cells = <0>;
             interrupts = <25 0x2>;
             interrupt-parent = <&gpio>;
+            rdy-gpios = <&gpio 25 GPIO_ACTIVE_LOW>;
             aincom-supply = <&aincom>;
             dvdd-supply = <&dvdd>;
             avdd-supply = <&avdd>;
diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
index be2616ff9af6..5f8f59e4e336 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
@@ -63,6 +63,17 @@ properties:
       marked GPIO_ACTIVE_LOW.
     maxItems: 1
 
+  rdy-gpios:
+    description: |
+      GPIO reading the ̅̅R̅D̅Y line. Having such a GPIO is technically optional but
+      highly recommended because DOUT/̅R̅D̅Y toggles during SPI transfers (in its
+      DOUT aka MISO role) and so usually triggers a spurious interrupt. The
+      distinction between such a spurious event and a real one can only be done
+      by reading such a GPIO. (There is a register telling the same
+      information, but accessing that one needs a SPI transfer which then
+      triggers another interrupt event.)
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.45.2


