Return-Path: <devicetree+bounces-268934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LItOONvoGk4jwQAu9opvQ
	(envelope-from <devicetree+bounces-268934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:08:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 442911A9A88
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 17:08:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 14AE032A470E
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:48:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88DDF425CD9;
	Thu, 26 Feb 2026 15:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CCbgX6Gb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34614425CDC
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120845; cv=none; b=kCuzSQx9jzVkM0+ZbzJe/a1IVs0VVZmE3sGYApfKClrj3swCExJ/adHcbFHJ2sSICvQPmF9yOK7UPHh4Ilhc5fjPxLBjKneauOj1WLx3apjaL/3+R3roHlovVyZU1qTMC/NeTQWOjDf7CYndbFf9QddKvgr7hIcQHbwsL1DThmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120845; c=relaxed/simple;
	bh=RpbBElZZsEX4rUPGdU1ozxhBW4Aftc1Lf3tkxYIsxUY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mFTrVrvjRgJEXqCQjszQDn2s98V49eis6MUBAoyHIWlocByVjeSJWACYfP5uCVLzII6bX51VUInsspDq60wn9W0LKUCxns3lI6YqMZiQdlxZxBkInsQqiFXgj8JKkhFWyFJHfFopxbMpXn0xEHPxT/ZVWcdBq/y9NoB7y/vRxC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CCbgX6Gb; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4836f4cbe0bso9638775e9.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:47:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772120837; x=1772725637; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L0+3KrEkChy5VF+tN1hCu5mTVEJFxb8wKZ0wQMmmIls=;
        b=CCbgX6GblwxKvRsaBga/W66XqI3Ma47nHPo2PkLLFS3sK4Va82GQWeYP7Z5dWWjeer
         4+Zh6otzb0OnRZqPQ8Q+DzA0VZ5xPuLBl5yMFFk53yd2JU7tyi2oh5w52DGg+1pte7Q+
         X9qizr4YTvKDnJtf/uu4qqPtpPLblQ5BEp6wuLlg3jYrv5Pamr9TruJY+V3E79LHXWNV
         xicvpefWjS+tDySS7+h2EI+jYS/JTtZ8O0BGMKr8/82lSXC7IKS2KYi59SfM91vFBXPP
         lkwDj5m05idQbg16WYU5JJ9heigWehaGtyIum3OwhPL4uqF+eNhByuJYy942FpJZ2MPH
         x0Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772120837; x=1772725637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L0+3KrEkChy5VF+tN1hCu5mTVEJFxb8wKZ0wQMmmIls=;
        b=Wj6JH/oX1nb1juDoaraWQ9P6PE4iXmpbHbOTfNoXdhhDwrIhSrt8N1FoRK5f9052AM
         6MuD4J3AAahQC7Fh+QRZs4BAIBMW0WMnDtXEDDBHWM9lfuGrGNBZpwPu96Pt24dpCCt7
         u6Owh9mplGAbtR1GhRvq8hg2fM7p60PVPyHmBRCxAgI7ZreEzepB0v55jGKDp3SSXBrJ
         v9DC3nPXBjsYuKIyVR1ZERcktMn08WGDcb/PkRfnaXEGXfAnMq6sGA4o8VhIzIR5PWvu
         pPK5jzJh9pVIy7S/wE17MHgI0URVIuZfEnTu2dcFG6tp48SXOxvaKNOyHSoZUAmpTlde
         VOkA==
X-Forwarded-Encrypted: i=1; AJvYcCUqF6/dMkoxorx0CDD8lNypsKRHBIstaclcw9Na6T5n3TXZA/b8AK6ZSH6zdTWKjxi6yB8aaSIAyscP@vger.kernel.org
X-Gm-Message-State: AOJu0YzYQ/6GWPkDUpjLBsmlnbpFDbMUq9QQ4Vr3L0JnK+5sc2AMXtzh
	3Ptf7dtzoVpRJJ9zNtrnKUTR7whty0KUdxSAWF3b/aNftr6mRy4iNePUr7e0uLDE8uY=
X-Gm-Gg: ATEYQzzPka4Zc2CR/dNWAPd+5Ay6PyKAmVJXooSmlfAvlLfCXuTd10/6trFqQ0OpegF
	v5+GIREk55rBYQX7FZq4ibZOqSVBc/wdwx7Nu0Y3ebKccvTWZN8xKGr4Rwp2qX7Yt4IREk32e4Z
	yBWHjDFE5eR1t6Wycq89pKkitWXEfyKZ/WBfjNFXUIaUh9KozQ1+v7XobXYnlcadQaz2qUf4m8E
	D8JIFwTSSjlcscangLDj4/PDPPPshcyklVpiFkL/0cKh3ruosg+W5WkES7OFbNXGTlxUFLr9ZOq
	L1XUQRz6z6d0rYrrMfNfapbjmrD/ne1godFEOdKLdpW/VKai8Ed/tmX8TIifU2KAv4wDSK3WHRN
	iH53TgQ/STcTBqjBzm3QYR8iC5Q4nOXqWdhd9kJZcBcu50pLJPzo4L+7V86WwVcDVi2rEuvENNo
	e2Lm/7xF/vDRm5M01vHRTIS7oRNTX7FrjDvkjRtGBsNU/iuaT24QkDGhLDGXss6pNLnXOLYctJg
	t39ynl8EMpKXT8=
X-Received: by 2002:a05:600c:6995:b0:480:690e:f14a with SMTP id 5b1f17b1804b1-483c3dc7997mr47608645e9.14.1772120837234;
        Thu, 26 Feb 2026 07:47:17 -0800 (PST)
Received: from [127.0.1.1] ([94.4.193.72])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b4410bsm56007365e9.6.2026.02.26.07.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 07:47:16 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Thu, 26 Feb 2026 15:47:13 +0000
Subject: [PATCH RFC 7/8] soc: samsung: exynos-pmu: add Exynos850 CPU
 hotplug support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-exynos850-cpuhotplug-v1-7-71d7c4063382@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268934-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexey.klimov@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 442911A9A88
X-Rspamd-Action: no action

Some Exynos-based SoCs require specific set of writes/updates to PMU
and PMU intr gen blocks in order to put a CPU or a group of CPUs into
a different sleep states or prepare these entities for a CPU_OFF.
The same is valid for a reverse procedures like wake-ups or CPU(s)
online. Without these writes/updates the CPU(s) wake-up or online
fails.
Add support for Exynos850-based SoCs for PMU and PMU intr gen write/update
sequences.
While at this, also add description of Exynos850 PMU registers.

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 drivers/soc/samsung/exynos-pmu.c            | 86 +++++++++++++++++++++++++++--
 include/linux/soc/samsung/exynos-regs-pmu.h |  5 ++
 2 files changed, 87 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
index 0967fa56708a..7b9b8e22d91b 100644
--- a/drivers/soc/samsung/exynos-pmu.c
+++ b/drivers/soc/samsung/exynos-pmu.c
@@ -118,6 +118,10 @@ static const struct regmap_config regmap_pmu_intr = {
 	.use_raw_spinlock = true,
 };
 
+const struct exynos_pmu_data exynos850_pmu_data = {
+	.pmu_cpuhp = true,
+};
+
 /*
  * PMU platform driver and devicetree bindings.
  */
@@ -151,6 +155,7 @@ static const struct of_device_id exynos_pmu_of_device_ids[] = {
 		.compatible = "samsung,exynos7-pmu",
 	}, {
 		.compatible = "samsung,exynos850-pmu",
+		.data = &exynos850_pmu_data,
 	},
 	{ /*sentinel*/ },
 };
@@ -229,6 +234,65 @@ EXPORT_SYMBOL_GPL(exynos_get_pmu_regmap_by_phandle);
 #define CPU_INFORM_CLEAR	0
 #define CPU_INFORM_C2		1
 
+static int __exynos850_cpu_pmu_online(unsigned int cpu)
+	__must_hold(&pmu_context->cpupm_lock)
+{
+	u32 this_cluster = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 2);
+	u32 cluster_cpu = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 1);
+	unsigned int cpuhint = smp_processor_id();
+	u32 reg, mask;
+
+	/* clear cpu inform hint */
+	regmap_write(pmu_context->pmureg, EXYNOS850_CPU_INFORM(cpuhint),
+		     CPU_INFORM_CLEAR);
+
+	mask = BIT(cpu);
+
+	regmap_update_bits(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_ENABLE,
+			   mask, (0 << cpu));
+
+	regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_UPEND, &reg);
+
+	regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_CLEAR,
+		     reg & mask);
+
+	regmap_update_bits(pmu_context->pmureg,
+			   EXYNOS850_CLUSTER_CPU_INT_EN(this_cluster, cluster_cpu),
+			   1 << 3, 0 << 3);
+	return 0;
+}
+
+static int __exynos850_cpu_pmu_offline(unsigned int cpu)
+	__must_hold(&pmu_context->cpupm_lock)
+{
+	u32 this_cluster = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 2);
+	u32 cluster_cpu = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 1);
+	unsigned int cpuhint = smp_processor_id();
+	u32 reg, mask;
+
+	/* set cpu inform hint */
+	regmap_write(pmu_context->pmureg, EXYNOS850_CPU_INFORM(cpuhint),
+		     CPU_INFORM_C2);
+
+	mask = BIT(cpu);
+	regmap_update_bits(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_ENABLE,
+			   mask, BIT(cpu));
+
+	regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_UPEND, &reg);
+	regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_CLEAR,
+		     reg & mask);
+
+	mask = (BIT(cpu + 8));
+	regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_UPEND, &reg);
+	regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_CLEAR,
+		     reg & mask);
+
+	regmap_update_bits(pmu_context->pmureg,
+			   EXYNOS850_CLUSTER_CPU_INT_EN(this_cluster, cluster_cpu),
+			   1 << 3, 1 << 3);
+	return 0;
+}
+
 /*
  * __gs101_cpu_pmu_ prefix functions are common code shared by CPU PM notifiers
  * (CPUIdle) and CPU hotplug callbacks. Functions should be called with IRQs
@@ -416,8 +480,12 @@ static int setup_cpuhp_and_cpuidle(struct device *dev)
 	void __iomem *virt_addr;
 	int ret, cpu;
 
-	intr_gen_node = of_parse_phandle(dev->of_node,
-					 "google,pmu-intr-gen-syscon", 0);
+	intr_gen_node = of_parse_phandle(dev->of_node, "samsung,pmu-intr-gen-syscon", 0);
+
+	/* Fall back to the google pmu intr gen property for older DTBs */
+	if (!intr_gen_node)
+		intr_gen_node = of_parse_phandle(dev->of_node, "google,pmu-intr-gen-syscon", 0);
+
 	if (!intr_gen_node) {
 		/*
 		 * To maintain support for older DTs that didn't specify syscon
@@ -427,9 +495,19 @@ static int setup_cpuhp_and_cpuidle(struct device *dev)
 		return 0;
 	}
 
-	pmu_context->cpu_pmu_online = __gs101_cpu_pmu_online;
-	pmu_context->cpu_pmu_offline = __gs101_cpu_pmu_offline;
+	if (of_machine_is_compatible("google,gs101")) {
+		pmu_context->cpu_pmu_online = __gs101_cpu_pmu_online;
+		pmu_context->cpu_pmu_offline = __gs101_cpu_pmu_offline;
+	}
+
+	if (of_machine_is_compatible("samsung,exynos850")) {
+		pmu_context->cpu_pmu_online = __exynos850_cpu_pmu_online;
+		pmu_context->cpu_pmu_offline = __exynos850_cpu_pmu_offline;
 
+	} else {
+		dev_err(dev, "pmu-intr-gen is present but machine is not supported\n");
+		return -ENODEV;
+	}
 	/*
 	 * To avoid lockdep issues (CPU PM notifiers use raw spinlocks) create
 	 * a mmio regmap for pmu-intr-gen that uses raw spinlocks instead of
diff --git a/include/linux/soc/samsung/exynos-regs-pmu.h b/include/linux/soc/samsung/exynos-regs-pmu.h
index 9c4d3da41dbf..93c4d724c8ea 100644
--- a/include/linux/soc/samsung/exynos-regs-pmu.h
+++ b/include/linux/soc/samsung/exynos-regs-pmu.h
@@ -1015,6 +1015,11 @@
 #define EXYNOS_GRP2_INTR_BID_UPEND				(0x0208)
 #define EXYNOS_GRP2_INTR_BID_CLEAR				(0x020c)
 
+/* Exynos850 PMU Alive */
+#define EXYNOS850_CPU_INFORM(cpu)		(0x0860 + ((cpu) & 7) * 4)
+#define EXYNOS850_CLUSTER_CPU_OFFSET(cl, cpu)	(0x1000 + ((cl * 0x400) + ((cpu) * 0x80)))
+#define EXYNOS850_CLUSTER_CPU_INT_EN(cl, cpu)	(EXYNOS850_CLUSTER_CPU_OFFSET(cl, cpu) + 0x44)
+
 /* exynosautov920 */
 #define EXYNOSAUTOV920_PHY_CTRL_USB20				(0x0710)
 #define EXYNOSAUTOV920_PHY_CTRL_USB31				(0x0714)

-- 
2.51.0


