Return-Path: <devicetree+bounces-164249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B73A7F9C8
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:37:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56411172B78
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF94266B5D;
	Tue,  8 Apr 2025 09:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EIng9QGH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07B5267B7E
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104771; cv=none; b=bS3wC8mg/VRT1QN0/qbTlh1nweJ14OgE+cJ5uMbhcRfqlyM5LTIy0JlVTsaKe34GjSnJP6PUoG80o/S/9marg8D2I1mqHqLerdrq+hfOVu6gXSX4NoZPRL0d/t+574sAqC474PwkFI3CCCWET6tZR0eWLK21kdTP34tneyQFWhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104771; c=relaxed/simple;
	bh=iFGdqZHw3eVy6wQKrqHQ6Jd/6PYAgGQLiGcWKrEFasw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aYDGz7FLEgtALiBBvwqAx5APj8h1k4FQ8OpFO12zlyb/wEv3lSJwNxvxQIpkoICWYxvQN9sMkUV1zwHxS8IJN5BQ9WWN4cpiP0v9MgFZOgwvnWCXT60/cZALvP6UcIcS4rZo8vjhwxRcrHZzq4MBKR/vMHclrYuDh0jBQ4f8EdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EIng9QGH; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ce4e47a85so4655625e9.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104767; x=1744709567; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7N8vtlUIKAT7uWK8aNXxI9lA9gK3w1bYYIGqJAhN1wU=;
        b=EIng9QGHyWtv1oq9Uz2IEpuCfme5rTNAk8eZzPxzKYrtp88lVck8+JZh69CHT5x5/F
         QkcbiS9UmCFRsBGV+DFQE7VmvYEGwlZCGApEbx+dKwTcjM1V6rSz4zGYqlNu5NlLKMUS
         2ZE7FXvme5knrS6SwzvH2ckMRtb8ZxeW/SEkD65C/1cr0d0peEmFNyi53xaIqN2+ptZW
         0mCRMrG7WwO0/2BV8RrBf04b0tBZ7FgC5KSUOKotPjxcHPBgI0nAsHtFiFC6smxnVDJb
         B9YqD5QoSNrRMOvSUXmK5eE+dTQoDTXpthegtNhz2uEZ/3ijD87/7klfXoJvuJjAM/pR
         muDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104767; x=1744709567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7N8vtlUIKAT7uWK8aNXxI9lA9gK3w1bYYIGqJAhN1wU=;
        b=PpQAaqC7U853xQrjzCQEdk1PlPOBeHu7CevGKMacShgEdH9bJnvLvBxivSpyC5GtQO
         ywcp58UrWPNt+IrdQcUBlhjtZyYz0F+meWYvtj3RYjqJDsh3NzHcWrGDRHVRoGK1Ql7B
         ClPWeRmdmileXf4osGhVN+lzvmC7vDYGHUZloidBBsTPV/JCQwwBt81BISUz38UeTYJL
         1ze1lEUWM6IQZtHCr2bDCmZvXHgXQF7zU5Juhmi9IpK/HK5mBx65CjioC8cNnoQQ6S8e
         7ttQBROH9XiaCwm3GM7XFxLLJwz2LqGNofHdu3s4xTgwnH2Mq3kgPEQrFh3Kk0MK2W50
         SlxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYVUJdwfQWZpQIBOyBmC7GV0LZ2WEVaysBa1bLwVoFBEvEwkEYEAj5QvvXO5MVjaugAp8JH6A3P932@vger.kernel.org
X-Gm-Message-State: AOJu0YypT4vvACYOtTJXz4Ic0EUemDjQICe0uMqAhzWuTS3EExG2Zjq3
	rMik7jDPdV+FidFbokSwOZVOD1wCrrYpHs8erCmajBol7hb2uwyor9Mp+bFgJxCnsMtc3gLt59w
	9
X-Gm-Gg: ASbGnctNa8j3742+6q3ZJY4mxTPQgtOROgnKAjwoV5G0EcllJxBhd1Zbvob2lZFqzUJ
	tE8kc9BN5wZR5eB2X/yQRPY7f9KkbN7xJYUSjnbZZG1oMoHIP1viEN7kHLFlkbEj2jSUYb4SYbA
	Q1fdlT8pofs+zNeAoLokiM0bj0uLtSHjjXopXs/gPxpCBwKBjLFFyRzyJoHl8W6VL4nRpO+jRoi
	xEi7GcdiwvcKqq48knasQzdFeTWpH9pt5AD0bPokZX2vmtTwVWVXIc71feLnBmONXlnpmkPYRJU
	EPsEMeqqlGc35rj+oX9Pmg3R/zyVVLuwyJx9yuyqtYfAyvOjBd6LGcjcJq9hhwA=
X-Google-Smtp-Source: AGHT+IGwRwzp8dgc7ekIGJqewdC6lObYgeLAaDHpf2sona7KHrppNyrPjI9IkVJYCqGr1bua4rzL4A==
X-Received: by 2002:a05:600c:3b9e:b0:439:9595:c8f4 with SMTP id 5b1f17b1804b1-43ecf57e944mr54223735e9.0.1744104767243;
        Tue, 08 Apr 2025 02:32:47 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:08 +0200
Subject: [PATCH v2 11/24] arm64: dts: qcom: sc7180: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-11-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1964;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=iFGdqZHw3eVy6wQKrqHQ6Jd/6PYAgGQLiGcWKrEFasw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0f9bBEOMUt8JTOH7MCppRiFrGcVBOiBTZLV
 uOPVOrsFseJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtHwAKCRDBN2bmhouD
 1745D/wMs7I7SIYBJ7MXt8NvWkqMNs+ldqF3dlbtu4mkvZbByhztgZzBfNnwExdsK54LiImf8ic
 qPO5iULIO6vjiCnavpp5pnfyOvORhSJzO2E787hgtVTsubKXTkITh3BxjjiakMZDyuf/4FinerP
 08FELvpKbcf2OD1aURL73qEOdDQ3SumUnYCkeOVi4xyp7nZpRtC+NLNOPtqZGm8JMPyMs7R6vQ9
 yp0Fk3Ya9lCI9IEDEq9Re3kTwLGCY1xoiW69QnpB3rtbaLIow9Cw8xNr1VbxLw/nvNyAUqF+FV1
 ZksG8BUnRZ3Y59FwYSt0ygUL7RoM3jq7JUEMfIdXyTeR+2nD7AXpyRlHBvC7C7HrZGBohk3mNIX
 n/qPi+aHLBg0jJdJOB9E0QGwSXrO/ZSr3zjTKi++eUHgWcK3vBX1oU1xe7dZ0LNwh/bE5i9avVK
 /FD3WH+mGOW2rIYDI8LQ+IwzSYJhO3N7vga4ylF2X53P9GTwxPjo+EfPM0gnUD7Mbz5xzB89P1w
 t0KEZ9zwPBe2susMYHVtuq9SEFMDXg76cMfEhGTf2eK0HZJ6a3e0w7fFth46akZrjEubqDso29Y
 1Tvm5X2h0TZxv4/YQU8UWP4Er8F5Yd4AFFhbRb47FMdWmp9ZqahIrySoqAL5UqPTIUyBQqeOeag
 aodzyid62jnoDQA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.45.2


