Return-Path: <devicetree+bounces-223899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 238FBBBEB4D
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:44:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23BCE3AC174
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:44:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42FAD2DF6EA;
	Mon,  6 Oct 2025 16:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bDDj6WTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA362DEA67
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769017; cv=none; b=brbt1tCvEWbZX9uiLQCM1ssbcQge486H5hjLtUMfspO8YBMuUecg4NvhoymvVtBbEZBWTRbPPefXjbbdCT9vS7DYydwg/eiDH9rIHz79mVjHE7RBc7zYU0/tk+lyqkvp4ft1yz39R9WjvOAttMZYspEaF8NbF6Xeo1vPig8WIaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769017; c=relaxed/simple;
	bh=lQFRfvIZm2QIrTnGZIlapJJgk3a/yMVJrj+Qv49vZDg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RY6vbVEpcM001OkqJtdtM0xBSONzgyI0N6b7OUxmakWZ6MlcKdVl5neQ3QgZw63rGpo7sqOaMrdksPrrMZAIGG6vFJ2nHtZHeDUa48LlRmMRUDhI7j5uIlqhp7hlRorJp4mbZ6zh+MJX6R6JYyKSSOWzVtaAAA45dfu1akghCLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bDDj6WTE; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b00a9989633so671101266b.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769012; x=1760373812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0ZdGtbeD0twmfxFXcR2wb4AL4tjk6OMYa00kx/YCo4=;
        b=bDDj6WTEUFAoTklqJxVyDFsSrH4c+YN3JvKDUER3xlvL5UmJaTyfGwZX8NDgkpsiWx
         4327LWkeZOszgVNWFiriEPxcmMp/vPygim+aDK/yxc+IJjy/2B5T068WC6CtcGZWk6Nh
         Wou9zwNO5IFbdkTMzJN47xuKCwM+RXub76teAKKn+SJrvtUud7TRqiJhcFgJaEkvSqQ7
         zKLiVl0jRoNTUuLU7N8MHhrEE0Og6VEDAVAmNY7GifQiFCVVZCMjz4VvCbxqNGwKtj/i
         l2RWah3LIWmC27du6gLgY5I1ttGf0SU1QUtNZg9OTxNllQyehnDER81MWs5kV4Ao5gwU
         T5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769012; x=1760373812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I0ZdGtbeD0twmfxFXcR2wb4AL4tjk6OMYa00kx/YCo4=;
        b=U3g6S+F3UU4kb96h5sUFfz4nm/DY3N/Jm8vozV6bGRHdoqILcAGJvcUMjAEyHL+6yk
         Gq/DEvbIt+iy0l2edQxGw1cmxQ3ZqkvEoWVx1USzuWLA0gYJDPSCwLbfQZVO9ENYby9O
         SOTeGLefUGQXq5Krs+6T8/Pa/NemsTlNWoTCDGATF6SultZsa7ltrWUcuL9Wx6BYphWC
         ixmi2vJ1q5LXfqLBEGDr4eGELcv791vhT0wmgKSeMzJReFGgVM6t0qH56rhtwyVk+GOE
         wmL/sB4bCYbP4P2rKAGI7Gu6DnI2uQWSNkcacRp3zIxWSy9yXvP/5Qj7yMyn+b1tQgmv
         pI8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWFyhw4yd2fdL1+8IMo0Yrr9LdsN+aUfVqv+ZhZ8ZzJ3sSx3qmUnrcexD/Pz+N8dLVpxHoRvf7Uj1o2@vger.kernel.org
X-Gm-Message-State: AOJu0YwAIk5aC6sH90CLJXO06b9TG2fU7MQpSPb92r41ofZaSjDJxusP
	VwZZ68Yocb3CfRQ6aHnJp/j5IIp4Vdty9pLDHNAJl1AnBAtJ+qSe8S/NoJBwcYLD8+o=
X-Gm-Gg: ASbGncuH1IQxUtUBP0CZIwrSNdktKqGtK4yAeP5A6HLMweWzjALvkWxki6h6XLnuASI
	/l6YfX16rEDLakT2FHSA/o64tHJaomLBHDW5lHrEx2pVrZuYnPKtJka2gK1QfUAo1AetBIN3cf0
	0dfod3kFbrmWe1FJpWe3GLl51biImXOcWJru53X7v4U6y3X8dJvU1FAiBTKIkox+59VzTcU6UTg
	1tbdVzAY3X9GbmOizKE2qhczkaJ9D03Jp0DzKhshrRS4IQfNq5VKchUeYSLuN/42Z0mHEHgV1aJ
	+onfmmceqraKmEcUvNZNfs80trtFoUoc1ze+zTyR7cXI6Sz0W4WV1Rf6oOs16IBJW/MLfWzI+LD
	vuqDCOe/9T1Ad8LHPMTQ3cupvHZ+3mOQP2y9MFgoWCKdF60OKAUzJkXfcwhUBhhZGIiTwdBIoxI
	ASHRPeAdcrXkGEd17n2evLw0KcJglw2rshLSRFhvNgCqajK+9o3rw=
X-Google-Smtp-Source: AGHT+IEYfOZF1TQm9DGlW5kpM0S9/tKDSRvPCFa/7dsa/gaWYvJTuZDOfU68MoruhNwe6zCqc77lsg==
X-Received: by 2002:a17:907:a710:b0:b27:edf1:f638 with SMTP id a640c23a62f3a-b4f43106a07mr28397966b.23.1759769011758;
        Mon, 06 Oct 2025 09:43:31 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:31 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 17:43:33 +0100
Subject: [PATCH 07/10] pmdomain: samsung: selectively handle enforced
 sync_state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251006-gs101-pd-v1-7-f0cb0c01ea7b@linaro.org>
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

Unconditionally calling of_genpd_sync_state() causes issues on
platforms with child domains as the parent domain will be turned off
before the child domain was even registered during boot.

This in particular is an issue for the upcoming Google gs101 support -
all operations on child domains registered after the parent domain
misbehave.

Add a flag to the probe data to be able to sync_state conditionally
only, and enable that flag on the two platforms currently supported by
this driver.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 638d286b57f716140b2401092415644a6805870e..5a87802cff394945cb0202d08f2cf6bcbbcc774d 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -20,6 +20,7 @@
 struct exynos_pm_domain_config {
 	/* Value for LOCAL_PWR_CFG and STATUS fields for each domain */
 	u32 local_pwr_cfg;
+	unsigned int need_early_sync_state:1;
 };
 
 /*
@@ -69,10 +70,12 @@ static int exynos_pd_power_off(struct generic_pm_domain *domain)
 
 static const struct exynos_pm_domain_config exynos4210_cfg = {
 	.local_pwr_cfg		= 0x7,
+	.need_early_sync_state	= true,
 };
 
 static const struct exynos_pm_domain_config exynos5433_cfg = {
 	.local_pwr_cfg		= 0xf,
+	.need_early_sync_state	= true,
 };
 
 static const struct of_device_id exynos_pm_domain_of_match[] = {
@@ -179,7 +182,7 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	 * reset during boot. As a temporary hack to manage this, let's enforce
 	 * a sync_state.
 	 */
-	if (!ret)
+	if (pm_domain_cfg->need_early_sync_state && !ret)
 		of_genpd_sync_state(np);
 
 	pm_runtime_enable(dev);

-- 
2.51.0.618.g983fd99d29-goog


