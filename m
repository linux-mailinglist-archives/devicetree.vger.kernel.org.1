Return-Path: <devicetree+bounces-111455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1817699EE44
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:56:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 868301F25620
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1845E1AF0D4;
	Tue, 15 Oct 2024 13:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bkwCbjO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833671AF0BC
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729000597; cv=none; b=fJFN/TBz3pOKPmW1ZMNMXdkzKrQ4/KbcoK1Dt/xhEl+LYwHv7eH9tKvI1Q4VmHdpXt/3GixycNsTHDuafC6fGdJxplHwAzSJuKRO84orxqg3eZMB91GmT858roIzmq1TJeMIbxsKJkUqxEdobv2704aEg5eVqdlWqMfF8TuG6Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729000597; c=relaxed/simple;
	bh=i5ddTg9UYKxycz6OdhvhiiZOyT6VwY+Z1+h88aZcdf0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OiTk5WjZspyPKxDHMD57rM/7cG1knAeZNcV1fkPzPQCuBV9TcPlkwHqt6w9/UzBjFblz8cAXvyBNW2Hkw/PRNxbXr0BR46KGuYjxZe/TngayTrWxmpDpugldvsoVNQ5pxWi9fWMAVOaIK1CmQM/PssuV9GkXSSTDOiHDst+yWik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bkwCbjO2; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43111cff9d3so40852535e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729000594; x=1729605394; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h90tf0LvnuADZLFwaf8lb54SaNEZPrEuE8XroohvsMM=;
        b=bkwCbjO22u16KPEhUyXuD5Ti6+jDiCI14G213A3xPUH5RSEYU4RdBF5XO47JYPQweJ
         4vxHfGP10jmGV9L4kH77d6SnXVIecg+VRRlKXX5Z4x02/N2R0xQ6kBPy8bb8H7Y8ovkP
         6/WSpcV436FO4ZEfe995ypH//abPAJOIK9asyyF6h36Ju+6d2lNW8hwb717kAfeXceYL
         t+iDG7l0/0VS3tNImaPim7XNXh5Jw2QbiiBBPeLJw6rB05mDal72yKkM5PJ7FrfsUHGG
         zhK9fK/JCOvLqfBbQ5WjmqSV8AOqFMICjvkUuFl1s2J4K0KRPvFB8qmrPbrB6PcPnveI
         7U9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729000594; x=1729605394;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h90tf0LvnuADZLFwaf8lb54SaNEZPrEuE8XroohvsMM=;
        b=WLX1AImdMMV+RtEss3DtEK/+aeYvwGaIxP8D8v8M38QLLBpA7NZrqjrvDjHIX64w8L
         SDVQMSe+Pan1PnivGSEqxEduC6yJwWytyaVWQCE1kJlKGPEqoTTGpspnHM2Rx9ZfPE/B
         D+nqBZ6EXGh2IS4K0JlhneKeUlN9f4QF9pEva9jIX5DeQYFkm64KAa/RU7mO3sGuVc/E
         xqcZIttMFKnhujolOqz4Bhp1u/25E4WKgj5pRs/cTQ5rnTZOcqb4AOMKKMW3eoK05pAN
         lcKjSSugCdgOySZTkB+YYJwnm68miU4yxf0tulWGEO0YJVZYeCPrWoTXfRNdNFp8WP9D
         RugQ==
X-Forwarded-Encrypted: i=1; AJvYcCUua0lebKxYhQZdok7sHSL1Xj14FXe+OQqKP5Qxy6Dp42FzW3dORg/yB6Y+me1L+FhPxqngDM5060Pe@vger.kernel.org
X-Gm-Message-State: AOJu0YwtdmuVOqYFnuUgSz56CbgBYabVU3B5+2oG2PTMkjPdxAr1/KEK
	yGi1iMeq2ylbVfXhnrv9geW5L81Oze5EC1oqfrRpN/0dW+thd08gUS6cJk1mleFJixU7Sq2ffrm
	0
X-Google-Smtp-Source: AGHT+IHhf+9ITq2oLXri+liuyT6Hpb/e08PVQU+OeunYvA4yXrRxB3L9+6EuNBga9KUv0f7mcCsjBw==
X-Received: by 2002:a05:600c:a55:b0:426:5e91:3920 with SMTP id 5b1f17b1804b1-4314a38454cmr5238565e9.29.1729000593672;
        Tue, 15 Oct 2024 06:56:33 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f56f241sm18848295e9.22.2024.10.15.06.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:56:33 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 15 Oct 2024 13:56:14 +0000
Subject: [PATCH v5 1/8] dt-bindings: iio: adc: ad7606: Remove spi-cpha from
 required
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-ad7606_add_iio_backend_support-v5-1-654faf1ae08c@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729000592; l=2087;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=i5ddTg9UYKxycz6OdhvhiiZOyT6VwY+Z1+h88aZcdf0=;
 b=llTDacqfiNiCfSV52+gxL6/KFEr/5JuV2k/zG3dq92qjaNDLxjZdNcY8PXfrKtsnYXPOlGj9J
 ACXaSkeJvUyCc2TpHBuXbitb1XHdWP2ebfTQRuoxa50grZfa4nvyjqv
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The documentation is erroneously stating that spi-cpha is required, and
the example is erroneously setting both spi-cpol and spi-cpha. According
to the datasheet, only cpol should be set.

On zedboard for instance, setting the devicetree as in the example will
simply not work.

Fixes: 416f882c3b40 ("dt-bindings: iio: adc: Migrate AD7606 documentation to yaml")
Fixes: 6e33a125df66 ("dt-bindings: iio: adc: Add docs for AD7606 ADC")
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
index bec7cfba52a7..47081c79a1cf 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
@@ -39,6 +39,11 @@ properties:
   "#size-cells":
     const: 0
 
+  # According to the datasheet, "Data is clocked in from SDI on the falling
+  # edge of SCLK, while data is clocked out on DOUTA on the rising edge of
+  # SCLK".  Also, even if not stated textually in the datasheet, it is made
+  # clear on the diagrams that sclk idles at high.  Subsequently, in case SPI
+  # interface is used, the correct way is to only set spi-cpol.
   spi-cpha: true
 
   spi-cpol: true
@@ -168,7 +173,6 @@ patternProperties:
 required:
   - compatible
   - reg
-  - spi-cpha
   - avcc-supply
   - vdrive-supply
   - interrupts
@@ -255,7 +259,6 @@ examples:
             reg = <0>;
             spi-max-frequency = <1000000>;
             spi-cpol;
-            spi-cpha;
 
             avcc-supply = <&adc_vref>;
             vdrive-supply = <&vdd_supply>;
@@ -288,7 +291,6 @@ examples:
 
             spi-max-frequency = <1000000>;
             spi-cpol;
-            spi-cpha;
 
             avcc-supply = <&adc_vref>;
             vdrive-supply = <&vdd_supply>;

-- 
2.34.1


