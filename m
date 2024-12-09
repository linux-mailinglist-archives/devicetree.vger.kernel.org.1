Return-Path: <devicetree+bounces-128596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A059E9179
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:06:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22B4F18874B0
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071E721E089;
	Mon,  9 Dec 2024 11:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UmxLUxNT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B8A21B1B9
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 11:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733742170; cv=none; b=RTS2XTKjcbhz5yywM3dCNwMufa1/++swDdbDoyEer8Ji57ixytCJNbhkDlDFt6mLLc4/QwPd3JWi/ZQudD5VINFDD+lq1YP+ZVWgdXiXfoCV7GDUyRCV8spdiauQafDg6QLTUurSOf2KqtzQvZtaTUStcm+awrtbPtWsRsuRFZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733742170; c=relaxed/simple;
	bh=OfBIwWEP7oyP+n6M5EXEEg0B2suUs/3ufFGrQeFa4kM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iBAnh9VBop4Gg09Yl+aQ4tthuB8vJhfQ6PfW5WTHMjYTw2p3LW664Rtclimo9IGoRkx0CPJdSV66ndmmxZqVo9bUvZHXpZ0NUinp6ivISQYi2FmySWUS1WZBdeUtOgZkoMXIvOJa9EGd7Rwu2njofCQvNSXpv/jCX7aGm074OLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UmxLUxNT; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d3be7f663cso345714a12.2
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 03:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733742166; x=1734346966; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x9ADceHBH1J2N/1cRjoHb9Ju1ou7q1g/f1iOSWK6wKo=;
        b=UmxLUxNTG4/NDFiD4JzQL+S4wgr2jk//Nqs+cl/ry0D3g3G/ZVPGFFsGf4f9pjoe/p
         cF3f0GOAAp/7RyNCg98INI431yUYC7/bVMjDeulRWuxtqei67XRKSQNrkYwUanaXZzm+
         jCo+w+U+dWB1+brEJ6gv/bur3Wo8rr5DrZLJyK4UMDguZU7G/zDQWEgIUwc4G5x299B6
         qrdqhyYmlHY6xZDBjE3s+3i8VoQeal0TGhuMwVdYJQGNuh3/2c35DDplBWWCTK/QeGzg
         wP7pre+ttulpjp32SAWY/6qyDAOQSoQC1Mzb01yHNbGLKuJrypz14seAhSwiQY8Htuho
         f3oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733742166; x=1734346966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x9ADceHBH1J2N/1cRjoHb9Ju1ou7q1g/f1iOSWK6wKo=;
        b=ohPjaLsxMfAzPcEhVCkC3WHqglmm+58huHWHDKIoCfb+vhydBHhtkz4vwWVnVhGJj7
         ogDUCVX6l6FcyuHc7BfPXu6SkV1QRwtjRdpZotuI9shitd1fcL0m/EOOjmbm+mCa658I
         w3wsqj/vkq7wsDeNwOsWkz1666ZqlzOesPxJDpjQA9ZE9++nVLRLxDWZOV1XWvtpL28U
         993bpyOl9MVOjIxbIpVGA9qE2OdPo9ZtWTN70turHNJuBxYpSR6wDru69eY54dDFjAAH
         4AB7aBKAtwK+SLECFB0AMRAxumJDW6b2VGndL1moXDpmJuEuhuDG3SnsS0a9u3CC/W3w
         PRLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQ2VTAJoLK6y0/7bcZLdEKedCjri4RZ9I4lIz5aIFINMlx5+xo0gXrmHVYjfhfJ4CfZgh1GTQBzwqS@vger.kernel.org
X-Gm-Message-State: AOJu0YwqoyTxCQzBl0HvNDlMZbKvzPzyR2WpWCmMCRr+28XqRN5o05gI
	qi/deV0YHQeZwrzJm1xC0yrgsv5ewin6twwl5+1uCRyeFT9DB/crjXMX0Uh95gQ=
X-Gm-Gg: ASbGncuTQIqINuf8lTGNdhxpUZMafAiImJAcIlpnfpyeP6hA6tngXHWwsaC2YI2ovjl
	oGAvuRngKjxjSE+srrPodsphSnx44/pFu/b0PDBrtMay7aqmn8fmcQuOqtB5W8bn0I4q/ZfiSqp
	uFMp+dZqgIMAzlujNq4BjOHcfdkULGuYfEaC4LpnHeJw6cgYk+kEqsQMSt1ZD2uyZhgB5k9oYmf
	9E19Qkwq3UILkRzrbGzpFVYU5J6klOH10PmpXJMGOML+3v9aL/43kC7LHcvLfFuIg==
X-Google-Smtp-Source: AGHT+IFW9U8K9A6KnkYMyzuOj88kfO4mcwlD1P3gY4uhHVtnr894dXLaonij9PbeeULYtwcuwE6KaQ==
X-Received: by 2002:a05:6402:849:b0:5cf:ca6e:400d with SMTP id 4fb4d7f45d1cf-5d3be69a983mr4023281a12.3.1733742166250;
        Mon, 09 Dec 2024 03:02:46 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3dd4f641bsm3348818a12.51.2024.12.09.03.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 03:02:45 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 09 Dec 2024 12:02:15 +0100
Subject: [PATCH RFT v2 10/19] arm64: dts: qcom: sm8650: Fix ADSP memory
 base and length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241209-dts-qcom-cdsp-mpss-base-address-v2-10-d85a3bd5cced@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9276;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=OfBIwWEP7oyP+n6M5EXEEg0B2suUs/3ufFGrQeFa4kM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnVs45mjf5p6yYxCtwaSZplRIXpMfR6ppd0k5vd
 A8wlLfNu4GJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1bOOQAKCRDBN2bmhouD
 100MD/9EJWzR3Bz8NWutMOuuZZjOF1Q3kon0qHC4tStpb0vvSAEY/dRbun3uJrBLQfZBVdbDldC
 Kk9eD67wXxPSaeH9byYrktiprkpCtuaYoe24GQMumlWb9b6bMPy5zv4jad5jgLB1CuQwHT+Rery
 RrTC4+6utMxkvZvAOL0Dkd1gU1S3flxO11xoaHLSq69odFYt8aQi0ambzVwyUdil/h7R00+oyVe
 WzDNDiXm+/D7LocxE8OMYj/FkYwfHLE/ZIIxNOMkeu1L/ojTqQb+6SrjWjo5io6mmkvOywBw0S8
 WV/C3jqg2QF8G0tnsAquv1JQ/MOHvQdthLbYE+7YJ3QCtOfue7NdD9TpvBQ7ia/AiTaLOZPFlYN
 5XQYMVKeJXgAd0E+Xuxnsol5tKqbZtcw4WxkWK4dM3ABsQY/S/v2APJXDg71eRuv7UckYwJlhNg
 QG95Yq/2Blx7KbaJXqTNUVmYzWL1p4/2e7DUyY5Dc88DsPKc7pXjq7HIEZBAyE543TYbrHEBlBB
 eXuaae2IwC6Bct2ugMxoi35URyChVCeSqP8g2y3yksHvb8dcMz4VPBY88ERIpH3YHRbFnjUPsm1
 qZlsUcGWhtMNt22pBsqZHmU9DWo8Mtz4fN1JbyxEyXZ6Zglmt0BSphX+va+NWMjMx/u7ZzT3q+u
 Xnblu9p0oFe5xfg==
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


