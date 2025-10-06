Return-Path: <devicetree+bounces-223898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BE162BBEB41
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A14518958E3
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3002DF156;
	Mon,  6 Oct 2025 16:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LmDDOGB7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E28962DE6F7
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769016; cv=none; b=Ha//TflQq5BneDkhdURR/xx9JeJIiyZFV+XFLrwdB7MYyKbm3DQlJ2WurZwGWbznIs5Su8WzK7Ox/1eoDRkYwtZH8RsWE3Rq4qTUEafpj5L6B/XgNPrzFs7bqioXDwu4xqSRI+uqq9w61oLLQPAeCOSh7l7W98gc1vPeKF4ctcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769016; c=relaxed/simple;
	bh=F1uL+g8fHIdluDJ17bb7cBAahVnwEqXe7c0YoRzXMUc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Lfw4cMp6SbGXWXONaIsOPnlvey6cMOnaB+5OHJdHfViFAdjehtXRnCBpxlUJLRnNzrvkWLm1uK0IpEy9OMhRnPDNQuo/3ivfGDxAsud1CPH16KZNQMiHOiIx+KaxdspTcpqJTxG2RmNoQaDFdcAYDeQlC8IfIpiAiFRmatK3Mik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LmDDOGB7; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b4539dddd99so707181466b.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769011; x=1760373811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6WkKVU8kwH4FiIJkp0DFrv47tH1tikibDwgyehQFExE=;
        b=LmDDOGB7GKg+D5zNzk161J9w9e0PqNDyaEI9HNsDaljwYGSIu6cV4nHwu98Ln2/Z3w
         XG4+PxnxnexQ77blutt7xbk22BBL0I/8Z1CuUVfPODz8W8UF1VLd3sIZWNN4AAERbwFL
         qbozblaHYi/bVMEOz+rSlHolH/zKLgCsczCHpTDU6amCHbFw1UUeaZ8QPxPCrpw6zuAy
         xdTqIdQJJtsubFhcFt6cV4PwNn+RUdJyNqGUYUL2iPdLXEC8wPYQK50cKd2ctxtgwzXn
         IaEYNq2Oz8j06aKQDmRL81I3ia17NUgOhPQLcORYjj/9c3/8P7Au5X7wPGsHpvM9vMtC
         ldNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769011; x=1760373811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6WkKVU8kwH4FiIJkp0DFrv47tH1tikibDwgyehQFExE=;
        b=SZ5l8QsDWdE1p2cpRu4OG2qRWSZSvN0gE3e0yDuUbiqEn5IolEnj3mmPX1x+vAeCMH
         2/M2U1sKMUD4Dt00QezkMjq+pTcV3GagEGu2QCYC482miIiILZ34pVlq8B3/VwvmHc+Y
         /0FVwY3RL88WLN0pGaE8igjL1LzxeX5+41iWW3ELLgd8WDBiEhpvGPL0b1KMekk5nSUr
         Lc789ZWaTJPwN/DFdTqnAlr6Dive4wydspDZv/9EHxb5NVzplGtcTbfMCB6P1wj9eiVg
         q2pbIz6efog0pTvkJo4mnQMYYMOJqkt/SW2enh97bZpNxSwJnghTh3X2TpUYTO10Hq2t
         KzUw==
X-Forwarded-Encrypted: i=1; AJvYcCX+r+wsilVdvqzdE6MIBD+BFJ9mCKUATl+G6tJOvOEPfK4t7csi2mswzAz/nTFC1rF7hRuZuQAGoacA@vger.kernel.org
X-Gm-Message-State: AOJu0YwTXCYHsVT3BvfKDWXDnW/Jl4ugN/KMVLtAWpyajr78+NQ1nwTL
	7/YETItrQ6iYcSGg6GnpyJxbFt+pV1VkmMWdt/up9xwYFafMKoEedjn9kNuUTtEo6E4=
X-Gm-Gg: ASbGnctUOdGZi0VUkMJfuel23xPm5eQYJZNXFM+gnlceeGiq4htqmC9Y58HTIBJYIFu
	HkDOHDMG4ePd8i/bsrAj9SefFzMVGzgtIakfvnbjg3EqgpONOPxgjp6GFSfUC0owcpaYZ+MuVAf
	GljlvALDfTlpmHYyq9izWdEwZZW8ezEeM5DnH/hIKoy1ITwlt2lT6ZR+N+sYpj/CaftB+hiByb2
	Fmjv9v3RWL3Vmz2QW4EkKf7FyT/gkLQ2TvtiTYmS01w2ax2vZbFuvprSaXFrPfdc8v6eplwxY6C
	kQw4xfRHHG/LOm5JUxcBCzJPbsaJDFq+TlBRKEP3kDrzKYp3bSmZXWn1qwzPdcrTy2nZBbkJz6r
	dYodjVvozXA4onAHGWXcU93GHRJ0t89evBevjVWffQBZBIOScf8/fV2L+O25ozMTtT1WQkohvHr
	SFc9Opr1/MMDMz+J3yNVfd/7EO5h6bm7wlq9OvH1Y1sNbMxUUrBZc=
X-Google-Smtp-Source: AGHT+IEG8W4Fgu15EAWixutgpzICMiJaZUNK8COlNrHcpfllaPfZ5W35myiVDFya7fewpU3c0gC6vw==
X-Received: by 2002:a17:907:2da6:b0:b2b:59b5:ae38 with SMTP id a640c23a62f3a-b49c2761ad2mr1799899866b.40.1759769010845;
        Mon, 06 Oct 2025 09:43:30 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:30 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 17:43:31 +0100
Subject: [PATCH 05/10] pmdomain: samsung: convert to
 regmap_read_poll_timeout()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251006-gs101-pd-v1-5-f0cb0c01ea7b@linaro.org>
References: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
In-Reply-To: <20251006-gs101-pd-v1-0-f0cb0c01ea7b@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Replace the open-coded PD status polling with
regmap_read_poll_timeout(). This change simplifies the code without
altering functionality.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 29 ++++++++--------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 383126245811cb8e4dbae3b99ced3f06d3093f35..431548ad9a7e40c0a77ac6672081b600c90ddd4e 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -13,7 +13,6 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/pm_domain.h>
-#include <linux/delay.h>
 #include <linux/of.h>
 #include <linux/pm_runtime.h>
 #include <linux/regmap.h>
@@ -35,7 +34,8 @@ struct exynos_pm_domain {
 static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 {
 	struct exynos_pm_domain *pd;
-	u32 timeout, pwr;
+	unsigned int val;
+	u32 pwr;
 	int err;
 
 	pd = container_of(domain, struct exynos_pm_domain, pd);
@@ -45,25 +45,12 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	if (err)
 		return err;
 
-	/* Wait max 1ms */
-	timeout = 10;
-	while (timeout-- > 0) {
-		unsigned int val;
-
-		err = regmap_read(pd->regmap, 0x4, &val);
-		if (err || ((val & pd->local_pwr_cfg) != pwr)) {
-			cpu_relax();
-			usleep_range(80, 100);
-			continue;
-		}
-
-		return 0;
-	}
-
-	if (!err)
-		err = -ETIMEDOUT;
-	pr_err("Power domain %s %sable failed: %d\n", domain->name,
-	       power_on ? "en" : "dis", err);
+	err = regmap_read_poll_timeout(pd->regmap, 0x4, val,
+				       (val & pd->local_pwr_cfg) == pwr,
+				       100, 1 * USEC_PER_MSEC);
+	if (err)
+		pr_err("Power domain %s %sable failed: %d (%#.2x)\n",
+		       domain->name, power_on ? "en" : "dis", err, val);
 
 	return err;
 }

-- 
2.51.0.618.g983fd99d29-goog


