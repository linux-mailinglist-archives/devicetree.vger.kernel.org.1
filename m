Return-Path: <devicetree+bounces-24349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 022D180ECA3
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 13:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A19741F21587
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 12:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4929660EE7;
	Tue, 12 Dec 2023 12:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WDjIcpHB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22756CA
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:56:40 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40c55872d80so1770835e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 04:56:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702385798; x=1702990598; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOoLwF5XJDBfdZ6CvX/x1eieyE1PCtohRICTvTJgudc=;
        b=WDjIcpHBPYN18RxwcgonCTwYOOEhqrT4jDt3TKdX/iI/tnrH/IVqYdolLhgdefo9CJ
         qJRGqBRbulkAVf6o3BZpSdtKlZV+J1NJ+3SctME3kEgLBR9Kz8MOaHEJE/+TLNBYBGaV
         wCLF6LP0paqZNkJUWcMcxvXHKABQWcUKAlz75QAaAPpJ9PBcONKG3gNNLcaAi+Zw8ltB
         p5XPThy9gty5LYCxmP7XQq0Fh5a22UN0bsjX0a0bADS95m1mbv6z8FdUH2jfoR5JoyYT
         HIr6JgW9gDj8LMYawKXSYe4fi3j3CQqIcCGlosAZx3N/zpxRFMpClnw4TBca0SpW9jrX
         14Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702385798; x=1702990598;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nOoLwF5XJDBfdZ6CvX/x1eieyE1PCtohRICTvTJgudc=;
        b=f4WgmmLv/XXSv9XQw51c23dp5CJgNYW524httMWCoIPQ8eCxMjnTXsNk1Jtn4LE7Hi
         V3cPbKl7n3qTiLnhBfHZvbjemv5P3ryBcNI95d5uMb8jyueSRxniO6zfsaJK68Vnq5+j
         1DTQBnz7oRJxYl3BbFZYI2Ql14k8lTP3rEsXLtAHLY5FRYlNwLTF9wVUHk/jKP7tCYHx
         g3wV12T1YtIq1U10HOQHjVPbvdtouGCKJKfy0NS1NgE9/twSMHaPixkKLlxqYQiKf+uq
         PnShuMS4c/Ln1yf1efTDlII2okfZB1MnuibQ04q4YMcD1WiznBl8p3VEDs4Fl8zTG/32
         7Yyg==
X-Gm-Message-State: AOJu0YykvD0DTQRlOOiOOSCkPWcU5V4Dollqy1FJ0J9EsdZeSjaD2GkD
	wIJaCjgxyRMXycoreRf4c4jIYg==
X-Google-Smtp-Source: AGHT+IF/J3hR/hN9b8w94baKx+pgg0NaO5bJ7firGokHYaiVeUmMcjwyjkCRuM+KDCx7NL6MYvrHsA==
X-Received: by 2002:a05:600c:22ca:b0:40b:5e4a:2342 with SMTP id 10-20020a05600c22ca00b0040b5e4a2342mr3315048wmg.68.1702385798414;
        Tue, 12 Dec 2023 04:56:38 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id e12-20020a05600c4e4c00b0040b398f0585sm16820693wmq.9.2023.12.12.04.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 04:56:38 -0800 (PST)
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
Subject: [PATCH 1/2] arm64: dts: qcom: x1e80100: add ADSP GPR
Date: Tue, 12 Dec 2023 13:56:31 +0100
Message-Id: <20231212125632.54021-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212125632.54021-1-krzysztof.kozlowski@linaro.org>
References: <20231212125632.54021-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the ADSP Generic Packet Router (GPR) device node as part of audio
subsystem in Qualcomm X1E80100 SoC.

Cc: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 61cc36554eab..aee3dbe753b1 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -16,6 +16,7 @@
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
 / {
@@ -4741,6 +4742,46 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 
 				label = "lpass";
 				qcom,remote-pid = <2>;
+
+				gpr {
+					compatible = "qcom,gpr";
+					qcom,glink-channels = "adsp_apps";
+					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
+					qcom,intents = <512 20>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					q6apm: service@1 {
+						compatible = "qcom,q6apm";
+						reg = <GPR_APM_MODULE_IID>;
+						#sound-dai-cells = <0>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
+						};
+
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x1001 0x80>,
+								 <&apps_smmu 0x1061 0x0>;
+						};
+					};
+
+					q6prm: service@2 {
+						compatible = "qcom,q6prm";
+						reg = <GPR_PRM_MODULE_IID>;
+						qcom,protection-domain = "avs/audio",
+									 "msm/adsp/audio_pd";
+
+						q6prmcc: clock-controller {
+							compatible = "qcom,q6prm-lpass-clocks";
+							#clock-cells = <2>;
+						};
+					};
+				};
 			};
 		};
 
-- 
2.34.1


