Return-Path: <devicetree+bounces-326479-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id roy5NYeSVmrt9gAAu9opvQ
	(envelope-from <devicetree+bounces-326479-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:48:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B09CA75873E
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:48:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=gjPZq8Cu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326479-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326479-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3BF6C3042CEF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:47:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E12F443550B;
	Tue, 14 Jul 2026 19:47:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CC73DE45C
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 19:47:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784058461; cv=none; b=F/NadrlQZl3pyWZmoCOqTx8YyzvS4RhTJ84VWlu8Et3d1RCSZotygyo1vdBE6RdgPBpOIzO4nyUwzc+/Ax1HJavtEuO9ulAtPPK7i+LjWOn7lbpUohj44Dq+ZC2IR9udz2pVFtY1ek5tktYWTpQ3S4DUo2Q9UujQRYEM34RuToo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784058461; c=relaxed/simple;
	bh=L5cKDZ3oZuREEsG/FL4nnHJOHClGwu35C6UP+h/6c9s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Oe7Q+5VXbWqi7qv7/QwOpw9CkoYbkHlqRJ60FXb/taqgYZmrfLKahQwUPXY/5d4MIRJWUT6ua1gHoTjJg/qiM1fwYQn0DB+NQKerh1jgjwt31EV/VeYnybu8+qzBQk6QHm681IIHFXGkKtpwGNJ3qcLaaau2HdigC/CpCyQKifI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gjPZq8Cu; arc=none smtp.client-ip=209.85.167.47
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5b0f19bea2fso1334302e87.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 12:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784058457; x=1784663257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7F0XFPsWY8E1IJTSA8IwnIWALBfCdqYZnCek7z6Ufx4=;
        b=gjPZq8CuPlLCIa3fzC+IHNZ7nHmi9rMToMCcFQ5fBoJJhjaFB61tbUl6jDrld5x3PR
         qm148FrGD7PXyWsP3x6C+Qw2Xb13H6YXUdeKiuwFfs4HdOS/SkN5vbt1277Y+R8uw/uh
         I8S38kOjvkbMaDsiHqp1EXnYB52Wq4o49A9P7aTzhkmuWyrz59CF/rgjFu2ubUifHu3Q
         EJfKyaZoidtLvPU9bBS6UVoXJ1sgRoMLoJG9ES2DIDadEABdcxe6Wt1rT+1NCkFFrtMd
         6k0+orTgNaEbO4KzKYNWRWh3RNoo81ItheQ1ANiEEmU1MChwLSQ//n+73n2QrNwbst92
         SjEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784058457; x=1784663257;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=7F0XFPsWY8E1IJTSA8IwnIWALBfCdqYZnCek7z6Ufx4=;
        b=iWgnwG8O9qzuz8mq7Ms73YBpm8vlLA7+maaGAlumi8VgT5onXghv3F25QAtgiFle7X
         xJEMY8Wmw3o2e3QX1hPkydaAZ8YEWIPxsgx/t63QinNmQLAn4ZWDQ8VY2jve2MKxZY+M
         JVUrhBTzV4oFIkP6mKY3SjqXU0sgdor3527/GdHukyJQ5Tgan2WNCMwmuaotySFPWpNt
         lVojGJwMu0deS1XwVB58kMSGlm4Ze2su+FIcsdaop3Od3gd+ByWuC/bQDfadzuHFB+Nb
         xoNiNM5F6Hy2zbgilHtZpWD7viahjSpoFp0uh7aOfig/X4HcfW/VznDQYhbj1L2761Rf
         0ekA==
X-Forwarded-Encrypted: i=1; AHgh+RpubD+yRmOir0IkVOVVdbS3pIEssgEkcrJvCkyUlW5UqUFBhXxMat+JgJ9DNCBIZvIamJxi/U6CJZm3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv5klqyw+STl4TU2cd82tAabj2jySaqx5i83LbOh6iN3aqdNWk
	ANT3DwJllyFIHdJLIMrR0MQqWXksIwNGEDDHeJK3akuHlxadvJrMykvJ
X-Gm-Gg: AfdE7clISDolsneG9ALaUkFLhN89mQNG/rWQQZ9FoK+k1IsIUCfsKpvU+/80TIwPigp
	0yB2HWizM/gkgpkDdSinqa8Hae4t3Z1QteFxFAQiPQCt7FdkBb0hfNUTD9twFgTKRhVqfL3TmXi
	c+qkEiy2yoPuR3OcIPmLY7lnBQIpp7kNgPZUcZbr8mQSZdjqamtglWA5WG7QpXQA+qkyll6vglN
	VQ1B1kuCv+NhV6C0S2/eUGIzoKnPxr8VjK2qHys1twtTSw/ysZXYJtoLLnyn+Zpk19RZUTTAjAD
	v6G/qov/WGdKu7YsadeU2V5PxvshUkek0CnUk6s5qoJ0rY4dsK7lqIe91RRseSCqIqXInoV4f7z
	ttm6x8IKYl5vTxQ7WeRw3wIv23MHAzWAak6MS9rfLldX8Y/TR7ntD0eP3UmJfahuEg0yNg3LE0x
	cKyBG5kHToQajIsxJH38V+Gi7EZRR/MLj3pUdHnO49S9T0BOSSTwIyevhwIA==
X-Received: by 2002:a05:6512:3345:b0:5b0:1959:d877 with SMTP id 2adb3069b0e04-5b023698daemr3222763e87.41.1784058456644;
        Tue, 14 Jul 2026 12:47:36 -0700 (PDT)
Received: from MSI-LINUX.kielce.vectranet.pl ([2a02:2a40:27ec:2900:822e:374d:22e8:16cf])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b01ca50a8esm3780287e87.28.2026.07.14.12.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:47:36 -0700 (PDT)
From: Jakub Szczudlo <jakubszczudlo40@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	marcelo.schmitt@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mike.looijmans@topic.nl,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	jorge.marques@analog.com,
	antoniu.miclaus@analog.com,
	mazziesaccount@gmail.com,
	jishnu.prakash@oss.qualcomm.com,
	duje@dujemihanovic.xyz,
	wens@kernel.org,
	sakari.ailus@linux.intel.com,
	linusw@kernel.org,
	Jakub Szczudlo <jakubszczudlo40@gmail.com>
Subject: [PATCH v7 1/3] iio: adc: ti-ads1100: Fix incorrect reading when datarate changed in single mode
Date: Tue, 14 Jul 2026 21:47:15 +0200
Message-ID: <20260714194717.596193-2-jakubszczudlo40@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714194717.596193-1-jakubszczudlo40@gmail.com>
References: <20260714194717.596193-1-jakubszczudlo40@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326479-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,topic.nl,vger.kernel.org,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,linux.intel.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mike.looijmans@topic.nl,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jorge.marques@analog.com,m:antoniu.miclaus@analog.com,m:mazziesaccount@gmail.com,m:jishnu.prakash@oss.qualcomm.com,m:duje@dujemihanovic.xyz,m:wens@kernel.org,m:sakari.ailus@linux.intel.com,m:linusw@kernel.org,m:jakubszczudlo40@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jakubszczudlo40@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B09CA75873E

When device is suspended and it is in single mode then changing
datarate doesn't make it actually wait for a new measurement, so to
be sure that read after change is correct functions that changes
datarate and gain will wait for new data.

Fixes: 541880542f2b ("iio: adc: Add TI ADS1100 and ADS1000")
Signed-off-by: Jakub Szczudlo <jakubszczudlo40@gmail.com>
---
 drivers/iio/adc/ti-ads1100.c | 71 ++++++++++++++++++++++++++++++++++--
 1 file changed, 67 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/ti-ads1100.c b/drivers/iio/adc/ti-ads1100.c
index 9fe8d54cce83..f0a30ae139af 100644
--- a/drivers/iio/adc/ti-ads1100.c
+++ b/drivers/iio/adc/ti-ads1100.c
@@ -15,10 +15,12 @@
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/i2c.h>
+#include <linux/iopoll.h>
 #include <linux/mutex.h>
 #include <linux/property.h>
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
+#include <linux/time.h>
 #include <linux/units.h>
 
 #include <linux/iio/iio.h>
@@ -43,6 +45,9 @@
 static const int ads1100_data_rate[] = { 128, 32, 16, 8 };
 static const int ads1100_data_rate_bits[] = { 12, 14, 15, 16 };
 
+/* Timeout based on the minimum sample rate of 8 SPS (7500ms) */
+#define ADS1100_MAX_DRDY_TIMEOUT_US	(7500 * USEC_PER_MSEC)
+
 struct ads1100_data {
 	struct i2c_client *client;
 	struct regulator *reg_vdd;
@@ -123,10 +128,50 @@ static int ads1100_get_adc_result(struct ads1100_data *data, int chan, int *val)
 	return 0;
 }
 
+static int ads1100_new_data_is_ready(struct ads1100_data *data)
+{
+	u8 buffer[3];
+	int ret;
+
+	ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
+	if (ret < 0) {
+		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
+		return ret;
+	}
+
+	return FIELD_GET(ADS1100_CFG_ST_BSY, buffer[2]);
+}
+
+static int ads1100_poll_data_ready(struct ads1100_data *data)
+{
+	int data_rate_Hz = ads1100_data_rate[FIELD_GET(ADS1100_DR_MASK, data->config)];
+	/* To be sure we wait 5 times more than data rate */
+	unsigned long wait_time_us = DIV_ROUND_CLOSEST(USEC_PER_SEC, 5 * data_rate_Hz);
+	int data_ready;
+	u8 buffer[3];
+	int ret;
+
+	/* To be sure that polled value will have value after config change */
+	ret = i2c_master_recv(data->client, (char *)&buffer, sizeof(buffer));
+	if (ret < 0) {
+		dev_err(&data->client->dev, "I2C read fail: %d\n", ret);
+		return ret;
+	}
+
+	ret = readx_poll_timeout(ads1100_new_data_is_ready, data,
+				 data_ready, data_ready != 0,
+				 wait_time_us, ADS1100_MAX_DRDY_TIMEOUT_US);
+	if (ret)
+		return ret;
+
+	return data_ready < 0 ? data_ready : 0;
+}
+
 static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
 {
 	int microvolts;
 	int gain;
+	int ret;
 
 	/* With Vdd between 2.7 and 5V, the scale is always below 1 */
 	if (val)
@@ -135,6 +180,11 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
 	if (!val2)
 		return -EINVAL;
 
+	PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND(&data->client->dev, pm);
+	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
+	if (ret)
+		return ret;
+
 	microvolts = regulator_get_voltage(data->reg_vdd);
 	/*
 	 * val2 is in 'micro' units, n = val2 / 1000000
@@ -149,22 +199,35 @@ static int ads1100_set_scale(struct ads1100_data *data, int val, int val2)
 
 	ads1100_set_config_bits(data, ADS1100_PGA_MASK, ffs(gain) - 1);
 
-	return 0;
+	return ads1100_poll_data_ready(data);
 }
 
 static int ads1100_set_data_rate(struct ads1100_data *data, int chan, int rate)
 {
 	unsigned int i;
 	unsigned int size;
+	int ret;
 
 	size = data->supports_data_rate ? ARRAY_SIZE(ads1100_data_rate) : 1;
 	for (i = 0; i < size; i++) {
 		if (ads1100_data_rate[i] == rate)
-			return ads1100_set_config_bits(data, ADS1100_DR_MASK,
-						       FIELD_PREP(ADS1100_DR_MASK, i));
+			break;
 	}
 
-	return -EINVAL;
+	if (i == size)
+		return -EINVAL;
+
+	PM_RUNTIME_ACQUIRE_IF_ENABLED_AUTOSUSPEND(&data->client->dev, pm);
+	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
+	if (ret)
+		return ret;
+
+	ret = ads1100_set_config_bits(data, ADS1100_DR_MASK,
+				      FIELD_PREP(ADS1100_DR_MASK, i));
+	if (ret)
+		return ret;
+
+	return ads1100_poll_data_ready(data);
 }
 
 static int ads1100_get_vdd_millivolts(struct ads1100_data *data)
-- 
2.47.3


