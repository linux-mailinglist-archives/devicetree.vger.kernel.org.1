Return-Path: <devicetree+bounces-138216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 817FCA0C325
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 22:03:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E73B21671B7
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 21:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72461F9AB2;
	Mon, 13 Jan 2025 21:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZV/MsMD3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DC71D54EE
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 21:01:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736802073; cv=none; b=XbNQZC5kzKk2bSfHnoL/vCB/+Jf16ZkOAd0bl+PgR8CLcmF5rr4e/Bl6MqQtM6NCLTZ1WxVxhgUVRQk10cJBO+LWgAHA99Buur1EsA4RKLzv7WS4PtV0sNPCLmuj5YpIrs/6UBodUAtK64G9Sbg1KSszm/iRU2nrzO07g1gQvKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736802073; c=relaxed/simple;
	bh=NDFiO3U0E1S/5X6Lz//TxxrYJLqr6ccKrjn8lgZTJIQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ujEi5T6DgN1skKbu/93ydE0bTnjqCItV3iyfV1Bk2XHZ/GSA6Elvg7nZE9xTRAB9l8vb5x95dgzlWkkG22z7UrbXr27MtaqPr1MMXETHWqBB4/aLIJAgh6pCAmFoont4vKwA4lzvGuzHiGljoIiOmXUbwyorEuJzc0y24prG7Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZV/MsMD3; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-71e2766994bso2410439a34.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 13:01:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736802067; x=1737406867; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8iLwNjuSq2Wrxa12NE4/8IEuSETMFdqrFjSUkFlmHIg=;
        b=ZV/MsMD3wppfisM/fhyCNo9H9dzZk+QdeAeF0QqZ3cQl3/yIb71SHDweKV01NqAQPb
         +eqqau2NMGwAipQaX2GvvAHQjMZEuKUejSpUVN52+0b9jtp+LBDd1F2mANmpyBiQd/eZ
         ZNsYqIXwEQe35cEw5+dqvGGh2XR0xIJUJaQizktFHHJbELNrmhqnSwqujzkrh6MrsbvP
         I0oqy0nW6aA/SGwD183UP4Maylkr5e0WbYVk2sMDkUhdpa/FtmJt19uuUaC/p10dIpiw
         YYKQyUcTKo3SgHwNE+x+knwwHleaeRSDfAIShHpGbWh5jFiRjDspJCzX0ZjQ3p4xxUrU
         Ui8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736802067; x=1737406867;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8iLwNjuSq2Wrxa12NE4/8IEuSETMFdqrFjSUkFlmHIg=;
        b=n5Tvf0OXhWstELKTH8tUUgF2hNj0IyemSp8qEqhKZBowHMLwqSAHb9vFhm4CL7YVe5
         AivDdHE+VzqsV4Etsz3U+C9RssV/YiaKvgiu0O1kAMSBaTgG6+AYo3kwzZf4yJhdpp1A
         n2dep1DOqZL4GGC5kTFkW0YlLMP3KLzIT+XUhEyHaTUjZNOh4qzzRZ0o7FiZvLA755HA
         6K4tL18zpZgayogNqcZUcMt/tqMW1d8ps94IYXoIzLCL47rarcShV4l0fbz3lu0HOyXy
         x5lOqgIhIZ8Qsmrgc4zxf+A9vS8B8Og4UhZsx4fAG3ubn9v8HB6FRV6NFL4qKI/gcS/6
         2kDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwA1X+YhorYZcVHZqqiEsi4rf4WR/xqEy2TkfjoXVtmuMCaotpUGL/D5YdnZr5kDxKqUwucEUCPaV+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5PIrLQnwjpfpx3LcfYvy2PvICR5EHsiqG35wbz6cp2mDlr4bm
	Zrq/CjzpGw4HXkgeoEe1LDxsgL6wQmsd2Ft1tmDF5nYA8iNLDS4gLWXDCUOtA44=
X-Gm-Gg: ASbGncsIXKl+Ah0ZWQtd9pxo+y966dIj6rV/MXB7yuMqHvwlehfx+fU3fXWPQGM97h5
	DZ7WzJIm6k0fJOiWWROHYB5Thj04gXhu2uVGqdqtdXaxI/Qmx53158LDbKh9vdcybcX02UpM5+1
	oF7PlwKWqWbYW2vc1QSygzJQC+/+vYKriqqbjo37l8VuqCVGwrzhNH4r7jHGBM5/so0xODmqPET
	I1l2p/Q9ikZDhL982R3fSb9SZfHyczxQz+W3XxCouFLOxJ+uEkUKjUdtcQAbDZYyI6LegctHYiK
	YZRfl00TyAwc
X-Google-Smtp-Source: AGHT+IHwosV+GBI/cwkzwbE4LHyNNp+ADMynEz2WHDKOMWlYl/AymhEUv/oaYtoR3qpdzLxjxkLsHQ==
X-Received: by 2002:a05:6830:4414:b0:71d:f762:7f97 with SMTP id 46e09a7af769-721e2e7052fmr14087686a34.17.1736802067684;
        Mon, 13 Jan 2025 13:01:07 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7231855effasm3927744a34.33.2025.01.13.13.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 13:01:07 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 13 Jan 2025 15:00:18 -0600
Subject: [PATCH v7 13/17] dt-bindings: iio: adc: adi,ad4695: add SPI
 offload properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-dlech-mainline-spi-engine-offload-2-v7-13-e0860c81caae@baylibre.com>
References: <20250113-dlech-mainline-spi-engine-offload-2-v7-0-e0860c81caae@baylibre.com>
In-Reply-To: <20250113-dlech-mainline-spi-engine-offload-2-v7-0-e0860c81caae@baylibre.com>
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org, 
 Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2

Add a pwms property to the adi,ad4695 binding to specify an optional PWM
output connected to the CNV pin on the ADC.

Also add #trigger-source-cells property to allow the BUSY output to be
used as a SPI offload trigger source to indicate when a sample is ready
to be read.

Macros are added to adi,ad4695.h for the cell values to help with
readability since they are arbitrary values.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v7 changes: none

v6 changes:
* Drop $ref to trigger-source.yaml
* Add maxItems to pwms property

v5 changes:
* Added macros for cell values

v4 changes: new patch in v4
---
 Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml | 13 +++++++++++++
 include/dt-bindings/iio/adc/adi,ad4695.h                  |  7 +++++++
 2 files changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
index 7d2229dee4441e20a7bafc9165fe309ac2e9eada..cbde7a0505d2b5df22c54ca4556878bf22e9b4b1 100644
--- a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
@@ -84,6 +84,10 @@ properties:
     description: The Reset Input (RESET). Should be configured GPIO_ACTIVE_LOW.
     maxItems: 1
 
+  pwms:
+    description: PWM signal connected to the CNV pin.
+    maxItems: 1
+
   interrupts:
     minItems: 1
     items:
@@ -106,6 +110,15 @@ properties:
       The first cell is the GPn number: 0 to 3.
       The second cell takes standard GPIO flags.
 
+  '#trigger-source-cells':
+    description: |
+      First cell indicates the output signal: 0 = BUSY, 1 = ALERT.
+      Second cell indicates which GPn pin is used: 0, 2 or 3.
+
+      For convenience, macros for these values are available in
+      dt-bindings/iio/adc/adi,ad4695.h.
+    const: 2
+
   "#address-cells":
     const: 1
 
diff --git a/include/dt-bindings/iio/adc/adi,ad4695.h b/include/dt-bindings/iio/adc/adi,ad4695.h
index 9fbef542bf670015c5b34bfbe1336e7e295bf8ab..fea4525d2710cbf58cd4236d3276bad4cb318df9 100644
--- a/include/dt-bindings/iio/adc/adi,ad4695.h
+++ b/include/dt-bindings/iio/adc/adi,ad4695.h
@@ -6,4 +6,11 @@
 #define AD4695_COMMON_MODE_REFGND	0xFF
 #define AD4695_COMMON_MODE_COM		0xFE
 
+#define AD4695_TRIGGER_EVENT_BUSY	0
+#define AD4695_TRIGGER_EVENT_ALERT	1
+
+#define AD4695_TRIGGER_PIN_GP0		0
+#define AD4695_TRIGGER_PIN_GP2		2
+#define AD4695_TRIGGER_PIN_GP3		3
+
 #endif /* _DT_BINDINGS_ADI_AD4695_H */

-- 
2.43.0


