Return-Path: <devicetree+bounces-271368-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCqDBEMfqWmg2QAAu9opvQ
	(envelope-from <devicetree+bounces-271368-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:14:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA0020B466
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 482D0305EB94
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:12:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A8322C0307;
	Thu,  5 Mar 2026 06:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u4k2GzsZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1683E2DC774
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:12:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691124; cv=none; b=nlPme8AT5meTTB0dZREoqwserpNFWMSNmTbgpmYWsoMPe9HOkkMAWQGissNssLdDKRm6VgIOnadsPkh594M4wic854Kv+jLihaOpslFzTYc0uIQA30fkyoO6Vw1vUDhkLtqtEH9oXckagRUWGYjMCcbHZhUSZ/1tOc4IuMgd5dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691124; c=relaxed/simple;
	bh=k+2eK86lvnhd0G39XcYd0Wo9v7NwbPnA00WtqszUSr0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=vE998Q0tuo+kxLKdrmwdPYvR+a4uVrfrpvNbqwKTTC4Ub1M7rLmH77HxlVqPSpSfnQHpAXu68RmuzD7IqqpJJliC3CdwELesZZhAmtlTSRyhza8IFutx6YgHdLIj+FIHY4SSiFbyqTxGpe1O2VUH1BT6XlMaKc9hBELi9KI9lC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u4k2GzsZ; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-65faaa8b807so4648707a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772691120; x=1773295920; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GJyveOpQYRN0Rj97xYSp2eMNn5Hi3Nxu7cTlokaFCRE=;
        b=u4k2GzsZuF9Bb9VgAvJB8IHq3AE+Kkvz9CufyLHj2pn6GljqJsfBwxfXil4+sfeCtk
         7xXCTBpAXwA0j8PYuxJvv8+w6IRzqh6RjHZvscpl9DbCJJaUNArLrCvsmpft43NgvxEo
         BNGzKN1hPMBHbad4cQG6WRc33Oko41paYqVZTN6YPl4oJfks1qVPXR5KVZQNYXgzPKQi
         M7AbjJ/BzXeewOTonn/R07cXKKbzj+vdvic6O6EPo+AucEShWTHp3OT0i3bpRevrxY8s
         /cggWdrWXFPTS2Plm6Gd4R4cG3z91Q9P9CQpR7EY43DodDkm6ioYqsTe8Voqy7aDaR7d
         xlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772691120; x=1773295920;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GJyveOpQYRN0Rj97xYSp2eMNn5Hi3Nxu7cTlokaFCRE=;
        b=pAXXuUoxfCENHM/CTwp7CaZJHm2Plg8NsSOuBf+YvEXe3yIvH034atTSPVWlSMw6E8
         +vdPpUyb1S2E3J0XAzjmPqnkE7m4kOi0ceyKMtE90t9DT6j7is9GgF1w6PvtQ9AIFGHB
         039PncudneTUKM6zhXm4kUyKsfHJ0Sy4fay7f0hIAKPVGn2/tudwQvdmfzfs2nvyHHIc
         gs5SVDIwjeg3S5Q7HA9ycQuCqM2Ap/GX8smFknNDpg8IJGD45j0tkpHAo+0q2kR/rfod
         PHtmetGQ4TLkAUBvEKM3WmSG4fr8AjGMdAWdjY0EUHOOC+Ywz0hh0Ou4bdSDMrDI4u2J
         /nNA==
X-Forwarded-Encrypted: i=1; AJvYcCUMq2DfuvHON4Ie4/AF9JKUKepVkHh7uhcViJfrR9JxQZR+V3sqd7/64bLuwTxYqUUGzq/5MEwe0C1L@vger.kernel.org
X-Gm-Message-State: AOJu0YzgCbJQ4HBnSQPsY9A1ZZhdJJqaA8E9NL3ZMdkE4MBITujslroO
	jk+CxuQiTHTIYLUXqWMPFNimeTHT/owjhhW0Rit3om0D+N/XXJHy2vLn2STo6JokGUk=
X-Gm-Gg: ATEYQzwN8nDB1/vydsO0xE8dVgXjkrhdWowXbOOuIm8XuKTWqniB1z1ptgR3Fpb/BV8
	19gSIgrGzunP53TY7YK85xkg6eXKGxvdZ+5xKkrdRDRiaHKcZDngWRhB29s+6t/wI84chPW90iV
	FqSWcW+bEcEE99OaRN0h7P5xVx7gl0AGK6jDAJ6DjJGIQkxwsITBV5KnD1VKvd8xU3DdEGIPgA0
	GNiUp5Yj3hVnzPCn+uC6W0787VOY0B9SW3YuVpGKjHpHNZrr3IgIROextzNdcrfh6sM22cmrON8
	hMmRIkAr09AMWwk1nkX0jeYSLFQ9eBggxRZ9ahbGTcdusdZ92XXesr6PX06iUr605a70G2YMBcD
	Y49B5rGYuLpA7BGh00LbBfrjhABnjQucgtfb19fadiweLvdLz+fNlIJfYpmDh9N5Qrs4uRSP1g6
	PvqynWOmxtC4o+TwnM0aKInqLL23d9HeAR8Gs/H0nNGX9lCmnJKOCQTRov8UrkUuaSkEHtvU01/
	lxC2sL0XhYPNFI=
X-Received: by 2002:a17:906:209a:b0:b94:102d:243a with SMTP id a640c23a62f3a-b94102d2a92mr24981766b.37.1772691120288;
        Wed, 04 Mar 2026 22:12:00 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aec3243sm849355966b.53.2026.03.04.22.11.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 22:11:59 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Mar 2026 06:11:57 +0000
Subject: [PATCH v6 08/10] pmdomain: samsung: use dev_err() instead of
 pr_err()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260305-gs101-pd-v6-8-8cb953c1a723@linaro.org>
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
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: ACA0020B466
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
	TAGGED_FROM(0.00)[bounces-271368-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
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

dev_err() gives us more consistent error messages, which include the
device. Switch to using dev_err().

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 2214d9f32d59..41a232b3cdaf 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -30,6 +30,7 @@ struct exynos_pm_domain_config {
  */
 struct exynos_pm_domain {
 	struct regmap *regmap;
+	struct device *dev;
 	struct generic_pm_domain pd;
 	u32 local_pwr_cfg;
 	u32 configuration_reg;
@@ -47,8 +48,9 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	pwr = power_on ? pd->local_pwr_cfg : 0;
 	err = regmap_write(pd->regmap, pd->configuration_reg, pwr);
 	if (err) {
-		pr_err("Regmap write for power domain %s %sable failed: %d\n",
-		       domain->name, power_on ? "en" : "dis", err);
+		dev_err(pd->dev,
+			"Regmap write for power domain %s %sable failed: %d\n",
+			domain->name, power_on ? "en" : "dis", err);
 		return err;
 	}
 
@@ -71,8 +73,8 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 		/* Only return timeout if no other error also occurred. */
 		err = -ETIMEDOUT;
 	if (err)
-		pr_err("Power domain %s %sable failed: %d\n", domain->name,
-		       power_on ? "en" : "dis", err);
+		dev_err(pd->dev, "Power domain %s %sable failed: %d\n",
+			domain->name, power_on ? "en" : "dis", err);
 
 	return err;
 }
@@ -140,6 +142,8 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (!pd)
 		return -ENOMEM;
 
+	pd->dev = dev;
+
 	pd->pd.name = exynos_get_domain_name(dev, np);
 	if (!pd->pd.name)
 		return -ENOMEM;

-- 
2.53.0.473.g4a7958ca14-goog


