Return-Path: <devicetree+bounces-11579-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FBE7D62FA
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:33:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E97F1C20DEF
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:33:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A66D18626;
	Wed, 25 Oct 2023 07:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cGwa4yLr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B209018621
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:33:17 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 303B32105
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:00 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-507962561adso7732327e87.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219178; x=1698823978; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJrpI5nxU9cuMaUw8OFL5m5bwnYY8HlXt1mNtFEQ7qs=;
        b=cGwa4yLrax9JCF7uwgvAUwljUxL0RfgOsRMQtcXg+MJGo+CheJCA7T/4ybAoFgAjOf
         qXio/a+2tQG1g6PSRmBBcXTNGsPqcoxJPNiCLnFxZUwZrAsKhTel60TI7Oy42l2rCuy6
         WE3wh0Z2S74dDsNBsMrcl4WAN5xJ9CUY5lxzQHrmiDq0YK/hCyrTmRZhLPJWLcLGFtqW
         bmx3s7Z0QDGMGbEcmP/IcvJEVKFb2moiG9SrCuh4MSPWzK3RYv8ZIT9neR7LKw1X5N5E
         teg/duO4fOaU6zNzPbhW0NOsw6M4VMYVEXtMJW5hXcF0yHpWE5EkKjfYG1EneXeAiy6K
         wK/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219178; x=1698823978;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qJrpI5nxU9cuMaUw8OFL5m5bwnYY8HlXt1mNtFEQ7qs=;
        b=cmQHAh3N31eTiRv2aLvNVhjCo5lq6udckx6R2IXHompgg7K/K9r4DslbSgZcdhmyy7
         geSrScfBgwsivcABWP8pEv9gjwBT5v4q/wC8jd14zTQpI8qSmjU9VjbKHbYD44Dd4wjq
         iKsmcFSDgizf3RpHlrrA2D+JBiIY114NE+P0i1qDJRQ/MaxvRdHhP3nrTo9tAsA2P9Go
         1quq5goFBcBN1F7zk/uMbSfeEiQjsgW5zfEI0DRxkYhPMCAAwBytfBPyY6PPNZLzf5mW
         JBpDUVnrU9HG8JL4FLoRTeeWm+EfNQPC0kCOzCUCy8Dp3UbY74vikSEwmlsamoIGhxsF
         0aIg==
X-Gm-Message-State: AOJu0YyYdYDneFkryrYH9lXwIFnUjTgT4b4a3JLdSdLMcSx+g0Sz/xno
	/oE5p7dzoyK91ua0Y2LV052gAA==
X-Google-Smtp-Source: AGHT+IGQru0I6swlvWecY5IFJ4i/mUG98Dt9NIfG6wTfZk3h2OCz/KTBa6Yk9Xak/rAc3xmwJaSZtg==
X-Received: by 2002:a05:6512:376c:b0:507:9a66:3577 with SMTP id z12-20020a056512376c00b005079a663577mr8841092lft.5.1698219178262;
        Wed, 25 Oct 2023 00:32:58 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v18-20020a05600c15d200b004063d8b43e7sm18422239wmf.48.2023.10.25.00.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:32:57 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:32:47 +0200
Subject: [PATCH 10/10] clk: qcom: rpmh: add clocks for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-clocks-v1-10-c89b59594caf@linaro.org>
References: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-clocks-v1-0-c89b59594caf@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2560;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=dzJGDHfO/28v2dj9L1hevUwNj64Z2rtH0Uclrax74CI=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMSdRHggDfIH29o/ZTdDCnof+6DWZi0IbldORgwu
 as+H+ZKJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjEnQAKCRB33NvayMhJ0XdVEA
 DPVaHsPGZJOkKLWN/6cGFWw4JvXJc856xk7jR6OBpZKhCCLLbnEGcxZgKoSIxivdYlBeaIhQCXdkHA
 kPTYgavGQ1T61SAv0eh94+109a/AL+I5WjigdR/SkoYBwtgLmeabpfQCpiXttANvcZfKh+ydhQdvkU
 wzokRJh6DDp/wKZ/1dqGH5qMhblm5Yk6a3US1MjRcK7b+Xd/NfzOFMdL1vBnCZgC0SLWCFN2IObHxb
 xQ0ggldzm3+46tFt0mO3ORJtoqvtsSYvxMwM964cw9u6t2Ufb1MvXCBR6xOokbxMjQ3S2lWJCoxnh3
 vyX1gbnr/ei1qKlLLPVG3HVS2Jb+1KK7VsVaIaHNOdqtj/VWoCbdbD+iu1BzOpY3mXQ7c3UFgxS3hl
 rnkhkNy10FYBiCpspIXxIcV+jwRGl1F0fs0IY3olGzw3+zmwlf/tck032XyWPfn5NOPm6GTIkWrkMz
 7ZRdJKoqbsyTMiCFFm6bRBzL0VcSszJvlrRYKlXmQhV4/t7PkhvcKL/MWkiYVYhekHRTb4cPqacgvD
 wPTLi0eZ0S6GS0xu8BS5FD9/vb8IOlXmpcrWTxGw7K4PHcTsyRR9KO+jqIgfGQ4YFrV4M7e71Qtvkb
 zQwddYTnn6ABsyG/TIKai6eoUlKLw4gmkg+R7OyYrV+NMbsbdAyYv1YcSqeA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add RPMH Clocks for the SM8650 platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 drivers/clk/qcom/clk-rpmh.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 5d853fd43294..ea175c2dae95 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -372,6 +372,8 @@ DEFINE_CLK_RPMH_VRM(clk3, _a1, "clka3", 1);
 DEFINE_CLK_RPMH_VRM(clk4, _a1, "clka4", 1);
 DEFINE_CLK_RPMH_VRM(clk5, _a1, "clka5", 1);
 
+DEFINE_CLK_RPMH_VRM(clk4, _a2, "clka4", 2);
+DEFINE_CLK_RPMH_VRM(clk5, _a2, "clka5", 2);
 DEFINE_CLK_RPMH_VRM(clk6, _a2, "clka6", 2);
 DEFINE_CLK_RPMH_VRM(clk7, _a2, "clka7", 2);
 DEFINE_CLK_RPMH_VRM(clk8, _a2, "clka8", 2);
@@ -630,6 +632,32 @@ static const struct clk_rpmh_desc clk_rpmh_sm8550 = {
 	.num_clks = ARRAY_SIZE(sm8550_rpmh_clocks),
 };
 
+static struct clk_hw *sm8650_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
+	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
+	[RPMH_LN_BB_CLK1]	= &clk_rpmh_clk6_a2.hw,
+	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_clk6_a2_ao.hw,
+	[RPMH_LN_BB_CLK2]	= &clk_rpmh_clk7_a2.hw,
+	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_clk7_a2_ao.hw,
+	[RPMH_LN_BB_CLK3]	= &clk_rpmh_clk8_a2.hw,
+	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_clk8_a2_ao.hw,
+	[RPMH_RF_CLK1]		= &clk_rpmh_clk1_a1.hw,
+	[RPMH_RF_CLK1_A]	= &clk_rpmh_clk1_a1_ao.hw,
+	[RPMH_RF_CLK2]		= &clk_rpmh_clk2_a1.hw,
+	[RPMH_RF_CLK2_A]	= &clk_rpmh_clk2_a1_ao.hw,
+	/* missing RPMh resource address for clka3 */
+	[RPMH_RF_CLK4]		= &clk_rpmh_clk4_a2.hw,
+	[RPMH_RF_CLK4_A]	= &clk_rpmh_clk4_a2_ao.hw,
+	[RPMH_RF_CLK5]		= &clk_rpmh_clk5_a2.hw,
+	[RPMH_RF_CLK5_A]	= &clk_rpmh_clk5_a2_ao.hw,
+	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_sm8650 = {
+	.clks = sm8650_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(sm8650_rpmh_clocks),
+};
+
 static struct clk_hw *sc7280_rpmh_clocks[] = {
 	[RPMH_CXO_CLK]      = &clk_rpmh_bi_tcxo_div4.hw,
 	[RPMH_CXO_CLK_A]    = &clk_rpmh_bi_tcxo_div4_ao.hw,
@@ -837,6 +865,7 @@ static const struct of_device_id clk_rpmh_match_table[] = {
 	{ .compatible = "qcom,sm8350-rpmh-clk", .data = &clk_rpmh_sm8350},
 	{ .compatible = "qcom,sm8450-rpmh-clk", .data = &clk_rpmh_sm8450},
 	{ .compatible = "qcom,sm8550-rpmh-clk", .data = &clk_rpmh_sm8550},
+	{ .compatible = "qcom,sm8650-rpmh-clk", .data = &clk_rpmh_sm8650},
 	{ .compatible = "qcom,sc7280-rpmh-clk", .data = &clk_rpmh_sc7280},
 	{ }
 };

-- 
2.34.1


