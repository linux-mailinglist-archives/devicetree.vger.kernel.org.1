Return-Path: <devicetree+bounces-126523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFE89E1ACC
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:23:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B509BB23587
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392D01E0E06;
	Tue,  3 Dec 2024 11:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WyPYgl13"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF9155C29
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223669; cv=none; b=bM1zAxCpZ3kTNT0q+OBQr6FYZr3bauByQ4ZAqeeuuZ3u9r9hAcybiNX5IOipnWEtMEgIMF+CsK+vegXeu8z02mdbum4zLDJU/mDV4ZYMtAqfVUUciwe5qVkWeo4opcbH9ghbk1QmoCyc4X1w/C9cijgWK3e8nSPFJ9V2h7Hj/Ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223669; c=relaxed/simple;
	bh=9aFLp2UwMkCrCD1W6kB9Fs3gglql8rQOhGvhuZru+PI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PQ8isgTABnxbUk63ravlfrNQQyRUEGBQHkM1mmvIZ5Ag4axaYOAoGXZiYvVK/Cx4VU9wHLQYdgzLDdl92CLgXgHDtX8oFvjmbl6S5yTai7Sq63+Eu/EG2DKPR140vVI7P2oesjthpboaxXBnjjx9l6m3qg/TJFoQmwhL083jJis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WyPYgl13; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-434a2f3bae4so49895255e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223665; x=1733828465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=83EbeQ3NUYtAM8mYvWu7CzrFt9hhvjnvcuhdWuTyizk=;
        b=WyPYgl130N54MUpoe5CFdpn8AIDsjrKfzJJUYxI8UmgNABTSUsBANynXuxQAM+3f5p
         Aps5eBida7CUrbkN/TiCSURbKnWSds4QsYHjs/gYODcftk6a7FYD4BcffOV2KVUwpAKG
         E1UgFGw3ocrtL52pgb6FbWkIuGLDWQ/CMlzYniPdGfCG7nUX7mDqau+VYDKCd8t1g+9n
         bU5B7XLmnNXI9pN9DUEjerty0r08L8PyYFgtt9duUPiW1KRPgRSBQPBHXCSp9v+gb4jL
         chDiP2Iqv4sXWE/R2p7VCnEpMXGF+VeBdraHgjgFxh1J5m2NVB1iwlfM+GtZzBV6Bh+P
         sU2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223665; x=1733828465;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=83EbeQ3NUYtAM8mYvWu7CzrFt9hhvjnvcuhdWuTyizk=;
        b=HfNNm0z5cwbWyrHmuGDCKwAo74H6MHpNHIp0/TUFyTC53aP7PmebkvCz9RrhIYttrJ
         2oIcQWY4U3FQ1zckY0ZQQZpCjFD3/VBWwe6spAm4Isuvi1KZWQNObEkZWlz8BWbJHhzZ
         atLZrCVgvLQbhRfRk1wJhD45FY2oX8YJ+C2EPx7K/X9jUBZ8Oeni1G589keUKshCUm2e
         rRLbzffwXilHhd6/joB3n+WsucPO8XeE4+s9TfTxypU3YjGHiJHikTS3IDDZAHQF3H3O
         +sd+NSMHCAmn94grNayTg2ApfTOwmX7ep05dZ/iOFFgRfMiHmamIEqXxZ0amstkCfy1B
         ckJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQCQFAaiEipGLHMcg+Seb0Esb23sNoor46khBYp2qElXAgi344vnNVJkjR5lKhdoU/xlQghcFjJBLZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxCcYYZHv7fGcko+xMNuvAladeoNlH9vr399R3mqHyvthAaXryk
	iqb+Bp/cOxU7/mvc0HudjEc+OEeW4q4gRBakBCQxayTGJFR+c81iLWRkI407yVk=
X-Gm-Gg: ASbGnct+vUShehP4BJ+e8XpUWwTSZXCSVBYGS7EkUtTfb9BOwTeP2GYU4nejjEsASFU
	3csLmzlSWSQMZ5RzK4hp1mZcKre0Ky6R7SbVqf0tOCKAu0BVRnxDKMgzelQUjfkQM/kdI2vWcar
	8LOl2ihs9EBZO5BD4MmdDowkBZ0ikInGTNGCwAYi8Qa89BPd8I9n1pWpoBvcoB2+tVWdVQKLKD2
	/Ang6jDA4rNVM9ts5vo3DHHMSSCumUW4TulZRgQI/n5wODmUdQPEOmII6E7qmfyxILjripjzGHq
	JmuVbI6CuVSlwIDwtxpS082YBGLmITwcNBXJkPI=
X-Google-Smtp-Source: AGHT+IG9PdivsQJQW3m8jQp1iuI/nJlHassAfrJAEhEid8unKf+FsGT08pRwJS1GHzGWNu46JenEUw==
X-Received: by 2002:a05:600c:1d92:b0:434:a9bd:e67d with SMTP id 5b1f17b1804b1-434d09b6895mr18716985e9.13.1733223664756;
        Tue, 03 Dec 2024 03:01:04 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74f05asm215388645e9.1.2024.12.03.03.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:04 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 00/10] iio: adc: ad7124: Various fixes
Date: Tue,  3 Dec 2024 12:00:20 +0100
Message-ID: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2026; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=9aFLp2UwMkCrCD1W6kB9Fs3gglql8rQOhGvhuZru+PI=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTEJu2K4EEixhLBarXOfNQwtBwY0g1+ukESY QEaNitAVZOJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07kxAAKCRCPgPtYfRL+ TkaTB/9uigvAoY0m5I5XqPFYL+UM5JbKckZGUR87+lNq66p457QgNDa47/aCWCKv+4mGvZAxa+H AsMo/7JnBSA9UNY+wC5oRtGJ79bv8bOLOZDjKeo+VGYmMbR/KLrSxbtJOn0mbs/E1a4SuKu87Gn UrFC+uk5I2She5HLEFOb60NFLAMpT+ijs8BsSUyT3dUDY5POEkJkjKcjgqy3Cm1PSktiuExPLlV 1Y4WT0K5/8Y0k6mdsvGswWWG4ML1bMWSWv3V7d6o1Av30mQW4s5DuF07G2b1Hj1WDv9nJiMqYK+ +UeJZYjW7XT/Ii2j4F3lSMAtSNBpi6rrfb4PC7CX/+gozNiC
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

changes since v4, https://lore.kernel.org/linux-iio/20241127145929.679408-12-u.kleine-koenig@baylibre.com

 - Drop | after description in the binding docs (Rob in v2)
 - Dynamically allocate spi buffer (Jonathan)
 - Fix capitalisation of a comment (Jonathan)
 - drop comments about already emitted error messages (Jonathan)

As before this is based on v6.12 + 64612ec9b909 ("iio: adc:
ad7124: Disable all channels at probe time").

Best regards
Uwe

Uwe Kleine-König (10):
  iio: adc: ad7124: Don't create more channels than the driver can handle
  iio: adc: ad7124: Refuse invalid input specifiers
  dt-bindings: iio: adc: adi,ad7{124,173,192,780}: Allow specifications of a gpio for irq line
  iio: adc: ad_sigma_delta: Add support for reading irq status using a GPIO
  iio: adc: ad_sigma_delta: Handle CS assertion as intended in ad_sd_read_reg_raw()
  iio: adc: ad_sigma_delta: Fix a race condition
  iio: adc: ad_sigma_delta: Store information about reset sequence length
  iio: adc: ad_sigma_delta: Check for previous ready signals
  iio: adc: ad7124: Add error reporting during probe
  iio: adc: ad7124: Implement temperature measurement

 .../bindings/iio/adc/adi,ad7124.yaml          |  13 ++
 .../bindings/iio/adc/adi,ad7173.yaml          |  12 +
 .../bindings/iio/adc/adi,ad7192.yaml          |  15 ++
 .../bindings/iio/adc/adi,ad7780.yaml          |  11 +
 drivers/iio/adc/ad7124.c                      | 217 +++++++++++++-----
 drivers/iio/adc/ad7173.c                      |   1 +
 drivers/iio/adc/ad7192.c                      |   4 +-
 drivers/iio/adc/ad7791.c                      |   1 +
 drivers/iio/adc/ad7793.c                      |   3 +-
 drivers/iio/adc/ad_sigma_delta.c              | 190 ++++++++++++---
 include/linux/iio/adc/ad_sigma_delta.h        |   8 +-
 11 files changed, 387 insertions(+), 88 deletions(-)


base-commit: adc218676eef25575469234709c2d87185ca223a
prerequisite-patch-id: 617af17fc377a984762c61893b9f2a92ae62213a
-- 
2.45.2


