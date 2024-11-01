Return-Path: <devicetree+bounces-118223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4549B9668
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 18:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51F431C21562
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 17:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3C11CCED5;
	Fri,  1 Nov 2024 17:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h4CoP6+d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C4F1CB50E
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 17:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730481570; cv=none; b=WBzldMz41tN4cEk2af1+XrqzegZBa3NvSc0UGFjPG781WTRzgRixsOvT8TwUT1GsXmOfrxZlunpWPyeuzD3MdnLBlY0eMQOPHDpO8C5lrc1g6G4xok4/v0y8c9wPERFd7Rs8H8OgKMKfrnyBXYJ7vUSOIWCg4IuhGE5z0UM64yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730481570; c=relaxed/simple;
	bh=zP8CMhOsdju++fAMfqiHRGssCrdsjamWMupWX7aOmzw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HtB6nL7tZycWdigqErUCY2NCZp4URL6RJIZL4d8eEwXRov1FY4T4FaYKR84UAsQy9ll1fTue/rNY9df492YKdF9tM4tUatRKn7tmGOSGMvw1g042uvREyx29k+lJqKCuuWlpStRC+9r6JMT0/MIBUxlDMjEWZAZcXSunmIf+QF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=h4CoP6+d; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-37ece998fe6so192180f8f.1
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 10:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730481566; x=1731086366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rwQWlkCVxKDyy+bz8m/foImenCByjvMRjsks1dLfFqo=;
        b=h4CoP6+d2gB/2aOhnKnuGPGGCMAtz1DIq0TEhauC8lZlohDU5ymO6LJ/j5gpkZIQgq
         wglsAQWim5cFOchBVVPO23AGBzDwtRZcikA4umfZHyVYTWb7C+c0YdeaxZJGHhHGk83S
         Bbte8jD3SszlEkHRDUmjqxcnqFUseBV3xhuqzN5KJFalRVYNNAThC+/KjuuyKyXURa0/
         pKciU06YuFTvmRjiE6xlha7tXDuFHGojwgTrQV4P+0BFvz6U9/ajLthr4uQ6pD+lXM46
         xG1YL2KTCLnDM4bYR+ehHe/mJAXHyPsplTQvUEqxFLyCpTecnwFcudY/nYwXPP3mbAgq
         erGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730481566; x=1731086366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rwQWlkCVxKDyy+bz8m/foImenCByjvMRjsks1dLfFqo=;
        b=XiBuLeZJqjTc3EbcaUzwiJNd/71gEqIC9M1p/OHI6hPqV+dy52w9RxgLfTHsaHzc3Q
         zGeqReVLo32/mssqDLmwFXJlUNk9BrKLrTokRKJ7eH/R3EwvPh3o1tDdjaPq5tx4//j7
         T0VlIj3RySNaeCMSxJTefYaU5S/GsaksmijcrHMiUtrDUopBiqArjFGUnVHAhfdmxOp7
         zM7pGtoX9ZvcybNn1m8y6xi6lZthVks9Z6INRuKaz2nk8BoFJW4IDwZRavO/jEdy4n1N
         epa11aYhjxWTfeuz1rosM0TTiJ9zERyECnflbIFjaJu9b/g9XAHUVfn3lXZUVQ9Lu04U
         8NoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVK4KE2ywptb4gzzxPPx1Ddnj0Z2CG8PrrZVZ+E2mg6PvY3W3EROMDfgL3rHg6ylY7dd7Uq0R1eB8ly@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg9d3jZkrInhx7Tl8b+9VocQyxz1zO2plUd+FSLA7krlAK1tOk
	ONGe7mY7Z+fQImWgXa0E8hbvZTHMfn2prMNu6CLQlMbkmhV+9hDs6s8hlh8sv0Q=
X-Google-Smtp-Source: AGHT+IH3t7iiAlZX2uJsZMr+pAR7yfU3SQsQOMyc52+DeRAi+QFIAAnEf322z75nONUPyNAPqHtbgg==
X-Received: by 2002:a05:600c:19cb:b0:42c:ba61:d20b with SMTP id 5b1f17b1804b1-4319aca410emr94808905e9.3.1730481565707;
        Fri, 01 Nov 2024 10:19:25 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4327d5ab305sm68536785e9.7.2024.11.01.10.19.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 10:19:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 01 Nov 2024 18:19:11 +0100
Subject: [PATCH 1/4] arm64: dts: qcom: sm8750: Add IPCC, SMP2P, AOSS and
 ADSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241101-sm8750-audio-v1-1-730aec176459@linaro.org>
References: <20241101-sm8750-audio-v1-0-730aec176459@linaro.org>
In-Reply-To: <20241101-sm8750-audio-v1-0-730aec176459@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Melody Olvera <quic_molvera@quicinc.com>, 
 Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5559;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=zP8CMhOsdju++fAMfqiHRGssCrdsjamWMupWX7aOmzw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnJQ2WTuIcBDqfBad8+DMmKLIxf2GQpJlfwIZkB
 7O5+6sVqHqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZyUNlgAKCRDBN2bmhouD
 19L1D/90ipcXp4q55M9MpT1ajY+bimTNgEPjFE4Zzf60YhJX7NEqMWQpFisp0mBsTQss2Xs8+4z
 Ya9ekzgKPIgtsYCvS3knKuuPNM2UTrZgiPS6YEDMKaohB9CQ94+jwkfvfvZJ/zX2gXRwOtU0AqD
 3lAMdMklBJbJJM0gcXTuK7d2g4+QjFswgtFZ7GDcsB5P/6qMx2Y57Ao2Ehy+LiMA3xvJ6rqurQ0
 EroICyYIHBQYRDSfwpZOxAoAeSxIBYpN/1QN8NzcQpib37x4sbYIeUFqJa8EkqT0eRrQXK6LdJF
 fUX3lARMaZY9VFFIIC3rPhg+uMu0wfIfbzCPNaYwkOVL3UHH43UDAJZdlXGTay7WosKVexgvwxr
 bI/IgRm8ooC9FYc8I+WhPhiN8wXsuAiZUrtVcIpfPIZzc67GR9I0pu+2ljMczWFS6UKtAtbimzR
 kgSphIq1JNKos9WuW+ck9NUYbYR3Bbgg6GOxJNxq2z2ABzXX93pbCPRQ+8SiFBgcjfyabGwvxyF
 uyh9Zr6HZFaBy0US2V3FoKBQ1fe5P+DyHAjdlrcl0jogM+CX72dSAXwMZ3VhOFhg0NhwHWi43NL
 1sNrt8i9WzK1UFsk7ywbhg4/kA+H4sCWywwy1ZhDk8LnTOz+t5UvoCqIOKeYtCKUX8531pduged
 oZr0PRAloqVWykA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add nodes for IPCC mailbox, SMP2P for ADSP, AOSS and the ADSP remoteproc
PAS loader (compatible with SM8550).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 140 +++++++++++++++++++++++++++++++++++
 1 file changed, 140 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 98ab82caa007ee63c395a3ce0f517e2bbeb0aecb..eb826b154dcb2d8165426ba2225548efd7547da8 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -10,8 +10,10 @@
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/power/qcom,rpmhpd.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
+#include <dt-bindings/soc/qcom,gpr.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 
 / {
@@ -510,6 +512,32 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
 		};
 	};
 
+	smp2p-adsp {
+		compatible = "qcom,smp2p";
+
+		interrupts-extended = <&ipcc IPCC_CLIENT_LPASS
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&ipcc IPCC_CLIENT_LPASS
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,smem = <443>, <429>;
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <2>;
+
+		smp2p_adsp_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_adsp_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 
@@ -538,6 +566,17 @@ gcc: clock-controller@100000 {
 			#power-domain-cells = <1>;
 		};
 
+		ipcc: mailbox@406000 {
+			compatible = "qcom,sm8750-ipcc", "qcom,ipcc";
+			reg = <0 0x00406000 0 0x1000>;
+
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			#mbox-cells = <2>;
+		};
+
 		gpi_dma2: dma-controller@800000 {
 			compatible = "qcom,sm8750-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0x0 0x00800000 0x0 0x60000>;
@@ -1975,6 +2014,19 @@ pdc: interrupt-controller@b220000 {
 			interrupt-controller;
 		};
 
+		aoss_qmp: power-management@c300000 {
+			compatible = "qcom,sm8750-aoss-qmp", "qcom,aoss-qmp";
+			reg = <0 0x0c300000 0 0x400>;
+
+			interrupt-parent = <&ipcc>;
+			interrupts-extended = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP
+						     IRQ_TYPE_EDGE_RISING>;
+
+			mboxes = <&ipcc IPCC_CLIENT_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+			#clock-cells = <0>;
+		};
+
 		spmi_bus: spmi@c400000 {
 			compatible = "qcom,spmi-pmic-arb";
 			reg = <0x0 0xc400000 0x0 0x3000>,
@@ -2884,6 +2936,94 @@ gem_noc: interconnect@24100000 {
 			#interconnect-cells = <2>;
 		};
 
+		remoteproc_adsp: remoteproc@30000000 {
+			compatible = "qcom,sm8750-adsp-pas", "qcom,sm8550-adsp-pas";
+			reg = <0 0x30000000 0 0x100>;
+
+			interrupts-extended = <&pdc 6 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 3 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_adsp_in 7 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack",
+					  "shutdown-ack";
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
+				mboxes = <&ipcc IPCC_CLIENT_LPASS
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+				qcom,remote-pid = <2>;
+				label = "lpass";
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
+								 <&apps_smmu 0x1041 0x20>;
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
 		nsp_noc: interconnect@320c0000 {
 			compatible = "qcom,sm8750-nsp-noc";
 			reg = <0x0 0x320c0000 0x0 0x13080>;

-- 
2.43.0


