Return-Path: <devicetree+bounces-188133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD97AE2E2F
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 05:30:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A33B188E9EB
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 03:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AC241553AA;
	Sun, 22 Jun 2025 03:29:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rZtimGse"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F85714A60C
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 03:29:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750562991; cv=none; b=nDSu1e+WGnFyvanRHL3D1sG5LXJIvAV1b8HWSK/IloBuvjOOPdYrOQVtQlZJSzZtRHOJF2qLc+4C4RsPY//wFW+37Y5jl8u8AwAeI5SwHlBcyXSeZXAeXSDTbIQVrCK8xA/qPLq7h1uQsSGnkA2Cg7H9FZg619+DsRhTJ5iXT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750562991; c=relaxed/simple;
	bh=/f7vOi/zQqnML93HoZkMK7Obd2bgrfdMaoiLko3E59M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lF3k4I5B3sjGC5APgn/jAVyB3cylmdIvdtHboKghwwdg6lid94G4qwUuCp2XChSBUh1nIuiERrcYkeB3Ffoewqlnm79Ut2wRSWO1t14Yrs+LkuS67yn1g6/W9A162ZTBTJ2kMUWexHOW9tnYLW9lW9vpZXjUNU+cfWV68VzL4vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rZtimGse; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6face1d58dcso48817026d6.2
        for <devicetree@vger.kernel.org>; Sat, 21 Jun 2025 20:29:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750562988; x=1751167788; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdegzUcdk0GMXdJnlI+cKOaIH3OWb8viJpt7TGJFQQQ=;
        b=rZtimGse9wQaZMtzp6YQZ4F5sMfm77cPTLEdXJ0JzVSe6rvR7lUlnZ3BKnh1n99Zne
         56aRQP/4SLvhrX9Y8r3Gu7CsElfryFKphw6kSp/UG+VvzJ5prB+xptEtjVkTFHMrGpeN
         fv0ToVJq35IBLJbg1GKlV0ZZv8Qx2J13opQ41e9iZN8984cMMNDEigt2aBZIR+7dhSuw
         sWib8mwty5a5tFVDVhgSrJ7vfcB0KOLjJ9c18IIQJOtjFIUouYLIK6vnQlLcNruz5XJA
         4Y23BA5fHtMKECqAsLB5msLZXtGdGRLDec2Uobq+L4kvCUnRFGCHRjLjkYtkFSPwvIhV
         PhWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750562988; x=1751167788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdegzUcdk0GMXdJnlI+cKOaIH3OWb8viJpt7TGJFQQQ=;
        b=kzU9NsmkylAd5Q5MRPkNWgEpPZZ48gaEDNTWEa10+EytulmL7LG1q5EBEBnIUQ6qMN
         xCjkL+CQ0DDExLf9G2gU5LW/a6O30TeXVUY6V27H3GWEQ1DZOgIQKt9rPZ/04tJmbFZV
         nz8gG6cndoRSERwsrBwf50YEEfFj0JKC7s11XSsdPrFNcwjHJlK+dxdlmIomRJ4PW5xH
         5GYGzgIp8NMUV/+A/8wCzDW7b0zEPgnyPW/lOJ+9RKAuxTBMZqFoJZrk/lp436LZjVgZ
         6FXHLQmwcvQ3ep+jh9CAqvOpZyklYgk9z0QxnlWl5g1sDo2buGUEa/ywDV8Zgz6V8xb2
         qQfg==
X-Forwarded-Encrypted: i=1; AJvYcCXoqvecf8GIwUqK+R50p9ZsuLg3dEeJwfWOJIilOYtCUDoVXFlRn4NONW+0vOf2GXw2EKS9tEWn0Ad7@vger.kernel.org
X-Gm-Message-State: AOJu0YyS5N3qgz/W/B0kWGP06eJytj6tWSRZvqEx06wzMDDrW47y6pSo
	QMz5iCknqEt32pd2md/9xNStu0UXkUmdx106FR795Dq8fOIGjrj3jmtCF5tzrrgoO1c=
X-Gm-Gg: ASbGncs+NBbSBG6dMFx5b1uNxhbssLJTnoQsFddBUryskQvM8eFdC4/PA3DKILiNReJ
	3GCZZ07NTQFkvPwEgi6nTLeolvi9ZamAG4zUvQWmvdOh9oDdYHbwNcKhA8jB874pdAI2Yz0v9/Y
	GnW5VePPsbcuePmQ94wg3OkZpvP5Ng72DJni98ELrrz8wPrn7MRhz3pIfeGWvQfl2JZbMgCqKBZ
	4IEz8KqkBjMptxy0kapd1r7269sww6bsWDdSr9MwR3TBIhQ8TeSbTTTEW7QBwtlPqiz0W+brlzQ
	Y5Bx0wlfVLkwYogf+fn7/CzW45uc2aw/T2PNyKJUte3pwftsXDRE1C84zBWjEZw4R9LyJo46Vaj
	ofNvmjWiC0FT5UPEtW73NA1Px8iyGYU6IhX6vZBCdRa3VoA==
X-Google-Smtp-Source: AGHT+IGgivgJ0hOyBSwVTJjkONfdleyZ5q/Eg8WQ3nCbQOeaT7UCkBc1niaKvoGFFoFSZB9qNGIrtQ==
X-Received: by 2002:a05:6214:29c1:b0:6fa:fcb0:b893 with SMTP id 6a1803df08f44-6fd0a48a539mr131773656d6.14.1750562988574;
        Sat, 21 Jun 2025 20:29:48 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd0945183dsm30014526d6.44.2025.06.21.20.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 20:29:48 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	alexandre.belloni@bootlin.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlan@gentoo.org,
	wangruikang@iscas.ac.cn,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-rtc@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 2/7] mfd: simple-mfd-i2c: add SpacemiT P1 support
Date: Sat, 21 Jun 2025 22:29:34 -0500
Message-ID: <20250622032941.3768912-3-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250622032941.3768912-1-elder@riscstar.com>
References: <20250622032941.3768912-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable support for the RTC and regulators found in the SpacemiT P1
PMIC.  Support is implemented by the simple I2C MFD driver.

The P1 PMIC is normally implemented with the SpacemiT K1 SoC.  This
PMIC provides 6 buck converters and 12 LDO regulators.  It also
implements a switch, watchdog timer, real-time clock, and more.
Initially its RTC and regulators are supported.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v3: - Support is now implemented in "simple-mfd-i2c.c" by defining a
      "spacemit,p1" match entry with match data defining the PMIC.

 drivers/mfd/Kconfig          | 10 ++++++++++
 drivers/mfd/simple-mfd-i2c.c | 18 ++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 6fb3768e3d71c..a83884da6befa 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1182,6 +1182,16 @@ config MFD_QCOM_RPM
 	  Say M here if you want to include support for the Qualcomm RPM as a
 	  module. This will build a module called "qcom_rpm".
 
+config MFD_SPACEMIT_P1
+	tristate "SpacemiT P1 PMIC"
+	select MFD_SIMPLE_MFD_I2C
+	help
+	  This option supports the I2C-based SpacemiT P1 PMIC, which
+	  contains regulators, a power switch, GPIOs, an RTC, and more.
+	  This option is selected when any of the supported sub-devices
+	  is configured.  The basic functionality is implemented by the
+	  simple MFD I2C driver.
+
 config MFD_SPMI_PMIC
 	tristate "Qualcomm SPMI PMICs"
 	depends on ARCH_QCOM || COMPILE_TEST
diff --git a/drivers/mfd/simple-mfd-i2c.c b/drivers/mfd/simple-mfd-i2c.c
index 22159913bea03..026cd92e20ad3 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -93,12 +93,30 @@ static const struct simple_mfd_data maxim_mon_max77705 = {
 	.mfd_cell_size = ARRAY_SIZE(max77705_sensor_cells),
 };
 
+static const struct regmap_config spacemit_p1_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = 0xaa,
+};
+
+static const struct mfd_cell spacemit_p1_cells[] = {
+	{ .name = "spacemit-p1-regulator", },
+	{ .name = "spacemit-p1-rtc", },
+};
+
+static const struct simple_mfd_data spacemit_p1 = {
+	.regmap_config = &spacemit_p1_regmap_config,
+	.mfd_cell = spacemit_p1_cells,
+	.mfd_cell_size = ARRAY_SIZE(spacemit_p1_cells),
+};
+
 static const struct of_device_id simple_mfd_i2c_of_match[] = {
 	{ .compatible = "kontron,sl28cpld" },
 	{ .compatible = "silergy,sy7636a", .data = &silergy_sy7636a},
 	{ .compatible = "maxim,max5970", .data = &maxim_max5970},
 	{ .compatible = "maxim,max5978", .data = &maxim_max5970},
 	{ .compatible = "maxim,max77705-battery", .data = &maxim_mon_max77705},
+	{ .compatible = "spacemit,p1", .data = &spacemit_p1, },
 	{}
 };
 MODULE_DEVICE_TABLE(of, simple_mfd_i2c_of_match);
-- 
2.45.2


