Return-Path: <devicetree+bounces-2163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 458CD7A9C89
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 501F6282AA6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:19:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1554D8E1;
	Thu, 21 Sep 2023 18:11:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C64C86E
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:26 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A492197952
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:56:40 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4053c6f0d55so752565e9.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:56:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695318997; x=1695923797; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lWgDNsrrXF5syWEsVgdKbxr1ASE09oFAZQly/Ty6i74=;
        b=c44ek5sQ7UTCTg/PNMPdqv6AKZwqj0XQ77Y3sclPrDbCULLxqZCVzuOV3Shdmusx3Z
         lkDJ1asf6YLnLTIvntTOPQTvrQ7HeiP+IiErOSK3+yXQUznHe0IptP+jO2uVpkM6MihS
         GUb97zkZUPWjkf8myg1CtRU2hMktPsTOWzzeWeQ5je91klaZ5RNI4+Evot4ZeKFmaA4U
         sZlQyXcllKslUctGEoWiKF04W7bRihW6HktLNlpZtr6euYkSzsQ9Xwm6Z85b3577LOCd
         L+mFaatwjPuPJayuMnR8wZUfoUBE+9Xw2FWXlvAFy4SnSmID5YMFawnxnLHZHoBOaFML
         +kMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695318997; x=1695923797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lWgDNsrrXF5syWEsVgdKbxr1ASE09oFAZQly/Ty6i74=;
        b=DeNRYwcxR4zpZ399wROiqY3TSQ4elDNaHUm7rx5Wm3AtwHRgyyhzI86g75NtLNk4bn
         fzALQWhLWzrkR03xQDfADtrInN4l1McEYJX4KeByBsmOouBv8XKpvqmT20aonopuM7Z0
         oAkcQTOKK2uXE7uspTZjvDasctI1kwE6dW/1jQ4ogTkE31C4hbMsO2H4dqn6Ezf7KTe3
         dmmHAAmlkVZtFT4rR7vDLkyFrZaPcr9Yyi24vlofHIjTnfos3NtgKhlN44gT/srJzqMU
         dSSboOfG3anpwSceWdMV37+xxDUnLIjJAByMWCBpCfPX7Oen72GTbT1rljPGqoN/rZk2
         rzPA==
X-Gm-Message-State: AOJu0YzHJrarhvEs36zKQN8pd6n++kEZCZc4nJALvviDcjIUSyyJY5gB
	mxXJGygj9bDnF0HoZAa6K8lA0hOjdZ1szKAf4tGa+8f1
X-Google-Smtp-Source: AGHT+IH9cj66Ps0WLbNpON2AlXKRfiUMaOxHt4FNCDCK4dpbBCjBwlo7F8l6CXuniG5eXJc7Yk/jUg==
X-Received: by 2002:a1c:7718:0:b0:401:d803:6242 with SMTP id t24-20020a1c7718000000b00401d8036242mr5422512wmi.27.1695307464880;
        Thu, 21 Sep 2023 07:44:24 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:24 -0700 (PDT)
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
Subject: [PATCH v2 14/19] staging: iio: resolver: ad2s1210: refactor setting excitation frequency
Date: Thu, 21 Sep 2023 09:43:55 -0500
Message-Id: <20230921144400.62380-15-dlechner@baylibre.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This combines the ad2s1210_update_frequency_control_word() and
ad2s1210_soft_reset() functions into a single function since they
both have to be called together.

Also clean up a few things while touching this:
- move AD2S1210_DEF_EXCIT macro with similar macros
- remove unnecessary dev_err() calls

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 63 ++++++++++++-------------
 1 file changed, 31 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index fe413759deb9..f1ffee34ebbc 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -53,12 +53,11 @@
 #define AD2S1210_MIN_CLKIN	6144000
 #define AD2S1210_MAX_CLKIN	10240000
 #define AD2S1210_MIN_EXCIT	2000
+#define AD2S1210_DEF_EXCIT	10000
 #define AD2S1210_MAX_EXCIT	20000
 #define AD2S1210_MIN_FCW	0x4
 #define AD2S1210_MAX_FCW	0x50
 
-#define AD2S1210_DEF_EXCIT	10000
-
 enum ad2s1210_mode {
 	MOD_POS = 0b00,
 	MOD_VEL = 0b01,
@@ -184,18 +183,29 @@ static int ad2s1210_regmap_reg_read(void *context, unsigned int reg,
 	return 0;
 }
 
-static inline
-int ad2s1210_update_frequency_control_word(struct ad2s1210_state *st)
+/*
+ * Sets the excitation frequency and performs software reset.
+ *
+ * Must be called with lock held.
+ */
+static int ad2s1210_set_excitation_frequency(struct ad2s1210_state *st,
+					     u16 fexcit)
 {
-	unsigned char fcw;
+	int ret;
+	u8 fcw;
 
-	fcw = (unsigned char)(st->fexcit * (1 << 15) / st->fclkin);
-	if (fcw < AD2S1210_MIN_FCW || fcw > AD2S1210_MAX_FCW) {
-		dev_err(&st->sdev->dev, "ad2s1210: FCW out of range\n");
+	fcw = fexcit * (1 << 15) / st->fclkin;
+	if (fcw < AD2S1210_MIN_FCW || fcw > AD2S1210_MAX_FCW)
 		return -ERANGE;
-	}
 
-	return regmap_write(st->regmap, AD2S1210_REG_EXCIT_FREQ, fcw);
+	ret = regmap_write(st->regmap, AD2S1210_REG_EXCIT_FREQ, fcw);
+	if (ret < 0)
+		return ret;
+
+	st->fexcit = fexcit;
+
+	/* software reset reinitializes the excitation frequency output */
+	return regmap_write(st->regmap, AD2S1210_REG_SOFT_RESET, 0);
 }
 
 static int ad2s1210_set_resolution_gpios(struct ad2s1210_state *st,
@@ -210,11 +220,6 @@ static int ad2s1210_set_resolution_gpios(struct ad2s1210_state *st,
 				     bitmap);
 }
 
-static inline int ad2s1210_soft_reset(struct ad2s1210_state *st)
-{
-	return regmap_write(st->regmap, AD2S1210_REG_SOFT_RESET, 0);
-}
-
 static ssize_t ad2s1210_show_fexcit(struct device *dev,
 				    struct device_attribute *attr,
 				    char *buf)
@@ -229,27 +234,24 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
 				     const char *buf, size_t len)
 {
 	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
-	unsigned int fexcit;
+	u16 fexcit;
 	int ret;
 
-	ret = kstrtouint(buf, 10, &fexcit);
-	if (ret < 0)
-		return ret;
-	if (fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT) {
-		dev_err(dev,
-			"ad2s1210: excitation frequency out of range\n");
+	ret = kstrtou16(buf, 10, &fexcit);
+	if (ret < 0 || fexcit < AD2S1210_MIN_EXCIT || fexcit > AD2S1210_MAX_EXCIT)
 		return -EINVAL;
-	}
+
 	mutex_lock(&st->lock);
-	st->fexcit = fexcit;
-	ret = ad2s1210_update_frequency_control_word(st);
+	ret = ad2s1210_set_excitation_frequency(st, fexcit);
 	if (ret < 0)
 		goto error_ret;
-	ret = ad2s1210_soft_reset(st);
+
+	ret = len;
+
 error_ret:
 	mutex_unlock(&st->lock);
 
-	return ret < 0 ? ret : len;
+	return ret;
 }
 
 static ssize_t ad2s1210_show_resolution(struct device *dev,
@@ -624,10 +626,8 @@ static int ad2s1210_initial(struct ad2s1210_state *st)
 	if (ret < 0)
 		goto error_ret;
 
-	ret = ad2s1210_update_frequency_control_word(st);
-	if (ret < 0)
-		goto error_ret;
-	ret = ad2s1210_soft_reset(st);
+	ret = ad2s1210_set_excitation_frequency(st, AD2S1210_DEF_EXCIT);
+
 error_ret:
 	mutex_unlock(&st->lock);
 	return ret;
@@ -773,7 +773,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 	mutex_init(&st->lock);
 	st->sdev = spi;
 	st->resolution = 12;
-	st->fexcit = AD2S1210_DEF_EXCIT;
 
 	ret = ad2s1210_setup_clocks(st);
 	if (ret < 0)
-- 
2.34.1


