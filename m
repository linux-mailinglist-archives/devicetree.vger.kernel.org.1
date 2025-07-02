Return-Path: <devicetree+bounces-192328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C2CFAF6425
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 23:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 136717A22AC
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 21:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB34D2F5097;
	Wed,  2 Jul 2025 21:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="n7ATiETQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C2F2BE65F
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 21:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751492231; cv=none; b=c/WthYQ+B03gIkCZkLzCCqP9Le//FY9/libM5n+LC6r3pv7vV3QX8NYB5Cnx5XoSCfA1REhruTM1+CIHgxPZkWnSwkL1wz5qgUCNciZbl26DBn2IcSAbmuIuRtPd3UL/SPabAwE/FhpsgDZbQrIbob6JTT9GRFX7z+Pm6LgvMtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751492231; c=relaxed/simple;
	bh=vjAoZdys16BCatinR/V21qk6bDas+9kyqQElG7gYOyI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B7Bv2QscSJLlCEtLtQHUH/N3VC7xL6z4o71HuJDxdD9Xbk2IZedHruJFjnpwXJxDT2agto/pmA5LRRAQwjfaQXm04Wgo0PsIBgrKi3mMg4ZVXMVzHztDBmMoqeh+PouD8RSpyBD/FfBYjxorY65HIixX+UYC/iwytlYwEN/uSDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=n7ATiETQ; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6fd0a91ae98so34492876d6.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 14:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751492229; x=1752097029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C9QbUmj59wRT1di1iGfusS/bH4bYig6dp2mkPaC/GC4=;
        b=n7ATiETQs+xvyD7WxSDeCHvxmh5HOpaiT2t4gGzeyswjN7T4gFPJha4eOklN6FnzH+
         iGmb+IuQdNgNAYwyiKiu5qMikTPD6MGaeiZJr2gL+CzZ5awJf/anLGwMZzFVB8FGsjl+
         Hj+uGoYuHkkRL4QvK7xYGtY2v+joWSw1SPDM85xYdilRT9FFAbOdSZcmp3+ApVpZfaK7
         67Drbz6O+LAU0OGkzJGpJZwELZYciGC4KZQgByna8e1mX0j0o/tQhsWydRy68Jnz+7IU
         quxEJ3CFDh4XWxUvg02TJrHu+/i2vq4ivmnkJJFRSZ2et5O8JdbD7Tu0HzE6HmonOTN9
         /19w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751492229; x=1752097029;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C9QbUmj59wRT1di1iGfusS/bH4bYig6dp2mkPaC/GC4=;
        b=DftjIHPOQbFw9LwzPgZGtA/mUEfF0dX3rBTHlLZ5z4/Fw0mtWP+SWIefE7jOxD0fdy
         k4FcSnqvnAtXUcwQXNfuJJ4hsNEQArVb9cVLqKktkpF/uuDCzQ5ZzeH4tyk7vCXrTNHq
         0gmeSxAJxFlpEmT6bTnVDMSEsa+PJQJ+GaoQHamrLepM6AL88+DP5yVvvR3MKfk+33Sh
         LJ4CmaI8bjbLtDm2sdC5e3XnkHUcJWYuJvp+74Fq/nQc/dUdFA+SV/3KWHDhBz/YJeTP
         KEVYibs5zLWJaPZU00J27Ms0aL1CtX8ZIpGWxld3KJ9ejK51aMCzfSZ6OLDPg0nUpa3d
         fBFA==
X-Forwarded-Encrypted: i=1; AJvYcCWOu32UVg8pVP1SGJLHLOQ/sQPdg+MBPumncnQvvE3f14Lv9qyFAntp0rxYnpQchIJEsfnd8VZPvtEr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx76jB72+6dulxiot15svQewPrNQLFQNJuhNoSA1h61aHtSQd5v
	0QvF8oMJXgYayAJPmKwT1wxK+wv2XWujMpxbhgERxsvxt1TVP3hzc7jFIX+IE/yZweI=
X-Gm-Gg: ASbGncu4rhsBGRg1sgpnaC2fCaPV0nmO+0j5ND3uWylxOgcTiXsiH4RfpWnNlU4fgAZ
	QUI4AfUKxQlRtPuqOUl9gfifp7U5soQRPzBdTkZPzJydesKXetpciBJ/0UCxuDDXgxGwfCqdmZP
	UouEAdKo0rQ8OhxTpk2Q8nRzMNcFwSbztCKp8wlbh2EeH+zX4s8rDk3bpfsU8qPDEj6FHurXLX9
	wxBVJQmvU7+q0lHqh54RWHBOBEQXRfIL8yvo7ysZg7Feikh6rEY59MMYoqXLFW/rBZZiDwIUt1P
	TCp2Qx3vYNw+1QaJB19FexXVdVvne8gtL/RsqOl0XgaIBLXhkOssWiKhZ8xM3mkrVTWZtf2pmPG
	MQ590h9X7vjnd1imidjs7IX8eBao4TeJxk3U=
X-Google-Smtp-Source: AGHT+IGHBPpKrSSwLwzqeOwEldJB7kkfzgUut8xtD4fDxnQG/VP7sB0/kJKkmFEHtrrUYH6env2kYw==
X-Received: by 2002:a05:6214:2b94:b0:6fd:ace:4cf7 with SMTP id 6a1803df08f44-702b1b0658amr50726846d6.24.1751492228549;
        Wed, 02 Jul 2025 14:37:08 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd771bc01bsm105691746d6.40.2025.07.02.14.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 14:37:08 -0700 (PDT)
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
Subject: [PATCH v7 3/8] mfd: simple-mfd-i2c: add SpacemiT P1 support
Date: Wed,  2 Jul 2025 16:36:52 -0500
Message-ID: <20250702213658.545163-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702213658.545163-1-elder@riscstar.com>
References: <20250702213658.545163-1-elder@riscstar.com>
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
index 3f959f4f98261..a8f658eaf4108 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -102,12 +102,24 @@ static const struct simple_mfd_data maxim_mon_max77705 = {
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


