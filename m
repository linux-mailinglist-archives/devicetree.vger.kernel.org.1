Return-Path: <devicetree+bounces-174981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 15962AAF779
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 12:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 197441BC47B9
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 10:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F9B2153CB;
	Thu,  8 May 2025 10:07:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lyvpKTOX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E681B1DE2DC
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 10:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746698849; cv=none; b=lr4XVO6+dbfrFGr0kYk6UVUwuMJdNr12aGoAjHqHxIKtAzi0IuBdqW1Z6S2/SIfYfXseEzvhQJfGDA2K0PZ9GZHV192rqa2WDWc5inlYtbD+KtIvyNM2xX51jVMYQwGzHShwcpBWWGNTB//4VHDPduy+0+5NK5P+vma3nX3Ty+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746698849; c=relaxed/simple;
	bh=8DecWNX9a+g7ci97Vv7IU6U85+eTrGoiJDNqhMLAwD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wk2UVdCCBGdM+NrGkpSYO5AhUwq2l6JvF8wbdjWf51U03sDKLTUfI0YsghiXWGmJ4gIndGkMpFrVavMI8+FRcMskK9LWw2KbzEX31AoXiy+VVBr4nSd6YyLFgfUnAA0B7TnrCM/R97vkukvBRZlVgAe2FStbDgB7a5X9pPlJfaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lyvpKTOX; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-441d437cfaaso5259695e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 03:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746698845; x=1747303645; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQIoahuutc2qqjFxwM4CJBJC7cg2fQ/5cUj9Q0XSXuA=;
        b=lyvpKTOXERZ29rWXJ5wzwrZ2hulMV9XCRo5DTrp9vK65+zVjXQCcSg6UBXTHgkknoe
         EnB9vYFCvYE3oJklxQGKHEWMYjQ02rLjnDFmisX+z09jIYQml2j82MSwELVnn3OZbnfZ
         1S0XGV2iKaaeBG31EgMidbk494/69mI+J0E5soFD6LcEYWqV6wUhBihx94uyu7MVKA+O
         YSefer75+A+t2nQZ1FqnGvg21kW36kLfP8Ynsa236EUZVRWR3V4U4PQYf2ZiaDLEPVeM
         aiNuLEQ96DsMNQVRwpSTu1eeL+Ouh1CYg2UIv/u86R4WloYb2KD4ojnaRcD13AX1PA5A
         FhOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746698845; x=1747303645;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQIoahuutc2qqjFxwM4CJBJC7cg2fQ/5cUj9Q0XSXuA=;
        b=kMvMNRmHU3cvqaE7p1/BDYY8dh15Nq4OL2lZG9BmVLxhp5Ztju01F4JyoBPdqkgDKx
         7I7brSZMRO+4wWsLCwiO5NtMue6JSsCRzI1FJ8jihq5Do0LFpGc9rEENIZPxkJVujcZF
         q0cKetGE1gyVb0AQ0W2UZaTeAiQHihQ22OTIIn3y07pUSrzNm6MOTNPRrMVbkD98XZSD
         CxKNFEaDsu2kEcOFn6fTqft8pDagMstwUkYU2g1W7/AvLV/HKFY9Usxhwn1NKLKzsbS8
         o8u+BGA2eVMaQwb5xhqdcF+rOAyZy3Gw8zDllVh1dBpS/dldFDf9kIuWCAlj/p4fw10R
         bL9A==
X-Forwarded-Encrypted: i=1; AJvYcCVufs0s4+LNmoKGZICATDGIf+CO1bz+cMZ2vIm6YTWZT4g+QXbwnjChaPbvODSvbKxPpVCA2vzuRA9B@vger.kernel.org
X-Gm-Message-State: AOJu0YzgRZYYA4EAcS67WSqI6DcRszinmiTOzXKkJtyP53EcpfHW7ZsH
	tcMFQn7ARxNBfukqhQ+dehrT9ht8cDKBLZpEaNGsvmXE6f4IaSgVkaFy0nG/NMo=
X-Gm-Gg: ASbGncs4vsofJNxt3/CjlNs5/Puvn43Gi2O58WgOYw+n3PWBowlikT3r08/fmkqg7KX
	UWXZew3GA6tdluU6hHMNQiRbTHjWfn8C8GC87poRJbEVEaN0vPys96zRgEAZ/oltbdd4ABQFmZh
	yejch2ydgHes9QUf325P1/nWKNdaVBG9pO6x+WpI7mvPnSQGqqT8cpixIbx7kqRvTb5vhs8EsPK
	RMuUBnXqiORkXIk3yx/R8QXVC8eIDSUz1mxKbiscUwXKrmri1Qz46Ybh7ouMVAacKPY7RdzpzYi
	WH1LppDeYh+1s9TYm1nbe0kaMI7cSHV/LUN7QP0pECM57VSz1pxkTYl76Oywh/ucWUgxHyTxTHO
	Mj6eWoBU8gGH8
X-Google-Smtp-Source: AGHT+IF9EQT4M5SmZsHAxZZKz+TKrhTiH7Tl3JMTlzBWU/8jiEAgKt5PKxZvsg6SfE8e2vmOVcIRAA==
X-Received: by 2002:a05:600c:4454:b0:43c:fffc:7886 with SMTP id 5b1f17b1804b1-441d44c2d62mr50234245e9.8.1746698845213;
        Thu, 08 May 2025 03:07:25 -0700 (PDT)
Received: from [192.168.0.2] (host-87-8-31-78.retail.telecomitalia.it. [87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd363940sm31699665e9.25.2025.05.08.03.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 03:07:24 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Thu, 08 May 2025 12:06:06 +0200
Subject: [PATCH v4 2/5] iio: core: add ADC delay calibration definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250508-wip-bl-ad7606-calibration-v4-2-91a3f2837e6b@baylibre.com>
References: <20250508-wip-bl-ad7606-calibration-v4-0-91a3f2837e6b@baylibre.com>
In-Reply-To: <20250508-wip-bl-ad7606-calibration-v4-0-91a3f2837e6b@baylibre.com>
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
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsiQaeK3vt9n+1tV3Di9/5Oc2K9Ic+GA1iMWR7On33x84
 8zu68ePdZSyMIhxMciKKbLUJUaYhN4OlVJewDgbZg4rE8gQBi5OAZiITQbDP4M/xbWukXt2RIgu
 cU5kzJyrY8l2uIjx6PvChiq/GV7HhBn+2aYJ/Zlyf1PT5vDHBSXdrD2n7j3h2ZBbxJPZ1ca7IOE
 hKwA=
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


