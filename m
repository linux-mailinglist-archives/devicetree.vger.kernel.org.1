Return-Path: <devicetree+bounces-227768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8C6BE465A
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:59:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 53819359F25
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:59:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDA23570DA;
	Thu, 16 Oct 2025 15:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HIY0wBqE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB9F3570B6
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760630332; cv=none; b=ZSmF2tvNx5knGkvMxplmzXI7jVBqpXFMUXXxOTlJnJAXbONgeg++5xjMDYpMCBoL/tLFCd0VP1qtFt2Ro0jx0BjB1ZxssnZ7xlIQ/JQuwl2vqhFS90pTGOT0CuKSFISCwULjIbdCpKAom27rFWWF0sDTVUU1CykhdQ7VJ2MNWz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760630332; c=relaxed/simple;
	bh=EEsquKkEeBg70sExu6NBhMPgtI1d6LaAxzWYM2RtBsM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mF3q4Hh8n/MjOsHyE0vBB4f5qLrk+XTjCiscFnvShjYxlcp3ElwDNaS75z9QfaTdZ1cQtOJPx0uR5B3w0ekIZhWSrGw5Nlx1SjxyHlmqCdjKDyXHcg20RlSdWZLesX8lDaS7mWUN01U7rjnNOOOCDw91iT8r0OWrq5RZfLf7r6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HIY0wBqE; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b2e0513433bso131061366b.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760630329; x=1761235129; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fsw3nGMrSykhH7OS6v0fNa6J+UTT3lDdTIT4s5cDl2M=;
        b=HIY0wBqEwwRpQUgPqCzQh4gHbZg4aYsoFSsZkUzYjWH04UnkSLfywIWMsLYmDesh5e
         8xbx7RQFO+WVuQlEqnRRFQPahOPDdWlMbG6yi4IB0D9ZvK3pa+3uWxSRT67N6lg+/jud
         ypfj2ydOIjT52WdlFxb/NpRy4g9214Xo+Hvo7c9m9MurHMrJLz52Fl272vo2lkJ4psgO
         g4RGBg16rotTu9xXByMMn7W7fKl2uZpaFHdYOPsdJEaDL1t3AkDlpXHAxZnehzqh4Ap4
         9WxwnURT2q6z77rn17Dgjvp8t4XgSfgMahcGz1mUSdbej1nCIjkiWghii6m1SXWp7O9Y
         sk8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760630329; x=1761235129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fsw3nGMrSykhH7OS6v0fNa6J+UTT3lDdTIT4s5cDl2M=;
        b=xAgolhZVh67jv1ye6hKt0vKYP4sjDIQd9UFea7FhCvua9rZpIClb7UbOdPd/mVJFjA
         5KQvtHTpRusZ9t9ybIlOHdsUECxGtVXD70PygtplM40AVFcb8gsdgf2OVVDP61gsRzdi
         14G4J0ycbkETGsJRnuCmA8caV3NUbkHVLsq7ptGW+HSdIotVbc2s2K24gbJkXBcjhAzC
         Eb/7md3jbzwlT1ifa2+/MFjdjmJIkJmFuAllWkKsFPpziRiVgS0JB8o3qw0okDd0YyjF
         GCEQASP3PpaYfweRZI4KMYSm5lwM/1hIzTp0OtJrOwpvBVJSppb3zH+02TM4DjpBAa5E
         1yMA==
X-Forwarded-Encrypted: i=1; AJvYcCX8zaAKQD/yEtOMzn9CEbeR0GN48lnDMbKNoohOEbSukBL4k1p8WMtHkohlPAgOg2mntrj57XCkGUt0@vger.kernel.org
X-Gm-Message-State: AOJu0YwR0uIppPX3U5L1h/Bqu0I/Msp2FHslwR2uifSwpEgZBDJGDjMH
	3F8UHT9nWnSEjcWcFXCp2cFUjQdoX+oHRP1yHFFTXPZ/S+OZltphQqdkmCq6EQJGgEI=
X-Gm-Gg: ASbGncu7eTvu5S22GZH4qxu9nQoEnQkzHiv8dRy9UHNmhLf76W/pYrrfj9xQxeVAwSO
	e4U7z2Kg5B6MN0BV+j5yK9hO0chtFhgyutbutLY+wQ2r6wvbjlyYXBsCQhcIaOqpGEkG8Tq6UlR
	OGI9IgJfLwiqBM/BwTnMCCcH9FkZ+mfZTYZ3xESPIVW2va9sxGCAFytojZh6buxq/k2S7fbt4pS
	/ciO3fKBOQaUy7RYOUfhFHe31k3SlEUO8iSKWLeHkwDJMzi/eobopOFIflYJqtPG25swzbjoJ2H
	B1J17/0A+9w3SFI322Gr0lXyocV6q7IeEVBiyYcEmSw/9Ca7+dt2hsL1/ySwVF1AWadpdYIfJB7
	vVpIgknRGYWmc095FFSaz7skf3pdJBInv5gtPFYZswuPp1Z0WE1RisysZyJt9uHX/TC0j7m0zFN
	nrYu4EZT2KQZqRuBGHOzOFp10xrmbrwUHgWO6Q/IBApdVXeq+qkLHWLdER5Gm2oF1wX/GaZmw=
X-Google-Smtp-Source: AGHT+IGMnDfjfOzAoSs5yqEhzRvyTEgvB4V8vlEt+WcTbrwh6jjeesT23Hol4E5oowOHUJe3KnWaFA==
X-Received: by 2002:a17:907:1b21:b0:b3f:c562:fae9 with SMTP id a640c23a62f3a-b6475703a96mr48316366b.53.1760630325277;
        Thu, 16 Oct 2025 08:58:45 -0700 (PDT)
Received: from puffmais2.c.googlers.com (254.48.34.34.bc.googleusercontent.com. [34.34.48.254])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5ccccb4811sm549021666b.56.2025.10.16.08.58.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 08:58:44 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 16 Oct 2025 16:58:37 +0100
Subject: [PATCH v3 04/10] pmdomain: samsung: plug potential memleak during
 probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251016-gs101-pd-v3-4-7b30797396e7@linaro.org>
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
In-Reply-To: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org>
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
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

of_genpd_add_provider_simple() could fail, in which case this code
leaks the domain name, pd->pd.name.

Use devm_kstrdup_const() to plug this leak. As a side-effect, we can
simplify existing error handling.

Fixes: c09a3e6c97f0 ("soc: samsung: pm_domains: Convert to regular platform driver")
Cc: stable@vger.kernel.org
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2:
mark as fix, as this isn't a pure simplification
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 5d478bb37ad68afc7aed7c6ae19b5fefc94a9035..f53e1bd2479807988f969774b4b7b4c5739c1aba 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -92,13 +92,14 @@ static const struct of_device_id exynos_pm_domain_of_match[] = {
 	{ },
 };
 
-static const char *exynos_get_domain_name(struct device_node *node)
+static const char *exynos_get_domain_name(struct device *dev,
+					  struct device_node *node)
 {
 	const char *name;
 
 	if (of_property_read_string(node, "label", &name) < 0)
 		name = kbasename(node->full_name);
-	return kstrdup_const(name, GFP_KERNEL);
+	return devm_kstrdup_const(dev, name, GFP_KERNEL);
 }
 
 static int exynos_pd_probe(struct platform_device *pdev)
@@ -115,15 +116,13 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (!pd)
 		return -ENOMEM;
 
-	pd->pd.name = exynos_get_domain_name(np);
+	pd->pd.name = exynos_get_domain_name(dev, np);
 	if (!pd->pd.name)
 		return -ENOMEM;
 
 	pd->base = of_iomap(np, 0);
-	if (!pd->base) {
-		kfree_const(pd->pd.name);
+	if (!pd->base)
 		return -ENODEV;
-	}
 
 	pd->pd.power_off = exynos_pd_power_off;
 	pd->pd.power_on = exynos_pd_power_on;

-- 
2.51.0.788.g6d19910ace-goog


