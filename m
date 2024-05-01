Return-Path: <devicetree+bounces-64276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1ED68B8C47
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 16:56:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 462D41F2198F
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 14:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 161D412F59A;
	Wed,  1 May 2024 14:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ihh5VOAF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BB512F58D
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575357; cv=none; b=CDSg9OXqU00CR8hUFW3wfqFeZfDc0yFvR+AcV45WuunG4nOvNhORKdOtRxVJb4VbzNj0VS3qYphG3Cor7PjvsW0Bpq9wmBYeAXisiCXUBlAYIEaPllKRFuXXv+vEpSMrbQu3FRF0vX5N887Pe7TFT9ZTfxIpjdZw/JxlOcJO0aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575357; c=relaxed/simple;
	bh=OB8tgBWPkNRhkYwIg+R2Ji0Wb3SGKEyVa27sOqMTYcs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZD3Oo4AnkMg2dEy7TK3H91LA8uycAueZcxGY+p4vecdrJsZqVkp8PRKM/u0xqokyooiBLNq7q5teS4cZXo5XxCr6Vr/ux6wJojV7xMLQ2x4aO4eGgbriSwGOLBi3MOLkwd4JeKiF5AG/1rYROTPucdqu7603JciGzRenRMallfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ihh5VOAF; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-34d91612218so457124f8f.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 07:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1714575352; x=1715180152; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kJ8CU1KsZdsOI/zOnwTeILM7ZuUE9hyEpMnwtAluPZE=;
        b=Ihh5VOAF5kqM+khFfNVYVVEgLvdamwx3Rx+OxH6lfnPkr7UyIN8KTqfLhn2LDuHj+X
         H3NK7Xd1xKAC8uei6tASU3u40u/FOqIVRSm9AFAbhu0Iuqcd8dNeyJXVnuIIYv4IMzgI
         T6ZXiHbvlAkwr6+f84ODRkH9F30WAucHK09QlEv5E2EqUs+fpSll9/N99RK5gt+8hc+i
         mQJas8mxfCfCzKzviAbThhJA63v4GbT1vsu1SCae7fc/QpN4FgYe2eq1e9Rqk6GJAt2P
         gcs7E6PEeXljlbkmrAaLQXzcH4oCnTHQV0h7rKYs1sEDM/S8x8rc+GLvwzfnyY9t1D6z
         BJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714575352; x=1715180152;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kJ8CU1KsZdsOI/zOnwTeILM7ZuUE9hyEpMnwtAluPZE=;
        b=GAOI+fof+SInci1D/AnFu4SgXMD9pQbYHV0ENC6+eBJ46B50cEuG8dGsOUOpR9e4b9
         DFNLCGOHBEfo0jFj3H3nOui9DqQ1nxyLmiFfPuvnLTZvmbopJ7pl+tfTY2AQrU6lZP3X
         wA+TLaxjvQcAXaulO+a0Ddkp9W5zAdmiYc33Nn9BiY0hxI4T6ptgAj90X25qxopr1EHo
         0QKfwaJtxFetyjf0cnaj4r/W1l+89JJ04VP25he/dLo6F0SyQP/g6mMaRpD+eKAKLpJP
         i8wmZaFjTZcpwiVMdfNdSUpP8OkL7j3C2uma7J6VlO0bI2JjJ+r67yGQ8g5DWKF80DUa
         WT+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXy1OtvtIFuF10KweWuAEcN3CU0egVWY0U5dhtl7QxIYoPPSsPmV2P3TgaJVQOgM+nx4On9rTe1aRESr7CRTCMnM5M9U5WT/V7Kpw==
X-Gm-Message-State: AOJu0YwlaTHFX67Qg5CpHjiaNgOo5ZH/6huhZ3Il4gzqk9ls3oBoj9Kl
	t8Y8ZPjRDPISY7kcsOztheQGR/FDMSaZQJeOZO4evNUpf+T8nBEyEbao8D9StVo=
X-Google-Smtp-Source: AGHT+IEbjszfmVkTzjjE49mNkp1RDoY6WJdm5Dh/H6CEyFull2eOfXFaa255+mdEhVRdivb1lKxn4A==
X-Received: by 2002:adf:e708:0:b0:34d:a37d:d383 with SMTP id c8-20020adfe708000000b0034da37dd383mr3329382wrm.22.1714575352183;
        Wed, 01 May 2024 07:55:52 -0700 (PDT)
Received: from [192.168.1.61] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id o27-20020a05600c511b00b00418a386c17bsm2422999wms.12.2024.05.01.07.55.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 07:55:52 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 01 May 2024 16:55:36 +0200
Subject: [PATCH RFC v6 03/10] dt-bindings: iio: adc: ad7380: add
 pseudo-differential parts
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240501-adding-new-ad738x-driver-v6-3-3c0741154728@baylibre.com>
References: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
In-Reply-To: <20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 David Lechner <dlechner@baylibre.com>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Julien Stephan <jstephan@baylibre.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0

From: David Lechner <dlechner@baylibre.com>

Adding AD7383 and AD7384 compatible parts that are pseudo-differential.

Pseudo-differential require common mode voltage supplies, so add them
conditionally

Signed-off-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Julien Stephan <jstephan@baylibre.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
index 5e1ee0ebe0a2..de3d28a021ae 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7380.yaml
@@ -13,6 +13,8 @@ maintainers:
 description: |
   * https://www.analog.com/en/products/ad7380.html
   * https://www.analog.com/en/products/ad7381.html
+  * https://www.analog.com/en/products/ad7383.html
+  * https://www.analog.com/en/products/ad7384.html
 
 $ref: /schemas/spi/spi-peripheral-props.yaml#
 
@@ -21,6 +23,8 @@ properties:
     enum:
       - adi,ad7380
       - adi,ad7381
+      - adi,ad7383
+      - adi,ad7384
 
   reg:
     maxItems: 1
@@ -42,6 +46,16 @@ properties:
       A 2.5V to 3.3V supply for the external reference voltage. When omitted,
       the internal 2.5V reference is used.
 
+  aina-supply:
+    description:
+      The common mode voltage supply for the AINA- pin on pseudo-differential
+      chips.
+
+  ainb-supply:
+    description:
+      The common mode voltage supply for the AINB- pin on pseudo-differential
+      chips.
+
   interrupts:
     description:
       When the device is using 1-wire mode, this property is used to optionally
@@ -56,6 +70,24 @@ required:
 
 unevaluatedProperties: false
 
+allOf:
+  # pseudo-differential chips require common mode voltage supplies,
+  # true differential chips don't use them
+  - if:
+      properties:
+        compatible:
+          enum:
+            - adi,ad7383
+            - adi,ad7384
+    then:
+      required:
+        - aina-supply
+        - ainb-supply
+    else:
+      properties:
+        aina-supply: false
+        ainb-supply: false
+
 examples:
   - |
     #include <dt-bindings/interrupt-controller/irq.h>

-- 
2.44.0


