Return-Path: <devicetree+bounces-25371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F1A8130F8
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64A6B1C219F9
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 13:10:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89AD053E3F;
	Thu, 14 Dec 2023 13:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nTXdC075"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E970998
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:10:22 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a22f2a28c16so327812466b.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 05:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702559421; x=1703164221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dj/xdv07DFvQtnBJiRse372jufWHWRedV/q2JB552Gw=;
        b=nTXdC07591BgP8o66euCQCNJUPSL1TSEJSnfQGJhwIpH/zxMcIagr46Kz9yMmvXsca
         PYUbqpJfUvdDbIDh7F8IRJTAgbzI5oR7ql3GJOVbQ8/BVM8z6wTyhCZBYrVY0w2Wq6gw
         tN4Z1gOfF87eb/hZsgAuPccMvrbH3S9kWetwNH6Lh1+XwFQf6u9aXpyfxTqPmlGR4DLp
         CHKpmMKR4celz5Fhj7q+JRHXVmPppOcPN22+hd12w+ZWFzCKOMENNqnfPFnK3VAMvYwG
         kPcnd7F/+a4xrbKyTkT5PaiYKOx+ySuZsku+f3/e2HfeJxSuSdl5HGEjYCpRN3Ymo0bV
         +vBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702559421; x=1703164221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dj/xdv07DFvQtnBJiRse372jufWHWRedV/q2JB552Gw=;
        b=MqsVcynCBtELtCKJKbl1gQIPzRWjIUtMeWtGmFeW2gxz9ttQlU4Kcj8ysVUHphekvd
         jSNxt9O2z4HTb+ofN55fMWmqyyPRyo/cbeo3+qiMnTedk41++2+cPaVc98F+AhMF461t
         l6YFa9b60ozZMh/VpBaZ8o/eyCh+DqD9M8wfm4n1deDzV0lDbvo/ICfg9yyN6wIRS/dY
         6MCboXnBjyTfvh+DoqNEhY18MKJcvUwPe/nRwxirzKgAxlPKeTqFXWuKFXwXES9/SXjU
         uS0Zi7P6IUUMj+bRKWB9sh9ML3XkvrQxnZvKvibZk7lfi206q6omsDoN1P0vsLFxnUoX
         yGWw==
X-Gm-Message-State: AOJu0YzHUbs0V4FKEXAByH1eMeEyIJX4NnWSrX57iu/Q/hO+X1CW5T00
	G/CDYK2juCSuJVUs78gTiWAwZg==
X-Google-Smtp-Source: AGHT+IE9v21JflqGlQeQvlZapXPuTSOiq+n0C6xc3Zp/62SYVeg6jgOoAVfQMHHbtA/BY10Zg+TeNA==
X-Received: by 2002:a17:906:495a:b0:a1b:9f36:f37b with SMTP id f26-20020a170906495a00b00a1b9f36f37bmr3562323ejt.91.1702559421446;
        Thu, 14 Dec 2023 05:10:21 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id vq2-20020a170907a4c200b00a22faee6649sm2547776ejc.117.2023.12.14.05.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 05:10:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 1/4] arm64: dts: qcom: x1e80100: add ADSP audio codec macros
Date: Thu, 14 Dec 2023 14:10:13 +0100
Message-Id: <20231214131016.30502-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231214131016.30502-1-krzysztof.kozlowski@linaro.org>
References: <20231214131016.30502-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Low Power Audio SubSystem (LPASS) / ADSP audio codec macros on
Qualcomm SM8650.  The nodes are exactly the same as on SM8550 and
SM8650.

Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 85 ++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 8c18d7f82166..8bc6e544bbc9 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -2981,6 +2981,91 @@ nsp_noc: interconnect@320c0000 {
 			#interconnect-cells = <2>;
 		};
 
+		lpass_wsa2macro: codec@6aa0000 {
+			compatible = "qcom,x1e80100-lpass-wsa-macro", "qcom,sm8550-lpass-wsa-macro";
+			reg = <0 0x06aa0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA2_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "wsa2-mclk";
+			#sound-dai-cells = <1>;
+			sound-name-prefix = "WSA2";
+		};
+
+		lpass_rxmacro: codec@6ac0000 {
+			compatible = "qcom,x1e80100-lpass-rx-macro", "qcom,sm8550-lpass-rx-macro";
+			reg = <0 0x06ac0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_RX_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_txmacro: codec@6ae0000 {
+			compatible = "qcom,x1e80100-lpass-tx-macro", "qcom,sm8550-lpass-tx-macro";
+			reg = <0 0x06ae0000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_wsamacro: codec@6b00000 {
+			compatible = "qcom,x1e80100-lpass-wsa-macro", "qcom,sm8550-lpass-wsa-macro";
+			reg = <0 0x06b00000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_WSA_CORE_TX_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&lpass_vamacro>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec",
+				      "fsgen";
+
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+			sound-name-prefix = "WSA";
+		};
+
+		lpass_vamacro: codec@6d44000 {
+			compatible = "qcom,x1e80100-lpass-va-macro", "qcom,sm8550-lpass-va-macro";
+			reg = <0 0x06d44000 0 0x1000>;
+			clocks = <&q6prmcc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6prmcc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "mclk",
+				      "macro",
+				      "dcodec";
+
+			#clock-cells = <0>;
+			clock-output-names = "fsgen";
+			#sound-dai-cells = <1>;
+		};
+
 		lpass_tlmm: pinctrl@6e80000 {
 			compatible = "qcom,x1e80100-lpass-lpi-pinctrl", "qcom,sm8550-lpass-lpi-pinctrl";
 			reg = <0 0x06e80000 0 0x20000>,
-- 
2.34.1


