Return-Path: <devicetree+bounces-113682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D58549A6988
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:04:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EA71B2570A
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 13:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DA221F7070;
	Mon, 21 Oct 2024 13:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="k1oyHZjP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5571F427F
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 13:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729515759; cv=none; b=Lo7KLqfvgRCOr0EqzwmFb99ByRoBGxTSnIP9CGC3AcrsWaCoqsOwbokDdNo8ml4hPQ+ajUI9d60yih3Re0KEkHVyboGS0NvGihn5+zkZ3iC/MgKrCmpCKIvj5EeHqoEo+pA9QuuJhKT+FAwIL9k/E2BEPKgDtN4rFWNGiD2ZH/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729515759; c=relaxed/simple;
	bh=rGc3MWfnfDGr6DVhiTPyA4ENZmPwmhTHYX0jVVNz4Pg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KDnjQhhD229PhdELRqo+ulpGT19K7kImLF9Pw8B2gerzWumrfGWni0KPflWmV4PCs/gK7kz0L5CF8Pn2d99PUXGXuzpZM/AuJb2U231+DndYqXa3im6YERo9pDdZXOWv+KZ4ITLR+QPLcQX/+2qygiF0QzWHq51HviSlC77oOYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=k1oyHZjP; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a9a0c40849cso693831766b.3
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 06:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729515755; x=1730120555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZMGdrMcJaMIE/WsVeQifPxez2nYQfB71+FONgrmlyfk=;
        b=k1oyHZjPOZFF6Nnl4Zfu8b37roYAcXLz9y48PPHuM/bIyXJEtoAOugAikzqQL9HKeO
         bCszx1jPas93Dnxd/YWfpv5K6fZQU2kGDKqamHjC+vWSze+SQDQcw2ui8kNj3KALWnCJ
         BcNGEZrRXEpDBRlxB4vgyAQEzzqBXYfox0FkXTAkHA7myjKy/NWVVUDUmok6ohdRYau0
         vQShNL987ofwmFqKfnEepVSMUrHQSA2zc/RPBkMVzvIK11GhZlAZEvBXIRWiUzVcLwix
         FcZOd0RRxOyHAuMgIViURP+gO+K1sYqits68X6UM0gDb8yRRZIxRRSqSSIhhyo+dnwVb
         bTIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729515755; x=1730120555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMGdrMcJaMIE/WsVeQifPxez2nYQfB71+FONgrmlyfk=;
        b=gOdDq3wkMk1AVpdhJJGiYKMYhb80dfoNvIQTUuFRO+QMU+pt6nQ9A761t2a6Kah2h3
         tjdiY/clUEE559OXvVeLTFtuy0v5E0voHbysB9FwXcyOxvt+WZq86ZMS38dStWMKam6L
         ZcS+hQQY6ao4hjs/PdwwN6Z9zB3i2wXaXjol0567IxMH++LWKSuHS1T3pny5LYKqByN9
         yV4E/a8iayMBNR+xFj9hZL4RUPSXj7r+RP1ReqtlDuE01FqiM19qEc2hv6GyiELc2XQZ
         Ec7YUNWTGavpl/jcDsb7EACtMyp/TshA4LNE9Aebcn87HOaADBMeMR0Mcgcn1Lp7uHkO
         NTCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYe1LTx5Y2smdWCn8zDR5EvmvjN3sbWZzuHbGiVPpjKIdJcGQ0Wm/m4RAJbnTTCLnxiW5GX2V0kSD8@vger.kernel.org
X-Gm-Message-State: AOJu0YzTnaQYdL8fkxagKwkYn5YxxC9WUXEVTb7CeIuVtfB2QBqHVDMX
	tk8m7Z3bma+UsLCYeZ7PYlPdHL4DIKl1f8b7O7U5v2hA1i+JhhrzBH4jao7MpBd82UtxQU/tPqH
	r5vU=
X-Google-Smtp-Source: AGHT+IFkz8SL5tRoEjiGw3OR74ITdupWm+6UEIZV8nbsB9DktPH3yo+8/SVwqYy+2px7vXfLIHf/iQ==
X-Received: by 2002:a17:907:742:b0:a9a:5a14:b8d8 with SMTP id a640c23a62f3a-a9a69c9b867mr1237004366b.43.1729515755342;
        Mon, 21 Oct 2024 06:02:35 -0700 (PDT)
Received: from neptune.lan ([188.27.132.100])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a91370e33sm202310366b.120.2024.10.21.06.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 06:02:34 -0700 (PDT)
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
Subject: [PATCH 1/6] iio: adc: ad7606: fix/persist oversampling_ratio setting
Date: Mon, 21 Oct 2024 16:02:16 +0300
Message-ID: <20241021130221.1469099-2-aardelean@baylibre.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241021130221.1469099-1-aardelean@baylibre.com>
References: <20241021130221.1469099-1-aardelean@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When the mutexes were reworked to guards, the caching of the
oversampling_ratio values was removed by accident.

The main effect of this change is that, after setting the
oversampling_ratio value, reading it back would result in the initial value
(of 1).
The value would get sent to the device correctly though.

Fixes 2956979dbd0d: ("iio: adc: ad7606: switch mutexes to guard")
Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 0e830a17fc19..ae49f4ba50d9 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -753,6 +753,7 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 		ret = st->write_os(indio_dev, i);
 		if (ret < 0)
 			return ret;
+		st->oversampling = st->oversampling_avail[i];
 
 		return 0;
 	case IIO_CHAN_INFO_SAMP_FREQ:
-- 
2.46.1


