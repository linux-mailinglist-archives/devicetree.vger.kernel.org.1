Return-Path: <devicetree+bounces-277344-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sP6iF1zFumk8bwIAu9opvQ
	(envelope-from <devicetree+bounces-277344-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:31:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 211882BE43E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D44FD305FD9C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32EE93E2777;
	Wed, 18 Mar 2026 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zaZmBis3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBA43BE64E
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847695; cv=none; b=k5wiNKMcPn4qnc6IPHV/5uy15gcW6UgLHVqel2CAhNvjMJjswP404mtYoKVrL/eDTFF0OY5yJhKYfuJ6J3K7SKDjD6PEbfvmECDz5SN8TjO78OVUwQQ8gXBb/dYF7lRI+o/wG/F17sSBI1uSlb1kBt8gQP90p7LKTOLzWCvQu7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847695; c=relaxed/simple;
	bh=8T9/It5ApHDHnYD1q78TZh74X9foQBKZZLIC9h+az00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h/BzNs+E/w317p8qlY9PnULz8wG5gIgBBT4ATfqnukGAe8FVslDx0Keae5o+1FhdsbbD7hYU9RZLWtevhrESYivkWy6pndUH7lb1Vj3/yyWTDKYPMl1ke4lR7En2ToEJ5SinyP5cTtIDiWZrjZCd5cxlsJm3gXmvyQeed8/uGoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zaZmBis3; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6674cba2c50so1553864a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847682; x=1774452482; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzTEmVg0E5h4X/7Ugq7xS1ujjrPpCimVnXzUPgyNm9M=;
        b=zaZmBis3OIvWv8Z/cmUga6MKezr9hCDKifTL7RAouUD9eApYwG2JrRpA2nr/P1RA64
         4poxjeQy0lZKo0Jo5NTNabTVG9RA6xvA9oc/qu2oAgrMah+ESz4rykw8Aa34nZWQaRR9
         3YS38tnv4Owg0Y6vT4bc/fEEJ5XabDqeO2YpV4s25y3Y6QaVZ8LOeOz9FJ4J3ZZ+AnEN
         XtGqt7moT3/WsVkD0KZR04g/ZtHIQEnlYxpoKzmvZKlWuDewJs7NYl93VxRJ+XENbShf
         ikhMM9pmrRzzKbS2EfSJvx5SprAedEqRxGIFAi5eizabPCDZRd6dVeJYQAsvqZTqIyVq
         GwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847682; x=1774452482;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FzTEmVg0E5h4X/7Ugq7xS1ujjrPpCimVnXzUPgyNm9M=;
        b=sB7pado9BauYCrSOfuizYezqwsHH5g5K65gOpV5QunRzJQU/EEtP6/1EOJlnR8VAEu
         5brMEK71LHopcd7xhotHvoV742Ht3MlnZq3Eh01TgNCaAqJ7h8AlaP/FHvdFqaedy6LI
         x46tvHZDycjjEH+Ipmlj/TXEemf8tdXkLzTs8ZqLN+8u1hGfF18S1brHEAORHU+2f177
         euZ4Vf7cyRv/0A1vBFURz9gVLdBPhs1+6DWAcuGmMd8174CpK+9K/tQRLa3eb+N6G2fz
         XjKO/3AptH44zlhK1Uywr/kF0XkPnV7B7LgK2ETqBz8WhvLd0cJ5e26VwekSix2d74H4
         5fFw==
X-Forwarded-Encrypted: i=1; AJvYcCXrop0eYIIhImMQt/3j10eKyA6KCMuFrKqpBGf0KuNE9HRHmHyjShL6r1hPSK7Z1/EWl7+whjQrfzI4@vger.kernel.org
X-Gm-Message-State: AOJu0YwQaF0Lg2FFGW2Sd7hUUFffTqIFtc/TfOgO6+xwD3hJyAt5edAC
	k6R9nhrxckwI3qmc6Y418AJRwRPKfrrN2cAIxPatTKzRxlHyRf3aQz69ml32PO0WEgE=
X-Gm-Gg: ATEYQzwesE/bH4sRwb+orcB4bfg1atePOV2Et2hHgFc6jjp4WqkPmGsb2NS0FFIH7q3
	0/uliA6x6vTHD3jTYcu0Y0SfQqnA/KhDJYfREDNPcts2OkF9b4vesixN91WefX1ms2NjxMtY8tl
	PYvDQFjYU1XxJfPQi43KFMdXrlqBCXJkBPhOJpiuO8JoT5mcY8oXuTyp4PKj2f0vX8NqbooHjSD
	3/8UrDMJ5mecYSXDaHDf4w9S6vJmK77HwoIXrklp7Qddmpff9LULpYbMXdtWRPU9VPwjUa+m81m
	s8LPrPhsYPVKbFFgKC7rWxf/3VytpucClC1wEFIE+FPdS/Vr+m0kK4cFoTyyT/NonVXW1oM8r+O
	X/Wn97jMAVfGRyju6LXbvtW8ilHFWelmGrxf8jo9Wzm2tON+tpECdd7oURkgP0XPpE17Dpu0ECM
	2E6xLu9dsTrfb4IDK7hXtknDa/9LxWjdWt+6k+IQR9KBwen9owT2T1C29k7Yt8tjerIkn5SNHV/
	QGgm8xlf0/1zrw=
X-Received: by 2002:a17:907:e11c:b0:b97:73ae:e2e with SMTP id a640c23a62f3a-b980f9e248amr256966b.18.1773847682061;
        Wed, 18 Mar 2026 08:28:02 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.28.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:28:01 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:51 +0000
Subject: [PATCH v8 06/10] pmdomain: samsung: don't hard-code offset for
 registers to 0 and 4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-6-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277344-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 211882BE43E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 68b1e7ba8729..3aba00b9ddef 100644
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
 		return dev_err_probe(dev, ret, "failed to read status\n");
 

-- 
2.53.0.851.ga537e3e6e9-goog


