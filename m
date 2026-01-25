Return-Path: <devicetree+bounces-259250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGxMDIQedmn2LwEAu9opvQ
	(envelope-from <devicetree+bounces-259250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:45:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D2380D1C
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 14:45:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 579E3300ECBD
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 13:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80AD23242BA;
	Sun, 25 Jan 2026 13:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PGliBi65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64693242B1
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769348607; cv=none; b=gUXcgBZn5yVnKtMAmF9qgf9d4oqfv/eXNsg5KnKNCLVOJOpUzapJ6/eo/SiTONNOjXSFsbu5ctl5E4FO+jPr7wk1SWCFeVAhEY7PeJpmxaBTDngIIcWX4qssgYgGKrrKZV1VF7RpWl8IJMyiOJbqoGaUTuEGnDR4UwfqoxZJfRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769348607; c=relaxed/simple;
	bh=UpT9w/j7zvETDPr3pit94FmYLQ42Xbc6IpVqIuRWkm8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZcTHexylCLLbS6I2SQgY5hTrLolbWUSwx0+2+TYRQ6WDO7oF3lFAYBzVpKTax0pMTbLxnPTqev9dOYzcvXsiTEivdtE9RmA1XlLcQ59yHuWsRbrFXOTDxmBwaOUBtGyxQKN/G2OH7vl3tSWDfOWcadcfMrYZ2FcTv0lOg3DDgBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PGliBi65; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-435a11957f6so3055611f8f.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769348604; x=1769953404; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ee1LhLt59IQBOhKFGdg8xp5N7suKg45Yt/yHFoSdDPo=;
        b=PGliBi65kNX3NrDkikj9jo1gtjw1tZ49ragVXBs7VKYRH/yU0fsvsavM7itKgul1Zd
         Y9NoK0GQI78Ny4rm/FKNRZrLQ0lSlWTjszm08rf3oJ3hKOxscedMuq0/2ED8afHpBuuV
         jPvpl1N62K0NvrH1sYcNccDAn4KGcqOebMvZqVHo4McPwF6l3coYVddMsxi114dq7Ozj
         nRKP28J9dlq39Qzmn7UIeRc5ieVAoS6SLmKheXO4/evnDuTHztSssZFK2vu2E8Jmo8xA
         mhtVuNQWEiBlMXvMCAPdFrbsqk+6zoOnLcES/akk/MRu2c1C9oRv/ae/UwyJoPPX3qJ1
         TBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769348604; x=1769953404;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ee1LhLt59IQBOhKFGdg8xp5N7suKg45Yt/yHFoSdDPo=;
        b=AlQIgc5xP/Q/JJDkiywozYiBCyvwjqLS3eJsMxTklMy7E0kRm0Fvz3zstXJw3cQbGH
         pjuQ7lNDWaJ2SB2OKi+blmGAT/nglVK+XY9rxT9D8zbafnLJ77KyLVEIQsyPc9qArlDA
         H5nta+YUPU7nM8sv/GoUKb8/cDhYsxrUX/GExnK1DISg++shSS0SG/24EMCNYWiSQn/f
         DjmioSXCtcwYQ/2psJvjmk3jgFg/rTkC7DaQUPg8Z75XO9oL34z8tvwMeqtttMhnDDPZ
         BvhQtOrBpYtg46IhuIPWmOyJ3LzvU9833rrKMsQKWRWFcxzfxhyTSA2MQi5/XPgMSHyQ
         HdXg==
X-Forwarded-Encrypted: i=1; AJvYcCUwpOhyEyUdMMwEebLWYGCrV04LHUZFP/1Kf9kVUi65jCbQhgYnrpeN+ixFYp3SNbh+HM4y38AElKIq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3WD8kHW84Ik7PvW2KvOoX9uTbnoTeL9iKZkmjB8Cbn3AraqC4
	wSdW4VWVLnnDjkbEUFVU06y+nsiCINJ26Gpkoeql7OKcglG+aLl1LnA+
X-Gm-Gg: AZuq6aJx05vVuPgnocwcV/zEZavTgZFmT9rV+dd/VfVp0e9Dp0JJZ1RtzMXa4eoZ0wT
	uFHKJwtw3gQSGIX4VqjvEy5UZv2BLN40yWnE5r6QbBWbhf6Xnh9KDG1A+eYLLVwiImCeDNbAspX
	7Lx2JkKQhiR8aHQDoVnlEWXX6nddgbjxj53aD4itYE6Em6t4nm0mmy7tqL87rkc76y+gFybgcGb
	8jzyfiA68Oj6x3tAjyM/RlCMjsl34RbH9GLgtceoePqmpEp5IocBRkpohrJFDA0gzPPXYj4g2BV
	6OgSe/ph3jhXs3fECzXSQslYsUUyTQewJnuxEBtVDf7C2HS2kJfkqvLC5Mti4gNy7dBPcMm02wK
	OPgr8blZMiYfK2Ug0pS2YJsONAoTyqR30S1Ym7i83xiBQ9vV9Ztv65W5ZsG7BHOLBHr7uSoWiw1
	CKzuoANJDIa0I=
X-Received: by 2002:a5d:5849:0:b0:435:b020:30ab with SMTP id ffacd0b85a97d-435ca0fbbfemr3062531f8f.15.1769348603864;
        Sun, 25 Jan 2026 05:43:23 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1c246ecsm22459688f8f.10.2026.01.25.05.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 05:43:23 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v1 10/10] mfd: motorola-cpcap: add support for Mot CPCAP composition
Date: Sun, 25 Jan 2026 15:43:02 +0200
Message-ID: <20260125134302.45958-11-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260125134302.45958-1-clamor95@gmail.com>
References: <20260125134302.45958-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259250-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,bootlin.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E3D2380D1C
X-Rspamd-Action: no action

Add a MFD subdevice composition used in Tegra20 based Mot board
(Motorola Atrix 4G and Droid X2).

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/mfd/motorola-cpcap.c | 45 ++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/mfd/motorola-cpcap.c b/drivers/mfd/motorola-cpcap.c
index ebe525153c33..c475eef30f22 100644
--- a/drivers/mfd/motorola-cpcap.c
+++ b/drivers/mfd/motorola-cpcap.c
@@ -206,6 +206,7 @@ static const struct spi_device_id cpcap_spi_ids[] = {
 	{ .name = "cpcap", },
 	{ .name = "6556002", },
 	{ .name = "mapphone-cpcap", },
+	{ .name = "mot-cpcap", },
 	{},
 };
 MODULE_DEVICE_TABLE(spi, cpcap_spi_ids);
@@ -343,6 +344,49 @@ static const struct cpcap_chip_data cpcap_mapphone_data = {
 	.num_devices = ARRAY_SIZE(cpcap_mapphone_mfd_devices),
 };
 
+/*
+ * Mot has usb-phy and charger similar to one in mapphone, but
+ * since Mot is based on Tegra20 it is incompatible with existing
+ * implementation.
+ */
+static const struct mfd_cell cpcap_mot_mfd_devices[] = {
+	{
+		.name          = "cpcap_adc",
+		.of_compatible = "motorola,mot-cpcap-adc",
+	}, {
+		.name          = "cpcap_battery",
+		.of_compatible = "motorola,cpcap-battery",
+	}, {
+		.name          = "cpcap-regulator",
+		.of_compatible = "motorola,mot-cpcap-regulator",
+	}, {
+		.name          = "cpcap-rtc",
+		.of_compatible = "motorola,cpcap-rtc",
+	}, {
+		.name          = "cpcap-pwrbutton",
+		.of_compatible = "motorola,cpcap-pwrbutton",
+	}, {
+		.name          = "cpcap-led",
+		.id            = 0,
+		.of_compatible = "motorola,cpcap-led-red",
+	}, {
+		.name          = "cpcap-led",
+		.id            = 1,
+		.of_compatible = "motorola,cpcap-led-green",
+	}, {
+		.name          = "cpcap-led",
+		.id            = 2,
+		.of_compatible = "motorola,cpcap-led-blue",
+	}, {
+		.name          = "cpcap-codec",
+	},
+};
+
+static const struct cpcap_chip_data cpcap_mot_data = {
+	.mfd_devices = cpcap_mot_mfd_devices,
+	.num_devices = ARRAY_SIZE(cpcap_mot_mfd_devices),
+};
+
 static int cpcap_probe(struct spi_device *spi)
 {
 	struct cpcap_ddata *cpcap;
@@ -398,6 +442,7 @@ static const struct of_device_id cpcap_of_match[] = {
 	{ .compatible = "motorola,cpcap", .data = &cpcap_default_data },
 	{ .compatible = "st,6556002", .data = &cpcap_default_data },
 	{ .compatible = "motorola,mapphone-cpcap", .data = &cpcap_mapphone_data	},
+	{ .compatible = "motorola,mot-cpcap", .data = &cpcap_mot_data },
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, cpcap_of_match);
-- 
2.51.0


