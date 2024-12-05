Return-Path: <devicetree+bounces-127222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 899099E4E91
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 08:34:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80DB71881C4F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 07:34:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C9E31BD519;
	Thu,  5 Dec 2024 07:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rG0WUIyQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029231B6D1B
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 07:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733383999; cv=none; b=ciAcNIddp6mOtICjjONbCiHEjxuyG8ks5Jy23j3NV1UW/D+ony2jmpCkbh+cALqu7Zda9SwelmyDFjVTSPiy5mzK3LcMn+s5syw4H6OK4Bo8YfQWnDyYp7cPAsglHtL61jJC2A5N2PK9THqKxbabThip1fMfRcDkXgAtEHVa3Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733383999; c=relaxed/simple;
	bh=fD1l+jNkgnfWuXI1bHIvbywED4CP+GtggJNFPuFqDcw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xe7+WHdookf9MIKwF69xrmh7fAWaa+jMS56Yq1ZoBNVaMXCLwUnmEpQ6FDslLwYLhUwdHDiXMtBSNMe2wVGOliVjieP+FwLPc99tu4jsVjh+0wazArIPLBd/lAE2qqjol1r/Ifl4Doq7fSY6tiZEFf43xc8y+fGPJ1OaMLs1RAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rG0WUIyQ; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5cecbddb574so676278a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 23:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733383995; x=1733988795; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=rG0WUIyQDQeNd1ZuOO5Sr3yGjWCe5ZnDzCDr5MeUR9Z4UFVYNysZshpqxVAo1KDKa/
         Lbd8pfk8CP9+bOt9hVPPpku3JZPEnqgNhCFEfdqVBKoaimlzE1P7hhDLmEoV6+um7ha+
         BoOhgP5CPaCMHBLLFA8iKSKalH/71UdzELQGs6/HJnZx8NfFdyhF4xhyEkruFHlAWMj3
         qWIluB6+Vz5Dx2Gho35rzpJVCPdvCYyAdw1fPY8/WLznucrvf0AvJ+0lv3Hjcs1SbglC
         vmj/Sf183xE37hfexVq7WXhCkneIK0MCvsdC8+hNBUPmR9Z7Z65QkEBBkvADPG1MBgmI
         +DlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733383995; x=1733988795;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=Z8hPV9HazKtxKYy/G0hnmv/ixyXKUctc7GtS/N4sH4rK0j0fbMTQTX2wzkzogYP+v7
         80Oq3sXHU6oOYaPcMNZ8fiqT7RNwPnnKDG0yD76CVvLOXTCJJQpoFJYq3EsvYiv05BFt
         XWobt2O1V/kkWus6FjjluouX+cMs+gT6VPpkrSAz3dUVui4J1sVS5TwgYwxjOMzH+iri
         sfJY4iKTH9Gk4OA5myYDhW79HHp9AS4SVyDY+rUD9yLcLN4B16USUnbTtLdJftEKdjhu
         Agra8yOPawwxyA4/VnOTGcQfq9yU81hW8N4eyxO70t4rauVPZevdnjWCldpM16LQ5gTq
         ijZg==
X-Forwarded-Encrypted: i=1; AJvYcCU+uk4VUF8w0rymsGIeTl/NVNjUIJbBUttNgfqLnaiECHEU6Y5z2jgIr0zmirktQH3zu2NV4jMVm42R@vger.kernel.org
X-Gm-Message-State: AOJu0YxDdpKm4FszRMo4/hz0ZzL/5QaJyH1vEu0NrGew8oxgcNAkr9jl
	0xTvrV28pWUsVCYVCFl+g+woHVCsZf8qtJrhMy0Es7Vb65vdfz66QqqFXvlsXHgVhPCRC9tG3/G
	1g08=
X-Gm-Gg: ASbGncsF0gGe1DaEm2GqW39iA8vkYBvFeME4eFGWZaV/cRjSQVOllSSHs2DNzpOtE+U
	vw49DsOvF1egrHJwq8OfIV4FDz4ynEQkBZ/fxVkn96Up+qK2uapkJkYuQ2Z9pRWDYn5dCnr/xQN
	QiWPl+Q/cR/YtQT5Z03EpTOHEDJRLOJpPASosZFTCHCoYEqbpE3cx8PyW/AaWkocwMwCwYtVsNW
	P1MJ/Owqheur2Er3USDyVwMT22CBtk/jr4ekG4n6L0Es04474cxkZQBcxC6GdfkP3BDWMj/DSxX
	NmroEfuWjYzkxqSCZcB97uwD7O6m/QPKIA==
X-Google-Smtp-Source: AGHT+IFYsJycA4yASAH+sZjUsdut4D7esnBNe4R4ApeFxO8IGWZZ/0bN1Z5Vd1ltD4MxKYmMzQqjIw==
X-Received: by 2002:a17:906:31c7:b0:a9a:bbcc:508c with SMTP id a640c23a62f3a-aa5f7ca9f9emr722031966b.2.1733383995058;
        Wed, 04 Dec 2024 23:33:15 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260888casm53371766b.133.2024.12.04.23.33.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 23:33:14 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 05 Dec 2024 07:33:14 +0000
Subject: [PATCH v3 3/8] phy: exynos5-usbdrd: convert to dev_err_probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241205-gs101-phy-lanes-orientation-phy-v3-3-32f721bed219@linaro.org>
References: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
In-Reply-To: <20241205-gs101-phy-lanes-orientation-phy-v3-0-32f721bed219@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Sam Protsenko <semen.protsenko@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0

dev_err_probe() exists to simplify code.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
v2:
* collect tags
---
 drivers/phy/samsung/phy-exynos5-usbdrd.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/samsung/phy-exynos5-usbdrd.c b/drivers/phy/samsung/phy-exynos5-usbdrd.c
index c421b495eb0f..ceae4b47cece 100644
--- a/drivers/phy/samsung/phy-exynos5-usbdrd.c
+++ b/drivers/phy/samsung/phy-exynos5-usbdrd.c
@@ -1725,10 +1725,9 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 
 	reg_pmu = syscon_regmap_lookup_by_phandle(dev->of_node,
 						   "samsung,pmu-syscon");
-	if (IS_ERR(reg_pmu)) {
-		dev_err(dev, "Failed to lookup PMU regmap\n");
-		return PTR_ERR(reg_pmu);
-	}
+	if (IS_ERR(reg_pmu))
+		return dev_err_probe(dev, PTR_ERR(reg_pmu),
+				     "Failed to lookup PMU regmap\n");
 
 	/*
 	 * Exynos5420 SoC has multiple channels for USB 3.0 PHY, with
@@ -1759,10 +1758,9 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 	for (i = 0; i < EXYNOS5_DRDPHYS_NUM; i++) {
 		struct phy *phy = devm_phy_create(dev, NULL, drv_data->phy_ops);
 
-		if (IS_ERR(phy)) {
-			dev_err(dev, "Failed to create usbdrd_phy phy\n");
-			return PTR_ERR(phy);
-		}
+		if (IS_ERR(phy))
+			return dev_err_probe(dev, PTR_ERR(phy),
+					     "Failed to create usbdrd_phy phy\n");
 
 		phy_drd->phys[i].phy = phy;
 		phy_drd->phys[i].index = i;
@@ -1786,10 +1784,9 @@ static int exynos5_usbdrd_phy_probe(struct platform_device *pdev)
 
 	phy_provider = devm_of_phy_provider_register(dev,
 						     exynos5_usbdrd_phy_xlate);
-	if (IS_ERR(phy_provider)) {
-		dev_err(phy_drd->dev, "Failed to register phy provider\n");
-		return PTR_ERR(phy_provider);
-	}
+	if (IS_ERR(phy_provider))
+		return dev_err_probe(phy_drd->dev, PTR_ERR(phy_provider),
+				     "Failed to register phy provider\n");
 
 	return 0;
 }

-- 
2.47.0.338.g60cca15819-goog


