Return-Path: <devicetree+bounces-5908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 868B17B84DD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4AFDFB208D5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E341BDDE;
	Wed,  4 Oct 2023 16:19:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5743A1BDDB
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:19:07 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98682A9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:19:05 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3215f19a13aso25910f8f.3
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 09:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696436344; x=1697041144; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=82Kqf0UBYM8c+UzHOY9T7/SD0aaAr6GxwSoS4++hAHg=;
        b=QYDaGEd3WfsgX7TJQl50NXCLncJBjlKKTJ+ujjmdK2IfG/T/DPKjiIT29icMI2JyRY
         i5I2q2iZfPwiHZM98pgrOPJurlKni2Pd7SW6BryuiEFpUfV7ivre+tgYbnHr+/XPkB5C
         NMtgLAX+3KXBqh/bQO7E9P3CA7AyPMDMFJv68tgqGEN9mEy/LyUMt4sjIr7djxDO63Xl
         reOwG8hKZV+gSpzYTQd4xAL6lWSEg2wM0/JhgLJCIkwICghPjzvRbTAgfnmt3tTfsrhL
         wGEJn8Vsnjd5LiE1uD61WvAd24j97qPO9/AYpZigPxuKcQB9P7l4PiLjyK7yE5Yu8xYi
         npdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696436344; x=1697041144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82Kqf0UBYM8c+UzHOY9T7/SD0aaAr6GxwSoS4++hAHg=;
        b=nJfTYK9NLfRLjxY7kpOjGqVQYJRoe/eCyaZLGXnWNJSN2sEvcJw28Y4fY/a6ZXsMUr
         07OsiKKD/hxmiz5E8vTCS8siVSwWSLU61TeG7FK0klqjs8GsRP8nOIX3zJvjOqJIWcPV
         ojMO4ICHDyWkNo/QRiU6s6iuDMV3/vW2NX3WA0m2mUvvnWP/L6Aobq3og8yG5si08Edw
         tINGDE1Y9Mn+nVzVefVIP2QX4iX1FzXKWXYoLZVUxHJlw4GtWsMsFzBwV4aK6sGFmI7X
         Q0z7GsfcJxlb3psKfME4tU+EwjIomCF5xgcCKUmHYFbYAxTzco0hjHT3h4PRlEI+/ujj
         5s5A==
X-Gm-Message-State: AOJu0YxB/4YBmqMlmW0I8jwsN8hz/vEaxmgHPaEyxPtf/zaIyE/BZxl0
	FeBhhEzT7pMVU9QMM3XDOl5KmQ==
X-Google-Smtp-Source: AGHT+IFa1rWD3baL3/9Ijia/7woW5DnTT/YbsOYvzWFQwZJQV05JfqyFkvNVdnjk3aYh0sMwZJ91+g==
X-Received: by 2002:adf:f48e:0:b0:324:8239:2873 with SMTP id l14-20020adff48e000000b0032482392873mr2587437wro.37.1696436344039;
        Wed, 04 Oct 2023 09:19:04 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id r5-20020adfe685000000b003177074f830sm4366940wrm.59.2023.10.04.09.19.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 09:19:03 -0700 (PDT)
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
	bryan.odonoghue@linaro.org
Subject: [PATCH v3 4/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Wed,  4 Oct 2023 17:18:53 +0100
Message-Id: <20231004161853.86382-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231004161853.86382-1-bryan.odonoghue@linaro.org>
References: <20231004161853.86382-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add in CAMCC for sc8280xp. The sc8280xp Camera Clock Controller looks
similar to most of the sdmX, smX and now scX controllers.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
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


