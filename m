Return-Path: <devicetree+bounces-128590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 848F09E915B
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B209628123C
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E84021B19C;
	Mon,  9 Dec 2024 11:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G+o9abM0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7AD21A938
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733742161; cv=none; b=XK9Y/T1yvX0jnm0mfJ+N6ziOD5BlNaB5iAltizZC2Q9SK3DwqDFyq+4xCtEEI8p/ecQsaurOAdvMuw5XOTlXml8VT/LNGSe9BYRp+boav7h5lqoBMnQSpMbUehhIrFoe2YU0F8i+klAekEixG2ev3SzM1NHVyAiYOcldxMq+Na8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733742161; c=relaxed/simple;
	bh=ojNBKn2Cn0kL/c1PWCkFJmK3q2qRhAktzyUnFGcbPSU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JOqsQRSO7BU9FeL2tcIP4sINeUkdVc1Oy7SENjVJwNbX0S2QDqDeZk8P1PEqWd53CpLitfcd6tD5a/JVBjWpfaNSIuXHBz6flFbM/HVITO7VacDbQx3Vsjq/zd9DUzPANk33y9xDLvAbI4HBo0sEqbfqTZAjdSAZUXtffzbapoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G+o9abM0; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d3cfa1da14so205462a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733742156; x=1734346956; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AiJezWnFLPyP/UDR+sDZkKbQNqEaekKVv8EfgzgM7q4=;
        b=G+o9abM0/4OXgRK2aLVOaJeHnuRHlHsIa7FGYmQ5mAQkJaC51Rt0hwavUstezbtS1C
         a0g7blklzP3PH9wj/66zUbn6i/4wpcYGl36PU7OvD1wr84Oj8mehb1AYgTuww+bK4KPL
         /4YQTFVALWfeewH8A+60O3jcLg7MFb/MwMyISXmGFkpkFjNVsgkrjJj4k+XP1LlgLor2
         lrPqicGIRfMgpee9vywLp7vwTwuXEZnq3W7XMCDn3LIycRuzEv8wtjX7i/OUGiJjl7Oc
         SiZsI1bKwAlMw4RF7Wr7vK88mwRKJRrJVAqXdHSl00gPBXQCYPNSDwng4NqZftG8UHlE
         F7dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733742156; x=1734346956;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AiJezWnFLPyP/UDR+sDZkKbQNqEaekKVv8EfgzgM7q4=;
        b=CRTUOdCiTTHaREJhG90CaR5t5s5vIAmkNf1DXstudJbNNbhw+SgJuAlfhEnoB5T/AP
         75R9g0M05sELWChfXPUCbRganXWGqa8S44Wr9hW5MgtdBSE2WvkUGXCWISkWa0MNGm/9
         eR8bpmk5zGkYgBaDgcpnLMpTl+qA5Aic5/mOMsoSe/hXTDQaxMS29KURo8XTUvWVHWo1
         HNlpohu3W1dSpKfFw9LgHk8foIljh6XcHxbkTiIgZtDz8rng9re38Nezhe2YikT39pbv
         DJer/QVMUurViT9+J3zEoYyw5nDEvuZc2AfP7vEUBL4b0UIYmVwbD1F0yPwWyRb1sW2H
         Llcg==
X-Forwarded-Encrypted: i=1; AJvYcCUV9PUF3p+ddHrlDxvPH56dnbnouM3xc7+qLEenLClMbGQ1I9KM3ZIKeUkTlmY2m0D4BPYHoAZfSCbC@vger.kernel.org
X-Gm-Message-State: AOJu0YxEgGvQ3S1//nBZ/QGIy0XzvBi10+l0xev8XVP+7Hb8If/XO7nC
	p+9tb+6dHL4nQoAU2QpIcx2gtZF/fFAlLH0uhG2SgVoSGf6mliQQkKGDD+Exs8s=
X-Gm-Gg: ASbGncur9qRwZ3HZovj/3dzkL4eP+jgU41tY9C7BM5WmPNjNqroehWh7wzLIzP3DXrp
	xegM8dBYTJBclHkmculdqEnOwhKRTcqPtmjFQKdA27Cez/qMnTE+P/nVAa4h6/LymchmRRaFsuD
	OtrpbryojoBBc/4bBh2fwfTULnjqH4o+7jz09nXAtBMrYM6iFr+tk8mI4E8lYY1cEIrzqxsGa0l
	n6CczfvJAJjik5XS09SQsXTGI5tAh1s99FR9sdePR6zAWrAfY2/0GTMMXzhRVOImgAdxw==
X-Google-Smtp-Source: AGHT+IGKXwbCUPH3IuMuyf0snHk+QvGd4G+6BUZERDpK+riKYxJ+eGLFzrJ3iPmZVjP0/DWHQxG9Aw==
X-Received: by 2002:a05:6402:40c7:b0:5d0:eb6b:1a31 with SMTP id 4fb4d7f45d1cf-5d3be6ae309mr3445049a12.5.1733742155894;
        Mon, 09 Dec 2024 03:02:35 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3dd4f641bsm3348818a12.51.2024.12.09.03.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:02:34 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 12:02:09 +0100
Subject: [PATCH v2 04/19] arm64: dts: qcom: sm8450: Fix ADSP memory base
 and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-dts-qcom-cdsp-mpss-base-address-v2-4-d85a3bd5cced@linaro.org>
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7362;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ojNBKn2Cn0kL/c1PWCkFJmK3q2qRhAktzyUnFGcbPSU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnVs4zau1QfwAGKYpqrqIHNBY2ZKXAp+oLLbGFn
 xV2Bn6XLYiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1bOMwAKCRDBN2bmhouD
 1zx9D/0Xl0QeWsWUx7GCSma6eq9wWiq2xDTI5GOKaNSI5ktZDOejXE6hSLrY8MG6CuoiRB7d29N
 ZK7c8R2GQwyQOB6wX4HcJXLJh95UEg1VJiNHNqRZt0mCH5PiL62ve777ua5EsjpVtVomMPrNyl/
 E3I342Cf7a4t5N4LOTmJzpT5Qau90aaV55JYb9jt/FPcIuifCxHViqJoWkB9R8VE0iHD14Z6jpv
 j+G0IXz3y73KIIRIjjr26FnYnxAQBo3JQ6mTl9tl1qdbHhN2ZOF59NvyxN3CRUov2wWzhcaVXbQ
 2PgvwenfDNJ4UBMkONp09jE2b8Agpl5SJhvCVd1MEEEWtXLxr/4wIm4WicRWSMjCXWxpoWvgsL1
 mvyU+hoGdr+vGJa72Tm3qZBDFXgGaBeSzhsxvxga5loinLDT/QN7Z3i/esXseua6gb+o9joxFO2
 R76Aoi+JFlods+RuNmQlte1oFcm5g/g6/X0BZgKMDV1Kk25t6KzDIu3ZaAZ4BAGhiFqr+BxiZRA
 TSjgNvplyw9AO3OIHXYi9Ss7MQzAc3Nji7/mwfHqXbsdSNlF5bMiv3JKJVpNOB/uriX43aXFkQT
 jkIx+cglERVfgagsyCm1/CFQ1gEO5LZk+LYMawIjWcLVWvd6hco/Eemg2wvp0eWh+099S23CYL5
 hxg51fXudYt0AJw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0300_0000 with length of 0x10000, which also matches
downstream DTS.  0x3000_0000, value used so far, was in datasheet is the
region of CDSP.

Correct the base address and length, which also moves the node to
different place to keep things sorted by unit address.  The diff looks
big, but only the unit address and "reg" property were changed.  This
should have no functional impact on Linux users, because PAS loader does
not use this address space at all.

Fixes: 1172729576fb ("arm64: dts: qcom: sm8450: Add remoteproc enablers and instances")
Cc: stable@vger.kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 212 +++++++++++++++++------------------
 1 file changed, 106 insertions(+), 106 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 53147aa6f7e4acb102dd5dee51f0aec164b971c7..d028079c11bdc2dd2b254f7f7d85e315a86f79bc 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2496,6 +2496,112 @@ compute-cb@3 {
 			};
 		};
 
+		remoteproc_adsp: remoteproc@3000000 {
+			compatible = "qcom,sm8450-adsp-pas";
+			reg = <0x0 0x03000000 0x0 0x10000>;
+
+			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd RPMHPD_LCX>,
+					<&rpmhpd RPMHPD_LMX>;
+			power-domain-names = "lcx", "lmx";
+
+			memory-region = <&adsp_mem>;
+
+			qcom,qmp = <&aoss_qmp>;
+
+			qcom,smem-states = <&smp2p_adsp_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			remoteproc_adsp_glink: glink-edge {
+				interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+							     IPCC_MPROC_SIGNAL_GLINK_QMP
+							     IRQ_TYPE_EDGE_RISING>;
+				mboxes = <&ipcc IPCC_CLIENT_LPASS
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+				label = "lpass";
+				qcom,remote-pid = <2>;
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
+							iommus = <&apps_smmu 0x1801 0x0>;
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
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "adsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1803 0x0>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1804 0x0>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1805 0x0>;
+					};
+				};
+			};
+		};
+
 		wsa2macro: codec@31e0000 {
 			compatible = "qcom,sm8450-lpass-wsa-macro";
 			reg = <0 0x031e0000 0 0x1000>;
@@ -2692,112 +2798,6 @@ vamacro: codec@33f0000 {
 			status = "disabled";
 		};
 
-		remoteproc_adsp: remoteproc@30000000 {
-			compatible = "qcom,sm8450-adsp-pas";
-			reg = <0 0x30000000 0 0x100>;
-
-			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
-			interrupt-names = "wdog", "fatal", "ready",
-					  "handover", "stop-ack";
-
-			clocks = <&rpmhcc RPMH_CXO_CLK>;
-			clock-names = "xo";
-
-			power-domains = <&rpmhpd RPMHPD_LCX>,
-					<&rpmhpd RPMHPD_LMX>;
-			power-domain-names = "lcx", "lmx";
-
-			memory-region = <&adsp_mem>;
-
-			qcom,qmp = <&aoss_qmp>;
-
-			qcom,smem-states = <&smp2p_adsp_out 0>;
-			qcom,smem-state-names = "stop";
-
-			status = "disabled";
-
-			remoteproc_adsp_glink: glink-edge {
-				interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
-							     IPCC_MPROC_SIGNAL_GLINK_QMP
-							     IRQ_TYPE_EDGE_RISING>;
-				mboxes = <&ipcc IPCC_CLIENT_LPASS
-						IPCC_MPROC_SIGNAL_GLINK_QMP>;
-
-				label = "lpass";
-				qcom,remote-pid = <2>;
-
-				gpr {
-					compatible = "qcom,gpr";
-					qcom,glink-channels = "adsp_apps";
-					qcom,domain = <GPR_DOMAIN_ID_ADSP>;
-					qcom,intents = <512 20>;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					q6apm: service@1 {
-						compatible = "qcom,q6apm";
-						reg = <GPR_APM_MODULE_IID>;
-						#sound-dai-cells = <0>;
-						qcom,protection-domain = "avs/audio",
-									 "msm/adsp/audio_pd";
-
-						q6apmdai: dais {
-							compatible = "qcom,q6apm-dais";
-							iommus = <&apps_smmu 0x1801 0x0>;
-						};
-
-						q6apmbedai: bedais {
-							compatible = "qcom,q6apm-lpass-dais";
-							#sound-dai-cells = <1>;
-						};
-					};
-
-					q6prm: service@2 {
-						compatible = "qcom,q6prm";
-						reg = <GPR_PRM_MODULE_IID>;
-						qcom,protection-domain = "avs/audio",
-									 "msm/adsp/audio_pd";
-
-						q6prmcc: clock-controller {
-							compatible = "qcom,q6prm-lpass-clocks";
-							#clock-cells = <2>;
-						};
-					};
-				};
-
-				fastrpc {
-					compatible = "qcom,fastrpc";
-					qcom,glink-channels = "fastrpcglink-apps-dsp";
-					label = "adsp";
-					qcom,non-secure-domain;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					compute-cb@3 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <3>;
-						iommus = <&apps_smmu 0x1803 0x0>;
-					};
-
-					compute-cb@4 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <4>;
-						iommus = <&apps_smmu 0x1804 0x0>;
-					};
-
-					compute-cb@5 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <5>;
-						iommus = <&apps_smmu 0x1805 0x0>;
-					};
-				};
-			};
-		};
-
 		remoteproc_cdsp: remoteproc@32300000 {
 			compatible = "qcom,sm8450-cdsp-pas";
 			reg = <0 0x32300000 0 0x1400000>;

-- 
2.43.0


