Return-Path: <devicetree+bounces-115314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DA09AED8B
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 19:17:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14692B263B2
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 17:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738AA1F9ED2;
	Thu, 24 Oct 2024 17:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Vcc0hhAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F101F76B3
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729790245; cv=none; b=imPChydBafSCtVMptbxDLDvXz8OnWV5rNfV9IFYJ/ydmbgV83DgoEKqvqT7spUfwYCcK87YWrXnC3xtU3s519JMnTagiG8ifwiuRr4NjmdJXDtD1qoeaMhufDj/oKpP4Er7y/C5sA70pfuMOf9qkLlP7yIeFdVNd1Y5m28lXEoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729790245; c=relaxed/simple;
	bh=PSWiQdi6d8VVjsDiX9HFA/TQJcH9yfOSkS0BZ+DdNvk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=sf1J1bC7EkwH+AQIqUSK8/lfSdhJY7C47/StrBU/BE7KZw9TXdYUrlYHIDnU/cFFIQA2lBTEhZou7hG5Qojd9ljL5f5zfSjlzq03pXNBdy9OsR7lrcUmBVGDC6gP519n5pOE1CWUJwjwpzzctC6ejtZj4RfO4ePyvgL9mD1kOHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Vcc0hhAq; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4314a26002bso12338785e9.0
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 10:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729790241; x=1730395041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k4u6KfcpriioFe4Xb5YFiK0clviGAKbyWTwq6P987oQ=;
        b=Vcc0hhAqgYt09U9I0MwOPki7cFnFnPvtFlbSAmBsWfB5rgy5ab4vazz688Sf/HaDft
         IJfiBQgTJYr2ZoYFZn8Tu+xFIAk55+c/vzhup1MY1y+JUT3hlWOkzwBxLC1n8/aCUWp0
         l5qN+4gmiRqhnmubdPhSSbBGhAteH9LKKKem4oNXZBtnvU/5SrCg5D7FQS2yS6bspSLn
         5MuW0bLzRuBUuRYJChhHUF151idKGXq4e8+ggNZ1/1hK9R2gQ0VGmFJz8oxz++e1Dgvw
         uCSnQuRQo7IX6/456u53IH0RfkIeHZcZ2aTePhskrV92wyvK/hkbKufKU5FD1ASLchu5
         jZgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729790241; x=1730395041;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k4u6KfcpriioFe4Xb5YFiK0clviGAKbyWTwq6P987oQ=;
        b=JlXyX1+NdzveRHbXfQDfpD0kpEK7YDvvGbKYT5P1otqExhlwpzZkuYTY+hP5y6aHD9
         SJ+/cxxljjNs632ZU+M482ZcBhjFiZuB9ZCXJZyOP9JX8OryeD0WDYH0Q0Xi1Go83paE
         lKbEWgiXprim/c9ASble+FeHLjnR6av79Vz20QjXHpuAyXJ1UqCGIbi4Vvo/PEbwyn7h
         IiV9wLQ6n6bnoRzLq80s0A0Ybrr+nLWrxtalwbEvqN1bJt9LGRn56IxaSwAjLDZ+WSYr
         gGuW9T98w4VFI0A+1wBvQ7r8O1ujYPWGXXkX2ql72trnS18eeDfd3FDSKLn3clKscw0E
         dAgQ==
X-Gm-Message-State: AOJu0Yz+HtvBbH/t9vOoxv2b1DgjdpxTwwNnlQ52MRliuRDtDWtv5DHY
	v3mwRGOdQa/3WmMp+AdIJAGrpTzTelD+Zvr5RBdyBC6fI9EtpDKHv/ObzbbpMHw=
X-Google-Smtp-Source: AGHT+IEthOrGsUXQEmVdN7fNJWPeqWLMtieDckL0/4nd7SRYBl45YnkuFLplDAeE+bZLBwkUtrIErw==
X-Received: by 2002:a05:600c:19c6:b0:431:55bf:feb with SMTP id 5b1f17b1804b1-4318c7564f0mr22433895e9.25.1729790240795;
        Thu, 24 Oct 2024 10:17:20 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43186bd6a52sm53225645e9.8.2024.10.24.10.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 10:17:20 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alexandru Tachici <alexandru.tachici@analog.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH 0/3] iio: adc: ad7124: Make it work on de10-nano
Date: Thu, 24 Oct 2024 19:17:02 +0200
Message-ID: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3245; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=PSWiQdi6d8VVjsDiX9HFA/TQJcH9yfOSkS0BZ+DdNvk=; b=owEBbAGT/pANAwAKAY+A+1h9Ev5OAcsmYgBnGoEP8Vlb/oHsy0tXX9D0FkVdLPWwOSnInuLp8 OpDG7py882JATIEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxqBDwAKCRCPgPtYfRL+ TsxfB/UeJlRB5JLRJ3lAlGxra0CKSHMMeyjW8F1GFTVdhyMfk2Wtx6p4/cLoPIeMefx+ZgqKRv2 6yAP8uBbm674sfjpO5bpfOxjwjkzLL2vix+816J/xFnyutksiYoiAIucAAWVgbBKASQFfN69xxa vbBPHBg0+Lx5lJZQShlAuBLnh2iSolv2JWkrt8fmYzy6AZGtaLFFPxlsahR0SMPMFhmMWdoE+8i TNXWhamJOaBcV19C5rkzo8Ew0rDz21pzGg+ZyLC3/kAgWyJY7a0XkGrs7B8KZKuUT18IZ/z3/m+ ufroJGY9XEbUpsjG83T/+NrNtLhCyLg8Mno9KLHXHzdNPow=
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

the ad7124 driver was initially brought up on a raspberry pi. I tried to
do the same on a terasIC de10-nano board and that was much more bumpy
and time consuming than expected. There were two issues:

a) The GPIO controller used on the de10-nano detects an edge event on
   the monitored line even when the irq is masked. Together with the
   "feature" of the ad7124 that the irq is reported on the spi MISO line
   this means that nearly every spi transfer results in a pending irq.
   So when ad_sigma_delta_single_conversion() calls enable_irq(), the
   irq immediately triggers without the ADC having performed its work
   and so non-sense data is read.

   To fix that, patch #2 adds a possibility to double check in the irq
   handler if the DOUT/̅R̅D̅Y line is really low and only report success if
   yes. That needs a different representation in the device tree, so the
   binding docs need adaption. That's implemented in patch #1.

   Note that while it's annoying to handle that sensitivity of the gpio
   controller, this is actually a sane behaviour for a gpio controller.
   (The problem with the rpi one's is: If the process is preempted long
   enough that the ADC is already done when enable_irq() is called, the
   event is missed and the measurement times out even though hardware
   wise everything is fine.)

b) The reset default for the CHANNEL0 register is 0x8001, that means
   that channel is enabled by default. So if the first measurement is on
   (say) channel 5, the chip generates two interrupts. One when the
   channel 0 measurement is done and another when the channel 5
   measurement is done. The driver however only expects a single irq and
   so reports the first data read as channel 5 data to the upper layers.
   (Maybe the second irq then happens when the irq is currently enabled
   and so might trigger another spurious irq.)

   To fix that, patch #3 disables all channels at probe time to sync
   reality to the driver's expectations.

   This doesn't hurt if the first measurement is done on channel 0.

I wondered if I should add a "Fixes:" line for patch #2. Not entirely
sure because it's not needed for every setup. If yes, it would be for
the initial ad7124 commit (i.e. b3af341bbd96 ("iio: adc: Add ad7124
support")). Additionally that patch doesn't cure the symptom without a
device tree change.

I'd recommend backporting at least patch #3 to the stable branches, but
I didn't add the respective footers for that. I let the applying
maintainer decide if they want to add it (and for which patches).

Best regards
Uwe

Uwe Kleine-König (3):
  dt-bindings: iio: adc: adi,ad7124: Allow specifications of a gpio for irq line
  iio: adc: ad_sigma_delta: Add support for reading irq status using a GPIO
  iio: adc: ad7124: Disable all channels at probe time

 .../bindings/iio/adc/adi,ad7124.yaml          | 13 +++++--
 drivers/iio/adc/ad7124.c                      |  3 ++
 drivers/iio/adc/ad_sigma_delta.c              | 36 +++++++++++++++----
 include/linux/iio/adc/ad_sigma_delta.h        |  1 +
 4 files changed, 44 insertions(+), 9 deletions(-)

base-commit: 9852d85ec9d492ebef56dc5f229416c925758edc
-- 
2.45.2

