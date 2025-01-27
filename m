Return-Path: <devicetree+bounces-141112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1E6A1D747
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:50:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B17061884A90
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 108602036FD;
	Mon, 27 Jan 2025 13:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P+Tqi8QT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D314203703
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985706; cv=none; b=USOqpsXFapCZRuCqxLLdr/56Q+AvynHuQeEwoYTn2M/HpQ5BwtBRUtZDyGLzkXnMgiMIxq8VRZaUJi4cFGhSrYe/HNh1PSaBW3hvDMbyuu+4ePdALkeCSNUFWDKEFfMYPXf6X/r6OE9jDe/6aDu2CVTgrCKGyi5w21a/Sig/hes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985706; c=relaxed/simple;
	bh=5u7/X5AFxLWe1COzKU5ZQH6Z0+tmcJoxZpz7+VOErhE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iNLBbqBESDX8iGzlkZLEXFniqfNqucni2NAWHYDwBv6UMng8u8+iZL8ODhAX2/lHANna45WKhzbS4kleQhLjQdeptue5K7BSrr7Soct6uNkadyPPH8OUM6Bh+osWlFUizhiWVvCiWBwYHcZvoGedCJjWVwmWsBQLlWKS1MN3eXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P+Tqi8QT; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436230de7a3so7298915e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985702; x=1738590502; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6fNEbenU3dgOTNnq78x1RhISVr6Hys5p8jVTqDS7L0Q=;
        b=P+Tqi8QTovbEnzTbOu8uM3LjbdELGC/H0n2BsjijPVl1dY85DSjHbvjmutQO7buVGO
         fWBT2xL13r+6Bz4B9vmY/rX+go8e2Kh7XwP2VoUBcJXia4V9JeXf8s4uNkt8jvy600Ru
         ma3qNpwDnLzqhzfS/LqihQqJaWbZdlKhb22bdPnZ9YvXUDDoFiNeUvmfBwXmtN/3FmXs
         RUr49KxHX64Z0rse+Q/p7tPKRV6HwWLZme6xUYMfZZTH/RYz8s9zgW9JpgTOECrxXZ7F
         S6OdLFZA8WFyYAbCMOeNaWExOjRMA+waBJdRUjBm+zDHLmnXCtS/DmNUbYc0jhngn5df
         nsag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985702; x=1738590502;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6fNEbenU3dgOTNnq78x1RhISVr6Hys5p8jVTqDS7L0Q=;
        b=VJGbqael6pncHrxpgVkKnSUxHRjjBQI4NJIxug2HhkwqPmqyd9zU0pT3ltynGn19tV
         tj0KOjiPzNn4j9PTdQvtX8TXmVgViEmdK95iNyVxQZvC3G6llMxVbRfW6FU0Rkz9u6Ym
         sqbLBYA03vd2RSvnFuK8xj3YoXlnK+5P5WIiiU2bvLItEPE8j5om4nmVOSfnPHDGRsMk
         orTrgUapUJCfPvVST60jYvPT4ehGJIPUvzTx5WFAbw/iUbKviJCN2MlVytyDxnwMYvyk
         kNgLyc8jFbSXpLIc7bLFidV0zw5maVzWMRAWylI8B3Yxny87/d/bF/x6ddTOgcCf1qs9
         WsuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlJslwyxnrTeJL5+DgGVIZ3MzHCWI1gTc+Rfj7OKuzrc+qHCCvvZ5D7N35Z1dwTrqqY4OrFDa0usTp@vger.kernel.org
X-Gm-Message-State: AOJu0YyuQ6IeBjHOoHx0MZ+abu3x5n3u9L4A3+Ng4qkqxE66OJJOy+hE
	LoFq5BMq5DKGaNfXU2bJ5xpo2f1geEKPfPzTmRN4OWcgPwd8f7qDxg6Z25sVeXM=
X-Gm-Gg: ASbGncsgU5ctgiPSo+hU5GIGy7NcHueqQv8zIvG4L6d+3j1Wr1EQugS17w6ApURNCrS
	n4Q/owSJN0X6nL/CAOJB5ZiHwFpcO3cyQmWG6VoEX5rzkBj9gvjWOGxW90g5ZwO2SIym4qOMfsR
	CcNDIBvQG6iCAUez0Mzs5GS5vjqWqVRPzfKo+47vLa44brX8mJxWuvjlh7qV4bUHfqU/g9aeDPD
	ok2DyaFflTc5I/m98Ja3YfFbJfsjhnygSzoiKBhkagZbTfrN02EfDzMtfCQaKHC658HmZj5IwM7
	iNA7wZtXGOwjumiRU3c=
X-Google-Smtp-Source: AGHT+IFq5K/2c3QNNN9rOef6+216Vvtbhk5F95zszBoUsLLjwdnDEgdsq8tPkVAee82U3bVB4l54zQ==
X-Received: by 2002:a05:600c:444d:b0:434:f335:85c with SMTP id 5b1f17b1804b1-438914321ebmr149303425e9.6.1737985701053;
        Mon, 27 Jan 2025 05:48:21 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:20 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:44 +0100
Subject: [PATCH 11/24] arm64: dts: qcom: sc7180: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-11-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1953;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=5u7/X5AFxLWe1COzKU5ZQH6Z0+tmcJoxZpz7+VOErhE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46I2Z8VcEEzNjr+M3gHIZBJURp8Jq21Oti6g
 dkNuyIbaeGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOiAAKCRDBN2bmhouD
 1xY2D/9Ij1d2M+gHBTXpsIi+w01m0A4t7JxQmvIVtp35BkkRXwsFk5OfewBBWBkG2xbhdTlAQL8
 6RKE8t1zf7L0ts8vyD4NLig+97ivSChozQaWx7i7NJyZLxpQxCWvmK1zY4XYKHEbH1kE+XtjnIr
 Q0VwcKt2c8T78M9pr3SXYGLuedRWswiggRlix5AYPuiP+tO1sr+pqXqYCrPBwUzbgMRikspseNP
 6kc+qRjqkUev8D+D55i8xuBgXEdX6yJqekYj+U5WYZepN5/cYBK2QlvQgvPbBiSIdkb0r/qsFa4
 gof2iiEJFvAP3Il9RDxGr3vyyn5XEYhWAjBgbGYuHxggzF4mptNKlVfeeUP5mlsIsd14nGIgH1w
 ZHxnmnH3NSPO/GoKYpTmneMXKVkiBNSTuOhvlmJi4+iCOZGf70Po4iEI3yFGMWbQNTIHNrnOJDf
 cUrtGdAXcieW5oHSjpnID5WtIz/1YcW62AGGQX9MDJ08SKeQUHdcwKvViXBPXHnjuAo1MKSWXI4
 EYIkjfEwembwNDbPeEJOKcTjfdXsu41RBj7BIr1E8e4iufWro3rLfe7l0hAqEVGeISmI76EaZr9
 TN24DlNF6Bqe+69LmH8OlMLbIi5Uzocry8Srf/oOk8cZCdZ6NhiLR68r8PwFLMxwBCu77elb3+s
 JYMpBMxGp6vitMA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 87c432c12a240f8035753ad10ce8662584a3f1f3..d157863dbc4a18b6861060579a148632f8ae9e3a 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -6,6 +6,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-sc7180.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sc7180.h>
 #include <dt-bindings/clock/qcom,gpucc-sc7180.h>
 #include <dt-bindings/clock/qcom,lpasscorecc-sc7180.h>
@@ -3284,8 +3285,10 @@ mdss_dsi0: dsi@ae94000 {
 					      "iface",
 					      "bus";
 
-				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SC7180_CX>;
@@ -3433,8 +3436,8 @@ dispcc: clock-controller@af00000 {
 			reg = <0 0x0af00000 0 0x200000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",

-- 
2.43.0


