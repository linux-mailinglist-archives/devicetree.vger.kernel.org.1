Return-Path: <devicetree+bounces-180500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A46E9AC3D9D
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 12:05:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C6D53AA2F5
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 10:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 307CF1F6694;
	Mon, 26 May 2025 10:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="poVyDTgq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D461F4282
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 10:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748253888; cv=none; b=QqveHR+a7ijuRvKwJZvnc2PYUiyds42M5q2tqoUun8f0+6/uiybE1xE/46QMoTliLHM4YtvsFU/U9jkW5qdwkTSC7V0Mzjh+uWiLVFHpBsCoqVi3ypfYtW29XMXRkpjGGB97eyOWUHX7od258bEgaa8Z3hq/1riOq1kG7m9lmHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748253888; c=relaxed/simple;
	bh=8DecWNX9a+g7ci97Vv7IU6U85+eTrGoiJDNqhMLAwD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UsAKF7OepiQsJQU2iapaZkdapC2Oagq43m2IvASLtBTGbmN7Cg0rQgXE328mAYL5H7qjpSFyR31WwvY+jdywa4Rb9vtKgUVw8ny9nf5FxO8WAaK4sjD7xcGTYMdJtCpn7IVOIUAw+t/1y8ajlhFnge3r62faag3FiBkPT1ciAIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=poVyDTgq; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-3a363d15c64so1457907f8f.3
        for <devicetree@vger.kernel.org>; Mon, 26 May 2025 03:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1748253884; x=1748858684; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQIoahuutc2qqjFxwM4CJBJC7cg2fQ/5cUj9Q0XSXuA=;
        b=poVyDTgqw+zz+w5FMFviTkNxA7NFu8dORMQmv+3wvDYXcAIckkKIVBaufODYroq4Uh
         4GhEgbrNqeOB/iybIa/CxCm5fLcLxxbybU3v5WlQNGRWIuSMiVP65eZfiUSO3bV23jCc
         8SDuQd9YT0TxxjJzrIIQEcrC5OuEmD9aFgI1/hjuC+wr3gJoV1MkfpCIeEBrWSMUTWvK
         soJGnCJ97+OAaLGkx1btu7TrcIi7KASz5h8wZil9l7t6tZWBz1P37lRxMSWZtMrJozJd
         0sZQyyoiESlQy0tfbHX86YWH8i+DNBqz3ROtCqcfkMVq/mxWBgM9cnBR7mXi799AS4aU
         BnOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748253884; x=1748858684;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQIoahuutc2qqjFxwM4CJBJC7cg2fQ/5cUj9Q0XSXuA=;
        b=bmh5R5ZSIuVTbC7TZjXoN2UaT31Pn6I71aXsXeTnbpKLn9kBgmXV5fhvbEs/vqvx+m
         wsIkh7TGPFccfIwjFuSbPOziuqbC7kEQhvnlCBhrBBUaD3l7Ns4lLoEa8zWveQAGEtIo
         /QbidAbqNASZiddMQHxjulmQkUsgCpKrYOqWXD6XzdFCss4z8MseGURdb8c75mgH48U3
         6NxFTCHR2qczxL2TkxQotP+1/4SZcYHd6ulTcy0SxdQ7P9DpPQpRad5TgD070Lmjefng
         AJ0H+Cca8iUuQxJmvQM8bfMALc6WhHMGNe8hgxFLzgKkocdL+y2VinqgeMWAApLxcSrw
         eDPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlZLRE9X4IGn/5qyZ6F6yKStt8wbacHo1TQDPSzzKtRWlr32DeQocRmcKd/JyfoWRAKtRWRiZbHGk6@vger.kernel.org
X-Gm-Message-State: AOJu0YwHS+RAoWTZyQqqRd+Mu32bU4i5YHsOAFtBYv7BsBocxJ1sLdyh
	ZoFZOPje/T9YsZPepJoO3GnaAx8HUZ5jnmnP0/sPMdBD+5t4J67Ig1l6a7XYRvF1l3Z+TZ6h8wu
	IYp3o
X-Gm-Gg: ASbGncsuI7iaL1EusJJ4rxJeHoI2ox02tlmnUlN4P2MFhZUGspdRbc008oYWpnioUA7
	0+HcYir8uiw4uob6K79KrpqlGeMLmgeUGyk338ZbOX3jO0B3YZbTYmqLz7FKEPn05Egr8hW4R+1
	YUqjwyX97FL88LhahdmAazVXXFhSQI7PSVcvH3nF2YxXUt1LjBDnaltitTF58JQNDewvNlNBRry
	wN3fg9YBXZP6M/07/+wkjSoHvBxJNNNq/keO7n9EcBIwzX35wVyufRZJ73y8Lnkj1tkiHUQ6KjP
	Yoherf52tLRqxhqVCLlcVup2jInqHYF7rTURbeG6TkpdvxGDOSWhkJQrw3PJWBChhFBjOb+BBnh
	vsVjcSN8Zf12kmYu2AYZV5EEqvKeEhiE=
X-Google-Smtp-Source: AGHT+IHYhcuJ5tJUzW+X1N6tLbm3m4NFLOMHI70/u9217nBb1JvAuUOsKFYkUSxnI3msJC2yE8u0Pg==
X-Received: by 2002:a05:6000:4211:b0:3a3:7bad:29cb with SMTP id ffacd0b85a97d-3a4cb499ce9mr7666683f8f.52.1748253884092;
        Mon, 26 May 2025 03:04:44 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a35ca888fcsm36141834f8f.78.2025.05.26.03.04.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 May 2025 03:04:43 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Mon, 26 May 2025 12:03:17 +0200
Subject: [PATCH v7 2/6] iio: core: add ADC delay calibration definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-wip-bl-ad7606-calibration-v7-2-b487022ce199@baylibre.com>
References: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
In-Reply-To: <20250526-wip-bl-ad7606-calibration-v7-0-b487022ce199@baylibre.com>
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
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYsgwsck+Y36919jPLE56vYtxsKVOoPxZ0YUJmbsMZYT27
 D98c8L7jlIWBjEuBlkxRZa6xAiT0NuhUsoLGGfDzGFlAhnCwMUpABMRrGb4xXR166u8b6/zXyc2
 z2cQsgqZmpa/YfefM//nze98mTpj6wuGfwqn6tht+/hjAn4zSbQkH0tan7q5dZVvgY79w6Itgsv
 9OQE=
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


