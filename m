Return-Path: <devicetree+bounces-164243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD67AA7F9D5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFFD93BC6A5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2A62676E4;
	Tue,  8 Apr 2025 09:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QwH5mKiT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD49C2673A9
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104761; cv=none; b=jv6hy3Bek4EJ8KaLdauFieDqbB7R6EkM3tQDrcYeeVnkjYWCs0B46PPkhsvokYlhpkyVphtaE2mUz05UrStH5IlT13LE7Br4+hsoLIIlG3CPBrB4GbQAALUcZeDGwEX45frXW55PynYCr6GZoCkYZT9jlBqNZN95XGrK6710xGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104761; c=relaxed/simple;
	bh=11Hd5HnV7kfReVnrItjpPtvp/L1BDLvmY9cfzCu5Fsg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=t7mbk3gVXuKle+X/+udNwcdaXU88G7kOYyMkLolZARgt7LmQoUdwoUIsKn//H6ikiVlygP8NT07SnQqHSRXWnIAFx7xFu3jSsOxrWp3QAr/YVJF+rrUJmT3rmN3YX4UKDDYtkS7Np3GfpkWz5pvGN/agxlckbI60CsIoWbY7yow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QwH5mKiT; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43ce4e47a85so4655295e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104758; x=1744709558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C7E5Z/+qyVY6esqxTlwc3DDJLa3PIGjm/JrWlUHSiJo=;
        b=QwH5mKiT3ZpFfJKSx8jo91Jz50EAJ1DMKLeuEBuV89R0fEiXDX7mEaN7tdK0eIeHdR
         yEc/VDxW8ZXJhsuROWv98s5307JqRKPTfr+KwGgxEgz6ZUr+oRRT1tGocWe349kWq7K0
         v0V623Ko0UqbOJoi/NMNGAgKjNP0jTnKt97C4hr9iOQ3v5M4bPuKfrwFCWGQPAkB7ude
         +uQccFrMg3aVrB3KFwDaNN6efY+VplduqLawL4GuG81wijQmVXki7X1vJlc6L2MP5hhj
         AA+dfeO0lZOjBvk18s07wCTvslvMB4ESA19Kxp8GYfZecNBLMknBsRH9lWr1xx4967JN
         Xo0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104758; x=1744709558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C7E5Z/+qyVY6esqxTlwc3DDJLa3PIGjm/JrWlUHSiJo=;
        b=Ai1uGD1fiyT2ULp4oirmdjs1AA1wUWH4Y8L1KUhgUw1W8LQLtpLJbLucfjktweVIYu
         EIopVjJyzB3gdGcikpgXfGU2bW1Bk8fQwhbKTOyumb5oqjbPR7Cz3XW+JqJSUYAgUnJ9
         tdfyFhMPbysQctx018ikjhcOAxQS0Ioh3nC6KfGTh/KtNylroLgbOrfSRo4igl9XRJp2
         gHKvTniUlgypoi7pEEXYsGOHX07bhVA6B23b+7WdRktuF+b0nmuKvm4kAw/D9urQZ/c1
         egLYtDBXcI/yOWH81NRKTlCp/ju1hshkr/D/o3pA/+N54JsoHILYGz5CB7xoh5PP7JT2
         Sn9g==
X-Forwarded-Encrypted: i=1; AJvYcCWhosnT7ZfF5LRbQDzZZqIcUFakZDhHXxoIebu6l0YgH5A0VdaWhDPQiKf63WgSlHfQ8o9cLXSjWdK2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmxknsbd1DkKilvso7+jd8jTVIJMrmk3IVvZSTmuXbvIV0oBn9
	amwgfNcKFPAp16uMpKy4TXj9FpgPsP0qLShxsLxvEcvNFWhhhnwFDXsNeiJ+xEE=
X-Gm-Gg: ASbGncvicvB/1+ULaClvsxhLAQ6749r+lvwGD5yle5Ti95lRT22NknQ9bCPpRocgEQ5
	Xw4J3Ibv4BriWcWD6RgdG6bid41T/G3QsmzfnS0TxXcNjllTeonddm/WpqG7FL9aU36bjksDW1k
	vLNllKAglIRSr2x9yyvGOcS05U+zYGqoGXgk2yZTdE/NePMak30iDc5J4OK4mng/Rkm3R+exwDh
	9rMoH1golzNA+4QyAZuyiO3ez1f/z474ttG9SA9Vu1gEhtWrWR6sYJpINLQukTo4JYuc89ktrcy
	+yquP1b0PzuDUg4sc2J44t5ia4aTlZ23sG17OurDL1l1zvQP8mhP3bVQIdLPQcU=
X-Google-Smtp-Source: AGHT+IFmNfEe56f/LlAdrJIZMCH9ichDd4ngGA8qr/fZ9Hd2AbbyH/Y294+3Eszmdg5URmXqwh3Emw==
X-Received: by 2002:a05:600c:35c2:b0:43b:c962:ad29 with SMTP id 5b1f17b1804b1-43ecf81e058mr48386915e9.1.1744104758191;
        Tue, 08 Apr 2025 02:32:38 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:02 +0200
Subject: [PATCH v2 05/24] arm64: dts: qcom: msm8939: Use the header with
 DSI phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-5-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2064;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=11Hd5HnV7kfReVnrItjpPtvp/L1BDLvmY9cfzCu5Fsg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0aMS59ModKmLO7bqdirF4tFzrhlMbv1RorS
 VQuBWhPZ5qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtGgAKCRDBN2bmhouD
 19BND/4ve49fNtc2CHjHlvOM5w6thpnKC01w/OEpHPRN/8ZInukCwYcpRiuApim0yseJSwG8QQT
 w3wqsjaefuCHajribM6wbLQb5JadEbPk4au08PdlUylgbduwwQMPn0aq8vt1bPkfnOp2H4u2cBl
 Se0kNFinSFMiVHmDyK9y2xrHN4mBJRUM9CnKqE6rwLzGhgNW7icYwtfCX4nYF5nMYFFPsttafTQ
 5zoypHPw001tXbaVkrWp71pMDoyIwcirl/ip1Fv7hAfZwLT1gwbH2f0UYQXjRdKJ6hXsRA04rmy
 q66Wc7MOJ/0uER4WioCV9uI2VIkya/Xp8Jom9Eqh7C8SyT3LUslv9mBs02F8n9BFqTqntvyJ9Xz
 1XTAQlKCldHiOSuDxNin/5RoXooq3qC7y4bf3GpfjdaL6HNqs05ZbskC5Qmuem5piXNKHms84gk
 XMsOAQlO0SBOC65RI+mjnFbQQypIROoYk6UChAWB1OF9MXsfWQzg1sTfRs4ufes9c6TSIpdpyJu
 lMvn5H6ZdmVy1797gImObTqtwFQyfKDMfAFrYvjy7Pu8LmcobQTDg7DQSODjtdm91vtEHPvqG9t
 rH0MxV8vEXrOE3D9CIk1s7IAyJA4XaF+sUcVG+a/ORdozSCGolC9b9DyjEU0S/VtkOSHvhBNV8d
 ae5AFUA2NQIXcoA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8939.dtsi | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8939.dtsi b/arch/arm64/boot/dts/qcom/msm8939.dtsi
index 7cd5660de1b33def5b9dc8a0d02583c3eaffb17f..5e8c3ac39de8b1f974a7e1499c7c805f21735569 100644
--- a/arch/arm64/boot/dts/qcom/msm8939.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8939.dtsi
@@ -4,6 +4,7 @@
  * Copyright (c) 2020-2023, Linaro Limited
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-msm8939.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/interconnect/qcom,msm8939.h>
@@ -1172,8 +1173,8 @@ gcc: clock-controller@1800000 {
 			reg = <0x01800000 0x80000>;
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&sleep_clk>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi0_phy 0>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
 				 <0>,
 				 <0>,
 				 <0>;
@@ -1291,8 +1292,8 @@ mdss_dsi0: dsi@1a98000 {
 					      "core";
 				assigned-clocks = <&gcc BYTE0_CLK_SRC>,
 						  <&gcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				phys = <&mdss_dsi0_phy>;
 				status = "disabled";
@@ -1360,8 +1361,8 @@ mdss_dsi1: dsi@1aa0000 {
 					      "core";
 				assigned-clocks = <&gcc BYTE1_CLK_SRC>,
 						  <&gcc PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 				phys = <&mdss_dsi1_phy>;
 				status = "disabled";
 

-- 
2.45.2


