Return-Path: <devicetree+bounces-100297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 092E096D1EF
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:24:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27D501C2264C
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90BAF1925BB;
	Thu,  5 Sep 2024 08:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="N+2b2ltn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE4D189518
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 08:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725524653; cv=none; b=AMjQTVNJHQu+jh0zZeZPUpYu+RiN9uGEciHYZgcny7cCtxkNgbXa3Ds+VDJujPPC7Fzo1GpVv+OrEv6PXavKmj0GfZ0PG8v066vuXxuFpTMa6+bRl84sAR+NGrMKqz9HMEJCn//FxYP+SjuCqyXVmXd5sY5i5TxMRJL0W5NOwGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725524653; c=relaxed/simple;
	bh=R539Ju1qXW5ADus09BQSC8fgycQdVIoULWQe8Z8Bzpk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=f10ph97oYNnzXzQvWs2DALwybaDTV7mC0Gj2UfyCVQ3RnBMm7wA5RvILCaqUXc8JN5zPpIT8s9l/GFzk6M3Q6EJmqGNVihq/HYBCo3wn/uRq+boHP7QTaCnFKVMpddCHCuvCgXRq7omjnDmHL+rPIjhrlinR4mAwBUQv/7EAVWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=N+2b2ltn; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a83597ce5beso81112666b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 01:24:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725524649; x=1726129449; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4guFQrzA4tbu4dZba8ySxZ/hRLzXBVX/8Kywlah1Q1A=;
        b=N+2b2ltni6CPVDfWnCAR+Csfj+I8+e6lzsiC53KQdeRgZqH3TJivzMu2yvIDNMYPDW
         WDRAOfDwpTgSJl+JVlGJbevjIFFJPS7mo5+EbQYeCdXsXs0Af743HMTMruBJalm5Yln2
         h3vFo7N0jRMpojPTXMcs9eX28VWI21u0tsV5Wle+O3mmHa64gAPJPgwvQUPwYnN1Qgfn
         beF6OA3AKNXgI2Dicxg7dI+XJXQjqUEdXKL2ggDCoVMtvrxWNjHlXcHVceX9wC4WHaoR
         CBDvaiV+ICsgiuSkNtzKiwFnqv8vY8EjiorrVqa3MV0S4X3PoVgB8oEnclZRfyPTc+Dv
         b46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725524649; x=1726129449;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4guFQrzA4tbu4dZba8ySxZ/hRLzXBVX/8Kywlah1Q1A=;
        b=FCObJAI2wSFf+16fiHcsTbs0++dWx5mEMQuoTM/KOlG3dnDGvpWPMpDvUMqfiJcAdt
         CFYVZOz9cPSPAu76he45JXx7ZTBcBzkMLUvqXQQ10m3JPeKHLPWvVGXPwG8NXq9R2aAY
         UWnKvqsrk0DpUQKDH/WBbq9d4kRdSUqfKEjgZtmwIxD6GC2emPJZ5k75J3gzh3rqZ1Ld
         JnwmjXt0Pr85XTeFqpls9GzDTfIN5F49w/wdPVVwJR8XRrVsmpMYDoKWewCu/vQJt3dZ
         2MLqInfMGgrw24sPS+z6hPYRGtbigrrBirr+Rn1AwlQ+iyHSJXSAly/tz3PaoVLAuJSP
         d6yw==
X-Forwarded-Encrypted: i=1; AJvYcCXn7w5WF2f6tZwtu2ltiA5mgKtdIoL3DJXx3AwK+Oc+z0i60kXKn4ecJ95ghvyi0VZJQUzx/Qcsoeth@vger.kernel.org
X-Gm-Message-State: AOJu0YyWs0rQFDuVBCFViaMveEEAD3wPdW6CAx8g43W+4S2dUF+7eD7M
	iKb2hmHRL4WiSKe8L85krt1SKJVT2DqY8KK6ragR6SgwKiJR0GdXYBAZEYYtWT8uzeJHYQuKFrI
	nmJI=
X-Google-Smtp-Source: AGHT+IHwgWwaIoImdADHHsZVEdYOr3B4Uh6j6J0eLHmCKUYBnZnaEM8dhgBZXsJnqtFSLimaEM8OIw==
X-Received: by 2002:a17:907:7ea4:b0:a87:370:8dfc with SMTP id a640c23a62f3a-a8a43038072mr506615366b.14.1725524648430;
        Thu, 05 Sep 2024 01:24:08 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a623a6c80sm102300366b.174.2024.09.05.01.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 01:24:07 -0700 (PDT)
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
	Alexandru Ardelean <aardelean@baylibre.com>
Subject: [PATCH v4 0/8] iio: adc: ad7606: add support for AD7606C-{16,18} parts
Date: Thu,  5 Sep 2024 11:23:54 +0300
Message-ID: <20240905082404.119022-1-aardelean@baylibre.com>
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
  iio: adc: ad7606: split a 'ad7606_sw_mode_setup()' from probe
  iio: adc: ad7606: wrap channel ranges & scales into struct
  iio: adc: ad7606: rework available attributes for SW channels
  dt-bindings: iio: adc: document diff-channels corner case for some
    ADCs
  dt-bindings: iio: adc: add docs for AD7606C-{16,18} parts
  iio: adc: ad7606: add support for AD7606C-{16,18} parts

 .../devicetree/bindings/iio/adc/adc.yaml      |   4 +
 .../bindings/iio/adc/adi,ad7606.yaml          | 109 +++++
 drivers/iio/adc/ad7606.c                      | 433 +++++++++++++++---
 drivers/iio/adc/ad7606.h                      |  78 +++-
 drivers/iio/adc/ad7606_spi.c                  |  71 ++-
 5 files changed, 599 insertions(+), 96 deletions(-)

-- 
2.46.0


