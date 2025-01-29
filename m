Return-Path: <devicetree+bounces-141638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF9CA21BB1
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 12:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F3AA51881FC9
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 11:05:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E8E81B87F7;
	Wed, 29 Jan 2025 11:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ctaK8n/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFB71D8A16
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 11:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738148707; cv=none; b=CduyoSj8rjsqtVfTvKgHg3Ej6TQm+WyHZ8IcV7NuYTtX2Jrw9W+tICQshnJgfNd+D/TmgBETvbN6WnwiETG8WYMSloBN7ereHNY5fQp7BnIh5V/hDWn+FgA2z2hwD+/6Y7I+3ASsecqoYYUcj0a9I4BGblYnZdzB+iDaIZaJNSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738148707; c=relaxed/simple;
	bh=eeeG742/LDeOmZMMgJC+W4hlPYKRzBPb8KIQGlxLJKg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c6KEjKLkgQpzgrjXc5B7Bh8ngdN4wHyuS6Qd3Ukd/8EPNRkV4sdheF8oQ13oL9fG7vgCHMP9fr/fafgvr8IH7Weq7oN0/SE+5LGq5BEQ+3BQ8S1oRPCaEQ7mLa9c+jPHG5r4EPA286soo43BYQMea1K26ciTSLkEdUYpIuY+sro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ctaK8n/c; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38a8b35e168so353056f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 03:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1738148704; x=1738753504; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cdc1cATkxj+NRQremP6tEug4vIFfF8rLsJGQkTSIG7w=;
        b=ctaK8n/cGXbZUQJsCsEeJAX1kstrN1ZAO4b+dRNxj9Bsm0Lt0hC9j+jlAdPbK7F99I
         JAe+aES1tFjFYG51ASECBQM+3qpKJGlbIPjyeRCYtDQ5KP5V3qhq37qKpLBJ3HQQz330
         oJ9uWH4T8nbQkEuYDsdhAtu8Blp5am4lSKl8Y3u7YMUBsExsD51duhau+RsCUb2KlgVU
         YqYAFApmgnwjlUSVJF7ZgPE6pKUBoZr0OgG5zrnMkoFyX7NYVsCBJwKB7KlKPpUZe115
         zuWoCHaDV/K+9P5EUJVQtUuKI6c8GoR5TRujlUgiUQ4yisberOTWVTxbMcT5gCmvKycm
         cJow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738148704; x=1738753504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Cdc1cATkxj+NRQremP6tEug4vIFfF8rLsJGQkTSIG7w=;
        b=Gy/7hvJmDXyGhfRh2dmLx5S87Xp8ErDdqVXwkDLPC+MBVg9u6tXAfH2JYF0bFK9Sxy
         v7WQbvFUr5/o6X0Z0yHGxnDk7NWd4KqGEM02w7wXqwJxvNIeMjYR1W86G4gaoabsIdyc
         5JfcQt8KCIx6njbBqPeN9jBWHgrdzqKdmjrKWgZj18CUUmI6bnJs1vsMIHP6pM7iCFMs
         FvH47/rGwtqNHWZDwnYoMwGMe9ByVjYwZLlk+ZsIo37KXe3BYubSkEsUwHjJIkBMfvpA
         QXK9zMnD9y//0xTK9yeUp3KucYehaUBXVyTnhtSeLWoppvFMrfOclVqsm1LGAoiRtn2g
         SVdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWP7iZKMICNW0tm8huBrb4M7rj+69wV2td1gRhG8O06ZeffZd6ZEDAm5YZbsmLcsFwkewUg4XnreA5@vger.kernel.org
X-Gm-Message-State: AOJu0YyYp3JTk2XMZof48NMPVz85FMkNU/V225dDLiGYEuXD2GC8OPx+
	icC7Oru7H9FqLkr7IKteoEphgvVKKxFTOAz4x84KMvF7JVGwz7/T7Jkr9SHsmKY=
X-Gm-Gg: ASbGncv6ZwD0wc3jSDOlH8MmmzYIgjwHsqe3valwURc4cRXFNkOyWOLvqmCAtaC8ZDk
	Dk4cCJ++5FgmsXrDrRdURpnFbcJsC5FAOdhId1iUbU5A7isG48FxFUR6HD6HIcDHUQw6Lk56cq5
	1/PHOKveHFZpmLdbljr4S8J9zY8Dc4o3tMZOwMggkrqOqfchhGp1VJgTNduaTb9dR4NjZbbh9VU
	UqiZS2SY5WHdr3M8Y41SSJGNqnRWG532F4LepYkOkJ8lk313YJgQJysOyf5hJv5m2+2tzuAIOVU
	s441SNQZdhqRtGfwftgMOnskhV6/V/DbjknC3T8VGVWVD4lPH8gzh9meXdshBzLXU9V1FmE=
X-Google-Smtp-Source: AGHT+IFaDLpWVjFWIu1Y+Qyim7g9TKgeSUYK0sY4eBsggvgAlH7UPWWj1NlDTMMXxX0rHSkDBiAViQ==
X-Received: by 2002:a5d:6481:0:b0:386:34af:9bae with SMTP id ffacd0b85a97d-38c49a051c8mr5706558f8f.4.1738148703815;
        Wed, 29 Jan 2025 03:05:03 -0800 (PST)
Received: from [127.0.1.1] (host-95-245-235-245.retail.telecomitalia.it. [95.245.235.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c2a17d7a7sm17107364f8f.32.2025.01.29.03.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2025 03:05:00 -0800 (PST)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Wed, 29 Jan 2025 12:03:04 +0100
Subject: [PATCH v3 03/10] iio: adc: ad7606: fix wrong scale available
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-3-c3aec77c0ab7@baylibre.com>
References: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
In-Reply-To: <20250129-wip-bl-ad7606_add_backend_sw_mode-v3-0-c3aec77c0ab7@baylibre.com>
To: Michael Hennerich <michael.hennerich@analog.com>, 
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandru Ardelean <aardelean@baylibre.com>, 
 David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
 linux-fbdev@vger.kernel.org, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Guillaume Stols <gstols@baylibre.com>, 
 Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.1

From: Angelo Dureghello <adureghello@baylibre.com>

Fix wrong scale available list since only one value is returned:

...
iio:device1: ad7606b (buffer capable)
    8 channels found:
           voltage0:  (input, index: 0, format: le:S16/16>>0)
           2 channel-specific attributes found:
                 attr  0: scale value: 0.305176
                 attr  1: scale_available value: 0.076293
Fix as:
           voltage0:  (input, index: 0, format: le:S16/16>>0)
           2 channel-specific attributes found:
                 attr  0: scale value: 0.305176
                 attr  1: scale_available value: 0.076293 0.152588 0.305176

Fixes: 97c6d857041d ("iio: adc: ad7606: rework scale-available to be static")
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index d8e3c7a43678..d39354afd539 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -1047,7 +1047,7 @@ static int ad7606_read_avail(struct iio_dev *indio_dev,
 
 		cs = &st->chan_scales[ch];
 		*vals = (int *)cs->scale_avail;
-		*length = cs->num_scales;
+		*length = cs->num_scales * 2;
 		*type = IIO_VAL_INT_PLUS_MICRO;
 
 		return IIO_AVAIL_LIST;

-- 
2.47.0


