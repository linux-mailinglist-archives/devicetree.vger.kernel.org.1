Return-Path: <devicetree+bounces-263181-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEq6ObAPhWms7wMAu9opvQ
	(envelope-from <devicetree+bounces-263181-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:46:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93061F7D9B
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:46:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 53344306D862
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13913385B1;
	Thu,  5 Feb 2026 21:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TvQ1U+Qj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6471337B8D
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327761; cv=none; b=iuq1QSMdLr0BWGG7T6N6gbxLkSOPhtdV1Qz8VQrhpLPd81J8AV5sEK9lC4mxTdY19baBgkj/35OxqA2a2T1g7Hc9gSJJzNK5FXOcd5RgDFgI7ob2+Vz4APc0e0LhZauHC+AcDAtq+TGJahXOjZ0Rr9rNAX2K4ZMHrnU6IKdfHDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327761; c=relaxed/simple;
	bh=muoGqgWKhShCKcOO5yeZFs5XpYyP2mmge6a1cWmwLxc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FJ+XuO81QRE3lVYo1KgpfNL0pbA4wOMDQkk3dZgTTV5YIR5Lki1s9yxtZX93eraH0kIFEMiku8WVywBgGotS3ce51K/CFZ3VVDUVgD+COYnlgeWP2eT6MCFhpcwCMv+Sv54BVXRsbgO+XQParDjpNHCMt3gxG8gl3gRM8leU56I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TvQ1U+Qj; arc=none smtp.client-ip=209.85.208.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f67.google.com with SMTP id 4fb4d7f45d1cf-658b511573cso2482757a12.0
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:42:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770327758; x=1770932558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vUyvGkotnpd5Ix+9v7DeK25pCFRQ7XmZ5wApdtSkIE8=;
        b=TvQ1U+QjAlcmX3o/2cyrj3Eyg4kgj2VpSMmsayfEzYYUgEvegStnJzYP57PEHEtTrn
         QlKAFkDrJP/Ldh4N6AzYxdfVMVqpBAchspxn6fPaAlmr0PQEAwSD15HhbVGSQkAYhpN5
         wdgSOkjhA2Gxj/Y3OSZkNRwuO8w6NNsVKI3oY9YaVErgbnDQ3cfSYeiwV6I9s373deRK
         +H/CMLWiZzxCTLTMWMTqQjepgaODFdyr1UDXCdDNf/YVSr3M1WnWSt3XQg0txq4JWd9z
         3Py7Au+wil6WGy+c/s2JdpzykUzT/4fJrjT+e3ewt1RDnVIofP32MKpwTGtJPc5FvWiP
         qq2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770327758; x=1770932558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vUyvGkotnpd5Ix+9v7DeK25pCFRQ7XmZ5wApdtSkIE8=;
        b=k8mKjjEhCnid8RD2j/a8MbxfDXX2Z2AravqiV6HlNI55b9R+ClTTqqrVeH6bllR43K
         gLLL5bbVIymxgMG8oRtSZ1ZHR2bX4KN++DfNw5HCsWP9MAZxwJsuFABMIsO25cJ44IDB
         9e0OoddQdF3MVpESUg8jLurafF1QoI3AxnWUH6PAX98QmSeei/kH0BQ6uH30tbgIHhfY
         Q8Hi5i923H5iF5c2YBfaR+ZDmtf29Y+dBKJ6NsEGTlpC5PV/+xtaR02FcCes0juxD7ZC
         IhHeZ9Y6t8lm21HJVha1XtvFCdNVGidrhLsNZGn3jiBtmqZ3+Hzvy6BQicXzQ8kesnvS
         xUlg==
X-Forwarded-Encrypted: i=1; AJvYcCXBvGVaSG0ybeKyY9x4NAbzVogLJZtNM9efmH4tn428HSg+qgongrFckMlYu8yN55+Mgawa/I46uO2F@vger.kernel.org
X-Gm-Message-State: AOJu0YyGbpb+LYGBiaCt9XmkF1QFYnmWdNX80IKaZPUvpyt9J7YxsCi6
	5G+mF9rg9KJmCREFtnmNsOAwO5fCfKOE9g5ihn0r9BZym5o7mDa9P1CRAK6e0f7ExXY=
X-Gm-Gg: AZuq6aLU9EalvO17LgROcjB7R11Km4CZgRWdYLkDnxXu3Km9nWQNBDptWYw6qIPJZuA
	UFpwseXWZnEXzbSiiII3z1SVgy+kPUnzPZpm8wohvqBhAUnxLWwxiuBazZEAZkIXZiDvGH3ypvL
	JpU1Hh0ewCvuvKoa0gRrHn9ICU/hppa7Lb/jn/qrZVulGauqoeka0wk49BvKBo6sJI0CNeTUFee
	qBnVVfwBZ5DuKDPwU3hZAD0wlZH915YEaJj+XFiF0em1nOl/logtygDIdy0dX/aeOOB38zoTGTv
	nMIw1YGjC1HJe9Vk/fWe5BUQOREtgw8SbZgm56QHtMxsK+jwj+7PyXAUiGsOIXhktfD20H5ToPa
	9EHp22Qlpo/MaMzhhELC8tXc5kdVgji0JooMpd/vxSAri4QHlqGZ/K62rMnfVBl8b5+KoOVZHx3
	dL/Mu4DeLsxbRlXkE8tbMKX52jnCQeaM2iUqY3dcdjJ/6otgwXSmeE7NaAmyKKQNz5oPqV0LphN
	c3NPQ==
X-Received: by 2002:a17:906:f590:b0:b8d:c595:828 with SMTP id a640c23a62f3a-b8edf1c91fbmr25990966b.14.1770327757986;
        Thu, 05 Feb 2026 13:42:37 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a0074sm21859966b.18.2026.02.05.13.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:42:36 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Feb 2026 21:42:36 +0000
Subject: [PATCH v5 08/10] pmdomain: samsung: use dev_err() instead of
 pr_err()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260205-gs101-pd-v5-8-ede49cdb57a6@linaro.org>
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
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-263181-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,samsung.com:email]
X-Rspamd-Queue-Id: 93061F7D9B
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
index 2214d9f32d5967b60e84f68f4e99a725d66a39eb..41a232b3cdaf0f4be413b25d9373b99c6a3db602 100644
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
2.53.0.rc2.204.g2597b5adb4-goog


