Return-Path: <devicetree+bounces-164262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96993A7F9F1
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:41:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07594177C27
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:39:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A38269B07;
	Tue,  8 Apr 2025 09:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="J6po00CT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9732269B13
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104793; cv=none; b=jMpa0VvbVSpzgqUute6EP/fGW2loQtl9w1Wilek9NkApK5WT5TOhQf2lC1B9p/9+32n2dKBuuaSjxei1Gcqj29SPoq3cKNGiyeYjz/VAuqJWrhHYOFwIGecA0uhP4frjhvh1vTJU26aC99EhQwbwr1Z4Jki4fLJQvorctSD7LiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104793; c=relaxed/simple;
	bh=+THkgVpoy/rRLP83IuTs8Eveo9iDzR0z4mJGgzyxS24=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cg0My1IAuXmKsNCJ10r5574ve/JanhZszt6RqdaB+vvFJ/HPa+gpmm2Ib9Yz/oABSQlajPT1YfbLaQmLLodC236tYjLSFqJvzOIUKE7JDQBejHEKAEFXmCa3guR0Gm9jbGwnCaegOD2DEnEiDZe0JMhSKSYquuPlC26TITWnZGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=J6po00CT; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5231525e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104790; x=1744709590; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ULUqJejZSC5nnlCNSxAHqEc3hbIIv1W/jt34WfulPY0=;
        b=J6po00CTnp8zTcWuUU4+A3K+2YzbfIrdw/4fJ5ia2jtq3gWySNAaq154VmWjZ6l01Y
         5RHa3kDTfMT7zC8f4pJZzWXcOx/jXPpnXae+VLQPvlNcgr9VhPF0hOKO9cExsGk4Vsmh
         o2CUMsJP9deuGQtHMjXjUZmrRW54SBjyH1YtGD4XODsyFPEYqfYIEf5Ha3EKuE8r2sQE
         W8wPyJKggOSDpRCI5Qo75RDO+potikKeGNMNJWxxs5GmsEa7zKeA4vcda7YM6O+fH3Br
         /+ONj3pYUpIbvplCyINrTmkbgisHXpGbRnPRdT874Q5qDU0rxxNDJmvpLKKCGJkha8Aj
         URxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104790; x=1744709590;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ULUqJejZSC5nnlCNSxAHqEc3hbIIv1W/jt34WfulPY0=;
        b=Jgpf8EPCs4M0fahr0BCFRggcTOIRsjc15ifmjsn8EM4XOrDpkzXkLzGQRHAgjG6vgz
         qvYmM5Da1x3yWa0Th6Cbqy6dx+mr0bjEsxv8GXEKKKVZ+2sV4IhgOEIhMMj89B1sruvj
         7RbZxnfXuR8Crr2HpIpsywe82K3kSekzT7d4miBGlnqSOGdZedRgQK2YlZSSlQTPRdoC
         qD1c9YfTjWnOjU+7e6unePlBKz6216FhFbquQSRV3OVucjrHCrckcPlUWdUrxFNtboSP
         sxzurJn1q+/MBESoNTn45zZZ0nl1PgVfvAGO+gUZZsw8J9zR5I+f7MrjtZsQtDDuEDDR
         OMYA==
X-Forwarded-Encrypted: i=1; AJvYcCUEcr027Ui2hhjHcMHCeQzWV9XCcLcrnX0M3ZfoPtV/iFJYukSqdAAp5P/FR7DbKbfO/ifJeum2MMDr@vger.kernel.org
X-Gm-Message-State: AOJu0YwjzPBIoxPm8VFlkfALNIuxNJ5gXI+kP5B1e+0UY+tj+JmbyJ6w
	fZ6IaJjNN9tutkxHJxzmcONNVFK4Kxxb2xY/QhRr7ppGSpqfMjfDHnClKOTaspc=
X-Gm-Gg: ASbGncsO2I7+gji1b3QKKug5VMRHcZWVBI3/kHcPFcK+YwkhnfJimPF8idcb9Cf8rt4
	IDA0UV/VeYSnpA7pL9chDqa9RAOEaxu53qpL4L66n1CeWBA8O9IqetC7EN8Tji5ygvteoLNYFWk
	2/j54bKnqv7LH00hzrpmYEjhRvZTJxdnIymnoR9FY2yUHtOpNDLixFfIi+lPMeGM+eizgtd+otW
	jjaoKZoKwbvZSd+tP1UTqTtxWu46EJbEEtYNZi7ayV0XcCMDpNpxRnAm6moAqs7tyLBDwYeN/l3
	tmEoGWwAYh9ip31L8sA/P3t/9uRGEXkTUoYXfoMbHvHQeIH6Pwd+NvOO92OyFgM=
X-Google-Smtp-Source: AGHT+IElEO3Zn4kWfRqQNDL9/9huemxPeaq8yM+IvbB5/Rp6O8G7xT2cBDwTI1dv0/5NwPmjEDaCHw==
X-Received: by 2002:a05:600c:474a:b0:43b:c938:1d0e with SMTP id 5b1f17b1804b1-43ecf81c7c6mr55036405e9.2.1744104789985;
        Tue, 08 Apr 2025 02:33:09 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:33:09 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:21 +0200
Subject: [PATCH v2 24/24] arm64: dts: qcom: sm8650: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-24-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2291;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=+THkgVpoy/rRLP83IuTs8Eveo9iDzR0z4mJGgzyxS24=;
 b=kA0DAAoBwTdm5oaLg9cByyZiAGf07SuiTBmhjcveEYa6ypTihMexMowGhAfxKCgeT4orS54v/
 YkCMwQAAQoAHRYhBN3SYig9ERsjO264qME3ZuaGi4PXBQJn9O0rAAoJEME3ZuaGi4PXGJsP/2Jl
 Tj2fkBiqtT3mHYL64wDFz6kOaApbi7myzukd4lRiMNojgqfD1gIiWRdICh4vjCNxqmyWK1g7Cx0
 svUsj05fWOOGFlg6NYwai/fGcNZjY5GUicGPaMg13TceM3a/aDUwMU/s79rE4OPE2LWCf44cF5Q
 TfkjQ1wxXty7sNtbo/8ICeoXRCfkMuG4RCauoM9E6D68T1Wqrcjl9f0qKPzptWRxzEmuoZeLU8t
 EWbcP7JPcxNyhVfkKZcH3KTseFrl5KMUNHx/NBDFluQ+vJ3Ugb+DI50zNgG26oI+VpL6wCtXiPj
 /wZoHVhnPDZCNgxaxXTlh3/MBot6Dfa4LhQLLbcnGIyb1T3393nu7Ggo0Ymg+Pptoe1SlTwJyuc
 Z2r4gBCCrRrBw/eXo8LJgyEkcVGhf4iJmEE2AaStSH4WeBlhT0x859Z/wfYnRwGP9QclwE+j7zN
 psU+Q4tGpMH6Bc5pUqoL6w60T8UtiZZFbNx87ugYwHP7HPlwUnpu9RBSO+8JojRRUE+mtaThJ1H
 8yG/o3ltx3hT8HuvaOWUU7PhxUfMZ9J1f2GVkzsDnH/uBvhoOLP3ZCnz6gVrOOMLSODC7GbbeNb
 MnBXFa800U9ymiUB6ogCCQ7xZ4QWJm6DpzLfjBVCb6Ize3qZyGgLZgdOEzLddrfoFIaf7w9+E27
 PQ4d8
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 818db6ba3b3be99c187512ea4acf2004422f6a18..437daccca1bbe72bf8179e5d4b2f7c097a330360 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2023, Linaro Limited
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8650-camcc.h>
 #include <dt-bindings/clock/qcom,sm8650-dispcc.h>
@@ -5213,8 +5214,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -5310,8 +5311,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -5458,10 +5459,10 @@ dispcc: clock-controller@af00000 {
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
2.45.2


