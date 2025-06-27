Return-Path: <devicetree+bounces-190607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C52AEC320
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 01:41:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D8B01C24A05
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 23:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E33292B44;
	Fri, 27 Jun 2025 23:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ehz02Agl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13618291C30
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 23:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751067689; cv=none; b=eBOGjW4frrvIMLmP0ZNazoZWuRYJFMHI8AvYt2wES0IJWUPGUGI7qlfH27MFU7y5iml7XrOurNwjeCMzgR/GF0Unrhdvw6dGOSAJNv2aQlFqsUXsZM/VRvJf5RgV1fixD+hxm5Kw0k8wMU316WN8K+QkMeIt/pGA0vCNF9mXJPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751067689; c=relaxed/simple;
	bh=0yYId7CmKo/+nPN29+4m0T9CC1yhegBE9FCPgm6tkyc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dDENO8XbYoWJLmaUtyGX7/aVPCQ0i331Tg4ig1hFONX498mRA1RQD7eokdBuywz3KWcM2Ri4bd7jaiKDIfHVvgcqyD1cOu249zn/ZW2Q34VdrXuDUD0LoByvRj6yfVPXIDacZa66Le7Z32x0qjjUlinRzUVpTB5ZjSsGE2uawXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ehz02Agl; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-408d14c7e92so323832b6e.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 16:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751067686; x=1751672486; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xaL2xzco1uO7UeMG0BpmNABPZ9hJVHgxxIybCcO0RO8=;
        b=Ehz02AglaaqgD8918b18JM8JM6ttx/innhaR0RLjDSkjhUs2aOh2CKIadCv5/uToQe
         cxfz1nNfY4dCjTAxCfNj5xALpbO5EedD4Z8xqs0/hcM0R5dP3eAn532U4Jz1EqvaannE
         okCMNvfPbOZMQ3asmIJnaZf132RE32OUzmfWNw0x+2llQbweVqYlMvJrs52rLIinBfqj
         VTcDC3is5rx0gVj1qGO+XAIe9pawgeoQ3CAiH1bRXKKOksgL9+y6IJ3uO3yRtWXFBwrR
         BJE6KXySDL0YF1HkGEYz9DQhsKT+357W4WOzsmEcKY2hP02O6C2Yjj0azsY7nPDWrFyX
         Aepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751067686; x=1751672486;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xaL2xzco1uO7UeMG0BpmNABPZ9hJVHgxxIybCcO0RO8=;
        b=ZNbObqr/AtoRUIlGtj/OBed5FmwMK+7rLjX+So5bfczCR+4krlQ1x4rHLLIc+66GxG
         15ZKrGJj9+ATLLUCOhdiXJCJmMartRfDaaV5CZc2/bvITstOR3CkW4BBe8kqHYu6qJIX
         gpaMeZLKNr0kUfaQBJ8s8XdcwqmkX18i+hdZo6Giz5P9PxWnPIwz2uPsiwEID02B+vQT
         5+xWDyFzpr+MFshxBXzxiF5qSnSwtGl2CvA73zxuXll8yS5IgcNhQp9awF+dQe1ow4Zo
         18Hh8qV4FTBL8WWHnROk9qm5Oe+2c5p5X7YXSYoSvQAuawJqyJ7pn8NYmKeCrXALWPXH
         Y9mA==
X-Forwarded-Encrypted: i=1; AJvYcCUjI+iMUjkDvRffC96KmVk3gJJgh/hYCwojFjPEr+zODnNu/+ril41jk/rSeqST7A5Yn37z0aNqfEnV@vger.kernel.org
X-Gm-Message-State: AOJu0YwZTwcpGskW6vcOhKNswu4aGFlHF/4Qo/jUdnpgqd9nGmwPVC6A
	ukOtqNwJEEADYPNt6HcRE4Cs2/WBnXNT3mf8x52Vxu7QLOtrLAl1nbxR2Puv9PhIe8s=
X-Gm-Gg: ASbGncup7U+bfR7Gk0WWqjnHe5gle/06LyUoDIdjucVu/CvVZlS0L4AZ24ihx9ZbyBB
	JoCV6mEjidIAN6yPyEDy+e66pNZ7I5T8xLprZTpPJ9Fhdbc0XjMKbdk4pi+8ViNOTImYe1AJdxZ
	f8GHw7j7SZYl5Wn5GGUXA4NXW43b1fKHIAA38Y2KdEXPFnnwcIQ6aDxzTd14Jyafsys2M6f8/v2
	l+tnbqFknxr4OmgVFgtbUZCm6B/jGBFodM3j10+NoTIuGIQ4gtcUw1ZILMwziDtBiJ0z+TWuju8
	qNuMsK8l6+MUHXpkXLoNiJ/voEGjhGHtiIvZTD1WLJl1dSk0RDrD54lv4Hb3CE2JlVc=
X-Google-Smtp-Source: AGHT+IGO6lAxDYiAUSvgyLFtpRPPATaclvQB+pcm3lsuX6smcfmglueV4fyHhGV2aVGGAamMVe90Nw==
X-Received: by 2002:a05:6808:80c9:b0:3f7:d16c:e283 with SMTP id 5614622812f47-40b33c78e69mr4539437b6e.11.1751067686119;
        Fri, 27 Jun 2025 16:41:26 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:1715:453e:e133:7d6])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b322ae4e9sm568483b6e.17.2025.06.27.16.41.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 16:41:24 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 27 Jun 2025 18:39:57 -0500
Subject: [PATCH v2 01/11] iio: adc: ad_sigma_delta: don't overallocate scan
 buffer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-iio-adc-ad7173-add-spi-offload-support-v2-1-f49c55599113@baylibre.com>
References: <20250627-iio-adc-ad7173-add-spi-offload-support-v2-0-f49c55599113@baylibre.com>
In-Reply-To: <20250627-iio-adc-ad7173-add-spi-offload-support-v2-0-f49c55599113@baylibre.com>
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org, 
 David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1022; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=0yYId7CmKo/+nPN29+4m0T9CC1yhegBE9FCPgm6tkyc=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBoXyvZJrVOeLE2k6/aVVIHrXp2W07Q3xZQASTEO
 QVFiFjP/faJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaF8r2QAKCRDCzCAB/wGP
 wB/aB/wJwURJXvafTrvrK8ufRZppvAXSjMZBuIT85AEXQRrU0MUsYobunJ5v2lPFVC8SvR8a5Xz
 KlyQBuKbLk5QMcP8Qc4M+TiQhNuCmzWOnzwAvhzOLEVAPr1uxcVYloODK0D01eXYKNfvOHyeudz
 j/VbzqO8gS+tukC9Pyx8g9IeF4JcsdVx9tjv0hUt8pDM7vH19rFaiSeicQgWOEF4KeLRYPLDjwF
 tZ5QGM53wWGpTtDt5r0SEzd8+orrafRaOMCQCZlT1VcXvHkgqZHwRl1k+bHXfN2uY0qS0E+MHCg
 RBoRQuP5eZO8K+8iHYxyZ6z1UcMstYROq0xH6kqND0vznmoE
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Fix overallocating the size of the scan buffer by converting bits to
bytes. The size is meant to be in bytes, so scanbits needs to be
divided by 8.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index 4c5f8d29a559fea7226b84141bcb148fb801f62c..6b3ef7ef403e00804abeb81025ed293b188e492b 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -489,7 +489,7 @@ static int ad_sd_buffer_postenable(struct iio_dev *indio_dev)
 			return ret;
 	}
 
-	samples_buf_size = ALIGN(slot * indio_dev->channels[0].scan_type.storagebits, 8);
+	samples_buf_size = ALIGN(slot * indio_dev->channels[0].scan_type.storagebits / 8, 8);
 	samples_buf_size += sizeof(int64_t);
 	samples_buf = devm_krealloc(&sigma_delta->spi->dev, sigma_delta->samples_buf,
 				    samples_buf_size, GFP_KERNEL);

-- 
2.43.0


