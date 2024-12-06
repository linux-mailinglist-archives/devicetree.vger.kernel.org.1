Return-Path: <devicetree+bounces-128105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4FE9E775E
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 18:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9B499169331
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:30:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C9042135C9;
	Fri,  6 Dec 2024 17:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xhVMNA6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4C41FFC6C
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 17:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733506163; cv=none; b=WYqwQ9p/JZAkymq4F9Z7yBhxri0dom8YzvcPXVjriJFylT+6G/na1TcgE4KYHjwY1k6OKftVPjDhgo70nLcgwfemiE64eFGLrBoWnSR/izQD83sylTXeLxwsUYjzbhJeQuoF5DDp3oZdgbr2et6fnJoYo4dxcgGcOphYjDN0uHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733506163; c=relaxed/simple;
	bh=nUb+NMAcRYvbgIjmhL5rgEmD59DRRpbiNVeKclS6rw0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K/4RDu8+qVaj1ueEqQNNkm6m3Wlf/YZXxxrHubp7X1ICs6H9CIKFYvSi8PxnzVCy0gZn9vKXa8KPDPUY1Ftl/q3T9nO3lKs1HKFiWzVnXXIf1SHP6IlSt7JndwRThdOGedzeYdo8Odvi29WNT1sEs/UZT6F15wgFqZAcrvQxyrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xhVMNA6C; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-434a90fed23so15822885e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 09:29:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733506160; x=1734110960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=anOCQWfac/gSq63hP6/HMeM4pMNlObJBcvXDBpnhemU=;
        b=xhVMNA6C7FL1DSFP+DlK4dSk9KVOXrZLK56VpS1M9q6w0HDoFsSlRehvCJKBow8ifd
         hv6io21YpFbU62kE57yWQz4lvtOOBcwLcIFp0hRPlNj5nQK1A7BvHVGMAeMotftVr1tk
         QW09Pp17UWA4+IphH+82kOttTWdrC2i192NIneYVy5zgzoA9E1hcR9mjMrmxC1r/kuBK
         Qp7BeOgKUjVh0WW/uKAkBmPItQPOuw2mouuQowqfWdX5h1h93R1+f0H09oAPcy+5lTnV
         HqlFVf0LeQXgQd76L4yFk/sksoLBTLVk+OM0rxgYbcaOogEe++nsbcbrj2BnAEpTWa77
         r9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733506160; x=1734110960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=anOCQWfac/gSq63hP6/HMeM4pMNlObJBcvXDBpnhemU=;
        b=fW64+v4/SrZGgg0vLYQVJYnzY5kwWkBzc2lTr5c23LrCvRUHo9Mf0q1fpps8NN9x4E
         AGPLKYcv9xSTw7TjtM0UFFe5Yl9O3/AIWqSO85Zw9FprVkXJhJAgGG31Nw+ctknKYPTI
         VUABXYxtBgb+4TCMV4YoHtKy00yry2X55KycvKk0pzKzR+9UgP8QabVRNQQogb45SZbf
         lupJlzuEWRLNorS8mOBHH+bxYy0kUSt++89D0nTkAOu40kbuDGrQFfNUEN0+5/8F3hHI
         8ubVXmzMpzVsuMDSnDXMJeJKD7yUz+6hDek0JkdS3VLFj60jYXppgC+vPQXF7hAs1pGb
         ZOxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFGezBQUZ5Iq+lxV14NTl/RgstebdlNQFhdI8jbpBvYkegLFePeBPHcmGlNt4+cBnRi90M0h0J47i3@vger.kernel.org
X-Gm-Message-State: AOJu0YwCdcMECAJ1UFY7bGSx3VzBplATag8lOtwoeIyiRRisRAe9Y+/6
	fgU47SF3KjxcxSHCj7c9yyCQrL94cr/rw4pIjwB1rdpgzv+gTzI4y0knLDlRSOU=
X-Gm-Gg: ASbGncukFIgMsdeGLNWXmO3uesgi7bFtKFXZWqANbXxLWKAvY60TdMbxjJHdm7GADz2
	oe1ZnO5tOwBdaJHke9Y1MfEAlOCGV0dyeppl4yPlqUaOmHw1I13jOU22VHoTqdYuZA/1ynO6/xn
	TRMhoqcoAjjuo0p5RVQb8bopv0EZ7GBRgsniQuAbKcFxFrxCcSB8K350HpFDEdFoFgQcyLGw7hu
	lX4UgsybVztyHsEEllzunvNrEw9pFNw1SJegqzRgipO5So5rXlNvcFZ3G7fgzvUp87QLaFbSK6x
	VlLf
X-Google-Smtp-Source: AGHT+IE+qZ8FptrRGeU65/E7NfNjJzlA2x789lQ/iQdAlFIC1bKdAO/UHgV5i3VtLGDpgymcQDrMzg==
X-Received: by 2002:a05:600c:350a:b0:434:a1d3:a331 with SMTP id 5b1f17b1804b1-434ddecfec7mr31128385e9.22.1733506159796;
        Fri, 06 Dec 2024 09:29:19 -0800 (PST)
Received: from localhost (p5dc6838f.dip0.t-ipconnect.de. [93.198.131.143])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da113508sm63235655e9.35.2024.12.06.09.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 09:29:19 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	linux-iio@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v6 05/10] iio: adc: ad_sigma_delta: Handle CS assertion as intended in ad_sd_read_reg_raw()
Date: Fri,  6 Dec 2024 18:28:37 +0100
Message-ID:  <8d76b4ea4a4363b269886c71193b840821c724ea.1733504533.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
References: <cover.1733504533.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=953; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=nUb+NMAcRYvbgIjmhL5rgEmD59DRRpbiNVeKclS6rw0=; b=kA0DAAoBj4D7WH0S/k4ByyZiAGdTNE+ifln/JZWJ6HhWXIMo3Y5BJedD1LWvgMUo9LKAv6vJQ okBMwQAAQoAHRYhBD+BrGk6eh5Zia3+04+A+1h9Ev5OBQJnUzRPAAoJEI+A+1h9Ev5OLQ8IAJuX /Lcpu7GhiJY0WpXRnNMiuzXqDO9TUCBQrTrsa/oz6m4gfsCTOpGCDCzz4UzrkWkLUrnLvr5GYRx +MPp427nxNU46s34F2TBVJLMNUiB1Un2rvx5LHiLLEvli554fwUTL3xUerl50jlENTLjIFJV9+S /DhYbvarG57FryO4UEDLiAzuruMC+yfWp4INm3h6bdt0ubc4AOFLU5VoJ4mwl0FFdyjw/NcSRM2 AOPzvdeloK4IF9fZmnsgWC9AdYUPtynQpeiWXCN1hRbzB+u4keTlGWJ1ajYEqkOqvaT2sT0ECcY PQSkryx/tjtI5QY8f6w2470yRb4eX2STETW7t0k=
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

When struct ad_sigma_delta::keep_cs_asserted was introduced only
register writing was adapted to honor this new flag. Also respect it
when reading a register.

Fixes: df1d80aee963 ("iio: ad_sigma_delta: Properly handle SPI bus locking vs CS assertion")
Reviewed-by: Trevor Gamblin <tgamblin@baylibre.com>
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index f25850f4965a..ff20fa61c293 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -109,7 +109,7 @@ static int ad_sd_read_reg_raw(struct ad_sigma_delta *sigma_delta,
 		}, {
 			.rx_buf = val,
 			.len = size,
-			.cs_change = sigma_delta->bus_locked,
+			.cs_change = sigma_delta->keep_cs_asserted,
 		},
 	};
 	struct spi_message m;
-- 
2.45.2


