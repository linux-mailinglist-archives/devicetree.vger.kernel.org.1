Return-Path: <devicetree+bounces-63594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD48B8B58CE
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D9119B2596F
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 12:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B52E53371;
	Mon, 29 Apr 2024 12:43:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u9KKIMvb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E9610A1B
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 12:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714394628; cv=none; b=Rr4dOSTuc+NTPssUrL8L3wSIX6m4cwowGbgQ2in6325yJVHaS7PmwQ51b67mg/a+hjU9mT7ealU4JhiiVsnq/k2lGF8AgOh5EcL8Devbiweturl+Ll2OJyX2U8tMBe4N/B2XPHziXEewMSdTn4h3vFP08LUMoAqeGMXjYeK4gJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714394628; c=relaxed/simple;
	bh=3ahalgQrX1I3yfQnq7+cpNw3xYKZCyqvysUuHDXO+Mo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C90boIzk91XorcOq+I/8war545kjZkI9JuZ6L5VBU9dhyRBJXOVyNooSgcwclEhw3rQVxika1MBvQr33x7ghRz/UJgatEOLJSk1b+jAe7T9rVzaBubt53nUX6lJfaPw7ZGcUL2bNnoRznCPTc7FQ1BRB8kkqEZoRDtLTr6NCWFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u9KKIMvb; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-51b526f0fc4so5443430e87.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 05:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714394624; x=1714999424; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NNutWFZyGINp4G7joe8+n09dkk5KMMBPhLsYqPUlzNI=;
        b=u9KKIMvbaViEflCuvFHS/uWv6HoUv3raijzwS26xrQK2T1XvUj+Dxw+wAQFGWRv5uv
         I+EJHXtJ3sa6Siq3RKlrHwvkR5vviX9E9z94F+7WeOKJuK438gp9eHKozSJlWxo7QdDi
         GknjiJY7RYqr7KZXReFgnj4dGRUVvZEOwjPvdyTQZCatZ63lzZz1jpB+nOI6PTMgAbsU
         CKziPnJiSi9pOMyjgVsTpz2OW/meiHiJNzPX7wZRxGOuVMQFEAiJlKbUVFiAQZU6wjTe
         Ma4IhEuQVBiuU/FlDxMPBmJs1OF1Q0hKwP4RSLSowg27z1o9QC1BAJVui5QMxMDYttYB
         WaeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714394624; x=1714999424;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NNutWFZyGINp4G7joe8+n09dkk5KMMBPhLsYqPUlzNI=;
        b=B/XRM7d17+nqjkZ9WVrqXMzK7y3Ifjdete3pXxchKCAGhIgqo6G5XUQOzcutiJ9A+a
         2G0y21kWGOrZ7lI4W3jZLTtMf+8euroScLvi4bcfPHWWFOjkKw1UDeuLbxOs4X1WTge2
         /QKbnGagjilGn25xCcj3qROlDMsHB1+Kd1c644xaQec27fhJkCABb8i6XegiZTrCY+T6
         6k7h+rw/ZOn4mGGje29CzmL2rJwHh1mtuDwt6EVC+2/pLmd7g8rTlJxQdU0pFWP2a5VQ
         a9iTcQLmttJPxieCqDngmRuQL5D5zDwVSij2XMkn+3uvUTEIxrPGUbQQf4tjLvH9Vj++
         xIeQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2k2D/JgjRWtZyHcl4Iq9tBUvyLz5ZbTfxl92zm28XrZjjkMRitEVm/lNifaE46Q1d6/gme2T0pel4cjZNDJF/mzG8+MXpnhsMKg==
X-Gm-Message-State: AOJu0Yzp01bMlBarSLzDwHdIFcN7ReD6MPZHtPFMbCMHoOK92nZjzYs4
	ECkZpR9Lclu0kZbR2mhwL6/PJWoHf8VyujHIUkQSwHWDPKInb1Kyy17iydsKMjI=
X-Google-Smtp-Source: AGHT+IEqM1Vl43HLK9dfl1bIMuF51ks5ITFNdbi3CKn/0fEHcDTFo4Ov7KI2UBym7WYpgkvbo8o4Aw==
X-Received: by 2002:a05:6512:104a:b0:51d:98c4:94a4 with SMTP id c10-20020a056512104a00b0051d98c494a4mr3042535lfb.58.1714394624562;
        Mon, 29 Apr 2024 05:43:44 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h18-20020a0565123c9200b0051d94297380sm467538lfv.241.2024.04.29.05.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 05:43:44 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 29 Apr 2024 15:43:38 +0300
Subject: [PATCH 01/12] arm64: dts: qcom: sm8150: move USB graph to the SoC
 dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240429-usb-link-dtsi-v1-1-87c341b55cdf@linaro.org>
References: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
In-Reply-To: <20240429-usb-link-dtsi-v1-0-87c341b55cdf@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2204;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=3ahalgQrX1I3yfQnq7+cpNw3xYKZCyqvysUuHDXO+Mo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmL5X9/mDMPuhor2aKIoNFUPaYHHrtHcUIR55XM
 CfkMaujkByJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZi+V/QAKCRCLPIo+Aiko
 1UzVB/0Q8OdOxh0ZQiAxky+sBdCuAuqwjeEZsEjpN/UX3IV0oakPn2Er+gU1ZFz2a+/dsqX9xOe
 UQIslyEqpZDT40pRb+F/QuS53yAJN2Z0NP7XcItFiD3jmTj3cRvYdpqh7hheWsLvYDTzESCouMm
 ibIIT1jgU6Znfwn+Vqtw90Qi8OwEvVb3nlljux2dHuW3hFJM1rb5h3AEvNfspEpnmhFpS4krwrp
 zIQgwQRYcX8ck6V1JGRKaDj2BD/zW0kjoiguXt4/Z2aVYs2lFWuSSXPW9B305UXC0jko36/ewJ7
 RxgZwT37ynVPNRmBljWdLqya3GEroqmq6U/810FhcjO2GGt4
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Move the graph connection between USB host, USB SS PHY and DP port to
the SoC dtsi file. They are linked in hardware in this way.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 13 -------------
 arch/arm64/boot/dts/qcom/sm8150.dtsi    |  4 ++++
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index e9b9abc18746..bac08f00b303 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -470,7 +470,6 @@ &mdss_dp {
 
 &mdss_dp_out {
 	data-lanes = <0 1>;
-	remote-endpoint = <&usb_1_qmpphy_dp_in>;
 };
 
 &mdss_dsi0 {
@@ -676,18 +675,10 @@ &usb_1_qmpphy {
 	orientation-switch;
 };
 
-&usb_1_qmpphy_dp_in {
-	remote-endpoint = <&mdss_dp_out>;
-};
-
 &usb_1_qmpphy_out {
 	remote-endpoint = <&pm8150b_typec_mux_in>;
 };
 
-&usb_1_qmpphy_usb_ss_in {
-	remote-endpoint = <&usb_1_dwc3_ss>;
-};
-
 &usb_2_qmpphy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l3c_1p2>;
@@ -711,10 +702,6 @@ &usb_1_dwc3_hs {
 	remote-endpoint = <&pm8150b_hs_in>;
 };
 
-&usb_1_dwc3_ss {
-	remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
-};
-
 &usb_2_dwc3 {
 	dr_mode = "host";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index ff22e4346660..cb878b7305c2 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -3507,6 +3507,7 @@ port@1 {
 					reg = <1>;
 
 					usb_1_qmpphy_usb_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
 					};
 				};
 
@@ -3514,6 +3515,7 @@ port@2 {
 					reg = <2>;
 
 					usb_1_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp_out>;
 					};
 				};
 			};
@@ -3672,6 +3674,7 @@ port@1 {
 						reg = <1>;
 
 						usb_1_dwc3_ss: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;
 						};
 					};
 				};
@@ -3894,6 +3897,7 @@ port@1 {
 						reg = <1>;
 
 						mdss_dp_out: endpoint {
+							remote-endpoint = <&usb_1_qmpphy_dp_in>;
 						};
 					};
 				};

-- 
2.39.2


