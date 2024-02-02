Return-Path: <devicetree+bounces-38010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAE484726D
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 15:58:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B34221C23E05
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 14:58:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5661468FD;
	Fri,  2 Feb 2024 14:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aoRVmQhy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02BBF145B21
	for <devicetree@vger.kernel.org>; Fri,  2 Feb 2024 14:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706885870; cv=none; b=PM0FOqC+ULxYdkHAC0WJtg1BgLY+/4DvxGRwwKum2wQCxaY3Ltg25gy+GGmYD/i72ei3xx9qEkbcw9UYRt1UNc240L6n9ydQ1BNqDuQtlB9yZmGWYsziEMs9pkQcU536cSpU3XCPVLTofY9OqgzGfZvYklPJPnAv9peeWgemuos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706885870; c=relaxed/simple;
	bh=4BFXoEKq0dKkvxzn8sylQVAACo62MxLym87l7SMkOww=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wui5QEBKqsOGFxwPLg1c5qKE6u1TH/zLKN5FVm1X+6DFdIY9b9Dg9WrsDhOxf4dpgWZ5XDthRcKX/ru2j13L6/fapxFfbDrrwLMp8erPy/ab+07pOvocDLH7qnOpZ5KKkU5m9ui6YWdNjcVt+DlGLzQgjTlqhqDLYvqr0pRTsgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aoRVmQhy; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a26ed1e05c7so322071066b.2
        for <devicetree@vger.kernel.org>; Fri, 02 Feb 2024 06:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706885866; x=1707490666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nxb698xf8QkMydB4z0YB9c3r/9JegaMn6kB+mk5+8LA=;
        b=aoRVmQhy57u2UqB1WRcXzrhm+2dZAjt/Zyr/l/g8PwNwu4sQISqanlmAQ0/kyxhlzW
         8ZrevEzcMbRV4r05DsSuefSvgFCNXCuNS3wq/gJHS5S1rQMx35+hOr7rT2ktyaJLHzMt
         8bHQb1MqXMlca0uMc/G+0kRJhfxw1ANae4KOShorL4Mtxo6LMlWBpzBazaLEGbgsdalG
         I4GMjf4WGFC3bU+afGC4l5AQ8IXzwrOIYWk6nSevI1cylepN0UJaT+Wn0bShRV33oybz
         xmhfssv42tynCu28soahyStY3ojhS5dGauAE9mWIocNKn3NGNuuAozGT906pqKjcO10t
         lqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706885866; x=1707490666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nxb698xf8QkMydB4z0YB9c3r/9JegaMn6kB+mk5+8LA=;
        b=rFlfYojEY0s2VW1G2fgUEKqONntjOhxJdoZL6zI871JKZ/skOSuItEBu4lZXPUrWuU
         fVzl6b2rs1XBu9GEnTpJtDaC2Eayyz0oMFqcvEstsC4NUMhXPCRSKt24B9WwGxP75nIK
         m359DbbdGt2FAwP9l0qfjrbyRryZ6Q9pN6zbv75G86PN4uNLvbOT+3Rw8SLLJiFBBqWm
         ybwG7cVvp3kDRTIlckgLS0b0vX88+dIk/LUXbcRF+p6YkZmDaUBVrP7SvXZdfLSwQEyZ
         20QR1D8BbgTLrtufb51NU2vCCU008RvDPy/T9IJVtDz+MhfvGDta6Xx+FMnbPpD2eoL0
         RWiQ==
X-Gm-Message-State: AOJu0YyB99HOamgrvibPYNL880oOw7GICJsmCSApX4ZK06UAqmqlbfj+
	39GXaEzVkcWVxyu2GX/y6kwb8WwUZUHb+6cQ5CzRvgS8JO3uorY2JlR9F96qa8w=
X-Google-Smtp-Source: AGHT+IEq5+ecus9eptHUpdICSkpu0fVKudtg5PpRU+RWCPogFNs8q/6X9DnhhUg2PfG3cuiVlChiOg==
X-Received: by 2002:a17:906:30c3:b0:a37:7fd:9a1e with SMTP id b3-20020a17090630c300b00a3707fd9a1emr1331738ejb.1.1706885866301;
        Fri, 02 Feb 2024 06:57:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXrgol+/K1m0i+gOh3V1PPaImHM0PUK7M2r5Dhk8DlbpenPP7J3oMx0Nu4z1Jcs9BMeM2nQPP9g8rKwaLyJxpSaW8BMRXW9G2cT9pZiqYa2kM2u8/fyuzQUC3HDW+SeAuGR8pyG0ALCT5h3XKnM9HLMfR5cCakEeuHs4glq5BGPJyIkWw23UPoxZFPIomrq0AqPtjjo3zGb4cT/Ooy4sWrfQmnp8+QkqA1eg8pknfWgaPMI+Cku8uOOmxVGY6DwVjxGS5aUsg8cHCsGUjJ6QlN3trlh035+uQK1peWwRYMKfC/719FJwj6ah0p3cWDp7hB+RU1z2wq0zIjCeSyoUc+wtlJ0Egcn+YON3VY/7m5u5m1+LegS6yZ1+/5V5txyyQpwwioOPjwESPuc7rcH+b91kgI7P5Eua1ZqrBuyktP28MUhpYO39r5RMb6kMwvegotd4a9BHVTP1UUgzTFzR/3xIuRtWcEGB6jDdS3F6qqkZz5ikEFLHly7CU2lY+2b7zGdusclQ/jk42rXZ6+jwzzBR9Ao0EhC9b5IozdHuH33wPvM6IRRw7gfCj4UKCQX4UPmOOXXfelfeIDyhR1Yumga9mB5PTE40iL5rRxnsyKVYKhDWIOst2adexrp/clU6H/VPwaIM3E0AUTpSBIXGZmj7x3U6ay4Rd3Li2p4UmlJhnRIQEBSAbRHmgJkw8luLlGRaHc9JVD1OQ==
Received: from gpeter-l.lan (host-92-21-139-67.as13285.net. [92.21.139.67])
        by smtp.gmail.com with ESMTPSA id t8-20020a17090616c800b00a36c60180aesm957200ejd.60.2024.02.02.06.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Feb 2024 06:57:45 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: arnd@arndb.de,
	krzysztof.kozlowski@linaro.org,
	linux@roeck-us.net,
	wim@linux-watchdog.org,
	alim.akhtar@samsung.com,
	jaewon02.kim@samsung.com,
	semen.protsenko@linaro.org
Cc: kernel-team@android.com,
	peter.griffin@linaro.org,
	alexey.klimov@linaro.org,
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
Subject: [PATCH v3 2/2] watchdog: s3c2410_wdt: use exynos_get_pmu_regmap_by_phandle() for PMU regs
Date: Fri,  2 Feb 2024 14:57:31 +0000
Message-ID: <20240202145731.4082033-3-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240202145731.4082033-1-peter.griffin@linaro.org>
References: <20240202145731.4082033-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Obtain the PMU regmap using the new API added to exynos-pmu driver rather
than syscon_regmap_lookup_by_phandle(). As this driver no longer depends
on mfd syscon remove that header and Kconfig dependency.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/watchdog/Kconfig       | 1 -
 drivers/watchdog/s3c2410_wdt.c | 8 ++++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 7d22051b15a2..d78fe7137799 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -512,7 +512,6 @@ config S3C2410_WATCHDOG
 	tristate "S3C6410/S5Pv210/Exynos Watchdog"
 	depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS || COMPILE_TEST
 	select WATCHDOG_CORE
-	select MFD_SYSCON if ARCH_EXYNOS
 	help
 	  Watchdog timer block in the Samsung S3C64xx, S5Pv210 and Exynos
 	  SoCs. This will reboot the system when the timer expires with
diff --git a/drivers/watchdog/s3c2410_wdt.c b/drivers/watchdog/s3c2410_wdt.c
index 349d30462c8c..686cf544d0ae 100644
--- a/drivers/watchdog/s3c2410_wdt.c
+++ b/drivers/watchdog/s3c2410_wdt.c
@@ -24,9 +24,9 @@
 #include <linux/slab.h>
 #include <linux/err.h>
 #include <linux/of.h>
-#include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
 #include <linux/delay.h>
+#include <linux/soc/samsung/exynos-pmu.h>
 
 #define S3C2410_WTCON		0x00
 #define S3C2410_WTDAT		0x04
@@ -699,11 +699,11 @@ static int s3c2410wdt_probe(struct platform_device *pdev)
 		return ret;
 
 	if (wdt->drv_data->quirks & QUIRKS_HAVE_PMUREG) {
-		wdt->pmureg = syscon_regmap_lookup_by_phandle(dev->of_node,
-						"samsung,syscon-phandle");
+		wdt->pmureg = exynos_get_pmu_regmap_by_phandle(dev->of_node,
+						 "samsung,syscon-phandle");
 		if (IS_ERR(wdt->pmureg))
 			return dev_err_probe(dev, PTR_ERR(wdt->pmureg),
-					     "syscon regmap lookup failed.\n");
+					     "PMU regmap lookup failed.\n");
 	}
 
 	wdt_irq = platform_get_irq(pdev, 0);
-- 
2.43.0.594.gd9cf4e227d-goog


