Return-Path: <devicetree+bounces-31137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8D282A15B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 20:52:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62408284EDE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jan 2024 19:52:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262524F8A9;
	Wed, 10 Jan 2024 19:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="O9k1ATy+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959884F217
	for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 19:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-59505514213so2048989eaf.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jan 2024 11:51:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1704916275; x=1705521075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jqqZ1xFBo82n6w1dVaiJcbo432Ln6B24n8maUrb2mjE=;
        b=O9k1ATy+T89/CZvFYID+81bz5WDTQh/+XvcBDMsj8tdNpV1z0rqQu57uYQRlIO6wJK
         YXDzg37ZwMMbC9fEudVU27qkgDQ5oRJw/hrGEyqafUT//j1eTc7MjCPjFafmSqYjbJGN
         8taVXuHsKE5BCwPqydf2bLmxnAy7kgSgADSCKAjCcvOMZNoAbeWz7adTbYIzLxtxnOjd
         BT+nA0QK+2x1wyWvxwKgudoEHwQ7hIZk+aY/I+snjpSWb+XvzyTBHICU4qsCpPD+EPEf
         u2PJ2N+00gE9sZ9MTbY8wY43bR3oTzgkpxajp7Q7t8y2vxb0Rjx6JsWC966MaQsLmHmu
         qBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704916275; x=1705521075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jqqZ1xFBo82n6w1dVaiJcbo432Ln6B24n8maUrb2mjE=;
        b=NZVPA7vaj5l9yV07oLlSCUzaEUl+7c/lzNJDxKM9WIkcmhH3iM3BPu7z72ErFI2t+j
         Ofz+7R6hreEjR1wy4xN36TPxCdI5Sb+4+WQFV5SqCMgXzQZOplm3Ae+1+XTKKOw7b95s
         W8V636WzoFaY9VaroXaao4iCeUfs8/WOIhzTSxVqTGKu/SViGqr+cdIzGoavH3eCmbBN
         q1FyfziH5CriW/UuW2UC3h6tchEqTH0eIt4lRt/bZ0YQY9JSo283zImE/koItP0pTIbY
         HNTdUpFVFpUaS5iCkFZ+Z/YGbXrc37BJ7vwkD6LgDsoSydxfUOdVisYcbV4Qx/lKeiQe
         RPbg==
X-Gm-Message-State: AOJu0Yw7cp6gZSgfM3CjzKBjsf1Bka7fcW+RfbBTX3HMsU4c3BThrAUd
	K3ieZyYJJ8Pv+XyP6iDaqTlrRi6tZmDM7A==
X-Google-Smtp-Source: AGHT+IGpvpbNrgicdFH6SZalFJARifgnOCGpguDFxh622L8t3QzMdc8P1+4NLpt69DdVpeiIu3LAlA==
X-Received: by 2002:a4a:c385:0:b0:598:9871:2800 with SMTP id u5-20020a4ac385000000b0059898712800mr400192oop.3.1704916275707;
        Wed, 10 Jan 2024 11:51:15 -0800 (PST)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 187-20020a4a0dc4000000b00595b35927a3sm938513oob.39.2024.01.10.11.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jan 2024 11:51:15 -0800 (PST)
From: David Lechner <dlechner@baylibre.com>
To: Mark Brown <broonie@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <michael.hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Frank Rowand <frowand.list@gmail.com>
Cc: David Lechner <dlechner@baylibre.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-spi@vger.kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 07/13] iio: buffer: dmaengine: add INDIO_HW_BUFFER_TRIGGERED flag
Date: Wed, 10 Jan 2024 13:49:48 -0600
Message-ID: <20240109-axi-spi-engine-series-3-v1-7-e42c6a986580@baylibre.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240109-axi-spi-engine-series-3-v1-0-e42c6a986580@baylibre.com>
References: <20240109-axi-spi-engine-series-3-v1-0-e42c6a986580@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.4
Content-Transfer-Encoding: 8bit

This adds the new INDIO_HW_BUFFER_TRIGGERED flag to the available modes
of the dmaengine buffer. This allows it to be used as the buffer of
devices that use the INDIO_HW_BUFFER_TRIGGERED flag.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/buffer/industrialio-buffer-dmaengine.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/buffer/industrialio-buffer-dmaengine.c b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
index 5f85ba38e6f6..c67ddf963bfb 100644
--- a/drivers/iio/buffer/industrialio-buffer-dmaengine.c
+++ b/drivers/iio/buffer/industrialio-buffer-dmaengine.c
@@ -120,7 +120,7 @@ static const struct iio_buffer_access_funcs iio_dmaengine_buffer_ops = {
 	.data_available = iio_dma_buffer_data_available,
 	.release = iio_dmaengine_buffer_release,
 
-	.modes = INDIO_BUFFER_HARDWARE,
+	.modes = INDIO_BUFFER_HARDWARE | INDIO_HW_BUFFER_TRIGGERED,
 	.flags = INDIO_BUFFER_FLAG_FIXED_WATERMARK,
 };
 

-- 
2.43.0


