Return-Path: <devicetree+bounces-2090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5CE7A99DE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:30:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40DE3B209C4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 18:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8688A20329;
	Thu, 21 Sep 2023 17:27:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379F5171A9
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:27:07 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F01EB1BFB
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:26:38 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-99bf3f59905so150350866b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695317196; x=1695921996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y5XZRvh5FJ3F9RXkqi8NbBrwtIOGm1RUjmAFGYn0SWM=;
        b=Br7cqd5sffikQaHKJjukCiAwWQwa7/ltvMDdL4jXBbemsTIBseW1umJJ7lyR4mh1Xs
         kyqOPTTM3Ujhsd7A3eFiRgydancMc1pnrMDhCyKpr7E+cTgwVPwvsGGspIr18VOi0iXp
         L5qhwcQVWN83/IEskH7PGv9on58J+6A8OW5O+NupPMVls01nq9qsG7Abz7MTux9fUtqM
         Ca9VEisD6EnzwySIuvb3K2xEoK9uBMQEXa05v+n1I0qJXJ4vcqzZvP9n3y14pA6ozrF0
         9VON0kUkPv5D8LO2GjsqyT/DbPrLWCfuCW8zACtowFxSeufAu0NvcWbo8l0P2PGUhBWT
         LM/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317196; x=1695921996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y5XZRvh5FJ3F9RXkqi8NbBrwtIOGm1RUjmAFGYn0SWM=;
        b=GXPZwrTuL4ctL5pqPAzx1rjZ61mDOYGp57kl7rOh9Yv4WBgMjzJlVgjhBCOf5m3mOT
         oxnj1KQ0wviKvvidJ94Y9aUtiYKJSvMFsTUyWOIKJEFVrBQATda19FgN6FFo773vfomM
         +TvjwOvysUAZIgdYrpxyUbXJEqB90vMHYsGOLG+GdbawxLqsrVbIvjTXRRkY4U9qPWlp
         2yh+gN5mbNzp0l1Z9R7Sdne2sOReuTERJ9Ip43xgAuaEwqGVOFFFh5Od9rBn2ILv2Kst
         YPhjZ6798oPzTXfTjzGiRBwQW9XdTZL84LYfEK8p9UCxbdyWvOa5Qv2ir2EbH6IRxT5K
         AbeA==
X-Gm-Message-State: AOJu0YzYtaQUcj2o2O2A4PdBkpWfYV81RjoozT3VtVRMkuQz4A4dtH/6
	Ts6TUxn3uPbRfVwsaAipaLq3wuzqJblxfcTzBE3jR+CD
X-Google-Smtp-Source: AGHT+IH08jq16ad3p4HMe9xcyB8hweATSv5qN9lzeXRVPAWw2aoHMZLAHGaB/1pFA589xCpY6igblA==
X-Received: by 2002:a5d:4289:0:b0:319:7a9f:c63 with SMTP id k9-20020a5d4289000000b003197a9f0c63mr5309192wrq.50.1695307468423;
        Thu, 21 Sep 2023 07:44:28 -0700 (PDT)
Received: from localhost.localdomain (abordeaux-655-1-129-86.w90-5.abo.wanadoo.fr. [90.5.10.86])
        by smtp.gmail.com with ESMTPSA id s17-20020a1cf211000000b003fe2a40d287sm2125515wmc.1.2023.09.21.07.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 07:44:28 -0700 (PDT)
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
Subject: [PATCH v2 18/19] staging: iio: resolver: ad2s1210: add phase_lock_range attributes
Date: Thu, 21 Sep 2023 09:43:59 -0500
Message-Id: <20230921144400.62380-19-dlechner@baylibre.com>
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
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This adds new phase_lock_range and phase_lock_range_available attributes
to the ad2s1210 resolver driver. These attributes allow the user to set
the phase lock range bit in the control register to modify the behavior
of the resolver to digital converter.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/staging/iio/resolver/ad2s1210.c | 58 +++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/iio/resolver/ad2s1210.c
index 71f0913b7e2e..f5b8b290e860 100644
--- a/drivers/staging/iio/resolver/ad2s1210.c
+++ b/drivers/staging/iio/resolver/ad2s1210.c
@@ -259,6 +259,60 @@ static ssize_t excitation_frequency_store(struct device *dev,
 	return ret;
 }
 
+static ssize_t phase_lock_range_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
+	int ret;
+
+	mutex_lock(&st->lock);
+	ret = regmap_test_bits(st->regmap, AD2S1210_REG_CONTROL,
+			       AD2S1210_PHASE_LOCK_RANGE_44);
+	if (ret < 0)
+		goto error_ret;
+
+	ret = sprintf(buf, "%d\n", ret ? 44 : 360);
+
+error_ret:
+	mutex_unlock(&st->lock);
+	return ret;
+}
+
+static ssize_t phase_lock_range_store(struct device *dev,
+				      struct device_attribute *attr,
+				      const char *buf, size_t len)
+{
+	struct ad2s1210_state *st = iio_priv(dev_to_iio_dev(dev));
+	u16 udata;
+	int ret;
+
+	ret = kstrtou16(buf, 10, &udata);
+	if (ret < 0 || (udata != 44 && udata != 360))
+		return -EINVAL;
+
+	mutex_lock(&st->lock);
+
+	ret = regmap_update_bits(st->regmap, AD2S1210_REG_CONTROL,
+				 AD2S1210_PHASE_LOCK_RANGE_44,
+				 udata == 44 ? AD2S1210_PHASE_LOCK_RANGE_44 : 0);
+	if (ret < 0)
+		goto error_ret;
+
+	ret = len;
+
+error_ret:
+	mutex_unlock(&st->lock);
+	return ret;
+}
+
+static ssize_t phase_lock_range_available_show(struct device *dev,
+					       struct device_attribute *attr,
+					       char *buf)
+{
+	return sprintf(buf, "44 360\n");
+}
+
 /* read the fault register since last sample */
 static ssize_t ad2s1210_show_fault(struct device *dev,
 				   struct device_attribute *attr, char *buf)
@@ -506,6 +560,8 @@ static int ad2s1210_write_raw(struct iio_dev *indio_dev,
 }
 
 static IIO_DEVICE_ATTR_RW(excitation_frequency, 0);
+static IIO_DEVICE_ATTR_RW(phase_lock_range, 0);
+static IIO_DEVICE_ATTR_RO(phase_lock_range_available, 0);
 static IIO_DEVICE_ATTR(fault, 0644,
 		       ad2s1210_show_fault, ad2s1210_clear_fault, 0);
 
@@ -552,6 +608,8 @@ static const struct iio_chan_spec ad2s1210_channels[] = {
 
 static struct attribute *ad2s1210_attributes[] = {
 	&iio_dev_attr_excitation_frequency.dev_attr.attr,
+	&iio_dev_attr_phase_lock_range.dev_attr.attr,
+	&iio_dev_attr_phase_lock_range_available.dev_attr.attr,
 	&iio_dev_attr_fault.dev_attr.attr,
 	&iio_dev_attr_los_thrd.dev_attr.attr,
 	&iio_dev_attr_dos_ovr_thrd.dev_attr.attr,
-- 
2.34.1


