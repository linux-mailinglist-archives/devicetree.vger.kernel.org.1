Return-Path: <devicetree+bounces-115996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 606439B197F
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 17:49:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80BB81C21272
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 15:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C538C1D9682;
	Sat, 26 Oct 2024 15:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RaGhIh3b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CE31D9587
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729957645; cv=none; b=FOJ+FCAKggDAxzbjJ0/2LUmOhFv/NnxHrO2ZIXVe+vP3xRHSbCmoegluECi1dLSak3bnmGJ3vUE2X+61Zqd2nAwHHZe6rYnaOVWgaH1t0upyB9kzGQO0JAMh+aevPFkZuzRayzY8dFoyceMyu2drm9VdZRDNnvaWR0PNsxnA9gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729957645; c=relaxed/simple;
	bh=J01aZfvomEsVQEi/Nl/mHvq41KMRorLHAPm15NwwtBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gjNaYP1G/gJiWix3dlXe5Or+l+Ew9sL3rzF+t41xPcOogj2BJFlZjeDKavtXqwH4mS3qk0hf8tXPMegzkq7xdVNkxALr+HbQ8bgxzOqLm3bwXQ4MUFYonBpbeMAYR/vDDUhMZdrOsZz/rrvEibotPm3ZwAXwURo/m/5AGxpUOeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RaGhIh3b; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539e6c754bdso2717857e87.2
        for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 08:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729957642; x=1730562442; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V6AxpS4d6FLuJHatjryaGw2iYlZcDdEsHoMG8xCl8x8=;
        b=RaGhIh3bcJvEUmotJ8IgWi32kDo9u+mqMMAjUWKewqT4NGpnw/e2xWiZH6KOLFLLCI
         igUiCB0WPFvp8xIeIdOFNC+Zim1TpgqPmGia5FPdKcB1scAE1xrpVIRR2gL9lgQwun77
         i8HZHyfIqRIwI0vlT3+vVJu5lqPvUJR1gHy6jcUbKzG4Gbz9RSjFwsxMyYlNxdc0K4A3
         WKVDvpkgsXKzsCe/G04x8RzDrMQH6GtB4jWRj3Dak+DB2GJW0IeT1hvT65qIPHGEWTgr
         CAnfnG9ez7y2f0lqIAlj0SXRWjAVH32+wE9CH5aWWlxpj8a5FYRFG5FFd7pOr7qIxlG6
         20Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729957642; x=1730562442;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V6AxpS4d6FLuJHatjryaGw2iYlZcDdEsHoMG8xCl8x8=;
        b=uu29qfh7ZOmxrLiBfXbRzQKPYa4D7y6TWefPBfj4sQhH0Lp2NFqRJGWSj7w3YI59am
         h6iaF3uDVP8fKV+Gav24w1tWsGCHgFv7xqkD0tHRWEtGOcOQF2CO6lpZQ01I8ZweUr9b
         lYpi2RM5lsLhdSIOsPe4exAJpGHCPhhQsT7/7PUKs2E8sYRKM4W1ne3+z5kBfDHV6tlf
         rsAI95iPDb2tMQ6edioIk8pcYxUSoQRPkniIer1xYJTO0o4JuyxVEt2yvILo2bGUkR9G
         JUeXxqqK7FLR22R/BKwlN0Ir3KuexWl/386zZKjHu7yXkqjpGmCuVblIKW/W9uHuXx2X
         PUdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpL23UIViu6jIuIGshmMmJL0Q6iU+MNMfyTBagl3Z944LXoPcHU8WZ2XrVPO7GuMoKBo9/RBV1IDwn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs1WB6awqtN83vzmWFnCppSwh5MUXWSmqsdk9ypmDkzxRKQMfk
	u24UNucCGbQtvFOw4i1flpLcknNkgpxzAgAu/f9HWTsLcJIAS1GgXSuWA9SadX8=
X-Google-Smtp-Source: AGHT+IFg56vbqzjwHEqxnZqV43Wfc2lq2mjJGq2pZZ4F9N/ffyyR0HtlGdBL+dtsmuJdSCDiP1P3rQ==
X-Received: by 2002:a05:6512:1114:b0:539:f2b9:560d with SMTP id 2adb3069b0e04-53b34c46657mr916427e87.61.1729957641539;
        Sat, 26 Oct 2024 08:47:21 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1c7cf4sm532188e87.184.2024.10.26.08.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 08:47:20 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sat, 26 Oct 2024 18:47:07 +0300
Subject: [PATCH v4 09/11] clk: qcom: tcsrcc-sm8550: add SAR2130P support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241026-sar2130p-clocks-v4-9-37100d40fadc@linaro.org>
References: <20241026-sar2130p-clocks-v4-0-37100d40fadc@linaro.org>
In-Reply-To: <20241026-sar2130p-clocks-v4-0-37100d40fadc@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2386;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=J01aZfvomEsVQEi/Nl/mHvq41KMRorLHAPm15NwwtBA=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnHQ74jG3FGFfXEAzNixjJBqSrWHMrVi2rDinFs
 Ck/CJNR6QeJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZx0O+AAKCRAU23LtvoBl
 uFpPD/9lfuh+XwZND5oVOPxsmuSMQz37iSTHyB78xtu6kDQx1v1CpgV+YbdBAsZgV8bQEixr76V
 c69GonRDMXgX1sE1dj69PrZy55D+5GIAOBC/GVamCw7l72/MgeMJAOE863J8u50fNluVVX5WIJA
 5L1t1SEN7d1OXpA850aGXQdTfA0tuucxoyVu9IGJoVaNWAdXcFAkk3rV11Wl09bHtIR0ZnpfeZ8
 kLBfbJ+i3IDLhv7bC1K3R58cptYy61dLc1s/W2oWdPB4NvfRAZYSwYdFXRndfgVT1F/NYnzsFZf
 tqhBxy7eDoj25rgP3ToGB+IpDRskAR1MHH4dexhp6tWWl//XEyl7skHf5Gx9TD8J79bgNg5hPz2
 dhjty9SEQ8pmopPAsjgoi2FakI+rtf0Mc2wi4zvHD+CwaQ3RvGXNwpMd5FmFHvB1I6wizAptp0v
 gW0+NJhvu0A7K2KRQOt2U6kn7FDHEWHdVrIlbKddi3NobqaBuTHguj8wJgc7D62OcXsT89rXFoT
 DO9Rfp5IfcXzgW7BKvjxyR76Iu8D6XPFHmYUCv8nVFqMSH/jdAk7kz3fvpdU/EjHyed11zkOHhE
 dU6JhfHNkU3esVpy8/hEqlnB/qJWgS5BnmA86nqm+5rVekFIF13SDOc686u6xUs46bx/K/jAiTK
 SiYS9v4PtksZ7UQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The SAR2130P platform has the same TCSR Clock Controller as the SM8550,
except for the lack of the UFS clocks. Extend the SM8550 TCSRCC driver
to support SAR2130P.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/tcsrcc-sm8550.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/tcsrcc-sm8550.c b/drivers/clk/qcom/tcsrcc-sm8550.c
index e5e8f2e82b949dae592ec3dda585138bf89cab37..41d73f92a000ab924560a0c2c9d8e85a9aaeb1b0 100644
--- a/drivers/clk/qcom/tcsrcc-sm8550.c
+++ b/drivers/clk/qcom/tcsrcc-sm8550.c
@@ -129,6 +129,13 @@ static struct clk_branch tcsr_usb3_clkref_en = {
 	},
 };
 
+static struct clk_regmap *tcsr_cc_sar2130p_clocks[] = {
+	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
+	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
+	[TCSR_USB2_CLKREF_EN] = &tcsr_usb2_clkref_en.clkr,
+	[TCSR_USB3_CLKREF_EN] = &tcsr_usb3_clkref_en.clkr,
+};
+
 static struct clk_regmap *tcsr_cc_sm8550_clocks[] = {
 	[TCSR_PCIE_0_CLKREF_EN] = &tcsr_pcie_0_clkref_en.clkr,
 	[TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
@@ -146,6 +153,12 @@ static const struct regmap_config tcsr_cc_sm8550_regmap_config = {
 	.fast_io = true,
 };
 
+static const struct qcom_cc_desc tcsr_cc_sar2130p_desc = {
+	.config = &tcsr_cc_sm8550_regmap_config,
+	.clks = tcsr_cc_sar2130p_clocks,
+	.num_clks = ARRAY_SIZE(tcsr_cc_sar2130p_clocks),
+};
+
 static const struct qcom_cc_desc tcsr_cc_sm8550_desc = {
 	.config = &tcsr_cc_sm8550_regmap_config,
 	.clks = tcsr_cc_sm8550_clocks,
@@ -153,7 +166,8 @@ static const struct qcom_cc_desc tcsr_cc_sm8550_desc = {
 };
 
 static const struct of_device_id tcsr_cc_sm8550_match_table[] = {
-	{ .compatible = "qcom,sm8550-tcsr" },
+	{ .compatible = "qcom,sar2130p-tcsr", .data = &tcsr_cc_sar2130p_desc },
+	{ .compatible = "qcom,sm8550-tcsr", .data = &tcsr_cc_sm8550_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, tcsr_cc_sm8550_match_table);
@@ -162,7 +176,7 @@ static int tcsr_cc_sm8550_probe(struct platform_device *pdev)
 {
 	struct regmap *regmap;
 
-	regmap = qcom_cc_map(pdev, &tcsr_cc_sm8550_desc);
+	regmap = qcom_cc_map(pdev, of_device_get_match_data(&pdev->dev));
 	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
 

-- 
2.39.5


