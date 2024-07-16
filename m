Return-Path: <devicetree+bounces-86224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26277933356
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 23:13:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C04441F22A2D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 21:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 035DE13A3ED;
	Tue, 16 Jul 2024 21:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Wlp63vl6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC0876036
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 21:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721164415; cv=none; b=KhOFt9B5xNtqd06NwK6g28qlp5yZ2CjiLwmp6OXIIEAPuZtPY2E6m2BX9+TXMDOg6Faz8W2vgMb2caSSAJlDbxADNjx6QpSLfbiScUN9FqTmRN/288NDPUPpxH1AZ5cHZOPsVT4FRw0MnV4WEDLsjxVuBrE+7Heea4fcJgI1/Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721164415; c=relaxed/simple;
	bh=LIN0yx+PW9SCk4wE5e0SuoaxcKfYVV9hcVWnhLF3lTE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J1jIqCcmzsOJMWpB9Cj5LTfEYwIuS/r7UR5TVjjWx3y87qtvlDAwVZjzVkMbxe0bvWdAIAnWFfx5ek2JHYYgxPNe7M3dFUmiZPlHbfPxu/HylPEWWo/HEZ8ZrdUEQ/bk0SQxkLwBrup5aiNdk3PVOQmKrDtQ77yf5LFheEdVp+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Wlp63vl6; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2eec7e431d9so78050761fa.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 14:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721164412; x=1721769212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3amLLPBB6rKO1BoKCjmuE/VH2YFL0028y4kpPRjqvaY=;
        b=Wlp63vl6qNpZWrufhQckVVLerCrqRiBVHdObyQYnhx9yYnItO100p40xTxQrFA26WW
         QCw0RBJBnxY7r+C68g/ZZsSakZrmWDbI4X1wmeH5hr6ulJ1XOojnUwaYKBu1DBuLhehd
         WG5ZluzNc0Se2FkeEGq+ygboSb0oB/d+46ggIZ1RTzpOFHiJ8dnCNLrvt6gs8b++uO3y
         Y5wDnG3GAUXBuUtPwldep6dvxv1hunjOmwJuBr0x7sPmM+xdUR0N/JEZ1gBgk9SPNOBT
         kzT73sWj+/IYNgSCL+P9pKXqFJi3oHFwm9Ru/JrHfZ6JEV9wwRiIDbSQN7DBI/VvNDhp
         NM6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721164412; x=1721769212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3amLLPBB6rKO1BoKCjmuE/VH2YFL0028y4kpPRjqvaY=;
        b=Z/BhD2WqDNCxEbxnEXhabuhJJetJaceVYEzxnTLaAAYgxiaUn4qK4fSaymhmvQ8b6y
         iPboNJ1QJZSFMLjdqj74aK3kDFQUwcxeEdeXKr+4/eheHJbrUTI5aafezNXATxAWYWQp
         Y8i6GngvEeKGBwcxBkeR0dQr16tV7jTQhQHl0sscZesVgNsHGxbCgng60Bdb9ExdM9Fv
         VGpJqiEhbbcTs+6GOslKtXsqfFbDCqePXMeHIfxXU61q8GZz0z4+O+Ezl6/G4PaFZ2r+
         /f5NneuVjgp2UbpjuVzDS7xbe70JruSil+B//foDDd4KGE1LXtSNXnsWBIhoIVwBbS27
         y0lw==
X-Forwarded-Encrypted: i=1; AJvYcCUP9m4AS+F05XHkJjwOGSVKfmBBf80hd+CvDUmOME8RofG9KqqUgrJPB3dA05y/1WWvFSnHPuc+QJbyNCo33eqZ/9zSC7z4r604Mw==
X-Gm-Message-State: AOJu0Yx1h7MS9m1g35aDMYWGy/Kl8AODUZ9DVfZ1CFJxYUg4CaN85l/7
	RqxRyW+c7vtfwAuxEab/4sX1XSQZftncixBaXzB0JPUcL72X1VtCWWsiLjchB/E=
X-Google-Smtp-Source: AGHT+IFr++J36/J6sBhIbX++Naf8qsHeDHwFrp0YC6s+rO9AsZf+TWlQh+VWGZF9+u9pn0B1KCQVzA==
X-Received: by 2002:a05:651c:b24:b0:2ee:8817:422b with SMTP id 38308e7fff4ca-2eef418e0a4mr26178011fa.19.1721164412476;
        Tue, 16 Jul 2024 14:13:32 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2eee179e723sm12433871fa.24.2024.07.16.14.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 14:13:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jul 2024 00:13:28 +0300
Subject: [PATCH 1/7] clk: qcom: dispcc-sm8550: fix several supposed typos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240717-dispcc-sm8550-fixes-v1-1-efb4d927dc9a@linaro.org>
References: <20240717-dispcc-sm8550-fixes-v1-0-efb4d927dc9a@linaro.org>
In-Reply-To: <20240717-dispcc-sm8550-fixes-v1-0-efb4d927dc9a@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1826;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=LIN0yx+PW9SCk4wE5e0SuoaxcKfYVV9hcVWnhLF3lTE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmluJ5pj8fx3Ug2+hP1eGZgmPf09TEgv3Bqj7HX
 +rU2qGhOVqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZpbieQAKCRCLPIo+Aiko
 1ZU0B/9uPspWpALzLLaf8LY4Q8GB2mBWktf/N8WU7H/3RSj6y0561NiB4FALpS4SOaHXCDY3nRC
 9wjXkkjjgyOFZHdf/C48f2uLBBdTcsoT+jzma6jdq7DIkJi460ocHqFKo8YBIdcurKOyiahyv60
 kMxZHANk7vVaHsshqpJzbyXAxnM67XDusOkLT1cHAvtQ71RwTgyCJX+MyPBFULGFIdfKhxQT40n
 Mnqj76hswC1rmGT5/EyligfsBq4KjyHVjShs45bMLcGi/pudphQzt30nSGPxNc2QUbwARCKyn4g
 c5slzJRCTKB9b4Bu764FUQtMRYrpdgUkytmnW911r3Lf7T6E
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Fix seveal odd-looking places in SM8550's dispcc driver:

- duplicate entries in disp_cc_parent_map_4 and disp_cc_parent_map_5
- using &disp_cc_mdss_dptx0_link_div_clk_src as a source for
  disp_cc_mdss_dptx1_usb_router_link_intf_clk

The SM8650 driver has been used as a reference.

Fixes: 90114ca11476 ("clk: qcom: add SM8550 DISPCC driver")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/dispcc-sm8550.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/dispcc-sm8550.c b/drivers/clk/qcom/dispcc-sm8550.c
index 31ae46f180a5..09e4b1e40e20 100644
--- a/drivers/clk/qcom/dispcc-sm8550.c
+++ b/drivers/clk/qcom/dispcc-sm8550.c
@@ -196,7 +196,7 @@ static const struct clk_parent_data disp_cc_parent_data_3[] = {
 static const struct parent_map disp_cc_parent_map_4[] = {
 	{ P_BI_TCXO, 0 },
 	{ P_DP0_PHY_PLL_LINK_CLK, 1 },
-	{ P_DP1_PHY_PLL_VCO_DIV_CLK, 2 },
+	{ P_DP0_PHY_PLL_VCO_DIV_CLK, 2 },
 	{ P_DP3_PHY_PLL_VCO_DIV_CLK, 3 },
 	{ P_DP1_PHY_PLL_VCO_DIV_CLK, 4 },
 	{ P_DP2_PHY_PLL_VCO_DIV_CLK, 6 },
@@ -213,7 +213,7 @@ static const struct clk_parent_data disp_cc_parent_data_4[] = {
 
 static const struct parent_map disp_cc_parent_map_5[] = {
 	{ P_BI_TCXO, 0 },
-	{ P_DSI0_PHY_PLL_OUT_BYTECLK, 4 },
+	{ P_DSI0_PHY_PLL_OUT_BYTECLK, 2 },
 	{ P_DSI1_PHY_PLL_OUT_BYTECLK, 4 },
 };
 
@@ -1146,7 +1146,7 @@ static struct clk_branch disp_cc_mdss_dptx1_usb_router_link_intf_clk = {
 		.hw.init = &(struct clk_init_data) {
 			.name = "disp_cc_mdss_dptx1_usb_router_link_intf_clk",
 			.parent_hws = (const struct clk_hw*[]) {
-				&disp_cc_mdss_dptx0_link_div_clk_src.clkr.hw,
+				&disp_cc_mdss_dptx1_link_div_clk_src.clkr.hw,
 			},
 			.num_parents = 1,
 			.flags = CLK_SET_RATE_PARENT,

-- 
2.39.2


