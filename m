Return-Path: <devicetree+bounces-162712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96948A798F8
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 01:36:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5497C3B36FB
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 23:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5B01FAC55;
	Wed,  2 Apr 2025 23:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mWwL3sBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f74.google.com (mail-pj1-f74.google.com [209.85.216.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137191F8729
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 23:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743636898; cv=none; b=rslzRLC2muamDoBE1kW+oiGXC1Mifx2X18tMFavoZC6xdf4VaEqfrv8Uq7emo3c3AyRpo1SPgingpfmIQRW5eZXlZuAyHgSYv9FG2nVkAR4XmyW52bKoWdQwNY18sC370yD88UkD1BrG6rDHbCONq+JbxZJildvhAaHne0+cWWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743636898; c=relaxed/simple;
	bh=qAYEYh13xb1QG7YK8KWZYMX04aS1UtrvsKb32eVZ+XA=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=DwUibm/l2XaT0T1KZEPo1eTW98EkTxazt5KN47TjL5TV8vBf4TgbmnBozClcfcnPX9RerJeHhuvSxeSvYeBPyEeuQ1KQwjVG0kqnJ0iKAUe3mZF97lZaxXEEaAcCJCYbMSeC3hC/x4nmQhQ8GUNN1LEiC1IPnGdHGjA61bGqo2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mWwL3sBe; arc=none smtp.client-ip=209.85.216.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--willmcvicker.bounces.google.com
Received: by mail-pj1-f74.google.com with SMTP id 98e67ed59e1d1-3032f4ea8cfso277440a91.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 16:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743636895; x=1744241695; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=hT8+V7ZuQjQdgRqgqrLtrWk6gURFJ9+tH19teOBSnwg=;
        b=mWwL3sBejdnf9rKa6ytoTL/Fba3jwTzCEjj/EYOQtxPmMgyotEFlSldxpXdCbS+Pnd
         2mi3/pF7DrN4PkfpG3wE3PrmTL3Q/8KwTaoP2tAAr3wS+bF07ipKvaJUis0/tQooqT4j
         qH04YbssOb0SuVZV4a6brgWbC+spln2DAost4cOQAKZV3LUAr0cKWntKk2s/ju5PPn7b
         zNPv0o00VWu1TPdyrUmQfHVyquy0Iyd16l8c39KQ2TfrghFhv0Hqf6vM6jJHNbAgJLPb
         CwnuHI+Bx+1nNZWVdqOtqjIalCZiVaOCbcmcc7oe4vlqrkhmQZHFJbulN8ZVmvQCwfee
         XdyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743636895; x=1744241695;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hT8+V7ZuQjQdgRqgqrLtrWk6gURFJ9+tH19teOBSnwg=;
        b=Ay7mOZh8BEM3Rw/QbmJWnstdxtfxlvVm3g7XVGgwUgDl206kn+uDO++CCHC+waEgzF
         6lDpLJIn1em8FxFwLnurX69VNHgvS8iyzZuijQ26NRVW+FXDh49dJvD95Jp2eQ1jVv+P
         OJQ0/WWnJkVrTPaeEfav+xEJoJ0EMSgDGoP42uxw7oI5R/auiKVpcCBkpX/TuxWuhdrb
         RufZyMO6sZ+i/JA+nL9ezn+rQHijF/OACtptlc7As0jQ7fm0J6m+A2fgoxZKk8rMR7IV
         jqTM5kdlw0yAvLsIW5JPmElJCKNMl1XkHXvsPIGBquzOsAVoojLqoaDvbWTwLSboQqIC
         ty3w==
X-Forwarded-Encrypted: i=1; AJvYcCWz5Xbkomc6U+MY5jcLSod7V/vTDp2imSHvrDzxVzoKYYlmSAoTskypeuoGfsh9f1ijyzCbNMcdiWgo@vger.kernel.org
X-Gm-Message-State: AOJu0YzCECKUbnEtO6a6+t9IY/xNa1zGQCWz1qkStAW4TEpUQKH9W3HB
	HU81m7ggndGGgC82JdoEI3Uklcx4Un09qLRyztm+vPi7X0p01RMudXBr4dNa6J3tGo0qntS4qv8
	lJ5WBRC08IBMIlxPECYpJfLyw4g==
X-Google-Smtp-Source: AGHT+IHFsyWkhTZjY/X3yM1NCzR6YFj3tfba3cqV3Fzaa0HY9aOCS7UhQUkmVnrZeo30hR6EANqHIIllbdzJIevDeHw=
X-Received: from pji12.prod.google.com ([2002:a17:90b:3fcc:b0:301:4260:4d23])
 (user=willmcvicker job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:90b:5247:b0:2fa:1f1b:3db2 with SMTP id 98e67ed59e1d1-3057cc00681mr852399a91.25.1743636895371;
 Wed, 02 Apr 2025 16:34:55 -0700 (PDT)
Date: Wed,  2 Apr 2025 16:33:57 -0700
In-Reply-To: <20250402233407.2452429-1-willmcvicker@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250402233407.2452429-1-willmcvicker@google.com>
X-Mailer: git-send-email 2.49.0.472.ge94155a9ec-goog
Message-ID: <20250402233407.2452429-7-willmcvicker@google.com>
Subject: [PATCH v2 6/7] clocksource/drivers/exynos_mct: Add module support
From: Will McVicker <willmcvicker@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Saravana Kannan <saravanak@google.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>
Cc: Will McVicker <willmcvicker@google.com>, Donghoon Yu <hoony.yu@samsung.com>, 
	Hosung Kim <hosung0.kim@samsung.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Youngmin Nam <youngmin.nam@samsung.com>, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

From: Donghoon Yu <hoony.yu@samsung.com>

On Arm64 platforms the Exynos MCT driver can be built as a module. On
boot (and even after boot) the arch_timer is used as the clocksource and
tick timer. Once the MCT driver is loaded, it can be used as the wakeup
source for the arch_timer.

Signed-off-by: Donghoon Yu <hoony.yu@samsung.com>
Signed-off-by: Youngmin Nam <youngmin.nam@samsung.com>
[original commit from https://android.googlesource.com/kernel/gs/+/8a52a8288ec7d88ff78f0b37480dbb0e9c65bbfd]
Signed-off-by: Will McVicker <willmcvicker@google.com>
---
 drivers/clocksource/Kconfig      |  3 +-
 drivers/clocksource/exynos_mct.c | 49 +++++++++++++++++++++++++++-----
 2 files changed, 44 insertions(+), 8 deletions(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 487c85259967..e89373827c3a 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -443,7 +443,8 @@ config ATMEL_TCB_CLKSRC
 	  Support for Timer Counter Blocks on Atmel SoCs.
 
 config CLKSRC_EXYNOS_MCT
-	bool "Exynos multi core timer driver" if COMPILE_TEST
+	tristate "Exynos multi core timer driver" if ARM64
+	default y if ARCH_EXYNOS || COMPILE_TEST
 	depends on ARM || ARM64
 	depends on ARCH_ARTPEC || ARCH_EXYNOS || COMPILE_TEST
 	help
diff --git a/drivers/clocksource/exynos_mct.c b/drivers/clocksource/exynos_mct.c
index 62febeb4e1de..8943274378be 100644
--- a/drivers/clocksource/exynos_mct.c
+++ b/drivers/clocksource/exynos_mct.c
@@ -15,9 +15,11 @@
 #include <linux/cpu.h>
 #include <linux/delay.h>
 #include <linux/percpu.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_irq.h>
 #include <linux/of_address.h>
+#include <linux/platform_device.h>
 #include <linux/clocksource.h>
 #include <linux/sched_clock.h>
 
@@ -241,7 +243,7 @@ static cycles_t exynos4_read_current_timer(void)
 }
 #endif
 
-static int __init exynos4_clocksource_init(bool frc_shared)
+static int exynos4_clocksource_init(bool frc_shared)
 {
 	/*
 	 * When the frc is shared, the main processor should have already
@@ -511,7 +513,7 @@ static int exynos4_mct_dying_cpu(unsigned int cpu)
 	return 0;
 }
 
-static int __init exynos4_timer_resources(struct device_node *np)
+static int exynos4_timer_resources(struct device_node *np)
 {
 	struct clk *mct_clk, *tick_clk;
 
@@ -539,7 +541,7 @@ static int __init exynos4_timer_resources(struct device_node *np)
  * @local_idx: array mapping CPU numbers to local timer indices
  * @nr_local: size of @local_idx array
  */
-static int __init exynos4_timer_interrupts(struct device_node *np,
+static int exynos4_timer_interrupts(struct device_node *np,
 					   unsigned int int_type,
 					   const u32 *local_idx,
 					   size_t nr_local)
@@ -652,7 +654,7 @@ static int __init exynos4_timer_interrupts(struct device_node *np,
 	return err;
 }
 
-static int __init mct_init_dt(struct device_node *np, unsigned int int_type)
+static int mct_init_dt(struct device_node *np, unsigned int int_type)
 {
 	bool frc_shared = of_property_read_bool(np, "samsung,frc-shared");
 	u32 local_idx[MCT_NR_LOCAL] = {0};
@@ -700,15 +702,48 @@ static int __init mct_init_dt(struct device_node *np, unsigned int int_type)
 	return exynos4_clockevent_init();
 }
 
-
-static int __init mct_init_spi(struct device_node *np)
+static int mct_init_spi(struct device_node *np)
 {
 	return mct_init_dt(np, MCT_INT_SPI);
 }
 
-static int __init mct_init_ppi(struct device_node *np)
+static int mct_init_ppi(struct device_node *np)
 {
 	return mct_init_dt(np, MCT_INT_PPI);
 }
+
+#ifdef MODULE
+static int exynos4_mct_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	int (*mct_init)(struct device_node *np);
+
+	mct_init = of_device_get_match_data(dev);
+	if (!mct_init)
+		return -EINVAL;
+
+	return mct_init(dev->of_node);
+}
+
+static const struct of_device_id exynos4_mct_match_table[] = {
+	{ .compatible = "samsung,exynos4210-mct", .data = &mct_init_spi, },
+	{ .compatible = "samsung,exynos4412-mct", .data = &mct_init_ppi, },
+	{}
+};
+MODULE_DEVICE_TABLE(of, exynos4_mct_match_table);
+
+static struct platform_driver exynos4_mct_driver = {
+	.probe		= exynos4_mct_probe,
+	.driver		= {
+		.name	= "exynos-mct",
+		.of_match_table = exynos4_mct_match_table,
+	},
+};
+module_platform_driver(exynos4_mct_driver);
+#else
 TIMER_OF_DECLARE(exynos4210, "samsung,exynos4210-mct", mct_init_spi);
 TIMER_OF_DECLARE(exynos4412, "samsung,exynos4412-mct", mct_init_ppi);
+#endif
+
+MODULE_DESCRIPTION("Exynos Multi Core Timer Driver");
+MODULE_LICENSE("GPL");
-- 
2.49.0.472.ge94155a9ec-goog


