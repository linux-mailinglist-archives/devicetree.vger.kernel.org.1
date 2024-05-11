Return-Path: <devicetree+bounces-66487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BFF8C3461
	for <lists+devicetree@lfdr.de>; Sun, 12 May 2024 00:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B61E1F215DB
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 22:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCA448CF2;
	Sat, 11 May 2024 22:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mPyC1yxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51FE286BD
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 22:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715465055; cv=none; b=HtZ/iVyUJhi5cuUY78K7jJQG7X5JmJ//et+BTJ5rIPFZI1/YOhVqpKqU7L57mvrcOCZ6d9WBxACyTH/s5+FF8cw1S8EvRHooIUoOwlur+C59FGYITdw+vZ2d6lmC5bAJ9C6q7GPH6ah2RHqMBFt54ukLV72jau+U5wP9ihYEb1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715465055; c=relaxed/simple;
	bh=Jwd9rhQ0JDu40ZBPuVk2gO1cB7XlxbXe5F6OjmzPxEg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qYa5bZhz35q7YhsXeWIIWE422+2AGB9xiTW8Uw0siqq8T0YfFgwugA1zx7OepfZBM7+T3+6Cey3Yp8QVFBUZYMUl/cfQOoOgseDeZemEmtvz5YfkeVcrT8V1dmeLvsJIRDnYdI848fq87KNn3BYGyCbZgafYInBd41XGY6kBXuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mPyC1yxJ; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52192578b95so3552091e87.2
        for <devicetree@vger.kernel.org>; Sat, 11 May 2024 15:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715465051; x=1716069851; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GSQqghrOzDlNbI6LKWKOXhmUUiNK2fY2zBkeOHld4FE=;
        b=mPyC1yxJPMutYjZ8kHgcK7rtLDfOp5/jKrfXj68qISa+ZmDwZ7nWjv8AwrnT7qW70M
         nAk9DiQb+6Wl0qD8G8erAHYWV6U2zFiJYoAkhgCCP6EFpohH+bnSsR3In2uuf++sWUBi
         dWic8MiNLKyWmjvPEWufcsIdiJdjqPgDCCmgKJnwlI2gsAsnxmtrkK7oL56noZhv3cQ7
         kLvhiNtTvkAS8MKtnJvwyEckuj50KaRX9TwEQVTJbp4PnlVFwPWexyQuHXmJBhlRZS4v
         Apo/rHDle6hCFxNdr5N8hof/9Ph7aW28eHEF4bZtzWJXTdqmEzUlvkgYUW1QJW5JdD4s
         CfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715465051; x=1716069851;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GSQqghrOzDlNbI6LKWKOXhmUUiNK2fY2zBkeOHld4FE=;
        b=ENVD9/N//gf02kOxisw8XC+zVIk1copoAN9d7KBuAjK/MkCxLuU+LhS2k6u1gjXg9D
         phsaIGKH5mYsyUmQn0+g4cFPdTCWbPwBtp2tV1LOMaV4x5fLSvef5KH0cXr7L5OP+JFq
         Aqc+Nj4DR2Od2swSectA94JXCuT8CDEorSny4zWoIPeO8SVZZUG0Qdb/+t25J3pP7wb0
         9SW7ZBGcWY1NhgcETk2SliN76tZhAR2mVhasBVbr5LDICkgHK6NZ0UEjpqwFOoCoGVJl
         DD4AOCRXQpCFnVsEL2iWQHWru/ZtqC2wHdQyUGBqzIraxusoQVhCpxiIUQfYNFFh3ZCm
         4G0Q==
X-Forwarded-Encrypted: i=1; AJvYcCVJHHaiUmYJGB8DZ0u3huO23JWzYT9EmGlpMEppnDGjJe1+KAx9Ovu7PR5JRT97gjZ56HvspP3AsjWuF+V6tZTsdJ+bQ6jheX0S8A==
X-Gm-Message-State: AOJu0YyhKtNk+3prPQVBOiz2c7hVDyqgkahpBvk5GWLkoemiD3fFGov/
	kqG1lvxzev78lOqwhMamdK+XmR7dAz9iFdyEsgIl+wJ494fSYrkHOCimURVavnWL+0aLNaZ3N3Y
	C
X-Google-Smtp-Source: AGHT+IEWIufQzwQM3cLRDr0gwKShoFgTIlNkdFnjWi1f0BhMJGc1z+z1PydMCV5C9hrPteXgv19Dyg==
X-Received: by 2002:a05:6512:3b20:b0:51d:2eba:614 with SMTP id 2adb3069b0e04-5220fe7a025mr4864617e87.53.1715465050938;
        Sat, 11 May 2024 15:04:10 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d878fsm1123875e87.206.2024.05.11.15.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 May 2024 15:04:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 12 May 2024 01:04:08 +0300
Subject: [PATCH v4 2/9] arm64: dts: qcom: sc8180x: correct dispcc clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240512-typec-fix-sm8250-v4-2-ad153c747a97@linaro.org>
References: <20240512-typec-fix-sm8250-v4-0-ad153c747a97@linaro.org>
In-Reply-To: <20240512-typec-fix-sm8250-v4-0-ad153c747a97@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1954;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Jwd9rhQ0JDu40ZBPuVk2gO1cB7XlxbXe5F6OjmzPxEg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmP+tX6+qiXkBU0JXiWCdi7IxJlyO8ZsvLk4cU1
 HGuVvpquWeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZj/rVwAKCRCLPIo+Aiko
 1Uz9B/wN/QlD9xubscmi2AT7q1HuAaHjNh11kLWGTwSK9za8pxSJW0O6M+LGibWZ37HQMFMto3h
 9EbExutNm0oiYMmk7FhIu95e9Wg17c/GQN+/CwYKy8SNKIISCf2Cpq4/n+FgQd5B2RJ7NolqmAy
 hmjR2TEElD7KGmPQdtt+1rgSM+OHFxqeSIRPvqTSnPaTrum/rWZAF1rN0kwJffueb2kdNFtvbY5
 tDnns93Xq8XMFmnmSNQyuYLtdhPeOj/XEttodJMQ/UOthp96zS35fUWP4h0ueNcdCa4r0tCm3hq
 uUcKaZ4QHByxKdwcVI04akyLjRIQx0DlEQpFftIvsu/UaGhj
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Correct the clocks being used by the display clock controller on the
SC8180X platform (to match the schema):
- Drop the sleep clock
- Add DSI clocks
- Reorder eDP / DP clocks

This changes the order of clocks, however it should be noted that the
clock list was neither correct nor followed the schema beforehand.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 067712310560..b92b6fb73057 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -3308,21 +3308,27 @@ dispcc: clock-controller@af00000 {
 			compatible = "qcom,sc8180x-dispcc";
 			reg = <0 0x0af00000 0 0x20000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&sleep_clk>,
+				 <&mdss_dsi0_phy 0>,
+				 <&mdss_dsi0_phy 1>,
+				 <&mdss_dsi1_phy 0>,
+				 <&mdss_dsi1_phy 1>,
 				 <&usb_prim_dpphy 0>,
 				 <&usb_prim_dpphy 1>,
-				 <&usb_sec_dpphy 0>,
-				 <&usb_sec_dpphy 1>,
 				 <&edp_phy 0>,
-				 <&edp_phy 1>;
+				 <&edp_phy 1>,
+				 <&usb_sec_dpphy 0>,
+				 <&usb_sec_dpphy 1>;
 			clock-names = "bi_tcxo",
-				      "sleep_clk",
+				      "dsi0_phy_pll_out_byteclk",
+				      "dsi0_phy_pll_out_dsiclk",
+				      "dsi1_phy_pll_out_byteclk",
+				      "dsi1_phy_pll_out_dsiclk",
 				      "dp_phy_pll_link_clk",
 				      "dp_phy_pll_vco_div_clk",
-				      "dptx1_phy_pll_link_clk",
-				      "dptx1_phy_pll_vco_div_clk",
 				      "edp_phy_pll_link_clk",
-				      "edp_phy_pll_vco_div_clk";
+				      "edp_phy_pll_vco_div_clk",
+				      "dptx1_phy_pll_link_clk",
+				      "dptx1_phy_pll_vco_div_clk";
 			power-domains = <&rpmhpd SC8180X_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;

-- 
2.39.2


