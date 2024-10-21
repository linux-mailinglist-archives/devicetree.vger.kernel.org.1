Return-Path: <devicetree+bounces-113585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEB29A634D
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:33:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9FE2AB26EC2
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:33:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E7081EBA17;
	Mon, 21 Oct 2024 10:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KhK7GGy/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9BF1EABC5
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729506670; cv=none; b=k02XUjvvQwJSp3y/TgMulnKMZgzMvOhrIY/QYPVSssULKAaXqzRUsDQHkpQFwki1sZXDIyhKQkfETaPJYMJty9400Etc+sIJufruOPO5RnBYepF6m+WMMswUx/jBnYPx2Jp8V2iIdnW7qJFE+3cxqhcAncbLO8+5ApkYoKOJ8QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729506670; c=relaxed/simple;
	bh=FF4Jnab+Geqk+xkXhpJem2oUCgBLpD9njXEn5sRdMvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=azkqoHLXrOiEV51KZemEB2oJEHY288IbuVeL5/kbALp004VXlO/xBMpxDBBK4b0sBgiQtO9TUUmxUtJYJq6hUTfXnXJeyNWitg7QEELI8wj+QuhHyJoHmCVt7/ANYtCE+zsRAng7hj5zkWbZxLhIoa2n/1vCStCUOCE4cgZvACA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KhK7GGy/; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb3c3d5513so45211421fa.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506665; x=1730111465; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8pRe2ArQelLxHYJacQAyNZUXaVWQTwnH9cZRlckZ+24=;
        b=KhK7GGy/fKNPAZOtyev6ikbvPocsg3UxkgDGx+IDwXVeNrI74WqHaYzLp+z8TgjjiQ
         P83rG4InbjFMntcpDe8YJQ4lQOzf1ZcHcNIavHzqRyR9OD0YIR9zP18kjsYvrjxErOan
         RvRx2Woo7k7eKw1Q8BooxsU94D9QPntVcBniccQnYLRvMeWLgIdC70yLeNhPnOPoPh2L
         Hwcs6jOLg4JeOoo1Crbc1eA7XxFnOFMft/QPl6WfYJtf4oO1yhC8bbROxjNxfUupiiLc
         pSM+gFPKLKiYtyobGsVuDehPtg7xRdW8RxWkVRFQWBz9KM5ibDQ4+fxW4bOEbE3kKrId
         ic1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506665; x=1730111465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pRe2ArQelLxHYJacQAyNZUXaVWQTwnH9cZRlckZ+24=;
        b=nH0WOGa9Dfs3lgmWA+hUFuLr4V2xXIqnMDRG+GqJb8l+oub7EUAl7iqsfBT9uXTTN8
         DEXJhPxj4GIMsHtlzm4q4xo3B8hMUzGPj7NCl9dRyK4vgqG8twuOxGCzWnEdrEfoxLEy
         w50YnoSWD5BC071a4k0OKcZrZG5o9bv286a2S5VvG2/7F/Qg/07tSuGPfL4ad8R6GytV
         Oqkr//EJWBwQWrbznPv97vzLLp4Aib8Gj+mEvuDTh3pBHc2AztEh2nMxpS3eGIYWGTLp
         ClrfwJVi13pwhv2110ObivPcP9Z2pZ23j9E1u0lXVRwqFwbI+VCxi7S0+Ea3T15zeLZv
         Mr5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUD9Y8JJHtmMMZ4rf0eIQR4dySi5DPOGgwxuyMl8nYvLxHm0MB06Y88p0b0JHdoa+g7pajp9bWJpOJq@vger.kernel.org
X-Gm-Message-State: AOJu0YxV2dqboA8i297QOih4YXtj/uh3tXt5iOdQR9el0y7Rq9iGWhU6
	l0kDCkZuuBGNzjxXQXvjsGwZNF/WyObcvO07BdopW97SaRwyS5b/ljXkM6pf3qM=
X-Google-Smtp-Source: AGHT+IH3xMXyIM391sIZY2QT3GCI+7LtS8Vf1Eb4LJd77mie7/a5eo1Qk+MxRkB9K5bHPIsrW0RKOg==
X-Received: by 2002:a2e:a78a:0:b0:2fb:8de8:7f9e with SMTP id 38308e7fff4ca-2fb8de88107mr30699981fa.1.1729506665124;
        Mon, 21 Oct 2024 03:31:05 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb9ae1217bsm4522711fa.112.2024.10.21.03.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:31:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:30:38 +0300
Subject: [PATCH v2 10/11] clk: qcom: dispcc-sm8550: enable support for
 SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-sar2130p-clocks-v2-10-383e5eb123a2@linaro.org>
References: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
In-Reply-To: <20241021-sar2130p-clocks-v2-0-383e5eb123a2@linaro.org>
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
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3519;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=FF4Jnab+Geqk+xkXhpJem2oUCgBLpD9njXEn5sRdMvU=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi1N1kuu3X5Ep0OwZ/krmiLg/UN2UNP3fgiZp
 JipeNACJYyJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYtTQAKCRAU23LtvoBl
 uMVmD/0QKk6Utll3H3YxZMEfcXZTGfwICCB6wK5sgCccOS3lKmZAiD5ECB/XTObjN1hIiYr4COe
 tjUrsGk+HybjJHtcVAfsxgdNGFp7VOjvyVBVYY8B/P0IaIkM+/P014uYlK8y0MpjrQUY2Dkf3lJ
 MPzcbmAxX8hI00B3s1gTDKM9eAQ84RAXtS0g9bx9WusKTO8GXO5WWl8qYtJMmE1gXESWYFcQFud
 iMMcH9k+Pe4YIDmHdKdvfNs3fyGC1xL8GnoYtent2vSq1UTlM1xG73wh0qrlZi3lxPGYOqO4uqJ
 Dy03Nx4F8FgBNLNh/bCu4LTVgGmkP2V+O0RrcbvFhjM1FTFdzn9qnRFqpyKITEVefxps6rf68Pk
 s4OJPMzZbY/OJe+zWUktFKTQn+pUPbt/DSTiPli8/x2GphuLEGJIO8MB1zENto//i1NOO+YdAYF
 PwnxYXab7+RlrESm5DCYSadaWTq0LH3r6cw8hzyTiOK7iZu4gWjS8YaxdEDTLyJLpZ4Ed2lr7iY
 R9yL2KLz962r1PDsxYCgkg5jRuEcuzFlDgsFfqtAXUHhkVdR6f7k4V2fjXWVnutKzuEEJFzPs0v
 4C+j4uI89k9DWeghyMBwdp0dwWhxdmIiOCQiHxxf19yd9M/VhlQbhjPlzf/lIATFNGgJAu5fMuU
 vBAstEeEYIvkKNQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The display clock controller on SAR2130P is very close to the clock
controller on SM8550 (and SM8650). Reuse existing driver to add support
for the controller on SAR2130P.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
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


