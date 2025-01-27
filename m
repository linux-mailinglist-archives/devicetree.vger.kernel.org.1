Return-Path: <devicetree+bounces-141126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49180A1D76F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98ACE163119
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 332EC2063E2;
	Mon, 27 Jan 2025 13:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B8LDTQd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42866205E1A
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985721; cv=none; b=T2Of771PPyJG7qxQCYgjbHu7XZmoGrr1TIXsHRjdsZ6kKbJhXS+vj+6xOEJSsdSKU+Ba4Rz/UPHi3BforNTrZrHaAHQipGUncbrb7wGRXeGX7EFlRE0tjoogiv9c6MN5pJm3t1P/fMXnMKODfQ4UOQgqcmapnR2HARA6d20klvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985721; c=relaxed/simple;
	bh=ZNWZ53OBefAHq+U39bFO/GXkFnaY3CgEkgNxkdiZPqI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AG4+Piqh2IBVaN63zaQJMiGwR0iY8iKWaVlXFfYMTpgjVlM/QNJdj30cwWM3cJCKh25PMFAdE1vBCzoNWg1eE43zFYUVPQ4+TqsXFCKc6Wl+ZdxdXq7jEOidcQhFFI0tL0Qz09UXtbIH8Szxuim7bytDmQBc85DgQ5cfZrynKqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B8LDTQd0; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4363299010dso3930955e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985718; x=1738590518; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=79VuYiWG+YdXhRY760GBNkt8BJQ+hNMP5KMAUVHB8vY=;
        b=B8LDTQd01Ng725dRGRbuUySTTgDUCVT7WxQgRIdexF23YBWnFIJMNrhBIsiCvH1ivz
         nREFwl9N7elIRzo1pkPxRGHEuLKvPSWldIm6+u+04Z1w4MoAjw9Smvv+fQOSyIwRnSuq
         m1NnX9s1r7rd8G5d1IShCf7nbcDaolfsx/qzMHr/wdZpjltfB0bsZAzhMG+AfgTjFHrc
         rDa2c2bZT/vscYRFIZfMeGCVnZ1Hl5NDy0VxOCtEHyDLbSAMwqyYEl9IrIMuiKFtUHSi
         z0clXWhjFrn1B1eIUmnYgd3+cOtc1/Go7bgepE3gBRgRNkjldKc/MeFM+Vzv1MlqF+Mn
         FDQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985718; x=1738590518;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=79VuYiWG+YdXhRY760GBNkt8BJQ+hNMP5KMAUVHB8vY=;
        b=UA1kvfAVkG/Dvk7Yiuwtk3ItJBBJ+8TQeHYjxtEAX6k+eitah1+6xHZVIntEcuQRzy
         w92Xf0bcBTIucPklar6cc96oCkU7G69wy4pyG4ZCSq0mdRw95NJbr7Onjf6u/gl8zR9B
         7X8TBlwArreQD0+uPOfceknQvYhwqxU8PIyZG9bSJo9EZKSigfL+hcICpJeTWIcM91Py
         F7j/IOM/NvEuMpbUULXwtbGn4myYLqOna0zZM0/rF5Ppo8su2PixMfoz78B7K+aTAWNz
         ZIzzIIkLrGNmZy4xpBhEa5vjdaZpun6V7SE06YKeulHZ1XekhP0WjTEJmxohsfx7zz5I
         P9Aw==
X-Forwarded-Encrypted: i=1; AJvYcCVDW7UBsQ2cG7gsTnpDFFtNiQ0qVDdiflt/Um+fKexVMcKMvwWs665/Xh4G03baXVmvrMmcTvxNVB6L@vger.kernel.org
X-Gm-Message-State: AOJu0YxXqlAAz/siKO7mCcc79Nv9PbH39ASCLVFJyE3OpKTVZ2WsSsew
	wPA3lwsfWZPoB+diATGnDfoX89DHFC5Urj1UV/C7ovpPevZdxy5MDqDp2eLF3q8=
X-Gm-Gg: ASbGncu9Eix5TyI948BQRO47/qCrhTJqgbAvULdrXJUIlTY8E18x66vkC90oOGnfUW0
	U3e/08sxjygsEcN+X97pGYK5iPzOEtQvYxq6MJ6iLiKBRyc+ISpqT8fOr18N1YhZ9wcaHWUVACW
	qZbbLpO9gjnbzH7xGIIusWxSk7ziCmccdrsZ0JuGlzlcuRRbpih+wm/VfenquIglYN7hPABQFNv
	XqgR4EYGAis6YuMcXKrOAZzocjTSkjJIFzXHwe9Kr2RwFinTcpjZfFNsoUe1w9FimYACaocmBW7
	n+7Vrm7hcjhD6cl06Bc=
X-Google-Smtp-Source: AGHT+IFIf54qA23eh4T9bUqg1Zo8GrAU3j4GgDYJj1E5G0CMaHC0UfYtPwHm5WxXURw0EoE8aDk0IA==
X-Received: by 2002:a05:600c:4743:b0:434:fecf:cb2f with SMTP id 5b1f17b1804b1-43891460b86mr146306465e9.5.1737985717848;
        Mon, 27 Jan 2025 05:48:37 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:57 +0100
Subject: [PATCH 24/24] arm64: dts: qcom: sm8650: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-24-9d8ddbcb1c7f@linaro.org>
References: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
In-Reply-To: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2280;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ZNWZ53OBefAHq+U39bFO/GXkFnaY3CgEkgNxkdiZPqI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46USSj3kBLnNAOz8JkBctwkOUt5CZ9MXTC/d
 yHzQU8sDU6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOlAAKCRDBN2bmhouD
 1wYvD/4gN9t5/79kex56ZlZ8tA3pa0ZszOSk70ssn9R16hp3+Jg4PvY4b3nn8ebBSAAJpdNiAD7
 DWFws4yMLYRKp51T2uowCYw46L6uIes/zOxs58clUB7wkUBQhcpoKJLPrLrgKuSKsq8aXiGju0y
 yR13GJGdCiTWdgDyUGuL8o76Hqzl9tU9QMPbGjpyvrG/YCmSIbWIxq4/XRV2USCBCZV2pJpVEd/
 /9BrkGLeUuv8h9pKYzspb/QvZg0zcsuuui0OQNwtdj/FBTAyyKtPcvrKO/vXJyEIC6xKFUMPkww
 YgVSG+1NaNMc7kuELjbuvNP5Fpj5VniFhP43djK+YiZQsZQiROIro6KJxhIOxjSNFrDuocgJnT6
 EwggS9qCHyAKG7UZJu4oTMlqQJQgktqWTZOulLBaOw6QCelcYy4ol67qLZeedCtC3CqbSFOUF6V
 mxMMZY8mJiXJ1rdv+PXmblnvSIM7cRLS80bhGZjLe/G2spJSXW+oR3XJRAPM73pZ1lrNQxr0b2o
 NgRtw72jJy9Hm73tJ8O7JmwUqEENVxRY45a77/5Efxsjtcc2m/+ZqeigPs+WyQXG7e4PG4v8tgO
 FXJqh0SBwXJ1s6l4brDiJhFLx+yD1GfaoAxgvuvkQkakIoBz8JFonjqZak0fOOd+O5fpAUnA7Tl
 LFGHRv+OREZNaww==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..8c26520201e5bd2bc830356d9a21d9fbf9897dbe 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2023, Linaro Limited
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8650-camcc.h>
 #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
@@ -3775,8 +3776,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -3872,8 +3873,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -4020,10 +4021,10 @@ dispcc: clock-controller@af00000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&gcc GCC_DISP_AHB_CLK>,
 				 <&sleep_clk>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 				 <0>, /* dp1 */

-- 
2.43.0


