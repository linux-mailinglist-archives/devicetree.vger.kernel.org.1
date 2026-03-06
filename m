Return-Path: <devicetree+bounces-271976-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJR+C8mtqmnjVAEAu9opvQ
	(envelope-from <devicetree+bounces-271976-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:34:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EE121ED48
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 11:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAB5330965E6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 10:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684D03815DC;
	Fri,  6 Mar 2026 10:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dKNuhlt3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DE737E2F8
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 10:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772793007; cv=none; b=Pt3LjqThSnE4aLpPJIHKxr7vN6fXvirXgX5cMwlLJY01C8nRuznCAu0eAwtlIw/Mk3sn38zB4HrjDnO4rtevn8eZtuuRqGAJMNuIIbC24wb3xNytJDQffIe9dewnRDJAbbxiG6cYYw6rsMAfEYKpih5V5rOquKiMuTKJ2JfVXbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772793007; c=relaxed/simple;
	bh=k+2eK86lvnhd0G39XcYd0Wo9v7NwbPnA00WtqszUSr0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ESHdzDki2xIPadnWjDOz4wgoGex8QiheWyP/3hNFkxSBkLGG7B5HQ3XZh+F4g4oMVzhm+geM6VWaG5FXHmfbxeQxA4LX+buEWdrxMn4hSsk/sHO0wJ+945MUgQw4WytGvxyAvaJRZRbAgPuGT2/iYw9L66VD6LEgNyYftE5Dc9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dKNuhlt3; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b9358dd7f79so455967066b.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 02:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772792999; x=1773397799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GJyveOpQYRN0Rj97xYSp2eMNn5Hi3Nxu7cTlokaFCRE=;
        b=dKNuhlt3KCfBsuTey8Np6s1O64kfB8yNf95T89pvdr0nD08aWxe5lj9CrquQYlcBSv
         FQr1qwZnDWnjsB7kGtONsMcnMYXbgB7eToQRh0r2WYf9wUEm47udvF9rGD6ixRFCwUk7
         01M1xTNKr1uQT1T4HPjbbMBcYRs7Uj1bXn8YLOEaPKIHLUUOt9aCvGvEsTbNRGN5t+fg
         UTAwUjN2PYq0rgk/+90Zvnq1/Q0kI+YC/VY4NJAGOaYS8naluir2Uao/VwrjKt+QxAgZ
         EMNdd3fydPClvSs36YUHrQ+bAcv++NVaFKBeowH3p7CS1P9Qyha84lIcb4QbBZ+RSShr
         mHIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772792999; x=1773397799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GJyveOpQYRN0Rj97xYSp2eMNn5Hi3Nxu7cTlokaFCRE=;
        b=kFm+OD8DfKiQzvn236TqFw6mk3RDCYHP229YfvKPJ2oC3j+iX1VbEHAvcpeqcRPmU0
         5Sv7guuekFl7NqnqJZkMP3I4G27iyHjPR1fVhlNfX50+b+HvrSsNyic+0Q5hx8pxO16m
         riKefR5aSQhUrqUVUpi7hW3MHAxuIuAnelh8XxNclPr428rnkqef+wYjbIt3P18ewiSQ
         9sslChadDqWzg7BXHihEQ6dcAHiaVgDYJyakkXz83I4Hn8Dv1Oc7Lg+6tjYgUm9pKsj7
         +rVFHbwaI6G7to8rfOdk371OhMRD8YlvEtzciuSuxp/9uW7uKiS+F4dwW5WPKUQ7Ap+B
         vzcQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXeCN0M9YzYmN+lWwn2Lwreeq+eQpmzruuf+xOHtoqR5enhyShHWmzLO8beTcctpBhFRVMZL6IF+EA@vger.kernel.org
X-Gm-Message-State: AOJu0YwGjX5YggU/Eilf2igR+H1oum31QFOF/HMH8letuKD28iDh77p7
	3jUSgreJUTIBLYDI+Lwjpp8kTjM3UtBm/7wmHMR2uzn6p5ST3ZKs+6ft1HR2DpXTOWM=
X-Gm-Gg: ATEYQzycxrUgbHJZnStm77hxUnOin67cCV7Lzp9OsbSuqXxt1JryO+9tAwgyEjQ0/X3
	iG33tERN7AuhydhHXkGwRx27DB0zh2lRIGczfcWLKZjLoIR7dIu1NBZUWzgmF4owzYIMYnJTCpY
	ztEnyG6C68NR3ZpPKzC1j+7wVLsqSEoQ1CZpRDCNqtIZnuCsIuuno/vy4UI2X6+B6nSPtsSJoXp
	oVlIwCol6Jb3M137Z66vm6+ssyMnGa9lKt2uVlMDqplJ1PrBfjAeUOu/OKH9pCcUoH337LALeu2
	JSZakImJJ7jg+L7Ey4RrE+CPR66ZH/TXf5Tr/0ZDquJCFta15cRj9LQ6IzhrBJOlyH/jGqz5qnU
	KPbbi8nX0RHS7iSgJ2aevP76qaDJcT7bfqZPaN8hNKHEU3rM7Y9Z2iCeTs4wIIh3zFSpawqGkwA
	GeTwbE+0jhcya9VHvkSMM+LKWMi/bnJfG6htdmq4hHIWCSdI57kiiL+s7jC/ZhFQBK/Yhho27f+
	9Rn+TdNjPAP/9hSepinhMTB6A==
X-Received: by 2002:a17:906:6a0c:b0:b8e:3d49:25db with SMTP id a640c23a62f3a-b942e00db25mr86819966b.54.1772792999461;
        Fri, 06 Mar 2026 02:29:59 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8c95csm42907266b.21.2026.03.06.02.29.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 02:29:59 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Mar 2026 10:29:59 +0000
Subject: [PATCH v7 08/10] pmdomain: samsung: use dev_err() instead of
 pr_err()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260306-gs101-pd-v7-8-03f7c7965ba5@linaro.org>
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
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 99EE121ED48
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
	TAGGED_FROM(0.00)[bounces-271976-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
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


