Return-Path: <devicetree+bounces-19995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B933E7FD7E3
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA9D81C20BE5
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D270C200C8;
	Wed, 29 Nov 2023 13:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RbDR8dYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524DC1735
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:22:54 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9fd0059a967so172116666b.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701264173; x=1701868973; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V8cKP8tRfrnJA83704gxkzdOYrlmQTMNSgQeXlvMQfk=;
        b=RbDR8dYcHiCTBz0d01OTO+c+eOfW23uwsI9HwIng3gsuLf3xtHa/8vP1AlpD095NmH
         R6vmGA3KZGH4/OLNWf5i7hFSoPIryrnsMWmV8jAkUnfkq8tlWFQwL1vElERLIAg4dvHq
         OLKZIVOCPgwcWsFSGGvxvYzMb3LFy7cXB9lmniSBTLX0mENS/mKu57Bz+ZuCAgGJxCDc
         Rx+gzm5duLiCZM8VXnKNGDaWHKcSFl4LaXlcg5fEHQ5Q6EGvJJiopmd1+rbNiuvaTX9n
         sCLd9W6kLV34cRM9fqkhJIwk5ngE1jTgGuoJtZ3xmr5zPTDS+TQ52KzYoZ5nmvWtJm5x
         NJTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701264173; x=1701868973;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V8cKP8tRfrnJA83704gxkzdOYrlmQTMNSgQeXlvMQfk=;
        b=iCm5oOD1mJQivkxyEgIDuCfN4BfO9af7AZvesffkA5qQwToLAlM57PSkIm8XOC9ogP
         tOfqCesISBDyJ0yZR2t9jLvZoXdw2xKH7MDtOa1N2sFrMGbFRsTg/x+FAEQ7XLhoQ7dJ
         Sy0HjeXey1UD/ddTYvL/jIHVB9QM0qD7UFiwhf1Ni8n0VWiN6+Jqp/CGR6PJGuSDOnE4
         xen/CzXC/aGbUWtBTUV8aezNti7Yqe4Pui+z/R5K2rzSjsYYGhiXNFneGoZwxRxbUHRp
         SD6nAgpKeJGN5LRW41EytiX042mqb4oVPtD9oeVOXfHZJIU7G1ElOfEIyMuqvg6xRrON
         ZdhA==
X-Gm-Message-State: AOJu0Yz76zGhQkpbRyIPVfOqfbMT6mKd2TWZ09nJJQltXcDb6/3XMeGQ
	0Ez1Y6miVFe89kLj3I+f6BxOkIgjAZ22kh5vCrk=
X-Google-Smtp-Source: AGHT+IECkp9Gbm6qzKkc7lwm9UVyumqJ4XPBZZczUNpzbW2fxEIkSaFfkE7RSlm6QoOYEMMEqbPhSg==
X-Received: by 2002:a17:906:b88d:b0:9ae:50ec:bd81 with SMTP id hb13-20020a170906b88d00b009ae50ecbd81mr17811111ejb.21.1701264172765;
        Wed, 29 Nov 2023 05:22:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id lb16-20020a170907785000b009fda665860csm7844842ejc.22.2023.11.29.05.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 05:22:52 -0800 (PST)
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
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 1/5] arm64: dts: qcom: sm8650: add ADSP GPR
Date: Wed, 29 Nov 2023 14:22:43 +0100
Message-Id: <20231129132247.63721-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231129132247.63721-1-krzysztof.kozlowski@linaro.org>
References: <20231129132247.63721-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the ADSP Generic Packet Router (GPR) device node as part of audio
subsystem in Qualcomm SM8650 SoC.

Cc: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 40 ++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 41dfa5e19a15..9df79297dad7 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -4326,6 +4326,46 @@ fastrpc {
 					#address-cells = <1>;
 					#size-cells = <0>;
 				};
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
+						q6apmdai: dais {
+							compatible = "qcom,q6apm-dais";
+							iommus = <&apps_smmu 0x1001 0x80>,
+								 <&apps_smmu 0x1061 0x0>;
+						};
+
+						q6apmbedai: bedais {
+							compatible = "qcom,q6apm-lpass-dais";
+							#sound-dai-cells = <1>;
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


