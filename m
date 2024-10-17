Return-Path: <devicetree+bounces-112548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D7A9A2A25
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 19:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A7C51C21007
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 17:05:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4B51EF0B2;
	Thu, 17 Oct 2024 16:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PX821oru"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95EA21FAC53
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 16:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729184257; cv=none; b=JVS1ZjYq8HgnWJk6QKIcTPRcePmvG5u2Co//sYBZO0neQFD8tFSht5wJJrae7oxfd2wIQtRE8ygw8EQxjIzly2Fn7UA4bNrlR3GBVpCR4motXd1uA4i8XWopw00GVFIuaTzitoeWLk/RLGUce8fhOwCZO8yyNfLcMboaR62yBy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729184257; c=relaxed/simple;
	bh=fbvu1iWZ6scTvWN5W30gahzXbQWngQ6ZKmmxqc762gA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y+JUEo+jtNwJ9GRaV6nGeTX00QRBNArcaZrNeAqEqEAQpDWqNotBMRzy3+AiM8WsIaVdTpcO1/zh8TUzaS58C+9F2TtXkFiWNpIpAY3AtzM3T7S3Ko13eivs+Uxeu4f3USiMXo/Sue84LnWAlgAvN9UQfEdxv60AgItgHKjkK/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PX821oru; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539fb49c64aso1754795e87.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729184249; x=1729789049; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gWvwIEnWIKsnzmjfvspCHHy4Tzem1b3ef8BsIrynqJg=;
        b=PX821oruSH5jXoEuuf1Mb4CwxvrT48y+22QTtPGO0xRVMsATzPYSKqRsrvcNeH+rDM
         swCwttupk5x28/c2el3ZicT3tLb+AYSomlisFW96Af3l3XVmw/e0goG57vFNHdd9ZAFa
         2684HxkGJj+vL1G0AmRPUqO1P0X3D0k6WIDuc7a5uc52vhqN8s3FnUsm3VpGjQkKoKzA
         Zxh/VOqDSzOfWm/T9gYvFU5KOyjwOHm3b2DlPzQ7DIwdLbKw4CwmH0mY4lIg90WjDV6f
         WOy1qF4/VxRg+Aei8CnH96pLjDLrPGPTRjohnPMlR2NtjVNfZSSd98qlJ4cyj4IFj1rR
         y3mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729184249; x=1729789049;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gWvwIEnWIKsnzmjfvspCHHy4Tzem1b3ef8BsIrynqJg=;
        b=ryUSxJtSDwA/zwgUZy0aHn/FvCrgYNfPxKDYGILzY18KZV5rSZ0mcKFMSsP3yPoG5/
         FD8VI+gUjBYk/hU2O3h59rs5N7xPHGZ1Vp+aMJMfKhEbl2DFWRvw0J8NA3h3/0zEohTQ
         Hy2sPTtN8q+ins7slFocH4W6Amph+wJEIy/aAXM8tQlFCbcBUlL+mlAY1ibuOOaUkRHi
         yn5kC+BMcasKugNCDq6FSAdZRFXHuLSg7pf9W56pWP/FvBkNDqgnWUtSGrWv06Y3itmg
         AIj12RuB4RiRGQL4c5+p78HE+DbZRbkjnBsr4Uv8ABgT8ZsoE2Qfz3pk/U4jEqrc0XTS
         aE4A==
X-Forwarded-Encrypted: i=1; AJvYcCUmuP5vfMVELMuI+KSfpXrw1He48Akq76bXgI5OoawimhMzu27kEgpJ4OmJWW7TkUNZ3MOizgh2wnAN@vger.kernel.org
X-Gm-Message-State: AOJu0YyLrSJdKwQB33rVIREA+e9kmp4yR0pWcI4ypdUKDts/2nsynZGR
	ZUQdsWjN2c9jLlR5YP2BwlKxyf+WZzu0zlcoeXE3rsr2MhLGIsmvd7Zs8mwkU6Q=
X-Google-Smtp-Source: AGHT+IHHgMHG97cvsCziaeoREzb6x3sqdGXN97AHTGzEq9Q7AS2odtpV/hY0nwS/mroLiy/fdKktig==
X-Received: by 2002:a05:6512:2398:b0:536:741a:6bc5 with SMTP id 2adb3069b0e04-539e54d6122mr15546193e87.12.1729184248603;
        Thu, 17 Oct 2024 09:57:28 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a00007078sm821563e87.212.2024.10.17.09.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 09:57:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 19:57:03 +0300
Subject: [PATCH 13/14] clk: qcom: dispcc-sm8550: enable support for
 SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-clocks-v1-13-f75e740f0a8d@linaro.org>
References: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
In-Reply-To: <20241017-sar2130p-clocks-v1-0-f75e740f0a8d@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3462;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=fbvu1iWZ6scTvWN5W30gahzXbQWngQ6ZKmmxqc762gA=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEUHelKbwpXrCLcfkbLA7qsgVjwlFOHUuLisTN
 ArAU0n6afSJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFB3gAKCRAU23LtvoBl
 uDGfD/9wfL32JAfP60O6G+BHASkW5WfD8VWGCMiDYhmMfP9juzbIu9/VnhrdpkL8ZxV5Bzijj7w
 t6BzcYqROOZZKma1+XrKgcKttzFXVO3tupfYuSWmobuNmvZijbmJmwnso4/b9tdfyVryZxh2uxH
 oVSkQnLmh75oEX7bNLZomjR4rxqnkQp04c2nZVRkOTuiy3ojN8lOtnbmndRYWHbq2AhyhO/KzH+
 RHU2Y1JZbXfquCs8K1EA9xEIPSFmrUvW3BnMxSpFVcaSRqS5KkKz5WPqiywgaJDyUcZpwzyaZ8+
 oI4jNKtV0xnZu30EASg/e5OYzmvkhXtugkhiCIowtC1UYD6L6tUzL1ZSkSqpgmYVKJoXZxVKKsk
 xGjWtvxPuUNX37mGuPUcttBxl0RY54i2apEDAABGc6tzkP36/DIfSrSbgp7QU9LSnEgm8fc3eED
 R9dbv1G9oJgmvttVbC09tBQ8Zhy6Mhwj0j5vMrHkEUni3spk5ATZfLvuBwHoPuyKxKZDkATHItD
 xun5HqKVfguEohdQJXfIS4aIzVavs1qL2WalVXdT3mVC1RFRodX6/1fUGQH9nBbDBwsvz0qZDtv
 JEsHoyRonCPUV05F8c66m5KbOJEn3jgZqLQyj2brs9fBgvhNbdmVTJ0cL1n7MN99oGNkpTSyZRE
 WedYc4h8pZOdqlg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The display clock controller on SAR2130P is very close to the clock
controller on SM8550 (and SM8650). Reuse existing driver to add support
for the controller on SAR2130P.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/Kconfig         |  4 ++--
 drivers/clk/qcom/dispcc-sm8550.c | 18 ++++++++++++++++--
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 5f7bf9db76cfcef1ab18a6ba09fb4dc506695f9d..f314f26fe136c0fc1612edc0cca23c4deba5cd9f 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -968,10 +968,10 @@ config SM_DISPCC_8450
 config SM_DISPCC_8550
 	tristate "SM8550 Display Clock Controller"
 	depends on ARM64 || COMPILE_TEST
-	depends on SM_GCC_8550 || SM_GCC_8650
+	depends on SM_GCC_8550 || SM_GCC_8650 || SAR_GCC_2130P
 	help
 	  Support for the display clock controller on Qualcomm Technologies, Inc
-	  SM8550 or SM8650 devices.
+	  SAR2130P, SM8550 or SM8650 devices.
 	  Say Y if you want to support display devices and functionality such as
 	  splash screen.
 
diff --git a/drivers/clk/qcom/dispcc-sm8550.c b/drivers/clk/qcom/dispcc-sm8550.c
index 7f9021ca0ecb0ef743a40bed1bb3d2cbcfa23dc7..e41d4104d77021cae6438886bcb7015469d86a9f 100644
--- a/drivers/clk/qcom/dispcc-sm8550.c
+++ b/drivers/clk/qcom/dispcc-sm8550.c
@@ -75,7 +75,7 @@ static struct pll_vco lucid_ole_vco[] = {
 	{ 249600000, 2000000000, 0 },
 };
 
-static const struct alpha_pll_config disp_cc_pll0_config = {
+static struct alpha_pll_config disp_cc_pll0_config = {
 	.l = 0xd,
 	.alpha = 0x6492,
 	.config_ctl_val = 0x20485699,
@@ -106,7 +106,7 @@ static struct clk_alpha_pll disp_cc_pll0 = {
 	},
 };
 
-static const struct alpha_pll_config disp_cc_pll1_config = {
+static struct alpha_pll_config disp_cc_pll1_config = {
 	.l = 0x1f,
 	.alpha = 0x4000,
 	.config_ctl_val = 0x20485699,
@@ -594,6 +594,13 @@ static const struct freq_tbl ftbl_disp_cc_mdss_mdp_clk_src[] = {
 	{ }
 };
 
+static const struct freq_tbl ftbl_disp_cc_mdss_mdp_clk_src_sar2130p[] = {
+	F(200000000, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
+	F(325000000, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
+	F(514000000, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
+	{ }
+};
+
 static const struct freq_tbl ftbl_disp_cc_mdss_mdp_clk_src_sm8650[] = {
 	F(19200000, P_BI_TCXO, 1, 0, 0),
 	F(85714286, P_DISP_CC_PLL0_OUT_MAIN, 3, 0, 0),
@@ -1750,6 +1757,7 @@ static struct qcom_cc_desc disp_cc_sm8550_desc = {
 };
 
 static const struct of_device_id disp_cc_sm8550_match_table[] = {
+	{ .compatible = "qcom,sar2130p-dispcc" },
 	{ .compatible = "qcom,sm8550-dispcc" },
 	{ .compatible = "qcom,sm8650-dispcc" },
 	{ }
@@ -1780,6 +1788,12 @@ static int disp_cc_sm8550_probe(struct platform_device *pdev)
 		disp_cc_mdss_mdp_clk_src.freq_tbl = ftbl_disp_cc_mdss_mdp_clk_src_sm8650;
 		disp_cc_mdss_dptx1_usb_router_link_intf_clk.clkr.hw.init->parent_hws[0] =
 			&disp_cc_mdss_dptx1_link_div_clk_src.clkr.hw;
+	} else if (of_device_is_compatible(pdev->dev.of_node, "qcom,sar2130p-dispcc")) {
+		disp_cc_pll0_config.l = 0x1f;
+		disp_cc_pll0_config.alpha = 0x4000;
+		disp_cc_pll0_config.user_ctl_val = 0x1;
+		disp_cc_pll1_config.user_ctl_val = 0x1;
+		disp_cc_mdss_mdp_clk_src.freq_tbl = ftbl_disp_cc_mdss_mdp_clk_src_sar2130p;
 	}
 
 	clk_lucid_ole_pll_configure(&disp_cc_pll0, regmap, &disp_cc_pll0_config);

-- 
2.39.5


