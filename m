Return-Path: <devicetree+bounces-93891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F5C952DF4
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 14:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7E4161C217B0
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 12:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ACE817C99D;
	Thu, 15 Aug 2024 12:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JhLohnNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9124A17BEA0
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 12:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723723931; cv=none; b=UhrN5WB6dg/9DUhtW2/SHTLdsnqDD7TRQH6c5J6k4D8EbJCKmSeT0pIoC3ZrKbwiAkYI8jlthUXTITtluy7DN66+uxDp9TKkMV/938j4ZZP9DhwGbXlRK2vsTnUZlH6YlxpUV1LmEk8ORCKDAlA1I82nCjlDta9LDFj5M8cVypo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723723931; c=relaxed/simple;
	bh=T+/8clE2TUaqmdcnvPJh5S/25cCAbqiTNGruqzSK9iw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=unVIq1cOE33So3Xpdb2yNjU6ZZZFm8cCZeWfE3ZivuYUX9WJBOspXhLFdUWFwMNNtKXt+MAlNZu6HaRE2y906tA+fwgXxGDIeBwtgbJjxo3XOUSeptbXeQoxWLB6s3iXc0rbGeZoZJS3vCCnUGJFrfuJV0gvuLBjH7MOOKUWxHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JhLohnNV; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4281c164408so5193625e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 05:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1723723927; x=1724328727; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cGnvahtIq18gHl5Fg5zLGZ5E3VjzgWVkPDcd01sAZ3o=;
        b=JhLohnNVpUZf8yXAnbWgvYWFn8sZXi2INFzCKwwH2LgfFyHcC85PgCFujjL9zpWxbd
         TjgAjR4pCUoMvfu/HlVHWjiuct6Po0l0LTXvOOvoyDFe6noKLNvGjLXiSCxUVqI5ax+6
         DtQiialPQvY7uj0EVvAkXI9DfCLoDVhIC+zq+oYKvTMoVoFtOXIg5ThzMeZZ2ogGAL+U
         yU1BEgHd3BFYfI+MUvcUuOeHt1G4PPhUO0774rsyNFne6UHYULH1ietv3Rv5nC5fYwms
         5UfMvKiCN1R4hx+LIvS9Sd/dmuoCZbs1RVHQ07LVeTyI/KpLq5w0LT7lWXVjvCo8ee2o
         Y8Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723723927; x=1724328727;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cGnvahtIq18gHl5Fg5zLGZ5E3VjzgWVkPDcd01sAZ3o=;
        b=HkLJhSzGbKg/XiqdMqktjqsaDqwHnHNrwuQFYA4dlr+klsLpUrQz+XJmcppFe1RAuB
         VgIXdet9wb2nnXIiGUZlIb+DDN5s5P8Fd4Ox0LY8lkw8x4NbZzQpyJSBWbZ9T+DCc9MV
         4V4Djj2NOOCXgjDPHsjIJPGwiwV5/QxlTnYLjJkcRxFcNxGwex3C4I+5P59aT0u7fmMd
         MgSJSDjSVctnaqstQuEwFYi13/59fklQuNYO4lgqOm4h60aTbtSngAW6NDLSLK6lodtx
         qIE2QyPe9j5xtCc2cpPPYUqIIPYnGpuss9/z+W12FqK9CZ2ZGhfm3D9KhwfbujUGeiOw
         7LIA==
X-Forwarded-Encrypted: i=1; AJvYcCUcMDNchqBbzyXO0Jt8jbzL99gOovDZJ6E1rj4p7ujVB/Lv46rJItZK2FglFxDEVFgI3sbBf5b0vWviL6TZsPBzNUDKulZ9veNvmA==
X-Gm-Message-State: AOJu0YwcQGUSDU4+YbHMmUc9bId/CexjHM4rHz67QipduQ0yE5owSmU/
	+60TTbTbeicLQGlDFHxDGyloT8xzRDdD0v0TNjGS8ZcZCpJ40CuBTEJwHp53v7I=
X-Google-Smtp-Source: AGHT+IGTovGCMz+4ZAKE0Y2T8EJMyY4WdaHjo14ST3F4LtETb/BEGDYZ4qRDTz+2RS27uRbVHWjURA==
X-Received: by 2002:adf:f4c3:0:b0:368:37d7:523f with SMTP id ffacd0b85a97d-3717774960bmr4731618f8f.13.1723723926194;
        Thu, 15 Aug 2024 05:12:06 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37189897926sm1365082f8f.87.2024.08.15.05.12.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 05:12:05 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Thu, 15 Aug 2024 12:11:57 +0000
Subject: [PATCH 3/8] Documentation: iio: Document ad7606 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240815-ad7606_add_iio_backend_support-v1-3-cea3e11b1aa4@baylibre.com>
References: <20240815-ad7606_add_iio_backend_support-v1-0-cea3e11b1aa4@baylibre.com>
In-Reply-To: <20240815-ad7606_add_iio_backend_support-v1-0-cea3e11b1aa4@baylibre.com>
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
 Guillaume Stols <gstols@baylibre.com>, 
 20240705211452.1157967-2-u.kleine-koenig@baylibre.com, 
 20240712171821.1470833-2-u.kleine-koenig@baylibre.com, 
 cover.1721040875.git.u.kleine-koenig@baylibre.com, aardelean@baylibre.com
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1723723923; l=5859;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=T+/8clE2TUaqmdcnvPJh5S/25cCAbqiTNGruqzSK9iw=;
 b=wzKQoSPu+VfAa+wJRFs+HI3IfaOTPHX7nl+/FKEC2IQpmjyEodlyayl1On3onh7ctSvvTaSuR
 YLrYomCS9lHBQ7qTdpwPhvpgikWsXwVmdnXzyrWUXBGAEkewLr1utU/
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The Analog Devices Inc. AD7606 (and similar chips) are complex ADCs that
will benefit from a detailed driver documentation.

This documents the current features supported by the driver.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/iio/ad7606.rst | 142 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/Documentation/iio/ad7606.rst b/Documentation/iio/ad7606.rst
new file mode 100644
index 000000000000..e9578399e80d
--- /dev/null
+++ b/Documentation/iio/ad7606.rst
@@ -0,0 +1,142 @@
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
+ad7606x ADCs can output data on several SDO lines (1/2/4/8). The driver
+currently supports only 1 SDO line.
+
+Parallel wiring mode
+--------------------
+
+AD7606x ADC have also a parallel interface, with 16 lines (that can be reduced
+to 8 in byte mode). The parallel interface is selected by declaring the device
+as platform in the device tree (with no io-backends node defined, see below).
+
+IIO-backend mode
+----------------
+
+This mode allows to reach the best sample rates, but it requires an external
+hardware (eg HDL or APU) to handle the low level communication.
+The backend mode is enabled when trough the definition of the "io-backends"
+property in the device tree.
+The reference configuration for the current implementation of IIO-backend mode
+is the HDL reference provided by ADI:
+https://wiki.analog.com/resources/eval/user-guides/ad7606x-fmc/hdl
+This implementation embeds an IIO-backend compatible IP (adi-axi-adc) and a PWM
+connected to the conversion trigger pin.
+
++---+                                       +----------------------------
+|   |               +-------+               |AD76xx
+| A |  controls     |       |               |
+| D |-------------->|  PWM  |-------------->| cnvst
+| 7 |               |       |               |
+| 6 |               +-------+               |
+| 0 | controls  +-----------+------------   |
+| 6 |---------->|           |           |<--| frstdata
+|   |           | Backend   |  Backend  |<--| busy
+| D |           | Driver    |           |   |
+| R |           |           |           |-->| clk
+| I |  requests |+---------+| DMA       |   |
+| V |----------->|  Buffer ||<----      |<=>| DATA
+| E |           |+---------+|           |   |
+| R |           +-----------+-----------+   |
+|   |-------------------------------------->| reset/configuration gpios
++---+                                       +-----------------------------
+
+
+Software and hardware modes
+---------------------------
+
+While all the AD7606 series parts can be configured using GPIOs, some of them
+can be configured using register.
+The chip that support software mode have more values avalaible for configuring
+the device, as well as more settings, and allow to control the range and
+calibration per channel.
+The following settings are available per channel in software mode:
+ - Scale
+Also, there is a broader choice of oversampling ratios in software mode.
+
+Conversion triggering
+---------------------
+
+The conversion can be triggered by two distinct ways:
+
+ - A GPIO is connected to the conversion trigger pin, and this GPIO is controlled
+   by the driver directly.  In this configuration, the driver set back the
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
+then the external reference is used, else the internal reference is used.
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
+considered as stable, hence there is no timestamp channel. The communication is
+delegated to an external logic, called a backend, and the backend's driver
+handles the buffer. When this mode is enabled, the driver cannot control the
+conversion pin, because the busy pin is bound to the backend.
+
+
+
+
+

-- 
2.34.1


