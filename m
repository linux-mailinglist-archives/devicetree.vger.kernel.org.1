Return-Path: <devicetree+bounces-61376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B37258AC710
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 10:33:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70EEE28411D
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 08:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B2F51C2B;
	Mon, 22 Apr 2024 08:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lE5pImXM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDC143AC1
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 08:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713774800; cv=none; b=KNs1jJ/Nthp2a3FfSdy4kvJR/oL1rf3Wbm6qnBc6BPZD2M57pCTlEEJMxClNrpgoNxYK2o/gfMYGXQVXQU6ZvjWDx2XicDakd7GW9/LK7EzA/LkIvRJ+n6yqUrl+Q8kg9BqVLjyTYy/oD02DwBBn8J5qpXp0F5EfFYMERwqDJQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713774800; c=relaxed/simple;
	bh=zQpxV0djrOiwPxhRvSgIUZn7ViHWbqTnSNjH4kOd7u8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mf9kcrdfz8XD4Bb3BS9aXmKtXIa0laYSPc3dKrY/fSfXBj0jizpCEZsRmc5IEnysmG0SXjmDfhuFAShqnJtsP/fw6mCb2FJD3ZEI4/MHfKWUuSNeRziOt03IngvptCKsqQK2gSSwZ+wC4TSfe5Dpd92Hr0P61ZHeDBWLwXse1G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lE5pImXM; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4196c62bb4eso17917725e9.2
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 01:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713774797; x=1714379597; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLRaymjKldV5Ae25ez2pVEwmOtAjv9LTg0zkuha6uuU=;
        b=lE5pImXMGTo1z3vo5l15XtNZZI26+ITwo5KUIxqgme1uMfSi0F4IWWh0h5MCdaZQ+P
         Pvleu4k9cZD8PIS8xz/Ed69HZz4GcpvkghBChSRJPisPQ1411sEmMnNWqxl3NjofgF6X
         odSp481+xX+miUfz6sN8D7Mg3a5NR1urcEon0A1kRWTbqY2ZLVHlsDLvexKZGo1ifAuf
         2xMwVX2B/Pt76KzJvKdU8JGFgaozjhbzumq4kfFgmZARAT3/UDp0IbxqOz584MXh+8ON
         9BzI7ClWclHi8S5xZuR5iWSdlg9IppP7NYkUn5o4pKUEDTFKKJqNI1cfZpSd3QpjtrUa
         O+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713774797; x=1714379597;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cLRaymjKldV5Ae25ez2pVEwmOtAjv9LTg0zkuha6uuU=;
        b=oJ6VoVdu4oxisccJwKpsrVcL0W7qCtxFVDmm9ASOu9hcBImcn6VYHJFEqtPJ2jnSP5
         3Z9XlPCkHZwfyfLMv79GjxGgpqYiFFG+jv0GkMB/BnY0Ev4GE0y+adNhVsRngNhidg0M
         NH6mVHIZ4tFNhFD0UTL18vV/X7ZAOj905OiiIaf2LJO47jyv3i4nZ3Z6VRXeOTdQOrz3
         lU2KWCge4F3O79kBWvdtakgOyW5EEITuv/rN93KDzfRPwxnfjP9UVdXNNLKP0f5W7h83
         ODqDbw2m0NusZURCjIogAH1s1x2U/aPg8n/06kYUD8SZCF3XT+Bq8KZarF4USmheEBry
         QfsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEvncPxXqBO6znRVyQjWFamNfZOE50zhTeQSOb2iQNNMCEtOcmqvVqURu69Qa/6OfWWz4OkIHzSJqEqcOHuWhUzBI1zv2sXn6iiw==
X-Gm-Message-State: AOJu0YzDi6NdnrZe/KFkZNd6gfznYsSAUKVrr2VVKQtGHjCGUUXDHdzm
	t9FWh2jK4c+MuKLgL78JeeyNq+myAGpOtDwmMw68yrIHwNAwvgBrT7uyEOrLnnw=
X-Google-Smtp-Source: AGHT+IFHAw4FMhpEGmtTQ4MMTPUbnYOSy9z5mJuHiv3zra6VJEyRQ6AFD+8qUVa54j5166hugk0F9w==
X-Received: by 2002:a05:600c:c1a:b0:41a:68a5:b2c8 with SMTP id fm26-20020a05600c0c1a00b0041a68a5b2c8mr943929wmb.35.1713774797226;
        Mon, 22 Apr 2024 01:33:17 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id j19-20020a05600c1c1300b004161bffa48csm15978786wms.40.2024.04.22.01.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 01:33:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 22 Apr 2024 10:33:13 +0200
Subject: [PATCH v3 3/3] arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-3-799475a27cce@linaro.org>
References: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
In-Reply-To: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2488;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=zQpxV0djrOiwPxhRvSgIUZn7ViHWbqTnSNjH4kOd7u8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJiDJ9xmje0GQO+nI5+7LeLoATi+T2Zb/zhTy4IU2
 sGW6a++JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiYgyQAKCRB33NvayMhJ0X8BD/
 9yQh5mmI6X23M/e5p+c8PjwJeVfqTbT/t6SwpivBvytndYSZ5J4914WV5BC+c3zegKWfNTmpICsrEX
 9p6wC4liG1cUo3Y25/lH8rvUMiKMLSlK01g6dd5gkNds+e54dTsa1Ca8EahAm+pxQF5jOxbssl/VTB
 +JWwgUIA5jdN1RnO+5ZPbaMF+blg+uJVk8lXAb8axKd3TfLiVtZ+ReUQtsHmw641U/ZT/lG6fZXu6A
 34YJmKKD/u+Z18DmTVOCcb0TAkYkylPizUGsY5s1KW7GNtPldbg3vbinHgEe6OgCInkvcxqPrNh2Xx
 G1F3t8JFKIeBjFZWE2VSIMlUXb5kcfmnmpxRvHVfXqn2Y4lta1lV5BvbIRZKvucx6ffqyVB+aKEjMA
 7cQYR7PSFbDyUW7ULg0s5L4IuYoZTIYf7lAohQSRgAlqxBoe+5QmVG/fbHj2YwGpzBcz26241ziaQl
 YABQD/wF8l6xo8maf/Vl/jNhdO3rgukn9R5awTQG788ccmEAMayprgsJbxl0zWNOUOve++wByjlLT4
 wH4V2gdz4yR3nvnzqWTN2Pt+DxpcdEak2cnALMO0c8L4NhlS96AtrmvPcPKD8/LkuHZKWYchp1RgO0
 bGbXVL0LXslZ+uwP48mJaHFOVkQQVIlVNYhmSEpDUxB6TpT1I9sNvCQEShNw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 3 files changed, 4 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index d04ceaa73c2b..ea092f532e5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -641,10 +641,6 @@ &mdss_dsi0_phy {
 	status = "okay";
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 4e94f7fe4d2d..bd87aa3aa548 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -835,10 +835,6 @@ &mdss_dp0_out {
 	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 };
 
-&pcie_1_phy_aux_clk {
-	clock-frequency = <1000>;
-};
-
 &pcie0 {
 	wake-gpios = <&tlmm 96 GPIO_ACTIVE_HIGH>;
 	perst-gpios = <&tlmm 94 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 8e0c1841f748..658ad2b41c5a 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -60,11 +60,6 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-mult = <1>;
 			clock-div = <2>;
 		};
-
-		pcie_1_phy_aux_clk: pcie-1-phy-aux-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-		};
 	};
 
 	cpus {
@@ -758,8 +753,8 @@ gcc: clock-controller@100000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <&pcie_1_phy_aux_clk>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -2467,8 +2462,8 @@ pcie1_phy: phy@1c0e000 {
 
 			power-domains = <&gcc PCIE_1_PHY_GDSC>;
 
-			#clock-cells = <0>;
-			clock-output-names = "pcie1_pipe_clk";
+			#clock-cells = <1>;
+			clock-output-names = "pcie1_pipe_clk", "pcie1_phy_aux_clk";
 
 			#phy-cells = <0>;
 

-- 
2.34.1


