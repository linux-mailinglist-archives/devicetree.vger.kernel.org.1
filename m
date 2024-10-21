Return-Path: <devicetree+bounces-113582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F079A633D
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B7F51F22068
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:32:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6159A1E9087;
	Mon, 21 Oct 2024 10:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OqfJRzod"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4739C1E9061
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729506661; cv=none; b=q7de5dbH4SrL2uYM+fvDK8WHodf7VuQeaFuLW8N81CeHXBzAiU53+LixaV34NDnB5XrhzsVACslbP+jY5Dy3Q16lkOY2qN0t12NZhBao8VNfnI1YAKiXh/fh835HQ42e6Rk+k+ZYaXp8gHcXA9X8lqTCVxwXHot25XoykAXnEW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729506661; c=relaxed/simple;
	bh=LnoCXGHzd5t7+0pN06MF228za9Lu0FM1Oe64mRLrAEg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q0pAv5VEPqoo8s6quEKrlBKR4EOwexSn2gE9r9zjkLT/Tzp4TY2ipNOrLwjvxStbfXy9QypBL76VEiCdEZiZBr8ZpUkOCzjbbg3oybQ2xDw0/sAzEzmHOyJBE1JIm/FVYyVLx5KsvpO8LP+b88CTPoUQDN4k7Ysx2d+7tfoQ3No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OqfJRzod; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fb5014e2daso42288431fa.0
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506657; x=1730111457; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4JBL0fLe68SIR8/IBckLhxHZOhWibFm/IK5cxitVKRM=;
        b=OqfJRzod0jf0du+Ys9063ctMGXoKFp9VQkPcwu3ZSZ0C1T5pXc++aOYVQpaGNBGOWh
         Cx5ppqEHaKgWkB7O5dRZpMgB1nwVTCMyDdHi394B2Dn5kpvGkaPmUiE68sWOpfrkJH0a
         yIfUC90DXC2eMwPLoAoVk3LfT5pm5oFX7TOhQ8Xikm5dcRMX9cML79SkcnnLODt7XpbW
         EmRs0Rnore9+wo/51RMU/Gi/H+nwy0+vL8jDpt++d2SEOeGhuvsHF+9sqBOhKq7bcSkA
         a6KHdmEfPwRcC8acrLEKH6TA0bgYBbXg2/j/qSIzwJ+v4dy0qkMQGqm/b/f+adsLRyhq
         9+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506657; x=1730111457;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4JBL0fLe68SIR8/IBckLhxHZOhWibFm/IK5cxitVKRM=;
        b=LcVZndNx6H9WOn5wdvvZkYTQpCxsL2bZkcerNGj0fxrVKs229JMoJ/nF01JhStKO5z
         s2uA0Hl9WV7DwO6ee9dlGdPznjRCsCV/waVpM0JMEJ/lYNwxy9Km+xAj89ykvUtcFf89
         ct1LMTf/6rhYZ6NSQxt7U593kl8UTo/AQqCRGa4efxwxbvoPXWerbFGiw0WUxj05NM0E
         3v6XYTmF1BDYHQEfzFr0VqTodbDaQEzAo3sgz53oJUH7ZV0BHNSo5tmTfFQ7WNPsC+0F
         69jgNoiU+T6v5fupRcwjIPJpwxtVzr8bfI05WUsefALk7R1aNUaerIHlTJn24VkcHDTL
         FIUg==
X-Forwarded-Encrypted: i=1; AJvYcCUH+bkcn66pTP6pZQEHIwbCIUDQx4VbZYFaTvho3gtgIIXhUbX84I6oXjFouiJb8qJ//fvchGZNWgrG@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgxw/oXzfx7eXPIt2dfJ1Pxq0e7f+76mJ4471iY/e0Y7v57UGY
	ehqCbpRVbJnprNJTB61IDJqSyUkkDOjoTLIu3JmekbW1Z8HC3Yza/GMXu8EcVYQ=
X-Google-Smtp-Source: AGHT+IFADdxwB1lKuUHVbxyA2IJl8o/CFXKYmHwZVNmW2KmmdGR5UlnMkpnPMQvtZuxzFzao6rXxaA==
X-Received: by 2002:a2e:701:0:b0:2fb:3445:a4af with SMTP id 38308e7fff4ca-2fb82eb0637mr40527841fa.21.1729506657513;
        Mon, 21 Oct 2024 03:30:57 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fb9ae1217bsm4522711fa.112.2024.10.21.03.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:30:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:30:35 +0300
Subject: [PATCH v2 07/11] clk: qcom: rpmh: add support for SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-sar2130p-clocks-v2-7-383e5eb123a2@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1697;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LnoCXGHzd5t7+0pN06MF228za9Lu0FM1Oe64mRLrAEg=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi1MbkWvYiZofhgCqZ4ggNTsip56ovOEn1CSN
 cuI/felXXiJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYtTAAKCRAU23LtvoBl
 uE4SD/9ZtaF7M0grDGlmhdJonGZSBLSd5cuwulIlqIkLAAnV7pCdtXbckraOuGKAO5UDTpCpaKQ
 /1CkHFWbcIc83zihwDUy7AINVbgoJpznGO1Nqby9SysBfubk6EqXjIG6ayKZTB5nQ3W1nUYtAp7
 IFBEsCY9iJFmpabThGjwS678MkCD7Nh4nOBWm2nhue1konA9XxbHYcyNymgciPN1aGI2qSlx4ns
 eQBkqFJsF987q9lX8mWV4JnFJFMgqNCMbPb9VvNE/jF/kC6MylmK/rKKzNYe7hxYbARqJyU7XQl
 4Uk1DUIFh1JWeI01HYQVgT2EuHMbtDxrVe+ytsj4PLv1AjcDQ40zTbHb4HUrOhJIpAyiKgGqVC+
 86o2Fj2jgvwMxrrB7gvlawuzW25NyF5TM3P5pJVrcIot2ZcYD4p2l0/5LlzeSo923pgEp8lNDFI
 enre8wQzT3/EF1hQVoM/FUdY8zB5/+hcnfvLK98m2Un9NlMr5SOU9fdVO9ZfrCDVoEiWKWmALx+
 xSMxO0pgAdtQtbYQDXHPhu0ohNnLnmAOf/rnw8HmhCoaKQgJf0btaYVKhXgd3unCI1vcQRXct7u
 EDSgF8KeoWRPaG1GyAPvnLYLkcCAja8ImNVpGn330gsV6PBuI4X2NVP64GAcsUV+zZJfJ8Jh2/m
 RWSi2weD9qSc5Rw==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Define clocks as supported by the RPMh on the SAR2130P platform. It
seems that on this platform RPMh models only CXO clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-rpmh.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 4acde937114af3d7fdc15f3d125a72d42d0fde21..8cb15430d0171a8ed6b05e51d1901af63a4564c4 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -389,6 +389,16 @@ DEFINE_CLK_RPMH_BCM(ipa, "IP0");
 DEFINE_CLK_RPMH_BCM(pka, "PKA0");
 DEFINE_CLK_RPMH_BCM(qpic_clk, "QP0");
 
+static struct clk_hw *sar2130p_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div1.hw,
+	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div1_ao.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_sar2130p = {
+	.clks = sar2130p_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(sar2130p_rpmh_clocks),
+};
+
 static struct clk_hw *sdm845_rpmh_clocks[] = {
 	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
 	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
@@ -880,6 +890,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 static const struct of_device_id clk_rpmh_match_table[] = {
 	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
 	{ .compatible = "qcom,sa8775p-rpmh-clk", .data = &clk_rpmh_sa8775p},
+	{ .compatible = "qcom,sar2130p-rpmh-clk", .data = &clk_rpmh_sar2130p},
 	{ .compatible = "qcom,sc7180-rpmh-clk", .data = &clk_rpmh_sc7180},
 	{ .compatible = "qcom,sc8180x-rpmh-clk", .data = &clk_rpmh_sc8180x},
 	{ .compatible = "qcom,sc8280xp-rpmh-clk", .data = &clk_rpmh_sc8280xp},

-- 
2.39.5


