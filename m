Return-Path: <devicetree+bounces-20149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B92FA7FDFDC
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 19:59:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E934B1C20E15
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 18:59:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F00C5CD13;
	Wed, 29 Nov 2023 18:59:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ceEZuJGR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 151F21704
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 10:59:39 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c9bf8964c3so1817861fa.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 10:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701284377; x=1701889177; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RXMNH6TrR/7XnpjC35h5hcRSBIQq27ZTZGmPCePhaF4=;
        b=ceEZuJGRHjSJEEn2XThBuYRMXJhfXO8ZHHnRI+lYhiuwr3N4vCFV02KyeoV5BDfj2/
         IQYU6js95/NL321CKrIhIK+wCtVCoFI/IaZJVo7m2S5X0GK+xjUZh2sRWFHBhesZXwNy
         D8GbUWBO89qBBpFwkYL5Do4SrtrQyI+x/MKxexj55zl2ej/gQ+vO2OtYyqJa1DYJmJY6
         Dl3z8s179GyE6sANiRgQyFWYaILGhd4iCdgk8RoTwwLjxkbuil1c/uxrwyvO2WG0DRYd
         /WgpsKcEL0hdOjhIEv5Xsx+QCMxuearTdipvkMPMFGp9axlvkXc9i9HlnMpIoGSbZ4O8
         zg0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701284377; x=1701889177;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RXMNH6TrR/7XnpjC35h5hcRSBIQq27ZTZGmPCePhaF4=;
        b=oy879xf3wCdHrG6pVIzmLUs+g/YpB0ZI5z331t7aQpl+SdPsVRBtGoRdh8RRTYykSn
         q/e+9KSeLPEFlWVO/pGnrfSrTceijc04MeBo0DD12uBWrwcbC5qyXvnUbHJd5MIRZAER
         1PjYF3mfsVT0bcTuubUBBl3W37NjeopQB3MIy7o5a3MRjmjHM/qsPVhj6UvwSDgsr67o
         Nh0Nlwowph9JvVxizQotdsDbvisP9hgQRIB+hKFDOu2jMKJFn82jW+iL0rAFMt7vyNy0
         Dr4mJHi4FrJ2UXCZn4LLDzmUKzen6a40EjNkUtpaIBSgakba0gnpUoSyu1SAWUhqc9qM
         23qg==
X-Gm-Message-State: AOJu0YwDVvIxl4q2djscl7kcBNH45Upa2wuT3yc/M8+/xrErXajxzR81
	72f/OZPcjidACY7yd/Bg0XdNIw==
X-Google-Smtp-Source: AGHT+IFNL3CM1j+VFhLk7jRZhqJVTMlPCIKdqhUjhzr31aTHAPGZYyplS/2f5U9wFwtpF7JP++AWtQ==
X-Received: by 2002:a2e:9b59:0:b0:2c6:ece6:5b65 with SMTP id o25-20020a2e9b59000000b002c6ece65b65mr12502580ljj.10.1701284377331;
        Wed, 29 Nov 2023 10:59:37 -0800 (PST)
Received: from [10.167.154.1] (178235187166.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.166])
        by smtp.gmail.com with ESMTPSA id o11-20020a1709061d4b00b009faca59cf38sm8160232ejh.182.2023.11.29.10.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 10:59:36 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 29 Nov 2023 19:59:24 +0100
Subject: [PATCH v2 05/15] clk: qcom: gpucc-sm6375: Unregister critical
 clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v2-5-2a583460ef26@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v2-0-2a583460ef26@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1701284367; l=2968;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=LUWIogmP6OeDvx1GjND0Am0UQ+6einhHWh1HpqaW4UI=;
 b=yQzFMJrhML7Y5IYoegSAF6IeVpUCzfIPsfrVm05xdBsTdVnFLOOzF1l8znsi7qjH8Xpj6+xGI
 YKvvl6fJ0RtAyEzXytX9eeGB375rfVMq5z4XGKhvIB6SxO6ELJcSaNB
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Some clocks need to be always-on, but we don't really do anything
with them, other than calling enable() once and telling Linux they're
enabled.

Unregister them to save a couple of bytes and, perhaps more
importantly, allow for runtime suspend of the clock controller device,
as CLK_IS_CRITICAL prevents the latter.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gpucc-sm6375.c | 33 +++------------------------------
 1 file changed, 3 insertions(+), 30 deletions(-)

diff --git a/drivers/clk/qcom/gpucc-sm6375.c b/drivers/clk/qcom/gpucc-sm6375.c
index da24276a018e..6d85936dd441 100644
--- a/drivers/clk/qcom/gpucc-sm6375.c
+++ b/drivers/clk/qcom/gpucc-sm6375.c
@@ -183,20 +183,6 @@ static struct clk_rcg2 gpucc_gx_gfx3d_clk_src = {
 	},
 };
 
-static struct clk_branch gpucc_ahb_clk = {
-	.halt_reg = 0x1078,
-	.halt_check = BRANCH_HALT_DELAY,
-	.clkr = {
-		.enable_reg = 0x1078,
-		.enable_mask = BIT(0),
-		.hw.init = &(struct clk_init_data){
-			.name = "gpucc_ahb_clk",
-			.flags = CLK_IS_CRITICAL,
-			.ops = &clk_branch2_ops,
-		},
-	},
-};
-
 static struct clk_branch gpucc_cx_gfx3d_clk = {
 	.halt_reg = 0x10a4,
 	.halt_check = BRANCH_HALT_DELAY,
@@ -294,20 +280,6 @@ static struct clk_branch gpucc_cxo_clk = {
 	},
 };
 
-static struct clk_branch gpucc_gx_cxo_clk = {
-	.halt_reg = 0x1060,
-	.halt_check = BRANCH_HALT_DELAY,
-	.clkr = {
-		.enable_reg = 0x1060,
-		.enable_mask = BIT(0),
-		.hw.init = &(struct clk_init_data){
-			.name = "gpucc_gx_cxo_clk",
-			.flags = CLK_IS_CRITICAL,
-			.ops = &clk_branch2_ops,
-		},
-	},
-};
-
 static struct clk_branch gpucc_gx_gfx3d_clk = {
 	.halt_reg = 0x1054,
 	.halt_check = BRANCH_HALT_DELAY,
@@ -381,7 +353,6 @@ static struct gdsc gpu_gx_gdsc = {
 };
 
 static struct clk_regmap *gpucc_sm6375_clocks[] = {
-	[GPU_CC_AHB_CLK] = &gpucc_ahb_clk.clkr,
 	[GPU_CC_CX_GFX3D_CLK] = &gpucc_cx_gfx3d_clk.clkr,
 	[GPU_CC_CX_GFX3D_SLV_CLK] = &gpucc_cx_gfx3d_slv_clk.clkr,
 	[GPU_CC_CX_GMU_CLK] = &gpucc_cx_gmu_clk.clkr,
@@ -389,7 +360,6 @@ static struct clk_regmap *gpucc_sm6375_clocks[] = {
 	[GPU_CC_CXO_AON_CLK] = &gpucc_cxo_aon_clk.clkr,
 	[GPU_CC_CXO_CLK] = &gpucc_cxo_clk.clkr,
 	[GPU_CC_GMU_CLK_SRC] = &gpucc_gmu_clk_src.clkr,
-	[GPU_CC_GX_CXO_CLK] = &gpucc_gx_cxo_clk.clkr,
 	[GPU_CC_GX_GFX3D_CLK] = &gpucc_gx_gfx3d_clk.clkr,
 	[GPU_CC_GX_GFX3D_CLK_SRC] = &gpucc_gx_gfx3d_clk_src.clkr,
 	[GPU_CC_GX_GMU_CLK] = &gpucc_gx_gmu_clk.clkr,
@@ -455,6 +425,9 @@ static int gpucc_sm6375_probe(struct platform_device *pdev)
 	clk_lucid_pll_configure(&gpucc_pll0, regmap, &gpucc_pll0_config);
 	clk_lucid_pll_configure(&gpucc_pll1, regmap, &gpucc_pll1_config);
 
+	qcom_branch_set_clk_en(regmap, 0x1078); /* GPUCC_AHB_CLK */
+	qcom_branch_set_clk_en(regmap, 0x1060); /* GPUCC_GX_CXO_CLK */
+
 	ret = qcom_cc_really_probe(pdev, &gpucc_sm6375_desc, regmap);
 	pm_runtime_put(&pdev->dev);
 

-- 
2.43.0


