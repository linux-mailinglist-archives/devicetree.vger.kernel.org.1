Return-Path: <devicetree+bounces-104201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B4697D931
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 19:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 86B301F21552
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 17:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E66E18660B;
	Fri, 20 Sep 2024 17:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WMxhZHRH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F7B18593B
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 17:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726853618; cv=none; b=RoJ4XH0wbDvL/WE9zt5Vv2CF0e84bmd910xkNnaQqB6KQ+2z9+ABBPxXFffm6yar2s/mXhvGxoVXfb3+xVgh2fdmIavD8DJ9etLfa8sHHVREXQuVmhHca9TqaOIyLJOddrWgMvmXVPGsKcj7/autlGwMceKbZ+rK84gG8YrohIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726853618; c=relaxed/simple;
	bh=MNConsB8RtKRmfEYoKydnt/84vrlE2Mq9EcIOlWCuLs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Cj1uIZuVW/XgVc/7E1MrexLqOjrHTjorr610sJ2o1JFdl3JqG9ODlafwrDMCqcSoJJy8X2BSQMZZkwCh4hfs84rp9vrr68I6k+Vh8VJbCy39DOjJMHk7J0mRbKSs7HIS1B5JpooukmTXN1OwMMuLQr9x14IaimLM88GuDxtV7Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WMxhZHRH; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-374d29ad8a7so1491636f8f.2
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 10:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726853610; x=1727458410; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0QPwfvwhG5p8f0j6GS2aLL7LmUPGYfszfd/1UVW1VBw=;
        b=WMxhZHRH5VCR7Hj+IU5McOyDXFiNuHQ+f7SFOpXdBZwk/Xjzd+Io8wSvdZJ6AOpZYj
         h2kHHzA+/XDDQO0Fua7cV6vfwOePb9arALsw153yq+kYxd695t/DFJwS4vFNzDhrGD2q
         FWcMYil7/UunghWD2SKVzMnOjP9mPdoFNBaQUF1km9m5LrjbxzcVJ65aa7C2TJpBpJol
         VTeP1LbvtsZyEzzCvjMV8IhdJ5ee3V0qlyGzdfnV3IhO2N0B/xgdftVhM1mlMYA+0L/6
         Hlc8S8KFJqxMOpKYkcYlU6wVE6FA6dABXACrKEtC3FQBK+Fb47uuKAuQTxHdUW2H1A6Q
         QPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726853610; x=1727458410;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0QPwfvwhG5p8f0j6GS2aLL7LmUPGYfszfd/1UVW1VBw=;
        b=JLGuOKCERNZq7JiW+dcKrkBcj7WO4ecXBvX3TsTDYH+GE7j+UwqvhQV1T6CTbyAesL
         69NQ38NEvAhCKTAO/z/hRuA98S1o7rHFy6lTlxrzq+Yjzwe9nREDoZMRwgvxWJeStsL4
         QplgD+XCcke2WyoKyOZmWbik/JQjjKlf0uTC12uMiciqKhm9iVqRm8ay0ZjoqyhCSdyS
         UYP3M4NFSj17R4sncYg307gGx0YGotcmEZLmW3dnHrEZhVTr7rROKEfL6hTMR4oAu2ci
         FY+Z8HFnZIJmP6ubfX/7++DAxae820iJnhhoE9nCMoAQ+FgFDawfoHwryIiRJYNXx7qs
         1tMA==
X-Forwarded-Encrypted: i=1; AJvYcCWKkOUPWd8W+8jjVAVtdaptLgwvhpIOSU7naM1Sc4N3CyDohGYX2qNiJxyzeTqPL7QPxj6HTmHPN9ZC@vger.kernel.org
X-Gm-Message-State: AOJu0YwSsLYQjMCPydQI6zwjqnJ093KKErGKENG29j7I6u36R6ak+C5+
	1Xg7LkuZh7aa+nU8Wg5iLJ+ijNrg8DdoQaInHn8iJa6N6V31SjVqm2jLmdOV2CA=
X-Google-Smtp-Source: AGHT+IHaxzKSggy/I35Ysx7Ev2wyua+XiesCjcgozZvIHI8KA3zY+5hqe/EO+z+ydBfTcIYs0iO2TA==
X-Received: by 2002:a5d:4350:0:b0:371:8d08:6309 with SMTP id ffacd0b85a97d-37a4238c5bfmr1962397f8f.55.1726853609507;
        Fri, 20 Sep 2024 10:33:29 -0700 (PDT)
Received: from [127.0.1.1] (frhb82016ds.ikexpress.com. [185.246.87.17])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378e780e029sm18111177f8f.116.2024.09.20.10.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 10:33:29 -0700 (PDT)
From: Guillaume Stols <gstols@baylibre.com>
Date: Fri, 20 Sep 2024 17:33:24 +0000
Subject: [PATCH v2 04/10] Documentation: iio: Document ad7606 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240920-ad7606_add_iio_backend_support-v2-4-0e78782ae7d0@baylibre.com>
References: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
In-Reply-To: <20240920-ad7606_add_iio_backend_support-v2-0-0e78782ae7d0@baylibre.com>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Michal Marek <mmarek@suse.com>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 aardelean@baylibre.com, dlechner@baylibre.com, 
 Guillaume Stols <gstols@baylibre.com>, jstephan@baylibre.com
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1726853604; l=5870;
 i=gstols@baylibre.com; s=20240417; h=from:subject:message-id;
 bh=MNConsB8RtKRmfEYoKydnt/84vrlE2Mq9EcIOlWCuLs=;
 b=18ypvfqV/x/g59tvFVsyzS25i/Plu+/9XYnRWPEjWNK3YmvBta7f/I6ig/AZNpQtPxFjmT6r/
 GP+HYtSyy1BDFpI5zmHpEXudGR7jFAbUi/lUdxE7qYeNOuAa7APV2dP
X-Developer-Key: i=gstols@baylibre.com; a=ed25519;
 pk=XvMm5WHuV67sGYOJZqIYzXndbaJOlNd8Q6li6vnb4Cs=

The Analog Devices Inc. AD7606 (and similar chips) are complex ADCs that
will benefit from a detailed driver documentation.

This documents the current features supported by the driver.

Signed-off-by: Guillaume Stols <gstols@baylibre.com>
---
 Documentation/iio/ad7606.rst | 143 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 143 insertions(+)

diff --git a/Documentation/iio/ad7606.rst b/Documentation/iio/ad7606.rst
new file mode 100644
index 000000000000..270a49aae685
--- /dev/null
+++ b/Documentation/iio/ad7606.rst
@@ -0,0 +1,143 @@
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
++---+                                       +----------------------------
+|   |               +-------+               |AD76xx
+| A |  controls     |       |               |
+| D |-------------->|  PWM  |-------------->| cnvst
+| 7 |               |       |               |
+| 6 |               +-------+               |
+| 0 | controls  +-----------+-----------+   |
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
+considered as stable, hence there is no timestamp channel. The communication is
+delegated to an external logic, called a backend, and the backend's driver
+handles the buffer. When this mode is enabled, the driver cannot control the
+conversion pin, because the busy pin is bound to the backend.
+

-- 
2.34.1


