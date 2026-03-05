Return-Path: <devicetree+bounces-271370-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG1wAGgfqWmg2QAAu9opvQ
	(envelope-from <devicetree+bounces-271370-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:15:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 071BF20B4B8
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:15:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0E533052AD2
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E3843019AA;
	Thu,  5 Mar 2026 06:12:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QXm4wPsv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0D02F12AE
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772691126; cv=none; b=blslLe+ecx0Dsb8EUu5WwnVqj7Hp2/3hE/PGc0/mVDW4++wU9jvrSz+2zz/q24BDPtteNy2C8bp4HNm1kpi/dcESdfF72N+bjTihaqfs8iUXFzIIFO1GCsKeVFGpXAZku6b634JKcOw8csJSmlTkMPxGH2Gf94HHF+a+CUM5bEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772691126; c=relaxed/simple;
	bh=NS+1Od4aVlTq9Wx7bCSooHKRSz+R9G4t7LsBp+nXiI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CmOqgT65kDXhI2i90m8mAveoDTtmQHj5q6ypAVgf4N9W1T6dV/pob8TkiX44PFoEaxY3Vk093gKGPsuJiB7+jiOA9Rfn4g2oDskHtIEwztiKNU9sFnsG1KL5/l0bSY3x5D2vqqqWer6x9MvxOE69tugMZSxADkfZpHZ5LAt6Yn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QXm4wPsv; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b93718302beso163519566b.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772691123; x=1773295923; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z+RpBQOuQW07kF7dgJNXDXfeT4g3XJJZS09GBpqTzzg=;
        b=QXm4wPsv2/EY1cXyWOoY3DJWs/gUjFeuO9Dbv3CoE02OJHZSdVBOpKZrRocLc1yqF8
         wn2j21FltlDQ51XGK3q4jtRq9nVhlmTgcVabSuhQUbw/QaHDuvIpMFS+BXMx5qTMChiP
         eMSYw56zQWR62jf7EHoerkUdA7U45jwJkEPT4jLlZoogOcselA5lyUMRHZ21+adAJhZ0
         GV9Wej7a/e6yfhl77+JQlI1WiK1whHxg8W52Y8m9MD7jW8+9qNjMXbKWiWEiK6UD+Jr2
         Jnk0weGlN7grynWio2busyLAHmCpZqungxbelCHgaDU+h55kpUIA6Za/N+nhuoQLVQS7
         xomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772691123; x=1773295923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z+RpBQOuQW07kF7dgJNXDXfeT4g3XJJZS09GBpqTzzg=;
        b=txXhbbQTnxCCjvMixAJ1GsBk/E4FdlXzLlecLP/G/a9ES7h//v5bnlzjFVi+93UAxM
         zWUpBOfEkz32Ea4QuyJFNDATp1EtO0NRLp7N1Gi8RbM7f8eZuXmNdPgiHj8LDrTc0UqG
         DqUO8MiD48s2hnJAvOcY9PMzAbLWUsuqqAndEZ17GzipKgGdjtC8xWoD5Bw3Ivi4osXe
         e62hwhfxOU1ID0e3jyK/DLIrYS2QauAGQwuDaqp4OdRMKVMWiWNrHrmYlTq6AogsIZJK
         82jfcZscFYabpHb+s3EgLHtXhaGHGKOO1ZbDQdQoIQ6cSh88egrtmxy6D+SHby+M8RZy
         FPkw==
X-Forwarded-Encrypted: i=1; AJvYcCVwTASl+iPLMx9i9nX6xJtB966QC/t56ZMrKtaAYyNCux9gE7KSfC9f2QO39Ff4UtmG3KyidEDMISOK@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1ZLFmw+GAvuS1sVuWHAwnWbjPKVP1B74FiQsWZ1HUxjcpnDF4
	pOo7cOxxmDL4Msj/mDri/7ShLwBQE9cU9zMl+R2DTwYQ9EvR1x3nPkPxN+dl0pILVPY=
X-Gm-Gg: ATEYQzwpVRkmNUlRhS5R6Hr7l+hH55uMl9bNfUhhPe6rlgIyfxZW2tZMFJ/LCiQI6gd
	Nt3y3/MotdwEaMaiSj2mgPfVgrX0bKsCJwB8Np8bDw7UrYbLN3CJgenIJJys5akVq+rf6LcGVSQ
	oyy3G2pqrFmn29yrZbu8osIHJrh1p1Xngp4HjZ4vjjosQ9cg6aYrhh3zIy+kReyE1MUjK3euN0o
	pkgkseBeVKQ6hZ/z3+iaH6K/EsLH+qLYRRTIVA6ch060mwsHNRVEM39eWSzwoSMBZ3nclas8fsO
	Q9QtrglDx24XiElCmfmPx2e0krF7h7a2SVBuQ/SVIh6UAmISTpez+4xAnrzpN47m/h2+EloQDoe
	rbNOtyQGnDCARnKl3f383jMHC7T1V9+pAeGDfxAu9Uu3iARurfd2dT8LPYSGuP8DSXGOiYkl0Il
	W4tY17KcEN50/3PendtqkNssc7bCCmtJ0shQ7aq0nU1HRXf1q99WpiMizbcBvyX1AqIFASggKwZ
	ptYobil+PPL15HQzsoPqGM0wQ==
X-Received: by 2002:a17:906:6a1b:b0:b8f:8cf4:adf9 with SMTP id a640c23a62f3a-b93f115f763mr262528766b.6.1772691122762;
        Wed, 04 Mar 2026 22:12:02 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aec3243sm849355966b.53.2026.03.04.22.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 22:12:01 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Mar 2026 06:11:59 +0000
Subject: [PATCH v6 10/10] pmdomain: samsung: implement domain-supply
 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260305-gs101-pd-v6-10-8cb953c1a723@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 071BF20B4B8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271370-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,samsung.com,linaro.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email,linaro.org:mid]
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
index f59986b56213..ed7a5807555b 100644
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
2.53.0.473.g4a7958ca14-goog


