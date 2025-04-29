Return-Path: <devicetree+bounces-171978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F156AA0D01
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 15:10:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 472967B55DB
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 13:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F5AA2D4B60;
	Tue, 29 Apr 2025 13:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PQDp8Xl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0762D028F
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 13:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745932090; cv=none; b=S/991/cJ22MmImFZWOuppmFTquu5dE1An+L6CmiT13BMwCzZ6S30vsjI87WfLc2xbjzOJp9bGL+GpqEmc7U3LmOLmiEXPmaSjFWst7wgOMM1cucVps9RUUHtkSzx5kSeuyH1KFyYSOQMnsUZZfz0GomWSllOur1SY1CowAV/D74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745932090; c=relaxed/simple;
	bh=KNFLAKlea6yeUy4lbi1j+QrNXSerWfYkhf4kLna3TIs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LF4deYS/+P0LYEq5WCUPmQ66tWRFG3/xXZQgU7W8Yiy8u/T7AqkYbR5yVniXuciG1L+jRcApFvsd88+l8UIRt1Cyqs+038vY2uRnyoemajTbgLbfB1rNh0fkuw3ocS84S4FveriI1GKpPpYtYRo78WuUopzCniqSO0BCDgmWGmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PQDp8Xl1; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so38055235e9.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 06:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745932084; x=1746536884; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FHBtxryzQthLhYJZlS/DuviCEeYbLy5mezGC/ZEnYPQ=;
        b=PQDp8Xl1Ug1Rc5NqVnQLU4NuBS/xO69Rda2VG9vRMpM1ANx5fHf7S1vkcqSgFeG2cd
         ICGK5ujGGc5PEfzix0QVjTP9QDsgGgjuucvyEhDIJUZpYrC1DKuN4nLsmTa+kbTxBPF8
         qP08yEK34zQuE5pFduyJghZSz3vS5B1n+vxFMNj17+zov0rioYvVFgTXLQObjkUettMU
         0KPexMET7fgjG5zQ5rumqrK9HH8Up3UUKGNMhsxJ3Oqlbk15eeFidIS8etKdKFoDukOw
         qOURUg+NiigA4HbZSMc7grNhvvlBjGpBdk4D7by8GZ8NZl4Q3LIF9RjrbiHM0LBnYafD
         qtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745932084; x=1746536884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FHBtxryzQthLhYJZlS/DuviCEeYbLy5mezGC/ZEnYPQ=;
        b=Wp6EBjc4LYeR2eB/njR7lP55dDSsvuOFb0EPqQxC2/c69OvrFNH6eXFxcth0Kmz8fp
         5mwUUCdFckTxSnc1gkXAH2X8M8zkE2gN0GkOaQLmOGkfH2d1NCWS+wst+3MR+GwRcIh2
         05EAUxJ1c66LcR9Esff4kZYMKPsKOl5eZrAUK2it2CpnKdfWSVc3tnzuigwC+B4JH0rv
         2R/EnkXgfz4xuMHevddZzWFLKFWJJXqDYZIHGmH0Jsf2h43TjZfkHFsltFW99OLKn1ea
         kb4SAA3w6zOQG4oXPkwf4oVf5S/GPcDN5hlDlkAyAmCyYph6cpFVnsClw6Xx++ZwWljC
         jkEA==
X-Forwarded-Encrypted: i=1; AJvYcCVtRoYH8dTAh9J8VrPrlIFGT4oUfCY+9D/onJQo8odJsvDUD43hrSDuXlxyqVToOO+r1lEd16oaMj3I@vger.kernel.org
X-Gm-Message-State: AOJu0YwaZSwBtItep0pnV42BZz7sPTwdMjMBHnr2dG+OUkNGmn2WnD17
	DZMHanTfgSKHEAV1v40miTPyoahA1Hac0ARuXPCpN+TY71n4CItdTo3pIK9CmvA=
X-Gm-Gg: ASbGncuNnxrUooY3yo43O2e4Y0lb4sPFL99ExaeYnWDeMW30inQcvem2A2l/twHoQdS
	GxVyczDhJjUKUIll8aIaVMtKw5YoaPuim+khYjNHh/X6URSZmRaMPlzQlpo5eW7WoPZYDAN6XVx
	486zH5iVHtjh+B9vDuc0vVYPByuPuZ0tpAW0HaOcUcPq0cLlNLkmNaynUA7t9u62iJSGjHJlQwB
	NuYLdl3c2QRK3o1/i0ylEsxCCQYTMr0gPtfFSE/j8MwfMWAABcQjfMR7eRQ13ZfQlvvCx6XayQw
	dEgk5lRbRQpwjVfKpJViaGQgbfqIuCO8lOENXFpjsPbO/j+L83aP/R5rzpxWUDec+es16mT31AA
	irvNM6wIysDUV
X-Google-Smtp-Source: AGHT+IHQ8+f48r3Q37DChmVguLuyyYvsJkQYYpRTlbsCTmcMzwkKag6RYXH+xnfFhLDPYFiSihn10A==
X-Received: by 2002:a05:600c:34c8:b0:43d:db5:7b1a with SMTP id 5b1f17b1804b1-440ab7b8cbdmr123641025e9.12.1745932084214;
        Tue, 29 Apr 2025 06:08:04 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-440a5310ad2sm155550565e9.21.2025.04.29.06.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 06:08:03 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Tue, 29 Apr 2025 15:06:46 +0200
Subject: [PATCH 2/5] iio: core: add ADC phase calibration definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-wip-bl-ad7606-calibration-v1-2-eb4d4821b172@baylibre.com>
References: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
In-Reply-To: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1311;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=wgg3iYunJuQ48BT265dZ+c9r7K85M1f9m3M1YHmwGb4=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgQOPfilr7n/iXPa7O/lzHken894Lc3ouOulEhba2CZ/
 arquaW5HaUsDGJcDLJiiix1iREmobdDpZQXMM6GmcPKBDKEgYtTACaS187w34dT8OmsxJlFWWuS
 2iZ9Xtw842hgpuHBGgfxnfMDt6kc+8PIcLF4W0m6cO1r0d9/H8q9uWXwTb62T/SWxXG3l5oBk5S
 TuAA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

ADCs as ad7606 implement phase calibration.
Add such definition, needed for ad7606.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/industrialio-core.c | 1 +
 include/linux/iio/types.h       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 178e99b111debc59a247fcc3a6037e429db3bebf..73ef9347d96b39c49e8a831576482071a95b5a41 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -188,6 +188,7 @@ static const char * const iio_chan_info_postfix[] = {
 	[IIO_CHAN_INFO_CALIBAMBIENT] = "calibambient",
 	[IIO_CHAN_INFO_ZEROPOINT] = "zeropoint",
 	[IIO_CHAN_INFO_TROUGH] = "trough_raw",
+	[IIO_CHAN_INFO_CALIBPHASE_DELAY] = "calibphase_delay",
 };
 /**
  * iio_device_id() - query the unique ID for the device
diff --git a/include/linux/iio/types.h b/include/linux/iio/types.h
index d89982c98368cf72c0fc30fa66ab001e48af4e8b..f341233613633830745e1899870377439e50d7f6 100644
--- a/include/linux/iio/types.h
+++ b/include/linux/iio/types.h
@@ -69,6 +69,7 @@ enum iio_chan_info_enum {
 	IIO_CHAN_INFO_CALIBAMBIENT,
 	IIO_CHAN_INFO_ZEROPOINT,
 	IIO_CHAN_INFO_TROUGH,
+	IIO_CHAN_INFO_CALIBPHASE_DELAY,
 };
 
 #endif /* _IIO_TYPES_H_ */

-- 
2.49.0


