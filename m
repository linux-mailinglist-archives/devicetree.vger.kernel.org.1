Return-Path: <devicetree+bounces-28714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F9A81F273
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 23:28:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D5CA1F221FF
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 22:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0254A498A6;
	Wed, 27 Dec 2023 22:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yH2Gd9ys"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688464988D
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 22:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40d5b159497so16439735e9.1
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 14:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703716112; x=1704320912; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JWBf1IzDI4te1Z7yJaMLFE48TcXMDUCVA44V+FdpVh4=;
        b=yH2Gd9yskgZMRRwSw8ak+G4cdUbiIE0tBLQSDLz03v8ILNkDUI3a5US1Do2G6vPcQL
         2fivac16cWoQn3D7IHvUJw6OvA1PH9fe+0Z5lIsZ4VlkKB1B4Pscrn+KsY/JhQjF73di
         oHjSsrBAQf3Wx3b82cdpTJgbekWD3jV7+0cY2fKvDPhPDoAuewOmeafholg/5yYoT8ZT
         11y9EMvIpyFbuzPNlyHWilFhSSBvtxMQSOO0QCiZGjx+ZlewcOgzJ1cxBRlz7pZq61gB
         1Y1bOzHDXOdAeDJAe5flDoARjOVsrBqvtRuySpwSGGeN5UALHiGoPK+Kv9xh99sNP8QQ
         MopA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703716112; x=1704320912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWBf1IzDI4te1Z7yJaMLFE48TcXMDUCVA44V+FdpVh4=;
        b=CWzKVuogxpVe/fftxxKsDC3SY7bkNBHG9PDQKaKp6/3jNmEwOEngLF6gjSMdk04iBS
         8bj0bhuqh8DxOTxwrY65Rt/CmBVf1F72djU3yxMr7NXe7Eqib3acgdyVnN3F339AxN4Y
         L9kzLPuap49VcR6ni3oqEQifr3Mlk2/CsQOlRUrfu3JgEIsN4dGF0BhYTUVRozGK1HPt
         s7xdHtQ9pCf3ZdqlcOdRsDimjAFHSasKJGeF0i++CnNfW5PIVoZp+47sZwqiOGRy1nVb
         fJ+bKSVsMwxwZApjCQol/Z5vmNP3auaQc0nmkEOvynGi8FyUjPQfwWd+St6greGGWGXc
         Zj8g==
X-Gm-Message-State: AOJu0YwofgG2y9kcd4L9W8WK7AqnfBTlbowV9eX13vW/mJWVCXIhell1
	YnhoJr+3skTsuTvMRej65E37LSTZAS5GaLLhvJapMX5La1g=
X-Google-Smtp-Source: AGHT+IHbV/5Chz0sLyqxzfmlkvFL4ccOTbdKjsDuBJqfmkah87Uf3n1sasarFyJxfznS5JD8hv9poA==
X-Received: by 2002:a7b:cbc5:0:b0:40d:6221:868f with SMTP id n5-20020a7bcbc5000000b0040d6221868fmr186298wmi.279.1703716112496;
        Wed, 27 Dec 2023 14:28:32 -0800 (PST)
Received: from [10.167.154.1] (178235179028.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.28])
        by smtp.gmail.com with ESMTPSA id fb20-20020a1709073a1400b00a26a061ae1esm6854252ejc.97.2023.12.27.14.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 14:28:32 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 27 Dec 2023 23:28:26 +0100
Subject: [PATCH 1/3] arm64: dts: qcom: sc8280xp: Fix PCIe PHY power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231227-topic-8280_pcie_dts-v1-1-13d12b1698ff@linaro.org>
References: <20231227-topic-8280_pcie_dts-v1-0-13d12b1698ff@linaro.org>
In-Reply-To: <20231227-topic-8280_pcie_dts-v1-0-13d12b1698ff@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan+linaro@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703716109; l=2255;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kMvRAvWfpP/DEkU3LU/WsYqL/aUkUp2LCfdAhZy7cI4=;
 b=on07lEwMe5d6HDnWJbd3ihCw4sDHjf6qoR6QPRX9iQ0Vnh0ruqYLUNj+EZc5bK1Y5UyUQikEE
 6Fwi+MxoF+pDhYo9Felu72ulAdl/i+cto7szIDueMCbObm95l0u4r++
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The PCIe GDSCs are only related to the RCs. The PCIe PHYs on the other
hand, are powered by VDD_MX and their specific VDDA_PHY/PLL regulators.

Fix the power-domains assignment to stop potentially toggling the GDSC
unnecessarily.

Fixes: 813e83157001 ("arm64: dts: qcom: sc8280xp/sa8540p: add PCIe2-4 nodes")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index febf28356ff8..72c5818b67f2 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1797,7 +1797,7 @@ pcie4_phy: phy@1c06000 {
 			assigned-clocks = <&gcc GCC_PCIE4_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
 
-			power-domains = <&gcc PCIE_4_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_PCIE_4_PHY_BCR>;
 			reset-names = "phy";
@@ -1895,7 +1895,7 @@ pcie3b_phy: phy@1c0e000 {
 			assigned-clocks = <&gcc GCC_PCIE3B_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
 
-			power-domains = <&gcc PCIE_3B_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_PCIE_3B_PHY_BCR>;
 			reset-names = "phy";
@@ -1994,7 +1994,7 @@ pcie3a_phy: phy@1c14000 {
 			assigned-clocks = <&gcc GCC_PCIE3A_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
 
-			power-domains = <&gcc PCIE_3A_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_PCIE_3A_PHY_BCR>;
 			reset-names = "phy";
@@ -2094,7 +2094,7 @@ pcie2b_phy: phy@1c1e000 {
 			assigned-clocks = <&gcc GCC_PCIE2B_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
 
-			power-domains = <&gcc PCIE_2B_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_PCIE_2B_PHY_BCR>;
 			reset-names = "phy";
@@ -2193,7 +2193,7 @@ pcie2a_phy: phy@1c24000 {
 			assigned-clocks = <&gcc GCC_PCIE2A_PHY_RCHNG_CLK>;
 			assigned-clock-rates = <100000000>;
 
-			power-domains = <&gcc PCIE_2A_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_PCIE_2A_PHY_BCR>;
 			reset-names = "phy";

-- 
2.43.0


