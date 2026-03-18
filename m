Return-Path: <devicetree+bounces-277346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGRCKerJumkLcAIAu9opvQ
	(envelope-from <devicetree+bounces-277346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:51:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7F42BE9F9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:51:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDF193364338
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:30:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BA23E122F;
	Wed, 18 Mar 2026 15:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bU+amuEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658EF3A1CE6
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773847697; cv=none; b=m0a1ki38Vy4txKTsSSESzL6eqXDN0zHyrKNnmQZiGUDnsLqS746VaEbp8GKV7QtHgQ985lzUFx5x69KmiJ87odMxV8O6XuU7B9zqEXu7UnGTyVUP9wvvcxQPqzQBErCcTXBv/cUI9YcR9w1tOpYfMD0vwSgAl9AmYq1U8Q1t5Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773847697; c=relaxed/simple;
	bh=6sDUse3Gsz/EvIu2exz7kbl0iyrErcAU5VbpCSGeG7c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cD9C4Y/riDxx1Rnh16veCahPUq2dHIOZuQPP7fnd8WV/o0z16SPDzyOL16kJBwKmO8ffqag1GmuCAqv9Jn05eWjonpc7qifmRqPe9lhUWXtNGmDyjEM8jGqoiGGdybJZR00wNFfxBzdLmFM9l0zRR3UnCIESCuD4/xerim2QC2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bU+amuEA; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b8d7f22d405so937176066b.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773847687; x=1774452487; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=02tyCAuDgIFu9biWUbxZXHp6fnkY15VCU6AYSHfqVA0=;
        b=bU+amuEA4Ei8i7/TX8Gvq+fuxUjV44AFO6Nod1uLo/U4VKZerHavgHTPvfnd2hw1V1
         mpoxYe6LSBdU5cVXxFdRg8tXtoY68OKBDmEVctybb6Ukshj7vmmErJ5j2jR1SDP7I74P
         qmcPVA/B1xnJQENNaSMY7A+jycNquDp52kas5tWuNlguAPe0xExC0F/NcK16/xmMZ1qg
         IvJn9Xl4Cax4UsNqQkTDrkDTXliuCHt4pCYqHqWYiyc4L4r/1jT9qAcfDvrCbEohqgwy
         W04B1W2Tjq1fYciTEMcAhPhMSRrG8fsYQsXJyBkxEDKjoXdbq9LZ2wSV5MV7swUfMJR0
         I17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773847687; x=1774452487;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=02tyCAuDgIFu9biWUbxZXHp6fnkY15VCU6AYSHfqVA0=;
        b=cZqinoLfhuZCr6edUe9aTYy7NdqbVXNQuyjMQyHlfWIFxyTToJmj7pr3BH+CSBeJt3
         N23X4OStNcknXJk0ssyjWKHDen/RuMu9A4E+hgTaotxM+/COuYDo5yCc8LScQ0pz3cxZ
         d3kDLarcN4J01CqO3l+TOZI1DI8J8IFLLskIJNr7FzSWu7uQJW8xHvjYC3oq4Ms1VtFn
         SeqONzckibl1uEG+128bRJJmvmHAXPn/3d0ONwhTL3hFVYgYQd2DB4Ik4H5+WpmPjn9M
         mMFGLLFM6x0cLR4vt5P7YWUsW3KSop2QOyKFveCQ27y9jlyEn+BscKeCAbRGqFFIk8eT
         /n4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVnLLRWGqSeBVhAT3PU56+nWwuzXZRH4MznGwrlA2yYqMsv4fdx8QFPgvaCFheHTfDAOY5Y5tw9Plpc@vger.kernel.org
X-Gm-Message-State: AOJu0Ywjg4eKyiQZhMzWIaxW+/c7b51jW1cTaX1ZUQ1DAi3VEmBuAL4o
	5dPY6W/YmZ1fixMv9Av152CMtHgDE3YNh4m8+A8om/Im84ruNzxhgvW28OkFn8H3NQw=
X-Gm-Gg: ATEYQzxqd6/LjxC6k8fcUysG2p/+n73XmRTLADUIgzkEJENb0LlZ/wVZXHMu7MKktAd
	CvOENldWauZlfuWC5HBL8+jeWEoYAABz72PBowzcvmtpAj2prhSWhORy9OsIxZt8ynxFjoPju+L
	3EdnDhPMKRoRltRXIcLCA0GfSdHtXruPM03ELbNAfIuPTjcV903ICiDEWTrFO7YJaJxQPIh82mS
	Jo1A+DJelJe7hBQmyuhK5JuhNinXdnyRdJhh0KinixaHinCxahLx8L/ullUhFd2kMQPRwZ4VPVU
	3ekqVfGnMeuROKBs2CIHCPjViACADwAAp45m1FatGXA/bLH0T8RV+03Ii1nK5XM0kXa7neOSiRA
	EoMBOizZkoqjN1p28FjDR1FahuFo6x/wWhRnimDE982VY6LjYQXOFYbXcFdWhLgMdmilYBxB3cq
	FaT/2Rk53gUXn4Yux/GG7oXDu0mrKUUf7+ynFlsPqhkBLkoLDrZDiGC1CWpIEqJtOPmsd39iJt7
	pJ8ea4gmLmlsqs=
X-Received: by 2002:a17:907:3e89:b0:b8e:a1ad:36d3 with SMTP id a640c23a62f3a-b97f4ac9dcamr257964866b.46.1773847685322;
        Wed, 18 Mar 2026 08:28:05 -0700 (PDT)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f173a3e3sm226989566b.61.2026.03.18.08.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:28:05 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 18 Mar 2026 15:27:55 +0000
Subject: [PATCH v8 10/10] pmdomain: samsung: implement domain-supply
 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260318-gs101-pd-v8-10-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277346-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:email,linaro.org:mid]
X-Rspamd-Queue-Id: 2D7F42BE9F9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Some power domains on Exynos are fed by a regulator rail and therefore
regulator control needs be implemented for Exynos power domains.

On Google gs101, HSI0 (USB) is one example of such a power domain.

While at it, add a to_exynos_pd() to avoid direct use of
container_of() in various additional places, and update existing code
to use it.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v8:
- add missing \n in some of the new log messages
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 53 +++++++++++++++++++++++++---
 1 file changed, 48 insertions(+), 5 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index d2e00f8310ce..3b5e84ca2dec 100644
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
@@ -291,6 +324,16 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	/* get the domain power supply if required */
+	pd->supply = devm_regulator_get_optional(dev, "domain");
+	if (IS_ERR(pd->supply)) {
+		if (PTR_ERR(pd->supply) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(pd->supply),
+					     "failed to get domain supply\n");
+
+		pd->supply = NULL;
+	}
+
 	/*
 	 * Some Samsung platforms with bootloaders turning on the splash-screen
 	 * and handing it over to the kernel, requires the power-domains to be

-- 
2.53.0.851.ga537e3e6e9-goog


