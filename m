Return-Path: <devicetree+bounces-260529-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PV+Olc9emlB4wEAu9opvQ
	(envelope-from <devicetree+bounces-260529-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:46:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C78A614E
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 17:46:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4139730185CF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 16:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12E15329E7C;
	Wed, 28 Jan 2026 16:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M1a+HWFu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6BB310782
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 16:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616664; cv=none; b=ac4q5CqGozLNlJOQLny8lqBfVU+OGz/c0K8okCCO1XUGCBAzrDdZ5UAGJEV49nu7ftlHUkZ6ikjCTBrRl7kkTVcim/2L00+aDdA9cTd9KQUsXT/5/w0Vfk+mmRzZujE5llfdawTqDBfH48nZaEGe1ioHbmSijMpMCye2GSzljbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616664; c=relaxed/simple;
	bh=JnjfvK+MHgibmXdj8c8QyUL8Q5i+pDFvx54OCA4Mehc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FdBp5XVfnl5YwVnS2Pzwkcxav+ImJ84JU8v9lRi5OeaMFTGGtULUuUClGM8NncwtgQYlUgIEXUWulxlbva9RxjAUGrbVFPmYCMs7YkO1J9BQTnfGBr3bReBkGHTK2EbCJQnIaHkuFjL2Tp6z1LLqGZjxHMeJWiBBCixZIJsF7bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M1a+HWFu; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b885e8c679bso1418366b.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769616658; x=1770221458; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kov2pn4auGP7KnNGCEIBpS1LmUNVpZnSgM4Kim/Xeow=;
        b=M1a+HWFu6T15gKjZ0K74uqkZreQ+DrsmvCWoA/WiSiJ67d5lxxS68++U8Y87bc0Reo
         /j2HMN4IEqnEzIcitkAwT/TDHqq34PqB0RRrAV4E5sb5UXLno70/DbsKlnDpe6TWiatV
         fulSoIZceU3LaWGnhk+uX7nwvlC/lCKr5bC36O1+7kg78ZkhXeNSMTG5nEvAimTRpMH7
         +dGsT0qHqopLXizz+DUcZBLPvuGXxHSwEUfIzLL6amtbjxkgJgQVXRtO47pxJlhMv/KE
         abK9pj7RTXzzyspIAjSjfuFGVLtojLQSGeQZYWoc7hd+NXLBduB5kmxi26e2XpnOh/jg
         ik+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769616658; x=1770221458;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kov2pn4auGP7KnNGCEIBpS1LmUNVpZnSgM4Kim/Xeow=;
        b=mVYzCDZCnLFcdCIU/xh67mLx37cn7N8zB/rrSQHK6bKKDIxrQN11vxAhg/pdsBJgtN
         o8hZvpQbwCYGM7tsNhOR0eUzSv0OAQfhYIznheh1OyFPO0ughfeSEqTdGDu/I4L1s7uU
         8ZWr2J5CCDub6PLJucoz7T1rKD37ylCVzJyBlLnqHJJDY/Lxa3hLCp+Ylk9cIlB4cbEQ
         YrfwqLcOETr7ir6gla4IwWslYGXYu5jhJrRlTalbi9p/fYzwz5BPJ72hUn3zSF9wKE8S
         nZ0sngDDYxKtZtgbytkyTFjBI9cag0u2/U5EMI1FIAbX0tGiuZh8B9cCnNlRlWQEgn4F
         7mKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUa2dZMyPSfhMCzsIduZ7oxMojmM1KxxZNHcmIDp5jjdd2ots4TnxLpXzhb9OGv2dO3eUBD0Ns2Dx0z@vger.kernel.org
X-Gm-Message-State: AOJu0YzwIgCsie/bUVqNVTQiId1ra7SRYCSUHonqbehAmkgjAOnGg/49
	1sZBWFL3RtPxJRZFr9sH8iawIRLNM4UVlJtXUwcOsdR0lI52qG1m0IzQ5A860T9S/Ei18ejjfJQ
	V5KVreRg=
X-Gm-Gg: AZuq6aJrCaxXqEUEISFE7QAw3m/niLumEtPqNgbwafyVRqMhWGtr5qh4+6KED6dv6Ry
	EOLhYkrnNl9X1sBueMF42sPSqI+jkh+TAiLB6NcbSzN9wmFNEVYINwZRH9VY6yOf+hqIt+dWnrt
	RzgH/620s8gVXZI7P+KXTapuahV8x8p2g/CcP435gKnaPaaWhCYfpfgzvZ2mVWfTNGPcKyFzHue
	lgdqUMByOXzB3OrDIpeGLc2VWS+nWx7qp8XjxkBC+jilG5jqgmyKbWKfps5bkH9PtfNYsJtcA/a
	Cf+f7PRn44aPAM26wVO9B+zB0ToVjOf8EspeNFwmCuS9TMEZnhkxABHIVk3+ftcDW5ZqPuS+s/c
	bufurPPxyH/0ArrrufiTgIDgJAfP2AVdCraag0E7P2IVYkA6o1HbyUASjnT8de8KlP7JNZRxcH/
	5H17mCadlcpSLRkxe9/sRv/rSP+3qG/YPu0aYRQrRitbO5Cl/wWjnSUOKjejt/QqDycbZ9+AFVL
	IXQCQ==
X-Received: by 2002:a17:907:94c4:b0:b87:2780:1b29 with SMTP id a640c23a62f3a-b8dab32edfdmr423420166b.37.1769616658444;
        Wed, 28 Jan 2026 08:10:58 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbf1c021fsm148553366b.49.2026.01.28.08.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 08:10:58 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 28 Jan 2026 16:10:59 +0000
Subject: [PATCH v4 10/10] pmdomain: samsung: implement domain-supply
 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260128-gs101-pd-v4-10-cbe7bd5a4060@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
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
	TAGGED_FROM(0.00)[bounces-260529-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 18C78A614E
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
2.52.0.457.g6b5491de43-goog


