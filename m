Return-Path: <devicetree+bounces-125071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 806CB9DAA40
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 16:00:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22B61166E2B
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 15:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21F0146447;
	Wed, 27 Nov 2024 15:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="M5U75/zm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2F11E1041
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 15:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732719610; cv=none; b=DqRx9KorMs42ziEhwkDExNeNfyxYX/rIaujJaO69cGPduMF8F+qWQ+Q5TooiJiO9VHe10MvJOWU36MlRewtWoxYVnxQ9Z8T4y6rwX03vRHqqlqOE4hTU9VjKlX893onZKuULrFZ3AyOHrGPJeUddyB4PsMgpGTQur5dv8qZRCZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732719610; c=relaxed/simple;
	bh=L9oBzFpag4prWGzd4uQqWd5IX4lGgdSB8GXSQL3FVhg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=OLAshv3vw3NhAmsX9aL5eXA8+9/4wxmPtM5oKYtXNN/m11lLLS9OQ7gM+upl/w10HRLfpddLV3IEKdEHSVQajnpzO5mKnfyOT3BDJMtcN2usfqMTEwAgxevJ6L2EE7nVuSNKAavCGL1visH4+9xmM531omLXaiiUnkmSnQTi+Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=M5U75/zm; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-434a1833367so5776635e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 07:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732719606; x=1733324406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YBBTCidqiGEUu6OfIV/5qkyTo2Yz/eYVMHBgzPr9xmc=;
        b=M5U75/zmiUr54RftjTtdtI4uEX/7h2Pwo57MXQ7wAYNlq94LV14SE1/4qW6fZIn+8n
         wt17YNHjM9KZxQnAvU/wljUqATDdQhYCOYbE36lF2UIfPM3O37Gt6CVn5IaECZYtDfUY
         Q0Ok/bd3Xm0H55jrwVy754bmwdyNyrfVCv7h5rspEkiO0ljL7vdefpgGaHWlDmBOWLGb
         kNfdLxy/zzo/p3/ZlCGaYSM11wL12X8h3zlWw5qojeYI47+QpgE3qiLWbwSfS9J/1lsY
         bX+WwQjm6hDwc+Qb8SQFkDy/D/PDxjHhfnWPSGUOfk7h8eqLn6Y9xrkRfqe3CS/DJMBz
         jcuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732719606; x=1733324406;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YBBTCidqiGEUu6OfIV/5qkyTo2Yz/eYVMHBgzPr9xmc=;
        b=Iwcur4iLiPCggQWjW5eemjs84TxS4zl5qQvJwcqcHQNlYI9rmU65ByUqW7QL0PuyAg
         FSYkjXdsdL1x6Ba+mCy3Bty7mKXRWA7SUgiDbASWVZpcqn1lnZUe8go1LsYvzW8XszgP
         k0s+2IbGgemXPNvec2m/Vkq6tTHI3E7844z1NYqvgPHeJ3MKtpRy3HNTAseVZr6JkK4r
         p+ODPZV73YZtYGh43Ze9swfs5YFMhMUMdozSa8j7EBvVVw4hFVJL1WbFKnAaGMp/z+9b
         kErtaFmnwbQLAeeDyEChDEdX0jf+9QnRzoBUIALcPhUthg4c1AniJaM1uiwN7a80fIWA
         FAOA==
X-Forwarded-Encrypted: i=1; AJvYcCUxw5X4hWasQ2Zc1guuQaPoO4VAY+gIMnyQ4wHBLvWmSzbYPD3xXSx4bk3qSDQoMURsLMSGawV5mNQj@vger.kernel.org
X-Gm-Message-State: AOJu0YwDHTXlih3/0KF29CZNTvF+dMu7J59KMK00Lqj7dOoTCRyvaicw
	EBRrHxAX86+9cICiwUF1QFVSCJWIbvYhirDVcLWWXljHzGyFZAea///k2o6cSbg=
X-Gm-Gg: ASbGncvLe9FlbMfgAk2aXK7BOVBPJ+xGiKMs0fmV2yYFjmQp0HPRiNcVkqEkCQvvtlg
	gGgxCi7+afwKGdMfbCDoBueq+XvrB13wAvc5yzY3Khdw02W0WZms88iwO9drRmIxPjRnuS6QUGL
	Y3fLS7QOtXBwdliKX53uMK6jPKkAUlgg2ajYajkOf7Y91capKPN/un6+28kodPtDrEp510phoal
	yVT7N29MjGdqLrxj+6B8V2p/4049cEiLr2tx7nPIVH8oULXign3LExZ0NyaL+3xzRo/gVqFnETo
	Xnbo
X-Google-Smtp-Source: AGHT+IEnrYtg8V+2YptA2cMOMa8zEVX4ypXjol8HUk1zsPUibxvb9YiZPoq4Yvti/FrDghX6tnz8tw==
X-Received: by 2002:a05:600c:6058:b0:431:4a82:97f2 with SMTP id 5b1f17b1804b1-434a4e67ca0mr64060075e9.6.1732719605725;
        Wed, 27 Nov 2024 07:00:05 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fad62e9sm16916010f8f.6.2024.11.27.07.00.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Nov 2024 07:00:05 -0800 (PST)
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
Subject: [PATCH v4 00/10] iio: adc: ad7124: Various fixes
Date: Wed, 27 Nov 2024 15:59:29 +0100
Message-ID: <20241127145929.679408-12-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2802; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=L9oBzFpag4prWGzd4uQqWd5IX4lGgdSB8GXSQL3FVhg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnRzPRuSuBc2fZ23QK44W+lmNR3AZw4soxAczTN 2/v16zz4TiJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0cz0QAKCRCPgPtYfRL+ Tko5B/48QZUTDqzbqPsSPmJKJmFLqzxbHt/adM48D5DKmq3pJ554/ykqLTv9CKcdTU/UjQE20Tu KLKEC/PzZ9OMTkex4SIh2PW7nb4YjxuzITwvfmPdqYgW/7OJC/w/PoP6DwZ80u8dWIInf8zJbUP rmEUlpFzpRCQZYX8x+Qc55BEXEVl3N3DZa9xCBLUkbQd/4l2+X5uKuCeR1bbflksyuXvDAgnN8t GrWGRzg10nnz3wdjdUfPPsgGXuZDDFEiqvbPtz0s/7vejdX0HX7YA3cRhJG1fieK/udLYtN70lr JTIz2TrrM26VH0aJX7N93mDqZYw8G2rCFm/rSP7zAP7ttcqB
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this v4 is the follow up to
https://lore.kernel.org/linux-iio/20241122113322.242875-12-u.kleine-koenig@baylibre.com
addressing the comments by Trevor Gamblin, David Lechner and Andy
Shevchenko. Thanks for your feedback.

This series still bases on top of v6.12 + 64612ec9b909 ("iio: adc:
ad7124: Disable all channels at probe time").

Changes include:
 - Expand patch #3 to also extend the dt bindings for the other chips
   making use of the ad_sigma_delta helpers
 - Various code comment and commit log improvements (partly Andy)
 - Check for errors (and other cheap conditions) earlier to reduce
   indentions (Andy)
 - Add error check for gpiod_to_irq() in ad_sd_init()
 - Forward declaration of struct gpio_desc (Andy)
 - Fix a kernel doc descripts (kbuild bot)
 - drop en passant restructuring
 - Use local variable for &st->sd.spi->dev in several functions (Andy)
 - Add a comment about the suspicious bi-polar but still unsigned value
   (David)

In another thread Jonathan asked to maybe reshuffle the series to have
the changes first that should be backported. IMHO all but the last patch
are suitable for such a backport, so no need to reshuffle. Agreed?

Best regards
Uwe

Uwe Kleine-König (10):
  iio: adc: ad7124: Don't create more channels than the driver can
    handle
  iio: adc: ad7124: Refuse invalid input specifiers
  dt-bindings: iio: adc: adi,ad7{124,173,192,780}: Allow specifications
    of a gpio for irq line
  iio: adc: ad_sigma_delta: Add support for reading irq status using a
    GPIO
  iio: adc: ad_sigma_delta: Handle CS assertion as intended in
    ad_sd_read_reg_raw()
  iio: adc: ad_sigma_delta: Fix a race condition
  iio: adc: ad_sigma_delta: Store information about reset sequence
    length
  iio: adc: ad_sigma_delta: Check for previous ready signals
  iio: adc: ad7124: Add error reporting during probe
  iio: adc: ad7124: Implement temperature measurement

 .../bindings/iio/adc/adi,ad7124.yaml          |  13 ++
 .../bindings/iio/adc/adi,ad7173.yaml          |  12 +
 .../bindings/iio/adc/adi,ad7192.yaml          |  15 ++
 .../bindings/iio/adc/adi,ad7780.yaml          |  11 +
 drivers/iio/adc/ad7124.c                      | 220 +++++++++++++-----
 drivers/iio/adc/ad7173.c                      |   1 +
 drivers/iio/adc/ad7192.c                      |   4 +-
 drivers/iio/adc/ad7791.c                      |   1 +
 drivers/iio/adc/ad7793.c                      |   3 +-
 drivers/iio/adc/ad_sigma_delta.c              | 184 ++++++++++++---
 include/linux/iio/adc/ad_sigma_delta.h        |   8 +-
 11 files changed, 384 insertions(+), 88 deletions(-)


base-commit: adc218676eef25575469234709c2d87185ca223a
prerequisite-patch-id: 617af17fc377a984762c61893b9f2a92ae62213a
-- 
2.45.2


