Return-Path: <devicetree+bounces-199875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9924CB12A9B
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C23CA547984
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA0F324A043;
	Sat, 26 Jul 2025 13:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="GAM64i66"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19D02472B7
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535417; cv=none; b=IofAYhfujUNAVsgrCs5rPRG5kShvQhp1hS+itkPoxg+nFBlhdRB0Su/9tLNVHcOVjB9l0QYFKYjYZPgoy0thL3tbmH+41DNVPnhOCpNwLs5JUQP5F4HClfxdXKowsSgEK6xrQVAyBrF4NtFxKMxZpIEwOGYiOpwRgl08t7lMxxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535417; c=relaxed/simple;
	bh=Q38X3FLb9rUyS71bvg/6Qwxh+WP/snpwbPt/FQFY2Xw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dUP0SomwK2f5uYN7BOcbzauFwS5vLEA65s3vr54ONRYOr/L7/OZzZTb87OBvzx0tTEVYIUDnC6hxKOUP43OgqD4HJwTdxpZQ7CVZUGx6wVUAqbqI4e6LRmU56XAAV+vsoWmI6Kqkwk1a2McztPxpKQb+VB2TDSWikiLCbPNCiBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=GAM64i66; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-86cf3dd8c97so243050639f.2
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753535415; x=1754140215; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A31+naPc141WdyGnSXK5HnsnuvFJAqLMKGUUSxCKCSg=;
        b=GAM64i662JuErc2DkNjWKAnGCOw/Wz7mww1xvKkTf9sGycD13Cnv6E2bGJy4KAFRb7
         ZqieVL+AYQsuet14pPu39ITCDa8k6jVlsjBcJvnPTSzfatLtlR3HcqBdQ4lcUTySHuqJ
         QzH6RLIXcnAvcFY3UjPczM4ejCTmeKCrmr0D1hxPmLP/MAHN4ZbB3pIKOf3HIm/W6J+j
         epMvGFMgWM9xxnlKEsIcyvcvqpuaryUEYn64IKC494ex/gji4L6X7fDgxdvJRfdWnCCl
         5K3c3zzMudYRQhqrArsaRYQ8S+KeZyPhgkZRRuuCVSIypoqfTvgG7Z53K12dIpLgI+jb
         12Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535415; x=1754140215;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A31+naPc141WdyGnSXK5HnsnuvFJAqLMKGUUSxCKCSg=;
        b=OrTSyPMS2EZQ/SIq7166Dfohw1J+CjJqsOfY05RiDmpbcy9CTRxKj9BUDWgaFSV7Qu
         PWGMq0OMVe89rk7M/3bg4r50/ox0PayeaTYN0YVXBQTZcx7qui6S1QuePhgYx31dLMt1
         MrY4uTzewkOgWJsYImPXNqUtbsbe2yjt92SGuUJRwWZVuEmSaipjzU29yklhEV2dMd0Z
         xbTj/H0HlPlzCQqyMUxhP0rqTeX/bF8qH39OX8qwGkq7lxaD5I+2BlAt/iCnxtme2W2Z
         O8gUdD5njpJxvYDUAnE+GVGcduFQd3+JgHG7pePUbjNjkhzB5N5XHaUfdCV+5CQX2WyB
         VHwQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9vpeE7QelyBBejKWl8NZrnkF2PCgAermcpy3TZDxNCuZ135aUztZhN3QCb98XdvlWTd9IK+OP0O8X@vger.kernel.org
X-Gm-Message-State: AOJu0YxjpQKSk/2a3dOy4ytocR+vsf/tIasK2FcWXzdIDALXygriFQHl
	kP5klgooGKX9c1QGhPcN/v4K0L2l6orplE2yCYdRJL9sCTafDYyX8u5DL17wngV7NeE=
X-Gm-Gg: ASbGncuaPMq4FpI2NaSGZQ0za+y+85zkvrUN4g6hMa66dNFVo/cnbc1jAWQhan/tRkF
	+vAO6EPhTyvuYOdXLZnPIiJNgUN++/CfiiI7elVuRRwZ9FqkweiHGXepNOQ1i4liKwKjXIGbG6H
	fNJsUMurBbLF6WCb2ya0Sy+GHTjl09r/nLmBEzZrMpyr9Pm4uRdCFTClleJ1KPh01NMLlOxvQ0F
	HVxTNxVWkLRQZEBKTf5y6ggdBjggeVPZ0p48kaH9f29/rlezMaP1zKOWf+oT8ylp5OWgtWlUnj6
	hx73KM153yAdOeVaQFUhKgds5Uoo9uZCDXSTMFfZWvtclifCn5rUKVM6pxCRwIty3Xksj4hRXX3
	wDa6LVvh9L4OslS4oKqOOx4e2d+YK0JCn2Sop8BvC5p/I8WvdcM0/FTlOKiuYMtgvoQ==
X-Google-Smtp-Source: AGHT+IEQtMmfXcpXrDYRw35RuK7bf++10bNgw0KJuXM1PCXb+Br9VU8Nk8Ms01AyRIuf+S7EyGrohQ==
X-Received: by 2002:a05:6602:3d1:b0:87c:5e79:203 with SMTP id ca18e2360f4ac-8800f12d61fmr1072437639f.4.1753535414633;
        Sat, 26 Jul 2025 06:10:14 -0700 (PDT)
Received: from zippy.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-880f7a4ee9fsm49551439f.33.2025.07.26.06.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:10:13 -0700 (PDT)
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
Subject: [PATCH v10 3/8] mfd: simple-mfd-i2c: add SpacemiT P1 support
Date: Sat, 26 Jul 2025 08:09:57 -0500
Message-ID: <20250726131003.3137282-4-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250726131003.3137282-1-elder@riscstar.com>
References: <20250726131003.3137282-1-elder@riscstar.com>
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
index 3622f189c8342..34c69ef4a7e94 100644
--- a/drivers/mfd/simple-mfd-i2c.c
+++ b/drivers/mfd/simple-mfd-i2c.c
@@ -128,12 +128,24 @@ static const struct simple_mfd_data maxim_mon_max77705 = {
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
2.48.1


