Return-Path: <devicetree+bounces-2087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B407A99D7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:28:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 300F3282ACB
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 884452030F;
	Thu, 21 Sep 2023 17:26:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D8320307
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:26:22 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78B714F937
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:25:38 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3226b8de467so527861f8f.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317136; x=1695921936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9YCZ78k5Zg5KKitr5PpHsZw/Rz0qYyLXQR2L135bIs=;
        b=MIKU/6tDudLhC6f2MXaZEb4iIzDK4L+CflQuDZyrjFVvR9CdsQGKZJZkoartrgglzM
         0yf0HC+yKHUYG5nohzLDrsxixSy8Djbj6EXnsBqbFguYRwqftznWuFJanOe2Svm9GNnv
         GvWmqFwK2zC33NfZ5kzpsoPMX2wiifAVPMcZwQZRW1WJ8E/lrVIFMkyD1/vmdiEcSb6D
         qMkmYRIlAPaZnqqBAfQNK26TgSS92fis+SlikTIFNhWewfQB29g4UJUG9aCLhWg85i1a
         vaM8QGVTUqxyvrMMCFRhwVdSd1zrpKkXplYDPmi7bZEqi8yQQJOfjQQgnaSjJT2AHEw0
         xI0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317136; x=1695921936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x9YCZ78k5Zg5KKitr5PpHsZw/Rz0qYyLXQR2L135bIs=;
        b=i9EbRcl6jBT8CnMHAuzEjsnXJ41CZobm+EDjJeHLKwG9p/PgbPnAvjx23UHiErjEgy
         BicG8D7hrqlscf+wox5VEmQDYWPSJTd/0nobprzX+NGQ+hP5jF/MVdP7x/LujwVjSCDE
         72Kt5l2y45U5BXuiY8vZOS7BozP3BxXKVEr7j6vNecEa3dSpip0q0PDZ4zdoqc1dDM5E
         f5KaI9NRyIHffu1p4eOYnUxD5PWEma6Bv2hYXKdwRvBuWQmnXrG4OzU+rAwxda7/Y7d7
         p/P1OZXcvMIk8vzNHM6OzXI+y+W9AgZVOFBjdIfgKWgQq+UvoZ7t6JFPsfHamgIvBd9u
         JiFg==
X-Gm-Message-State: AOJu0YyIX0gQwJ5QWiuWtvYneXqUOO+u2Dfb/OYMBnmaixew3SzRp9fW
	WP47/8V3Fp6/go7usddQbBusRWmEfsCjWUJHwUJqQCvk
X-Google-Smtp-Source: AGHT+IEpFrDSoMcGwkX92bs0KANrkQRic6vkb2g8vJmtLIHbFG/3F3REKUYxWKXB+6gaHaSm9uvZwA==
X-Received: by 2002:a05:600c:ce:b0:401:d2cb:e6f2 with SMTP id u14-20020a05600c00ce00b00401d2cbe6f2mr5107214wmm.32.1695307456325;
        Thu, 21 Sep 2023 07:44:16 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:16 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v2 04/19] staging: iio: resolver: ad2s1210: fix not restoring sample gpio in channel read
Date: Thu, 21 Sep 2023 09:43:45 -0500
Message-Id: <20230921144400.62380-5-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921144400.62380-1-dlechner@baylibre.com>
References: <20230921144400.62380-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

In theory, this code path should not be reachable because of the
previous switch statement. But just in case we should make sure we
are restoring the SAMPLE gpio to its original state before returning
in addition to releasing the mutex lock.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 84743e31261a..0bdd5a30d45d 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -510,8 +510,8 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 		ret = IIO_VAL_INT;
 		break;
 	default:
-		mutex_unlock(&st->lock);
-		return -EINVAL;
+		ret = -EINVAL;
+		break;
 	}
 
 error_ret:
-- 
2.34.1


