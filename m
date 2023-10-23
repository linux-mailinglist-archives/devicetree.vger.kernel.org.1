Return-Path: <devicetree+bounces-10981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2987D3B01
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBF3E2813F7
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606031BDFB;
	Mon, 23 Oct 2023 15:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qWTNjPXB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64A71BDE8
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 15:38:35 +0000 (UTC)
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4294210D
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:38:33 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2c16757987fso50152461fa.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698075511; x=1698680311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i/dkqG7TFqhS22WCtOJCYFAnzbujpg+JGXvYF9Z8Jtw=;
        b=qWTNjPXBXo02bg2JHbXcWVUvQi6uUlqULZ4dp/6ehrzn3gZJ44BxqzyYbkjS9lZd4m
         eqJbN3ArmiAJhidSJuggjX7OrQmw9udwlQdfXwmXBN8SzDp5dDGT8abNR+5SYQVxnzAZ
         oqUThjzYBHxpMftXe04NAbtK5LYRTuIvixecYgfP/FMA1HnZ+ot4WOyBspMQgkXQeMLh
         PL/lg07mLYfiYU2yXIthAKnICyUXPJ2GXE51iG2Z5rwrt45Wi0u3MkSH51gMoXDPBsfj
         W6Ql6WuIamK8yeG9fNeLsOgifZuWHl6ORLZwUTNveXbfMYmAe9Z6Yw1xPdGKMuJHob+G
         mv0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075511; x=1698680311;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i/dkqG7TFqhS22WCtOJCYFAnzbujpg+JGXvYF9Z8Jtw=;
        b=qVQFYSrNeNg/aavMAzukFaEe1nESADdolhxn/VxGnomcr2DFg5+beWdf+D7y6YIn6a
         VczHAU1aaNAdKzlIGPvn/FUtEBKVYzg79X+qNF/y62i4wP5Sz3CUjZvKTnuMK5AzCjQb
         u1WynoUNT+EL7Ui8evee6jsOpCa8214lbyJlPruaOONW+jxDGKzbhxmpUK/bQf7P5PDe
         DJGiFPzRuxxNZcJrqX7p0cXtBkkZgFfbWWAbqMycz/lN6YsRe1FI2hOl5Xwhp9DaLpaZ
         oHJXKESDC3f3VYWYGtFn5tllVRnc2Nl1buAHFw0tGJhRxL9oBVDJPkolDr8oweWkv92t
         Sm4A==
X-Gm-Message-State: AOJu0Yx4RHFKqbMnaQ1TNdCgFS5nCT5bZ1jMaIFyZo4ZmW7jzbfP5VuS
	ZsqZJ2icN+GLdUB9b0el2VfY4A==
X-Google-Smtp-Source: AGHT+IGngUR8rAtE5PrJsk2wr4hxv06C9qj0fa4jQ7I8UYFXCU2Nwn1OFEnlZtFqOWcVgZkXoUM5mg==
X-Received: by 2002:a2e:8619:0:b0:2c5:1989:ce1c with SMTP id a25-20020a2e8619000000b002c51989ce1cmr5983085lji.26.1698075511078;
        Mon, 23 Oct 2023 08:38:31 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id f4-20020a5d50c4000000b0032da319a27asm8096929wrt.9.2023.10.23.08.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:38:30 -0700 (PDT)
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
Subject: [PATCH v3.1 4/4] arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp
Date: Mon, 23 Oct 2023 16:38:21 +0100
Message-Id: <20231023153821.189331-5-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231023153821.189331-1-bryan.odonoghue@linaro.org>
References: <20231023153821.189331-1-bryan.odonoghue@linaro.org>
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


