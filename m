Return-Path: <devicetree+bounces-2049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B13A37A98F2
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D4B7B217AE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:03:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E5EC4123B;
	Thu, 21 Sep 2023 17:22:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B653F4C7
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:43 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F244566CB
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:18:00 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-502e7d66c1eso2101095e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316678; x=1695921478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9YCZ78k5Zg5KKitr5PpHsZw/Rz0qYyLXQR2L135bIs=;
        b=rvHSeedVY/BGnmokTsuhhSMuUHTeSgpa5uxSHTJKjAngv1oE1y2fpjqoWXtiaCB0gV
         RSjHmNRaSEXHCHqxqzbkBwngbMzgXoQY+PI9eAHBkQ1DK+AFYP5IpCdjaqW9Dc7iUeSr
         UYbbl9lbRTD6aERtj+l+9cSOHfpt8ChnNhjpdFiYm1aY8KwjSymqWr2NX30rvk5/AA39
         bm/SHefI9s13rs1I6Xx4BMdL9GCypiN54zQYQ6336d/FDkkRJTrxcCRm2X3dgK6/mDOa
         P/olCazyGRv5nD1T6q/Ij0p1eSkbFuZSxj61HtINDvdFvKtY94Pr/3m/yde+7mRq5Zzl
         m5LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316678; x=1695921478;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x9YCZ78k5Zg5KKitr5PpHsZw/Rz0qYyLXQR2L135bIs=;
        b=sSFmksRevl4dq+1ULEiPrKy3XRsS4pkV7+0Ds6OzuDxaCFZXw+X7rgMY2owBTWnTmc
         kg6ebpldIQtCxfoPDwHpf+DUAxzUjiVSyiAfVCAv8oN/Snip61VCA1zuxrJkJgV8pjem
         hbQnyKZv0qBabGEkOuSviRuB9/agI3iVbFQWuWSB9Nq0Tm+4INKrTOde3Nr2sNtSZPZQ
         s8hv+fty/6S/8BJWrjAjoIMZjgufWb+Ax/SIJ8fkpAgPsUV3mSVElS7Pexoet1NENQVf
         cn+XwshAhep9Dnukd+ZdrP3bRmZxIga3gZEIjH358uKg9YZhY5/7aGdgq5tlCk2lRl5T
         beIg==
X-Gm-Message-State: AOJu0Yx6yCLsKTVi+nFW3zl56fbtfksF2toB9CpbqcExH99OOMEcwf9Z
	y7pzRiqdzj/SyTYxtUmL5p4Gjy7pT9kSDYEFZqKjoOBt
X-Google-Smtp-Source: AGHT+IFLOeeKjkZXzmrmyjj61SlCO4QtLumxRWkUp/uZ0wPGaqOzHFNXTE+bvD2TXSjNSCu16d/fHw==
X-Received: by 2002:adf:fe8e:0:b0:319:f9d6:a769 with SMTP id l14-20020adffe8e000000b00319f9d6a769mr5207822wrr.45.1695306155398;
        Thu, 21 Sep 2023 07:22:35 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:35 -0700 (PDT)
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
Subject: [v2 04/19] staging: iio: resolver: ad2s1210: fix not restoring sample gpio in channel read
Date: Thu, 21 Sep 2023 09:19:32 -0500
Message-Id: <20230921141947.57784-7-dlechner@baylibre.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921141947.57784-1-dlechner@baylibre.com>
References: <20230921141947.57784-1-dlechner@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
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


