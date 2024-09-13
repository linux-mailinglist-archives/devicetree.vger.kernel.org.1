Return-Path: <devicetree+bounces-102748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B72A6978201
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 16:01:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80C222887B3
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 14:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AC191DC04C;
	Fri, 13 Sep 2024 13:57:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SKPZzLXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED79B1DC046
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 13:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726235875; cv=none; b=glgBrtueXMIDPJVIv7nEwFbGJ/fr18Rsf7jqVET5px+7TMcGaajkoWkrJf2bjUKHPLDDnsYTfw0kgDoX14NQFWfmNi1HuXdlFLhni2mcEaRw0GTbHYhm0bIVzhsaSw7gFmz49I3CjYG6MEDRFjLZSLXsfAgAbKuWpWU7FkWQ3hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726235875; c=relaxed/simple;
	bh=T2X9pbF65lZ7iuFKFRQj2e6xbDc+OpJiygd5N30883U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=bPf3MUExdrm0ZQD0fkg7Z1Vw+uMrEY2TC/U5Xa9PJra3yqWSSCQ2WqLYb1kxRGSye4Obd7SCvIJJzyWw59/TR3bGQYOypHnIvra58mdO2RXdxHJv8jFq5KzjglZqaYyllpHXQOqb0AIv8lqxCV0BYMBcqfQe5c+xHrR8FNT8abQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SKPZzLXI; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42cbe624c59so8558805e9.3
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 06:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1726235870; x=1726840670; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8mrAt6I7ChpaWQkATLvmJspNETKt199jN2ZLn6FfaWk=;
        b=SKPZzLXIeLkuOWOxxfASlFn/c12f7XtLCI8o0Th2crXuMgrv4NeSI1RsMizgDioAia
         2BESX8u5XKfMvjQ/Unw5U3wn1QV1r/VLzu9oIACh6GnNP76aY/N0xVZM0fsXhqptfaLz
         x+/QWoLUnjcWAeiT+ez/JDDZ/7JQZgX6SQeg5QPL0LELyJSPQUjQ94HLBJAjK6Hqxs0m
         zRo3sOaLaUOA65iT0REg1TPS07yoxJc99DHM6kIZHg0tI/IhIbjLA69wZcmMFTpd0G/w
         pNwXhvExuR9KR+EIpLGGb3k/NDii2q1w2C74pbKeCOSFbGKEP1X23zt7Yq5KG5ddHdLg
         lTow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726235870; x=1726840670;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8mrAt6I7ChpaWQkATLvmJspNETKt199jN2ZLn6FfaWk=;
        b=BL0pAetNgOqc9vNTVFGKIbNBZAWbunWyVKC2sWB17BZpgvSu1y8H+Zv+omL/mOkAF/
         tyo25pMV0OJ6WW96hujbFn1P4Ciw6nt+d96lb2/HC2MvIyayzpAXZn9e6xksDeBvbe3T
         5OHJz0t/FcjzjlkiD4j13dQep3NEniYM8Jie28PIS3SfJ4BJtCpJN+AZTmtXE8E+n7Tf
         h4TfPhfGKDLlzABvGqcjtbudQypAKSWCYkgonR1qnbsmfxB1p4+jff7QX5LaMfWDzW09
         KDtBjymh9NywVIOmyhYAtlUAcbfgRaIZqPV4M5SuZ85U+JCxpgBLm3ttT/LW/tVbWgEA
         tqUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWe84b7LGpIU95ROeZUHMUr4rNu3LerAFw7QcyAtU2gcoHEa+lp4NFBD4TAN1M9ZKRHKp4Dp56z5CVQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzSq+Mgw6meGVrQzp5YODGhEoBGM1yKlLbD+pSDON8Y8xG6L0QC
	eAHx1hUdVtcFvSUVF4N1cWXjcHoL0fTN0NxcQ/CQ+OoFwi5OyR1JDNcJPD6CsLM=
X-Google-Smtp-Source: AGHT+IHnfnu0rC+N0JXOm5xjJiw+Zq4KuL/6ulMe7Qr+iaCB2tw4S7vtotW8sfNP6SD+CA4DIAAI1A==
X-Received: by 2002:a05:600c:1d9b:b0:42c:b9a0:c17c with SMTP id 5b1f17b1804b1-42d96508943mr18420685e9.35.1726235869379;
        Fri, 13 Sep 2024 06:57:49 -0700 (PDT)
Received: from neptune.lan ([188.27.129.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-378956d3941sm17104749f8f.84.2024.09.13.06.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 06:57:48 -0700 (PDT)
From: Alexandru Ardelean <aardelean@baylibre.com>
To: linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: jic23@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	lars@metafoo.de,
	michael.hennerich@analog.com,
	gstols@baylibre.com,
	dlechner@baylibre.com,
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v6 0/8] iio: adc: ad7606: add support for AD7606C-{16,18} parts
Date: Fri, 13 Sep 2024 16:57:35 +0300
Message-ID: <20240913135744.152669-1-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The AD7606C-16 and AD7606C-18 are pretty similar with the AD7606B.
The main difference between AD7606C-16 & AD7606C-18 is the precision in
bits (16 vs 18).
Because of that, some scales need to be defined for the 18-bit variants, as
they need to be computed against 2**18 (vs 2**16 for the 16 bit-variants).

Because the AD7606C-16,18 also supports bipolar & differential channels,
for SW-mode, the default range of 10 V or ±10V should be set at probe.
On reset, the default range (in the registers) is set to value 0x3 which
corresponds to '±10 V single-ended range', regardless of bipolar or
differential configuration.

Aside from the scale/ranges, the AD7606C-16 is similar to the AD7606B.

This changeset, does a bit of rework to the existing ad7606 driver and then
adds support for the AD7606C-16 & AD7606C-18 parts.

Datasheet links:
  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-16.pdf
  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606c-18.pdf

Changelog v5 -> v6:
  - v5: https://lore.kernel.org/linux-iio/20240907065043.771364-1-aardelean@baylibre.com/
  - Dropped patch 'iio: adc: ad7606: remove frstdata check for serial mode'
    - It's part of iio/testing now
  - For patch 'iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()'
    - Added early return 'if (ret) goto error_ret'
  - Reworked patch 'iio: adc: ad7606: split a 'ad7606_sw_mode_setup()' from probe'
    to 'iio: adc: ad7606: move scale_setup as function pointer on chip-info'
    - Splitting 'ad7606_sw_mode_setup()' & 'ad7606_chan_scales_setup()' from probe
    - Added scale_setup_cb hook to chip_info table
  - For patch 'iio: adc: ad7606: add 'bits' parameter to channels macros'
    - Adjusted paragraph 'Up until now, all chips were 16 bit.'
  - Patch 'iio: adc: ad7606: wrap channel ranges & scales into struct' re-applied
    on new context
  - Patch 'iio: adc: ad7606: rework available attributes for SW channels'
    re-applied on new context
  - Patch 'dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts'
    - Simplified 'bipolar' property ; it is now mandatory if channels node exists
    - If no channel node exists it's unipolar single-ended
    - Update descriptions to reflect this
  - For patch 'iio: adc: ad7606: add support for AD7606C-{16,18} parts'
    - In 'ad7606_spi_read_block18to32' change 'sizeof(uint32_t)' -> 'sizeof(u32)'
    - In ad7606.h  changed d16/d32 -> buf16/buf32; and types to u16/u32
    - Reworked channel setup logic

Changelog v4 -> v5:
  - v4: https://lore.kernel.org/linux-iio/20240905082404.119022-1-aardelean@baylibre.com/
  - Not all topics from v4 have been fully resolved; but I created a v5 in
    case it helps to spot other (new) topics
  - Added patch 'iio: adc: ad7606: remove frstdata check for serial mode'
    - This is from the 'fixes-togreg' branch
    - It should be ignored
    - Should help with a bit of context for this series
  - For patch 'iio: adc: ad7606: add 'bits' parameter to channels macros'
    - Added '.storagebits = (bits) > 16 ? 32 : 16'
    - Reduces the final patch a bit
      - i.e. 'iio: adc: ad7606: add support for AD7606C-{16,18} parts'
  - For patch 'iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct() '
    - Added 'Reviewed-by: David Lechner <dlechner@baylibre.com>'
  - For patch 'iio: adc: ad7606: rework available attributes for SW channels'
    - Added '.storagebits = (bits) > 16 ? 32 : 16'
    - Reduces the final patch a bit
      - i.e. 'iio: adc: ad7606: add support for AD7606C-{16,18} parts'
  - For patch 'dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts'
    - Added '"^channel@[1-8]$": false' if not 'adi,sw-mode'
    - Added 'Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>'
    - Given the change, I would need confirmation that the Krzysztof's
      Reviewed-by tag is still valid
    - There is still an open topic about using
      'oneOf:required:{diff-channels,bipolar}' vs 
      'if:required: [diff-channels]then:required: [bipolar]'
      - I'm leaning towards 'oneOf:required:{diff-channels,bipolar}'
      - Let's see what a discussio will yield
  - For patch 'iio: adc: ad7606: add support for AD7606C-{16,18} parts'
    - In 'ad7606_spi_read_block18to32()' fixed 
       '.len = count * sizeof(uint32_t)' in 'struct spi_transfer xfer'
    - In 'ad7606_read_samples()' changed 'u16 *data = st->data;' to
      'void *data = st->data.d16;' ; both would compile though ;
      converting 'data' to 'void *' may show that it's not just 16 bits
    - In ad7606c_18_chan_setup() & ad7606c_16_chan_setup()
      - Added explicit 'cs->reg_offset = 0;'
    - In 'ad7606c_sw_mode_setup_channels()' :
      - If pins are specified incorrectly, an error is triggered (vs
        ignoring it before)
      - Updated comment about why 'st->bops->sw_mode_config()' is called
        first

Changelog v3 -> v4:
  - v3: https://lore.kernel.org/linux-iio/20240904072718.1143440-1-aardelean@baylibre.com/
  - For patch 'dt-bindings: iio: adc: document diff-channels corner case
    for some ADCs'
    - Added 'Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>'
  - Renamed patch 'dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings'
    to 'dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts'
    - Updated based on notes from Krzysztof Kozlowski (from v3)
      - Dropped ()
      - Re-ordered the patternProperties:oneOf:required specification
      - Unified match-pattern to '^channel@[1-8]$'

Changelog v2 -> v3:
  - v2: https://lore.kernel.org/linux-iio/20240902103638.686039-1-aardelean@baylibre.com/
  - Applied checkpatch.pl changes
  - Managed to setup and run 'make dt_binding_check DT_SCHEMA_FILES=adi,ad7606.yaml'
    - Found the winning combination for this setup
    - David Lechner also helped
  - For patch 'iio: adc: ad7606: rework available attributes for SW channels'
    - Removed an extra space that checkpatch found
  - For patch 'dt-bindings: iio: adc: document diff-channels corner case
    for some ADCs'
    - Removed 'the the' stutter (that I did in writing)
  - For patch 'dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings'
    - Updated binding with some description for 'diff-channels' & 'bipolar'
      properties
    - Channel definitions are counted from 1 to 8 to match datasheet
    - Added more bindings rules for 'diff-channels' & 'bipolar' for AD7606C
      - Adapted some ideas from adi,ad7192.yaml
  - For patch 'iio: adc: ad7606: add support for AD7606C-{16,18} parts'
    - Updated 'diff-channels' property with channel numbers (from 1 to 8)
      handling

Changelog v1 -> v2:
  - v1: https://lore.kernel.org/linux-iio/20240819064721.91494-1-aardelean@baylibre.com/
  - Fixed description in 'iio: adc: ad7606: add 'bits' parameter to channels macros'
  - Added patch 'dt-bindings: iio: adc: document diff-channels corner case
    for some ADCs'
    - diff-channels = <reg reg> can be used to define differential channels
      with dedicated positive + negative pins
  - Re-worked patch 'dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings'
    - Using standard 'diff-channels' & 'bipolar' properties from adc.yaml
  - Re-worked patch 'iio: adc: ad7606: add support for AD7606C-{16,18} parts'
    - Reading 18-bit samples now relies on SPI controllers being able to
      pad 18-bits to 32-bits.
    - Implemented 'diff-channels = <reg reg>' setting
    - Removed some bad/left-over channel configuration code which I forgot
      during development and rebasing.

Alexandru Ardelean (8):
  iio: adc: ad7606: add 'bits' parameter to channels macros
  iio: adc: ad7606: move 'val' pointer to ad7606_scan_direct()
  iio: adc: ad7606: move scale_setup as function pointer on chip-info
  iio: adc: ad7606: wrap channel ranges & scales into struct
  iio: adc: ad7606: rework available attributes for SW channels
  dt-bindings: iio: adc: document diff-channels corner case for some
    ADCs
  dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts
  iio: adc: ad7606: add support for AD7606C-{16,18} parts

 .../devicetree/bindings/iio/adc/adc.yaml      |   4 +
 .../bindings/iio/adc/adi,ad7606.yaml          | 120 +++++
 drivers/iio/adc/ad7606.c                      | 464 +++++++++++++++---
 drivers/iio/adc/ad7606.h                      |  86 +++-
 drivers/iio/adc/ad7606_spi.                   |   0
 drivers/iio/adc/ad7606_spi.c                  |  71 ++-
 6 files changed, 653 insertions(+), 92 deletions(-)
 create mode 100644 drivers/iio/adc/ad7606_spi.

-- 
2.46.0


