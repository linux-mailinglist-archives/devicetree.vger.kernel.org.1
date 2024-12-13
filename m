Return-Path: <devicetree+bounces-130828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6706F9F0FDB
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 15:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EFC2163E5E
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 14:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC541EC006;
	Fri, 13 Dec 2024 14:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UMKivv1K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC031EB9E3
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 14:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734101683; cv=none; b=SZ4+0FhnhqAxo8DZ7LcfPNfbrMjRs2SuR62p00Kst0D7gG1o8iJMPLO+jMGCjrWVl8C5WdDd+6v6Jleexw4+v0ilYfgXeYLwvZt9NL89wyGzvtWNdtgFq/gsN3s5nmFTUni9QA/pEad1hHEQnbmeCyp7keO5h2QjrY1cvvWgbWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734101683; c=relaxed/simple;
	bh=69rRyzD7UVwsDJrvawwBIb2zszx7qa/tJWcDrcRmByM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A4GrYL4Uc5OiHsKDqSY6UPOZHYCPPVeObGf7hS+ParOk7hGwEVMmYvKN8YBv6Xo0fK3vXIklPkT4oFea7Aypcc17/t2kH5Wt7FJD7D807CnzjihzWub1T/v83n4XRkAq0rciYZxF0PjTrtDxR4esCeVJHbnYQkDNVI/RC6wpLz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UMKivv1K; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-434e9e22a99so1857195e9.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 06:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734101679; x=1734706479; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GBsKHrKNRUATgmtRwROOAjv7TEkAzQZ7Y8QwFCRkRf0=;
        b=UMKivv1KRkLwm1iL0XmhQOe55e+kKo1qC8E7/8GlE3VyX6CE4bZLGeCFD6X9d+zv+z
         KQ0h9/yHw/PxBAvv7ca9PYae+ZPnuaZtg0UmLCEwtnvUTmAi48+WdzW8xBIXVP9JBB9l
         BJBvOZme61cRTPIzOnJuAhN/ipUfrfJdte2yBe1vFoEW1v2yN/ReEQeSsRwhDcMuJwb3
         jlEnXIUX9xXjcbrJqHqr98xe5a+ncP8PA1VKFHRzpukaIY0BjElNIlwUNr7ebnJjTvTK
         6gNheIo3iC/lc62MX3tt3R2CDQ89npYOIHXjcgV9oCXhulBkey6DWGECDzKTH6hO497W
         Q84w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734101679; x=1734706479;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GBsKHrKNRUATgmtRwROOAjv7TEkAzQZ7Y8QwFCRkRf0=;
        b=egS9Wj6A/c5nBYSiKjWR14SgyjjyZdGZdn2uApJ/wiInQje6iNR/nO4Oe0ArOnV3ys
         hRQevz2TVlCONQgXZK31K5jA2vbU+uJSuWI1ZvKr0sS9OzyurqbyNksg+kSv9YAO5bf2
         8nKInoHJcGES1i/AdnAeEq7+JDAtDYew+PXKSVgmzMzsJStKvP6qCqY3XY4+3u5xO2Yt
         l4L4fGexAN+5dIH6EcU8K3ndhmBMF/VzEFXRdAnRQckIYDekObYGA9k8MTK3+qO24UX/
         tatWz27jBEZoU7Xn5cSs65G6Ki+7e6quLpUapHCeF2xkXNzXxb9Qf0QhzhbE8dyVMxRY
         Wqvw==
X-Forwarded-Encrypted: i=1; AJvYcCXs6Z6LHRTaiHGt0pLejK5Kw5PoRBOzK67PAXNNxTTWdMedC2EB/Nc1WwIQr3tc6xDiBr3Nm6eeP8qI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxvi+58lGxFX9mofr5W2J7w/5ZM/Cz++OsTS0X9I41nxIMsUkIV
	duuu0djlLwEbVdyE7eYuv6afzTrDdwXa876+JKMxvgx+mJHp+BLtyrpS6b0n1xs=
X-Gm-Gg: ASbGncswk2SjuuhKUDxQZc81190fLGF2odfCvJXGLoZT+eW9XHBbSEbmzXQOHMsjfsx
	Pd6+CmMT4cyB4ZfqC67aMe+37mZXYp+ahifFPWmOldot0qKAwDGUs2KH86PGcH7lsAWBpMd0YsO
	Bh/3v3fI50NbWbgpuBkRia+A2B9y25qVUAKwTe75BMLgAAd/e0yfl71h2TsLWHE4fYtlj2DD+gk
	SDa/6Ua4rs0OesnJ6voveIQaBmQfU3VPHcK93pYgiwI6z2YW2MVM2Uk50S2vc1ZaXiNI2HX
X-Google-Smtp-Source: AGHT+IHWtY+8L60nN1CkdSfPFX/jy31Yzj9z+k8xUzZqCrBDCpokA7rcZhw7VpbMxM/KME5eq9cafg==
X-Received: by 2002:a05:600c:5128:b0:42c:aeee:80a with SMTP id 5b1f17b1804b1-4362aaaa5c1mr9744455e9.7.1734101679543;
        Fri, 13 Dec 2024 06:54:39 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-436256b42c8sm51547305e9.29.2024.12.13.06.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 06:54:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 13 Dec 2024 15:53:59 +0100
Subject: [PATCH v3 10/23] arm64: dts: qcom: sm8650: Fix ADSP memory base
 and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dts-qcom-cdsp-mpss-base-address-v3-10-2e0036fccd8d@linaro.org>
References: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
In-Reply-To: <20241213-dts-qcom-cdsp-mpss-base-address-v3-0-2e0036fccd8d@linaro.org>
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
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9337;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=69rRyzD7UVwsDJrvawwBIb2zszx7qa/tJWcDrcRmByM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnXEqQLEYPAUb9fY32+ZAj2+SFDuCeoALmMg12e
 sv5F/zBkcGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1xKkAAKCRDBN2bmhouD
 160eEACAUY81sM027jQAu/6dA64eyGU9giIWUOOxqB8VmdmxtUGWbQjXeLqBf+R4NcdsDaC/vEV
 beIvoA5fZA5tqc8KYkbBOp22H1fEPY7gcyX9nBzQQy10MwuPb5JmNkQdsiOCHaocQgyLTQ8zLB1
 5YM3sAbTCKo0/D56NVQFTfWC0EDyLS6s9bFH5/Xe3Qy6EpZfRfaMHGSTVlfyDDwho+32vBzG5Py
 L6Tv4PKBf8g2kqDursTXFK7J7POKrxWpa6vyNeDl5gH3t0DqAE6KH4yR7A3zWvXox0yQm65oqTH
 g1patEfNQ+1p9RyJ+AaOXbA1MqE83hdp93TJHz60UHupS5U6DUEhg8BVqmVbLfvdgyNMI8YddZh
 JQzldA4fI82aRw67I3PoMJWzyKHg16yjS5xnNfqPkyGFe+BWtfA55FVanTeK+iFS7rMCVFEc0IJ
 7RdT0VVrDh4XRO0OxtaPnsW/XFV+M4c/9pifCzX0m8Pvv/GLuFCWxDcH7ev2JrSBY05Td//FtBk
 NtfEEkrxkZNGs0eeL5vaJ8v6oj7uPaS2g+O2VytPH6Ew3ysmO1l00Mc3XGeXpfXM9Cdh82ysQ3K
 Kv8N97zscVBeMMWdUBqrkPTWjXdOCDnHWGiAOVRF5J8ALqgtNNlmjoKT3V66n5Fxhc2+ebsgE7u
 D2qSEbLE20I0S/w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in ADSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0680_0000 with length of 0x10000.

0x3000_0000, value used so far, is the main region of CDSP.  Downstream
DTS uses 0x0300_0000, which is oddly similar to 0x3000_0000, yet quite
different and points to unused area.

Correct the base address and length, which also moves the node to
different place to keep things sorted by unit address.  The diff looks
big, but only the unit address and "reg" property were changed.  This
should have no functional impact on Linux users, because PAS loader does
not use this address space at all.

Fixes: 10e024671295 ("arm64: dts: qcom: sm8650: add interconnect dependent device nodes")
Cc: stable@vger.kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 296 +++++++++++++++++------------------
 1 file changed, 148 insertions(+), 148 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 25e47505adcb790d09f1d2726386438487255824..95ec82bce3162bce4a3da6122a41fee37118740e 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2904,6 +2904,154 @@ IPCC_MPROC_SIGNAL_GLINK_QMP
 			};
 		};
 
+		remoteproc_adsp: remoteproc@6800000 {
+			compatible = "qcom,sm8650-adsp-pas";
+			reg = <0x0 0x06800000 0x0 0x10000>;
+
+			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			interconnects = <&lpass_lpicx_noc MASTER_LPASS_PROC QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+
+			power-domains = <&rpmhpd RPMHPD_LCX>,
+					<&rpmhpd RPMHPD_LMX>;
+			power-domain-names = "lcx",
+					     "lmx";
+
+			memory-region = <&adspslpi_mem>, <&q6_adsp_dtb_mem>;
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
+
+				mboxes = <&ipcc IPCC_CLIENT_LPASS
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+				qcom,remote-pid = <2>;
+
+				label = "lpass";
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+
+					label = "adsp";
+
+					qcom,non-secure-domain;
+
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+
+						iommus = <&apps_smmu 0x1003 0x80>,
+							 <&apps_smmu 0x1043 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+
+						iommus = <&apps_smmu 0x1004 0x80>,
+							 <&apps_smmu 0x1044 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+
+						iommus = <&apps_smmu 0x1005 0x80>,
+							 <&apps_smmu 0x1045 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+
+						iommus = <&apps_smmu 0x1006 0x80>,
+							 <&apps_smmu 0x1046 0x20>;
+						dma-coherent;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+
+						iommus = <&apps_smmu 0x1007 0x40>,
+							 <&apps_smmu 0x1067 0x0>,
+							 <&apps_smmu 0x1087 0x0>;
+						dma-coherent;
+					};
+				};
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
+			};
+		};
+
 		lpass_wsa2macro: codec@6aa0000 {
 			compatible = "qcom,sm8650-lpass-wsa-macro", "qcom,sm8550-lpass-wsa-macro";
 			reg = <0 0x06aa0000 0 0x1000>;
@@ -5322,154 +5470,6 @@ system-cache-controller@25000000 {
 			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
-		remoteproc_adsp: remoteproc@30000000 {
-			compatible = "qcom,sm8650-adsp-pas";
-			reg = <0 0x30000000 0 0x100>;
-
-			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>;
-			interrupt-names = "wdog",
-					  "fatal",
-					  "ready",
-					  "handover",
-					  "stop-ack";
-
-			clocks = <&rpmhcc RPMH_CXO_CLK>;
-			clock-names = "xo";
-
-			interconnects = <&lpass_lpicx_noc MASTER_LPASS_PROC QCOM_ICC_TAG_ALWAYS
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
-
-			power-domains = <&rpmhpd RPMHPD_LCX>,
-					<&rpmhpd RPMHPD_LMX>;
-			power-domain-names = "lcx",
-					     "lmx";
-
-			memory-region = <&adspslpi_mem>, <&q6_adsp_dtb_mem>;
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
-
-				mboxes = <&ipcc IPCC_CLIENT_LPASS
-						IPCC_MPROC_SIGNAL_GLINK_QMP>;
-
-				qcom,remote-pid = <2>;
-
-				label = "lpass";
-
-				fastrpc {
-					compatible = "qcom,fastrpc";
-
-					qcom,glink-channels = "fastrpcglink-apps-dsp";
-
-					label = "adsp";
-
-					qcom,non-secure-domain;
-
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					compute-cb@3 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <3>;
-
-						iommus = <&apps_smmu 0x1003 0x80>,
-							 <&apps_smmu 0x1043 0x20>;
-						dma-coherent;
-					};
-
-					compute-cb@4 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <4>;
-
-						iommus = <&apps_smmu 0x1004 0x80>,
-							 <&apps_smmu 0x1044 0x20>;
-						dma-coherent;
-					};
-
-					compute-cb@5 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <5>;
-
-						iommus = <&apps_smmu 0x1005 0x80>,
-							 <&apps_smmu 0x1045 0x20>;
-						dma-coherent;
-					};
-
-					compute-cb@6 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <6>;
-
-						iommus = <&apps_smmu 0x1006 0x80>,
-							 <&apps_smmu 0x1046 0x20>;
-						dma-coherent;
-					};
-
-					compute-cb@7 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <7>;
-
-						iommus = <&apps_smmu 0x1007 0x40>,
-							 <&apps_smmu 0x1067 0x0>,
-							 <&apps_smmu 0x1087 0x0>;
-						dma-coherent;
-					};
-				};
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
-						q6apmbedai: bedais {
-							compatible = "qcom,q6apm-lpass-dais";
-							#sound-dai-cells = <1>;
-						};
-
-						q6apmdai: dais {
-							compatible = "qcom,q6apm-dais";
-							iommus = <&apps_smmu 0x1001 0x80>,
-								 <&apps_smmu 0x1061 0x0>;
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
-			};
-		};
-
 		nsp_noc: interconnect@320c0000 {
 			compatible = "qcom,sm8650-nsp-noc";
 			reg = <0 0x320c0000 0 0xf080>;

-- 
2.43.0


