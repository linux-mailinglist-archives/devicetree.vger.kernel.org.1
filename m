Return-Path: <devicetree+bounces-31836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F04082CD31
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 15:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD72C1F2249E
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 14:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52F8E538A;
	Sat, 13 Jan 2024 14:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H5APmZJU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933976112
	for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 14:51:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40e6a6208ecso8506485e9.0
        for <devicetree@vger.kernel.org>; Sat, 13 Jan 2024 06:51:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705157467; x=1705762267; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=04GA/gYikhVm70mp04BE89vJbyB+HCgNcamoEcplm6o=;
        b=H5APmZJUWhA4ovcCl7iqmGZLYgXtGyJU8OjkH/3oP1F21LMbCU/6tSCP2mNiK+73YH
         UmvIxM2rjPIImHpPY6kUlOZ5bY2rD4thWjwXDu3jf7MEuO2HbiDFTIORxGI/BKMx3wFK
         PTEm1+vQyMoy1uVkGnob1uzgGJAQ0+Iz0NlFTY6OWzVmnMpDBjSou4fgkV8YzBuTM/tO
         bNnrMrgXJj9EcNcP0v0p6LtZoPtowjzFSFpIta0dxpjknO8iOshLD9JU16h9s7mY5BA4
         wbrhX/UAA6Oh66XTOVhsth+o6dvmIY8iNEVvK653rR4LVYPPWDtmundBvRmh58vvxQYL
         BfoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705157467; x=1705762267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04GA/gYikhVm70mp04BE89vJbyB+HCgNcamoEcplm6o=;
        b=tlE9Ak0pNekvtdzGNmC5irt40asxTe5LtzTRlITsImhHSS3ay3eeggzyvILIocQcgW
         HdW7zHSfee7VkYL1s5pUEmJBecVLRXfGryOzmDDkMNP0uTwuyxG1Bw+F24wCACsVRIqj
         3rhQOFH7tkUheT0JE40quwDWvUItxGGL8OvVgsDq6hQvDSw8wZBpMFBLEoI8Pxv3dDc0
         Nr7coNwDMfs3h+GeSdwiNNY1DvEZW4BZ4sc7gPTDcfWHwb2zJ4h7aPDNgFz7eBw355Su
         RD6zlSp76iFCFWj9DzboPv5pOOjWoBfg+PGs2FDXEgYIiszZMzDAjLB/+6OGkLWqkUH9
         f3Rg==
X-Gm-Message-State: AOJu0Yy4zcZe+mJ990H2qV8/NWl40989zgaKP2u1JtRR2O7NayOd8qaJ
	yyhHxFixBz5j7haOfIeJd95WA7RSnxTzEQ==
X-Google-Smtp-Source: AGHT+IHtGECFpwGb6l4XAhDjflG8loha4+FS5gTuag2+UylQoTrE0TiULCkAE4DaTy1H5AHL6aFwzg==
X-Received: by 2002:a05:600c:1553:b0:40d:83b8:a8ed with SMTP id f19-20020a05600c155300b0040d83b8a8edmr808216wmg.52.1705157466994;
        Sat, 13 Jan 2024 06:51:06 -0800 (PST)
Received: from [10.167.154.1] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id es18-20020a056402381200b00554b1d1a934sm3014593edb.27.2024.01.13.06.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Jan 2024 06:51:06 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 13 Jan 2024 15:50:55 +0100
Subject: [PATCH v6 06/12] clk: qcom: gpucc-sm6115: Add runtime PM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v6-6-46d136a4e8d0@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v6-0-46d136a4e8d0@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v6-0-46d136a4e8d0@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1705157455; l=1935;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=alZr67bLnwqb3yV+3Ojldc2X/6n9g3vN6yGz8GMYLR4=;
 b=JyJbdesuxMki5pKs7X0S5jt+C5pgrl33I4DZtUq1W2R6eKfAJkqDwXm3URq1GnvOoNT6arqBz
 aBv71d7sFIIDzKxhmRNM1TnbCmmZbLOXdih6zeJXXKIEFPKdpUZriD7
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GPU_CC block on SM6115 is powered by the VDD_CX rail. We only need
to cast an enable vote for it if the GPU blocks are in use.

Enable runtime PM to keep the power flowing only when necessary.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gpucc-sm6115.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/qcom/gpucc-sm6115.c b/drivers/clk/qcom/gpucc-sm6115.c
index 2c2c184747b1..15cf5d63c9ad 100644
--- a/drivers/clk/qcom/gpucc-sm6115.c
+++ b/drivers/clk/qcom/gpucc-sm6115.c
@@ -8,6 +8,7 @@
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #include <dt-bindings/clock/qcom,sm6115-gpucc.h>
@@ -443,10 +444,21 @@ MODULE_DEVICE_TABLE(of, gpu_cc_sm6115_match_table);
 static int gpu_cc_sm6115_probe(struct platform_device *pdev)
 {
 	struct regmap *regmap;
+	int ret;
+
+	ret = devm_pm_runtime_enable(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		return ret;
 
 	regmap = qcom_cc_map(pdev, &gpu_cc_sm6115_desc);
-	if (IS_ERR(regmap))
+	if (IS_ERR(regmap)) {
+		pm_runtime_put(&pdev->dev);
 		return PTR_ERR(regmap);
+	}
 
 	clk_alpha_pll_configure(&gpu_cc_pll0, regmap, &gpu_cc_pll0_config);
 	clk_alpha_pll_configure(&gpu_cc_pll1, regmap, &gpu_cc_pll1_config);
@@ -462,7 +474,10 @@ static int gpu_cc_sm6115_probe(struct platform_device *pdev)
 	qcom_branch_set_clk_en(regmap, 0x1078); /* GPU_CC_AHB_CLK */
 	qcom_branch_set_clk_en(regmap, 0x1060); /* GPU_CC_GX_CXO_CLK */
 
-	return qcom_cc_really_probe(pdev, &gpu_cc_sm6115_desc, regmap);
+	ret = qcom_cc_really_probe(pdev, &gpu_cc_sm6115_desc, regmap);
+	pm_runtime_put(&pdev->dev);
+
+	return ret;
 }
 
 static struct platform_driver gpu_cc_sm6115_driver = {

-- 
2.43.0


