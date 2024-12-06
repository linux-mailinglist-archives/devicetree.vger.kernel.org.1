Return-Path: <devicetree+bounces-128070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 620D59E75FB
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 17:31:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA7C51887848
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23B0A1F4E33;
	Fri,  6 Dec 2024 16:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="US3SiTNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186DE1F37B1
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 16:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733502666; cv=none; b=t8t1SrsCqjIGgue+Po9J88bstWt0EYbH7eXbYnwuUCr/wrn9t/k64EVu0aEtto2uP02Sz7EYw/78qdCFkqeHLhBOQ9cmtTepvmLvcvoMnXJKI48SvGS4ODRf+Y/DHGrSYpIzeEBEiC1S8S7Kspwlc+UQVMiT5HOv6i14VqvffTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733502666; c=relaxed/simple;
	bh=fD1l+jNkgnfWuXI1bHIvbywED4CP+GtggJNFPuFqDcw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZvHoECTtnNlL9Db5XHlMq5WVxkQZfAUSO7afs9+cpMO6hQHgaIi6TRCijgzb2PA4ZiUmT1qQXRNqZ57ATWVqJK3HSzJMa1LTLRjl4UhHlEYaWoy38gn4cZmsrn7fWxmSE+Pspm2DdzGBz3FGacKGT0dl0mYoNfrvWuGGq/pbdoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=US3SiTNt; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53de8ecb39bso3063573e87.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 08:31:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733502663; x=1734107463; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=US3SiTNtbX3OZZXbKxTpAR6pVq2vY3Y3f/v2VOzNiuH21jEJ8ZvzyfJfjZr5WpWpr2
         wvzur5rqAqHoF/DXrbjVnI+xIAxWgahYRLsc3XiOkqlZcapSlq5jxsm0uJN/9RIT4w3I
         mCq6FqtJ49BbNjMt6gZA3rSRgc+dky0WwS62FX1hIVifGSUd0pXUnmvtEWDH+cY4Sbjl
         Exxih7Sx9k1FBKEwU8W/5/ikVZ3tcSlTeXA7mhJhurnffbF5Er9ssiNzVEhAzDOY02KQ
         9PMpuRpH7r3veh0YKZpYN+ZQtfkbIETaDYe9LSapc54yyjtV6wRx84DktfT/nzfzV4++
         z6HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733502663; x=1734107463;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H11rnIjZ/6A+y0BhElAhFFU5gZO2NZydl8Xc9FZjLpY=;
        b=AHfft0EksZj+rDaxOrUicQtC0GRtGNZcGHM0vcsJqBEpAy3PuMLBaYDZg02pi2jZPx
         j7EJz+rPcJhv6C+QGRun8hgTH1KkEbrIdvEH0DMSXGBwCpuFAQMIKAVvCbyRmPkdYdK3
         N02PDspl5JodSrysTJTRBVr9nVgBvDD30b+OK8oLBPELNwTEeD+KNQKO1kVe2n4B6EEq
         simTUHaarMgChwD2+uTzi50c52yhXpVYf0t6gA1zNHTJUo+wEF6do9zt6V++/2JnEc9a
         44mRN6kM1o2VmcgOSJB+KKntsZ1GFRcklQMM4UAR0WgHycUVma3FInRuG9VlJeCORzAz
         11fQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoYVpxtbQhwOxZ7wf0CV/1e8qSi4eUntvvEbDhHkXZW9t7DAO0gx1hgcD//O0ka73tAGPxuqQW2BiE@vger.kernel.org
X-Gm-Message-State: AOJu0YzQWVbm5YQmeE7e2kC12ZIqKh4Px8EynWI9EPhVKUDgsyEn9cPc
	yAY3WMz79tHIUUn3Wg+H0RonrpCvWHYqcoll1gwGZ7RL52lIlyDl4fjQZZS7k1Y=
X-Gm-Gg: ASbGnctTAcBUTQdPBqINazHqMu6rf6eHUS0KjHSvBh6EitTFxK0kZkfN6VMrnRt8NLP
	P0VKl5s869YHcfqsHQ05QoPkTVL5GZG4dG7v73oktIDl8eXKyW3KmWublVU6rg4xvz+anyvmKrm
	dd9h8GueKhdQx7D07zNIZaO2VvFj+BY0cjmWrHrTm+787JcSWej1E/vIAx52XyHX4ciYeudI1Bz
	rkr6DTTTgzE3u9i/uIDltcwrYpljehf+FNWblGkQgsG5zbNC4fagR6zJiE/P6m5BVXyKGA9EK+1
	qYBCwxNyf9IvEje0E1xtbHbt7aLa1KKTcA==
X-Google-Smtp-Source: AGHT+IExkzoUN1HflnT9opUQAW9MqmmpGeThLHiF2BwdjV6cAu9grD1ih7bZFlXxIc4t4D7GinRxbw==
X-Received: by 2002:a05:6512:ad1:b0:539:da76:c77e with SMTP id 2adb3069b0e04-53e2c2ac7fcmr2130253e87.5.1733502663241;
        Fri, 06 Dec 2024 08:31:03 -0800 (PST)
Received: from puffmais.c.googlers.com (64.227.90.34.bc.googleusercontent.com. [34.90.227.64])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260e8af8sm257710266b.191.2024.12.06.08.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 08:31:02 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 06 Dec 2024 16:31:03 +0000
Subject: [PATCH v4 3/7] phy: exynos5-usbdrd: convert to dev_err_probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20241206-gs101-phy-lanes-orientation-phy-v4-3-f5961268b149@linaro.org>
References: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
In-Reply-To: <20241206-gs101-phy-lanes-orientation-phy-v4-0-f5961268b149@linaro.org>
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


