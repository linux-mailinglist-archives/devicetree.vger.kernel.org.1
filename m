Return-Path: <devicetree+bounces-223896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D43BBBEB38
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 18:44:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A8AB834A59B
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 16:44:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2F112DE6F4;
	Mon,  6 Oct 2025 16:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="foZG/4ac"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31382DE70D
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 16:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759769015; cv=none; b=G1DXHPnkNaQA8YYjy8oxlteuW2iU8mWxsDh458QwTO4ikPeKYLVZkUJC7XR+ovp42QXHvD8siNkvusUqNxO98cuUN9Pdowam4XYTT8DxAKIvN7f+pwQFlAZ308xmjQLNF5UnIY5H+Mp/MfajYNMLCFl4erExdjz4a3L72gRwPaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759769015; c=relaxed/simple;
	bh=N12UH+jph8ILpPyH5wUhl5Cae7bjK4ZW+ZRkQnlfLXE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XEjwYgtuGzEFy03NuUxu6VWoDrq1C2A+20/BOPCbzTrz0Ix2/MKNUW6I27/8EbY0Ln2t3CU5OaA8Mfio8g2T+W07ksGJbxV97C7V1O1qcx7IQzeoQ+4o2Ab/L84zDy8gICCEBGSq9okwoQkkdRYJl05lp0U2ZP0IBcjn0Hec77o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=foZG/4ac; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-62ecd3c21d3so9564165a12.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759769010; x=1760373810; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CpB7AuKalXwpl/RbLMZ5nDUUEYNNft2mby5//un8yy4=;
        b=foZG/4acFSo8tjII9p83nnmmHQ43/8rHlxdnafsnLeeug5KYhYCvCqZUCABT9iXfMu
         JHRolp8ppzrvtzR2Ud0X+srdJu9wFn5jlrC8MLiyU9DuOeD5maxI0NSMzVA048Qgmttg
         yhVnH00guNl0Mkz5J8WOLf2obxoAVZbF984zkWWChWOODaZNhlpJrptlmeeb45fRdRDb
         W9uNAolvkrBs8o8IeS1rvXQBKX1Y14rD4Bzmgk2Tr6iDtJ2++8+ypeyjAJNrbvA69lz7
         tD3rgI3CU7my2narx1ba6OIshr5+yK8CUss28jaf1pus1us7pqaculR/yjVhbwONbZIC
         PCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759769010; x=1760373810;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CpB7AuKalXwpl/RbLMZ5nDUUEYNNft2mby5//un8yy4=;
        b=e8c8TnNtQOnu73BRAIgd0MFFcpz7RdBiQjslXZ5lL6jZvLt2ZpRaf2whvW6dm2pzDv
         A5EX8CNEvc37B5kW6jMI6S+anZBstgihLlXKimcwix90h6chykrNC5PrsoCYuYWv3+XT
         pcHdG0pzscvqXE6eQlYg0NwBy5Jf/Z/BFhcH2eGUBZHV2jJA92cdRHyb28SKYAazd6GB
         HSpuDyDRDdJwC0CCxMCEkH+nebpcQ2DIHqxnzUG23nt/DohkB6MigzSsu7rPZvC6O1WA
         e3opvOXFE8FKc7LcFrUFnKcKeINaMQ9sT19qQwKJ4xDF2mubrquxjtuAyzhrNJrUWQvt
         btXw==
X-Forwarded-Encrypted: i=1; AJvYcCXU8oAUYF6Z+vqUppoHnt+twpDqf+MJWDcf5TnvuXx6g+S3ajkQ4jzDkZJ+niT3OQkp6AWSqjyaWceI@vger.kernel.org
X-Gm-Message-State: AOJu0YzSoUGHYdEx+F5I2K0YTm+C2acP63ex4APvqTy6NCHaAmHVFGHw
	JEHIi5UXyZK+yx4/DTQSB46wMdq2HMj/LO1RdgVWmV5ltz0G0KUa/+jUP/kttMHXPVY=
X-Gm-Gg: ASbGncu9N3PYqPx5YE0uGATAMoKB59bml6WJDT2e3ZNfQDC4y9iwBsFbrKIqYRSLwuW
	6i0yVaJXHAjLUtCY6KSNzaXseZ3hV3ZEWGomgVGpudjSXAduizEBkP5mHDD20073rMk2djbzoRz
	hTev8D2FsQPQ+R1QwjWvjTe3CxnzA3uGzNm10drmrZC9Osbbo9lee+hiZKHK/dyFU7j3k462Hxp
	Z3oR2Gq68OobEJRoyZqlR5t9ipCmkL39NTtfQB/2C1WLVzsPU7RNNrBbzJd8p8mxQXL2OvHBUqt
	7Ugg5yfBrHPFJwjqpLDgjixvuzkwe0uQVfPqFBJ0ZqnBMYRgGMFimV758bkpkz4wilM0n1mNvMt
	0PUsTbBu0XmnDGVyTiYlTy/XiqoNXoes6bgWQRd5zGst93nDPzM/bavXWXbthoIJfBdOzJx2H+E
	mfNbTv7M+kGm2imSjj/ht86ZIMlEoAjtlMWA9/8yggwbhyIdsGDQA=
X-Google-Smtp-Source: AGHT+IHBkJ6T+XP8HkZDYRjvyUd2ghQ/PYqM+/0Cceabo1BsPtNMlQLAkihUvoTvqsgb4eUlM6RIwA==
X-Received: by 2002:a17:907:3da0:b0:b48:44bc:44f2 with SMTP id a640c23a62f3a-b49c393a608mr1526934466b.43.1759769009794;
        Mon, 06 Oct 2025 09:43:29 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652aa01esm1193841866b.2.2025.10.06.09.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 09:43:29 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 06 Oct 2025 17:43:29 +0100
Subject: [PATCH 03/10] pmdomain: samsung: use to devm_kstrdup_const() to
 simplify error handling
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251006-gs101-pd-v1-3-f0cb0c01ea7b@linaro.org>
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

Convert to using devm_kstrdup_const() so as to simplify cleanup during
error handling.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
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
2.51.0.618.g983fd99d29-goog


