Return-Path: <devicetree+bounces-33948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0FE8376C4
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 23:58:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0D84B1C22EA1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 22:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B15AE383AD;
	Mon, 22 Jan 2024 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xjBMRG8c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B2F36B0C
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 22:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705964253; cv=none; b=Fz4bls8h0Q+NEoOSWr8lXB/GWIWp8CSp6GFL0mCjeVKF2I2HiczBEdcMsgA17rmPuuk8t0T/Z7YIWfXZbD/k9CVsBxcsGZcq3D7lxv7XYr3mwspGZ9toR6HhWqcsDwPH3Lxl8hLL0wvDZp7HW0cDGZXMnVqCuPNAXv3O+yZEgy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705964253; c=relaxed/simple;
	bh=TuBVgmZfnG0mMLHEI5U7ypuOjfhXKu49qHs3tpLT0vo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q5itO0FueWxHM2ofGBXCVcqmTju7wnq7/mjUhrgZ+r8Dq61gyuRmkRxeDa/S14YP4Io/2pGmS/5E30rKcX5D9D7NL/mJpm5P+endIEzZbyrFMnrr4lwQX0XuyNuoRu/OhY1dCII5MBnIgTAnVIMR/JMcHYdx8s3MKJsZ+tbXxGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xjBMRG8c; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33934567777so1807680f8f.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 14:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705964250; x=1706569050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6FqWPcvKSS7CcnQxWq48tyQK+WttnuMBOHrnCab1foM=;
        b=xjBMRG8cFZMUNGiL9+BBiqRqHXP2QZakrxFf57bZuR50Ps+yKxelU9hmBQD62WL0oU
         NwRiALSvaRQF9EAKRazUsTXyGmW8lQS0PByL4VS1ADhyKGDjjQ8551yISCLswBsJVqMP
         9F8KBHgSK/bKUN3Ad1mOEW55eh2BD3kiYXEaY+Honngm307B/4EDlNw8nrNb6ekTonJo
         UGOWEM+H+IdiF4AKMN/wfkLAdlZbyLyRLacm7VN1tZrDwKnm3XjnRKrYzsGsyB+7Dk97
         LnLvQKEmxtZjBB7T6xr5iFiN3b8cMIfQgYXEVuWlNM9gyrGJpxXKLQEbK9Nun7BaCjLv
         RrTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705964250; x=1706569050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6FqWPcvKSS7CcnQxWq48tyQK+WttnuMBOHrnCab1foM=;
        b=fvZGNSBxFF5ATSI7ByFNFI5PDMKQaoAfSKvuL/by1Za82XM/kxJeVvhHXbJO6NJEQr
         ZR0x8ScLExh+ZKgp8/s1aS/y1HO2OAGcuCzPzgvYwBn2lhvyXsWKRd7PLKVD2IAt+md7
         ou29VYaKV0bPWZFA8BY0oM+Rg+U07Wef5thCTI/6GwwOruGFJ4EZP7LZGYH/xTvOhA2i
         03szc6CqwMk6bioiH6SREx4NCJ0wqm0AS+2HL3eIInspiAdUMLd4yQdAbt6Z3bVHGI8p
         wAGUtonxbe6CR6uDvmg3SzC0XvK+hAW21W7DzVyr3loIAkFRnJgChrQJjFe0pnU2lwoy
         Msug==
X-Gm-Message-State: AOJu0YxYSFhvMUVB2la68V9mZTx2ZFf+npLB1y+eYYUVa+S3FNTeB7c1
	6g3eDx7Kd5H2NA8q2TW2CbUBBZC9WR5oerxFomDy8ez6SZMrSI10oLvEN/1gbNY=
X-Google-Smtp-Source: AGHT+IFVp5bondQHuVzFk5BJaKLGt9zO8qcyy0zmeAUnCD2ZRppWHTFxrYhp4xosKiVATUsaz4JnFg==
X-Received: by 2002:a05:600c:1986:b0:40e:7d8f:6b1a with SMTP id t6-20020a05600c198600b0040e7d8f6b1amr2710279wmq.5.1705964250159;
        Mon, 22 Jan 2024 14:57:30 -0800 (PST)
Received: from gpeter-l.lan (host-92-18-76-30.as13285.net. [92.18.76.30])
        by smtp.gmail.com with ESMTPSA id fa26-20020a05600c519a00b0040e89ff10f5sm19776847wmb.1.2024.01.22.14.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 14:57:29 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: arnd@arndb.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux@roeck-us.net,
	wim@linux-watchdog.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com,
	jaewon02.kim@samsung.com,
	chanho61.park@samsung.com,
	semen.protsenko@linaro.org
Cc: kernel-team@android.com,
	peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	linux-fsd@tesla.com,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH 3/9] watchdog: s3c2410_wdt: update to use new exynos_pmu_*() apis
Date: Mon, 22 Jan 2024 22:57:04 +0000
Message-ID: <20240122225710.1952066-4-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240122225710.1952066-1-peter.griffin@linaro.org>
References: <20240122225710.1952066-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of obtaining the PMU regmap directly use the new exynos_pmu_*()
APIs. The exynos_pmu_ APIs allow support of newer Exynos SoCs that have
atomic set/clear bit hardware and platforms where the PMU registers can
only be accessed via SMC call.

As all platforms that have PMU registers use these new APIs, remove the
syscon regmap lookup code, as it is now redundant.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/watchdog/Kconfig       |  1 +
 drivers/watchdog/s3c2410_wdt.c | 25 +++++++++----------------
 2 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7d22051b15a2..b3e90e1ddf14 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -513,6 +513,7 @@ config S3C2410_WATCHDOG
 	depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
 	select WATCHDOG_CORE
 	select MFD_SYSCON if ARCH_EXYNOS
+	select EXYNOS_PMU
 	help
 	  Watchdog timer block in the Samsung S3C64xx, S5Pv210 and Exynos
 	  SoCs. This will reboot the system when the timer expires with
diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 349d30462c8c..fd3a9ce870a0 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -28,6 +28,8 @@
 #include <linux/regmap.h>
 #include <linux/delay.h>
 
+#include <linux/soc/samsung/exynos-pmu.h>
+
 #define S3C2410_WTCON		0x00
 #define S3C2410_WTDAT		0x04
 #define S3C2410_WTCNT		0x08
@@ -187,7 +189,6 @@ struct s3c2410_wdt {
 	struct watchdog_device	wdt_device;
 	struct notifier_block	freq_transition;
 	const struct s3c2410_wdt_variant *drv_data;
-	struct regmap *pmureg;
 };
 
 static const struct s3c2410_wdt_variant drv_data_s3c2410 = {
@@ -355,8 +356,8 @@ static int s3c2410wdt_disable_wdt_reset(struct s3c2410_wdt *wdt, bool mask)
 	const u32 val = mask ? mask_val : 0;
 	int ret;
 
-	ret = regmap_update_bits(wdt->pmureg, wdt->drv_data->disable_reg,
-				 mask_val, val);
+	ret = exynos_pmu_update(wdt->drv_data->disable_reg,
+				mask_val, val);
 	if (ret < 0)
 		dev_err(wdt->dev, "failed to update reg(%d)\n", ret);
 
@@ -370,8 +371,8 @@ static int s3c2410wdt_mask_wdt_reset(struct s3c2410_wdt *wdt, bool mask)
 	const u32 val = (mask ^ val_inv) ? mask_val : 0;
 	int ret;
 
-	ret = regmap_update_bits(wdt->pmureg, wdt->drv_data->mask_reset_reg,
-				 mask_val, val);
+	ret = exynos_pmu_update(wdt->drv_data->mask_reset_reg,
+				mask_val, val);
 	if (ret < 0)
 		dev_err(wdt->dev, "failed to update reg(%d)\n", ret);
 
@@ -384,8 +385,8 @@ static int s3c2410wdt_enable_counter(struct s3c2410_wdt *wdt, bool en)
 	const u32 val = en ? mask_val : 0;
 	int ret;
 
-	ret = regmap_update_bits(wdt->pmureg, wdt->drv_data->cnt_en_reg,
-				 mask_val, val);
+	ret = exynos_pmu_update(wdt->drv_data->cnt_en_reg,
+				mask_val, val);
 	if (ret < 0)
 		dev_err(wdt->dev, "failed to update reg(%d)\n", ret);
 
@@ -617,7 +618,7 @@ static inline unsigned int s3c2410wdt_get_bootstatus(struct s3c2410_wdt *wdt)
 	if (!(wdt->drv_data->quirks & QUIRK_HAS_PMU_RST_STAT))
 		return 0;
 
-	ret = regmap_read(wdt->pmureg, wdt->drv_data->rst_stat_reg, &rst_stat);
+	ret = exynos_pmu_read(wdt->drv_data->rst_stat_reg, &rst_stat);
 	if (ret)
 		dev_warn(wdt->dev, "Couldn't get RST_STAT register\n");
 	else if (rst_stat & BIT(wdt->drv_data->rst_stat_bit))
@@ -698,14 +699,6 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	if (wdt->drv_data->quirks & QUIRKS_HAVE_PMUREG) {
-		wdt->pmureg = syscon_regmap_lookup_by_phandle(dev->of_node,
-						"samsung,syscon-phandle");
-		if (IS_ERR(wdt->pmureg))
-			return dev_err_probe(dev, PTR_ERR(wdt->pmureg),
-					     "syscon regmap lookup failed.\n");
-	}
-
 	wdt_irq = platform_get_irq(pdev, 0);
 	if (wdt_irq < 0)
 		return wdt_irq;
-- 
2.43.0.429.g432eaa2c6b-goog


