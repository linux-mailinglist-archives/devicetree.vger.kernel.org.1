Return-Path: <devicetree+bounces-12120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8C37D8064
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 12:14:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58BC8281B71
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 10:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B291D2D033;
	Thu, 26 Oct 2023 10:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wxo3Nz9q"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BDC2D02B
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 10:14:03 +0000 (UTC)
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC498183
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:13:57 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-32dbbf3c782so1124446f8f.1
        for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 03:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698315236; x=1698920036; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i/dkqG7TFqhS22WCtOJCYFAnzbujpg+JGXvYF9Z8Jtw=;
        b=wxo3Nz9qGHFv2wfl3bZHnL2oQUbsRc0bL9RBbjsMPdAz/V2Zc+q+rEqsPB1a0bwUnD
         ac9XQ6wAX+v2yolYmlxfqcwtKSxJ4QKUYXsGU6GnBitUsYYM8c5kam6qpmnXsSK6j8PY
         Jn1KfbLfXiUvGw69CIUv/B6mJuAfHw+eY5PuDEJBLMjueB8jl1ycS0m4qZM1tcRR0LKF
         DJfvtmoFnx7V7FwQ6jgXSwEI9PnBIjf/YiBdaLxub+g3mwNli3SzsSaCckUNf2eyh3US
         uuA6vn2G337Mn1+8wKyiDfYwDRlYoMmHkPjpZmon/E50rrT5gh9bdaQsYw1ADEGBD0bY
         hf7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698315236; x=1698920036;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/dkqG7TFqhS22WCtOJCYFAnzbujpg+JGXvYF9Z8Jtw=;
        b=cTtGB/UN7KmEjKa0f28ON+S7sJ9ErJqxnPigcPBUq+9oPWH36SypCaUjBzZxWrdbdH
         jCMRjSz5D+Q2N3pc0uWEWm7XTawlenJsvI9qhi2h41n+Lia6kfvBXeG0KwQYmLbIG5Jf
         U4y0che+HL9HzAC3ryQoshdl3YGZ4a+M/9bxLMuOywadyHTIAU7ctTrF/ASuJxw2bYWh
         g7bhk6rXis8lihVPR+MOADu4wLhQGcRjbMZ/oLG8kWNTXxXCJcBGuORn0m4UBBgUleiQ
         GkvADShdp/HPmrN1OQDYbx5siN30cUEmXvCh/6XpA8IB0NKQa8dA9Bq+TUCSdvf+XmXy
         YwQg==
X-Gm-Message-State: AOJu0Yy+feG2O0kMfxRvuTsvN5DY2SWjDLPyn+ZWSnf6EbPrPf15OCM3
	O535Gvq4bJpA7sXTYgOucItSug==
X-Google-Smtp-Source: AGHT+IEdZ6ESjD0Z2C0Mu+lrmY/QFkZ9eAlkOPa3rC2Wzc8rz47SBBD7chahDPKAxFfXfv3/PBCbyA==
X-Received: by 2002:a05:6000:118b:b0:32d:a431:9045 with SMTP id g11-20020a056000118b00b0032da4319045mr1983752wrx.30.1698315236442;
        Thu, 26 Oct 2023 03:13:56 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id m21-20020a056000181500b003271be8440csm13913103wrh.101.2023.10.26.03.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 03:13:55 -0700 (PDT)
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
Subject: [PATCH v4 4/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Thu, 26 Oct 2023 11:13:43 +0100
Message-Id: <20231026101343.3300-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231026101343.3300-1-bryan.odonoghue@linaro.org>
References: <aef93a48cf270d5078ccdc39d95113a4.sboyd@kernel.org>
 <20231026101343.3300-1-bryan.odonoghue@linaro.org>
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


