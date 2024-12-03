Return-Path: <devicetree+bounces-126567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF9C9E1C9C
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 13:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 973F9B2A8D3
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35BD81E5729;
	Tue,  3 Dec 2024 12:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eI3Zl68j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D761E500F
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 12:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733228036; cv=none; b=DeD5VY4LFqYPdcIf5BtCjXxmACmdmkJcxFgYFx5AmyYgCpu526yG1bb3mxyD2VfDwQ+x3ZjbobjepJwBcTSAaAgtDom7JvtygSgLbnuFkyckYeQca+EvPrg6v0roRKlyzPSkDEGQUyatJ6NmzFliOC5UOT0ThiDj2LtYlHcH2Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733228036; c=relaxed/simple;
	bh=fD1l+jNkgnfWuXI1bHIvbywED4CP+GtggJNFPuFqDcw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=unwm59g2+StQA8Uh/+O88sgHcJenuL5Yd5xLNrufUudpISMqDMuopUJHVHKuekUQhxNIv3n1S/zuW/pFPMOx6RDpgG/Re9uu49PyaEdoq308DA+g77128W9n+fLe7mrCzU1iYu4L2iVcSvjGCjBmJ2RDtSEmRJ8Ga8lPB6u9r3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eI3Zl68j; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53de579f775so7609125e87.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 04:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733228032; x=1733832832; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=eI3Zl68jO5zkexoKA1dkZzSiAZzTArRN5XYllEFXuptdxZScRwi4wiREP+BSE+iQ7r
         YesYcJVSSR59NfFHLSbOtUZV/slUh/4/XMXISe2fzufLzHM/43RquO4MTn0dfTryA4FY
         DQJA27+VVgoZ2XaCKTWtCnj9QECbRVRj9tGFvNeUqpMw8yDyr2ubLuUujCR7moZ+t28Q
         QkDc7WEC3H0ffLMTJjncKfpKYEI4nsL8C/1xMpEmdBtXY/4B3f6Hi7V/PHOXMQPf+4WU
         52Wo2PR2QYEWJVVwjDATsZ4S6qM8zxzJorqaI5XOoKITyWaLqnux9aX+Be2hvUPCEfH6
         P7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733228032; x=1733832832;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=IdYV/YLAAiMluMufMn6eQpBcgHnLDeQHehWkTnx6O/aDQjKpfu3d+MHC0AxdbHihTO
         CFJ5rdZ2rV5L7TZglsuumaMhHxsTKEQtBtOwm3kBq2A+1JrCzS8GEZAlzhmBDXHVO2uo
         Cpu1g24UhFHOkG99eu3dMHPuKzRwv0OnTBXXSBqVZTROnzvhwosnJ15XOfjnvpd2ZIws
         XSY4MZd6IpUyBiOupOrDXdWldsnSHLSu5lZ+Psijhke61Qjn7aXslgu38kkXTXYB6R1s
         01lNJtdXMOdwDWRcTVIMTrvY2UskOocZtDyZLL3sSNno5p4orsiTqAuTM97x6E+UlOPe
         QF3A==
X-Forwarded-Encrypted: i=1; AJvYcCW3FaRtIqBSgKjAjT9OiNES3xzB29QFnH0NLk/xHWp5Pboh2jMlWGxkXbRFXxVR28YEKuV1x+MsO4eD@vger.kernel.org
X-Gm-Message-State: AOJu0YxN5YK8u2k3ccz6YhoweO5PdyC1AeQYR5NSvG7+AFSvtrtW4URL
	cULIIxS5oVfDqydVoA27wVE9gf+XIZIHUmJa9HxtpJoBK6pBysUyZTux4f98bqg=
X-Gm-Gg: ASbGncvcT3EGrxREEHrNZrqMzJRx6UkmxZA5u6zN+zsYk4jS3urQVGtrdf7XK+praaE
	/MOsKistaTMqn0FRwP4dC8LBdUYLTjD01Cwn20dBVxjewZNyKUk1IABXoKfrdsrholBudrijpJq
	UPOJsfIqjY5eOE3pcnnwd+uJe754ubtK0JcwgqUbI0G37tglROvDVzmb7Pni13o4t+SS/bj9xvY
	zPDfQDc/zaVPS90dyPle5C+TquBWEXizInei+DyqilgdnqLkvmcgfnHIx00iijrcDCtMI+ZsAuf
	AfvpEGzLi0LJSeoEjXx4BydP8MvM0HwQGw==
X-Google-Smtp-Source: AGHT+IHQdMSg8Woe8SDIrFAGgEbEvNlb4MTQhoB4mrSWw8iZG9ODfRvK6W0FE8ok+EwQTy/draIGwg==
X-Received: by 2002:a05:6512:32c9:b0:53d:e592:5415 with SMTP id 2adb3069b0e04-53e12a07a6amr2081271e87.34.1733228032380;
        Tue, 03 Dec 2024 04:13:52 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5996c245bsm607603766b.8.2024.12.03.04.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:13:52 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 03 Dec 2024 12:13:51 +0000
Subject: [PATCH v2 3/8] phy: exynos5-usbdrd: convert to dev_err_probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241203-gs101-phy-lanes-orientation-phy-v2-3-40dcf1b7670d@linaro.org>
References: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
In-Reply-To: <20241203-gs101-phy-lanes-orientation-phy-v2-0-40dcf1b7670d@linaro.org>
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


