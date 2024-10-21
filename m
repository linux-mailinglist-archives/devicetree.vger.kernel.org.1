Return-Path: <devicetree+bounces-113681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A159A6977
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2416A1F22F3E
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DA691F470D;
	Mon, 21 Oct 2024 13:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="1dAS+yhS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194EB1EABAC
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729515757; cv=none; b=l5uUNcg9mn/QBLQPAYk4F/fM5OKh8tl5bWdSgEEBDmksPxno4+ZqVDRACttYly5+9VwUIWGuT/ymIRQ4tdTqvH2fePWRV0Q3LLU//NRMSOY89t3NjP4j2iBXX4y+sYlS3oc3UWXkXC1l+N1+6pn2fuJngo2xLS6SrySv8Y3gdl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729515757; c=relaxed/simple;
	bh=fOOCRsqMW5GRDw6aQn/1ny2aDExFZdFTc5xakY+DaQY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=pzqo16sduXJHiXKMkGq7kWoaW8RYStHBQ9aXOhIkjttSrOBviAv5U+J/FeWIKFWmkMD6K4QJmCvqJhl8CrNTnQ1gFmjR02Sx3EXHO1GH15BQhQrw4xt4lf+DZIXANhLv4pZT4V7RuklFbv7n+8jy3mOdSPRWZzHsd3HV3+OSi6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=1dAS+yhS; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9a6acac4c3so486110466b.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 06:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729515752; x=1730120552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xYK8IfcaggDlHoLJ7g83T3CqHYN/8XWzhcJn4bsjCCs=;
        b=1dAS+yhSDgNImttQOMbq+lap9IMb3SSdLEia3d5SVGOsGgDrMaq+fWjOA58eBXZo+B
         J9YvEwaWX+nSGS1JxZJaJ7ZUhdrrfohrlU03I3CKpcQKnjZLiRNPVrYUqKYTEp83KdPx
         RG2NJ3ZDlOr/h0nTXPi7/sn60/GbKHA3JmIxmIMoOdxWE9GlPZIMFqoqvXqio1XkJ9Ss
         MX0quazXRm9TihKwE9bdNqKmYHBNmBuXLvVp+hgfYZTATf5Vxyg0/eeeYUT+rdxDLoYe
         tw6SXOfsddWX38PPEzXP3nERV9p6T4vKHOwvaa/aFzYNFXRkzaTk/hNmoGk//Y4tf5SN
         4H/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729515752; x=1730120552;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xYK8IfcaggDlHoLJ7g83T3CqHYN/8XWzhcJn4bsjCCs=;
        b=OKs6uTyxZ/8xsBXgThhLzrIoZASkCtrfxm1oVZg/kAJelsOBprdD7Ek8mCjLsf9KQ9
         D85SZJT8eDlO3ZmYCqywdbK5DBIpsoSonpTuegTZQHSj9PWt2B9xryjb5XW8AJjrwddg
         IK7hD2O2ed5+nYLFCjukiqQRP+OXOyw/4fk9ngc/aWiXKWGYFTRnpcmIG2Vpm8d6osZ4
         H2tBgUoaop2VymgaIAUxa5t+XmNx0804DPmZEowstc1KmZ7hpT2zmYhUZyQAsbDPKhKM
         XrV8kFzNqrsOgGvQBr8es03Y9Av/JfoOxDwK8L7noedhc1De38FIR4PttxLJ7CsTAbBS
         p1eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNjx08ZMbsKRxvCbhHx5tgP3+9UhR///KaA30LTU94cgTT4VEC58jFC0z5cWtspKw+xFYyXDpkm2Hm@vger.kernel.org
X-Gm-Message-State: AOJu0YyRbCOBCBuKq7YYTULURzA3Bqi7T3JbqGGYC0CP8rK8PxPq/vdY
	1+dxu+hwfyEroLRI6kvz27QCg/FugIjedJskXUkO8e6Bj/zDwcFjTEARUSQS+0Y=
X-Google-Smtp-Source: AGHT+IHw45mvYxvjStLJ5T4BfL2+T9CArX8d8G1WbkPOEPUetf+erpmAiu774yxB6WUdFY0G6m5a/Q==
X-Received: by 2002:a17:907:3fa9:b0:a9a:212d:4ecb with SMTP id a640c23a62f3a-a9a69969b4fmr1059396066b.12.1729515751934;
        Mon, 21 Oct 2024 06:02:31 -0700 (PDT)
Received: from neptune.lan ([188.27.132.100])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a91370e33sm202310366b.120.2024.10.21.06.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 06:02:31 -0700 (PDT)
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
Subject: [PATCH 0/6] iio: adc: ad7606: add support for AD760{7,8,9} parts
Date: Mon, 21 Oct 2024 16:02:15 +0300
Message-ID: <20241021130221.1469099-1-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This change-set adds support for AD7607, AD7608 and AD7609.
These parts are simpler parts for the AD7606x family. They support only
HW-only mode like AD7605, but they support oversampling like the other
AD7606x parts.

AD7607 has a 14-bit resolution.
AD7608 and AD7609 are 18-bit resolution.
AD7607 & AD7608 supports +/-5V and +/-10V ranges.
AD7609 supports +/-10V & +/-20V ranges.

The oversampling settings are the same.
Because of AD7607, the scales had to be reworked (again), but this time
doing away with the allocation at runtime for the scale-available-show
values. This time, the full IIO_VAL_INT_PLUS_MICRO values are stored
statically. AD7607 supports a scale of 1.220703, which is the first and
only (so far) scale that is above 1.

This patchset contains a few small bug-fixes found during more testing of
these parts.

Alexandru Ardelean (6):
  iio: adc: ad7606: fix/persist oversampling_ratio setting
  iio: adc: ad7606: fix issue/quirk with find_closest() for oversampling
  iio: adc: ad7606: use realbits for sign-extending in scan_direct
  iio: adc: ad7606: rework scale-available to be static
  dt-bindings: iio: adc: adi,ad7606: document AD760{7,8,9} parts
  iio: adc: ad7606: add support for AD760{7,8,9} parts

 .../bindings/iio/adc/adi,ad7606.yaml          |   9 +
 drivers/iio/adc/ad7606.c                      | 242 +++++++++++++-----
 drivers/iio/adc/ad7606.h                      |   9 +-
 drivers/iio/adc/ad7606_par.c                  |   6 +
 drivers/iio/adc/ad7606_spi.c                  |  42 +++
 5 files changed, 241 insertions(+), 67 deletions(-)

-- 
2.46.1


