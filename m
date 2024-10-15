Return-Path: <devicetree+bounces-111458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0483D99EE5A
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:57:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B168B283D27
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC641B21B8;
	Tue, 15 Oct 2024 13:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Irb1BO8+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EA61AF0DC
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729000601; cv=none; b=dTeGcH4AYVQwh1VWQ/omtYP5pTTRGhAP6f4JJWDsL+npCoVUaM6auNI9Boh8+N7sybA757pqpta3n4dIVIWlFpCVgvl5/O7N6kx6SBobk8RnZmOJ57eKNUzLzSoPVkq5YSVwHyh9COfB4rEeL+hFFAaQU/MjSva4u39mca5aEog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729000601; c=relaxed/simple;
	bh=gYRorQljls7gnt12GddZsLRjR3XCK4N21cRs97XBdSo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f2LUJyU/F/RrQPnzEQ0h/ITFQL9j/rewhXgOEmpKDASxA6TUbzn8dhxXhPakMUZRNnf8FK0p2aUiflIBIzZU6E6gz5UrQiYbV/9cCeMbH4oKQoIJ3hLhhtEFKt/24VvvdyPOzxaZEh0nPKRdbfOlToB9hQDvht49Q/Y8BA1qc74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Irb1BO8+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-431137d12a5so51046625e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729000596; x=1729605396; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sk/w3JDfBS2L8TPVXoFuYtPWj8vcuMKf6135lmNzEF8=;
        b=Irb1BO8+TczeyOpA1Ch0D2JSZ+s3zG4r7icI+W2fzn8boS+AgW/GHGje9L4VmRqgMw
         rISH67CzXFcuj5C4bljgTdsxLeiKDr9YiOuR07rZoqB7iNBHJNxZzv6giHNEkBGcNSEn
         b+8MxgvQkhycbYDCMfYpVc9rO1ZSt8f3dTXQVuOB8CiqtiVsF1ise3ulw8ipNKgq0AtY
         dXl8VuxwEqTZK1xTVxYUM3FzDCHMFiLvEy/mVVN+qRAgPMBMN0LCvIrRquo4mPb5nsxo
         svAUoS2EhpMjEjewVngQl7G1vLPONirxCVPBbdrH1wyWYRSmWpbSJtxuCxWWKbdVgI+X
         lL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729000596; x=1729605396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sk/w3JDfBS2L8TPVXoFuYtPWj8vcuMKf6135lmNzEF8=;
        b=guWELTq44kisk4pL/XNR5aQS5cDqsje/pNbbaSENeiBcrkxEZLLdtQ04O9b7z0q4Mr
         o+ycCx3zdxZKshS5V8MYY4eNx0j/T6JD9gPBMhX6qozWJiWRIJFLKBOSx8yr0ryDEEFx
         BbdXg0M8tKYcc95IAMUGV8M/bhOhe4+EtyqcVGcvwiMlixGZgXAW2nQBu99FFatCh7Cs
         DKr8CSgdASRcCXMB88iK0incwU53qMlOs3dSqsKVJpKlu4fPrhYuYutCBzwdQJdBWS0i
         bWbjlHGmvzHCCsD1SxXI939LnDg7jRVK8fzOPAgZhI/DAPaRtI9r5e36pp9IlKtXaeia
         IL8w==
X-Forwarded-Encrypted: i=1; AJvYcCWwcUrJsKgasj0N/+g34iRpYkFP6f+DYQ2n96Sj0Miyri5+CDEc/9ONoh/HibVAnYsR+cN76Ofq/HdH@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb3Iu5pGp+z7yzZUZywvM9ta6grrXYlnbpE6HdtwBAR800EfMf
	IbYJyAd/Wk9XaaHqT3vA4XwTJRXtNuxujwPLQyasTK+Dr1VU7wLisX33zgdI0EQ=
X-Google-Smtp-Source: AGHT+IHH3ayd9kjunKCi0fcv1oW7BSHl+Fqgjznie8H85E156jTz9ETEojZnazg/dV1kxTApadLXbw==
X-Received: by 2002:a05:600c:3b0d:b0:428:10d7:a4b1 with SMTP id 5b1f17b1804b1-4311df56e7bmr135747445e9.25.1729000595270;
        Tue, 15 Oct 2024 06:56:35 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4313f56f241sm18848295e9.22.2024.10.15.06.56.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:56:34 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Tue, 15 Oct 2024 13:56:16 +0000
Subject: [PATCH v5 3/8] Documentation: iio: Document ad7606 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-ad7606_add_iio_backend_support-v5-3-654faf1ae08c@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729000592; l=6859;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=gYRorQljls7gnt12GddZsLRjR3XCK4N21cRs97XBdSo=;
 b=Oup2lEs68aPov+l9kBPkGocBP+fxR3rFBu8pSGtAEJLWbIMWOT+Kpkk5kuVkBzWEMTWbaAZ0l
 5f0/2Ahg83UDGW2sF9wHT3PA6FcSPErEglRPaNC5risPwwgSSN1foNF
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The Analog Devices Inc. AD7606 (and similar chips) are complex ADCs that
will benefit from a detailed driver documentation.

This documents the current features supported by the driver.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/iio/ad7606.rst | 145 +++++++++++++++++++++++++++++++++++++++++++
 Documentation/iio/index.rst  |   1 +
 MAINTAINERS                  |   1 +
 3 files changed, 147 insertions(+)

diff --git a/Documentation/iio/ad7606.rst b/Documentation/iio/ad7606.rst
new file mode 100644
index 000000000000..a1173708b489
--- /dev/null
+++ b/Documentation/iio/ad7606.rst
@@ -0,0 +1,145 @@
+.. SPDX-License-Identifier: GPL-2.0-only
+
+=============
+AD7606 driver
+=============
+
+ADC driver for Analog Devices Inc. AD7606 and similar devices. The module name
+is ``ad7606``.
+
+Supported devices
+=================
+
+The following chips are supported by this driver:
+
+* `AD7605 <https://www.analog.com/en/products/ad7605.html>`_
+* `AD7606 <https://www.analog.com/en/products/ad7606.html>`_
+* `AD7606B <https://www.analog.com/en/products/ad7606b.html>`_
+* `AD7616 <https://www.analog.com/en/products/ad7616.html>`_
+
+Supported features
+==================
+
+SPI wiring modes
+----------------
+
+These ADCs can output data on several SDO lines (1/2/4/8). The driver
+currently supports only 1 SDO line.
+
+Parallel wiring mode
+--------------------
+
+There is also a parallel interface, with 16 lines (that can be reduced to 8 in
+byte mode). The parallel interface is selected by declaring the device as
+platform in the device tree (with no io-backends node defined, see below).
+
+IIO-backend mode
+----------------
+
+This mode allows to reach the best sample rates, but it requires an external
+hardware (eg HDL or APU) to handle the low level communication.
+The backend mode is enabled when through the definition of the "io-backends"
+property in the device tree.
+
+The reference configuration for the current implementation of IIO-backend mode
+is the HDL reference provided by ADI:
+https://wiki.analog.com/resources/eval/user-guides/ad7606x-fmc/hdl
+
+This implementation embeds an IIO-backend compatible IP (adi-axi-adc) and a PWM
+connected to the conversion trigger pin.
+
+.. code-block::
+
+    +---+                                       +----------------------------
+    |   |               +-------+               |AD76xx
+    | A |  controls     |       |               |
+    | D |-------------->|  PWM  |-------------->| cnvst
+    | 7 |               |       |               |
+    | 6 |               +-------+               |
+    | 0 | controls  +-----------+-----------+   |
+    | 6 |---------->|           |           |<--| frstdata
+    |   |           | Backend   |  Backend  |<--| busy
+    | D |           | Driver    |           |   |
+    | R |           |           |           |-->| clk
+    | I |  requests |+---------+| DMA       |   |
+    | V |----------->|  Buffer ||<----      |<=>| DATA
+    | E |           |+---------+|           |   |
+    | R |           +-----------+-----------+   |
+    |   |-------------------------------------->| reset/configuration gpios
+    +---+                                       +-----------------------------
+
+
+Software and hardware modes
+---------------------------
+
+While all the AD7606/AD7616 series parts can be configured using GPIOs, some of
+them can be configured using register.
+
+The chips that support software mode have more values available for configuring
+the device, as well as more settings, and allow to control the range and
+calibration per channel.
+
+The following settings are available per channel in software mode:
+ - Scale
+
+Also, there is a broader choice of oversampling ratios in software mode.
+
+Conversion triggering
+---------------------
+
+The conversion can be triggered by two distinct ways:
+
+ - A GPIO is connected to the conversion trigger pin, and this GPIO is controlled
+   by the driver directly.  In this configuration, the driver sets back the
+   conversion trigger pin to high as soon as it has read all the conversions.
+
+ - An external source is connected to the conversion trigger pin. In the
+   current implementation, it must be a PWM. In this configuration, the driver
+   does not control directly the conversion trigger pin. Instead, it can
+   control the PWM's frequency. This trigger is enabled only for iio-backend.
+
+Reference voltage
+-----------------
+
+2 possible reference voltage sources are supported:
+
+ - Internal reference (2.5V)
+ - External reference (2.5V)
+
+The source is determined by the device tree. If ``refin-supply`` is present,
+then the external reference is used, otherwise the internal reference is used.
+
+Oversampling
+------------
+
+This family supports oversampling to improve SNR.
+In software mode, the following ratios are available:
+1 (oversampling disabled)/2/4/8/16/32/64/128/256.
+
+Unimplemented features
+----------------------
+
+- 2/4/8 SDO lines
+- CRC indication
+- Calibration
+
+Device buffers
+==============
+
+IIO triggered buffer
+--------------------
+
+This driver supports IIO triggered buffers, with a "built in" trigger, i.e the
+trigger is allocated and linked by the driver, and a new conversion is triggered
+as soon as the samples are transferred, and a timestamp channel is added to make
+up for the potential jitter induced by the delays in the interrupt handling.
+
+IIO backend buffer
+------------------
+
+When IIO backend is used, the trigger is not needed, and the sample rate is
+considered as stable. There is no timestamp channel. The communication is
+delegated to an external logic, called a backend, and the backend's driver
+handles the buffer. When this mode is enabled, the driver cannot control the
+conversion pin, because the busy pin is bound to the backend.
+
diff --git a/Documentation/iio/index.rst b/Documentation/iio/index.rst
index dfcf9618568a..88bc36326b74 100644
--- a/Documentation/iio/index.rst
+++ b/Documentation/iio/index.rst
@@ -21,6 +21,7 @@ Industrial I/O Kernel Drivers
    ad4000
    ad4695
    ad7380
+   ad7606
    ad7944
    adis16475
    adis16480
diff --git a/MAINTAINERS b/MAINTAINERS
index 32719c014888..2793a5765fa8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1572,6 +1572,7 @@ F:	Documentation/ABI/testing/sysfs-bus-iio-frequency-adf4350
 F:	Documentation/devicetree/bindings/iio/*/adi,*
 F:	Documentation/devicetree/bindings/iio/adc/lltc,ltc2496.yaml
 F:	Documentation/devicetree/bindings/iio/adc/lltc,ltc2497.yaml
+F:	Documentation/iio/ad7606.rst
 F:	drivers/iio/*/ad*
 F:	drivers/iio/adc/ltc249*
 F:	drivers/iio/amplifiers/hmc425a.c

-- 
2.34.1


