Return-Path: <devicetree+bounces-18505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 055A67F6F56
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:21:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 235FD1C20E14
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E329C8ED;
	Fri, 24 Nov 2023 09:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hkQ6J6vR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39A0F10D0
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:20:54 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40b394f13b1so5772145e9.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700817652; x=1701422452; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lfu2ORpkeCL1UpHBva1eJY9Hjq38Pt6Ou/3N+ye6TmI=;
        b=hkQ6J6vR+L7Vv/ejvjQH56zM43/YyyIi7r3EWXE30BL7TkvCv3Urzhl6NS1CJcKA2Q
         52ayk0b0rJ2vq0AGVC/MJDmDKCNdCnFDfMZioAcJ9qkOBMkQqpQnlQU7TnWJJds5Ht1O
         XSigc2awJxRKerqrjd/BEWgSNuDp2S7tfX87f9GN2yiw4IPJqWmVESkcq3WNJ0V/MT+4
         LRltVTriDhtYzTudM98Li4nokpy2ayg3hzYi5ymexEewWMn5qkwxrPjHxHZENdAubZij
         8kuqoWcx5s7+Yb66TxWlxNNTgbuukLXBxesdq93glqFO5j5vJHOmsrgIozh/3cX2eHFf
         QLTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700817652; x=1701422452;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lfu2ORpkeCL1UpHBva1eJY9Hjq38Pt6Ou/3N+ye6TmI=;
        b=rkyivcwkbQTPSpvMgOrCHMb+yqeWh6CnC8VNCHpW77D2XQ9Z3oPSYJLzp7jHR9Ywto
         Rjf70QpGKDHC28DTNVo/vTD3coUPETphV2oyjRDZxiRtOlluHKWcVOICwURvG+rFRyod
         lPl5FdK3cz6rGjdEEUBKnM+NyF9EWBh6TmIXJTB0giTizUBxyMiYAXSkJ3H/AyEeV24W
         VgxFkX3bMuFK59/Uw5bICsXbP59x10JCgwxQJ6peClxTHQL8KTPPcy+wp74xQaGOfuoo
         nburbvaYN2WKXrJGYV91kHsRRcCJwV35G9umqLnXiDpPe0nDMAmF4aeNoXMfbZlrES0G
         Ydbw==
X-Gm-Message-State: AOJu0YwKkjDB6WRggubrhXEhVPsGhlmT8p3JaUaFn3aMt0YxrgwQQnQh
	upsNDfUF0JH4kq2kbjlVOEVKBamYIstr2HdMETh9XBO9
X-Google-Smtp-Source: AGHT+IFiN4mrqM1Mt+SLGl/SWXrOz9FD12gOHjwJDGTlx3KFNX1ZR9DhT3RXItdfEJUV3waxn5lK5g==
X-Received: by 2002:adf:fa85:0:b0:332:d0be:8ddb with SMTP id h5-20020adffa85000000b00332d0be8ddbmr1636621wrr.63.1700817652743;
        Fri, 24 Nov 2023 01:20:52 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m23-20020a056000025700b00332ce0d7300sm3805755wrz.92.2023.11.24.01.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:20:52 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 10:20:40 +0100
Subject: [PATCH v4 3/8] arm64: dts: qcom: pm8550ve: make PMK8550VE SID
 configurable
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231124-topic-sm8650-upstream-dt-v4-3-e402e73cc5f0@linaro.org>
References: <20231124-topic-sm8650-upstream-dt-v4-0-e402e73cc5f0@linaro.org>
In-Reply-To: <20231124-topic-sm8650-upstream-dt-v4-0-e402e73cc5f0@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2054;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=GxogOVA0VSEH06pH186Sg87gTWs7OvO1dtqJiV/PY6g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGruitilUetmKscIvv10imWmb9ypLRhwEudkWqtd
 Iwsq5a+JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBq7gAKCRB33NvayMhJ0a/iD/
 wK0zYerWdBuHoAsd4b10h66sIC7AW/fhzGeDdATVw1SmQytika59VlkN8ECsQGGHTUBsKUe2VQZztP
 5Jdb7i281G5P+iUBgvyp59aH/0AxZ1Gg4Gd2J5ngzRapUYkFC2M+z/EscsSKWABujR0KphR1wSl/Hl
 yuUlQioLpqeGhLpZoJsOOolArQfWRRh9KuWa9MRIjL2c25DDT4+VvGxVhk92I9WyY8ZGR4//L+CHY2
 5juci1o5jHVv7/iWfSScHjbH/cTaBfHEci18G2Fy5qopr246BYBQBs1aMUnJqIZAa49P7V+B5t0TuC
 SEeJkWR1ro9gQBX6E05xj2WEMCxOJ6nbOoVm/Nk1IH5i53d4B9sKA+axNxEUWcL/UeL6OgzRHUY8VQ
 Jdg5ntaMn3CzZ64zkrof4InxDVhI/wcb1q5vp0ncYs9Qzb5Vuh4cSVltNXY8eMBnW1RHbNfu8YU1Y6
 Pe4voiLWHz+cbplfC4RN9qdnIq0Yc8h5NEr48d2J95P8iwbzQlDBZUu8/HRXccPSFrItJ4UlvheFMk
 Q4ghYDqrM0v369omOeniSbor80BYGsdgzPinYCWHMHkhwhCAZo1L7pFyCQiQcdGyV0kYs6LMPH2Xdj
 BYlLZIrOoeddqsxoCNZpqcnxJ5y3GxQPWt50+EsOZgVwJ9+JkjRAI7Siyhuw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The pm8550ve can be found with a different SID on SM8650 platforms,
make it configurable.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8550ve.dtsi  | 6 +++---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 1 +
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 1 +
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
index c47646a467be..4dc1f03ab2c7 100644
--- a/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8550ve.dtsi
@@ -33,16 +33,16 @@ trip1 {
 
 
 &spmi_bus {
-	pm8550ve: pmic@5 {
+	pm8550ve: pmic@PMK8550VE_SID {
 		compatible = "qcom,pm8550", "qcom,spmi-pmic";
-		reg = <0x5 SPMI_USID>;
+		reg = <PMK8550VE_SID SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
 		pm8550ve_temp_alarm: temp-alarm@a00 {
 			compatible = "qcom,spmi-temp-alarm";
 			reg = <0xa00>;
-			interrupts = <0x5 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
+			interrupts = <PMK8550VE_SID 0xa 0x0 IRQ_TYPE_EDGE_BOTH>;
 			#thermal-sensor-cells = <0>;
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 9a70875028b7..ac045bfc51e5 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -10,6 +10,7 @@
 #include "pm8010.dtsi"
 #include "pm8550.dtsi"
 #include "pm8550b.dtsi"
+#define PMK8550VE_SID 5
 #include "pm8550ve.dtsi"
 #include "pm8550vs.dtsi"
 #include "pmk8550.dtsi"
diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index eef811def39b..6d5c2312960f 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -11,6 +11,7 @@
 #include "pm8010.dtsi"
 #include "pm8550.dtsi"
 #include "pm8550b.dtsi"
+#define PMK8550VE_SID 5
 #include "pm8550ve.dtsi"
 #include "pm8550vs.dtsi"
 #include "pmk8550.dtsi"

-- 
2.34.1


