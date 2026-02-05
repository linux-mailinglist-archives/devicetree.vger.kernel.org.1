Return-Path: <devicetree+bounces-263182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEyiNtwPhWms7wMAu9opvQ
	(envelope-from <devicetree+bounces-263182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:47:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5591DF7DBF
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 22:47:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4D8BD307F0A0
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 21:43:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55AB9335557;
	Thu,  5 Feb 2026 21:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xs7mYAxe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94398335074
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 21:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327766; cv=none; b=G0BGDk7OeCySYqxatHYtMH2xaQEooDcZlhE1fGeKBS8tdIwfBBaHzArJwsn8a+6K21JqAMxUZAH4mMGSXe8ppkCuP9fnLELT0EW5UiHexAZdHxuZee+BIrdxwEYSIId8dPKSMq2o3eKNClGij19X2QEo2rJhNRgtDdnUt3lZ+xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327766; c=relaxed/simple;
	bh=u4sg0GJwh6e+BEq1gu8SNmu5JD78FxHznumDbt705qY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V22mMQgcZj8ZW6c471vDR0yQ7jDWmMa2DMfBcUBZF1zYxu/E7LprzhBMdIAWkomPEaY0jM/mGNsAdcKzIdypLlRy33qhoQqpqvWfePIu25k1Be2qMBfnW3y8HJvHmX1ylOp5K8iDr3oGhJ8x521eHTZe6yWqByATgMp0yQg+psY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xs7mYAxe; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6581327d6baso2413944a12.3
        for <devicetree@vger.kernel.org>; Thu, 05 Feb 2026 13:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770327760; x=1770932560; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=khuzBcy7Hz6jo0S9i03alRelHLigzIL+h0sUh48v3Z4=;
        b=xs7mYAxerbmg5OfOg6zqJEFq+eQGrBgS0dwnvnxoxt+TUkZrGA9dak4soSHA9/YvF6
         wJo6PXQD6gK0MWcdkwBauNEAoUczScw9yXy3UCYRKppnVZoP4jr+JDUCBntMEhUg3SWM
         Qg/0BOH2ghJyS1mpKxNK52rQmk1iq6Uz8zj39T2f0rrE9v5gBTBQ5LgKGwmY0K/CbE/o
         JS8CFHWEZqDHkT70uAt9T6+FM3qE4U1u7XOdHsxjGXsYZ7P7JUxARPOZ91RpAaukxGeW
         OcI7IdTTGuHMDosWF5++KOfeitJtrI5d2TX31NlJkJgonjd2xsyZk1BSoXmnDqpIge/e
         tPuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770327760; x=1770932560;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=khuzBcy7Hz6jo0S9i03alRelHLigzIL+h0sUh48v3Z4=;
        b=kOmNq3sLoMg+UANh6NA+OXpDwYLEDx5GSldY7X1AE6GAt/GN2SQC5eh9KdVjW3Jzbm
         jxxZ8zuvhgVTLLQVobP9O/LDk0iV8O0+VjajUIBu5jr0aY13xzF1M4yAxUqyLuQezYdz
         vuDlVg4AluSZXvjgcf7CcXi2uI4lcrhrmc1id0O4CMkTRZ9CVTBaF/mBLliFCTdqQVpG
         nx4864RPE2mtIxCrKOo4NgygKIilk/XCyc9FeBsZYemcX/mmHkUpfJ+GqYc5Po35XIkY
         Ba+X8GWZ7Cw0rEElN4bZnQj5XScD3ZYhkR/dXLUloK1CJcg0yYuy2hqjvmjoROnusPn2
         IG+A==
X-Forwarded-Encrypted: i=1; AJvYcCULU8Um6lI5UYinZMtNmGS1MxzV0HVMJnxO0W228tf0N64dvHXYFfrgvpAI0LzyOaK4wEnm0bC56Tkd@vger.kernel.org
X-Gm-Message-State: AOJu0YzcSXCgqkkvudZBOUPhgDskzHBUK90piy7TV1UuTJb6egHNnRXz
	FnprZiHzJ6EP6LafjM6TDadGWzw41p800NZJ3XhdlMuz7Yags3YRTc0rdOAb+tybWkc=
X-Gm-Gg: AZuq6aIeYTyxrCRS2ipmavqPxqVP74exoPX35HLEvFuOGzlRDYmeeWVTwlfDSTw9KGo
	/EIP4zfjhb3oHphXaWw73/cGXA3bIJ3oI1KKKnowoaTYPXwq8Ss3Ki30zAnM1D3w2ujWTM3pGdc
	BODuqmK1cuXdAL4Aa0uIi+ToRta09v+FbhnPqNX3viZdSzDr6Ad+BCQ6ZWPvJg8ZNA4C+ncoIO7
	UozbvEqKc5nLzTH84bLVW/XyGjlNw4Y9ILunaP5EEqvUItxAUrf/LrJBYV/avTlQwNtEbVXU08m
	nF+UfJO2nGvH+5swVCi+JFGSPoJnLTyC2hLks8PhF+kFp+t8UaqVrCYgaOx6sy7CWaMxdDsADjj
	v8ImQFlEyYowwb4J0eUYMIwlA1vAn7loP7gafxCO7GL2KEIUOa/peWciNv6nT6knppquINncczI
	F9gF/E9Xt3ZFcxtYZ4MGt0UD5ecg6bQlToefmdE9ly4TqqdPwBfQ00itBRnXADx/ORhlHJx4pcf
	rOmXg==
X-Received: by 2002:a17:907:9810:b0:b87:39d:2bb4 with SMTP id a640c23a62f3a-b8edf45a619mr26687766b.59.1770327759827;
        Thu, 05 Feb 2026 13:42:39 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a0074sm21859966b.18.2026.02.05.13.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 13:42:39 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Feb 2026 21:42:38 +0000
Subject: [PATCH v5 10/10] pmdomain: samsung: implement domain-supply
 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260205-gs101-pd-v5-10-ede49cdb57a6@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-263182-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5591DF7DBF
X-Rspamd-Action: no action

Some power domains on Exynos are fed by a regulator rail and therefore
regulator control needs be implemented for Exynos power domains.

On Google gs101, HSI0 (USB) is one example of such a power domain.

While at it, add a to_exynos_pd() to avoid direct use of
container_of() in various additional places, and update existing code
to use it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 53 +++++++++++++++++++++++++---
 1 file changed, 48 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index f59986b56213dfcc470d9cccc61a36a81954bdcc..ed7a5807555bcf86e4ec88166bfd5f6c06c9322c 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -20,12 +20,15 @@
 #include <linux/of_address.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
 
 #define EXYNOS_SMC_CMD_PREPARE_PD_ONOFF		0x82000410
 #define EXYNOS_GET_IN_PD_DOWN			0
 #define EXYNOS_WAKEUP_PD_DOWN			1
 #define EXYNOS_RUNTIME_PM_TZPC_GROUP		2
 
+#define to_exynos_pd(gpd) container_of_const(gpd, struct exynos_pm_domain, pd)
+
 struct exynos_pm_domain_config {
 	/* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
 	u32 local_pwr_cfg;
@@ -39,6 +42,7 @@ struct exynos_pm_domain_config {
 struct exynos_pm_domain {
 	struct regmap *regmap;
 	struct device *dev;
+	struct regulator *supply;
 	struct generic_pm_domain pd;
 	const struct exynos_pm_domain_config *cfg;
 	u32 configuration_reg;
@@ -64,12 +68,10 @@ static int exynos_pd_access_controller_power(struct exynos_pm_domain *pd,
 
 static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
-	struct exynos_pm_domain *pd;
+	struct exynos_pm_domain *pd = to_exynos_pd(domain);
 	u32 timeout, pwr;
 	int err;
 
-	pd = container_of(domain, struct exynos_pm_domain, pd);
-
 	if (!power_on) {
 		err = exynos_pd_access_controller_power(pd, power_on);
 		if (err) {
@@ -126,14 +128,45 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	return err;
 }
 
+static int exynos_pd_regulator_enable(struct regulator *supply)
+{
+	return supply ? regulator_enable(supply) : 0;
+}
+
+static int exynos_pd_regulator_disable(struct regulator *supply)
+{
+	return supply ? regulator_disable(supply) : 0;
+}
+
 static int exynos_pd_power_on(struct generic_pm_domain *domain)
 {
-	return exynos_pd_power(domain, true);
+	struct exynos_pm_domain *pd = to_exynos_pd(domain);
+	int ret;
+
+	ret = exynos_pd_regulator_enable(pd->supply);
+	if (ret)
+		return ret;
+
+	ret = exynos_pd_power(domain, true);
+	if (ret)
+		exynos_pd_regulator_disable(pd->supply);
+
+	return ret;
 }
 
 static int exynos_pd_power_off(struct generic_pm_domain *domain)
 {
-	return exynos_pd_power(domain, false);
+	struct exynos_pm_domain *pd = to_exynos_pd(domain);
+	int ret;
+
+	ret = exynos_pd_power(domain, false);
+	if (ret)
+		return ret;
+
+	/* Ignore regulator errors - the domain was disabled after all. */
+	exynos_pd_regulator_disable(pd->supply);
+
+	return 0;
 }
 
 static const struct exynos_pm_domain_config exynos4210_cfg = {
@@ -283,6 +316,16 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	/* get the domain power supply if required */
+	pd->supply = devm_regulator_get_optional(dev, "domain");
+	if (IS_ERR(pd->supply)) {
+		if (PTR_ERR(pd->supply) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(pd->supply),
+					     "failed to get domain supply");
+
+		pd->supply = NULL;
+	}
+
 	/*
 	 * Some Samsung platforms with bootloaders turning on the splash-screen
 	 * and handing it over to the kernel, requires the power-domains to be

-- 
2.53.0.rc2.204.g2597b5adb4-goog


