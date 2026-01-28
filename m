Return-Path: <devicetree+bounces-260527-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDeUHqo9emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260527-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:47:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D63D4A61DE
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:47:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EDFD631DD4C5
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:11:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7A1320A37;
	Wed, 28 Jan 2026 16:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NhKz5PJd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6584F313552
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616663; cv=none; b=PVn4K2Z5g1iYtpSyM5hun6p3rgxW/YnNcEJXR7VhClij2gqv/yJZwOjVJAUvy/LFux0rqzHjHyPlAFHSt4gKue+rlpHiwmxPIQ/4QFVDTGnyBM//Qvz+DUsFPBzawr0kTtIvSTnP2aMlQ58V1bPNIcRFDcBHtMcBBdwWwRXHy2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616663; c=relaxed/simple;
	bh=7uwE3SELXGLKzf5NF/JJUetLs0EPpYebrCJSp0Xb+8Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZFS3ld82DPRQpfXSoTfJUu29qlQXaJ/H0zKeu6JCK95p6ivqPwi5Wk+OLq7pLeYeB70wvDOxHnMF/G/UEqHrf7Y0C8qvW5T3FnnFPguHDvXJB166Pgv892kIaXDUAdSwwCA0Ru+58XglwEp4YtTLPItDf8/lTi2BDK1J3CPnHTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NhKz5PJd; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b7cf4a975d2so1034152766b.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:10:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769616657; x=1770221457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebxIe09ZJP2AO9RkSAId8NpKhFo/Pn2AHgb75qkbgKA=;
        b=NhKz5PJdbQ9dT0RtSek4l50aFl9txrXWHGMi7Q+pHmTwxofOUGV1/wpP+79VmYwDfe
         C6SvIxPUlihJwuypAOAWMjBe95annT7CZJYD70chcnzzVNT9zOBiaxmkfRX8RX/gx2ql
         BE8GHpvKJfoTDrtAbmVlEyfqrCTu7J2J+lbW9QzgO7dRd944Hu/Lj2tDxKvJYI21tRgO
         phNJ/ObcCe4L2rWIKMNqrRsHVfLvifBFNqAU3lS/tBT0+KVd2SO5WPw0gJ2rOOnDBHdd
         4svNkEjBwpKPFKD57GVzcVuv9PYpDYmQQJuYjVpuO9kAWF6tIEDWFc87Tg64nfuA+p5/
         5FQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616657; x=1770221457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ebxIe09ZJP2AO9RkSAId8NpKhFo/Pn2AHgb75qkbgKA=;
        b=nUlgcKCZSb0WeVFwucDvHhON280PKT6itb7d31Cg1cd+5usz4tLKpDEl00a3LCZizY
         aYspdSsZKcKnFmyFmLeO0bPftlBHfQwvQl0U5P7Wk2bHsdjAVQ4rUpKyyItA54YZBrpS
         jVyuGuQzy2m8OYzy1PLpN4wlgYNsDj6VMrwP/HFwIm32MLYdtSj+mCJ3K3AHonulFgXs
         xPYpZ0/sNTYgbUEOg10hxV0+OPFSQRmEgUA2iiwcdRJhYQUSlhzrYn+A34zeuiyMHNlt
         G4kp1Yn0ymwAjmE9tRH3pVDZ0v5Qgiier2OCrBdb+y4OI7V66WfPj9jgQSJogRD/dqnw
         78dQ==
X-Forwarded-Encrypted: i=1; AJvYcCViznB40Zy/+RSSb/VnH42hyy4CZ1bdtcq6+fAdY638TMnq7c18zkB41dyJQIpmtKpyaiqyVPA/Jnsq@vger.kernel.org
X-Gm-Message-State: AOJu0YxmJHEOf0rdzCoZXLpY1u9rLS6n3w/8wYVMZw2xNOyNrHrbCLch
	HskcZsP2RidWU+oLmwr9vNkY1/Lhp1Ejv7DeQalwqnZiSHFxNHXDMvM7wn81aPJ6ank=
X-Gm-Gg: AZuq6aLbLs1j2fQh514+Hz9eDnAsiBU6ODYa6LDgerPYTMMD3RRxFxEmyYjYE/6+gZj
	2IWvMYt+1V0sMOie3Ot8EjY2Z11pMsQ4jBy1+RdEGF+rzs+f4Ku9JupVvRhvpS2FSvwCTqvHwWt
	djZnXC9YYUk/IeKD5Er5ISd43MJVCX8i6IjFWHvRvdt4hYXopp1tfMpQL8xUQX0Eo1Ajc2Rbv+J
	LHnKs9k2TmA2RxJybIKNsJstNoAAUFy6xpIOCse60ow3BHjmXSC5JXKlWVCgHak1K/sF57Cq0Ur
	Ue3AfFVzUkm+8aeAS7wnNftkqcro1NggK/mpHnX87IPNMpOfUHG6coet7BcCVLQqe6Vll3FI7GW
	StFagL3kpoOEK3A61TDDgdDmJXo7mLtrcHPhEjKN/suZsi3BX+1xB7iizvyy1bmiN5kwjkkYlOD
	6fgPnx1Anu9ljLRMXJ/ysODec9ilbLmJTfkQZu1R8qgs9MAXs8sCb3eIi6C6FkM66LfowoBiyKp
	h1Qww==
X-Received: by 2002:a17:907:1b24:b0:b87:3c4a:e68f with SMTP id a640c23a62f3a-b8dab434f1emr359018266b.36.1769616657368;
        Wed, 28 Jan 2026 08:10:57 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c021fsm148553366b.49.2026.01.28.08.10.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:10:57 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 28 Jan 2026 16:10:57 +0000
Subject: [PATCH v4 08/10] pmdomain: samsung: use dev_err() instead of
 pr_err()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260128-gs101-pd-v4-8-cbe7bd5a4060@linaro.org>
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
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260527-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,samsung.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D63D4A61DE
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
2.52.0.457.g6b5491de43-goog


