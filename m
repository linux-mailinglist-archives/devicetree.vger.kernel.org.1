Return-Path: <devicetree+bounces-179563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8F9AC0CC9
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 15:30:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A21BA1887DB5
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 13:30:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C82928C010;
	Thu, 22 May 2025 13:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="pDisP2xz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F828C2AA
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747920595; cv=none; b=iO1RpDdL5H+cnTjwH1fad4GID79O4iJKJuqE5iunAGNilMIijyW3rlAxovk6akz6p1te/FE4CXhvIz5qJHaiaUlJDs+3rGPkKIncckcScwUtCw5PVNeiTvwtsgU+jr1m8MKxp3E6r1oL250PGXzTDNRgQJEyXdiVn/a9jJstNME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747920595; c=relaxed/simple;
	bh=8DecWNX9a+g7ci97Vv7IU6U85+eTrGoiJDNqhMLAwD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rXN3slf2NOW7VI6Yim4vOBmoWc/6WhDlRSk0vasWw33JeorcO/B5A2Dsz5ZGEB2GOBBsmeD0y8U+S3FpanVzy0XzkPy1R88/4pBTTAt2GOR5ccjwoS/btlOhI8v5yVoePyAc+8/tAJ+c+kw37NdOZEV+5UxYJk6qIX/qP4hJYjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=pDisP2xz; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-442f4a3a4d6so52365915e9.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 06:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747920591; x=1748525391; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQIoahuutc2qqjFxwM4CJBJC7cg2fQ/5cUj9Q0XSXuA=;
        b=pDisP2xz+HijpEunsNT1wisqfHA9xTVmAWD3ip5nUzc63Etm86tAK/EbwCBIinhPTe
         Ywj2qAIAUrxr1xhImiQdCqT6gNYSWvYyEtCwTNCK97tkPYkcdVw/cdotbgxxOMQqCJdB
         //FkyPyzTzOfgjz8b9KFmyFx+8a0Awg9hewL7E3cxLt82L6GAy5xwB1ig2iOFsK6nnnS
         KJgGm6ZAQ3FX+8q5hFMXK2tYV9pmAthIRUiHuZchCCJIm6+dNqz9S9Jt/Qdq88+QtVIa
         OxZdyyB3MFRQ78TGsIYWpwgVF7RTlXyZLmcEO+pV8WwEJfQL+XtEjDY9qp6e1xq8LfDv
         tpWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747920591; x=1748525391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQIoahuutc2qqjFxwM4CJBJC7cg2fQ/5cUj9Q0XSXuA=;
        b=rCpNtkotJl/uJXN8QhWhKQtsd2V5dl2KszU9sxCgNlQPtZWP+ZBflYG7aVFKcjWK+K
         Xsb/B7amqgzyoGIcpuxtfypO0s6DeAFuBuJWKySWbGBU7CNFP+PlIEHVZiXiRLVpIrcW
         6SJB+Ld/wu2SJT2KO8Z2/+gEbRAB+QGXtgXPDp/nVEXWNSeUe8DNpjVdpbMLyVhmx2Mv
         OxXx6yXU/b0Us0rrIf+FRdvFqXDVaPOLj5+/w+fwl+KVEFQwCjo9qOeVze1mRVnd2oH5
         xuKjBrctlnPif2VLnAGRtufXtbjlX5A8dn+iRMltCNfp7uq8PpS6oM2U+9rJ3nw7BMRr
         vLWA==
X-Forwarded-Encrypted: i=1; AJvYcCV+uOvlx2Ukyg28VVI9SL2ENVDZ4DBVGrFfDF0Wb2PJeocbza6QlwpMV3uGLn2IDY+mNCmuLFMytE5V@vger.kernel.org
X-Gm-Message-State: AOJu0YwicqtfZXM/XVMjya7l8ANkiKvcay1ur2U/EQrke+WbuHNWABWV
	VoihvlFKrusIAj+GsTi5fPjPxQWvet5jUSNzGObrh8b2BlBmROtVZCTF4UruuxDSkpk=
X-Gm-Gg: ASbGncvOoAMppFhf0dq7l/xEL3n2x229eVjIiXO1rl4MaODTPSB/WNHfzXsan7IsFWL
	i9fSwa8vPCU7bdefXTF6mA+UldAe5XpfsfLSieZgtWt7Wy3IDiQgEBPxAZoXvHEgpjOYhMWvShY
	by+gRV+R9J8WR4QVk5nJ/tWKMmQIgRhPrSOe09wsYwOfVYB8O29c3YxB3SKbtdoeTdcDbNroe+/
	F82OohtOuOXQD5XmOA4k09UhAruiwRo8amUq4p6yqvQPLVKdXVB1VMECeiVy2u8FFccvYaBSneF
	j6a67b0RtGt011BDRtLKM+PShvhdFfwxjCczT23kD6/l1wU67yTIxIVtDI+qtmwCQXZRhMHnHIx
	dhOxyxTCdB7+WpDfLe/rDr4odeodIvYA=
X-Google-Smtp-Source: AGHT+IHue17ZX9mw4ey3hwkVeMQ6JQCquCW3Ynl5s+S7l/UxkzY5Bqoj4I32hyU+LDWChls+robRsA==
X-Received: by 2002:a05:600c:5295:b0:43c:f3e1:a729 with SMTP id 5b1f17b1804b1-442f8514e9emr270779675e9.12.1747920591505;
        Thu, 22 May 2025 06:29:51 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f1ef0b20sm109837585e9.14.2025.05.22.06.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 May 2025 06:29:50 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 22 May 2025 15:27:03 +0200
Subject: [PATCH v6 2/6] iio: core: add ADC delay calibration definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-wip-bl-ad7606-calibration-v6-2-487b90433da0@baylibre.com>
References: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
In-Reply-To: <20250522-wip-bl-ad7606-calibration-v6-0-487b90433da0@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1303;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=4Hb5fAw6wk9UOyjGvMGWLBgqM5yKlaYwdF7azoNoMts=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsjQV/NLN312tkCt7MRNx1XzP6tp3D0T16i1jZNjoWlp9
 6tVG2aydpSyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZjIfR5GhsnLHlX6eC3U3i/6
 ZEr2Hl1Oh64MH/On61Zsz1vcz3C0ez7D/9QMS9/mApnn7WJ7M5UafHeUSt5ezc0XUXt7gojfVKk
 7XAA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

ADCs as ad7606 implement a phase calibration as a delay.
Add such definition, needed for ad7606.

Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/industrialio-core.c | 1 +
 include/linux/iio/types.h       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
index 178e99b111debc59a247fcc3a6037e429db3bebf..f13c3aa470d774bfe655d6a9fb00c263789db637 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -188,6 +188,7 @@ static const char * const iio_chan_info_postfix[] = {
 	[IIO_CHAN_INFO_CALIBAMBIENT] = "calibambient",
 	[IIO_CHAN_INFO_ZEROPOINT] = "zeropoint",
 	[IIO_CHAN_INFO_TROUGH] = "trough_raw",
+	[IIO_CHAN_INFO_CONVDELAY] = "convdelay",
 };
 /**
  * iio_device_id() - query the unique ID for the device
diff --git a/include/linux/iio/types.h b/include/linux/iio/types.h
index d89982c98368cf72c0fc30fa66ab001e48af4e8b..ad2761efcc8315e1f9907d2a7159447fb463333e 100644
--- a/include/linux/iio/types.h
+++ b/include/linux/iio/types.h
@@ -69,6 +69,7 @@ enum iio_chan_info_enum {
 	IIO_CHAN_INFO_CALIBAMBIENT,
 	IIO_CHAN_INFO_ZEROPOINT,
 	IIO_CHAN_INFO_TROUGH,
+	IIO_CHAN_INFO_CONVDELAY,
 };
 
 #endif /* _IIO_TYPES_H_ */

-- 
2.49.0


