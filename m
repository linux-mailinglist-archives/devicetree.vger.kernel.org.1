Return-Path: <devicetree+bounces-189640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0684AE8A25
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 18:42:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 566EA5A20E8
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D65B02D9EC8;
	Wed, 25 Jun 2025 16:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="g76NzzCu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997982D8785
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 16:41:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750869692; cv=none; b=gvvop5V1oWex+ElBH8ttB36yj7nIe5+71WjzLLSs2zYuQadM+P6ToJbhsWLMZDvbsJHurf+lt1gUzQVGMSvjQdUaI0hHvJVvXAqshAHqdlBtJKyy1NvkoMp4QIaJ77szEwXNqEh6vtyfiU2xrDKu82i7vJMYBn5t8ohXiq8niOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750869692; c=relaxed/simple;
	bh=iBNxwWt5RVG6aorzlp6NmbugrktgSEKzYp0YaYxUbVk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KqPiq4UAjVXSAIK2tFZhybgCQ8CXbODLCwdEo9DQauAms6ciK10y2U+cwOKdVVac8++tjtJ31kYx/1iaZbrjmeW4wR9/NeNx8o6Ly3Bw1hWVhTHBXa39ZZIrqvAx8/vSluIScXvthONS2SPW9mtaBdQJmbQMT57gQ6ozQu7f4dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=g76NzzCu; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6fadd3ad18eso1227246d6.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750869689; x=1751474489; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ECik/dLyp7V3J7nKrFzv5/sHAYEHXhANSBESMnVLr0=;
        b=g76NzzCuY50OTk4Wo6aUtD7orgRQWNV9WtrDIR3GMLKJ7lY1nVJjxNTLS0MAJ3yK77
         Me8cuNXtMJe9v6SLGZWaJroPGm6vIqx3S/nx/JKZTvlEmXiEJm5h8vNOrDI3OsMXrObO
         Ya0V3jumn7L80PcSjC80sUZpt3sj3TAF0bq+e2u7Ibcse9qds9E6KV9aFuSUripZ9lFJ
         1DI7ELuIiGtnLoa7fGtXXA6W3I1a5mz3L6r2tz/3xZMWgLqtJxym4lNe8xmkGStnS1h9
         s8lsdNemYTXwemR8WxfZjrqDumkHKsodTl1MqDOy9vXRtxrb2MbE7e4rpWhQOU1puYTy
         nZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750869689; x=1751474489;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5ECik/dLyp7V3J7nKrFzv5/sHAYEHXhANSBESMnVLr0=;
        b=kcIvj2IQm20kgwpUyhl28hX63yaG9w2RA4r5uloWLe4QqA5Mf5lulgo6I6UwniNxTc
         1wi2LDpqgB0UzOi7jIdQn3x71VbJiKspFFSBoTUIgwMI8ua1e/pUinyRLz1E3rZ61zk1
         6ZBqFN0gcjrCva5L3+V3iWHGj92NRC9Sut41GbSl5h6cRNbe7axnme2TQ2l87b8eLkvP
         DAfO98dRaInSiQxn+0BSW9di11P0EJTOkoc+E3VRT9CaDt8OF1Rv2f2JoPMOuiDrBiuU
         Z/5AAgI56dB5YOPp/476kYXnKaVhTBzTZyAExPpnUMQpGAvuj0uCRUKVPbVtcGQ1iRPB
         rIcw==
X-Forwarded-Encrypted: i=1; AJvYcCXkmqo0Rd+1iXU/9Q585h8RteTppwh7J3D+k/9nqurd3VGdh/ELizaMA0kEsZRYijHcnZIJArPl77Vc@vger.kernel.org
X-Gm-Message-State: AOJu0YyPcbd5Frr955fj+Zi7kF1oZiTt/gtxyPB3F1kiXzZLwT2H2IzQ
	TCU5ni6O6lNgyy9M6Rj+DQb/sJR8oQtCdFBI/L6+8EY5wuB5Rkvrn5r1dUgb9Ni67r0=
X-Gm-Gg: ASbGncu2xjLkOtlNP9l+zKbtZjdexxiLjUTaxpu+NEJKdS7JORj4M+XH+yzdLe/h+RF
	GDpchXttrdAg3sE5pHEcjBV60HmlU/7kAEReEhfJAZmgrNUULPziVc5H76L8caS/35BkLdJjzsD
	pK7RGOT5keV9NcqsX57+ptVI32Zu9e51rU2+huvxdQRpalPfVIFTQasB7AaGKoETiaXVTaiCDXL
	SK7uoana5DuN2XFFlVcqPcGdwI3ryOWOhAlRgwjRANbQgZKOo1B6ZoxNe96o1s7ahfiEP1Kgo+K
	WWAZnAUhGuHNplnX4zXxp3WUsFMzg2z28gFVoTjVShue8NhwcyWCMjIjVbCVZSIKsctDXSsXoE0
	eM17oLwlxGOppLKpJObGvfbnayfCdDZOz9MY=
X-Google-Smtp-Source: AGHT+IH2Rw6qDhj6gxPxTkfHXvCTXxfzxWK7HJ7WiW9c6J8c8xpC7Qe6SfN17xAiNow/8qw/cdT4KQ==
X-Received: by 2002:a05:6214:dad:b0:6fd:1687:2e1b with SMTP id 6a1803df08f44-6fd5efac323mr56502306d6.27.1750869689350;
        Wed, 25 Jun 2025 09:41:29 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d3ffdb190esm576783085a.86.2025.06.25.09.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 09:41:28 -0700 (PDT)
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
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/7] rtc: spacemit: support the SpacemiT P1 RTC
Date: Wed, 25 Jun 2025 11:41:15 -0500
Message-ID: <20250625164119.1068842-5-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250625164119.1068842-1-elder@riscstar.com>
References: <20250625164119.1068842-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the RTC found in the SpacemiT P1 PMIC.  Initially
only setting and reading the time are supported.

The PMIC is implemented as a multi-function device.  This RTC is
probed based on this driver being named in a MFD cell in the simple
MFD I2C driver.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
v4: - Rename the source file
    - Rename the config option
    - Get rid of the time_unit enumerated type (just use indices)
    - Loop in the RTC read_time callback until consecutive reads
      produce the same result
    - Return an error from the set_time callback if re-enabling the
      RTC fails
    - Don't report devm_rtc_register_device() errors

 drivers/rtc/Kconfig           |  10 ++
 drivers/rtc/Makefile          |   1 +
 drivers/rtc/rtc-spacemit-p1.c | 169 ++++++++++++++++++++++++++++++++++
 3 files changed, 180 insertions(+)
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 9aec922613cec..93620f2c9b29c 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -406,6 +406,16 @@ config RTC_DRV_MAX77686
 	  This driver can also be built as a module. If so, the module
 	  will be called rtc-max77686.
 
+config RTC_DRV_SPACEMIT_P1
+	tristate "SpacemiT P1 RTC"
+	depends on ARCH_SPACEMIT || COMPILE_TEST
+	select MFD_SPACEMIT_P1
+	default ARCH_SPACEMIT
+	help
+	  Enable support for the RTC function in the SpacemiT P1 PMIC.
+	  This driver can also be built as a module, which will be called
+	  "spacemit-p1-rtc".
+
 config RTC_DRV_NCT3018Y
 	tristate "Nuvoton NCT3018Y"
 	depends on OF
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 4619aa2ac4697..a24ff6ad5ca58 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -171,6 +171,7 @@ obj-$(CONFIG_RTC_DRV_SD2405AL)	+= rtc-sd2405al.o
 obj-$(CONFIG_RTC_DRV_SD3078)	+= rtc-sd3078.o
 obj-$(CONFIG_RTC_DRV_SH)	+= rtc-sh.o
 obj-$(CONFIG_RTC_DRV_SNVS)	+= rtc-snvs.o
+obj-$(CONFIG_RTC_DRV_SPACEMIT_P1)	+= rtc-spacemit-p1.o
 obj-$(CONFIG_RTC_DRV_SPEAR)	+= rtc-spear.o
 obj-$(CONFIG_RTC_DRV_STARFIRE)	+= rtc-starfire.o
 obj-$(CONFIG_RTC_DRV_STK17TA8)	+= rtc-stk17ta8.o
diff --git a/drivers/rtc/rtc-spacemit-p1.c b/drivers/rtc/rtc-spacemit-p1.c
new file mode 100644
index 0000000000000..fdb8e3502c198
--- /dev/null
+++ b/drivers/rtc/rtc-spacemit-p1.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for the RTC found in the SpacemiT P1 PMIC
+ *
+ * Copyright (C) 2025 by RISCstar Solutions Corporation.  All rights reserved.
+ */
+
+#include <linux/bits.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/rtc.h>
+
+#define MOD_NAME	"spacemit-p1-rtc"
+
+/*
+ * Six consecutive 1-byte registers hold the seconds, minutes, hours,
+ * day-of-month, month, and year (respectively).
+ *
+ * The range of values in these registers is:
+ *    seconds	0-59
+ *    minutes	0-59
+ *    hours	0-59
+ *    day	0-30 (struct tm is 1-31)
+ *    month	0-11
+ *    year	years since 2000 (struct tm is since 1900)
+ *
+ * Note that the day and month must be converted after reading and
+ * before writing.
+ */
+#define RTC_TIME		0x0d	/* Offset of the seconds register */
+
+#define RTC_CTRL		0x1d
+#define RTC_EN		BIT(2)
+
+/* Number of attempts to read a consistent time stamp before giving up */
+#define RTC_READ_TRIES		20	/* At least 1 */
+
+struct p1_rtc {
+	struct regmap *regmap;
+	struct rtc_device *rtc;
+};
+
+/*
+ * The P1 hardware documentation states that the register values are
+ * latched to ensure a consistent time snapshot within the registers,
+ * but these are in fact unstable due to a bug in the hardware design.
+ * So we loop until we get two identical readings.
+ */
+static int p1_rtc_read_time(struct device *dev, struct rtc_time *t)
+{
+	struct p1_rtc *p1 = dev_get_drvdata(dev);
+	struct regmap *regmap = p1->regmap;
+	u32 count = RTC_READ_TRIES;
+	u8 times[2][6];
+	size_t size;
+	u32 i = 0;
+	u8 *time;
+	int ret;
+
+	size = sizeof(times[0]);
+	ret = regmap_bulk_read(regmap, RTC_TIME, times[i], size);
+	if (ret)
+		return ret;
+
+	do {
+		i = 1 - i;
+		ret = regmap_bulk_read(regmap, RTC_TIME, times[i], size);
+		if (ret)
+			return ret;
+	} while (memcmp(times[i], times[1 - i], size) && --count);
+
+	if (!count)
+		return -EIO;
+
+	time = &times[0][0];
+
+	t->tm_sec = time[0] & GENMASK(5, 0);
+	t->tm_min = time[1] & GENMASK(5, 0);
+	t->tm_hour = time[2] & GENMASK(4, 0);
+	t->tm_mday = (time[3] & GENMASK(4, 0)) + 1;
+	t->tm_mon = time[4] & GENMASK(3, 0);
+	t->tm_year = (time[5] & GENMASK(5, 0)) + 100;
+
+	return 0;
+}
+
+/*
+ * The P1 hardware documentation states that values in the registers are
+ * latched so when written they represent a consistent time snapshot.
+ * Nevertheless, this is not guaranteed by the implementation, so we must
+ * disable the RTC while updating it.
+ */
+static int p1_rtc_set_time(struct device *dev, struct rtc_time *t)
+{
+	struct p1_rtc *p1 = dev_get_drvdata(dev);
+	struct regmap *regmap = p1->regmap;
+	u8 time[6];
+	int ret2;
+	int ret;
+
+	time[0] = t->tm_sec;
+	time[1] = t->tm_min;
+	time[2] = t->tm_hour;
+	time[3] = t->tm_mday - 1;
+	time[4] = t->tm_mon;
+	time[5] = t->tm_year - 100;
+
+	/* Disable the RTC to update; re-enable again when done */
+	ret = regmap_update_bits(regmap, RTC_CTRL, RTC_EN, 0);
+	if (ret)
+		return ret;
+
+	ret = regmap_bulk_write(regmap, RTC_TIME, time, sizeof(time));
+
+	ret2 = regmap_update_bits(regmap, RTC_CTRL, RTC_EN, RTC_EN);
+
+	return ret ? : ret2;		/* Return the first error */
+}
+
+static const struct rtc_class_ops p1_rtc_class_ops = {
+	.read_time = p1_rtc_read_time,
+	.set_time = p1_rtc_set_time,
+};
+
+static int p1_rtc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct rtc_device *rtc;
+	struct p1_rtc *p1;
+
+	p1 = devm_kzalloc(dev, sizeof(*p1), GFP_KERNEL);
+	if (!p1)
+		return -ENOMEM;
+	dev_set_drvdata(dev, p1);
+
+	p1->regmap = dev_get_regmap(dev->parent, NULL);
+	if (!p1->regmap)
+		return dev_err_probe(dev, -ENODEV, "failed to get regmap\n");
+
+	rtc = devm_rtc_allocate_device(dev);
+	if (IS_ERR(rtc))
+		return dev_err_probe(dev, PTR_ERR(rtc),
+				     "error allocating device\n");
+	p1->rtc = rtc;
+
+	rtc->ops = &p1_rtc_class_ops;
+	rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
+	rtc->range_max = RTC_TIMESTAMP_END_2063;
+
+	clear_bit(RTC_FEATURE_ALARM, rtc->features);
+	clear_bit(RTC_FEATURE_UPDATE_INTERRUPT, rtc->features);
+
+	return devm_rtc_register_device(rtc);
+}
+
+static struct platform_driver p1_rtc_driver = {
+	.probe = p1_rtc_probe,
+	.driver = {
+		.name = MOD_NAME,
+	},
+};
+
+module_platform_driver(p1_rtc_driver);
+
+MODULE_DESCRIPTION("SpacemiT P1 RTC driver");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:" MOD_NAME);
-- 
2.45.2


