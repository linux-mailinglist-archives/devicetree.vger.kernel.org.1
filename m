Return-Path: <devicetree+bounces-2165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6463C7A9C96
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:22:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2110284014
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6014BDA6;
	Thu, 21 Sep 2023 18:11:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0EB4BDD4
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:30 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40F2D81231
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:53:28 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-530ea522f5eso1407596a12.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695318795; x=1695923595; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NDg1sZsypbtmVZl9501Jvjfjp7cqgNO2wWu9eDz+bAo=;
        b=E9ZnaYGAfKRKUKqSV2BFMeLj1S43tqjDuFsBX2FdXSIdc6jT7q/SCUDvsI+iNgW4+Z
         tu+eZhTmMC5xzMzd+pPiq/wTZjmWAQoEELx5ZxIkQ3dprhf1JqANeL8eFrd+/jDnSLoY
         854TsO5mqzd2wqNReA4qfM+RCFviAmtlWM2L9fvCeEVHvBMuQJoPmFOyScsi1saHuKgN
         CdWmrUxG/nN6dmy/tyK3poIw2h4opPvZ7S6up1YCLVAalcwhjMrOf+uqckbGiUCe0QPN
         g7SLp7/mFQ11s3vuuQJLTgPv+ks5Qvn6TYOY+aebC2pF3/1MHoSarqEUnDrl/xdFGhlG
         o/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318795; x=1695923595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDg1sZsypbtmVZl9501Jvjfjp7cqgNO2wWu9eDz+bAo=;
        b=Lpe46duJQR9KyCEaoZ3ruDCSzBW0SPeudU1Gtgs3J97/hwOBXzUZ8YsIGPnFr7UbsR
         3xe124k0T9oCZ0J3XWA/d2ajY+BeAwym3xWNGt6ujsPpnWBChc7mzD7xsDguzjNhQUZA
         Jr2gnXNYu1veINNSy4myAyhx0LIRdofiDEswQEAaJ03l38UOCHtSt1JV2xvwKkvdGqqz
         YDVJE4l4g/fqrpc7tv1MgFIlVqQbIHaSwtFsKJUXmhLWoiWG2n57xb1ONWOXcP+ZDfKc
         vTwl21yUvUB1E6HBY9gh4dMqqPfc4eblEZzS3c8HcYVQrFFg68JEJvxI9ExW8F7FlXWT
         VMMg==
X-Gm-Message-State: AOJu0YzHk1iPdXUjkZqFgphkx7kxzRB4XcMy9uL0zcz28A5bI2MQtbsl
	W1PC5Kp2XGewzLELL5iT7ZUDNNDngiBtGDCei7H2qvoM
X-Google-Smtp-Source: AGHT+IHTDD4zYuu6lV9x3Jl/iVplDBdwIifaK9LFet9fL2i2jXEx9floEa+zeO5CPOjwgUdMkMbH9g==
X-Received: by 2002:a05:600c:2245:b0:402:906:1e87 with SMTP id a5-20020a05600c224500b0040209061e87mr5026780wmm.31.1695307461363;
        Thu, 21 Sep 2023 07:44:21 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:21 -0700 (PDT)
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
Subject: [PATCH v2 10/19] staging: iio: resolver: ad2s1210: add debugfs reg access
Date: Thu, 21 Sep 2023 09:43:51 -0500
Message-Id: <20230921144400.62380-11-dlechner@baylibre.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This add an implementation of debugfs_reg_access for the AD2S1210
driver.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 3c81ee61b897..b99928394e3f 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -606,9 +606,29 @@ static int ad2s1210_initial(struct ad2s1210_state *st)
 	return ret;
 }
 
+static int ad2s1210_debugfs_reg_access(struct iio_dev *indio_dev,
+				       unsigned int reg, unsigned int writeval,
+				       unsigned int *readval)
+{
+	struct ad2s1210_state *st = iio_priv(indio_dev);
+	int ret;
+
+	mutex_lock(&st->lock);
+
+	if (readval)
+		ret = regmap_read(st->regmap, reg, readval);
+	else
+		ret = regmap_write(st->regmap, reg, writeval);
+
+	mutex_unlock(&st->lock);
+
+	return ret;
+}
+
 static const struct iio_info ad2s1210_info = {
 	.read_raw = ad2s1210_read_raw,
 	.attrs = &ad2s1210_attribute_group,
+	.debugfs_reg_access = &ad2s1210_debugfs_reg_access,
 };
 
 static int ad2s1210_setup_clocks(struct ad2s1210_state *st)
-- 
2.34.1


