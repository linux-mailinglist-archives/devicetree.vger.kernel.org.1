Return-Path: <devicetree+bounces-201468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 451D3B19199
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 04:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0C2BE3BA6B3
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 02:58:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB79C1A38F9;
	Sun,  3 Aug 2025 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="gy5xwUNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC51D191F66
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 02:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189903; cv=none; b=aefja6007DG4l21NfCHwoPejUrUTz1vmCV9wZXgHR4O4MtwzmrSUlHrORacfwqqbxePHPXIQHIHFVck/1Sp5Ad1Ler779Werf77TVdoY/cM19tfKIwWpEIOjJaKTAPqPx/ybEOSGjwXmcE211rCgIttQhOjNXgniA2XBkX0aPOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189903; c=relaxed/simple;
	bh=Vy3dh1W+OnJYZ/v5Lz/MZTnW63W8BbEAjIg6oorEZCg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DawCqaHcp8EzuuDaEmZN/S3WkRsuOE1Fyd6YUqSZfgTNHJZMkGKZIWcrlsGs9OSO/xp++50VFkvYnGtzxu2QMqFWbqqXK6R2lmGbNH/ONxhzZWf4UvU4JMOXGDLrWh36CsDqAhY+ghLgmhBLuw8LDX6WhHDlC+IpifJC738R6Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=gy5xwUNr; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-3e3e4c564ffso19945685ab.2
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 19:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1754189900; x=1754794700; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NseEEgxawgGlvZ2aogsjO1yTSFjdm2ClsU1ufLIjy44=;
        b=gy5xwUNrAw4vhulcbEJZJhYZmhsPW7FLoBbblRiXbyXDWkUDTVsNYWcN4Xt1jv1pod
         /QkKzoiwCY+f55ypecVd+QFN/tOJzsitZN6/g2YwnOkmAHA+gFoBeDsv4R61RcwzzC3Z
         Lp/lIY1UQkgqaBhnJcmod5TLgchHwzoOIJh2xnRVGQPJxBq3MW+TNUyV14SGwB5Hweqv
         UopyHFbTCU/XCq8lVuGqWEcGMgY+gwJzrjrubblvQZssWWySRfdgYjz4zLReIrWtYr7a
         J+x0xItZoDn9HsoMXUO5rOLBLGxvmRlhK4nFGI29DrKMMrF8MaSdfuSa/o4/ue8ySMQU
         g0Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754189900; x=1754794700;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NseEEgxawgGlvZ2aogsjO1yTSFjdm2ClsU1ufLIjy44=;
        b=TLUp5ax2cYYRz32ZT27MFDjAOeESRooLXLr0sUcff1emlWVoewkgMRYAFRNxCtPq5/
         ro0R/XXToDPUO6D+G/wc7N7Xf2QV7d2kh+IyggwVK0xSC1n8DLRXoa7SogU207HQv+LK
         AE2D7kd/NGYHHfADUUv/pf2xNM9o9I9p+DkV/6G38dMLHHK1HsfxUIZ0Z/g9NQ2Q8I6z
         pq65O2ms8K7K84oGo+d/laPLdmleky8l6CiwQklMkBtobDfrC50rP6Hqq7WUz1UUwXgn
         6CC0Se1q5XnD50y4qNBMmj6cDJ8UB2Rw3OAqZfTsr/OYPpshhmq2oyGmj09RCt/86HRy
         WPrA==
X-Forwarded-Encrypted: i=1; AJvYcCUa7y5Dt7aVPBSvIu62xpZx4MALvlCxM6Pn8LUVlyQ+UfTA6zfKgCthuV5p7Diji31qekwxvBU/XZMM@vger.kernel.org
X-Gm-Message-State: AOJu0Ywcou1KTQ6RPujDKGVbA8ABqymfo95Y6hWy4YJ4DDm6PwfqHiJj
	knPYEgK2Iiq3TtMVs500Ku+onaYTA9jtBDvQ+sfiViLEwyvHWkowVG+ia7zTh55zJW4=
X-Gm-Gg: ASbGnctw+W8G620mkTwsT50YK1qy8su1L7C5WTiT05h5DEIBpd4TT5qJu58lle+0hJk
	sgI5wO98BmtayM4uCTaNDhDhYcxXQNr3oXwXTQXI5ntg+qKTXh4I0vS6NM0B4jCBlKkO+yF1PlV
	1BJXGZIoHe8UePXsujMzML7knUzxRh3VHv6343t8YIc89ponrhnOLLmZqTu8CtPR81GJjE98W5T
	3QGMoLexHqbXtfKsvfXGMjD2wsHWCulvndSP/CApLZrf7aOfFWTsrhIC4dIepIsVLHrSnjqVUFQ
	xGkR07SAA9tN5r1Otn6XyrgPE+TyfkLk7vPa9iIx7b7GJmsqdI0KPk1/SL/pga5Gj1HpDtYjaq5
	3mVAJXZD6/Kr6Hhc+FlXWaYsgAYQQsiuubzfLXKKpPxzq31QnbKVsoRewn9fr3P/sWg==
X-Google-Smtp-Source: AGHT+IHbWkpg5C9tOqNoKe/8SDkAZAG3y2fHUU7GpFbL1Wroag43Y3qOh1rkD1ERdFbRzCvMRbwEWA==
X-Received: by 2002:a05:6e02:351e:b0:3e3:e4b2:8a5f with SMTP id e9e14a558f8ab-3e416116edamr89715755ab.8.1754189900043;
        Sat, 02 Aug 2025 19:58:20 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50a55b1ac2esm2251906173.1.2025.08.02.19.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 19:58:19 -0700 (PDT)
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
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v11 2/7] mfd: simple-mfd-i2c: add SpacemiT P1 support
Date: Sat,  2 Aug 2025 21:58:06 -0500
Message-ID: <20250803025812.373029-3-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250803025812.373029-1-elder@riscstar.com>
References: <20250803025812.373029-1-elder@riscstar.com>
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
 drivers/mfd/simple-mfd-i2c.c | 18 ++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 8f11b2df14704..3fe242ffcb31d 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1238,6 +1238,17 @@ config MFD_QCOM_RPM
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
index 22159913bea03..47ffaac035cae 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -93,12 +93,30 @@ static const struct simple_mfd_data maxim_mon_max77705 = {
 	.mfd_cell_size = ARRAY_SIZE(max77705_sensor_cells),
 };
 
+
+static const struct regmap_config spacemit_p1_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
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
2.48.1


