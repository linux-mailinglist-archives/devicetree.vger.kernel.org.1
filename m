Return-Path: <devicetree+bounces-164257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C259DA7F9FC
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAA1E3A9220
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:38:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9DE269831;
	Tue,  8 Apr 2025 09:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V4WrfCag"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 902902690DB
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104787; cv=none; b=Sx3+cR+gVTFzlTJinkJqNgWnEuNm6ZyV/K2mXMkqy/poC8PLteWyQP6I2h1PhpdVeOZfDJWpLiTYHqanO5FVqTHHHNEYAzafOSk3DQPFl9mesG/Wu8hbivwh4b7drfoFreisOgVikEh+IG0+CX8EQSWGtFyK/J/HNHs1EYSEJR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104787; c=relaxed/simple;
	bh=39k1vMZOSN1FgOQwMGT7xFm121EqUSXE/MevpdIOhnQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WWEHkksr9WXUVtTjX7gd/iWlojHC6s7ay5vV4lhab988cEvc7KTjx+TT5TPKbsP00r4FQe2pfYTOEzKPcUa7x+jBXTGz4NrgYtP60EPkiLrxSeckxPavj2mM4ZdzJ6vAIzu1Fj4NcJRTps9bmAQIj58j6brxD8MeVYq1GINmBCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V4WrfCag; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5231375e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104783; x=1744709583; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2TgeOqjNMjWXjdsbtFz8N1Yu+WJCFeysbiHCnrXKpdc=;
        b=V4WrfCagJ9Ijt5ouMgEB77Cy2UpQ3pdd4zNHgumJTIsX78qqfRVAZKr38xrMoz3ui/
         LRv9U174UDaSHuli97/U6+2RvXnhaFQF5BGdg8tsC0tq0x0dVDS3pkOd3aJ+XD27zZCg
         dJ8+w+Hauj+5KZzkQBrOJCLxph1rGR9T3ywsLA+v5Mi6pd7pLd65qvg69uYtI5o8F/6Z
         shGfzuCl3rz5siLbnkc3MIOUTnMOXZi+UvSeYppU8YvVSwNRRXkd/l7Gi+WL3JBU6a0P
         RFc+RtlIJNR4+CMjs5fPGWEMzEWZc+zrYW2pTvZMbsHfpoPy7M6o97O3vDv1caEkLYHJ
         Ao/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104783; x=1744709583;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2TgeOqjNMjWXjdsbtFz8N1Yu+WJCFeysbiHCnrXKpdc=;
        b=k9a55JWNR8vwi7nsBDuUNmDWnsXwE4eIQpgzJ53XTPjVrC6rEyvzm15Wlg4UXTSJsk
         0B/u1c+UKWxkKbMx8rDqrw1twm+gDoAN0GBIaXVsEEM/xxd5EEsNQ0X72E80uxBMdNe4
         83TqCaeNxxm6y4tRbLaaRpFU8/u+iFC7q/F2lcgYxfajOM9fiF1yOZep/dP7H/qiMZro
         r70sFZbFVFHYQQLjYMlubaOj+oy3Kazbntf4Zno+0zkDz6w0PFTJXS3dgcRB7XnE1vb7
         EOFaMaZ34fsZfZVwCsxipnixzaZqOXI97fcwCwJsDPlAIDg0Fk9VTHl0cJtAowPNWEim
         nobA==
X-Forwarded-Encrypted: i=1; AJvYcCWIsfphADCNcoCDj8ZIxs8y7UnL9pMNrWvp9/NEV90qTBVIRgYcrPHX347x35Au6zTL3ZwyKMZbm/WI@vger.kernel.org
X-Gm-Message-State: AOJu0YydwVyEW3vr/RMhn/u82vIadB3G1VKkLa7qgud25YMQbEBo1u96
	0jXPMG3S7YEIePt616/Ko8Oytwz67mc3uCsl+gAGrLxiEoulHWX0PGyD6XojTvk=
X-Gm-Gg: ASbGncu3TCdj6949/0BuUUd0RptOUoywYgxpGWQXnMTjsTIrUwkK9GlQjr0JbUkLUXF
	a2NPUmv00DHpfyOSU351SqAmaeIL385lT4OynXfIJpN5HkTQS4YWFw+ticpv4iacc4LEOBtFR4u
	S6z3b3xfY8o8fHCf3CN8ate/5Um1UR79akuDqki9u29DuuYOgfbZWsw8nMunGB93AW2bIE7KaKl
	m6IbY/PkYiEmg9uw45tS88tQyEHB83rYd2dt11VJyxaeiTuB8q16FKnPwAievBS8qGAzNS7edLy
	MZNAiot5FT7JMD7ZLNHezV98cW8b7reJj5KtYe92Ym/2dmnRGCWU9Oh6k9fF63oF27ugZjMPVg=
	=
X-Google-Smtp-Source: AGHT+IHLuxZriTopdYEcGrXZV1/eETdR0D0OoX59bQRkebIkohtgrntijIg4HdG7lMWQZlN8DM7xSA==
X-Received: by 2002:a05:600c:1c93:b0:439:88bb:d00b with SMTP id 5b1f17b1804b1-43ecfa02814mr46107545e9.5.1744104783043;
        Tue, 08 Apr 2025 02:33:03 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:33:01 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:16 +0200
Subject: [PATCH v2 19/24] arm64: dts: qcom: sm8150: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-19-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3152;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=39k1vMZOSN1FgOQwMGT7xFm121EqUSXE/MevpdIOhnQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0mDlXJanAZda1ObES7b5BtrdFsfnFDjjwEU
 K4umi231p+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtJgAKCRDBN2bmhouD
 15GtD/0YwrTy6y+fmM577d4lKjwXOJqGpjG2E8vf6LCRr+NAWG1ToDof9TBcbxNtmY+j1HOFm5X
 jEw9jfVvETirmVyEk+ina7S3lG5w9or22L93buc8dd6ycebF84E2RPXMFey6O3WWZr2LYZXM4UN
 v9eo+YVG+E1cwBx0Mp4zMWq0TtfRGHGlhMWYiECKaav0s/zRg7qzdvzVx0kr9T0b0ufWi3DK/c3
 btxN6FrJXgZK+4VkQO3bW9MkMfVTPQfgXwCYnko0mfYgAS6QkaOm+hlAD/0HDVRDSFm19F+Gsb+
 8mTJ7JOaIsEFKBOsHlJkjT3gyvhybeMCU8qwRE9qIMIQUhcW9rG1kp1yTX9S9Ps8cd5HeOH//e3
 q7UwDM+qEFSvrKuqyWsnfag46tMkZgw0AxlHXh8nfFoJjsf9an+lgzmFEgsnij1oIFDLc1F0GJt
 PJlvAkqxpiqKAD/f6XTleGVNTAFbfGSGv+5wwkiZ2ft9EOTXKUuK0QXWoDBy81tbdy1XCVrqWOk
 RCknBTaxP77GBnCDEu4LHPVAiWbTYvW3W7DJWVm7JQ22ttbEeZk4ngFPgrWdeF9nbbM2oG29oo8
 w1QEcSyqb+/Jo8FnKAiciW3FStFAFQZDD8vcfEFLMa9w2Y2gSTse9YADnluew53ZtoPCGgjWkGH
 esnR+Nn8iaGu12g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts |  3 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi    | 17 +++++++++--------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index 9ac9854b35fd157e0735aaff4e0bdbaa8946e0d5..e1e294f0f462ac824bffe96615b36ddcd8996d80 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -500,7 +500,8 @@ &mdss_dsi1 {
 	qcom,dual-dsi-mode;
 
 	/* DSI1 is slave, so use DSI0 clocks */
-	assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+	assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 4dbda54b47a54d1fa9c3fbeb441f8bc852e52f75..2aca3fdae47ceef9b3030613ec2b8f3a6c1a3356 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,dispcc-sm8150.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm8150.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8150.h>
 #include <dt-bindings/clock/qcom,videocc-sm8150.h>
@@ -3981,8 +3982,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SM8150_MMCX>;
@@ -4074,8 +4075,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SM8150_MMCX>;
@@ -4130,10 +4131,10 @@ dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8150-dispcc";
 			reg = <0 0x0af00000 0 0x10000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",

-- 
2.45.2


