Return-Path: <devicetree+bounces-2100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E41637A9A1D
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:36:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F9B02819C7
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDF61775A;
	Thu, 21 Sep 2023 17:31:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D5117745
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:31:29 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 265F32139
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:28:15 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-52c88a03f99so1378050a12.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317291; x=1695922091; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FFHoFBATjyYAR3S3Kihiw7DM+oB505Wu13vuO5lq7BQ=;
        b=Q84+tv745lTORb5KV9MKs9gj/6ozgMRg2OSyhC2WLn2i/caa/NRKTBmZy0UfTRZQje
         3/QyWq8OSbHKl4jc+NmG+hR/MQ5SMdwQJyQ67ciNNi0wSHxqmpsPt+vCayPqQ+uxBXJM
         ISLEhUBIxwzJz611dhZq0+WIfdowwLdMZpkZkWgs/oAa/AS4IhXkGkXTOXDOnPFqlMSu
         M84uPZtqyvuNoVqsffxIHgR4yrxewuBhpIL7Pd0dqw+MmPoJBUsW3Qga3zmledhXnZ5U
         KW6w4hYtoZxQrSkgGmXX6w0OBc7q1viTh05YcsGzYXYfr5e2c9NlhYT1YkKLR2UZ7EPo
         qc0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317291; x=1695922091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FFHoFBATjyYAR3S3Kihiw7DM+oB505Wu13vuO5lq7BQ=;
        b=Rwamvkx36DXG3R2ORt+wqUQ0dwbiOTkVRytlgBiBXpADDM7U6SMOGolOxxI5uhS4eP
         bZp9xNn0kGz1D0CdHoJ0UFhkLFpoHNKwwq1WnT9Cfnk0RIMHZTmbtSmGNwRJSFTkZl81
         ltywyZCkpqliBm72pNUiHSlJFnJ3LZqqiG2ab4vNqKskhl0dywc4oAWl67pxbp/gpqxo
         xHLqBvHkIOxGrRZA1QwKvSueaWJIAHeVsgM/6PKQmHeoeBpYa4FU8JkbWAAVXALutYCX
         VTADxWGebbJBaJwenGf+Q1h/67n59K2U877rPLGJ9rM1a5UDDv30BSfW8fjSxv2q2kzi
         WIoQ==
X-Gm-Message-State: AOJu0YwQb3T30CRWKfzRt32OHB4ZDgDJhPpvbe/JwUg9Y5NuNRh9zjUu
	UjsAJeKDlsPBARj3rt4uli/M/3WqABnts7KV9SpNlqyb
X-Google-Smtp-Source: AGHT+IFyRSQ9sVI6svVzHUR3normBxbHxw1ADHwq9tPPMiHuaAAm+CM2HzCwtdqMZnvyJVaEdPWyUw==
X-Received: by 2002:a7b:ce15:0:b0:401:daf2:273b with SMTP id m21-20020a7bce15000000b00401daf2273bmr5282558wmc.12.1695307465779;
        Thu, 21 Sep 2023 07:44:25 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:25 -0700 (PDT)
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
Subject: [PATCH v2 15/19] staging: iio: resolver: ad2s1210: read excitation frequency from control register
Date: Thu, 21 Sep 2023 09:43:56 -0500
Message-Id: <20230921144400.62380-16-dlechner@baylibre.com>
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


