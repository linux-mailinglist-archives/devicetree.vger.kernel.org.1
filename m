Return-Path: <devicetree+bounces-4736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 740AA7B38B8
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 19:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2522E2848CB
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 17:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80F2F658BA;
	Fri, 29 Sep 2023 17:26:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11E751B88
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 17:26:07 +0000 (UTC)
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC37A10F5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:04 -0700 (PDT)
Received: by mail-oo1-xc2c.google.com with SMTP id 006d021491bc7-57b8a0f320dso6104327eaf.1
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 10:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696008364; x=1696613164; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tS7YI5TT8iCzu0xP6mOTzyE+I46GD7w3qWGpHwQJ6RA=;
        b=u8DAV03po0VhYIXAeiU6oYih2WwqcR/F+EDTU2F3oU0KlyIqu8fhvVHNIMEj7bEXFu
         4qK7S/c6hfI0b9aFHf1jda+H6ZB2jxVVCwT+LNksvaAYxcDCMloxq74kiWKGdnqenHm5
         zLpKgWsvAARQ1jxgdy6HSETuTRKpfc7bs2J14fI0jDL5eJDUUNdrksniMrqzQAUdDFZ8
         d02idAhkDJxzi+RkzS+PS8j1AFlg1J/Jar2KSoMCo1LzkFsgmTX17q/eCTqCjx9ouH5J
         vPpM9hd7Lfv0ePK1dzQulF3L3odFkR45YfaTL38zV8kymg8fotVoxrvPdlVdyYd6YqCc
         AhBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696008364; x=1696613164;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tS7YI5TT8iCzu0xP6mOTzyE+I46GD7w3qWGpHwQJ6RA=;
        b=GxOX02ySK5Jm5zs1oa6xaPReKjS3HvoaoNDehrCZzpxIDdJhwNoiBkOZnLWre2JWCa
         7Qev8kqa3R5K4oz8sxVNxskrGzAx4HODSQ8uOiQfDe5ru+XtOkbHRYg9/E6/GOq435uQ
         r3+Ret/kUSBU3pgFh9V+S58ZPimU+NOhSMOY+PHGzZUGgZpJneUEiStKeGbfeUprVWWw
         vbi4irTzh/gvFvCfqSnzb2QLhJmMXf0MBNoufFYN2VxWK6NKHh9wIcISEX1v6sGGLtZ0
         /PpZyPdsKjxwsPiweWqouWApPZdAyaM8pqFtZMl6TleVxW6hq5bRZzLmDxPBd3Km8muy
         F1nQ==
X-Gm-Message-State: AOJu0YxIC9CTxEQH7OY9rGeILEHJhUpQ8TsDqZfDfG+ijdm+x4932RjP
	d5SxBqDIxfAO843euNEEMp9ytvqaymwLG3fF9ZDD6A==
X-Google-Smtp-Source: AGHT+IF8yMVQ9f1c2mTbSnFqWqf+fD9+4/2EDkW6CPt/1JR7WinyHfvnNtPwWAbK6Tyixz85c/NRLg==
X-Received: by 2002:a4a:6c47:0:b0:57b:cbc2:79ff with SMTP id u7-20020a4a6c47000000b0057bcbc279ffmr4437306oof.4.1696008364006;
        Fri, 29 Sep 2023 10:26:04 -0700 (PDT)
Received: from freyr.lechnology.com (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id f128-20020a4a5886000000b0057bb326cad4sm2272915oob.33.2023.09.29.10.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 10:26:03 -0700 (PDT)
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
Subject: [PATCH v3 19/27] staging: iio: resolver: ad2s1210: add phase lock range support
Date: Fri, 29 Sep 2023 12:23:24 -0500
Message-ID: <20230929-ad2s1210-mainline-v3-19-fa4364281745@baylibre.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: David Lechner <david@lechnology.com>

From: David Lechner <dlechner@baylibre.com>

The AD2S1210 chip has a phase lock range feature that allows selecting
the allowable phase difference between the excitation output and the
sine and cosine inputs. This can be set to either 44 degrees (default)
or 360 degrees.

This patch adds a new phase channel with a threshold event that can be
used to configure the phase lock range. Actually emitting the event
will be added in a subsequent patch.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---

v3 changes:
* This is a new patch to replace "staging: iio: resolver: ad2s1210: add
 phase_lock_range attributes"

 drivers/staging/iio/resolver/ad2s1210.c | 125 ++++++++++++++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index a0a426d0af19..bafc134eed97 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -56,6 +56,13 @@
 #define AD2S1210_MIN_FCW	0x4
 #define AD2S1210_MAX_FCW	0x50
 
+/* 44 degrees ~= 0.767945 radians */
+#define PHASE_44_DEG_TO_RAD_INT 0
+#define PHASE_44_DEG_TO_RAD_MICRO 767945
+/* 360 degrees ~= 6.283185 radians */
+#define PHASE_360_DEG_TO_RAD_INT 6
+#define PHASE_360_DEG_TO_RAD_MICRO 283185
+
 enum ad2s1210_mode {
 	MOD_POS = 0b00,
 	MOD_VEL = 0b01,
@@ -376,6 +383,54 @@ static int ad2s1210_set_hysteresis(struct ad2s1210_state *st, int val)
 	return ret;
 }
 
+static int ad2s1210_get_phase_lock_range(struct ad2s1210_state *st,
+					 int *val, int *val2)
+{
+	int ret;
+
+	mutex_lock(&st->lock);
+	ret = regmap_test_bits(st->regmap, AD2S1210_REG_CONTROL,
+			       AD2S1210_PHASE_LOCK_RANGE_44);
+	mutex_unlock(&st->lock);
+
+	if (ret < 0)
+		return ret;
+
+	if (ret) {
+		/* 44 degrees as radians */
+		*val = PHASE_44_DEG_TO_RAD_INT;
+		*val2 = PHASE_44_DEG_TO_RAD_MICRO;
+	} else {
+		/* 360 degrees as radians */
+		*val = PHASE_360_DEG_TO_RAD_INT;
+		*val2 = PHASE_360_DEG_TO_RAD_MICRO;
+	}
+
+	return IIO_VAL_INT_PLUS_MICRO;
+}
+
+static int ad2s1210_set_phase_lock_range(struct ad2s1210_state *st,
+					 int val, int val2)
+{
+	int deg, ret;
+
+	/* convert radians to degrees - only two allowable values */
+	if (val == PHASE_44_DEG_TO_RAD_INT && val2 == PHASE_44_DEG_TO_RAD_MICRO)
+		deg = 44;
+	else if (val == PHASE_360_DEG_TO_RAD_INT &&
+		 val2 == PHASE_360_DEG_TO_RAD_MICRO)
+		deg = 360;
+	else
+		return -EINVAL;
+
+	mutex_lock(&st->lock);
+	ret = regmap_update_bits(st->regmap, AD2S1210_REG_CONTROL,
+				 AD2S1210_PHASE_LOCK_RANGE_44,
+				 deg == 44 ? AD2S1210_PHASE_LOCK_RANGE_44 : 0);
+	mutex_unlock(&st->lock);
+	return ret;
+}
+
 static int ad2s1210_get_excitation_frequency(struct ad2s1210_state *st, int *val)
 {
 	unsigned int reg_val;
@@ -547,6 +602,16 @@ static IIO_DEVICE_ATTR(lot_low_thrd, 0644,
 		       ad2s1210_show_reg, ad2s1210_store_reg,
 		       AD2S1210_REG_LOT_LOW_THRD);
 
+static const struct iio_event_spec ad2s1210_phase_event_spec[] = {
+	{
+		/* Phase error fault. */
+		.type = IIO_EV_TYPE_MAG,
+		.dir = IIO_EV_DIR_NONE,
+		/* Phase lock range. */
+		.mask_separate = BIT(IIO_EV_INFO_VALUE),
+	},
+};
+
 static const struct iio_chan_spec ad2s1210_channels[] = {
 	{
 		.type = IIO_ANGL,
@@ -563,6 +628,14 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 		.channel = 0,
 		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
 				      BIT(IIO_CHAN_INFO_SCALE),
+	}, {
+		/* used to configure phase lock range and get phase lock error */
+		.type = IIO_PHASE,
+		.indexed = 1,
+		.channel = 0,
+		.scan_index = -1,
+		.event_spec = ad2s1210_phase_event_spec,
+		.num_event_specs = ARRAY_SIZE(ad2s1210_phase_event_spec),
 	}, {
 		/* excitation frequency output */
 		.type = IIO_ALTVOLTAGE,
@@ -591,6 +664,21 @@ static const struct attribute_group ad2s1210_attribute_group = {
 	.attrs = ad2s1210_attributes,
 };
 
+IIO_CONST_ATTR(in_phase0_mag_value_available,
+	       __stringify(PHASE_44_DEG_TO_RAD_INT) "."
+	       __stringify(PHASE_44_DEG_TO_RAD_MICRO) " "
+	       __stringify(PHASE_360_DEG_TO_RAD_INT) "."
+	       __stringify(PHASE_360_DEG_TO_RAD_MICRO));
+
+static struct attribute *ad2s1210_event_attributes[] = {
+	&iio_const_attr_in_phase0_mag_value_available.dev_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group ad2s1210_event_attribute_group = {
+	.attrs = ad2s1210_event_attributes,
+};
+
 static int ad2s1210_initial(struct ad2s1210_state *st)
 {
 	unsigned char data;
@@ -615,6 +703,40 @@ static int ad2s1210_initial(struct ad2s1210_state *st)
 	return ret;
 }
 
+static int ad2s1210_read_event_value(struct iio_dev *indio_dev,
+				     const struct iio_chan_spec *chan,
+				     enum iio_event_type type,
+				     enum iio_event_direction dir,
+				     enum iio_event_info info,
+				     int *val, int *val2)
+{
+	struct ad2s1210_state *st = iio_priv(indio_dev);
+
+	switch (chan->type) {
+	case IIO_PHASE:
+		return ad2s1210_get_phase_lock_range(st, val, val2);
+	default:
+		return -EINVAL;
+	}
+}
+
+static int ad2s1210_write_event_value(struct iio_dev *indio_dev,
+				      const struct iio_chan_spec *chan,
+				      enum iio_event_type type,
+				      enum iio_event_direction dir,
+				      enum iio_event_info info,
+				      int val, int val2)
+{
+	struct ad2s1210_state *st = iio_priv(indio_dev);
+
+	switch (chan->type) {
+	case IIO_PHASE:
+		return ad2s1210_set_phase_lock_range(st, val, val2);
+	default:
+		return -EINVAL;
+	}
+}
+
 static int ad2s1210_debugfs_reg_access(struct iio_dev *indio_dev,
 				       unsigned int reg, unsigned int writeval,
 				       unsigned int *readval)
@@ -635,10 +757,13 @@ static int ad2s1210_debugfs_reg_access(struct iio_dev *indio_dev,
 }
 
 static const struct iio_info ad2s1210_info = {
+	.event_attrs = &ad2s1210_event_attribute_group,
 	.read_raw = ad2s1210_read_raw,
 	.read_avail = ad2s1210_read_avail,
 	.write_raw = ad2s1210_write_raw,
 	.attrs = &ad2s1210_attribute_group,
+	.read_event_value = ad2s1210_read_event_value,
+	.write_event_value = ad2s1210_write_event_value,
 	.debugfs_reg_access = &ad2s1210_debugfs_reg_access,
 };
 

-- 
2.42.0


