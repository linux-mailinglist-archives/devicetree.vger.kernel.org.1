Return-Path: <devicetree+bounces-144087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3438A2CD95
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:09:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 048B03A8B82
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:09:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22DB19F11B;
	Fri,  7 Feb 2025 20:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F+wdnn8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992C819DF81
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738958965; cv=none; b=dhcOGLel8Je+rarvH1GoZLMwv/kvrn5MLskHMOyb07U6jxHDiMwWp8+rPFcLSVZCbRmyCseL5pZ2aMCoIH8V3raUlyxoB0xPvOoFm8NEAVEB4FK37hhGcXPs/iv86NshAVNCyxISrx9NpzDQdIHbP79xNoT/SboPuncMv7EBP+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738958965; c=relaxed/simple;
	bh=TH/Ic3kgbQSvnNUff8JRrNvxqU5+oqFDErL3/VqE6mw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=f49xu+OnJyxHjfjPFmK44cBVhNBaQnOJL452M6B8I4B2TBALszbU1c+m4am56NG5R3KP3HobS7pH53gqPi89YFYBn5rxYTbGpO0neIiXpyEJTzkCvM4KwEYvuLAp2GQhxKeseiX4cvLM3OENsCmOTQnsbDaxflAS+yUrj4mOynQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=F+wdnn8k; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-724a5d0427fso1729650a34.1
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738958961; x=1739563761; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2BXrAP5NW0mag5uEIp75wegguL4v5t/88YSwDy9OSKg=;
        b=F+wdnn8kWf87YzD9mIW8uCkcM0MXrr1V0/htEPtAx0cBEVHRbBHrv4xwQ8o+CjAGqY
         mFKxc9ZJIu9ohhBGp/p5CeP68haHerd9vyMZ63SanZGawtKChlAJO7QlL4XDIx+I+bL2
         g5JuNxuNi7yrjkPa+xI0CComviOk1c93uizmQk+8dn/OyIzwjlbwiTZQUPwUQ5exlpeM
         G3COI8L1iVo7LE4DFAY5N28L6hK4r/5hBbQNjINLIkMLEcRKmREfsZ1f/iui5ckNoPyr
         iFQF6d9lTG9ee/4pDADJaPBvjOIOzajycTYzEOw0nBG+5bH/c6fXOB9FaiYuGf1du4xU
         DqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738958961; x=1739563761;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2BXrAP5NW0mag5uEIp75wegguL4v5t/88YSwDy9OSKg=;
        b=KXPpwtX4E53FtVyp0D0CN0Y1snIeuCkaZEoHSb2QAF5gPKgTFSOtUk/3CQLkiZNapD
         ualbVHTczmIvKLmoBWiT3nQwD7yEpcU7xorhaYYoNTTNyMDZ/SlTdoNRpXyJwtIlNglH
         84AnNLJqRiON1nTrC7NcVqu18etJtLaJQlm40In+K2X8TPhN8cJf3SAJQC4RcxLvHT/n
         p7J0f4d/NRfbolyX2af9K8KvZBElwGzgFJk6te9UKGaphZY+17k0OSD5OlE2Dht4SOFF
         jlJl1JjDAXmqhWpZPeigzCdqpvvIPjf718tNyb0AyHQoqQUXFSyk843JgHZoGqITFMmM
         pYPg==
X-Forwarded-Encrypted: i=1; AJvYcCU9LDFme6kQsYK5ueqAUEY2O4n3QjZZSmT0q/95n7GxhnsoBtssUJSfJ9wUQ1VCRpXsFUk0PzEVvoEC@vger.kernel.org
X-Gm-Message-State: AOJu0YzFeLuBFfuDZRGlqIFywm9l+v7D3RFSyjKB7Ik+3OTEwz3Ld7Km
	MTIc0MeMLSw/Ar2d5QL73BohESZUQHiRff0MAD79CbYTLZp9WMmwNpBHy2Qp+Wk=
X-Gm-Gg: ASbGnctVFcVZtMi9y0QSYRq6tisuyeJbDl0GmiWe/sWp9v19Yrna2z9iuPngaA4+BfQ
	NkcddYt9TqJDYeGEDqgwUeNy6xm8oRcwZEVtjXQKCBzacjqn3TNpxt2yumdPddXV9PgQey6iDD0
	MIRdHntD+PH/aA5+TqawO+GRDP/TCGr8EanuqYytx91W4dwlF87hXatO0fuF4e7KW9/IVcPGYY8
	pcWfoMQC5qni12+6BKwbnkNKRCuFfbgVsngKjNJjf6Oew1YZ+/Q+dL1NIx5fNhiX9vfAWaotnCu
	mH1Y+HlR6i1+qa7Ta7fza1BgEVtuAduUW83UoXmqmzNYE6A=
X-Google-Smtp-Source: AGHT+IEBtjtqQVVNG0NtMXCHE14ROVFNqUdSh9Y+jhvyoSdYr1df3Z2fYXmSVjQrKPkqP5QC/7fm8Q==
X-Received: by 2002:a05:6830:3691:b0:71d:5224:8a20 with SMTP id 46e09a7af769-726b88b91c4mr3766241a34.24.1738958961569;
        Fri, 07 Feb 2025 12:09:21 -0800 (PST)
Received: from [127.0.1.1] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5fc544b08d4sm930387eaf.2.2025.02.07.12.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 12:09:20 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
Subject: [PATCH v8 00/17] spi: axi-spi-engine: add offload support
Date: Fri, 07 Feb 2025 14:08:57 -0600
Message-Id: <20250207-dlech-mainline-spi-engine-offload-2-v8-0-e48a489be48c@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFlopmcC/5XSzWrDMAwH8FcJPs9DdqzY6WnvMXbwh9wa0qRLs
 tBS+u5zUrbAyCG7GEvGvz8I3dlAfaKBHYo762lKQ+raXJiXgvmTbY/EU8g1kyAVoAAeGvInfra
 pbVJLfLgkTu1xvnYxNp0NXHIbPZW6BofWsSxdeorpuqS8f+T6lIax629L6CTn7v/8SXLgRoO2+
 fCqxDdnb01yPb367szmiKlcWS3lPrbMrFYSSGGIVe02WPXLCpDlPlZlNhoh0dV1RCs2WFxZIXA
 fi5l1ZI1AF5Ds1hCqlZVC7GOrebaGCLUKGKDcYPUPiyDEziHozBKYCrwR3lr6wz6ea9LT51few
 fG5K8zZgXh+P6fxULR0HfkSKkHnH49vgM0+Xr0CAAA=
X-Change-ID: 20240510-dlech-mainline-spi-engine-offload-2-afce3790b5ab
To: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>, 
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-iio@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 David Lechner <dlechner@baylibre.com>, Axel Haslam <ahaslam@baylibre.com>
X-Mailer: b4 0.14.2

Only very minor fixes in this revision.

Also, now that trees are rebased on v6.14-rc1 we no longer have
dependencies for the IIO patches. So Mark can pick up all of the
patches if we want to go that way. In any case though, Jonathan will
need an immutable branch since we have other IIO patches in-flight
building on top of this series.

[1]: https://lore.kernel.org/all/20241124125206.1ffd6e6c@jic23-huawei/

---
Changes in v8:
- Added missing include to fix CI build error in spi-axi-spi-engine.
- Fixed a wrong register cleared in ad4695 driver.
- Link to v7: https://lore.kernel.org/r/20250113-dlech-mainline-spi-engine-offload-2-v7-0-e0860c81caae@baylibre.com

Changes in v7:
- Addressed some very minor feedback.
- Link to v6: https://lore.kernel.org/r/20241211-dlech-mainline-spi-engine-offload-2-v6-0-88ee574d5d03@baylibre.com

Changes in v6:
- Dropped the "spi: dt-bindings: add trigger-source.yaml" patch. It was
  reworked and merged into dt-schema in
  https://github.com/devicetree-org/dt-schema/pull/147
- Adjusted other dt-bindings patches to account for above change.
- Dropped one iio patch that was already applied to iio tree.
- Added a DAC patch to make use of the TX DMA stream API.
- Minor fixes and improvements to other patches based on feedback.
- Link to v5: https://lore.kernel.org/r/20241115-dlech-mainline-spi-engine-offload-2-v5-0-bea815bd5ea5@baylibre.com

Changes in v5:
- Dropped pwm patch. A variant of this patch has been picked up in the
  pwm tree.
- Addressed review comments (see details in individual patches).
- Added some polish, like MAINTAINERS entries and updating ADC docs.
- Link to v4: https://lore.kernel.org/r/20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com

Changes in v4:
- Dropped #spi-offload-cells and spi-offload properties from DT bindings.
- Made an attempt at a more generic trigger interface instead of using
  clk framework. This also includes a new driver for a generic PWM
  trigger.
- Addressed IIO review comments.
- Added new patches for iio/adc/ad4695 as 2nd user of SPI offload.
- Link to v3: https://lore.kernel.org/r/20240722-dlech-mainline-spi-engine-offload-2-v3-0-7420e45df69b@baylibre.com

Changes in v3:
- Reworked DT bindings to have things physically connected to the SPI
  controller be properties of the SPI controller and use more
  conventional provider/consumer properties.
- Added more SPI APIs for peripheral drivers to use to get auxillary
  offload resources, like triggers.
- Link to v2: https://lore.kernel.org/r/20240510-dlech-mainline-spi-engine-offload-2-v2-0-8707a870c435@baylibre.com

Individual patches have more details on these changes and earlier revisions too.
---

As a recap, here is the background and end goal of this series:

The AXI SPI Engine is a SPI controller that has the ability to record a
series of SPI transactions and then play them back using a hardware
trigger. This allows operations to be performed, repeating many times,
without any CPU intervention. This is needed for achieving high data
rates (millions of samples per second) from ADCs and DACs that are
connected via a SPI bus.

The offload hardware interface consists of a trigger input and a data
output for the RX data. These are connected to other hardware external
to the SPI controller.

To record one or more transactions, commands and TX data are written
to memories in the controller (RX buffer is not used since RX data gets
streamed to an external sink). This sequence of transactions can then be
played back when the trigger input is asserted.

This series includes core SPI support along with the first SPI
controller (AXI SPI Engine) and SPI peripheral (AD7944 ADC) that use
them. This enables capturing analog data at 2 million samples per
second.

The hardware setup looks like this:

+-------------------------------+   +------------------+
|                               |   |                  |
|  SOC/FPGA                     |   |  AD7944 ADC      |
|  +---------------------+      |   |                  |
|  | AXI SPI Engine      |      |   |                  |
|  |             SPI Bus ============ SPI Bus          |
|  |                     |      |   |                  |
|  |  +---------------+  |      |   |                  |
|  |  | Offload 0     |  |      |   +------------------+
|  |  |   RX DATA OUT > > > >   |
|  |  |    TRIGGER IN < < <  v  |
|  |  +---------------+  | ^ v  |
|  +---------------------+ ^ v  |
|  | AXI PWM             | ^ v  |
|  |                 CH0 > ^ v  |
|  +---------------------+   v  |
|  | AXI DMA             |   v  |
|  |                 CH0 < < <  |
|  +---------------------+      |
|                               |
+-------------------------------+

---
Axel Haslam (1):
      iio: dac: ad5791: Add offload support

David Lechner (16):
      spi: add basic support for SPI offloading
      spi: offload: add support for hardware triggers
      dt-bindings: trigger-source: add generic PWM trigger source
      spi: offload-trigger: add PWM trigger driver
      spi: add offload TX/RX streaming APIs
      spi: dt-bindings: axi-spi-engine: add SPI offload properties
      spi: axi-spi-engine: implement offload support
      iio: buffer-dmaengine: split requesting DMA channel from allocating buffer
      iio: buffer-dmaengine: add devm_iio_dmaengine_buffer_setup_with_handle()
      iio: adc: ad7944: don't use storagebits for sizing
      iio: adc: ad7944: add support for SPI offload
      doc: iio: ad7944: describe offload support
      dt-bindings: iio: adc: adi,ad4695: add SPI offload properties
      iio: adc: ad4695: Add support for SPI offload
      doc: iio: ad4695: add SPI offload support
      iio: dac: ad5791: sort include directives

 .../devicetree/bindings/iio/adc/adi,ad4695.yaml    |  13 +
 .../bindings/spi/adi,axi-spi-engine.yaml           |  24 ++
 .../bindings/trigger-source/pwm-trigger.yaml       |  37 ++
 Documentation/iio/ad4695.rst                       |  68 +++
 Documentation/iio/ad7944.rst                       |  24 +-
 MAINTAINERS                                        |  12 +
 drivers/iio/adc/Kconfig                            |   2 +
 drivers/iio/adc/ad4695.c                           | 445 +++++++++++++++++++-
 drivers/iio/adc/ad7944.c                           | 307 +++++++++++++-
 drivers/iio/adc/adi-axi-adc.c                      |   2 +-
 drivers/iio/buffer/industrialio-buffer-dmaengine.c | 144 +++++--
 drivers/iio/dac/Kconfig                            |   3 +
 drivers/iio/dac/ad5791.c                           | 179 +++++++-
 drivers/iio/dac/adi-axi-dac.c                      |   2 +-
 drivers/spi/Kconfig                                |  16 +
 drivers/spi/Makefile                               |   4 +
 drivers/spi/spi-axi-spi-engine.c                   | 315 +++++++++++++-
 drivers/spi/spi-offload-trigger-pwm.c              | 162 +++++++
 drivers/spi/spi-offload.c                          | 465 +++++++++++++++++++++
 drivers/spi/spi.c                                  |  10 +
 include/dt-bindings/iio/adc/adi,ad4695.h           |   7 +
 include/linux/iio/buffer-dmaengine.h               |   7 +-
 include/linux/spi/offload/consumer.h               |  39 ++
 include/linux/spi/offload/provider.h               |  47 +++
 include/linux/spi/offload/types.h                  |  99 +++++
 include/linux/spi/spi.h                            |  20 +
 26 files changed, 2350 insertions(+), 103 deletions(-)
---
base-commit: 884697cc74d9fea0a8628c2794d0b80065ac95d1
change-id: 20240510-dlech-mainline-spi-engine-offload-2-afce3790b5ab

Best regards,
-- 
David Lechner <dlechner@baylibre.com>


