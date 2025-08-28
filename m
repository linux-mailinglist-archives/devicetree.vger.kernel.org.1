Return-Path: <devicetree+bounces-210210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 774FAB3AD0E
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 23:55:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC0805E1D1D
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 21:55:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE602D0606;
	Thu, 28 Aug 2025 21:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="yq/D6MCc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82DA92BEC34
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756418135; cv=none; b=dy4TalUw4s3hjExQKYLkGiLvB4kAzIKA3E2wEzcAafYElaZCmq/OHVkNqSndXFy3a0vtqq6wH0P89svGvTcYDTDox8BJn/jigmZiXBSxa+OzJYvmX9UCBzEOROEdruogWyv4ENJfBat8+kqNjyFl+INsRU4HzwWLAoU1eMTPcBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756418135; c=relaxed/simple;
	bh=iRPbZ3NmESqwUlU+AgCDLlpOo6ZQJuC2kenB043PMZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ib/emzz1LTi8hsLkklozyDUEf3m6jy1UOL+OQoD9OrU4opl1U3ooDSEgPTKsXVLrYu11MyCmFmd7ClANPCAXuo0W+NuvpyUk4UPKE26gSwUJrzD56eLjyWSqp94XiuvFPCaNM5Eb5ziy6C4K816iuCQsnN2hwGFw4Twpf+ed/EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=yq/D6MCc; arc=none smtp.client-ip=209.85.161.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f47.google.com with SMTP id 006d021491bc7-61e06547f73so1165267eaf.2
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 14:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756418132; x=1757022932; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=USr+bxgxSSWwC2RjKRZCmku7TsEQGjaRWrkzaOYT/hU=;
        b=yq/D6MCc9eyNcXKJRtoz0sEodR62IRVAdfuj5+XvgvpvFunZIQU2wUsehqz6nn4ei8
         nFHQ8rX+Rm4SAFU8gMskuT74jS4zYN1YNvs5L+L8++/qIOPxywiQVplSAcoaWkWv03v8
         VgA/tdWp3AhEyOEp1wh5D7fv9cD3l97kU4mJtmVut93i41T5qAl80HyDPHCUwyDxY15y
         4oCtDqTga6FQtgYTvrpp2gLQCvkKO6V03Er4gDVD3a9SexcLZJ6o/P0kDP9TYaKNsQQM
         qJwmeGWlsIpvUOc0YYDFXTY3WJ79xhn4r0dYw9A9oALalSkwmE5nOJqZ+P8w9h5ZPQ9u
         HIGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756418132; x=1757022932;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=USr+bxgxSSWwC2RjKRZCmku7TsEQGjaRWrkzaOYT/hU=;
        b=MGJSyfG1LJC125tSBtgr3NAjeiC3GP2xWHva8DL9FLmgtuS7MuQDAYgPrQ1hcwArSv
         wYosB0yCaBeqFyU/3kS6+5EgT+idOg6zbF1pfpmAlYSCO81ovhW2rW+CeJzUTKLvYk2F
         QT3fNbGqWFpn/WthCfUQm6g78AH1omK1fghGuhpkuzeeB6w9jGONKvvmUmbx44WvVgmX
         7KRCyP+WhvIvBqTutBsNN5EqSV3RZk2uJG2OkCUMQl2FeGPBAE/8MeVvr08Rb1tLqXzW
         MbsFD1lYWGsMReYsguaVMV+XPukte5hzMvos4EpRoHtA9RDq4sbVmKQWdDtNwkTcV4hA
         DFyA==
X-Forwarded-Encrypted: i=1; AJvYcCVV3V5F0XOOCzR0PENTQ46Ne54VF7NjpUvyYVnREYHIIU8JoRbapdDLXz+nJg6AHjOlCIPua78oPNem@vger.kernel.org
X-Gm-Message-State: AOJu0YyVOaHO/xAyTeDU5Xd/Ttk1TNJEmCgy0QWImK7A/BhRwRxMndyL
	Q7irUxlLDLJP7XcPBgHiAaldjgVbXfzJlc5suLevkx5P93ES3665vMx0NoITrisRPFI=
X-Gm-Gg: ASbGncs1avcZFX0xBfd0oqhYMfbD1hNd9IVpy9maXyvrDDGnHr6lJtPDE6pLtQgtjMV
	x51ZjOe14hbfSfjJu80bxDyu41zhm+jp1zxi9j4FMJRF4hGojvfGiknD6U76sVNtbi74VUgknIB
	BUDW3ex6Lpd/vT49b0eYY1Ld8Hx2GVa/rlK2iGxuuMkSxyBYEM2ETawXTZaeO4q6OBFUhgEDAEX
	Xd/NujYC4rN6UkCH12EYKlWBWcClnrXv3niZNeWzfR03mULmpjM1+vNtXq6ki2336991sP5GJBk
	U43ejRvtTjIyy2axUTGUHtOwlysxa0Mfm3Fwb8AfJcLVTsigML5mJI7CKjZp75I0tbKUoMzKpNO
	Q/TzpU6UmuGcCWhRMsFMFquMMQ5YdjEvAtgsQ1Sk=
X-Google-Smtp-Source: AGHT+IGEFbzMNJ0K81S138adOx5WnmzjxfAzJv+8idWDvRMiJ0n8uhMJ5EprDbnmckq7JpWJpsZOqw==
X-Received: by 2002:a05:6870:d151:b0:30b:877e:64a9 with SMTP id 586e51a60fabf-314dcd462b9mr14138751fac.29.1756418132545;
        Thu, 28 Aug 2025 14:55:32 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:aa84:2d2c:f28c:4102])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7455853804asm136084a34.33.2025.08.28.14.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 14:55:31 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 28 Aug 2025 16:54:53 -0500
Subject: [PATCH v3 2/4] iio: adc: ad7124: do not require mclk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-iio-adc-ad7124-proper-clock-support-v3-2-0b317b4605e5@baylibre.com>
References: <20250828-iio-adc-ad7124-proper-clock-support-v3-0-0b317b4605e5@baylibre.com>
In-Reply-To: <20250828-iio-adc-ad7124-proper-clock-support-v3-0-0b317b4605e5@baylibre.com>
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4211; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=iRPbZ3NmESqwUlU+AgCDLlpOo6ZQJuC2kenB043PMZY=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBosNA8A7XX7mzwZPWpfJUhZLkOL5M+YHIiU5XfZ
 358ozWG09CJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaLDQPAAKCRDCzCAB/wGP
 wEChB/9g4QvsqCUn4tj7Um96nVbyxI8Wvdk4lLhzJZXuN8/vIkAyH86g0dawAwcDCE+WDWfNq4B
 qZJHCZoXgLYqzwoiYE5o5AQRfOC9ZLynLaTotcrOt0hPYR8ZMM1vakCn59UNglpZRheq2FDnpk9
 eEndxAVpBDwGSgLOkfNzxQY+dodcWtiexLxAXVPn9+OWZGGxBgJz6l36lwSDdBUMiuJiXMz7mc+
 eqWqUvgN2ZTo3jxx677mzdJBd7ilWNr7DDBDLdUuDlZRs/e2SNJccmBWvfBq2ZkY2IWhpG7wPpZ
 5rO4ZLRdNq3Eo2DnCj4a810CGLoZtFFzZjxgQ51lktjaxW67
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Make the "mclk" clock optional in the ad7124 driver. The MCLK is an
internal counter on the ADC, so it is not something that should be
coming from the devicetree. However, existing users may be using this
to essentially select the power mode of the ADC from the devicetree.
In order to not break those users, we have to keep the existing "mclk"
handling, but now it is optional.

Now, when the "mclk" clock is omitted from the devicetree, the driver
will default to the full power mode. Support for an external clock
and dynamic power mode switching can be added later if needed.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 62 ++++++++++++++++++++++++++++++++++--------------
 1 file changed, 44 insertions(+), 18 deletions(-)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 3fc24f5fffc8f200c8656cb97f9e7f80546f688b..49003c8436463f49a47564644fd8e405579df829 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -174,7 +174,6 @@ struct ad7124_state {
 	struct ad_sigma_delta sd;
 	struct ad7124_channel *channels;
 	struct regulator *vref[4];
-	struct clk *mclk;
 	unsigned int adc_control;
 	unsigned int num_channels;
 	struct mutex cfgs_lock; /* lock for configs access */
@@ -254,7 +253,9 @@ static void ad7124_set_channel_odr(struct ad7124_state *st, unsigned int channel
 {
 	unsigned int fclk, odr_sel_bits;
 
-	fclk = clk_get_rate(st->mclk);
+	fclk = ad7124_master_clk_freq_hz[FIELD_GET(AD7124_ADC_CONTROL_POWER_MODE,
+						   st->adc_control)];
+
 	/*
 	 * FS[10:0] = fCLK / (fADC x 32) where:
 	 * fADC is the output data rate
@@ -1111,21 +1112,50 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 static int ad7124_setup(struct ad7124_state *st)
 {
 	struct device *dev = &st->sd.spi->dev;
-	unsigned int fclk, power_mode;
+	unsigned int power_mode;
+	struct clk *mclk;
 	int i, ret;
 
-	fclk = clk_get_rate(st->mclk);
-	if (!fclk)
-		return dev_err_probe(dev, -EINVAL, "Failed to get mclk rate\n");
+	/*
+	 * Always use full power mode for max performance. If needed, the driver
+	 * could be adapted to use a dynamic power mode based on the requested
+	 * output data rate.
+	 */
+	power_mode = AD7124_ADC_CONTROL_POWER_MODE_FULL;
 
-	/* The power mode changes the master clock frequency */
-	power_mode = ad7124_find_closest_match(ad7124_master_clk_freq_hz,
-					ARRAY_SIZE(ad7124_master_clk_freq_hz),
-					fclk);
-	if (fclk != ad7124_master_clk_freq_hz[power_mode]) {
-		ret = clk_set_rate(st->mclk, fclk);
-		if (ret)
-			return dev_err_probe(dev, ret, "Failed to set mclk rate\n");
+	/*
+	 * This "mclk" business is needed for backwards compatibility with old
+	 * devicetrees that specified a fake clock named "mclk" to select the
+	 * power mode.
+	 */
+	mclk = devm_clk_get_optional_enabled(dev, "mclk");
+	if (IS_ERR(mclk))
+		return dev_err_probe(dev, PTR_ERR(mclk), "Failed to get mclk\n");
+
+	if (mclk) {
+		unsigned long mclk_hz;
+
+		mclk_hz = clk_get_rate(mclk);
+		if (!mclk_hz)
+			return dev_err_probe(dev, -EINVAL,
+					     "Failed to get mclk rate\n");
+
+		/*
+		 * This logic is a bit backwards, which is why it is only here
+		 * for backwards compatibility. The driver should be able to set
+		 * the power mode as it sees fit and the f_clk/mclk rate should
+		 * be dynamic accordingly. But here, we are selecting a fixed
+		 * power mode based on the given "mclk" rate.
+		 */
+		power_mode = ad7124_find_closest_match(ad7124_master_clk_freq_hz,
+			ARRAY_SIZE(ad7124_master_clk_freq_hz), mclk_hz);
+
+		if (mclk_hz != ad7124_master_clk_freq_hz[power_mode]) {
+			ret = clk_set_rate(mclk, mclk_hz);
+			if (ret)
+				return dev_err_probe(dev, ret,
+						     "Failed to set mclk rate\n");
+		}
 	}
 
 	/* Set the power mode */
@@ -1303,10 +1333,6 @@ static int ad7124_probe(struct spi_device *spi)
 			return ret;
 	}
 
-	st->mclk = devm_clk_get_enabled(&spi->dev, "mclk");
-	if (IS_ERR(st->mclk))
-		return dev_err_probe(dev, PTR_ERR(st->mclk), "Failed to get mclk\n");
-
 	ret = ad7124_soft_reset(st);
 	if (ret < 0)
 		return ret;

-- 
2.43.0


