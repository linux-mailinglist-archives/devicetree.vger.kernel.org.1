Return-Path: <devicetree+bounces-141107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE0DA1D72E
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:49:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB4B01881A8C
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:49:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F4C201034;
	Mon, 27 Jan 2025 13:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XhSCZk0i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440BC200BBD
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985697; cv=none; b=SS+w8bCQm4R+moOaS3It/5Q3Hqd09briKkw6qtPVKn3MmDU/nM0Q2viBBDk2cor7AWuJPjdB6g+nshOtx23tPDsel/Jsm8fFE3kpwgCAgWebSlujyhY/IACQIhSkskxsHfg/gk4XkeCZOb9RW293wdXjcC85FZ/I66ZXeRB85Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985697; c=relaxed/simple;
	bh=02DMujMQn2T1XhC7RvzjIa2ucfVSM94krm7R6DPwio8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YlLTuVPq2mcqiNQAFvHh9qLD4sLSonobFPLvdtvXDBQeN8eX+Zzbwwr2dpZy5v7CB4hAS2N3LC25bTK+DrEYShgwT5SdVeXeK0g7auvoGodeHYEpel7KhT5IP4de8/1xHOEtdn8NLkJJCYbCr3vTKFNen1ZU3revIWxXiatYQtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XhSCZk0i; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43616bf3358so7276765e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985693; x=1738590493; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XINxUO6RsL+/yLXF/kte390dxVrYuWbYZgqCNw/ODrQ=;
        b=XhSCZk0iUnSa31Kr8g1012c+SOwJNYd5muQzwrTQUWXjlZTVuZ9oHdfQ5k6t7741bn
         YUA/+pVYv5EeFEpDNbpG7qEJxI04nZdsZQmRL/RbFFPZXJ7qDDf1vD4NLK+y/Cylatug
         EciErJgfGTAusrYZLi8Und3V+ZbFOYDnT/1rOiT4hgBjeBimlyDxvmDhkDbE30XOA9C0
         y4xUcq66EHmwiI5qTDsnQepDBwYyBBG8sKCZY3lhmVUW2ntjUIW7Y1DYjmJVGyzjoc9W
         bbk9UZCGmrl9Kd50wge5abHkEAJGOCoA6FZLgz+6FEDpdLs4wXOSW0+5E0EmbaZd0Z5c
         w3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985693; x=1738590493;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XINxUO6RsL+/yLXF/kte390dxVrYuWbYZgqCNw/ODrQ=;
        b=dUq5ZMtafQOdGz+UTomiTdOyLNNVFqqKvcuF03MlTLqonl750T98rwiexTLgQ73j1A
         Lw4K02buN/blPmf/kDEYHIMsHGeN50foB9YAaulEvZDUMkKk+AtYb6uSJpZ1VkSJM498
         eLuS3SD6EuiLOtRaexEgrNLe+73cAX1f3OMQh4aVA7fkd1q3+EkbdyhEEhUL15i7f+l+
         0eRiqf3w5JOALA/E8pwzutMteP8YJ6zeU5zDaYkUTmBk5e1uksmDIFMW9GC61+123Cl1
         MzpE3kuM4PpdboNKfvaMf++YSNYA2X7EG6wJwdkKzVAP+xhGCkMmIUIwWFJpwj4hupqL
         HH0w==
X-Forwarded-Encrypted: i=1; AJvYcCWYM/QLbMv2DRMk9ORDlOvGy1J1H6lYLzQtCBY/PVaCXhgJX1DtsEeZpnG1SMRP+euf1VzUi3zfcduQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+N6QYqsmppS9qDRcgHA4rvC+eemSi7I+PgOR46/50WJEj8aiL
	G1a8Hf5KCWdp6oNn2r+ZvJYUCmkbVOBhK2BKdFGmD6YdbZJD3uqMUkewU93SDsE=
X-Gm-Gg: ASbGncswVnhryX4UmcwhtWZV38BDkWGQwdMOY5bdUYY3y5WFpfFwPMmMHnhisMs0PtO
	HrOm9Mv/eKltcHiimiq8rTDY1oabiu+nnNr0t6BimdMCQWzxfbdjPbv6Sp5/7gL6km5FQ+RVqBo
	eWen1vH1b95jMQfhw2QAGlbMclm7IW4RZxxxd+WggaElfwQCEvmDLovydC2zHC9Kf33hKUmdT+r
	0OLWNUhjKbBmkCqbO0F3czCDZRPn/0ZCAQVMYVvoF8XwQtuS7jiB24Dk8XgD/091GPAP3yVGcIi
	BHs5AiHZDtPlwyNOoVw=
X-Google-Smtp-Source: AGHT+IF5eCzx5sh585VYY0c6nXMl4UjYtR7pwjRxVVYFLUtIRaznI9uSnEF5/wTnTUlO93pwQXLjow==
X-Received: by 2002:a05:600c:1d07:b0:436:17f4:9b3d with SMTP id 5b1f17b1804b1-4389141cda7mr141182545e9.4.1737985693551;
        Mon, 27 Jan 2025 05:48:13 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:13 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:38 +0100
Subject: [PATCH 05/24] arm64: dts: qcom: msm8939: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-5-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2053;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=02DMujMQn2T1XhC7RvzjIa2ucfVSM94krm7R6DPwio8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46DXYqCeBvjczYMSbTtjGRcDg4MzevHGtrmO
 tMCfEvWpjuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOgwAKCRDBN2bmhouD
 1+6LD/oC/ZGvPTNqAO5BRYpJOzp5sDNS/Vhp4/3yfmD3T9cAxkFO4KwID0NtwGKw3U5HcF/9V8S
 FAZzB+riIKHeTt0rKWpz+NdI9uYjVE7To+dCaOUl7rqZrSi1LSTqfi6hSX8ZNHNB4Ejg9RG6hqi
 7c4piRqzrpj0X6kSzGVDyJxU8fup3dVrOLnBcWul6FzO56JIJmIWVOCjH9Pdy1WF2TSRRdZjWA2
 aibj22RheJeRmYNXhu3EV1vGfC2QXOv8U4Amkln/3EFjrK7HBamCvslGjCrv+D5EPH+E8OvuY6a
 +VWoHFtcMxuulIpl3cSe55WofH0GFNf0sBaxi0Mqbz7L/21qUbHG9UaZYfWdSNSEdSUxcAOWIVz
 a/E6GVNO61r9H63EVgRtBx8FB+Dt0oKwCDw4RWEzkTE4EIuWaWaHa3Na+p84l8yNC7uli72Vaxh
 QL1x4/KD2Cak+iOQVMzYd3BVinMf1y2V87YPBYba1KwzhEnqUITHg6037Y4pvaK5JZZOtLQaTyt
 Ut6Im7EhbUkbb+3TOcBo12ttUe4TZqftgkyNG70+42HH2rCJv0+xTQzUBWN/MEX+l01+KAPG78p
 0bJ70978E0rxztI9PkSyoGDZWe/CQwElLrizCsSf3WRjFSs/5sNzmQr2Kl6ryoNQboCwcDaM7RV
 LekCImniR0JayZg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
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
2.43.0


