Return-Path: <devicetree+bounces-28715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C184F81F276
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 23:29:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C88D2821BE
	for <lists+devicetree@lfdr.de>; Wed, 27 Dec 2023 22:29:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EFA449F82;
	Wed, 27 Dec 2023 22:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y/1G+ZkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963FD498BA
	for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 22:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50e67e37661so5171098e87.0
        for <devicetree@vger.kernel.org>; Wed, 27 Dec 2023 14:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703716114; x=1704320914; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TOTPntAbgy3PGTrBl7b5lPQZPt4hEISp0YHsUMdQkVM=;
        b=y/1G+ZkLNtycsSFhItAY+ChHXfVzhDzHBQyyZC7DpRU2ZpViK3G4G4F7uqzcN5BWkq
         ZLUHSE8dIhTOx7dHWWw6V8d2K/4aPwDVo/KdRg1qe8NX4CHFNMQ9hgnVKZs73FYzTnM5
         AjnjpKYKOKnmszsG/IQ5DJS1IYrL3oatfJ073TYxqZdxYiCdfegPVgRvFgTTuMOfv2y8
         0rt1L5fgoGGVdfo3lHVWib10iLFmjfNCvXhHFCgichd0kF4vcNSvYcOVd8Xcxbjsbqdt
         CNFfQmhrEaKJApQSCxkD+rQw9tIHhCTgkmyY4mYSIFiuc36wHj50zDDI4gIBoiko1fPz
         o89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703716114; x=1704320914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TOTPntAbgy3PGTrBl7b5lPQZPt4hEISp0YHsUMdQkVM=;
        b=sq6U/u3gFT5npVelSk+bX4RpKKUBGSHQkuxo9i5eGMlFcGpseVV3PXgVJKlJMizK38
         NvpsyNW1E2CYlr7SR/9SbkGA+++vFhF3L5sGliBt2CNjHTC3pWL5PYDDW/hGF4YnYc0J
         PGXu8ILPtRNqPeMrnAHmHtrWehvtikd/wmN+2Rz4cJFuHAZI39+t8MDBZ5zy1Vcx44tt
         A92Q31OfdQtHeCNUSUKfEPjLQc6s5EASYxUYD9Om29kTgrKDG2mLbHN5I1f3eNw2pFbp
         PwOJT4NA62xAz514gvWUSL9MdYBTq6Ilo16VPflisgiHZ2Ujrzb8B9gzKQN69V9iErZE
         cwTA==
X-Gm-Message-State: AOJu0YyGM8ltQsNCW0WdxgqgnJDQGNbmJq5rZHvFRWKkc/x/HWUy8lIk
	pQDSvBz60TmWYl+X06gL05Pu1PBtpWgBOwuce0B7Un2nptc=
X-Google-Smtp-Source: AGHT+IFxv4uwzP6m/2NhBZ/hQfP7o4P9KB8ewzGheiFQDGEPXlumAnMgjcJYCSm5estmRSaCu+hBkw==
X-Received: by 2002:ac2:548b:0:b0:50e:36bc:747a with SMTP id t11-20020ac2548b000000b0050e36bc747amr3788065lfk.128.1703716113720;
        Wed, 27 Dec 2023 14:28:33 -0800 (PST)
Received: from [10.167.154.1] (178235179028.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.28])
        by smtp.gmail.com with ESMTPSA id fb20-20020a1709073a1400b00a26a061ae1esm6854252ejc.97.2023.12.27.14.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Dec 2023 14:28:33 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 27 Dec 2023 23:28:27 +0100
Subject: [PATCH 2/3] arm64: dts: qcom: sc8280xp: Correct USB PHY power
 domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231227-topic-8280_pcie_dts-v1-2-13d12b1698ff@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703716109; l=1965;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=VmfNU1/o30xTIL8Pi0ZpiDYz44NQF133gdGRmB0j+A0=;
 b=hkt2IT7RGZcKOjV7EFH8npQu9Q5Lojs0lNc697VJjqDjCIZ3m9BCDB/PTok2jUH2kpcYbGaLK
 HDW9gz58IuoBeaUtaWlu6ytDk67tB1yKYyVUV8yfVqnYEpj03699D7n
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The USB GDSCs are only related to the controllers. The PHYs on the other
hand, are powered by VDD_MX and their specific VDDA_PHY/PLL regulators.

Fix the power-domains assignment to stop potentially toggling the GDSC
unnecessarily.

Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 72c5818b67f2..4b18a0762ca7 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -2597,7 +2597,7 @@ usb_2_qmpphy0: phy@88ef000 {
 				 <&gcc GCC_USB3UNIPHY_PHY_MP0_BCR>;
 			reset-names = "phy", "phy_phy";
 
-			power-domains = <&gcc USB30_MP_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			#clock-cells = <0>;
 			clock-output-names = "usb2_phy0_pipe_clk";
@@ -2621,7 +2621,7 @@ usb_2_qmpphy1: phy@88f1000 {
 				 <&gcc GCC_USB3UNIPHY_PHY_MP1_BCR>;
 			reset-names = "phy", "phy_phy";
 
-			power-domains = <&gcc USB30_MP_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			#clock-cells = <0>;
 			clock-output-names = "usb2_phy1_pipe_clk";
@@ -3109,7 +3109,7 @@ usb_0_qmpphy: phy@88eb000 {
 				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
 			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
 
-			power-domains = <&gcc USB30_PRIM_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB4_DP_PHY_PRIM_BCR>;
@@ -3162,7 +3162,7 @@ usb_1_qmpphy: phy@8903000 {
 				 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
 			clock-names = "aux", "ref", "com_aux", "usb3_pipe";
 
-			power-domains = <&gcc USB30_SEC_GDSC>;
+			power-domains = <&rpmhpd SC8280XP_MX>;
 
 			resets = <&gcc GCC_USB3_PHY_SEC_BCR>,
 				 <&gcc GCC_USB4_1_DP_PHY_PRIM_BCR>;

-- 
2.43.0


