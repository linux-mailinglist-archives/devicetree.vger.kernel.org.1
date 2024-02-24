Return-Path: <devicetree+bounces-45591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1C86275A
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 21:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 426C41C20BCD
	for <lists+devicetree@lfdr.de>; Sat, 24 Feb 2024 20:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D1E34E1BA;
	Sat, 24 Feb 2024 20:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dvSgK1nR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CB4C4D12D
	for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 20:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708806060; cv=none; b=jCYiXON3km7SKYvNGNhitnuz0tHxXJr4zzveDytoEgW4XlsW9N7kJPgXyzbW7+Ih8Xte6ozGJBpKUDZ6hiEIDRl5RBq2rvP6k4m4xEPTZzt29FTb4dO+6EQ2kqwW5sJVlsP5o9Q5pMSMpHdbH66p1gHOtFQwn3+x2DZcIh77eLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708806060; c=relaxed/simple;
	bh=fN7G3wPmBsJcgLlgsVKiAx8cGoftNtuuXTgf0LWnTHk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aNwGbPDzgbzJfwb7Bd9jXim2IehFVMhDoeJMIpvv3frBJ0RWk0BHTzz1Z9BC7/vzf9hqksOCnr0QBtyMFiqBEP8H4ZPg7KwQGBBLbv5DLPWDwQpGNFWZcd+K4E+Rci4MA8sZnO4nvBsrpy/FbpnubntM9NkzZfNkeqPoUvAIKO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dvSgK1nR; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6ddca59e336so1161168a34.0
        for <devicetree@vger.kernel.org>; Sat, 24 Feb 2024 12:20:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708806056; x=1709410856; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T4GSfJijJ5j5tZLrOHCfmxmebAz3nZFw4CYMZ7bPECs=;
        b=dvSgK1nRbn7WRjpSKi8ySSRSfygHhpdwrNX4OcsRg7a4QmM24ZM9WN1mjOB5nnahj1
         r0MkgJJSqQ0NX1yzxS0iLsgdxmv8B0gfV3yI0WYnfRd2NHQU0Pywde1aDEkb/MHIgv1A
         K0IgdI1ehG8SSbyDhRJKvpaUJcbBnBK3XgfN164KYN7rVzfGkoHLF7p3E7S8J3tOboxF
         tigH5dQWR9dgDCBAXyv95b8pSez9lyyyk3EfR03GYdr6QXAPAuQb4kZIpgI33ltEExDd
         u7Yz9iv++1Ivp6kPea4TuzAYhi7JeIdy6YtyABBteo1YTb7m+lFP424IGBwhku43lsgY
         hhLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708806056; x=1709410856;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T4GSfJijJ5j5tZLrOHCfmxmebAz3nZFw4CYMZ7bPECs=;
        b=soOp8rpASrkfZDSiS9jhJ50THvK4yq8L6FBcqExPeZqIZaB/C4xUq5gR4ixUTfQ7zY
         C9P3k3S/jBfFJ/aYVOxNVDaJxuXcGm/3THUAzJe9t+XUtqItC5IGarRTlO9eVPZhOBq9
         /GbGbd73v9N9bUQSQR2LSsuRLlHlFyCo4EGHTB1N9eAAKAiWTgWQzmzZYR0OF8J/DIlI
         w1Hu53Rotd7pgGN3Ik8rgizl8FNm0eEzzEMLCMNFWkT7pfu8v8R5VP1Hhv6BC2ANN/1C
         xt0Ye/u54Q0QT07n2OEc3s21H8RxTUUBgbjrIjBOna7lp6Deey+ngLdgy544Zyzk8TdE
         cTkg==
X-Forwarded-Encrypted: i=1; AJvYcCUmimwGLuEtBtkIKaFto0TjiDo+52InOr7oKbPsk3vDNEFNSbe1nr7VXTpYl6Df6MHzFqfh2Q6KRoQCFoBfvuz0vBrt2qYAz1acRg==
X-Gm-Message-State: AOJu0YzEY4BlwLdvJhjeB9mam7F5r6UaBZfWmA0SFZxO6QcaM4A/B0UI
	aiktahU146zm4So295Cf/QLTdwGTzONwaFdk+gWIjOYHJjeKvCVw4mVbxNlhwQhXip7TZGgkf/u
	3eswoJA==
X-Google-Smtp-Source: AGHT+IFezpIvERjHD2pciFQcNjycbJTG/ZehyajyoyHMTJjZFoS0RTBxr/K78EmMg1zM64y7rVK69g==
X-Received: by 2002:a9d:754b:0:b0:6e4:527c:14b with SMTP id b11-20020a9d754b000000b006e4527c014bmr1191372otl.5.1708806056671;
        Sat, 24 Feb 2024 12:20:56 -0800 (PST)
Received: from localhost ([136.62.192.75])
        by smtp.gmail.com with ESMTPSA id t22-20020a0568301e3600b006e12266433csm407445otr.27.2024.02.24.12.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Feb 2024 12:20:56 -0800 (PST)
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
Subject: [PATCH v3 03/15] clk: samsung: Pull struct exynos_cpuclk into clk-cpu.c
Date: Sat, 24 Feb 2024 14:20:41 -0600
Message-Id: <20240224202053.25313-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240224202053.25313-1-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
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
Changes in v3:
  - none

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


