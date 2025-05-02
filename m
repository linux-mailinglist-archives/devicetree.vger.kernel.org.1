Return-Path: <devicetree+bounces-173005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E03AA73A9
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 15:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2505B1BC366D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 13:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC5E255F3E;
	Fri,  2 May 2025 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LA/kn8JS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44283246765
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 13:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746192503; cv=none; b=dQE64LEOdxz0epQzF2QOTLFKJfLE2KxlpdkKnh0m0Ju80Ri5KiFr2KH4p7CA1iYnWFhGlMiKuZJ2PZS1UftIAtHA24mInBnoJ4bvfq/bw7zO63NeiKEKCzmpVUiZN9Km7/CAej4ZFKm+uuHPGk92MEj6wzW2Xf8GJR6vBqSbmXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746192503; c=relaxed/simple;
	bh=TQqLWy53nCViEnaTWQFWmvMZdao7mPG4VBPe7jY2JnM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QP4E/r2+KuLuj3zpZ022YZ05EqGoY1zs7/HZkWrwYP2jt8Y19HTtIoXXwz2Jwl0iYfC3tZCfNKl6jiDKqniJ18cvS1a3CONfVoRj07t3vxf3v41RvrcRMRMA5fJuAqiEPgW1EoTzAcPKsXFfbMQryNcnsf7IqOS29s/vT29dZMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LA/kn8JS; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cfecdd8b2so11915025e9.2
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 06:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746192498; x=1746797298; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PuRbnqMan3w9A4V02ED54xhlqh03UYeyGh90bRtECvU=;
        b=LA/kn8JSHPyd7j+pcfeP1thP2XoDfVBvl3lkd9JfzVuwT+ZFV+YgatosI7yPuGdlqS
         1D1osmh7/IbT/6t4kAEpcpWTQfOABXcmjsw14UCe+RjbZT8m5bAGqCgzf+WvKfHB6//H
         Dfc3I1zF63PahgZ0lMCA/MUNBMtz2w2Uht36wnkZY7STdHJ0x4x1AcLYw59A0T/SZCre
         L7AGS3zVWLRY4vB75/LSB/lBctz9jLrrSVYcdNag9ddo/3h4CWO/h/7We4y0RPHs2tcD
         e56WrqTnY+mQ8lVI6GX4V3nAtZJPu0GgK9UEatwQ+uWHGCBUvgHpG4jBI3PSK61tSDry
         nnjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746192498; x=1746797298;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PuRbnqMan3w9A4V02ED54xhlqh03UYeyGh90bRtECvU=;
        b=sq4ItMqfW230ZJ/5A2Lh8HHleE7GeWdhTLunkIburFOu9Yw0hvl0LvW1JpsKIQ2NDi
         qw06AShQw5PzHm3w4yKwhDy82zMaCbd3gjfPqTphYngJT95Yw4cPs8Pp9PSMrl369S0g
         LA1N7eKxrFH94vjT2xiSq+VHEq3p9fpdQRkqsgJyo3V1RhTX2Oquxvf5+SSBXCBkk/ze
         QHO9RDFOQD8QOJiPECs5fyDMGyJAXw1YHSe/uAC7Ne2cTEIfZeQKlVhUnhk3rm3aBPKu
         LykZPmglMPMmHsOqqPrTj4zEca0Z7NWWf8x9R9R92NBL4taxfMZvQ+f4gVBkrH/UmR+2
         9QyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZN/cA6mnlwzsTr5tSpgv7Rk5ZEhUy1zIfrhHPmd7qyTSrL+E7mi12rbWwwAZMZsYpws6a2cV4WqrM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3fGQAH7LItSNBL5YIuKHoMSdH/L+Ey16y5wK8F3uQeHdEonq9
	f69Ol02/ypizhWaJGDaQV9i1ireqP5sJSMzQZNWA8ZUk9ax35EaSsruxDNKkap4=
X-Gm-Gg: ASbGncs4cCz7YZQoGKBsi1usa/MKAfhD5v3vsQ/23bx1GnBZihdIdZFnjQXgM22yXvP
	EOrHyLGO395L/kz0X5yGWirgig9h+x2uhCU7b0dE5vwy0dvSsJyLVBeGchpM2LUlkA4TTal/AVS
	JIWOwG4BzFIc4MDovyReTLzccsruRmZ2V1s1aE8+eoyq4KwiK5k8KJ7UN5RsjzW1CO6uPbtHdk+
	gi9UofB4Ew4UEoXKNRyPmoWskRi7f0voX4GceOLLft0ZIFWwLFhUn4xPQ2DBALn/Ko/XNzNtoFA
	1LeLw1CmJCe6rlubNp0zdKCjXjDZHwOBq+V/OilajmlS
X-Google-Smtp-Source: AGHT+IFQANgfE3IS1tRpNJM0Ecgeq6HCN0uHkEtPuAM+ff5mCDruJROS/5GCJdPHvUbt9Mw624sPjg==
X-Received: by 2002:a05:600c:c86:b0:43d:47b7:b32d with SMTP id 5b1f17b1804b1-441bbf2cda5mr22225065e9.25.1746192498501;
        Fri, 02 May 2025 06:28:18 -0700 (PDT)
Received: from [192.168.0.2] ([87.8.31.78])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b89cc50esm45761065e9.8.2025.05.02.06.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 06:28:18 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Fri, 02 May 2025 15:26:59 +0200
Subject: [PATCH v2 2/5] iio: core: add ADC delay calibration definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-wip-bl-ad7606-calibration-v2-2-174bd0af081b@baylibre.com>
References: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
In-Reply-To: <20250502-wip-bl-ad7606-calibration-v2-0-174bd0af081b@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1321;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=aRzAUIAqWC4TDqtCS6Lh/5C89FaJdMlDTJtPJeTuUxw=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgQOaGe4Prlx7WUc/4Pp9hOCv5cc/iEkqbfoeg6N+Ws3
 kae33tMOkpZGMS4GGTFFFnqEiNMQm+HSikvYJwNM4eVCWQIAxenAExEvozhD0+DQLZwyjMe9YyD
 5x88/vjr0Km8p526nJ/q/4sw6Um4bmT4X3w9U2pGx7bNC+yf3OM8UyzpcVIyxS/OcU2BnMo025D
 bTAA=
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
index 178e99b111debc59a247fcc3a6037e429db3bebf..45ce8603959e6d0985904b7feb79872bffde1126 100644
--- a/drivers/iio/industrialio-core.c
+++ b/drivers/iio/industrialio-core.c
@@ -188,6 +188,7 @@ static const char * const iio_chan_info_postfix[] = {
 	[IIO_CHAN_INFO_CALIBAMBIENT] = "calibambient",
 	[IIO_CHAN_INFO_ZEROPOINT] = "zeropoint",
 	[IIO_CHAN_INFO_TROUGH] = "trough_raw",
+	[IIO_CHAN_INFO_CALIBCONV_DELAY] = "calibconv_delay",
 };
 /**
  * iio_device_id() - query the unique ID for the device
diff --git a/include/linux/iio/types.h b/include/linux/iio/types.h
index d89982c98368cf72c0fc30fa66ab001e48af4e8b..d1137180a8b0bf2e34cb4186dceddad4978ca766 100644
--- a/include/linux/iio/types.h
+++ b/include/linux/iio/types.h
@@ -69,6 +69,7 @@ enum iio_chan_info_enum {
 	IIO_CHAN_INFO_CALIBAMBIENT,
 	IIO_CHAN_INFO_ZEROPOINT,
 	IIO_CHAN_INFO_TROUGH,
+	IIO_CHAN_INFO_CALIBCONV_DELAY,
 };
 
 #endif /* _IIO_TYPES_H_ */

-- 
2.49.0


