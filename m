Return-Path: <devicetree+bounces-180168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8B2AC2E23
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 09:31:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8CDE1BA0E49
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:31:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815AA1E1DEC;
	Sat, 24 May 2025 07:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Xj21y3bU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3C51DDC22
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 07:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748071856; cv=none; b=DK85tfdxq8eir7gfk6fWzO5V+uNzqaJ1YuglCirJc0oJhSmIG0TplNAa9uAoRWHCgSeYG5UMsO9yfXXJU+7wjxf4Vx5Ikmu9v8KBgZBc6jRrnVL3Cd2bfrvtR5xkkqzD2hTDkPmMzvv/osTBU+oHRaEZlSS/+L+q5gQ8f/CxVq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748071856; c=relaxed/simple;
	bh=7U9tlCoZc/rOj7EH40BDPDvRFAVAP6sWxjfHvLHGmLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qW1w0q7YsRtGyt2Hmrcawjqy2fYyABDPBAuv/RG9wa2gWg0ceoQaJYe2Ndi9a39yPR7Y+StC/+NeNeTqZ803aXJKlZF5f5zmmdsBzuw2uK4bHWaD3DktZ0rdi39c8+9jzeJ/8WRezXZxayS/x87GMhLaIyYQ754Jf/kdRGUfuv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Xj21y3bU; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43ede096d73so3719315e9.2
        for <devicetree@vger.kernel.org>; Sat, 24 May 2025 00:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748071853; x=1748676653; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpN965PXtFApJwEIkCDxa4SlX4t9L4NYatiQcXWo3sM=;
        b=Xj21y3bUkrs1ySK8AguOh0zH6cDlXJovXslBY1ZKJF8tcQ5+db9W4Uk5j+Dzy3Dct4
         JTBuqEvA96pVLzgoJOwQYX6KHDOXTEOrKTZhB0c/b6j4YCn+S7oIhBft8NW+FzbWz8Pg
         vM3l+t5XUneiJzm4cTYivaLwp3Dkd8oFubRWzypMgt1gtxXX2Rh1MZmwDJ5xZ8wlf6zu
         ys2Dx+mM0aYhMv3iGL+ZXFHSD1lyBOR5lMRpreEQhFldBtvepaQIHeFtXqrjF9AVIEXZ
         OKAhgM5xB8RhdjU6tLUh4PdCVpPy2fRPFqpSYB9pR87KrJxEa4T0a/qLn4KncU5x1wXi
         4SNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748071853; x=1748676653;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dpN965PXtFApJwEIkCDxa4SlX4t9L4NYatiQcXWo3sM=;
        b=KuKXNnAYu1geNKmzju8dwTjRcr0zOpNjkXAxbwsu+4XFgoUqw4ng9SOeMab5ZMRANt
         HU7XS89JhBd7xgOu4Kvq/+ZnuZ5Mcrr5KOS3ySDh1YECRIobvI7gsRBdcWCV7ck1hJu2
         qle3SM/gLlhAnTHUQFZrjpnw07HFw1weVa9FXevZT0BfwvYswefotqJiYZfTCm7cVxL7
         FcFmn56vPwjkP8ZsAEwTAcy7rNuM8czmVxaOYutPZJ18MUUeED5+128fLLjaYY/dIT5u
         1pWhHQL9BaGbqStXfgO9Amq8UnzgnLF7k3tyNrBcnXipVxssvEoFLOw/wPj6g1/s4EpG
         DZjA==
X-Forwarded-Encrypted: i=1; AJvYcCVjcEzDv8Kxg6mA8VecEiJwEC/N6ycWYAZAiz5Mv+7IApqieczHShGiCLtY3E7dQKLQbSSfSX0+LFta@vger.kernel.org
X-Gm-Message-State: AOJu0Yz97k0eJLeAzRmYh8FbiRS/IPnsPOSdLiKiSVzNsfpLZJRy0a2m
	oNpVSkMg+KPRPEGTnmFGTEC0lqFsn/oJFoxu/HHmXzZvUhRw75OwVH0OMtcOtBb132YBovstEX9
	TLGQT
X-Gm-Gg: ASbGnctaVULk4T6rW52ykkkU6cn/jYFys3lSGb/R2xqRJFLgZuydLbXaTPxoMzOnzJT
	pI48VeukIfRMlqqt80QGtuiwCuSW/RQdpgO3vNW83h1bybpwPJb4SAFHHV/afUSs4WpcymMHB8n
	mVA2EYsU1ReqoJDCJq+ggsZw9TvCdGvIJuLv+E1Asai4eMF7/mhpZpcOQmS2GY1fQ+jS/zAT+wP
	b/Ti1GvzNkVtciVyKcwRP29QvgBO3Bli5n3neTeJC3nrILH7wAHWPrLh5FdfXdR9MIXJOvRV/up
	5xai3AeDs8rOgFJo/E8z0VnZqz7aKSaKdpZwvzQPK8JspkNM9AgsXu6vtbu2RJCrCT3P8j64bCb
	5g5W9uUE=
X-Google-Smtp-Source: AGHT+IF0wVjcuoZd4VTJ0sGnuwAU+9jQIdeBlKfJuU5uEJZ08QXI5uRMh7/aqwevs21KvTC+SndKRA==
X-Received: by 2002:a05:6000:2890:b0:391:23de:b19a with SMTP id ffacd0b85a97d-3a4cb464885mr1858085f8f.31.1748071852553;
        Sat, 24 May 2025 00:30:52 -0700 (PDT)
Received: from gpeter-l.roam.corp.google.com ([212.105.145.168])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a3ca066eb7sm10924273f8f.2.2025.05.24.00.30.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 May 2025 00:30:52 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 24 May 2025 08:30:30 +0100
Subject: [PATCH 2/2] soc: samsung: exynos-pmu: Enable CPU Idle for gs101
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250524-gs101-cpuidle-v1-2-aea77a7842a6@linaro.org>
References: <20250524-gs101-cpuidle-v1-0-aea77a7842a6@linaro.org>
In-Reply-To: <20250524-gs101-cpuidle-v1-0-aea77a7842a6@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: William Mcvicker <willmcvicker@google.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel-team@android.com, Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6895;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=7U9tlCoZc/rOj7EH40BDPDvRFAVAP6sWxjfHvLHGmLE=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBoMXWmtDVOeQQo+H2c8AvBH76fkztXnDVtGuqHJ
 H/MOqEBp7iJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaDF1pgAKCRDO6LjWAjRy
 uvt+D/0bEVtxwCaxiKJJL5LsmcMbQ09zGgPLJNXhqcCbb4XRLAVXkYKJnwc/7SC54L78zeTcBmS
 sVdtvXO2LLihhhB4gE/dZrdoL6DFKdfv+p7EWTWY39yAluPT8Ws9dyu60bmSnwtETaB5TvRORLr
 CVpi1KXEZFqcLRd76WdwhOC3TfZGZdKTlfSQoVISIYZY30N1svryxaDJ0jtyVJ9yq4bmGGg6yNb
 r6LsXie6JJH/SL2iCEDXGj6JoNT+cbicc5ezR22b+edZqR16pQufrH1sDH1jDTnmmboNUHnYDzC
 fSI3li6BxlMIgZ4Tge/XxCGIQ1OcK1G3+nV9hoxZM0AkQ65EQ/mY14m1e1zYl7rVHXTC4UAqIce
 ab9dpeA/rDq/7AXDV05Rt8Qrp60mvG//C+R7tp+MyEv/cofB6mydmzHb2H/PdlZwhk7a2I1fMY0
 kf15KNkn87hfj9rZZmqXMAdMORi5G44moutqZKAJ4ZR9vuXN4to1tTl2QoccSM7w0eMK3lnMH8U
 4lvxY++hVNk6J9uWZd5nmql7NqnfqaXKRXU72FRvSsoOS0tN6Uvlc2PuAkXpNx83FbV8obI6J+V
 Bgqtlt24gLXBORP35mOAIFPwUyshxgEdlzr8g5+QrqtFVNSjwWEONlnxDPG1lwRG7N2h9W2Z2ub
 fXQSh7iXFNUrK4Q==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Register cpu pm notifiers for gs101 which call the
gs101_cpu_pmu_online/offline callbacks which in turn
program the ACPM hint. This is required to actually
enter the idle state.

A couple of corner cases are handled, namely when the
system is rebooting or suspending we ignore the request.
Additionally the request is ignored if the CPU is in
CPU hot plug.

Note: this patch has a runtime dependency on adding
'local-timer-stop' dt property to the CPU nodes. This
informs the time framework to switch to a broadcast timer
as the local timer will be shutdown. Without that DT
property specified the system hangs in early boot with
this patch applied.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 drivers/soc/samsung/exynos-pmu.c | 135 +++++++++++++++++++++++++++++++++++++--
 1 file changed, 131 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index a77288f49d249f890060c595556708334383c910..314f543d46b82dc3e991a5928fea50b81d4f92b7 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -8,6 +8,7 @@
 #include <linux/array_size.h>
 #include <linux/arm-smccc.h>
 #include <linux/cpuhotplug.h>
+#include <linux/cpu_pm.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/mfd/core.h>
@@ -15,6 +16,7 @@
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/delay.h>
+#include <linux/reboot.h>
 #include <linux/regmap.h>
 
 #include <linux/soc/samsung/exynos-regs-pmu.h>
@@ -35,6 +37,10 @@ struct exynos_pmu_context {
 	const struct exynos_pmu_data *pmu_data;
 	struct regmap *pmureg;
 	struct regmap *pmuintrgen;
+	spinlock_t cpupm_lock;	/* serialization lock */
+	bool __percpu *hotplug_ing;
+	atomic_t sys_suspended;
+	atomic_t sys_rebooting;
 };
 
 void __iomem *pmu_base_addr;
@@ -336,7 +342,7 @@ EXPORT_SYMBOL_GPL(exynos_get_pmu_regmap_by_phandle);
 #define CPU_INFORM_CLEAR	0
 #define CPU_INFORM_C2		1
 
-static int gs101_cpuhp_pmu_online(unsigned int cpu)
+static int gs101_cpu_pmu_online(unsigned int cpu)
 {
 	unsigned int cpuhint = smp_processor_id();
 	u32 reg, mask;
@@ -358,10 +364,26 @@ static int gs101_cpuhp_pmu_online(unsigned int cpu)
 	return 0;
 }
 
-static int gs101_cpuhp_pmu_offline(unsigned int cpu)
+static int gs101_cpuhp_pmu_online(unsigned int cpu)
+{
+	gs101_cpu_pmu_online(cpu);
+
+	/*
+	 * Mark this CPU as having finished the hotplug.
+	 * This means this CPU can now enter C2 idle state.
+	 */
+	*per_cpu_ptr(pmu_context->hotplug_ing, cpu) = false;
+
+	return 0;
+}
+
+static int gs101_cpu_pmu_offline(unsigned int cpu)
 {
 	u32 reg, mask;
-	unsigned int cpuhint = smp_processor_id();
+	unsigned int cpuhint;
+
+	spin_lock(&pmu_context->cpupm_lock);
+	cpuhint	= smp_processor_id();
 
 	/* set cpu inform hint */
 	regmap_write(pmu_context->pmureg, GS101_CPU_INFORM(cpuhint),
@@ -379,16 +401,89 @@ static int gs101_cpuhp_pmu_offline(unsigned int cpu)
 	regmap_read(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_UPEND, &reg);
 	regmap_write(pmu_context->pmuintrgen, GS101_GRP1_INTR_BID_CLEAR,
 		     reg & mask);
+
+	spin_unlock(&pmu_context->cpupm_lock);
+	return 0;
+}
+
+static int gs101_cpuhp_pmu_offline(unsigned int cpu)
+{
+	/*
+	 * Mark this CPU as entering hotplug. So as not to confuse
+	 * ACPM the CPU entering hotplug should not enter C2 idle state.
+	 */
+	*per_cpu_ptr(pmu_context->hotplug_ing, cpu) = true;
+
+	gs101_cpu_pmu_offline(cpu);
+
 	return 0;
 }
 
+static int gs101_cpu_pm_notify_callback(struct notifier_block *self,
+					unsigned long action, void *v)
+{
+	int cpu = smp_processor_id();
+
+	switch (action) {
+	case CPU_PM_ENTER:
+		/*
+		 * Ignore CPU_PM_ENTER event in reboot or
+		 * suspend sequence.
+		 */
+
+		if (atomic_read(&pmu_context->sys_suspended) ||
+		    atomic_read(&pmu_context->sys_rebooting))
+			return NOTIFY_OK;
+
+		if (*per_cpu_ptr(pmu_context->hotplug_ing, cpu))
+			return NOTIFY_BAD;
+
+		gs101_cpu_pmu_offline(cpu);
+
+		break;
+	case CPU_PM_EXIT:
+
+		if (atomic_read(&pmu_context->sys_rebooting))
+			return NOTIFY_OK;
+
+		gs101_cpu_pmu_online(cpu);
+
+		break;
+	}
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block gs101_cpu_pm_notifier = {
+	.notifier_call = gs101_cpu_pm_notify_callback,
+	.priority = INT_MAX	/* we want to be called first */
+};
+
+static int exynos_cpupm_reboot_notifier(struct notifier_block *nb,
+					unsigned long event, void *v)
+{
+	switch (event) {
+	case SYS_POWER_OFF:
+	case SYS_RESTART:
+		atomic_set(&pmu_context->sys_rebooting, 1);
+		break;
+	}
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block exynos_cpupm_reboot_nb = {
+	.priority = INT_MAX,
+	.notifier_call = exynos_cpupm_reboot_notifier,
+};
+
 static int exynos_pmu_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct regmap_config pmu_regmcfg;
 	struct regmap *regmap;
 	struct resource *res;
-	int ret;
+	int ret, cpu;
 
 	pmu_base_addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pmu_base_addr))
@@ -444,6 +539,12 @@ static int exynos_pmu_probe(struct platform_device *pdev)
 			 */
 			dev_warn(&pdev->dev, "pmu-intr-gen syscon unavailable\n");
 		} else {
+			pmu_context->hotplug_ing = alloc_percpu(bool);
+
+			/* set PMU to power on */
+			for_each_online_cpu(cpu)
+				gs101_cpuhp_pmu_online(cpu);
+
 			cpuhp_setup_state(CPUHP_BP_PREPARE_DYN,
 					  "soc/exynos-pmu:prepare",
 					  gs101_cpuhp_pmu_online, NULL);
@@ -451,6 +552,12 @@ static int exynos_pmu_probe(struct platform_device *pdev)
 			cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
 					  "soc/exynos-pmu:online",
 					  NULL, gs101_cpuhp_pmu_offline);
+
+			cpu_pm_register_notifier(&gs101_cpu_pm_notifier);
+			spin_lock_init(&pmu_context->cpupm_lock);
+			atomic_set(&pmu_context->sys_rebooting, 0);
+			atomic_set(&pmu_context->sys_suspended, 0);
+			register_reboot_notifier(&exynos_cpupm_reboot_nb);
 		}
 	}
 
@@ -471,10 +578,30 @@ static int exynos_pmu_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int exynos_cpupm_suspend_noirq(struct device *dev)
+{
+	atomic_set(&pmu_context->sys_suspended, 1);
+	return 0;
+}
+
+static int exynos_cpupm_resume_noirq(struct device *dev)
+{
+	atomic_set(&pmu_context->sys_suspended, 0);
+	return 0;
+}
+
+static const struct dev_pm_ops cpupm_pm_ops = {
+	.suspend_noirq = exynos_cpupm_suspend_noirq,
+	.resume_noirq = exynos_cpupm_resume_noirq,
+};
+
 static struct platform_driver exynos_pmu_driver = {
 	.driver  = {
 		.name   = "exynos-pmu",
 		.of_match_table = exynos_pmu_of_device_ids,
+#ifdef CONFIG_PM_SLEEP
+		.pm = &cpupm_pm_ops,
+#endif
 	},
 	.probe = exynos_pmu_probe,
 };

-- 
2.49.0.1151.ga128411c76-goog


