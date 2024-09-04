Return-Path: <devicetree+bounces-99773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA2596B2C6
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 09:27:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EDE41C21EDF
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 07:27:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B9C5146588;
	Wed,  4 Sep 2024 07:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mADcoJZI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE95824AF
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 07:27:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725434848; cv=none; b=k2fGGEyBz6qxQUbJYaxp54j9H4ihi0c2dqPqFlGHXUwG6Mab3fHk6rqtlxw95E/QiJk+N/jBgTqQWC9kL5BsemkMTXxGiNFscy3b4mb+kwfYif6LHQtOmM2poDO2S3qCT8zrYzDTH0/zS6ga2LF1Os6ZHJ7y7ZRyklXtALRwPmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725434848; c=relaxed/simple;
	bh=bdClaQMyoGsCdWLYe2ixknLgtAqi8KipDXtel2rdSiE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ix0BgH/jY7wwqbYRcLXWvN9ELa5abARHQLPX05M54CGLp8+NNQZbW7D6FvIMmVl+6K0EZslFE7CLAk2j8NE2AJ9rGTni3tWoYUPyP3bXohj+quq1CB8t6m+FDKoaf7MWSCemhTwvQmZA7JIK0TCEmcZNLUZXia7HxW2QFieQTuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mADcoJZI; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a7a81bd549eso558691866b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 00:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725434844; x=1726039644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7pHc8+HPsRwaUTwqoeziGvhSwpCVJZ7q8cThJ3O3xi4=;
        b=mADcoJZIUJ8JVrVC0mnJKtuzJwL2oW9cXGX1JSdf+oFnL8UhRQzx21bmzQpwRoplRY
         2sjVepf9MyYFABRzqRuXWJlzEhzV7V0JqOoQxJ4yUbgkjUaq75jcWVjyiOvWC4+a5iOG
         NhfViMK/K/ZoPaR6cH60A2qDrwSWhkMVhXMK0+bghGR13bq3v21Qr99xvo8LvrRrKBz/
         ilcI+J7a1cayarUwBvNxlcPzAqvO6GKRDV8XWftKHZPeY6KcXfLbHJr7G7ZGLCe+19lf
         sd/R6iLFWzAXiZFWewbReMBUHPY3NQ1mYs9dRb9c/VaqYn0P4ve+Z4qFkfS7RpviABw+
         Q+Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725434844; x=1726039644;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7pHc8+HPsRwaUTwqoeziGvhSwpCVJZ7q8cThJ3O3xi4=;
        b=F3zH6sRmUlZctuX52lWj0iK5Z9aPHyBLTet01nDgSOX7fKsW2tl7KdexXjzoqV1y4Z
         QA1pjNRwJ4lLlUvwAKM88rzSLgoGon2yQZIaC9BXcJmb/AzsBiSIh9jgLYSI0cctFaKq
         uLwmlGsctkAiiD2/A3LS6uy53JaxgOBnrEZeIxBKBPoRjVMBPe8lFRClZLch1MW0hZTk
         6V5E7EQaUW5yzjddVUijgIbuUXcPuiYpDamLdQ6NLgRNML87I1fM+XC5bI2GuE/xCasV
         iuYq+A6v+rbagetYtZuZBs4AtoXorff8szx09e+8En8IVnljxxQ1WTYaji4O7KMT30vV
         ktNg==
X-Forwarded-Encrypted: i=1; AJvYcCUGDF/fMUiop2YdRb/o2B9LqRyqHejQMqAn970BYpNWQQA5S7JOcwZrpQOgcwJyaw0Fo3K+CaB4o0eH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr7UuJz4OZRCp9rKDR6KAhvho5IZeRbL2ZtLVxOgEzceYXQqTR
	BjWqUE14/BJYK1UGm6BJg5uq7C3jqa3d0V38oyjIBYdgm6pRXaCCcWzsmStD3l0=
X-Google-Smtp-Source: AGHT+IEUvILUXPWBCZLAJR4C0Geb6guuCqa6NJmJmhATsIjVr+yjHLOuGJ4mUc7lhn3MTCOXoQnDOg==
X-Received: by 2002:a17:907:6d0a:b0:a80:f358:5d55 with SMTP id a640c23a62f3a-a8a1d3271d8mr427039566b.33.1725434842698;
        Wed, 04 Sep 2024 00:27:22 -0700 (PDT)
Received: from localhost.localdomain ([188.27.130.242])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a89891d77fasm771151766b.167.2024.09.04.00.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 00:27:22 -0700 (PDT)
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
Subject: [PATCH v3 0/8] iio: adc: ad7606: add support for AD7606C-{16,18} parts
Date: Wed,  4 Sep 2024 10:27:08 +0300
Message-ID: <20240904072718.1143440-1-aardelean@baylibre.com>
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
  dt-bindings: iio: adc: add adi,ad7606c-{16,18} compatible strings
  iio: adc: ad7606: add support for AD7606C-{16,18} parts

 .../devicetree/bindings/iio/adc/adc.yaml      |   4 +
 .../bindings/iio/adc/adi,ad7606.yaml          | 108 +++++
 drivers/iio/adc/ad7606.c                      | 433 +++++++++++++++---
 drivers/iio/adc/ad7606.h                      |  78 +++-
 drivers/iio/adc/ad7606_spi.c                  |  71 ++-
 5 files changed, 598 insertions(+), 96 deletions(-)

-- 
2.46.0


