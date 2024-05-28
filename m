Return-Path: <devicetree+bounces-69893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B08DC8D1E61
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 16:20:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CCC5C1C2312E
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 14:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D689E16F8F1;
	Tue, 28 May 2024 14:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BbDzZe5Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1E916F840
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 14:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716906041; cv=none; b=jvGyGHGnXtgTDPVdREXqIzJBrA6th1/NR/8iPChGUFHXbOr+oYzKTCzUNYFmd7ubXAl3joLcP5Z92a3W0yni80Cd+5yvOeePQO+ylvX9cgfOoX3Mw8RiNTk67Q53AInPLVWLVS2UwLGylWU+HszRCBHZEGH3XsuI5gx8YzsRhrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716906041; c=relaxed/simple;
	bh=gk7NHdXOoOeTuJGZ9jKJwuWhY5+mWOQJr9Na9Basnbs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ozk9B+yytR91GVM+L5nnV2Lgd0SCdUIfSDR43pnUseSp/wDSTKZsGBblY0BODCZXC+2gfis+/7Mb1XgTp6RtpF+WUa/NUkJRQQwa/yWgFuww9PRlhCQPvG2SrXWll0wL8OG9G59dBIHAGSASZhyEkwnN/1EtZ8o1DsE+5DDtwhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BbDzZe5Z; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-35bf77ba8fbso264636f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 07:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716906037; x=1717510837; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HDS2GchM/PEgnuAUR9pIjZfZOk1XHpFRPkADGX4AV1Q=;
        b=BbDzZe5Zcr9V84tUmtkjGOwRvgwqPfSgcG1EOVS4F2Xhj7+LXcr5IZu9Jtp2hK0jWJ
         UOuWAtu4+vRoicPYKiBos5A2IYN1GFSE5+2SZeMA+AFoqwVmm5PA2s8Hi4szIKTvx9it
         JMfWdaY3QqChxgN+43kll/3FqEPLJPCRvpQIJ/Ay/wDITAaRzsH6rXKovgno8X3SpTWk
         +GYIZEANpIon6c7gL5Hzvv1o5A+gtcyTy/3ZH7wCautxzezcWoEYXoY35wU1XlhDcRoe
         kVyUnf3yT2yA6PRoE3NTiBPDjQ1vHnP3i1u0LyiM2xGLiKcVaV9RgNk03rhQtM1KUmCU
         Eziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716906037; x=1717510837;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDS2GchM/PEgnuAUR9pIjZfZOk1XHpFRPkADGX4AV1Q=;
        b=omQIfQ77yjG8rvXEiow5tzYFShm7Dex4fOLGI2+vaa0gxQqO4VQMPO5wMaX9W+GrRl
         RQ+ISYFol/EAehVu+LfDA6Gm0ZIv9FTakJv1GUW60WI/Tx20cBuDi00DHV19xF0bIXJD
         5v3sR6RtaCgs6W9AMK23JLE/uxSbVTjClgQyUG5NauxF6F7+grR4QKVmOHgFhiSWuwjf
         blJJSdvxiN4gXJk5gr2umIToNH5DuPYMWeCmiKyBFKPu38Pvr4cwAtgDOkgt2bHaz40k
         ARvXxR1GxFnRriiuSiA8/uYuVrG1tarT/fmp1qcSW73LugAQnUiWXz60spd6KDck8SPl
         ++EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAvGTjGTfd4PVJZPK37kec66sBL7e8iJDrO1uuhEXc3drwNKiuZRjCLm/DhNAQS7nFDO950Y3UdoUtiLvWQm3AkxEOsUh6+q1QsQ==
X-Gm-Message-State: AOJu0Yxi0HpJKs5iAOTQ/dKgl2tGKCEhvyWghxRs/Sks0GN4gl+MXh4q
	sfiH3jjAeWf42XYjer89eUSqmtGUGL+E1vrJrbtZvDapH7qn4rE4x54Z0L1Qhg0=
X-Google-Smtp-Source: AGHT+IFJNXj6vjqo92nrqygLL93P7kLGEaXHWhFhTVSX7MvfyNiIbt9B1awJPSQA0Jp8pppZC5298Q==
X-Received: by 2002:a5d:4751:0:b0:358:1a9a:e19c with SMTP id ffacd0b85a97d-3581a9ae6c3mr5940571f8f.68.1716906037293;
        Tue, 28 May 2024 07:20:37 -0700 (PDT)
Received: from [192.168.1.63] ([2a02:842a:d52e:6101:6fd0:6c4:5d68:f0a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35579d7db5esm11999275f8f.15.2024.05.28.07.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 07:20:37 -0700 (PDT)
From: Julien Stephan <jstephan@baylibre.com>
Subject: [PATCH v7 0/7] iio: adc: add new ad7380 driver
Date: Tue, 28 May 2024 16:20:27 +0200
Message-Id: <20240528-adding-new-ad738x-driver-v7-0-4cd70a4c12c8@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACvoVWYC/33OQQrCMBAF0KuUrI0kTdJUV95DXDTJtB3QVBKJL
 aV3Ny2IIOhu/od5MzOJEBAiORYzCZAw4uBz0LuC2L7xHVB0OZOSlZIJzmnjHPqOenjmUYt6pC5
 ggkBVezBK5s5qSfL6PUCL40afLzn3GB9DmLZLSa3tGz38RpOijFrQrmVMWjDiZJrpiibA3g43s
 rqp+liK/XkwVdkSlmnJuZK6rL+sZVle3yB3rQ8BAAA=
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
 Conor Dooley <conor.dooley@microchip.com>, 
 Stefan Popa <stefan.popa@analog.com>
X-Mailer: b4 0.13.0

Taking over this series with David Lechner's approval, to add some
fixes, proper handling of pseudo differential parts and
some extra commits to add support for 4-channel compatible parts.

Here is David's cover letter:

This series is adding a new driver for the Analog Devices Inc. AD7380,
AD7381, AD7383, and AD7384 ADCs. These chips are part of a family of
simultaneous sampling SAR ADCs.

To keep things simple, the initial driver implementation only supports
the 2/4-channel differential chips listed above. There are also 4-channel
single-ended chips in the family that can be added later.

Furthermore, the driver is just implementing basic support for capturing
data. Additional features like interrupts, CRC, etc. can be added later.

This work is being done by BayLibre and on behalf of Analog Devices Inc.
hence the maintainers are @analog.com.

Changes in v7:
- Removing oversampling support and resolution boost from this series. 
  They will be submitted along with David's series about multiple scan
  types [1], thus removing the RFC tag.

 [1]: https://lore.kernel.org/all/20240524-iio-add-support-for-multiple-scan-types-v2-0-a6c328fdfab7@baylibre.com/

- Link to v6: https://lore.kernel.org/r/20240501-adding-new-ad738x-driver-v6-0-3c0741154728@baylibre.com

Changes in v6:
- Added a comment for math in IIO_CHAN_INFO_OFFSET
- Added a comment for raw buffer
- use iio_device_claim_direct_scoped instead of iio_device_claim_direct_mode

Adding the following commits on top of v5:
- add oversampling support
- add resolution boost support

- Link to v5: https://lore.kernel.org/r/20240319-adding-new-ad738x-driver-v5-0-ce7df004ceb3@baylibre.com

Changes in v5:
- make ad7380_regmap_config static
  Reported-by: kernel test robot <lkp@intel.com>
  Closes: https://lore.kernel.org/oe-kbuild-all/202401280629.5kknB57C-lkp@intel.com/
- don't use bool in FIELD_PREP
  Reported-by: kernel test robot <lkp@intel.com>
  Closes: https://lore.kernel.org/oe-kbuild-all/202401280629.5kknB57C-lkp@intel.com/
- fix rx/tx buffer for regmap access
- add datasheet links of supported parts
- move reading reference voltage to probe function
- removed DIFFERENTIAL from a few macro names

Adding the following commits on top of the v4
- add supplies for pseudo-differential chips
- prepare driver to add more compatible parts
- add support for 4-channel compatible parts

- Link to v4: https://lore.kernel.org/all/20240110-ad7380-mainline-v4-0-93a1d96b50fa@baylibre.com

Changes in v4:
- Dropped SPI bindings patch.
- Removed `spi-rx-bus-channels` from the adi,ad7380 bindings.
- Link to v3: https://lore.kernel.org/r/20231215-ad7380-mainline-v3-0-7a11ebf642b9@baylibre.com

Changes in v3:
- dt-bindings:
    - Picked up Conor's Reviewed-By on the adi,ad7380 bindings
- driver:
    - Removed extra indent in DEFINE_AD7380_DIFFERENTIAL_2_CHANNEL macro
    - Removed scan mask that included timestamp channel
    - Removed parent device assignment
    - Picked up Nuno's Reviewed-by
- Link to v2: https://lore.kernel.org/r/20231213-ad7380-mainline-v2-0-cd32150d84a3@baylibre.com

Changes in v2:
- dt-bindings:
    - Added new patch with generic spi-rx-bus-channels property
    - Added maxItems to reg property
    - Replaced adi,sdo-mode property with spi-rx-bus-channels
    - Made spi-rx-bus-channels property optional with default value of 1
      (this made the if: check more complex)
    - Changed example to use gpio for interrupt
- driver:
    - Fixed CONFIG_AD7380 in Makefile
    - rx_buf = st->scan_data.raw instead of rx_buf = &st->scan_data
    - Moved iio_push_to_buffers_with_timestamp() outside of if statement
    - Removed extra blank lines
    - Renamed regulator disable function
    - Dropped checking of adi,sdo-mode property (regardless of the actual
      wiring, we can always use 1-wire mode)
    - Added available_scan_masks
    - Added check for missing driver match data
- Link to v1: https://lore.kernel.org/r/20231208-ad7380-mainline-v1-0-2b33fe2f44ae@baylibre.com

To: Lars-Peter Clausen <lars@metafoo.de>
To: Michael Hennerich <Michael.Hennerich@analog.com>
To: Nuno Sá <nuno.sa@analog.com>
To: David Lechner <dlechner@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
David Lechner (4):
      dt-bindings: iio: adc: Add binding for AD7380 ADCs
      iio: adc: ad7380: new driver for AD7380 ADCs
      dt-bindings: iio: adc: ad7380: add pseudo-differential parts
      iio: adc: ad7380: add support for pseudo-differential parts

Julien Stephan (3):
      iio: adc: ad7380: prepare for parts with more channels
      dt-bindings: iio: adc: ad7380: add support for ad738x-4 4 channels variants
      iio: adc: ad7380: add support for ad738x-4 4 channels variants

 .../devicetree/bindings/iio/adc/adi,ad7380.yaml    | 148 +++++
 MAINTAINERS                                        |  10 +
 drivers/iio/adc/Kconfig                            |  16 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad7380.c                           | 612 +++++++++++++++++++++
 5 files changed, 787 insertions(+)
---
base-commit: 9900e7a54764998ba3a22f06ec629f7b5fe0b422
change-id: 20240311-adding-new-ad738x-driver-5f9b54ad7c74

Best regards,
-- 
Julien Stephan <jstephan@baylibre.com>


