Return-Path: <devicetree+bounces-271366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPJ8OhQfqWmL2QAAu9opvQ
	(envelope-from <devicetree+bounces-271366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:13:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AF99520B412
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:13:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 191A33078FE1
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450A52DCF72;
	Thu,  5 Mar 2026 06:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pyx2Hrd+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513892D5950
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691122; cv=none; b=mAs6+vDWX7p0hrjqqogkyMxdas4nWmTUQW9SI5pDTFWRcbRF/MOLiSs/rVbkne3GR997yUeqUz2gTLSGJ8IA/9l4pfk2Dz1Z8JRpfsknH0o8NLyHqT8F+rqXqLzrcstqYS6pr7rRGnwpFySF0Fj2+JNxNRAjBi9G/2nKKuHlUQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691122; c=relaxed/simple;
	bh=dHULg4KAQ86aduIcQuHp4BhJ2Nb07EP6bPz5fIOQLSc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rJsGg3WGA5U2BhCMjm8Ru2+pl+Xu2cvyGnHXrUgT2vgzu6oVYBmvENqzT0uJBK4SrYQRt5CWLHeq13qdNB3muMmvYgYdDBDEcCPyOgaXNPcDKduw1OW8/lHMtO5A/8Z3Bb0F0Py5kgPJDXo5RNxKYYRK33DZiwj5cQjgPPKgEZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pyx2Hrd+; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-660ea6ceb5aso2154790a12.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:12:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772691119; x=1773295919; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aes9Ymy2SVK6T0USFDpwiCwEp+iOTQGnFHuH7w4M/To=;
        b=Pyx2Hrd+Z9OhjTWh6aRW9jXcmXxotjMhT/zSlyRrBLCM1+R6XGMEZNToJDcsfQSmtL
         7bEK4Hck/tKNR157Kz9gjJuyHyvMwrZWiF0N2joiD6Mbr/fLGjDv1wJZ6zMR/HbAAFex
         +h4klHQrJ5WPOI1xwNA2xGgY8cC/ixn90nIgxDK/n3iKQYE7sx8KgC+0FZeZ1CVcRBXl
         W+uEolZ0gJ36EPW3nzmPxqCcKqObS5n7YcePFuoYytpgLGDuKYGvorjHHWgcFBGQBxvq
         uQ0O8Ga7DsIYZRIgaAlaleGk1Bru3jy9c31Vf34hTy3bH9SqtB/pLK8b9D7Sm7i3gY45
         PHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772691119; x=1773295919;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aes9Ymy2SVK6T0USFDpwiCwEp+iOTQGnFHuH7w4M/To=;
        b=W0IGw00olOnKd1mo6SQR2X8MFNjjLDWlWJRwYNuzc8/EgwKSuYG2F0uF6zsk3VPKUT
         oxb8zwccT1cpCH3pgOP+V9CELz1TpztXQ0k0EfbzoLbxyMk6YWRXo3VL1A0zT95cFMm0
         keRAOlqj1kneR+QnzXNaC4RCMlc/Gqc+4KVTGPbVr7gABkDlK9AVYJ0hLLsJxKkUKauY
         kXoHG65emEace7pL0mu3JrMHHprjt8b65SYtjOzaTm387PFvBHDhFaWkKJEG8Z4bFEpP
         ToEMFkrCxECZqi7CaFm9OQoefvVIk2Jw8oAbpBcetWaBMr2WYeSUCazhXxLDi2/2xrCz
         90gA==
X-Forwarded-Encrypted: i=1; AJvYcCWAKQkZ7ClTFd4vvQ9Nebvd+4AVER+Ng2pG5imSfAeW5DyFCeV72jwNtIQZSzT2CpzyG0glPhEz+iUy@vger.kernel.org
X-Gm-Message-State: AOJu0YxXaLgcNugbH9YqUFBu7m0MC00hK/MCMOu7zhASxO38ckjken+9
	4um5xpxD/yl39uVIQeahIefVlqwZyDL44EA/4uCg881tGmYcrPUYuqWrfG54cUgvYfc=
X-Gm-Gg: ATEYQzy+x2a9Z4p2ZxNXL2we5ZaBmjieVnJXhtRCEOtAPJQ2WLsY/7fXQ0jTckiOuW2
	uqLuhFWwiz9VH97DCX+JiT0wsoP1APywXfHhUXanxWNaomWAPEJIQ8SEN9TjBCllsOR6pbLHLEV
	GBy7Qng7pNg/baxCottEm8AXIN0s5N4z7zOzvLrkxjmTqs7Hd3UbHjOLqpufiKs3iPwFh6ShCJu
	5A54q9D575Hkx574nK5dKL5gyQQLqubBuoU6OCNNAqAvtG0mxQj2oubBZofkk0uHiB/ghDuUy4G
	xQSqGX3dT/0YjwIx0YhnoJMIFBqgDmzrOqEccCkSEMJNEV3w/7DBzH2pnbYbZwQT1L5g0s9uBWq
	MRhRdqUcWG0c3t6lUQ1gjx8aoJeTL/i9ZpXxFLpPIWWEue86G5oD0PI+/PE8Yw7PvgQcFYFugAI
	sE1mlBFft9DmjQ50YwXecnvAe2pRJ49LWRr3c9n9rTcWtQUl/htd5cyOhdujTdgy+Yz3w+2NTOR
	pM2TRTiE8SwoF4=
X-Received: by 2002:a17:907:d20:b0:b94:827:c561 with SMTP id a640c23a62f3a-b940885921dmr63080666b.4.1772691118046;
        Wed, 04 Mar 2026 22:11:58 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aec3243sm849355966b.53.2026.03.04.22.11.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 22:11:57 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Mar 2026 06:11:55 +0000
Subject: [PATCH v6 06/10] pmdomain: samsung: don't hard-code offset for
 registers to 0 and 4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260305-gs101-pd-v6-6-8cb953c1a723@linaro.org>
References: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
In-Reply-To: <20260305-gs101-pd-v6-0-8cb953c1a723@linaro.org>
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
X-Rspamd-Queue-Id: AF99520B412
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271366-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid]
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


