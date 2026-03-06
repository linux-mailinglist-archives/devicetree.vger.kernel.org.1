Return-Path: <devicetree+bounces-271974-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGcCGa6tqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271974-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:34:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D29D421ED20
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EE6A312D405
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:30:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F523803FB;
	Fri,  6 Mar 2026 10:30:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FL4AHvQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA8F37D12B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793005; cv=none; b=p2utYsEwsJn2P9vvAdVN32ZuUx5nfTQEQBHjJ5GWzUVcZG5HmXD1B72LGj221FFEgBOya0tZaH4p82EglhJNzOMOwC1ssU8ZJfxjmh1Sv+kxj3NXhCUb5skCcV3v9XndinvUVoee2IUJfDDvmT5Sdgq0fYmQhxyoIzHaoK5aOqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793005; c=relaxed/simple;
	bh=dHULg4KAQ86aduIcQuHp4BhJ2Nb07EP6bPz5fIOQLSc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hiGRZVlFgxbOIcf9TogfOSFKr3QELBa5U/olSzWm8cUgmzcb392wA/OfAAE6KSu0gKLtAJMfOmEvltXMz4Qpnzu0xw40T/AKgWqigGs7VQl/gbA0cW4AFHHfexTB61exhbq4dh+lKfCOvXuuj3JLm+DFvACF34S2jW2CJp//8v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FL4AHvQE; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-660f1a1e977so3297554a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772792998; x=1773397798; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aes9Ymy2SVK6T0USFDpwiCwEp+iOTQGnFHuH7w4M/To=;
        b=FL4AHvQEVYvbAajWoTI8ePBmqFickSVhiwIdB43AaSjVsXPr3ujGMbZh4S2Fwg/pso
         9D5GzB2iEcd21+1U5GzizJRFvXQ2fN+qFydGy9i9/cp4v+xJud6PFeRVxGYmR7KCL0Mi
         hWCkhdNi+WvVUl+HInB5h+jNtygB49ExlFetI9KTjCOviPX/Y0Inm8nGgWL7mVVakHOK
         I/Psk8OLhW/Vxie16lYKAKyvPTzKiwRfgMrT2hxy7c/n1v27+ERlgovVs9A0w20eka7L
         +Tdiw7PwEsX4zz18/ED0nV4O9GePgn4V5N5/vy78pnZdEZehCLkuseO3yT1ObfgfGufW
         GEgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792998; x=1773397798;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aes9Ymy2SVK6T0USFDpwiCwEp+iOTQGnFHuH7w4M/To=;
        b=dFcSvdcBrL72IBUBWA7IysPuYuxp/LVhgo/ASeyafTxj+p8uJNvSMESSk9MvkfEZ5n
         qN2aGjSHI3uch7b2QeO/f4f7LJl4R9V4znMRhu8AeSRfjMgN7AidyVlr17YHWS1RtXtF
         Q9aAN3oqTxwucQC1vl7xDm/ZyWxYuzyqlQPTGBAaNQ5oT3A1hTG6YsRIu9iam8TPE6tP
         n+49MTZ3mLRGdzUamBJaHRE7CCz5GVo3ovQBY9YYeJ/hA3qs8Y+Lbg9dIGnUoJVn+zdY
         I2Lciq0YniCOaHOLhFK7Z7XLRZAzpAj+iQrlhM8Ynb3VVj1ZtF73EI3nLBE9APgMZrCC
         t1Jg==
X-Forwarded-Encrypted: i=1; AJvYcCU1VIY9rP9nvU7cxBrntAD4k7Z+4AVKSOSPk7k+ahIAqx8PY0ElJ7VpWBJdjNqSVMGTnIjNHYIutxYX@vger.kernel.org
X-Gm-Message-State: AOJu0YwS7vBrFuwzwgDNcVi599MCfCMBOuRq3Hwlrcbu06n6GZxGhbDY
	opubUZBFsJdjgvAYCrh6j6GguDF4a2BUXFG1etaaOiBsgNUmg+zRyI0xMrfsLHfY83g=
X-Gm-Gg: ATEYQzxyrJhtpav3gEQ8pdUL+58viQB+TDmZIBvRqFjlE16Qf2QVSd/6Oy1c4xvisHC
	i8cQkHpgWwZc7ouNZ6A7BHLwnnXY9uQ/p6p1tz5mNttvzpTyYoxzbWoaVEsfLFoGql8LZ760Us1
	jjirgvthe7cS2KSRwjWOG5rdtfay/V0cuqhDKHV7WAgOxSFFs/7QhHR7lyFCUCJY5qGAJsA7f+p
	YgUgdi0899uxeAxRM636X50BjrdLcUxP/PvEz7BfoHy8211+VgJ5ZdWjD8cn+gKAJt5SYl/cvLs
	AF1NmRSfZabCqfLE5H6YrcRLwuHFr2k8dehhghrzZuTWjh3AX/1WSmBPZwlAr9uzb/Jp5LwCZ4j
	eQMcaeQf9ycCHa3IEKNfCyo0cUy8PD0U6tglqNC8Au1gBUGcMCw55SE66j2pWyMZLLcmPtca2/b
	CtYZOPmR8wYKFyAQUzQp4TA79tYGTmFL3D2QipAIrwLR0aZsoxqfR2YEWXXXYhASRMg7ZBUf0U6
	rixD5/LzZ2Ihz0=
X-Received: by 2002:a17:906:9f8e:b0:b8e:7dcb:7f1b with SMTP id a640c23a62f3a-b942dbdc76fmr87190666b.21.1772792998248;
        Fri, 06 Mar 2026 02:29:58 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8c95csm42907266b.21.2026.03.06.02.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:29:57 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Mar 2026 10:29:57 +0000
Subject: [PATCH v7 06/10] pmdomain: samsung: don't hard-code offset for
 registers to 0 and 4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260306-gs101-pd-v7-6-03f7c7965ba5@linaro.org>
References: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
In-Reply-To: <20260306-gs101-pd-v7-0-03f7c7965ba5@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: D29D421ED20
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-271974-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On platforms such as Google gs101, direct mmio register access to the
PMU registers doesn't necessarily work and access must happen via a
regmap created by the PMU driver instead.

When such a regmap is used it will cover the complete PMU memory region
rather than individual power domains. This means the register offsets
for the configuration and status registers will have to take the power
domain offsets into account, rather than unconditionally hard-coding 0
and 4 respectively.

Update the code to allow that.

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 3bcba7d38ac1..8df46b41f9bc 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -30,6 +30,8 @@ struct exynos_pm_domain {
 	struct regmap *regmap;
 	struct generic_pm_domain pd;
 	u32 local_pwr_cfg;
+	u32 configuration_reg;
+	u32 status_reg;
 };
 
 static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
@@ -41,7 +43,7 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	pd = container_of(domain, struct exynos_pm_domain, pd);
 
 	pwr = power_on ? pd->local_pwr_cfg : 0;
-	err = regmap_write(pd->regmap, 0, pwr);
+	err = regmap_write(pd->regmap, pd->configuration_reg, pwr);
 	if (err) {
 		pr_err("Regmap write for power domain %s %sable failed: %d\n",
 		       domain->name, power_on ? "en" : "dis", err);
@@ -53,7 +55,7 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	while (timeout-- > 0) {
 		unsigned int val;
 
-		err = regmap_read(pd->regmap, 0x4, &val);
+		err = regmap_read(pd->regmap, pd->status_reg, &val);
 		if (err || ((val & pd->local_pwr_cfg) != pwr)) {
 			cpu_relax();
 			usleep_range(80, 100);
@@ -164,6 +166,8 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	pd->pd.power_off = exynos_pd_power_off;
 	pd->pd.power_on = exynos_pd_power_on;
 	pd->local_pwr_cfg = pm_domain_cfg->local_pwr_cfg;
+	pd->configuration_reg += 0;
+	pd->status_reg += 4;
 
 	/*
 	 * Some Samsung platforms with bootloaders turning on the splash-screen
@@ -174,7 +178,7 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	    of_device_is_compatible(np, "samsung,exynos4210-pd"))
 		exynos_pd_power_off(&pd->pd);
 
-	ret = regmap_read(pd->regmap, 0x4, &val);
+	ret = regmap_read(pd->regmap, pd->status_reg, &val);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to read status");
 

-- 
2.53.0.473.g4a7958ca14-goog


