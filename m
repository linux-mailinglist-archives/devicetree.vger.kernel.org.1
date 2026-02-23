Return-Path: <devicetree+bounces-267254-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0A2dOZ72m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267254-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:41:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 311AF17241F
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:41:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5328C302D68B
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A6834D4C4;
	Mon, 23 Feb 2026 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f0ibKSP0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E1E34CFCC
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:39:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771828762; cv=none; b=hDltTsriRg2I/FydEU/mXkWFi2q3+CnduqJIcALRXtXfRUMPuh5gs26YGmjnaBBLy/XDie6kZ7R8cPvK2emKQ6uZR1U1MARmRQYSO9PXABRSeEdwZzPshYGo7kY25odN5Wjg0t06pn6S3f6FFxLNZMMQRycv4W38wWqTTDr1qHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771828762; c=relaxed/simple;
	bh=w1dOcGnTI59GCQNhwQP6xzsT4wAulf/UcemmHchCPqw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Nb3rF6Ofoy3lbgZ9wg0bma4R/V2mwtcpjaSArBeMy6EE8pyHI1vr+klfnorlYCFwNGumDUaURaympG3GnDgfkHDkANsRU/ezSmALEIgmNRADJAC9IaO2+2G4a4YuxuRXxxAXj3/b2rLlal9V7XCgE9Ky3XakehUGXN/ZRT4syzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f0ibKSP0; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59e6491f1a2so4475630e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771828759; x=1772433559; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=53/v+YSG+6GYj3ywOiaHOLUwr98tdqBSh9I2cLizLtg=;
        b=f0ibKSP0dwzXK+4RfhsT8IpnMocD9TxUq6oA+aGb1zhapqZ6janqOw6DQ9JSWCtAGn
         q5nVGDfpwa8FefRE+L1/yzP6L9WF9AEhibRLwQOsYjfA9ADLi4s9MxNk+4i+hRikZzsw
         AP02+DJTOjIDI6CrZkAptFidveeusuj3hkVK+XzKHg7BIYnemYZCEvN+EPHm8m7nVp9I
         UUONbwGQM9qiSbCxPwfUF1IQwylO2kX4Hc3KaNM7AVgTBVEAIybsTYkvmCOxLjCz96QM
         RiBhcmvW1swEvOrhKCInRzB0mo8L07RD2vmnjLHC83fs5HaAy7RWATQnknKy/8fpIP7v
         ef/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771828759; x=1772433559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=53/v+YSG+6GYj3ywOiaHOLUwr98tdqBSh9I2cLizLtg=;
        b=IwCGg+4Y4fGRbSmzd02oVyHbkPSIaS+rTyIVIB1JcXZhMbHX4fnT8G/ONM4D+M12X5
         zrVTk1jqtXSu1xk2TWtaIoXOKnFyjyQm/AVwJ6EO1s4EhOt3yO8BnFiE4Pk2yIm3FGno
         Dderak8crGII6gASUIaAAXsfBaAhVsv+XDv6NpDcexfnn6cUqeCUAitGfYbpgdYWNh+f
         +f8elUxsXO5nBTA9Zy4IEku6+rj8fZM+2y8VaHi7Yb3LqAr4IX7ullS3K94Lc1W995Pb
         JTvwwP4ffpLhY4F6vqpbHUpzQi4PQAUW6G+aqkEVcUqnQOT7402yPqJYr8qkkad2U1x2
         I56w==
X-Forwarded-Encrypted: i=1; AJvYcCWO7Uvde4izWCpICdur0PLr19ZQpjuLLl2+H6UMc4d5G/synMR26oipKyHhOkaC/c7kMHkdEhVbmp4S@vger.kernel.org
X-Gm-Message-State: AOJu0YxBIiflzvZuDjBUWe8FzufLQAKKWV7exHVDIYzUOAm5TWmmHYA1
	5mlu/5CbsAp9o7SLnOs5qFD/2qUnGbxWYXwcx33POeOJb6fXcOsWmuNR
X-Gm-Gg: AZuq6aIflKMLP+yD8w6KEulluU/JjXs9GOHc3Fonn9KAqRgBvCrZLiLTVKL6slVbLeN
	x3Ot8ZRMw2BY6CMOjPPIabBHaXCXEoU0r2vNuYcxkWKn9+8FH/hUQTa+iJSd9sfME7G0cbSKD9Z
	fSAyOcUX+xCchVigXmK+iXAB0ZX0ULNmo2jmgxI6HqVmH9nKqZrcVTGxhuEFUpIHIEFhFDW4dJw
	jf9E3N3ZX9xrgwaq+SUzrlU21bw/ForcBM8DJfTLMq0WLuPoo510xCgQ+BMZuZO5AaTebM8vbB+
	DRBPtkGIopLx96NQX4+Hi//b5EX117bvLTZ9hF+XrL+IPMZB6UKyrXwb3UHS1/faOpbvfzsuSe5
	+CV18RqyHCRadyZCtKCwhkLYed0kGM6hxZrO3DN45fhmw+1+S8UIElBxpnnfPWrXXlhpXyi+6lC
	MFcd/K/yCLUT1Z
X-Received: by 2002:ac2:5bc3:0:b0:59f:6efc:2846 with SMTP id 2adb3069b0e04-59f8abe42admr3218285e87.7.1771828759209;
        Sun, 22 Feb 2026 22:39:19 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb13abbsm1369626e87.23.2026.02.22.22.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:39:18 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	David Lechner <dlechner@baylibre.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v3 9/9] mfd: motorola-cpcap: add support for Mot CPCAP composition
Date: Mon, 23 Feb 2026 08:38:58 +0200
Message-ID: <20260223063858.12208-10-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260223063858.12208-1-clamor95@gmail.com>
References: <20260223063858.12208-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267254-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,baylibre.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 311AF17241F
X-Rspamd-Action: no action

Add a MFD subdevice composition used in Tegra20 based Mot board
(Motorola Atrix 4G and Droid X2).

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 drivers/mfd/motorola-cpcap.c | 50 ++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/mfd/motorola-cpcap.c b/drivers/mfd/motorola-cpcap.c
index 516d1e33affa..fdec92f5c6b0 100644
--- a/drivers/mfd/motorola-cpcap.c
+++ b/drivers/mfd/motorola-cpcap.c
@@ -335,6 +335,54 @@ static const struct cpcap_chip_data cpcap_mapphone_data = {
 	.num_devices = ARRAY_SIZE(cpcap_mapphone_mfd_devices),
 };
 
+/*
+ * The Mot board features a USB-PHY and charger similar to the ones in
+ * Mapphone; however, because Mot is based on Tegra20, it is incompatible
+ * with the existing implementation, which is tightly interconnected with
+ * the OMAP USB PHY.
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
+		.name          = "cpcap-led",
+		.id            = 3,
+		.of_compatible = "motorola,cpcap-led-adl",
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
@@ -389,6 +437,7 @@ static int cpcap_probe(struct spi_device *spi)
 static const struct of_device_id cpcap_of_match[] = {
 	{ .compatible = "motorola,cpcap", .data = &cpcap_default_data },
 	{ .compatible = "motorola,mapphone-cpcap", .data = &cpcap_mapphone_data	},
+	{ .compatible = "motorola,mot-cpcap", .data = &cpcap_mot_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, cpcap_of_match);
@@ -396,6 +445,7 @@ MODULE_DEVICE_TABLE(of, cpcap_of_match);
 static const struct spi_device_id cpcap_spi_ids[] = {
 	{ .name = "cpcap", .driver_data = (kernel_ulong_t)&cpcap_default_data },
 	{ .name = "mapphone-cpcap", .driver_data = (kernel_ulong_t)&cpcap_mapphone_data },
+	{ .name = "mot-cpcap", .driver_data = (kernel_ulong_t)&cpcap_mot_data },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(spi, cpcap_spi_ids);
-- 
2.51.0


