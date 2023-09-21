Return-Path: <devicetree+bounces-2034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A027A7A9871
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:44:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BFA31C21150
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3442216420;
	Thu, 21 Sep 2023 17:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66C961548F
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:21 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A72A846985
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:14:28 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4053c6f0d55so297235e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316466; x=1695921266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FFHoFBATjyYAR3S3Kihiw7DM+oB505Wu13vuO5lq7BQ=;
        b=KAz4iaIUOTXHxb6dJ5BXJ/ilY6uTtmqFiTKXrheGNO/40owD5KAnPr9nK+ZUGEDzZI
         9JTBWXtAFL6/y16G/ppw6slB4LlljvV3ZYaok+yTfnafh4rnUkZhrnsa/9+j47SjIjhr
         6k3Imdkvc/374KtY8Ekzb2d3zdmIWi0zP1/MR0fZ2d04c4Xt9aIiOOn9+h6MBlLBHvI8
         EEAcXNjs+BMHmUoiJ2WdoKv6WSsRO26zndP6930W9mIE7aLE3spdhZF1HXsjvhkEqNC3
         5NQGyr/7iuCbwoW3sDC6oqVZBzlhc/WNZz43DLgK5oawm1jBrxu5Jwl6HRG81BIbMS1Y
         Z67g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316466; x=1695921266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FFHoFBATjyYAR3S3Kihiw7DM+oB505Wu13vuO5lq7BQ=;
        b=oEleWdJ10k0HQSAXyk/a0af1NRlytLT8xmES+ZKRk/giZOPD9fNmGouUrWXM/JLRMJ
         k+FHAluBnXxLME1Uug1ggqnYqTZ3CMl60MgRW8tdEOgkGmePkZ5YTSg6uDln9aCWoFRC
         9xKfXETwQjl60jDvFMyAFx2sTTsRUw511Kq9O4Ca6WYLj/RtUI2TzP0RfioW0XTTQZpM
         9k6MVQMr3IoMUwQvTxlYMXa+omUsmdSsUELhBGX/dx8KvopwteTMuymP2kQOuKULYhK/
         QdFMWGzWTYEQ6LfErgwJBaImUgBS1HQ0LfuqdeeFO14EaB1kRMIllWhueh+QuiYrt28D
         oo4A==
X-Gm-Message-State: AOJu0Yxvbv1W6bNpZrQwpD43QbCN+ZlkEfMx+Nv+IG8/0DNXIWcqU/CP
	wM2HSATIpVX4VsMmaQrhUm4eKNM6NkXoSmE23kzuYwLK
X-Google-Smtp-Source: AGHT+IEuEQ+yHcKXMmNkfUgwvUgJV0TYHVRrMSBE2WgINBdiZLHbPgjRXkTk6HjPHk2lj+d6o1Or/w==
X-Received: by 2002:adf:fb47:0:b0:316:fc63:dfed with SMTP id c7-20020adffb47000000b00316fc63dfedmr3915975wrs.39.1695306165716;
        Thu, 21 Sep 2023 07:22:45 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:45 -0700 (PDT)
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
Subject: [v2 15/19] staging: iio: resolver: ad2s1210: read excitation frequency from control register
Date: Thu, 21 Sep 2023 09:19:43 -0500
Message-Id: <20230921141947.57784-18-dlechner@baylibre.com>
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

This modifies the ad2s1210_show_fexcit() function to read the excitation
frequency from the control register. This way we don't have to keep
track of the value and don't risk returning a stale value.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index f1ffee34ebbc..27294eff99ef 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -78,7 +78,6 @@ struct ad2s1210_state {
 	struct regmap *regmap;
 	/** The external oscillator frequency in Hz. */
 	unsigned long fclkin;
-	unsigned int fexcit;
 	u8 resolution;
 	u8 rx[2] __aligned(IIO_DMA_MINALIGN);
 	u8 tx[2];
@@ -202,8 +201,6 @@ static int ad2s1210_set_excitation_frequency(struct ad2s1210_state *st,
 	if (ret < 0)
 		return ret;
 
-	st->fexcit = fexcit;
-
 	/* software reset reinitializes the excitation frequency output */
 	return regmap_write(st->regmap, AD2S1210_REG_SOFT_RESET, 0);
 }
@@ -225,8 +222,22 @@ static ssize_t ad2s1210_show_fexcit(struct device *dev,
 				    char *buf)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
+	unsigned int value;
+	u16 fexcit;
+	int ret;
 
-	return sprintf(buf, "%u\n", st->fexcit);
+	mutex_lock(&st->lock);
+	ret = regmap_read(st->regmap, AD2S1210_REG_EXCIT_FREQ, &value);
+	if (ret < 0)
+		goto error_ret;
+
+	fexcit = value * st->fclkin / (1 << 15);
+
+	ret = sprintf(buf, "%u\n", fexcit);
+
+error_ret:
+	mutex_unlock(&st->lock);
+	return ret;
 }
 
 static ssize_t ad2s1210_store_fexcit(struct device *dev,
-- 
2.34.1


