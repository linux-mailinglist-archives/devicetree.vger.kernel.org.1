Return-Path: <devicetree+bounces-164251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A12A7F9EC
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:41:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6BCC1894EA6
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:37:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 974DB2686B1;
	Tue,  8 Apr 2025 09:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R4pqz/UG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BE2A267F58
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104775; cv=none; b=hxl5MXGau9e/NqhxmWcvIwv7zRE4kWVI89+KOOg5taKaZgl8CnqnSqcDrnxzvY1mp+uyIi1eSo3/6X+hgad3gkm7j77E14wHZP8dhlJ6EtuZ4+WrSfMpZq9ZcnOoBMnReutGSxI2LVxxLtJ6J42lyFCvvTiiNS+zvRRS2LgMPQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104775; c=relaxed/simple;
	bh=noKAuGYc/FuXpXpzswCrqXeAdlgNvT9WSYSV3NjT4xg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Qe9OJvKDSYL7df9Ny1NOP+mPih7+zUWGgJqiDv2j0ZkJta0R3EACvUqBpmgkZSD1Nj/KF1vbrTzzZ2duN2TK3JnWmCnH4/F4SXB7GULgcsoWKkRSUKs/Spz4T6G8gA2pOyPcs0qZHTXketmxWby8a1In+6NCkz1f0/rI0qHSqrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R4pqz/UG; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5231085e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104772; x=1744709572; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MJrhV1L8g5th97zdjtHrEGnjKRK3uNf+lknaQaxDFg4=;
        b=R4pqz/UG5bXK/KKjYUkqByrxEiclyEHxe0MIlwZ2pt3r555SpL8Q6dJqrJliw5h2aL
         LLDB9++IAL4v3O2rYEMX9x61f7gYn9NHuQh1l7FSZXKRVRtQPguuPw4MQRmvU4PimFCQ
         APbDOU6Q6L7afiby45uHRc99w5jTMeBYzxpwoOiLEIRWRM3r/k2GlIc6WU1vF+5pZ0DL
         ubpQzkzpBj8PFuwL7tcV9k0PgmFYCWEmAbw3bVhVNoRLoHZrRoDUyCo5uq6oRiPPMSBg
         lmpoIBM9jkHfcWHFvs7VNK43TSn/Ys21smfekOC6ZtvT9RMHKIJX+9BaeRRfBmniAVNc
         NZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104772; x=1744709572;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MJrhV1L8g5th97zdjtHrEGnjKRK3uNf+lknaQaxDFg4=;
        b=f+4tREMLpnSvYgvSLEjAE1X+RPKB4z0Tw0/Spra6eOBMWfJ3qsUvOuPTgzVasADllU
         g07v6jvCViX61rz2kLZFgsWXBA9LowkzX/FUnraF+iti+DUGu4Q+EcGNpZw6PKq33GGL
         uGrnc1pMqG44tMk5FQBGWYnf1s7aurpXFsCCm4/vf3LGfKyu2+zXPMvcbBIis9/RSLRq
         aPY6pmcyHjwmSfIBKoJeUKk2+MJ/dKhoA1OnKMy+fIprewpL95NWyW1o2LQnv2peLFPu
         sYZLCM6Yz0UN3v0nWoJC2azBP4FhX8SPtczQHg4G7+ODNJKnyOolTPdSxOf+ysNwnfA1
         kYjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUjywMt9pXKhILvYXdjZaMgtj/3nQRXoaXEVSq4X35GfBR3ftAQuE9HHW97/ATRTgXInkbgb23ptc7L@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbqu4bPNevLY45NVGEn3qAAoKqT497dM35EChDyLi8L/ouEBJl
	AqXF/sIADXpLHGAtlwaDKJ9iCNP+hCnpgbcdx9Bqb/PRBsZlA1Qj90VzIXyxebc=
X-Gm-Gg: ASbGncupScwVLtMXNy+67QifqKVT3b58drD5k5KrifdQfnXj7tleeDeHAZWfS6Q6Owc
	psiMYLhMJ1X6oPVs+izW//NmbbnOuwHQOeVLWrrKUNrbQmMUWPa7QEjz20Jl88N7arra0i1nFyC
	aA+AJ/e1ZEkEPT4+Z64WqXG6CAFhI3mAjiSRaOH4I72Oph4rd0hFjdFzgUcWDmCzUxopyR+osoH
	KUn8SF8Ij2+94pyycPD2aNvtXcYU11c2sfIZgchEPH7kKRioQta8fKBmB38QscIB/0iIgSZMURS
	nZXpuCSwc+h3Irz71q5KFVro7s6l6ZhozvmZ6qnnDEbPrGXcXouNjT45cBnbtnA=
X-Google-Smtp-Source: AGHT+IHMqikLDAtX/GOxngxzLAcI3sXh7/4Yj7BQAqmgomd9bUJ7fXJ2LUMoTpdnPDnO8H6rRoZnHg==
X-Received: by 2002:a05:600c:5107:b0:43b:c844:a4ba with SMTP id 5b1f17b1804b1-43ecf85f893mr45735195e9.3.1744104771911;
        Tue, 08 Apr 2025 02:32:51 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:10 +0200
Subject: [PATCH v2 13/24] arm64: dts: qcom: sdm630: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-13-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2793;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=noKAuGYc/FuXpXpzswCrqXeAdlgNvT9WSYSV3NjT4xg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0hTLrK8BoShomUd0Sj9HR0OypaOvoVHiSqg
 8m+GhFhoS2JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtIQAKCRDBN2bmhouD
 13IdD/4pQby+GnX5PgpVQ3zC/znG8P9FUPnANUG/hXOB2KaUxnbTXWxdNGQQjfS/WNRH14Yk1Pt
 Qp3OtS7hb6lJK8lEUhkrNYFbxBuQ0K5VSeeD3iq7h06T1t6ApFkR2wYnLQ26lrQ+wgCVkFLZvzq
 Z4iLsLu7bPqAIylBLr4CuHxrx4XhEtFBkSpoi6EnMom4hseMK4VtjIox6tj1NygRMMWwLhsRu1C
 G6vS7ojI+ibDIr49HV/q9wgukZvGI+zRhVe9sMoBXyV3mFe/UIiYph4Ws3QEM2v4s6tEa3EjylQ
 ht5rxQzplv1GeZwfPljH9noHhRr2OufICpMS+hjVRhCFgiXVXUbGjbk/nywztiw1JLpCPyNRId2
 61u3l3tiweRNvkKwXfJrDhc/Yy9qPn9Xwxm1pdCA8sDKD9/Q6PCmjC8BjKMAV1895zKobGtDL0b
 pXooBJiDwyQXZS80w/FSxQZg3JxvUWw4HUMkmLR9/ULeNovwZQA3P9CEScn48t6SHeVbfMaOkHU
 LfLN2GhfPuFljrPejaAl9PF628+VP9wOOrIBY921G/FsslF2WlFazg+sTWFE/cosA7gnPpW0IWZ
 pVxbgPeIy8IIEBlU0We4tT1XsE3uweSgYYnXiJFb0MNJJICY5uUCOUwWxrvRJhzOaz/Pgy5yRFh
 K/LZgBB0iDWeTLQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi |  9 +++++----
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 12 ++++++------
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 3722e405a97cb096b2085a4a21b3e15f06849271..2d3820536ddf45fc9cd96ffda3e9cc64b1e6ddff 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -4,6 +4,7 @@
  * Copyright (c) 2020, AngeloGioacchino Del Regno <kholk11@gmail.com>
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sdm660.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm660.h>
 #include <dt-bindings/clock/qcom,mmcc-sdm660.h>
@@ -1541,8 +1542,8 @@ mmcc: clock-controller@c8c0000 {
 					<&sleep_clk>,
 					<&gcc GCC_MMSS_GPLL0_CLK>,
 					<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
-					<&mdss_dsi0_phy 1>,
-					<&mdss_dsi0_phy 0>,
+					<&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+					<&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
 					<0>,
 					<0>,
 					<0>,
@@ -1664,8 +1665,8 @@ mdss_dsi0: dsi@c994000 {
 
 				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
 						  <&mmcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				clocks = <&mmcc MDSS_MDP_CLK>,
 					 <&mmcc MDSS_BYTE0_CLK>,
diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index 3164a4817e3267d458d81cabf2ae4223a7a94963..ef4a563c0feba7cd651158cdfa1b4d3cb7503c7c 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -170,8 +170,8 @@ mdss_dsi1: dsi@c996000 {
 
 		assigned-clocks = <&mmcc BYTE1_CLK_SRC>,
 					<&mmcc PCLK1_CLK_SRC>;
-		assigned-clock-parents = <&mdss_dsi1_phy 0>,
-						<&mdss_dsi1_phy 1>;
+		assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+					 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 		clocks = <&mmcc MDSS_MDP_CLK>,
 				<&mmcc MDSS_BYTE1_CLK>,
@@ -239,10 +239,10 @@ &mmcc {
 			<&sleep_clk>,
 			<&gcc GCC_MMSS_GPLL0_CLK>,
 			<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
-			<&mdss_dsi0_phy 1>,
-			<&mdss_dsi0_phy 0>,
-			<&mdss_dsi1_phy 1>,
-			<&mdss_dsi1_phy 0>,
+			<&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+			<&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+			<&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+			<&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
 			<0>,
 			<0>;
 };

-- 
2.45.2


