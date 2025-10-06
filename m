Return-Path: <devicetree+bounces-223901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AB2BBEB65
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 665AE4EF6D8
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18B9F2DFF04;
	Mon,  6 Oct 2025 16:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mYfm8Zk0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121572DF120
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769018; cv=none; b=hZ/SKT+TN0fPEEockVvcIdnYfNLkfTvbk92WIV/q9X8HenXc5+ZwSA2ejrwxshAr7DAf9NocFwqtrb/+jYWUXPFfC0dE2ARqaSnsTboxkvwrh3A8rauvuofPkeGPCvJVJYdzsrFbvTD4gVjIK1PPG1cx1lrkQOqEcPhPTWjCMB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769018; c=relaxed/simple;
	bh=dNOLUQevSwifZ6dPtrx27CYPt5ZcaJvQ++oKkFXtwgw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eMUuOCWxv3WSu+o3llKY7At/eGtPZNIavaniAUsim5tos1yWQDEHJnwa1Q5Jep7/c5LhtSaEw0GERS7nmLXMCYintQ+hLgDMGbhqIx0X1EnMinf8Pa9Ac42SvaEma45nCyTq4T/XpRRc40dO3DLu/eDJGhPlRVsx3pitjts4LSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mYfm8Zk0; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so960703766b.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769013; x=1760373813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MVFnz052bxUssLjPn/irFYLe8FvTO4x2oRG7kChOyXg=;
        b=mYfm8Zk0HBfFZ6+50Vg/Q77S3tdE2BDbSixWHnwLK3nvtF9zTo4+DfA1uDtSMvsCJe
         sd4Yajywpx4dAvdETu4vxIJV7rHBoJMYbJlqJuToVCeb9uFCIRrQQVGfH1K6ylgU9SCq
         9UhwPTLVEjCV3WP46hbWa5PTQseCbn1tnFtbfoaEjQhBxY6EStx59k9zNoGXjgxf3eh7
         iS0VLUdAt1uzHc0wNP7qgG/rVZBJqIg1uBu5HmXzOHXR+4TiXTzYhvUT6BuC7i+5Wx2y
         ZUXazbEO3YbfVtfcq/jwdrvfy357294hu4aYPrLTIjlfspiVgNQ/kXKGw8ZU13rzeg8A
         1nCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769013; x=1760373813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MVFnz052bxUssLjPn/irFYLe8FvTO4x2oRG7kChOyXg=;
        b=jdrD5X6KQ3z+onBiZRg+CLR56hdBQf1CXng7u5G7igvHVh2ZFaQkiHu+CzDoG8k5bf
         659gdIRx3ZKAZ5E+FIC8g/0aqEgpKSrR32/r/VnD5JavV2C9WdFrMGNyjXrC4KTJZ178
         oMi0+8jPt6h/gONBd2GbIGJ3ijanOZf7w5sZueQmXMc/cgv7ddVnSW9yFbxZ8OSt5+mz
         xh+gKp/HjhPcKyLckXvrAW6hB0cSAKy23FVF1MxV+LaNf0AgGs/O7uRXR2RWZ1kl28jS
         dTGeusHNgXE+/AqP+D89iIYCtcUGQ51gHqMaMOT8xDC3/yb/wld0G6ADF7yWgbO1aNoX
         JXfA==
X-Forwarded-Encrypted: i=1; AJvYcCUhRwUYDeUjeyrd5tczjrRncEcg4ZsG98OKu/DD5nYWbn+Q3w4NpXdXQOLyIBVH632i75QUjZbYNmoo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8IPU1qmFgT6a9BCIEveETijsqlcq+dE6pyKwGD5ZiFfj4dKGu
	nnatXZWOfUCYwKO5tZs8kmEo+c/TLbaAdw4lpSpP0WzlfxxM63fOfXc8dvITE44m2+A=
X-Gm-Gg: ASbGnctCLXL/k30VD2oRXG0AHQOwoQsdqiZXXIFOsN0V7xWENwl0bw3UZooHeM66dG3
	LWlf+4fvYPHQRgB+jzEP5cUlNvufrpMzYuOmSG8vrrRgWQVMyDOlY1lIrnrJXRrDKSAMIERU4zc
	otaUYqgRxSTF2UjaJLOG6kNDoeOqxa+QhzVAh1ASxh4R/v41HqpsXfT9jf65fEGdhyfka6/A5xE
	vaXOHTGHd0x0rt42tNAVDsEn/t6Mc9G5TWiGrgl3RjEAzLaLXuJ39Jyvgj5QBNjNEUqKBBK92ht
	h974eLBlr+nXO35hKmSLD/70LKB+XSb5dyViXCEIJP7+PbB1TPwgmNL7O79Q9vjlJLcCYLGoci4
	LK3iOQNqAlO5K3/ciKMLFft4AeN/SgOdjqLAkUVxg+7fXv2CqP1c2WYtmWCl6/HpvvKVR5euZyS
	1rCj0WynYZC3P4RCTmReq+JhHEqTmMCdrJiyApigHqsgP9mgSMFTM=
X-Google-Smtp-Source: AGHT+IFsGub9LAc6/mBjGGGSdlVFrrBBzCQQUOCqnEH/i741mIaqZ3IINkZ5oqZ8jsa69BC1Q2QS0Q==
X-Received: by 2002:a17:907:3d9f:b0:b3e:b226:5bba with SMTP id a640c23a62f3a-b49c23431famr1629117766b.15.1759769012661;
        Mon, 06 Oct 2025 09:43:32 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:32 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 17:43:35 +0100
Subject: [PATCH 09/10] pmdomain: samsung: use dev_err() instead of pr_err()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251006-gs101-pd-v1-9-f0cb0c01ea7b@linaro.org>
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

dev_err() gives us more consistent error messages, which include the
device. Switch to using dev_err().

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index c1b5830b2ad3e8b272dcc8ebc364be49aa7fda7c..06e1b0eaca18205a549c8e8136ee15279eb3089d 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -29,6 +29,7 @@ struct exynos_pm_domain_config {
  */
 struct exynos_pm_domain {
 	struct regmap *regmap;
+	struct device *dev;
 	struct generic_pm_domain pd;
 	u32 local_pwr_cfg;
 	u32 configuration_reg;
@@ -53,8 +54,9 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 				       (val & pd->local_pwr_cfg) == pwr,
 				       100, 1 * USEC_PER_MSEC);
 	if (err)
-		pr_err("Power domain %s %sable failed: %d (%#.2x)\n",
-		       domain->name, power_on ? "en" : "dis", err, val);
+		dev_err(pd->dev,
+			"Power domain %s %sable failed: %d (%#.2x)\n",
+			domain->name, power_on ? "en" : "dis", err, val);
 
 	return err;
 }
@@ -116,6 +118,8 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	if (!pd)
 		return -ENOMEM;
 
+	pd->dev = dev;
+
 	pd->pd.name = exynos_get_domain_name(dev, np);
 	if (!pd->pd.name)
 		return -ENOMEM;

-- 
2.51.0.618.g983fd99d29-goog


