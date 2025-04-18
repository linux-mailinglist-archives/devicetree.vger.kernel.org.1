Return-Path: <devicetree+bounces-168578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E23BA93867
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:12:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C480D7B412A
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C038318CBE1;
	Fri, 18 Apr 2025 14:12:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KDT0fZXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353441552EB
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744985531; cv=none; b=aKdpyXXgABYHuN/RLgvaqFm+uSQU7hg6/fDreqXJ6ThsWnC+feWFMHyn/Zg5rT3utC3xzpv2gc1XAMsvBabnRbSF1pkLFlpFDkEGXb/xBduLKzqB4UqMmcNDOq6qON8zkGiok/b8RI0iFe0t+uAPOpV5M/wHIkhcoUHzMflQ8Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744985531; c=relaxed/simple;
	bh=1Zd3cytCKlXoV3voZ/Z7Aj3t392WLrLgaxbnoqan7mI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PB2r2sNJ4ZSXa61LxImNd9K+RyG7h3GKA5o0nqiTrYO32AnjXnDDaz+B4bZmYgtt+a7t0IAXf/Ql/YGgrVRlgaI3jGmFbe0uN8BJkX0KYFDvPHmaPxJfqJ4pSZf0p4/xk6MtqVgwxN+hCgmfJWnfUhQRlTLALf/i5uadx7HFq+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KDT0fZXp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I3Gq42015930
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=B683B+9/R8J
	0Vz6Lz9+auTHlZvFsEtlwtzftkgtEyFY=; b=KDT0fZXpHXkJjFvu+G8c0tFDQuT
	uZPeRSqm0eMld1EiU5Hndz15Iaf6qd+7rzF7HfEWcckllF+Bs7R6NESOWvqr+qUG
	p17CjuWI45PXBmrqf6WW2WTFpnF7u8GTVY9ds9MB+skc29Vbxq11R4TaBEhfRYlz
	8ZwRN3Drn7UlphfxFaHcpvWbggtYpbZErT41Va90cyxpNqWMEZ0R/FFsflQU3puY
	ZdzvLVhCi12tmidLeaqvZQctD7GaJtB6RNgh2PvhvovLYAulklY5+Lb83yMtSk/3
	zz9qa/8R8ptrV8Io51l+KOrMhWef3gMTcklyjVHYRIsdHlDFSJeFK8XHKfw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhqjb8m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0b0cf53f3so270307585a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:12:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744985528; x=1745590328;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B683B+9/R8J0Vz6Lz9+auTHlZvFsEtlwtzftkgtEyFY=;
        b=Dy8nlExEgj8QD0B1jJhtxaB6z1HRj7X2F5halRK8D7jGZpwIMr+7bOtMUj+e9iKtxm
         2rqRoE9hgcPzAYgo7k8DP7ED4T7Pfvfean/gzXaBilufppyC8IdIC4i12JvM1eiT58uy
         r2QvOp27jJuWsXCRWbXoDWC9Uq6MNODF2ARhiftXYobFvnpDuREZAhrZPj26gpf/eCap
         yLddZrYjdYVuym8rTJyJgtaDpYgKPu43DAAchvHTpVqv5/Juypz8abDwbutuOE22gMYb
         ilsi9IFMOEQqvijwgaGH2gHi94j7S8DJi7Wj3z/wSA2tHXI3x1rhFf9q8coHhH60M2EN
         s2vA==
X-Forwarded-Encrypted: i=1; AJvYcCUOF7iESYRscfEfzIZ376yjf9zGqrqZOj3NQshqRck9gHkbaq79JFcD89pzB98doj1KBnrf0xRYP/zJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yya46JIRxe5upsiPn0ut0Vm36n0OO5wKyGd5b3zqY06GlC7S9ex
	zglRTyYLiDxOnrF73QZ6366yhiy1Pfy+fia6001MG67wZvgI9Lf39wrsoqIsySAEhbxIbdKNoLA
	4aLl5tzrBMA8UI5J2IMnhzFuT6esJWWTwvd5qXPl51Lq8JLyxBqMarpLMMszd
X-Gm-Gg: ASbGncsMgAiLhwa37PddZC2Ec0jGtSW+G79LeXJdw5Ci7ZJCD4UtVlQpEIdj0pPQcFo
	PlKgSJo/YuddGsXZp9lUw4AVHsXr0l/aOWnneX/MkLFbJcfcW3RNWFmWrXoRdsk+AEBBA9igPKn
	ppgABEnnhIHpWjuHV1aCiQHEpKNf0VqVVUbrGu/Jym2z8/GHmjPbLaxnGR1XpShJ9JDFs9pw4ff
	8B7cM81oinlFaeMTiDlnU/KKbMzfw0+j7+V2xWjEmJyLAAHsWqez22tD7m4xtzZEC84AGS+FJ10
	ABen0XDFV13URjO0uHXffiT2HmGuYb6vYCJtvQhdd9A8srI=
X-Received: by 2002:a05:620a:1790:b0:7c5:467f:d130 with SMTP id af79cd13be357-7c9280185damr492206685a.36.1744985528087;
        Fri, 18 Apr 2025 07:12:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEo9LENO3ZrrNDuu9Wk7c8grYSrQvAJ66BdYsnzylxsqoJFtkFIGM8fL6BkeEucgNUIZqDhUw==
X-Received: by 2002:a05:620a:1790:b0:7c5:467f:d130 with SMTP id af79cd13be357-7c9280185damr492201085a.36.1744985527642;
        Fri, 18 Apr 2025 07:12:07 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:2dd5:219d:5008:1bec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4404352a5f0sm81172835e9.1.2025.04.18.07.12.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:12:06 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
Date: Fri, 18 Apr 2025 16:11:47 +0200
Message-Id: <20250418141147.205179-7-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
References: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: hayC1E2GZ_2iPYaspuJkmmNjQrLqBjdx
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=68025db8 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=EzCDy3pf2FPqfMyO2-oA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: hayC1E2GZ_2iPYaspuJkmmNjQrLqBjdx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_05,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180105

Add node for the QCM2290 camera subsystem.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 103 ++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594..e2fefa79b8ac 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -1579,6 +1579,109 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		camss: camss@5c6e000 {
+			compatible = "qcom,qcm2290-camss";
+
+			reg = <0x0 0x5c6e000 0x0 0x1000>,
+			      <0x0 0x5c75000 0x0 0x1000>,
+			      <0x0 0x5c52000 0x0 0x1000>,
+			      <0x0 0x5c53000 0x0 0x1000>,
+			      <0x0 0x5c66000 0x0 0x400>,
+			      <0x0 0x5c68000 0x0 0x400>,
+			      <0x0 0x5c11000 0x0 0x1000>,
+			      <0x0 0x5c6f000 0x0 0x4000>,
+			      <0x0 0x5c76000 0x0 0x4000>;
+			reg-names = "csid0",
+				    "csid1",
+				    "csiphy0",
+				    "csiphy1",
+				    "csitpg0",
+				    "csitpg1",
+				    "top",
+				    "vfe0",
+				    "vfe1";
+
+			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+				 <&gcc GCC_CAMSS_AXI_CLK>,
+				 <&gcc GCC_CAMSS_NRT_AXI_CLK>,
+				 <&gcc GCC_CAMSS_RT_AXI_CLK>,
+				 <&gcc GCC_CAMSS_TFE_0_CSID_CLK>,
+				 <&gcc GCC_CAMSS_TFE_1_CSID_CLK>,
+				 <&gcc GCC_CAMSS_CPHY_0_CLK>,
+				 <&gcc GCC_CAMSS_CSI0PHYTIMER_CLK>,
+				 <&gcc GCC_CAMSS_CPHY_1_CLK>,
+				 <&gcc GCC_CAMSS_CSI1PHYTIMER_CLK>,
+				 <&gcc GCC_CAMSS_TOP_AHB_CLK>,
+				 <&gcc GCC_CAMSS_TFE_0_CLK>,
+				 <&gcc GCC_CAMSS_TFE_0_CPHY_RX_CLK>,
+				 <&gcc GCC_CAMSS_TFE_1_CLK>,
+				 <&gcc GCC_CAMSS_TFE_1_CPHY_RX_CLK> ;
+			clock-names = "ahb",
+				      "axi",
+				      "camnoc_nrt_axi",
+				      "camnoc_rt_axi",
+				      "csi0",
+				      "csi1",
+				      "csiphy0",
+				      "csiphy0_timer",
+				      "csiphy1",
+				      "csiphy1_timer",
+				      "top_ahb",
+				      "vfe0",
+				      "vfe0_cphy_rx",
+				      "vfe1",
+				      "vfe1_cphy_rx";
+
+			interrupts = <GIC_SPI 210 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 212 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 309 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 310 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 211 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 213 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "csid0",
+					  "csid1",
+					  "csiphy0",
+					  "csiphy1",
+					  "csitpg0",
+					  "csitpg1",
+					  "vfe0",
+					  "vfe1";
+
+			interconnects = <&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
+					 &config_noc SLAVE_CAMERA_CFG RPM_ACTIVE_TAG>,
+					<&mmrt_virt MASTER_CAMNOC_HF RPM_ALWAYS_TAG
+					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
+					<&mmnrt_virt MASTER_CAMNOC_SF RPM_ALWAYS_TAG
+					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>;
+			interconnect-names = "ahb",
+					     "hf_mnoc",
+					     "sf_mnoc";
+
+			iommus = <&apps_smmu 0x400 0x0>,
+				 <&apps_smmu 0x800 0x0>,
+				 <&apps_smmu 0x820 0x0>,
+				 <&apps_smmu 0x840 0x0>;
+
+			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+				};
+
+				port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;
-- 
2.34.1


