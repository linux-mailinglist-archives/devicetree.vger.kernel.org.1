Return-Path: <devicetree+bounces-4733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5647B38B5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 688672837AC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F12D658A4;
	Fri, 29 Sep 2023 17:26:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E7E658B5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:04 +0000 (UTC)
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 711CACF2
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:01 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6c0a42a469dso8574353a34.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008360; x=1696613160; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XS50HOcpy/QoGApJtkl2RYFn1gK8dkP+DI1nE8H7bnU=;
        b=hb557TEXYQ/JGNiroi51jsyhFb7mBM/Z/gGTBJGrISnjdZZTRVQbMOBTypnHnSqMRQ
         v2ZAOWmOxmVh4aKolp/IkvHifJx8pIWXzNdPcbEA25f5YKEj5QnnaEqE8t7hC+Y9cRyN
         R1q25OXXITHXn/HOWKcHkxMcPhllIdtCMzx5txhTkfZGusl+Kusk6KZDMImkzIng1Gpt
         upiN80CrWyKWVBKy5IxrsG2qvD8AYnL3Clvvh2iquKx1yshxOp7/f3wOE5L9XHD1MbKi
         dCqAagKMPsp3zfP7Ni+X1v2uwJ3dzLNy3ac+To2qFgGZWlRtL9rDxuTGjNf5ktcwOZEu
         ZFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008360; x=1696613160;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XS50HOcpy/QoGApJtkl2RYFn1gK8dkP+DI1nE8H7bnU=;
        b=SYSCcLFBP1hc21jtse1kQmbTqvt4Ngt0DzU51NsP3McWUEbI7bETYa02VxB1ztERtm
         5MQVBthDa42MlL2hQpRC8wciTzVmzo+r8Jak+Odl3YgR7bRpPR7BMAykwljxdpKay9bX
         A7w+mECPZHSgD8K7XVmy7C5yUzEs9O3ROxx/cAHBVnpo40S980e4rhwZav0awkwgu7/q
         4fnRHUrCtOtQJP9kUGfEy1QwPghRSP9t5F+C6fJ2lIiqpuftQJWbCDC8CYlk2dhnXEwt
         4nEvn85duEWeb5yfmxr7CwSeN8WsDEt+KOeQHi8sGZrlQwrkfhq2UkBIZK9kqIKmZ4bn
         Bsyw==
X-Gm-Message-State: AOJu0YzNTs1jeFfkwB9j++mdooHidBG/xyjt9bVkPiV2SdTnGoomAJdO
	pv7I2UoNa6veQA1BI8v//pmpnQ==
X-Google-Smtp-Source: AGHT+IHLnYiy+7PPix22DynFrPx1RUsq+t82qdrnF7e2G+kZP1wzIwVXe3GJzaQug4eHhVHYJweBOA==
X-Received: by 2002:a05:6830:1555:b0:6c4:948d:a957 with SMTP id l21-20020a056830155500b006c4948da957mr5755655otp.3.1696008360460;
        Fri, 29 Sep 2023 10:26:00 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:26:00 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
To: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-staging@lists.linux.dev
Cc: David Lechner <david@lechnology.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	=?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
	Axel Haslam <ahaslam@baylibre.com>,
	Philip Molloy <pmolloy@baylibre.com>,
	linux-kernel@vger.kernel.org,
	David Lechner <dlechner@baylibre.com>
Subject: [PATCH v3 15/27] staging: iio: resolver: ad2s1210: refactor setting excitation frequency
Date: Fri, 29 Sep 2023 12:23:20 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-15-fa4364281745@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.12.3
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

This combines the ad2s1210_update_frequency_control_word() and
ad2s1210_soft_reset() functions into a single function since they
both have to be called together. (The software reset does not reset
any configuration registers, it only updates the excitation output
and resets the tracking loop.)

Also clean up a few things while touching this:
- move AD2S1210_DEF_EXCIT macro with similar macros
- remove unnecessary dev_err() calls

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* Expanded comment on soft reset register write.
* Fixed multiline comment style.

 drivers/staging/iio/resolver/ad2s1210.c | 66 +++++++++++++++++----------------
 1 file changed, 34 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index a82cb124a12f..28ab877e1bc0 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -51,12 +51,11 @@
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
@@ -188,18 +187,32 @@ static int ad2s1210_regmap_reg_read(void *context, unsigned int reg,
 	return 0;
 }
 
-static inline
-int ad2s1210_update_frequency_control_word(struct ad2s1210_state *st)
+/*
+ * Sets the excitation frequency and performs software reset.
+ *
+ * Must be called with lock held.
+ */
+static int ad2s1210_reinit_excitation_frequency(struct ad2s1210_state *st,
+						u16 fexcit)
 {
-	unsigned char fcw;
+	int ret;
+	u8 fcw;
 
-	fcw = (unsigned char)(st->fexcit * (1 << 15) / st->clkin_hz);
-	if (fcw < AD2S1210_MIN_FCW || fcw > AD2S1210_MAX_FCW) {
-		dev_err(&st->sdev->dev, "ad2s1210: FCW out of range\n");
+	fcw = fexcit * (1 << 15) / st->clkin_hz;
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
+	/*
+	 * Software reset reinitializes the excitation frequency output.
+	 * It does not reset any of the configuration registers.
+	 */
+	return regmap_write(st->regmap, AD2S1210_REG_SOFT_RESET, 0);
 }
 
 static int ad2s1210_set_resolution_gpios(struct ad2s1210_state *st,
@@ -214,11 +227,6 @@ static int ad2s1210_set_resolution_gpios(struct ad2s1210_state *st,
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
@@ -233,27 +241,24 @@ static ssize_t ad2s1210_store_fexcit(struct device *dev,
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
+	ret = ad2s1210_reinit_excitation_frequency(st, fexcit);
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
@@ -630,10 +635,8 @@ static int ad2s1210_initial(struct ad2s1210_state *st)
 	if (ret < 0)
 		goto error_ret;
 
-	ret = ad2s1210_update_frequency_control_word(st);
-	if (ret < 0)
-		goto error_ret;
-	ret = ad2s1210_soft_reset(st);
+	ret = ad2s1210_reinit_excitation_frequency(st, AD2S1210_DEF_EXCIT);
+
 error_ret:
 	mutex_unlock(&st->lock);
 	return ret;
@@ -778,7 +781,6 @@ static int ad2s1210_probe(struct spi_device *spi)
 	mutex_init(&st->lock);
 	st->sdev = spi;
 	st->resolution = 12;
-	st->fexcit = AD2S1210_DEF_EXCIT;
 
 	ret = ad2s1210_setup_clocks(st);
 	if (ret < 0)

-- 
2.42.0


