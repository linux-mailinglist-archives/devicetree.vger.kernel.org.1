Return-Path: <devicetree+bounces-44560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8554A85EF6D
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:02:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 131941F234B2
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCEA17995;
	Thu, 22 Feb 2024 03:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hk3WRaC/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E9017553
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708570961; cv=none; b=TJZiuvZdK/+mY0+gfb7dN2CB9UQrmFzwCiaxXLb2d9rbZsixwjiAoM9ShdRe0oefv2vmMUb8vmjKnjcqv1QWlJKFYEYkY1UxvUKU+Qr2MNA+HSis6n8ZPRM4r3LSzyrJV0cfD+HYht3N6m6d5xjpMt+eA6a9zkVf743cJFRahzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708570961; c=relaxed/simple;
	bh=CcFhAmCDJkEu5GxkEEK6E6NiHlXy/EqrzMtZ/fWu8Y0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=M6N72THcDrRPLpjX26C6UCiPBpcskclFRhd8PRPvnCBnCzaJ+64R2Ci5cGA/gbG5zChf4VjB+NrvgY0Fep25c8e4vT6LwhFA4Tx+OtELgrl1Wa0njq1rWa/o8mSEdMvpU+C5FAegy7lY0A8v8O15vVWEEQ2X9+x96ZRIokJhCSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hk3WRaC/; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-59a27fbe832so1444765eaf.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708570958; x=1709175758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zl+WacIm9QRXQC0Y5/uv+FIwM1YVxoD9Cr7x73AtUv0=;
        b=Hk3WRaC/12Bq7RPoYrz98cXzhpL7PqKSKJMsCkmlmYwt+SU00G8C+3hbwbIS55KJvf
         9qC2QcA2YA0QQ1FAEZZ6RNiindIOZ9ayQgUGbZpVQLoL6S7RuL96foc6Eve54HMa282E
         UrQ/c6R4ZdhdudoKy9Hs73LsoafRdKwbGoeeCfyUWp1mJfyVvwF2QVTry0cyJ+QyEuBc
         x/RC7Cvr3CaQyKZYEprfrD1mkIoR30M1Ey75dnQ3H18V6Z8hhbF3HGTtYLQnuaFdAGZj
         S4+pac1XCugBSMRsQagk4EzdJ3UaeI/Xww4llnaRfHfZ4sKLYmg+AZHu1YXRp2tuouQL
         qnMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708570958; x=1709175758;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zl+WacIm9QRXQC0Y5/uv+FIwM1YVxoD9Cr7x73AtUv0=;
        b=FrtNf3QuR0JlInp0koR7IRyPCBz18CacKs3iXuHeKbcAqPm6DGmxaApNEOfMQ20+3F
         EsIBZEUs477pwbWTM4S3zvpPYzMXWjCfDQGWwdnElXKvRNAliD3sY7RtHb8SOfm4QjXQ
         kC2s+budm5f6pQulMj2VimZtgucW4PheuzXfMb2m7KIBNJdgWjqFQ/3Ta6igb1kBRUAK
         bqUCbzg4VyatEFurrVDWQD1E+WbmGGdHrmEyrfv047Y+KvCxMW0xo4+oYjYmrJ91db+8
         iWG94pp73LairuFlRg7mtc8STHklbLZZkO02ujaeD6k9r598XtK0AmanXGZ707h4u6A6
         spXg==
X-Forwarded-Encrypted: i=1; AJvYcCVkwMZeWb/X+E7SCE9RgPzZ1siklp0NJ8/VKSTtFe20YSv+M6cMQd/N5Q02AorWxCA1FzSIA3PhHBNXjpsS65bI/If7G/vRaNvz0A==
X-Gm-Message-State: AOJu0Yxrku2stS7Nl1x/6KMMft3/OvvVzZsPp04TDF9lh2RNCFpel8QD
	78CXQydbbZD2IOxNFrfMZdlKLpifRy7ymoxzcCjnzS5WbmG+PZA4HXtXyaw1Ovk=
X-Google-Smtp-Source: AGHT+IH2HSioJXyNfPWhTv8Aki4+YIBLaNkslaAzYgx78hcG5wWTUzPaMZ6CmaxOILUiQ333qL2zzQ==
X-Received: by 2002:a4a:6116:0:b0:5a0:294d:dca4 with SMTP id n22-20020a4a6116000000b005a0294ddca4mr458878ooc.8.1708570958584;
        Wed, 21 Feb 2024 19:02:38 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id k15-20020a056830168f00b006e12023de5fsm1900371otr.46.2024.02.21.19.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:02:38 -0800 (PST)
From: Sam Protsenko <semen.protsenko@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tomasz Figa <tomasz.figa@gmail.com>,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/15] clk: samsung: Pull struct exynos_cpuclk into clk-cpu.c
Date: Wed, 21 Feb 2024 21:02:23 -0600
Message-Id: <20240222030235.27815-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240222030235.27815-1-semen.protsenko@linaro.org>
References: <20240222030235.27815-1-semen.protsenko@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reduce the scope of struct exynos_cpuclk, as it's only used in clk-cpu.c
internally. All drivers using clk-pll.h already include clk.h as well,
so this change doesn't break anything.

No functional change.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v2:
  - none

 drivers/clk/samsung/clk-cpu.c | 29 +++++++++++++++++++++++++
 drivers/clk/samsung/clk-cpu.h | 41 +++++------------------------------
 2 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/drivers/clk/samsung/clk-cpu.c b/drivers/clk/samsung/clk-cpu.c
index e02730776aaa..6412fd2580e0 100644
--- a/drivers/clk/samsung/clk-cpu.c
+++ b/drivers/clk/samsung/clk-cpu.c
@@ -34,6 +34,8 @@
 #include <linux/slab.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
+
+#include "clk.h"
 #include "clk-cpu.h"
 
 #define E4210_SRC_CPU		0x0
@@ -64,6 +66,33 @@
 #define DIV_MASK_ALL		GENMASK(31, 0)
 #define MUX_MASK		GENMASK(2, 0)
 
+/**
+ * struct exynos_cpuclk - information about clock supplied to a CPU core
+ * @hw:		handle between CCF and CPU clock
+ * @alt_parent:	alternate parent clock to use when switching the speed
+ *		of the primary parent clock
+ * @ctrl_base:	base address of the clock controller
+ * @lock:	cpu clock domain register access lock
+ * @cfg:	cpu clock rate configuration data
+ * @num_cfgs:	number of array elements in @cfg array
+ * @clk_nb:	clock notifier registered for changes in clock speed of the
+ *		primary parent clock
+ * @flags:	configuration flags for the CPU clock
+ *
+ * This structure holds information required for programming the CPU clock for
+ * various clock speeds.
+ */
+struct exynos_cpuclk {
+	struct clk_hw				hw;
+	const struct clk_hw			*alt_parent;
+	void __iomem				*ctrl_base;
+	spinlock_t				*lock;
+	const struct exynos_cpuclk_cfg_data	*cfg;
+	const unsigned long			num_cfgs;
+	struct notifier_block			clk_nb;
+	unsigned long				flags;
+};
+
 /*
  * Helper function to wait until divider(s) have stabilized after the divider
  * value has changed.
diff --git a/drivers/clk/samsung/clk-cpu.h b/drivers/clk/samsung/clk-cpu.h
index 0164bd9ad021..ee57f3638fed 100644
--- a/drivers/clk/samsung/clk-cpu.h
+++ b/drivers/clk/samsung/clk-cpu.h
@@ -8,7 +8,12 @@
 #ifndef __SAMSUNG_CLK_CPU_H
 #define __SAMSUNG_CLK_CPU_H
 
-#include "clk.h"
+/* The CPU clock registers have DIV1 configuration register */
+#define CLK_CPU_HAS_DIV1		BIT(0)
+/* When ALT parent is active, debug clocks need safe divider values */
+#define CLK_CPU_NEEDS_DEBUG_ALT_DIV	BIT(1)
+/* The CPU clock registers have Exynos5433-compatible layout */
+#define CLK_CPU_HAS_E5433_REGS_LAYOUT	BIT(2)
 
 /**
  * struct exynos_cpuclk_cfg_data - config data to setup cpu clocks
@@ -28,38 +33,4 @@ struct exynos_cpuclk_cfg_data {
 	unsigned long	div1;
 };
 
-/**
- * struct exynos_cpuclk - information about clock supplied to a CPU core
- * @hw:		handle between CCF and CPU clock
- * @alt_parent:	alternate parent clock to use when switching the speed
- *		of the primary parent clock
- * @ctrl_base:	base address of the clock controller
- * @lock:	cpu clock domain register access lock
- * @cfg:	cpu clock rate configuration data
- * @num_cfgs:	number of array elements in @cfg array
- * @clk_nb:	clock notifier registered for changes in clock speed of the
- *		primary parent clock
- * @flags:	configuration flags for the CPU clock
- *
- * This structure holds information required for programming the CPU clock for
- * various clock speeds.
- */
-struct exynos_cpuclk {
-	struct clk_hw				hw;
-	const struct clk_hw			*alt_parent;
-	void __iomem				*ctrl_base;
-	spinlock_t				*lock;
-	const struct exynos_cpuclk_cfg_data	*cfg;
-	const unsigned long			num_cfgs;
-	struct notifier_block			clk_nb;
-	unsigned long				flags;
-
-/* The CPU clock registers have DIV1 configuration register */
-#define CLK_CPU_HAS_DIV1		(1 << 0)
-/* When ALT parent is active, debug clocks need safe divider values */
-#define CLK_CPU_NEEDS_DEBUG_ALT_DIV	(1 << 1)
-/* The CPU clock registers have Exynos5433-compatible layout */
-#define CLK_CPU_HAS_E5433_REGS_LAYOUT	(1 << 2)
-};
-
 #endif /* __SAMSUNG_CLK_CPU_H */
-- 
2.39.2


