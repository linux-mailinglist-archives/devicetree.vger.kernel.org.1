Return-Path: <devicetree+bounces-225043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3953CBC9C24
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 17:25:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1249D4F269C
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 15:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E52082E7F1A;
	Thu,  9 Oct 2025 15:25:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nXLgTyXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC091F4161
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 15:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760023513; cv=none; b=cr2p9e2XFE7yw4AhsPTwpYpeGgAkqbjfW6NWjYdwV6a14gdqq/tpJNUI/1uHkt2NZwnhR8FrnGhJnl1f/Mw11dO2GAo5dwk/X7dw5sERZb4qZsi6+bbHVfkv0L3WP3Nk+Y7cSCVEUwaKQLZ3fUJAM9cVFxkksjNnDxWB9b6+YRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760023513; c=relaxed/simple;
	bh=i1nOHrUCe5k8EnZKJDt7L0OKYnEuaY/Gf2nz0HIUrG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=umMU2OCxn8H5y28tvzpIlQ2fp/RqOy3jPcUwim2rQApglfHemd7vZL+Ar8ZlDeT1iTB4iNSHx5EGFPNO0Aa2Kx3DiGpqrlCv+iKtV9Bn63ZTP7U2UYKSpdrYksqKoq0r0kIWnUmDZGYNp7A/JcO6VS7OMNOmzmB+mNGOxT2rN2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nXLgTyXI; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b50645ecfbbso226290466b.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760023508; x=1760628308; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BpnrETzk7C6oZhvz4jEn6YRTv70n/RyEUTvN5Rj5ca4=;
        b=nXLgTyXIaewA1g87ifGGL5YXxWWTnpc0gkldBuM7oj8eEF0hA7sAhJ2wlPeWcOo4+q
         kf9k2a/lLT+f9prpx7JYOoxQ/zhATJhzK0r6n11TfjZ5QZi8u3Il86s8oQtTsbGfUA09
         G6ECoZlWLvmSmiDWV6isPcwz0CQgtgfTkGDa4oNQYe5Xw1IusAWYUA5hf6+t/hxNJPHj
         cyxRPj1RySgnlZ0gEm6E6zD/w9DWie/kK9WK3JmSht2nOvW514Uz4wGhxBGeHLOvVpYc
         kjlli18ZUNt8xv07FP9t5WTdUECd2qn04P48WH2TTvJQOGs19xcUBvSdaP9BwhmNYVg7
         SzrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760023508; x=1760628308;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BpnrETzk7C6oZhvz4jEn6YRTv70n/RyEUTvN5Rj5ca4=;
        b=OaRPJbP0f3jgQy9Ys8EjiZzoDKcqj7sO5L9V6Mw9APFJOOGJRLrX4JrKj26RFkpyCu
         aWhmAIQaxr/wN47TcsDbFcrw3SOGAPEhEaz02hK9mry2cR9WZngfLZeZgmS5H05epGYE
         tdV3EhSXbWRip9jIhRN2LgBYtFpMxGLKtzC0Oct9G6Nx62SiWDvKMYXIC1RCAJi615XA
         Df6oxahnYxFcrvl2CJqOLcjSVYG5+1J8+2/avWhScqkeADWC+Iop1qW6UU0vJPQP0Y7L
         Gy2K2y2O8IIeIYqpxbrBGIS96ar8ltjBibK84VNYHPo0hPdxW5qPSM1xlLxOWoK1rcsv
         i5hg==
X-Forwarded-Encrypted: i=1; AJvYcCXrvIynZjnko/sE2I8IeNhwSzuBVGYEWibmZ1alusxCRZGViFTTfraaFnk7sImrXtBsDWlJe9UtsaA7@vger.kernel.org
X-Gm-Message-State: AOJu0YxQxC9MHEYzD6h9ZixJIdSgcHy14fU/35D+XURuu6+Ec6MyCbBb
	y9XWJgtjJTLAAYWP9+0Ny9eiiuHmTbCZfWqQBHoJR+ZEJSywRCN3FsZPTdH4vl0k37A=
X-Gm-Gg: ASbGncvcblWRhgaNronvfBRJctaDv0SOg0BSMYk5MmgYid8aODVX2U7S6LMKfuMa+/w
	eQqbWLsiHOVMvCJkADS6vjxjDanBGIl53+1Wk9dTQQCIJAuRTFfjK+DzKkJAUyifRPWaJdPQt8h
	NQlIxb+LEj2bRiiWHGJ4AJ6Uxi7eFbddje/81BKbLHGQlWcpuA1fin1d6nBzbtGhWgYGmWuRcFR
	GcjpoxC7kXf+QA/CKOQcwO1S9WfM3KceBiTg8S08HBpB+j1zOvOPgVMx3VZzG5Ag7a4SI9pOXoi
	m06Y/8C3Dr0d3c9lCYoZMQlEMUxFl4MmonWYD9NATtrr9JdHrLZN5G8aiTvh5EbjB5DD5TBnFlR
	jTE99qTv3o4cnSidvDhVExD0P6vwhDxtS0/R5oz+Ka7KrZRoepdD78WscPdfEERRKV3PXknz+o4
	HU1Xvpr6pp5+gqjh08uxEIndYXCxu4AFmhKwccFgIR0Cp6STmJ4h0=
X-Google-Smtp-Source: AGHT+IFvQJQZp5hIxcQ/kGfkBnVxpXqrxsrxpjhwZEJjbYHGciKRJL502yUl2gppViGVoCmsbV0c/w==
X-Received: by 2002:a17:907:1c15:b0:b40:e46e:3e0d with SMTP id a640c23a62f3a-b50abfd6af4mr953221766b.46.1760023508552;
        Thu, 09 Oct 2025 08:25:08 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b36fsm1908967566b.62.2025.10.09.08.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 08:25:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 09 Oct 2025 16:25:08 +0100
Subject: [PATCH v2 06/10] pmdomain: samsung: convert to
 regmap_read_poll_timeout()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251009-gs101-pd-v2-6-3f4a6db2af39@linaro.org>
References: <20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org>
In-Reply-To: <20251009-gs101-pd-v2-0-3f4a6db2af39@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
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
2.51.0.710.ga91ca5db03-goog


