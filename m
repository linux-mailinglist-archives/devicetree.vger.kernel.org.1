Return-Path: <devicetree+bounces-223897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F90BBEB3E
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9A133B0B23
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:44:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C2BF2DF154;
	Mon,  6 Oct 2025 16:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wFEHqKBd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A412DE71A
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769015; cv=none; b=ouU63I1LtHqFBQBdkGTQrpstYaDcClHFJrVo/4v7RxF0vKs586t5NbAI8UgH8C6LhV7OMRNl+kfnbvknUpOEuSNtxCvrO48DCaCfetUpN7PMoM8SRZpf9VH7MlQWX+vplr2ESym5wN/2uEHS0BvTTEYvmbJQ0GNKylFpR14Pmt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769015; c=relaxed/simple;
	bh=geIKgWF2ALweoM3YZgXz0Zorhb0jTxVcchCl54bV0Og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AyxiyBfG5LuKUieIngI4aHfeh3yUfJ4DrOUbVD++yQkAjIoIrQCHTrqE9EGsEVk5RnRSEV4XcPRuCAVCLt1eYtzkh55jjP2ZjADwvoQ6chtN878tM2zJiN/71W0lRsCvwRw3ss79NcEa3+JFidNk4TvJCKh4dy8pMdJgmHwGfig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wFEHqKBd; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-62ec5f750f7so8697590a12.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769011; x=1760373811; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TxwnlAP3n5M7cyJiouK6nx2qCN8Hw+Sbnl76f2YXigk=;
        b=wFEHqKBdBeQ2ei8jpQHWd7l6Tm/e7UCOh5/su4FIFADv9zrzduqO4UJQ3Cx5yX4K9A
         klcDvD6QWcrLTQGJvrIay1XWz3nJ4GKsC8xHIangXHXKcpmBFKD5ytX65mXaGD15yTl7
         +e0SoNE4SuBDUHin48IYvlwrti9QYXrGSrCHrxnvmKnObFuWB19st0oDeD9PQubGOLn0
         IdPdnvo+xS+qMhRu2/6vo2In9CFADENDaII3X2OjBvSvfPBzUD7uwv14MlS4Lwdi8/jX
         DZJ7EUbB4WuldhwMVvL+TkfCkh9YCxqBMXwhmOjU1+qcWKxhCogEPo/7K2tdyHG1ZHXf
         j5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769011; x=1760373811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TxwnlAP3n5M7cyJiouK6nx2qCN8Hw+Sbnl76f2YXigk=;
        b=rPOH4HZNenKBwOP5Ejj1Jh93ZDFXIByNaTx1oHWpdADjNqjbJgKWA8BG7CiKY+/Vsy
         m+V6N5Zl+eoU8nJKwY2jlu5nntn6VjvwuB4O62RtkhMDPGn9jpTfnO3PIo3A5hkcC6h5
         O26ZOcDQ1nUyhLlzHcWJNe5/OG9QlkoPxAja2H9UfuQacMyYNgdvdaNZjkY07ffIN5gX
         XejTUASrAruYFfVYOPUsBi0/JFXNy49z0IE9LmNWmbC7XXSlSenSUImFLvY4KXRN2XBs
         IQYD4Y4hQLukr0G10+nKbjtcCDkS3dgqR9PaA5StQiQLy0QrotQKxwMNBt4oekbl4fqB
         KHiw==
X-Forwarded-Encrypted: i=1; AJvYcCXz7598F2DSbpGHMGI2DbK8FuQJPX96oHYCr3jVZ7cioVsSfEsJwHxel9DOVzWCjky74jhzEXLenGyN@vger.kernel.org
X-Gm-Message-State: AOJu0YzistmQWSvgRgday1m67OUjUUvt8dgMyh6+9Nhb6cb+jSvIbcKj
	Keo0z2Mkpe1mYvoXrj/eKi8GdwufsgbR0KjjOHVZf6q3AJZXKkkx5Tc6EQfF1BWqQc8=
X-Gm-Gg: ASbGncsXt5CESwBdWjEomqqsFJFpmFkuVKO7A7QM7EmwIuYiy48RIRmqT6UAVSmNBtH
	YztLTxTJfYeVUsswyWgxF6y1qgvO7szBhMNK8nGobpRbixaPKN60DLzc6oG8T4+vTIeDYrlh0qU
	GWgvhTXWmQGE9rJwtBzU8pB88us0VsxsEhpbha4ksEhsdz0UOLlKj8VLph/L5iU3ODejknzzbV2
	4MUXEIlNFbnr301qzTkeiJR+nkS0dusNO06PCFrId0wwMvu20M5i2wyZEa+H495YoxpLWDqCtej
	xf+/N4n312rlmK0eL80QqjW6Um3QbMgmL5S0CcgLsl2Tt6FMM+CKrR5onN7z1+L8CLHta36g/AV
	rW42cRUbBAuKtvrUz4b8mVi8KCSZDUUSX5+8V5rQi3ERAEPNXKVuU54zMwOhvmhxTMsvtZ3VeAr
	xONltQGqfXh7FV6rb2UYYiECGDw/8BuMI8AauadFo5
X-Google-Smtp-Source: AGHT+IE6Qi3Ngqwo98RrZzSI9Sk/ybN3uGg/1PQQF+EI33WkQU1ToLbh1rIvJ4g1vAv9PRSJV5XHUQ==
X-Received: by 2002:a17:906:c108:b0:b45:66f6:6a17 with SMTP id a640c23a62f3a-b49c429cf5emr1502411466b.45.1759769011299;
        Mon, 06 Oct 2025 09:43:31 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:30 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 17:43:32 +0100
Subject: [PATCH 06/10] pmdomain: samsung: don't hardcode offset for
 registers to 0 and 4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251006-gs101-pd-v1-6-f0cb0c01ea7b@linaro.org>
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

On platforms such as Google gs101, direct mmio register access to the
PMU registers doesn't necessarily work and access must happen via a
(syscon) regmap created by the PMU driver instead.

When such a regmap is used it will cover the complete PMU memory region
rather than individual power domains. This means the register offsets
for the configuration and status registers will have to take the power
domain offsets into account, rather than unconditionally hardcoding 0
and 4 respectively.

Update the code to allow that.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/pmdomain/samsung/exynos-pm-domains.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdomain/samsung/exynos-pm-domains.c
index 431548ad9a7e40c0a77ac6672081b600c90ddd4e..638d286b57f716140b2401092415644a6805870e 100644
--- a/drivers/pmdomain/samsung/exynos-pm-domains.c
+++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
@@ -29,6 +29,8 @@ struct exynos_pm_domain {
 	struct regmap *regmap;
 	struct generic_pm_domain pd;
 	u32 local_pwr_cfg;
+	u32 configuration_reg;
+	u32 status_reg;
 };
 
 static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
@@ -41,11 +43,11 @@ static int exynos_pd_power(struct generic_pm_domain *domain, bool power_on)
 	pd = container_of(domain, struct exynos_pm_domain, pd);
 
 	pwr = power_on ? pd->local_pwr_cfg : 0;
-	err = regmap_write(pd->regmap, 0, pwr);
+	err = regmap_write(pd->regmap, pd->configuration_reg, pwr);
 	if (err)
 		return err;
 
-	err = regmap_read_poll_timeout(pd->regmap, 0x4, val,
+	err = regmap_read_poll_timeout(pd->regmap, pd->status_reg, val,
 				       (val & pd->local_pwr_cfg) == pwr,
 				       100, 1 * USEC_PER_MSEC);
 	if (err)
@@ -146,8 +148,10 @@ static int exynos_pd_probe(struct platform_device *pdev)
 	pd->pd.power_off = exynos_pd_power_off;
 	pd->pd.power_on = exynos_pd_power_on;
 	pd->local_pwr_cfg = pm_domain_cfg->local_pwr_cfg;
+	pd->configuration_reg += 0;
+	pd->status_reg += 4;
 
-	ret = regmap_read(pd->regmap, 0x4, &val);
+	ret = regmap_read(pd->regmap, pd->status_reg, &val);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to read status");
 

-- 
2.51.0.618.g983fd99d29-goog


