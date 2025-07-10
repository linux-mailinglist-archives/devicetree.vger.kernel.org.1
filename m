Return-Path: <devicetree+bounces-195152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 896D5B00AC9
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 19:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72AC4762005
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFA222F5324;
	Thu, 10 Jul 2025 17:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="0yyPjzd5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40B22F3C0B
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 17:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169879; cv=none; b=nLWXOHfjNaCgyFK2k4wrKJYIeQM7MP7en+VzMXKywaj3U/z2BaInQLH0bBQD1lD0tV05oIFsMIm/iB4w7eMX+zDTXWEYc03CjBXnDU5pjPu5OpSuMnLAOMORBFwCFjOBl675N8FCwrX0W3yUpaADF4/reEnXN4dSrDTrVf93JaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169879; c=relaxed/simple;
	bh=BzqfhdrRj8WtN/UBi9Mi4cmy9MEs58bo8wDPQk/UcCk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GBGZozsY2AYfRtFWX6IhNQax9w2DJDsjofKBIxdYdWQIZBrW5YYzyfEPk80fa4okx54Zsy17YHygZhF74LNNwMNAdVoTr7J4M4aZY7FyfERfr8R0a8uutgimdnpvC6epVYO0XxwjAdGea9j2tJQGTT9ilQ4lspMIlKHuOPVm+oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=0yyPjzd5; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-4a7a8c2b7b9so17752481cf.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752169875; x=1752774675; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8bj6vCPGaU4Rfnhycvs3EmL9A7DZOIkUvKzqHFKHDro=;
        b=0yyPjzd5obXsMdq1FIGy04gejoEkj8DCS5preTS8+LJNUeiKxjn3DCF4SEApJhdqLc
         KIR81lWXOM5DLMizJFFHAyVqMIvSVV/8pw2l75Kv0jqfTBq1HM2iE9TES6I/bjckx4lr
         67FE2RhPglY3vPcAD4ccJ3oSodwkhCOrfYbM5a4/x7+WZ7Y1Oj41LSAXBXDV6K6mS3c4
         MeHaF9ennfa3BCfnKyxGoglyY0aQxtEKaCKnXDaNhwYJooH5vUCDSs/npQJR2p//zh0V
         bLfQSFI2i37WDu0kFKRH/CicH/Fp/Pge9z1jrjESxeSHlVtaNmj0Te5kDATGHNsaWr+0
         A7YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752169875; x=1752774675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bj6vCPGaU4Rfnhycvs3EmL9A7DZOIkUvKzqHFKHDro=;
        b=l9JIhsB/IWCuQ+7yDLToS2UQRe0kiD6ORF0S7QRcHDjMRo2T0+oQDMeRLfWwveLGkd
         1et103dX4yQ8RBTnnPYFTCkPuCUgAyNu49VMp539IWulniaU+Zu74zugWGyh/e2HrKND
         LGsRAuxh6+TeP1sv5aXVKIfb2K6nGc6aYuRvGVd5RbrzqV+i9Uu5o5Dq94ID+9MGL+7y
         QWo+xjH4EEt6Rrwe/bRueLEFakG7ZRp1K2HI3dnUr1sHnY1LppksUk2c1QpT3D8tNNuy
         3Nel9pVBKrFlNHYdFP0UaPrHEUCmywBBLGV6sDe+SO2d1INsJyeCGKaxKTdpcceV8Ax0
         BVHw==
X-Forwarded-Encrypted: i=1; AJvYcCWFysHSKg/n00UgAq6gL/vlzbPxLBm1ZnKff5jHc4C0KUjyRs52cU52sv45/TOAI75hkN33dRgMRlgo@vger.kernel.org
X-Gm-Message-State: AOJu0YwvPBLP+3C7hcirCeMqQsrlx+FHXWL69ZY69vJMs+VqtAk7p/lQ
	F2/x+SFhT8sBCfOJBfH91YCojgq6X65tHYBv+e9jbAKJNKdNuN+HowJ+dMizbuzRDVM=
X-Gm-Gg: ASbGncvwd9B5Jm4t5jhqKnQCcFujWMG98Qlbw+ecrx59rWgYxOiSUXORQ6GNuqJHzDI
	Nyw1sMVDjtMXM6V37/C1f1xxShoYdsICCedbzu6R9uPsjdnnBf2CIRn54nuA61eSgWOoQ5RHXzT
	s77bvajxXo/BGXfetyx7j1yvdr+j/RZtEXBaLtRh0ji0FmqTvTe4V3STWSoWOGOX8I5zzSnU3x6
	03LO4Rrnom8JaoUoqF05nMj1nggQBYH85T27GeM9a6aHKfjw8cW0/daHBlNFQLLBdYORGMcYYLv
	usKj0ExsOcdSLK/HR4uVOdn7+7cKEEH28aWlxlmmErcwsLjnZgKYOwZUAlcmpcc47xgfy39zlVG
	bitOEVebxlpta+wn9b6yo/kFNDYdtBk2RPG0=
X-Google-Smtp-Source: AGHT+IHjd05z9zRG+d0D/5sAqmS973i9wsR1kMR5ICZA5P0UJpiwl0r28sLktoJDRFvR6m807O/spA==
X-Received: by 2002:a05:622a:5c90:b0:4a9:b29e:6208 with SMTP id d75a77b69052e-4a9fb89824cmr4772551cf.15.1752169875317;
        Thu, 10 Jul 2025 10:51:15 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edeee300sm11165941cf.73.2025.07.10.10.51.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 10:51:15 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 3/8] mfd: simple-mfd-i2c: add SpacemiT P1 support
Date: Thu, 10 Jul 2025 12:51:01 -0500
Message-ID: <20250710175107.1280221-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250710175107.1280221-1-elder@riscstar.com>
References: <20250710175107.1280221-1-elder@riscstar.com>
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
 drivers/mfd/Kconfig          | 11 +++++++++++
 drivers/mfd/simple-mfd-i2c.c | 12 ++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 6fb3768e3d71c..01805c3eec57d 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1182,6 +1182,17 @@ config MFD_QCOM_RPM
 	  Say M here if you want to include support for the Qualcomm RPM as a
 	  module. This will build a module called "qcom_rpm".
 
+config MFD_SPACEMIT_P1
+	tristate "SpacemiT P1 PMIC"
+	depends on I2C
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
index 5138aa72140b5..df44c2664fbfc 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -97,12 +97,24 @@ static const struct simple_mfd_data maxim_mon_max77705 = {
 	.mfd_cell_size = ARRAY_SIZE(max77705_sensor_cells),
 };
 
+static const struct mfd_cell spacemit_p1_cells[] = {
+	{ .name = "spacemit-p1-regulator", },
+	{ .name = "spacemit-p1-rtc", },
+};
+
+static const struct simple_mfd_data spacemit_p1 = {
+	.mfd_cell = spacemit_p1_cells,
+	.mfd_cell_size = ARRAY_SIZE(spacemit_p1_cells),
+	.max_register = 0xaa,
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


