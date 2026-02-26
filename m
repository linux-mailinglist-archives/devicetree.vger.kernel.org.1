Return-Path: <devicetree+bounces-268933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QFpdHG9roGk3jgQAu9opvQ
	(envelope-from <devicetree+bounces-268933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:49:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2271D1A9154
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BDF65305CAAB
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 854F84266AE;
	Thu, 26 Feb 2026 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mOMu0akj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ADC425CD1
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120843; cv=none; b=Ijp0BlOtxH7oqr2tTRsC+rMZECz/byJGQfBFXf/AGq5E4FbxtRajWLUFhfwq/GRxNa6AVw7oEHBZQ796Mi5tdykncWVq1RzzCrvmvUpAhxIdAYBlk3UcUq5H/I55ChR9vSVSDmq8jTRujSBVjytEERu0OYsoLFiXFOiyfvPlRxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120843; c=relaxed/simple;
	bh=owcHZmdFB8zEmzqIjY21q/Dw0rwYCUtosZQrUBx8k0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iKxzGtsoRSFgObNrX+IUiVt3IJpbNIswurUWw0/EEz/wKtiSZlwsva4NulsFi4ZzSiS90zPTSSSrLnEfshb8hDK70O/KiTZO4i4HFVeDc02nuExOQfqpei13IalUKWCSv7rqaKZ6Swj9OB3+tKgm0Z1ldRRP3Qfljv8LlR9tCHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mOMu0akj; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48329eb96a7so7829975e9.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120836; x=1772725636; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FbzUlYKMaWIfUalQuB+QlRwOyMJx/oa+ZaF52Snu/7g=;
        b=mOMu0akjTgfjUQYgxoVmzSJxdxtOk4VN7VTZ+e0iJkIsxXnNUcSlcBPmXObkjv5sLO
         mM3d02cuS//gr5HeFjiju/4CoUvDgoN9IHUyGJaqe/YkT7qQMzgp1bOJiZX5fNmhmd1j
         7Yk8IyC5x05uGwYgIKnL17UvN2T9OFmcO64RlwehgHE2Bkt6gwHE+uzgIQ4opuc14LtM
         Xv5ZnUipkdZa278OfYEu4vmnsqsehPe4xXen0dbY8nmENMoOAmlQ2M2IlQGYSByp7l7a
         MDLI/CsXKyohYLsSNCyO8ZTdZbjexBn/BEW6ndZ7gAp0cUX0IHE7zieXu3irUcCl1UCi
         ZwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120836; x=1772725636;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FbzUlYKMaWIfUalQuB+QlRwOyMJx/oa+ZaF52Snu/7g=;
        b=ZiuoHrk49NldMoMICe/4Hv1r4CU2NrF0jtwW6R2SrVxh39EZmM7i4UAss4HO0x0SNL
         mV31eegA6lW/vyI+cqfXmpKJdzP5fuvdmJzBeyeI6YwHsHJ6UYzn9W8rokwOkwOjD4bL
         85WGKCuVBNo5fSxwrMueIuiiHNvGleL/DptbiZPAz+NrG08mmjIqXBjZ48KLw8417vfd
         il2vwHGkrKO7m4hddKVTIeHY58PWJFacGi2y7mZmAsTkhubcYDs4MEWGLUfDoSLOdqsy
         NdAZIYMl7F6kmmZ/SURdFTbl0waTPWZpLpTFPsX+VqorAk5S2oP65/wkBeHOQe6bquJ6
         eOCw==
X-Forwarded-Encrypted: i=1; AJvYcCU9iufHc4g9WKLnBE+6Xq5AEQ8AHNr7HX430fDTNwHCE9kwtiDlCfWHeuw1aeNyWkbx/rewpsCY2kdH@vger.kernel.org
X-Gm-Message-State: AOJu0YwHKrf37LPLnWjGw6DbKO+QMjS6XGkcpZ+1T4iffvEbD5HIRFSa
	+nzp/XGcT+XCHrO9FOuXkPUFCT5bokpE5N+V6DWh07+Apcyn+6z8KsDdC1kIxIkoS/4=
X-Gm-Gg: ATEYQzwvJo3+lFtgDFYDSmoybVvXGfH7JXZvNxtFsHOYj/PaXyPrg0duo5BRXT0i4NB
	g9D/oujB2pXG/ukE+NUrC/oPGcceW4HgGMw4BqI/Ze9+CZX49lNNKVtVoSUtlfT44SRy8aE3PsX
	Zg8TNVfWo80ok8IiiNE02pSKGYN5xB0GgxBoAI2jfcDZZ569u476tyd3xiHMe3TlPHMZHOhAeyX
	6uQ9LUn1mCaJHtMYBGYS3RdqNdErrlaBx2b8B6nYIXJhFPIBauvwWoC0HCrjKUgqX+u1K41LcQJ
	zpvspvNRrCglT3wrqmjgr3LsbWentqmEOMSEJXS43upedTt3QfgkLIt+1tcDHZOT4yhzBjN2cFX
	+rjKQSPBN7rHncUpRLz4hswSDNnxni8vJbhYJeMXRWkX7S4LvB7LcH7TWUw0HYb5VxwqUSeLr0U
	3E2Ffc4mUXXeD3iUp15F4peBtdyvee0rb/lPTN0pp1YJNtKXaOMorKTYgs6gJ3a80yV4vPC4Nq0
	tKZp42qgaRAOXc=
X-Received: by 2002:a05:600c:3f14:b0:483:703e:4ad5 with SMTP id 5b1f17b1804b1-483a95e2563mr324727115e9.22.1772120836160;
        Thu, 26 Feb 2026 07:47:16 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:15 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:12 +0000
Subject: [PATCH RFC 6/8] soc: samsung: exynos-pmu: generalise GS101 PMU
 intr gen for Exynos SoCs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-6-71d7c4063382@linaro.org>
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>, 
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268933-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2271D1A9154
X-Rspamd-Action: no action

The GS101 PMU interrupts generation block is not exclusive to Google
GS101 SoCs and is a standard Exynos IP block found in different older
SoCs like Exynos850 and others.
To prepare for the addition of Exynos850 PMU interrupts generation block
and cpu hotplug support we need to generalise (Exynosize or Exynosify)
names and calls related to CPU hotplug and CPU idle.
pmu_context struct has now calls to offline and online procedures which are
SoC specific (and maybe even firmware-specific for any given board),
and one of this set of {offline,online} calls becomes GS101-specific.
This allows adding calls for other boards later.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 drivers/soc/samsung/exynos-pmu.c | 39 ++++++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index 92870e6ffc1c..0967fa56708a 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -36,6 +36,8 @@ struct exynos_pmu_context {
 	 */
 	raw_spinlock_t cpupm_lock;
 	unsigned long *in_cpuhp;
+	int (*cpu_pmu_offline)(unsigned int cpu);
+	int (*cpu_pmu_online)(unsigned int cpu);
 	bool sys_insuspend;
 	bool sys_inreboot;
 };
@@ -256,7 +258,7 @@ static int __gs101_cpu_pmu_online(unsigned int cpu)
 }
 
 /* Called from CPU PM notifier (CPUIdle code path) with IRQs disabled */
-static int gs101_cpu_pmu_online(void)
+static int exynos_cpu_pmu_online(void)
 {
 	int cpu;
 
@@ -268,20 +270,20 @@ static int gs101_cpu_pmu_online(void)
 	}
 
 	cpu = smp_processor_id();
-	__gs101_cpu_pmu_online(cpu);
+	pmu_context->cpu_pmu_online(cpu);
 	raw_spin_unlock(&pmu_context->cpupm_lock);
 
 	return NOTIFY_OK;
 }
 
 /* Called from CPU hot plug callback with IRQs enabled */
-static int gs101_cpuhp_pmu_online(unsigned int cpu)
+static int exynos_cpuhp_pmu_online(unsigned int cpu)
 {
 	unsigned long flags;
 
 	raw_spin_lock_irqsave(&pmu_context->cpupm_lock, flags);
 
-	__gs101_cpu_pmu_online(cpu);
+	pmu_context->cpu_pmu_online(cpu);
 	/*
 	 * Mark this CPU as having finished the hotplug.
 	 * This means this CPU can now enter C2 idle state.
@@ -320,7 +322,7 @@ static int __gs101_cpu_pmu_offline(unsigned int cpu)
 }
 
 /* Called from CPU PM notifier (CPUIdle code path) with IRQs disabled */
-static int gs101_cpu_pmu_offline(void)
+static int exynos_cpu_pmu_offline(void)
 {
 	int cpu;
 
@@ -338,14 +340,14 @@ static int gs101_cpu_pmu_offline(void)
 		return NOTIFY_OK;
 	}
 
-	__gs101_cpu_pmu_offline(cpu);
+	pmu_context->cpu_pmu_offline(cpu);
 	raw_spin_unlock(&pmu_context->cpupm_lock);
 
 	return NOTIFY_OK;
 }
 
 /* Called from CPU hot plug callback with IRQs enabled */
-static int gs101_cpuhp_pmu_offline(unsigned int cpu)
+static int exynos_cpuhp_pmu_offline(unsigned int cpu)
 {
 	unsigned long flags;
 
@@ -355,29 +357,29 @@ static int gs101_cpuhp_pmu_offline(unsigned int cpu)
 	 * ACPM the CPU entering hotplug should not enter C2 idle state.
 	 */
 	set_bit(cpu, pmu_context->in_cpuhp);
-	__gs101_cpu_pmu_offline(cpu);
+	pmu_context->cpu_pmu_offline(cpu);
 
 	raw_spin_unlock_irqrestore(&pmu_context->cpupm_lock, flags);
 
 	return 0;
 }
 
-static int gs101_cpu_pm_notify_callback(struct notifier_block *self,
+static int exynos_cpu_pm_notify_callback(struct notifier_block *self,
 					unsigned long action, void *v)
 {
 	switch (action) {
 	case CPU_PM_ENTER:
-		return gs101_cpu_pmu_offline();
+		return exynos_cpu_pmu_offline();
 
 	case CPU_PM_EXIT:
-		return gs101_cpu_pmu_online();
+		return exynos_cpu_pmu_online();
 	}
 
 	return NOTIFY_OK;
 }
 
-static struct notifier_block gs101_cpu_pm_notifier = {
-	.notifier_call = gs101_cpu_pm_notify_callback,
+static struct notifier_block exynos_cpu_pm_notifier = {
+	.notifier_call = exynos_cpu_pm_notify_callback,
 	/*
 	 * We want to be called first, as the ACPM hint and handshake is what
 	 * puts the CPU into C2.
@@ -425,6 +427,9 @@ static int setup_cpuhp_and_cpuidle(struct device *dev)
 		return 0;
 	}
 
+	pmu_context->cpu_pmu_online = __gs101_cpu_pmu_online;
+	pmu_context->cpu_pmu_offline = __gs101_cpu_pmu_offline;
+
 	/*
 	 * To avoid lockdep issues (CPU PM notifiers use raw spinlocks) create
 	 * a mmio regmap for pmu-intr-gen that uses raw spinlocks instead of
@@ -458,17 +463,17 @@ static int setup_cpuhp_and_cpuidle(struct device *dev)
 
 	/* set PMU to power on */
 	for_each_online_cpu(cpu)
-		gs101_cpuhp_pmu_online(cpu);
+		exynos_cpuhp_pmu_online(cpu);
 
 	/* register CPU hotplug callbacks */
 	cpuhp_setup_state(CPUHP_BP_PREPARE_DYN,	"soc/exynos-pmu:prepare",
-			  gs101_cpuhp_pmu_online, NULL);
+			  exynos_cpuhp_pmu_online, NULL);
 
 	cpuhp_setup_state(CPUHP_AP_ONLINE_DYN, "soc/exynos-pmu:online",
-			  NULL, gs101_cpuhp_pmu_offline);
+			  NULL, exynos_cpuhp_pmu_offline);
 
 	/* register CPU PM notifiers for cpuidle */
-	cpu_pm_register_notifier(&gs101_cpu_pm_notifier);
+	cpu_pm_register_notifier(&exynos_cpu_pm_notifier);
 	register_reboot_notifier(&exynos_cpupm_reboot_nb);
 	return 0;
 }

-- 
2.51.0


