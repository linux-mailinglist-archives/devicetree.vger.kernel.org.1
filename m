Return-Path: <devicetree+bounces-12137-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C3A7D814E
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:54:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 516FC281F06
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13C0156D9;
	Thu, 26 Oct 2023 10:54:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="suyFaL/x"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DE414F69
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:53:59 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 704E1184
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:53:55 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40853c639abso6075155e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698317634; x=1698922434; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i/dkqG7TFqhS22WCtOJCYFAnzbujpg+JGXvYF9Z8Jtw=;
        b=suyFaL/xKzuUOBIRlxos6yDaCHsSgyEnja4hnRO7Wb0YByWcKsYFqTEIWP1FbpZORr
         nO7I5pI53f2ggjNXiztGWzyZVbsii5/dooQ6VNRWxU9wf5NJ8x9yJYozT+w53f2kpvJk
         ffhwOChxBiuAF10H+DuVbuGxWHC8d2YFLDi1vSZxMC2RzvWrrppi0F25sN/tuXcYJpKQ
         bI1YPMKtSnd1fQqAs2JNEBuDr9EV3xRrk3bDsJj9PW5vewP87iKV72x2OsA7JY6tuFHQ
         v0ybsjCIaWuxeNSnq1OGw3a6g0TnKnOlJyzL9DG2Jh9BeVp+26ZXj537eL/PygbpzF7j
         1aMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698317634; x=1698922434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/dkqG7TFqhS22WCtOJCYFAnzbujpg+JGXvYF9Z8Jtw=;
        b=O9CIfFOv8fntdQecaztrdMF4AK0c93YQEXeED5EwpvayD+70UriWnq13EhaFF4QONs
         6a2CfUwKGgvefh4hQ0r9IBUm6C+QsVktcATJPL52I7x5s4SK8yy5INMAQoOWSCW7dkpA
         Mdqht8mvReYGmLz94zlyf1rMSQRAlQaEzd5Mx8+/17CNchk18sq47GVxPUXM6rRJWpbB
         SMH1W8Q9gKR10pD0fNo9UqrC30Vgb5fnwtRcLSUfPqkQOxHPzEtUKXkLZX0n3o7E3eqh
         NR2RjiggpOvwrYZ5+phDlUDQBLwhUVw6tBeb4ipF67AlwSyCSCcBmIH0Uz+chxN/gota
         Gmfw==
X-Gm-Message-State: AOJu0Yz6rJhCBYrji/HzLwXHwv44KJ3yZxU/XjnXKCDcOiHGMiqpzrlq
	bqlUbAUVQ2xjbqDr8zHSdL/Aww==
X-Google-Smtp-Source: AGHT+IGILeSVmfxEYcvyxYx8c/ToHYzzKbHFTRzMfsA0M6T3gDBJJCkVI8EHXkclA6oZ3lYIhHayXA==
X-Received: by 2002:a05:600c:468d:b0:409:ca6:d79d with SMTP id p13-20020a05600c468d00b004090ca6d79dmr6542090wmo.18.1698317633936;
        Thu, 26 Oct 2023 03:53:53 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id y9-20020a7bcd89000000b00407efbc4361sm2239465wmj.9.2023.10.26.03.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 03:53:53 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH v4 4/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Thu, 26 Oct 2023 11:53:45 +0100
Message-Id: <20231026105345.3376-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
References: <20231026105345.3376-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
similar to most of the sdmX, smX and now scX controllers.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index cad59af7ccef..fafea0f34fd9 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,gpucc-sc8280xp.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
+#include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
@@ -3450,6 +3451,20 @@ usb_1_role_switch: endpoint {
 			};
 		};
 
+		camcc: clock-controller@ad00000 {
+			compatible = "qcom,sc8280xp-camcc";
+			reg = <0 0x0ad00000 0 0x20000>;
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		mdss0: display-subsystem@ae00000 {
 			compatible = "qcom,sc8280xp-mdss";
 			reg = <0 0x0ae00000 0 0x1000>;
-- 
2.40.1


