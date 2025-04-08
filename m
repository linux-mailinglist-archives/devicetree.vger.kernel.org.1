Return-Path: <devicetree+bounces-164245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B81EA7F9DA
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 996DC3BCC5D
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A17526772E;
	Tue,  8 Apr 2025 09:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AbNfU+O6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BB0267704
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104764; cv=none; b=Fptl5NSnPnBJBgjqR4UI8FDx8vK19sExZ2z9hgrz21+FU4DrKtiCPGE7NKxVam64w8riS0LN0yQ/MxmKY16U8oHOHvKOv41507uLjkjWhqA+jI9Y7llvB4r9jim6/n+jnfebXN2gFcst4HmuQW6twrLuoz+HJQJWyhGiyVq7Um0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104764; c=relaxed/simple;
	bh=nKtT69qvhwRTk49MZvN2v7X4GaZFlj11oxGVqHC/0w0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nil/AbGfc6CSUUtXXH1/qrgDKG5Xl9so8c8vuM3+PW4B9uGuMa1/0LIiaTpj/hYZacQAekKQlQAFXMOgUFnf+lOL3tgIpwtimQo+GtBaISMWod0ZlS9LYsOw1/4uIP+gbWdzA6xjmMR65bfezOarcEsfOjFDBwf0IoivK34qvPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AbNfU+O6; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43ce4e47a85so4655465e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104761; x=1744709561; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ke4i0sccmYnkzIeEfcvgwv2Qa6GTLK3zqjPfyL+K/do=;
        b=AbNfU+O6lvQ6yds9Vrm5LMilzORSvQ27FjlkU5yKXB5Jrn+CRusQ7tx1VcyoUFD6DN
         mVLyxyp74Z1X8ZkNBeJRNBQuxmqkBUYDO9AgZ+FY43HMEF/jWLLsjHnOW+v51YKmR8HY
         eTI/9p7as6DTnYtRKeapEP1F1JfTBZeWO4fczoq+oJxWZb9xjgdsJ2pXDlfciV9ZRCOB
         4OS/FffvN+84m7PPgY7bmx1C/AkbMq8rzIqnH/toUAKHEe3t4DZFwCNq6Q9aDApkxnlm
         bHB5MoJE5E9m32voROgWWnKnZG3kliyUn2r451PmzfjRyl/vNxD8MxKWiuCiYg8eGw75
         1tWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104761; x=1744709561;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ke4i0sccmYnkzIeEfcvgwv2Qa6GTLK3zqjPfyL+K/do=;
        b=t409ctxwj3R+PaPaebocuLbaJSNE+dkWkL3Pfp90nP4hxKMOp3F05k6Ie3MYxyon9R
         iu3Vpx6Ow9YZrLWYBRezFumRbFpqaERObBN5OMhGeDZKohXlGdBf1xPxbXMOEv2Ih4yL
         iCjzh7v5d5SpDdGZxTWcDPkkJCNSusjCPa5JGvkgLl4oTeur2teuz7pA/6qVEAgLMLcc
         f02V1WyzbD3pVxzJBVjY8z56BqB/mWN5fCPZv1rJ4BvC7zwC2N6pymsL4R/5ujBG7kjU
         BIVNbY84Qi4A//yMww5mNogP3YGoozXLI+nwFNYollHtWQtj6d7HndZHU7CG0DkO/FdS
         /Z5w==
X-Forwarded-Encrypted: i=1; AJvYcCU6jV4aPUCiEnMV/p5u9027X7Xx6gFHcS8e+004aqz8ZYWBPmE9L9dqq8QZ+j7B5eDXveOdVINx2geN@vger.kernel.org
X-Gm-Message-State: AOJu0YyhrQCsVwfbhSoifBlU5GbPupjTrL9oFniCaLTHlEfSE0Iv87Ad
	vA4BbOw8uRan31FtrNLaImdQNKRB/PcMhmTJHvkuQkTXpjx+gHhSlGc2h/KzzSM=
X-Gm-Gg: ASbGncua2NeYIQ0jKqJyJrcKjEIV0hGaf4ILnIuNCP6qWH1PmdzzlueETzoepHSOLv6
	ah15WZBrMAERumB2my/p6+/GGiIvww57VHRzfpxBW39aizRncXmdC69ykro9NJxERvbsOB6umlL
	4FS2ZIXlbfXaMyaLNOdTn3Fy/H2FXqVrjP17n6U6IOOIOhLwmRMxpA0DoHhnfVdAd5HpChZ7K9N
	3XPEJjOMwGwvLj1rmIorvn3ErP2dnihkDDWx8Yd4v+WZUQM7Ggsp2rKFLr6z3JPv4nz9QJd/ozn
	jjtX0qbXYBBAgr+h1wh4CoVUpgXeG+BAt+HTybnetTNMzupnQ3csnB3ln3BPYL0=
X-Google-Smtp-Source: AGHT+IFu6McdkHFhsucQjj/v/FK75uWflBzaZ84B4oOwfaXDnBmn4UN/BCAN/YPn+GO9M/J3OJbjPQ==
X-Received: by 2002:a05:600c:3107:b0:439:9a5a:d3bb with SMTP id 5b1f17b1804b1-43ecf81d976mr54258625e9.2.1744104760926;
        Tue, 08 Apr 2025 02:32:40 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:40 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:04 +0200
Subject: [PATCH v2 07/24] arm64: dts: qcom: msm8976: Use the header with
 DSI phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-7-73b482a6dd02@linaro.org>
References: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
In-Reply-To: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2187;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nKtT69qvhwRTk49MZvN2v7X4GaZFlj11oxGVqHC/0w0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0c7KEW6xsI8ire61ZwT1f6dnJjArEkk4tBZ
 zVgAAJrfDiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtHAAKCRDBN2bmhouD
 12EAD/9hE1guHJBwFmnLwtgjFyCCS2WYHdiViotnpqB7Z9MHMxZcSKaOyRDgBNi8UuQQGQryAp1
 HfLt7z/W++ppFoZqGWWoTLSbE90MSxYy0N04Knmo4nPUUVHNM51Hd0HqLvDdImsCDUHjuB0J/WX
 1njAxyG4uP+XVzPmU+zxOnB1ASBqd+vbbzkeuo7uQ4U4fB36daxeCo8G34+fLt161Ld3HbyUPRQ
 wbjBi1tVmHtBS7ClGXfI066fxVULwYwoNZMJVnMb1EHz/fxrwZnOFzawk/dm7vqz2SiKSc7PtDh
 JEwRJYUO/wJXqoKGQbf99VHgC/Gpsc3QPcxZV22DlDiNX96Df+Kz9wlL/sEBr4nrsKzDxKkuWvT
 KecD7aBZdbdpBLClq4x7CMOlnsC+hLSRaNeMUmzTNhhl2R+IJTmDutFjc58GWtovnMHyeRjdwbf
 SulhnPoWo1xN3j0X3dcbFpZgeuGSt9ffscaNhSbYDhswmelTKH+58HCdTbbEytXxzsByki5VAEw
 tB8g88p0sCfYVZhrtRErL0oRu+U0LHudMACfWLS1MCJnuaVMK6ETeujzF+yZMTBXOeq/EdlLAH5
 /3YlvQwteOoeWpZmpJhTGSee5mV4ydJmR0PLpKxeDSQYHm1DctoxX2r0NsA8rrzKAmRBTLHQ1HA
 NbSoCC4rFZskTjg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8976.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8976.dtsi b/arch/arm64/boot/dts/qcom/msm8976.dtsi
index d036f31dfdca162debe18ed6ed9a7767a34aced6..e2ac2fd6882fcf47e846a92d45e0fcb9beba633a 100644
--- a/arch/arm64/boot/dts/qcom/msm8976.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8976.dtsi
@@ -6,6 +6,7 @@
  * Copyright (c) 2022, Marijn Suijten <marijn.suijten@somainline.org>
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-msm8976.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/gpio/gpio.h>
@@ -824,10 +825,10 @@ gcc: clock-controller@1800000 {
 
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&rpmcc RPM_SMD_XO_A_CLK_SRC>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi1_phy 1>,
-				 <&mdss_dsi1_phy 0>;
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>;
 			clock-names = "xo",
 				      "xo_a",
 				      "dsi0pll",
@@ -970,8 +971,8 @@ mdss_dsi0: dsi@1a94000 {
 
 				assigned-clocks = <&gcc GCC_MDSS_BYTE0_CLK_SRC>,
 						  <&gcc GCC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				phys = <&mdss_dsi0_phy>;
 
@@ -1046,8 +1047,8 @@ mdss_dsi1: dsi@1a96000 {
 
 				assigned-clocks = <&gcc GCC_MDSS_BYTE1_CLK_SRC>,
 						  <&gcc GCC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				phys = <&mdss_dsi1_phy>;
 

-- 
2.45.2


