Return-Path: <devicetree+bounces-75710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B64990866A
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 10:35:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F584B2491C
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 08:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E0F519007E;
	Fri, 14 Jun 2024 08:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n1I4Hk7G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B718148318
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 08:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718354141; cv=none; b=gQJrYsTKnNt52Ncla0xRxMLTG87RCIWbyb/e0ZYORhyipTdkECZ0ZtnkcmUdVrvSQXMxJAvwBtY9+QJc4LFUX7x74Kzrf4OP/jDv5EkqB96EpzAjB+kSnji4DZuSzh1G2zkQD6n/0wdqUDnpkzLM5NWlujZVwacZmkO468JH9EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718354141; c=relaxed/simple;
	bh=T3DjvXEe+sumQ+ecA/DCNSeChO1xZMZY4sezj86K88Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m8L5EwS2YkJhbQW72OSi7dTDub+JJ7/BAAsiMeLaPjjkxDZMtbjmQo+2btS7ZfbY8ooBPRDm+7yeeksGkPETSa+4m/5uxSWrGJoKD3AwYsg1M5KsZe8w5/NgbkRQI2K5iPMPWPRhbXf5yaV5qWrALNfNj8GxP4s8kJVWVNVTjDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n1I4Hk7G; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52c7fbad011so2318108e87.0
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 01:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718354138; x=1718958938; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cu/gvkK5JV8o/AwZTjhXVurT12iJLCtsIO6X1RdbaeU=;
        b=n1I4Hk7GwxQxiFbTZ17I/x9BWP1h/ZUsKN6tUPFMqLFavnr9/rpS/+pQgeYrpsPmBb
         AGxjNJqwt9pQo5AthIB2pwAyM5fPnz606ON7ChvyiJOIPGhG0cARN2g2g7Bvd0jKpyOp
         +8CkO57+0jcjrGrH6jtLqwzTLkH5P5f8qz79GR0LpHPTeHy8AP1M31YT4YCg7orF+6MT
         quwQjC3biSpNPMWbF7IYC4SBndGSAmQArkwWzMeIcWKp6CCpixKPP1XRuHQx1IonaMn9
         phlx4sNP5okSFc4Fysaqx8/YeHqt1Qy6/jPYbsU1LZgGAy7S3odX+wIZe3H480H20kji
         b9yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718354138; x=1718958938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cu/gvkK5JV8o/AwZTjhXVurT12iJLCtsIO6X1RdbaeU=;
        b=qlxPIbPscIJyoJ1V/La98TwecibEjOZuM0DTZugw54jVgHVVYsa6VxlETC7nbZ43PG
         /nPjwj4dkOPCKWnM6AvmuIs8P2Ou4BrhAkjsgiZMJoS/IX7E3h9FP+Soiy5NaXBVPT3O
         kcEvDG8zWmdufFTfPZ3Hl1P6uyzyQKS4GwMxJk/mAaJn1JVAE+fLhNrvYFHdF7+armGq
         voQ/8enKw9rwwOq7eAuII5udt7aoD4TXg+T/Yxggu+MUIoIBqJYnC09x0HEhVRbABDkn
         GgiUGgArYeN4QOrKjIs4Xb009+dwPVQmyFBx10osNSA+mSGdMo2o0YDutuz7JiVTtByS
         cZ+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVwGZcG86TGzT9Q/gX5cH9XOu9TjZwJGYGii6K75lJo1KbHUe4D9t6iOox6NKPLSkpG8Hka87rHxdR6XiMZ5uxQtPCZ5svtlcsOkQ==
X-Gm-Message-State: AOJu0Yz0q6MZjjWlSAxd8rsm20ASPaU7qQLXKFBPWZUWe5YNxKGvc0Si
	+YVG0CRKSQcob4Yzec+LiKEZ0Jkpe2kH2ci5HwG1+MLmlJD/G8wQoqyKaMtjitcrPdZNNPTApMD
	VwCs=
X-Google-Smtp-Source: AGHT+IGBwQeeRTRpx3tVIDNf6sTLyuMyd/F9sOxQ2WN+C8rxDT7QywHo76mQERX8zghGcWanjbYHag==
X-Received: by 2002:a19:5f1c:0:b0:52c:1e37:92c7 with SMTP id 2adb3069b0e04-52ca6e99f9dmr1335311e87.59.1718354137822;
        Fri, 14 Jun 2024 01:35:37 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca282f1dbsm444776e87.110.2024.06.14.01.35.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 01:35:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 14 Jun 2024 11:35:34 +0300
Subject: [PATCH v2 1/2] phy: qcom: qmp-pcie: restore compatibility with
 existing DTs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240614-fix-pcie-phy-compat-v2-1-990863ea53bf@linaro.org>
References: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
In-Reply-To: <20240614-fix-pcie-phy-compat-v2-0-990863ea53bf@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1592;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=T3DjvXEe+sumQ+ecA/DCNSeChO1xZMZY4sezj86K88Y=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmbADX9AHnjH9hkGD+TdBoOGvwKBB1HxpP+V47g
 6dSXZoIDJWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmwA1wAKCRCLPIo+Aiko
 1TGDB/kBg91USYnSDUl0V2b7SQdGOrrO6lVRza608UE+7V9XzzUpvCNA+vSyfU5EW2MtqBoF3AM
 7R+FpS0MkVTEGJj7oHOlANKSQ2cPtCRBBA0KoV8z/hfknL0D0Y3fz59bpOQzNHhXF32BWr3n9jK
 SBSUcy/FIAyNfFoAfLswcIHBYAQk4c/0wkLRjp7uBZOTZh0vaNpiiUYlCAvHWATPn9+UTLJtXFQ
 IZIHCPAt0Il/PLlU43ksakMCOh+oadeb86fsyvzpcCmd3kpBc0jG5ITaJx7YBQZz3zp5yGDpSLn
 RYDl05RAjlWX1oVd08XcDyMJ6knwbRlmkH6THH/sJ63+CqKk
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Existing device trees specify only a single clock-output-name for the
PCIe PHYs. The function phy_aux_clk_register() expects a second entry in
that property. When it doesn't find it, it returns an error, thus
failing the probe of the PHY and thus breaking support for the
corresponding PCIe host.

Follow the approach of the combo USB+DT PHY and generate the name for
the AUX clocks instead of requiring it in DT.

Fixes: 583ca9ccfa80 ("phy: qcom: qmp-pcie: register second optional PHY AUX clock")
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 8cb91b9114d6..5b36cc7ac78b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -4033,14 +4033,11 @@ static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
 {
 	struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
 	struct clk_init_data init = { };
-	int ret;
+	char name[64];
 
-	ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
-	if (ret) {
-		dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
-		return ret;
-	}
+	snprintf(name, sizeof(name), "%s::phy_aux_clk", dev_name(qmp->dev));
 
+	init.name = name;
 	init.ops = &clk_fixed_rate_ops;
 
 	fixed->fixed_rate = qmp->cfg->aux_clock_rate;

-- 
2.39.2


