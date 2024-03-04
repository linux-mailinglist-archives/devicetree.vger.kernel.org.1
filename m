Return-Path: <devicetree+bounces-48207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 25762870B42
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 21:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A875F284C62
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 20:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2287AE47;
	Mon,  4 Mar 2024 20:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F0HQNsxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A352C7A70D
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 20:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709583222; cv=none; b=WiHD1qUNphvCdvOe/Mn1+pF84C1dJIh6vXaeJJW3yNJ+iR3+zDNYe0j7RWLkusPXtgB6WZ/TkHjpYc37u+5XvIDhaj4T/9pM6i7o39Il2CAPELz88oCCZod1mp31d6jUav8z5rUZPrOICD+vHDmkKw7/+G2SH31fsY0TbkRpdfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709583222; c=relaxed/simple;
	bh=bisGaUr7bGrhi6tF8dwD4I5KujdFuV9Ywekr6/YEiJU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=GUohmTEHz+jFgsKn1ZAjz7nTPq0oPqGFVRkO4mK+UjnNnryFtD8huLgbvmS7FxLSrsS9wOgiIIzIUSrMj6pzY/UYBxTGKBNn1d/V1KyTlkZCs2uCqgZFPcWDm3qdfrpEF+g6CS09xlmkVkRV+o0aRpHHDkKV0A84hE27d9YWJ3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=F0HQNsxR; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3bbbc6b4ed1so3870473b6e.2
        for <devicetree@vger.kernel.org>; Mon, 04 Mar 2024 12:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1709583219; x=1710188019; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tItt6el3MLTEP+Yh6ullzWEZp3tkdhHHbIbmhmeqN24=;
        b=F0HQNsxR1RBOHhE63q5t1o33dAdoCc1rd7kPGC3ZULd3+dlIaKAadUyUIcvHQCTKLe
         UULoE4JwDoUVXn8qgFpbfiCJ/tyY6U7NV1rJ4OlvABlsvxG6+aZTIEQ6fkw4XMZu09wu
         gWc1UJZsB0P92UMnxvulI0+NRCCHcxcSlCuUNhQ2Bg0pMcMzmbI9ZgVgLQKzfhbxdW3I
         Pmyg7pTD6JiFiv3vbl4XXh4WcSb72JUmjvMrqhQ91wdo3PmYh25xs45w1XMBcmL11Ma2
         eDMSEIurPVSEiDyy2yaoQneUifPk1v235/E/9oe245EYWi9TzlbSv4U0h5h8EtSlPsVF
         0/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709583219; x=1710188019;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tItt6el3MLTEP+Yh6ullzWEZp3tkdhHHbIbmhmeqN24=;
        b=mlbOzwYEWCs6rb3g+2+C9fsYYlC97Vlv9kwXl1HS8rMYQk89DE1Ey7vALl+pU9Ic8s
         lslz6ArDWD8M08lDnlntV+FL2QAB7tUu3Eb1zTI5R6r0B61bTRq1jQ2RqMdJY05TB1o7
         rk0XGrpdO2Th2fSlrP9doUduN8ZVZmhsyw5m4Ph/Knxx8IvVHU5lBrWCS1iUE3CKTZCH
         oV6oieW9Z811yHLW3AC6fZA5UsHVvaJZXurAR98PPWNbM+s621y1g1LdLRqmH9OCNFWT
         xpsscXOIxb5WsTkg/od5puIv6Fsgj/kMqcsfk2uB6BBEwHT5PE+IGaTyIKDU9S/q5VQg
         KndA==
X-Forwarded-Encrypted: i=1; AJvYcCUvhYBVE09aGbO85/vaSIkGlqVUj3KH7VDIeqkUfPmVzd1lVOv8fFsiHBM7mHBliQRQcOaQ/PbaCy//BW16lXkAuN3aaXJ5URnkuw==
X-Gm-Message-State: AOJu0YwxRvEGYo0Cgp/DT7RV1SPe6dCyx9EIbkRubLxKQTMEE/XWFWnt
	cMQ4UJnpsbx1rkIYCNfVQDFDyg55rn2izt6Gt7E1sYyXXROQN73vBH7ktqPwzXY=
X-Google-Smtp-Source: AGHT+IG3qbUdBsUtr4e+UTqI1v3TwQ+s38kYpECdFS4DB34Uudzmakb+l9J2kT1RvThFW/wtMXohmQ==
X-Received: by 2002:a05:6808:15a1:b0:3c1:e3fb:6c35 with SMTP id t33-20020a05680815a100b003c1e3fb6c35mr9947624oiw.31.1709583218760;
        Mon, 04 Mar 2024 12:13:38 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id n30-20020a0568080a1e00b003c1973dbca6sm865748oij.2.2024.03.04.12.13.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 12:13:38 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v5 0/2] iio: adc: ad7944: new driver
Date: Mon,  4 Mar 2024 13:48:45 -0600
Message-ID: <20240304-ad7944-mainline-v5-0-f0a38cea8901@baylibre.com>
X-Mailer: git-send-email 2.43.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

This is a new driver for the Analog Devices AD7944/AD7985/AD7986 family
of ADCs. These are fairly simple chips (e.g. no configuration registers)
but do have some unusual SPI configurations. The initial driver is only
supporting the normal (4-wire) SPI mode.

This work is done on behalf of Analog Devices, Inc., hence the
MAINTAINERS are @analog.com folks.

---
Changes in v5:
- DT bindings:
    - fixed typo
    - picked up Rob's reviewed-by
- Driver:
    - Dropped "nanoseconds" from comments.
    - Renamed "t" to "timing_spec"
    - Replaced "&spi->dev" with "dev"
    - Fixed logic on optional "ref" regulator
    - Added comment explaining why "cnv" gpio is required
    - Simplified always_turbo assignment
- Link to v4: https://lore.kernel.org/r/20240229-ad7944-mainline-v4-0-f88b5ec4baed@baylibre.com

Changes in v4:
- Fixed broken DT patch due to misplaced changelog
- Link to v3: https://lore.kernel.org/r/20240228-ad7944-mainline-v3-0-781b922334af@baylibre.com

Changes in v3:
- Removed 'multi' value from adi,spi-mode property in DT bindings
- Modified driver for above change
- Fixed spelling of 'conventional'
- Added '#daisy-chained-devices' to DT bindings
- Added comments explaining that '3-wire' mode is not related to
  spi-3wire/SPI_3WIRE
- Replaced _sign with _diff in chip info struct to properly handle
  pseudo-differential vs. true differential chips
- Link to v2: https://lore.kernel.org/r/20240216-ad7944-mainline-v2-0-7eb69651e592@baylibre.com

Changes in v2:
- Added limit to spi-max-frequency for chain mode in DT bindings
- Added spi-cpol property to DT bindings
- Renamed '3-wire' mode to 'single' mode (to avoid confusion with spi-3wire)
- Renamed '4-wire' mode to 'multi' mode
- Dropped adi,reference property - now using only ref-supply and 
  refin-supply to determine the reference voltage source
- Fixed spelling of TURBO
- Renamed t_cnv to t_conv to match datasheet name and fixed comment
- Fixed wrong timestamp pushed to buffer
- Fixed scaling for chips with signed data
- Make use of sysfs_match_string() function
- Link to v1: https://lore.kernel.org/r/20240206-ad7944-mainline-v1-0-bf115fa9474f@baylibre.com

---
David Lechner (2):
      dt-bindings: iio: adc: add ad7944 ADCs
      iio: adc: ad7944: add driver for AD7944/AD7985/AD7986

 .../devicetree/bindings/iio/adc/adi,ad7944.yaml    | 213 +++++++++++
 MAINTAINERS                                        |   9 +
 drivers/iio/adc/Kconfig                            |  10 +
 drivers/iio/adc/Makefile                           |   1 +
 drivers/iio/adc/ad7944.c                           | 416 +++++++++++++++++++++
 5 files changed, 649 insertions(+)
---
base-commit: 74744b27ba8cb8c265263aa0ff0693350a8cbc19
change-id: 20240206-ad7944-mainline-17c968aa0967

