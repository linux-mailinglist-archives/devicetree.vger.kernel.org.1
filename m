Return-Path: <devicetree+bounces-263178-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Mx+DlYPhWms7wMAu9opvQ
	(envelope-from <devicetree+bounces-263178-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:44:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C78F7CDD
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:44:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D3A2304EF6D
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C4583358D3;
	Thu,  5 Feb 2026 21:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IV+uOhUZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0925D335541
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327758; cv=none; b=TCYwUWvAj7Fpl6KFsPfvXBqO9xWYe+iVT8976fVXwaz98fQ+r+OWM05GIEIMT5eNiKVn3tRuxX+UQq8Z41pfa5fXsILGemh3tuPOCSrB4xipG9mOMgKPr2+kNbtEjDMrNlz+M2D7oEp636obqIcKS/exp8KjHicC8tAw6Z+de10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327758; c=relaxed/simple;
	bh=ag+OpFUI/evpy8D/9ZA2w9zHnROGSMhtoNgkmIN0fCI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XIxMAb50oOQV/1mGdIhvnqAjiNnmLeUDJV6ley0Z+kkjbyKi4vREiXXKajpCsCw7WLkH3Z2OxDFITyJz4Wpd2pmvTvje7RkGSXAlR98hZVg5ZaoetqpRJ4BYMi0YDxhdFZXnKFet90E2eda+IpfCwx+Ynu4F4BHucvoR0JM2+MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IV+uOhUZ; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b8876d1a39bso2561866b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770327756; x=1770932556; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O8LU1GPEC/wTQLbGFIndFfoESZHedB29NJZQNfhisd4=;
        b=IV+uOhUZwrJM/ifN1UujoHo6dfCb+Eh4ON4AAOL3qMLsvVUi2C/qVuzVzwo1NDZHYm
         OL4XDK8v3BuJ8W/+DLfjQYJSWWqlCGlTBnetN+dVLAKQvt547JNklmJ5drfd1nPHFA+3
         r+hdxHk+3l1T0CqAJv6oQURfxr9yyBhu61fYO4/nWzUkbPVoTzHrPJt7shskxjFRY4Az
         3b7HnoK7fGRhL3hNGd4/80nrdq7beuU+/ntqC6kuzx1mSJWA2FPCOChzgtJOhev2+Yk5
         rhCYgAxI6wmbAkwEsJU6ghuXG7f/HyM7GV5eIqydZVG/yTc4TIcKmFrV51Sp0QhGUHk7
         AD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770327756; x=1770932556;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O8LU1GPEC/wTQLbGFIndFfoESZHedB29NJZQNfhisd4=;
        b=TLN9uWUWUdsgylSWnNl+AkuY4VX11jLyX4WcI95d1QEK0l929ofYmkTm5FAyKvBNpH
         45cSVJHYqOz5RMnPGc3wiU1orWtwcJ0Ry6ppfQ7k+wCs2TiRdR/ni/MpEaADrsZLYM2c
         u1vaRzzzoL4NvLt4dTIBn84ZEIR3fLPazwB2AsLZhS+beN7fqiMTQWvGImHfo/yQ7FJC
         /W7HjDkvXlugs9Tld9Vc66ONyrjPtmADB2IaTWhh1GxTembw1V4f+FI4z3RNjeyZmu67
         2BbhceoLDuvtXGnmqj7W+6/scOArWlq0KQCF9A1FnmOEl0o1KFfXB9fTpjXcdC25Q6LN
         QJmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtSuSwUIHiuyTqeVI1gnP5k7NMbDf7SKw/vfbKSdOKBMOov2SYuDV6FvhQlsEzhi8hSeijFdPmysWB@vger.kernel.org
X-Gm-Message-State: AOJu0YxW6noFGdTX4VfYCtWm9BweGOZ1oucj6SCneM0QQdfShpWyKk7Y
	U+V1un+T8CPAuY+d5Ye4OiSlO1MDUl3uxORQ7i8QzylFNuFNllCvJq9lDleed0EahG8=
X-Gm-Gg: AZuq6aKO4j33lBV1uZt/mhkCIOxMANknc9DgvwbqnTroWkTbtGjF6YMrmj3vOScbl1a
	xMkSdxZGPUov53yTKhrydBejNvRsxFvcMK5N+NVbB79TDqYcUYz3pGGM2I7bA+cuZruD5gWtNqy
	A15IQpf9WuuZop5hJGO375NejFZcjlYjTs6+4cuORFtJcR9oMzjFYuevSRGkG83AvPXdFiNYddK
	MT6XNEhhS1HsqhV0gTu/goSI174hmbZXAQZuLM1V8FatkuPx/cyjsacuKqTn369DWerNscMqARf
	3PBxIeZZyWVswubMHpE0gqMjZ/OgG8LNFQeRRdq95FuAOWCfSxfTqoNVA4RvjAtH3SV6mw7FsBY
	afdsdindKx3AyLrb8QgWO0wB//Rg5eepGZpuKeiorXsdnVFLqv8PuiDDdCga3nqpsuhfZoMCRti
	Sqwu/+moTmqG81KyzV7DRwAyMN6DdqfessjH2RFpKcPKM9cxBXtDql85akuCDf66Y+hhO9R3Nyx
	WPqpQ==
X-Received: by 2002:a17:907:2da6:b0:b87:117f:b6f9 with SMTP id a640c23a62f3a-b8edf174430mr23264966b.8.1770327756177;
        Thu, 05 Feb 2026 13:42:36 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a0074sm21859966b.18.2026.02.05.13.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:42:35 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Feb 2026 21:42:34 +0000
Subject: [PATCH v5 06/10] pmdomain: samsung: don't hard-code offset for
 registers to 0 and 4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260205-gs101-pd-v5-6-ede49cdb57a6@linaro.org>
References: <20260205-gs101-pd-v5-0-ede49cdb57a6@linaro.org>
In-Reply-To: <20260205-gs101-pd-v5-0-ede49cdb57a6@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-263178-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 93C78F7CDD
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
2.53.0.rc2.204.g2597b5adb4-goog


