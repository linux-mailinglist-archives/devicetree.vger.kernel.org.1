Return-Path: <devicetree+bounces-141125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79018A1D771
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 360A43A7C35
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49A102063C6;
	Mon, 27 Jan 2025 13:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ECwEymLU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D87205E06
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985720; cv=none; b=DUw+tAYrgjKu5DyRRDaCBd33Dy7bVYjotYeDKdemR7UZ8ibuCG2LkeppYomLn0KkCHfqvOEU3uNnVn8actbLUsvxpjffNNkET8QfBNCzp1dZL+2s9Yhl/FJFLIbNHqj2rBONbGg6mkGXMzv8kBjsZJFA9AZks4tX8AIgdiSRwYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985720; c=relaxed/simple;
	bh=L3a2WacjZ+MNx/dij2um88p3actXpiNo1WNj6onDK44=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ghXPomSP0e3rQZ3lpUOSVq9xShfhf/XN8eZkHgb0mDTdN5d5sl5ia6ppsJ4XF0Dq+WmM3TZTYvgTgTQJqrzfO6GCB0fR+ov8uhI2gy0biqJf7qC7XLoH6oqz+NpNNKJzumE7aNKqcrEK7uZqw4fuRQCfRPGFjSHedAhdRVfKilw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ECwEymLU; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43616bf3358so7277905e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985717; x=1738590517; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qpyS/JMEgIOlxoS0lYjkGpyZVyMAhIc5jQeBdSOZ92I=;
        b=ECwEymLUjokHRj8lpQEwgHyB3HVc+v2ZegcpR3K8ucKAUocVQBD/lPLW5/r3yqXCHh
         C1LVeJ6hntX4kSOL9wE3iH950lccsOgjrz0rtQiJf7/F5mY90pQXZzuJVFoZd+txipw5
         Ri8f2bOfaJg3zOZja2vnMNdL+M+WtiJ2J9QGq0p+unZDoqPuAB8xZ2TqmNqsoM82hQk6
         l8+l6ODa7HOPzcWmybWKlYV/pC4d4R/k5Gm+ZQISO7G0lTAK+xUgnxYVkFGLzI3qR+mH
         BJJIUoIPU/a8QPBy/oK0BhD86wMjinkP63ismc4HuqOvlfOolEyCEsEUC1XhKYSQFmY6
         T7/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985717; x=1738590517;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qpyS/JMEgIOlxoS0lYjkGpyZVyMAhIc5jQeBdSOZ92I=;
        b=Sag5yrA5gC5PLrIFiPTi0rc5A9pbbY4hsyI1mmQu1dnesRNE66olWd/P+LDS/4FVt/
         CbyJaJ3PMPEZsuw1yxcvwvpZo25HuQKXw/5Zv80grBHCB71zrNvOS/apsjZx5DiWLJCR
         CawxXAjYFUQiJg8lPja9qjTfTi7AAaYkxBxICc6EANQuuK8nkqMOriwb50/ip+iKK7mM
         RW0wmOdh43LI53IDqgSRGdr8ZGSuwb+JriurryvgJPOSuVXLwKFnfW0LxLbv25jWQ7ET
         pli5tI2stDZcIx5+CXTghqCqOm8W4GvBj/f5uTWrVjNixWHNWU4200g7CYyHCqm3XKif
         onNA==
X-Forwarded-Encrypted: i=1; AJvYcCWGj+74NoHnQjQzKPYifq7cbXPvmr7YBlsKVZ5VNeyr3vB0QH9Dcv6HvKT27PFhmMi2QWPauYgd1Llc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0GH8KZDDGHzBNkpd2RWt9YnbQFXkix/7QOaP0EnbGmN7F2lF2
	AHN6Bfki9CITe31ylNFSst4/Je5jkH59fijB/0/ewTOgAHaV9neJ81TWI/bY+Yo=
X-Gm-Gg: ASbGncuLZZ30jRKn+1WQZl7iyu+6GyCSyBW5UUyJyOkQWqRnz1ot2sNbn+dBfCfkBX+
	5CoSE/uD0SV7VE5XjvvfQ/PiPjRdqZAA25BdCE6UpMe22toZ9j7xrtcEAAXtpR0NxOVLVm7EN9Z
	c5FlaRGcstoQNHZK2zwtJuWzTUDpGjvD6cdfz1Gwbr/sHVObSt89eQCcdRdDD/yDLihM0IVDTCe
	e5YjLa+dmUabgM6IUWA62KsmNtxTiO/bftjAOrRMYz6RKQHFvImL5DoUNusDH6NHA1l2rmJLXYy
	TMCiUbSB34O0KUphxmk=
X-Google-Smtp-Source: AGHT+IFpT+ZmK0Rn+X9cCVbWv/dHMHrV//ZcB5E8cYpjKg8/txXg9QACxyN2BTSuXx355bjNEpu62w==
X-Received: by 2002:a05:600c:1d07:b0:436:17f4:9b3d with SMTP id 5b1f17b1804b1-4389141cda7mr141187125e9.4.1737985716749;
        Mon, 27 Jan 2025 05:48:36 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:36 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:56 +0100
Subject: [PATCH 23/24] arm64: dts: qcom: sm8550: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-23-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2281;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=L3a2WacjZ+MNx/dij2um88p3actXpiNo1WNj6onDK44=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46TnkM5SGZUK9KFCbvxqJIBzBRyOmbvMAG+W
 xSaq0W+QouJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOkwAKCRDBN2bmhouD
 11BZEACFrhJ1CGDzkhX/poCOGrQshAWPdxCdDiRfZjsBECLVXuECFhT3W6RlkThbY8uD48lomvI
 rYrWvz1EDHG5ihXxKooXt6wFf2wWiBfUzWEs4JVe11gMRBgUUWtSSnVk5AGpdx31ly334Nju9c5
 iuZVcT2KRtiPAGSN/fi+VuoCDKsrMp4j+FjnUiB7r4tfjRXl/TKnxFV1im3kS3oociRedz8PozZ
 WCtn09w+kqC606l+r0NgMHKJevCJ4karpVg7MtUIqgbzriZLvyn7jkU8ujKWohS4pmKeBGw8Qu/
 RFp1Dz8SqjJeiynj8yTsqH1xw1uJvvGu3ehv5nubXC0zxHQmKRYWsx6OZR5thuxBViCSZy3AsP3
 VKmLxjiZllAREg0WU2iO2/4ynheDJZ/KlWEsZnkOWDegWwA8XcorIsH4LVkIc6WOfRAO3rjr3Zc
 ZulH6qJP1B5jVwJGVkMcMHUupT4zcxp0FsuNdGYFPP0VT02rHm3hwipkyWeBuiR7DWp03oZc+Wy
 Dqdpy6mYOPpop/JTN6BQDiU6UAVa7olzkFcrLYSP/tFTvxOpqZTBd6Ym5eKhJPIOLDZX4z1+Fvr
 rBPPglnYg8AUFqGOF+qLddjyHhk04inGw4g5dvSv8cT2Sz1B2TUNzBjh8lltKWXyf9JGSXbl9JC
 UxdOnnYqnm5YdpQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index eac8de4005d82f246bc50f64f09515631d895c99..20d04488274aa0fb4b135008d5fcc45315595c46 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2022, Linaro Limited
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8450-videocc.h>
 #include <dt-bindings/clock/qcom,sm8550-camcc.h>
@@ -3215,8 +3216,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -3310,8 +3311,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -3369,10 +3370,10 @@ dispcc: clock-controller@af00000 {
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


