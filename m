Return-Path: <devicetree+bounces-260525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uG87JPM9emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E851A627A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:48:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85F0C31A650A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:11:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468AF318BB5;
	Wed, 28 Jan 2026 16:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aOwci1JH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A8230C60D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616662; cv=none; b=O86/UvsOM700cSoZzDTMLmZGUq5qBNEr2VtKWR43M4Divj4c3FNroyfRl1/oDBLYXdLetpFz8zMCfEdQzxQcnmmh7XrsiUQfXZ6+DZba5HRWRTLnhehHBFBwDbp4sdxf6qYPkcqI1YBqOJLRlTl1QLG7sw5eN0niNalSrc0qxjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616662; c=relaxed/simple;
	bh=ZYxzBg9tkVWzCzaxuPaae5TIGD91nZXT5GPxtR4tPNQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tQmPIpomv/U6zXjKXgVWfgDiecy6CIDAnimdNg8pJiIKUaaClDlny5NCxkEUcOEqLBoa7SrnulXDMKhfXUthzjHqKygaPXihU1INQmUrYiEPjTBVatx+2x8SLrrRWIloXTvFTZSBEo4MDYicpEaf8B0Oriq5xwLuzFmFCGy5sxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aOwci1JH; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b8871718b05so917269066b.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769616656; x=1770221456; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9J9mAVn8R3b4lSWOfrbKrodX1tmUBpKSiHbvrB/eirA=;
        b=aOwci1JHIkQcJgyHu9Y1mf2aJ3de79GIiCo4W27OV7FX/DAPhEPUF14G1MfhlPyx9u
         EjpXgHy2y2d3sqzYCemE835xJKRA+XllCN2WMtrqi4ViqpA5ArmZkFaUaLkN1/2RrjGb
         oj5bTs7rWnv/UWtOT01HtTcES/4p/ZATxkkQFKH5+Xq8dhBBbiMv2nOl8UJTdDg90Mmy
         2MpfTFKhDIODwAx7w/P+iGb81mCNtCTbFdloi49fjMPNnUOnKjToL2PXwGrZ/eu1wsin
         9qNSJ1pJXPZL4WP9ETPS3J5E/memQx6n4prPrWK5XHyBmsSwZUdYHPeD4OvvXuzR1rAb
         yDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616656; x=1770221456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9J9mAVn8R3b4lSWOfrbKrodX1tmUBpKSiHbvrB/eirA=;
        b=oxe8aD9DFZB5FOEb9kT0+XQYg0tq7wh3swuTSTV38jWYLkZXV9KlpwqSWuQbqEc/lA
         cHHa23TPZqpq1tcb5i53h3sZ5UZ71afq7Jr3zjuCabsJ7tfdiPzRlxZ0TDoz1KFJKIZ+
         Nq+HUT+piobufaiYvICw2bDFKyZeC8amgUcN3ivqLvgZTxvGSGT6iZ2G7xSomiuiqG44
         zI6/QCtVa+FedPinjPi/7SS1llwG1Smw10+4Az2U0eGkb9Afja36V0evtuwOGvlXzkxl
         RRTWPMl4sxpiowt5FJh484f4lUM7eUa8NXcfMu28+UaZTjnU9y5k4FXUBWmfgbYesRkd
         iRRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhlHsqhnYwOXTWHVQElJBfJD0LQNKeEO82cSX902brLBWYKhvw/mVUW9zOurrnqXlCLTVGLOh7Y15q@vger.kernel.org
X-Gm-Message-State: AOJu0YxtpO0sGUlpRLZ94v6YZUZt4fW5loq/ljGyUQRqj4CJ7QQQxHiI
	pZVW1cRBzEa3JaxjyF3wpP5unFS7WRaSjtKwBmJoOeMP1ujT1JnHaiVW7UvaZs8emf0=
X-Gm-Gg: AZuq6aLCgAsjaWP7lPqXqft0G733yCwnqiWSfJJslwlgOym+CYYP6ZOOR5K1vIgguhz
	O7Y+b5HiTB+8jn3JgFs8F8hesCKOAtjeWjKWKQsPcwDgDB3RHt6WLCdqYZXd88heKddU6DogI8B
	SSgD9xbhJqwOXIcc682xKwFM5fKleufLSIPwyBxwKmtawMmDMCqY7KhdaVF5ShjlA5+Dyz17cyo
	9Y3+92/SWyaqPBibuDT4rDVfIKyJpcngyiIepFjHoZ6pMgcf3p1wt9i8o6N6h57ZXHpSfnFjcQj
	38wpMIYilKfAtpsP5gzOsTNrOOiQN9FRYn38KEce2U/lOgc1MzobLDwCnz6A7rgmmCwQl4YcBap
	D4PnM/DKCMiQcWINoh0Hpd6TsF57fTnM7Ljq48heNfnbn3A8pC+UDuaaWKH3WjtNglTLQNKBBuW
	r1OrEUv7AbCU6xN2HG8oeoTxjjGXkT7nT4+TJP7nLFRQ6bZZAI1NtwhXTReiIdXaBpQI7YoPdIg
	7mypulvsq4gsXN5
X-Received: by 2002:a17:907:3f93:b0:b87:892:f43b with SMTP id a640c23a62f3a-b8dab4455a7mr396560766b.42.1769616656353;
        Wed, 28 Jan 2026 08:10:56 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c021fsm148553366b.49.2026.01.28.08.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:10:56 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 28 Jan 2026 16:10:55 +0000
Subject: [PATCH v4 06/10] pmdomain: samsung: don't hard-code offset for
 registers to 0 and 4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260128-gs101-pd-v4-6-cbe7bd5a4060@linaro.org>
References: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
In-Reply-To: <20260128-gs101-pd-v4-0-cbe7bd5a4060@linaro.org>
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
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260525-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 1E851A627A
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
index 3bcba7d38ac1572ef4bc2f4052c904dd6c4a7bfd..8df46b41f9bc8f0b2a03300169a4b52457faaf4d 100644
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
2.52.0.457.g6b5491de43-goog


