Return-Path: <devicetree+bounces-2056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBC37A9902
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:10:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A645C2819EF
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B76342BED;
	Thu, 21 Sep 2023 17:22:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649D443A9C
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:51 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8173585CD
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:19:18 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50433d8385cso670345e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316757; x=1695921557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gabiCx8aQ+iMVEJft2DL0LHbd3RWq71VIbUUi+w3JfM=;
        b=aVJ914QJviC1tiTAIgseqGdwrusGRb7MoZU1Uska8jOH3vGK22vc31g3a7ikXzHLFc
         rgGvTZHwnGuhN1dvq0JUA7NmCaWLBZu5vVHfntOJRGNPGE67RxngVGE0f468PYSZ+uI0
         RoU0sSnvXbAPfcFFk7uOrNRWVyxoroh1hrgevVqhYD29Tppbt5UwSTwVhW2wIMa+rE8P
         tg/ng0ZjofQrwPYY+ApQmkSEKtYu3QIbV9pKyYfnzib3g56CKiW6ofMLOZnO10pTTVJc
         vpDlo5KvmknENsA6d9PJOBSbupDTcneJiHqe+jb6ptYzBxVzoRIOsXkQVP9boexSdem6
         iCqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316757; x=1695921557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gabiCx8aQ+iMVEJft2DL0LHbd3RWq71VIbUUi+w3JfM=;
        b=bNzmb+nRuhfgerE350aPkKSlnBcOhHE7001sM+rrDu4cgiQZERt9n+UaytrRrPWfMK
         hoOG4XdcWIkMWanE3Uha4e0W29+76hjeEG2rEAg1Z7n7toEj3xVIU67FtmUwVWKiSW+8
         I1ZyTl3XItCHRKBpyC2VvuKAU+NobALGLH9GfLYmD/uf2RuDJuw5oOkxlaaA0TKxI9I0
         bSZ6V/bUGmC7uWqHe/LcuPoYAD1afGwwSeTYhnzoAkmfRHGiuTbH25G1zSx1E0/L4Vyc
         1uCvAygAzEZTZjPg2pGwHruS0EVC6N76ZvyRLnX/JLa1av8x7Q1ODOuGGDBaGnrKLJy8
         ecfw==
X-Gm-Message-State: AOJu0Ywi6EOEOHbjzQ2gA4UMKzobgd8QU8uveOk1EZuAOYh60rTL7LLt
	1XzrMBebvD+KBe8h62467W4dN7Y9VhJPPrFq8Rm5zUli
X-Google-Smtp-Source: AGHT+IE4sDvMSw/UkfMczfXLxgbpckMACuzljnUTY5SM6KE9BEVvGBveVsOv+3vfUogJ5wktpvrmbA==
X-Received: by 2002:a5d:6e54:0:b0:31a:e8e6:8a96 with SMTP id j20-20020a5d6e54000000b0031ae8e68a96mr5153996wrz.67.1695306157156;
        Thu, 21 Sep 2023 07:22:37 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d4c4b000000b0031fbbe347ebsm1901426wrt.22.2023.09.21.07.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:22:36 -0700 (PDT)
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
Subject: [v2 06/19] staging: iio: resolver: ad2s1210: always use 16-bit value for raw read
Date: Thu, 21 Sep 2023 09:19:34 -0500
Message-Id: <20230921141947.57784-9-dlechner@baylibre.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This removes the special handling for resolutions lower than 16 bits.
This will allow us to use a fixed scale independent of the resolution.

Also, for the record, according to the datasheet, the logic for the
special handling based on hysteresis that was removed was incorrect.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 9c7f76114360..985b8fecd65a 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -465,10 +465,7 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 			     long m)
 {
 	struct ad2s1210_state *st = iio_priv(indio_dev);
-	u16 negative;
 	int ret = 0;
-	u16 pos;
-	s16 vel;
 
 	mutex_lock(&st->lock);
 	gpiod_set_value(st->gpios[AD2S1210_SAMPLE], 0);
@@ -494,20 +491,11 @@ static int ad2s1210_read_raw(struct iio_dev *indio_dev,
 
 	switch (chan->type) {
 	case IIO_ANGL:
-		pos = be16_to_cpup((__be16 *)st->rx);
-		if (st->hysteresis)
-			pos >>= 16 - st->resolution;
-		*val = pos;
+		*val = be16_to_cpup((__be16 *)st->rx);
 		ret = IIO_VAL_INT;
 		break;
 	case IIO_ANGL_VEL:
-		vel = be16_to_cpup((__be16 *)st->rx);
-		vel >>= 16 - st->resolution;
-		if (vel & 0x8000) {
-			negative = (0xffff >> st->resolution) << st->resolution;
-			vel |= negative;
-		}
-		*val = vel;
+		*val = (s16)be16_to_cpup((__be16 *)st->rx);
 		ret = IIO_VAL_INT;
 		break;
 	default:
-- 
2.34.1


