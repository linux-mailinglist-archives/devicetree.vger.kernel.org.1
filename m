Return-Path: <devicetree+bounces-169723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5806A9807F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:21:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6DC4B3BE4E1
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61E21267B15;
	Wed, 23 Apr 2025 07:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ABawEz/n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5DE267AFE
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745392869; cv=none; b=WViQ48liYDXBwSu2YBjo+u+KJolrnrjpC45fcafz8tNXcMpd6EsHRgxk9QJUMmE0Uo5kDpn1KLE6KIGlyO5eMgy/all82RYmbwT2tN9Es11r++yZf3cWWf3IWVlwRNI4ZZfv5cQC78T07CZHRCBaNOKJ1wDhrFSo0k59+zdZIBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745392869; c=relaxed/simple;
	bh=1Zd3cytCKlXoV3voZ/Z7Aj3t392WLrLgaxbnoqan7mI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TykqlODTU2P3d425OAS207lTXFIfYGs/uzdfeccwweZMnovOE/GmJxkfSrXc0C5CR0NYdDv7yCf8QjMbAyZQ3jeR+zT9L4glaybNLtDtkBQ8R6/L0UyGvIAe6+DDBvWlKhRcnidfocgteoRuAp1HmluOoQh48D0nEtTDYP2oBYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ABawEz/n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0iJBY014055
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:21:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=B683B+9/R8J
	0Vz6Lz9+auTHlZvFsEtlwtzftkgtEyFY=; b=ABawEz/nCKXLAIFxNIlljSenwqi
	3U1lie7TKJkhIRInpKlGM/bonhGovDR8k+QQ59V5732tQWR+oqrLqA7mwTe/zz15
	6Axq3BlHJSdlds1kvCGbiCkRXzbfzYDvypOdyoxio0OSfnhQWk+iPKCwO0L1YeAd
	WU72c2I2nr7IhGi10/2r36fm27y0Jw8fNdfIghkBoRzipJokYgW4jHxd+tTjQHdw
	5vH4rJpb/CZHvvPTescZJ8cUlGUjuN0DILjF91HGK/Z2kweJHbGNMni4mTA9KZnB
	1yiBBYy8k8YVm7ELeJB6VOaah5F4lmBJJ9oh3TWv/r9knDfKjdHn8177/Vw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3975p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:21:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c7c30d8986so573600485a.2
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:21:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745392865; x=1745997665;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B683B+9/R8J0Vz6Lz9+auTHlZvFsEtlwtzftkgtEyFY=;
        b=PoMQb31SFcFqLSrRqu467em0qI0mm1ku7dpChFNtf4+2d8y8QhcXCdEbDzr+R0QF4m
         SQb26wLid0Crmqpli1ZTNEujllqecQaCw/ELlw9G+CVj+3asw8LkQyjQhSuCDZRezR0/
         /dFEo2+dh371NlFg7Dz2WiunXmNwcYuqkSEFg+tF2XL+jk7/rxRyJ37rPmtf6FHhLYfq
         3bRCBNnTqHgVEoQAg3PKil3+/tkKi4t5fygBkM1rl4Z0pILyAxG/SuVDUbdnblZeYx5k
         Th2dBwvxApTP3ulMWbdoEVrDUB1qvVhypv24mNPZbWEv4rwYD+UOQsaRnls6NLTkWTcN
         ruLA==
X-Forwarded-Encrypted: i=1; AJvYcCWN2yw/CBWiuCFxcenAn2wqBbypwASmRXpiDIN176GTr8o9JPhcUiqGqsz3Ikh+BcfPF7EXMetob3RC@vger.kernel.org
X-Gm-Message-State: AOJu0Ywy/a9MJey3xhVA7gGORfG7t0qt17j5473fUnFhB0WpDWhZaH7B
	Wrt85wzRTDpN74M2bDpz/kZq+BLP+6/qsa+rfbCnQaLIO2AxltVePUaS26X/KJ+VqhNumJKRU1E
	AbFvJCq+PyZn9JQtxj0+AKKO3bC2hhdmJyCxQhnmDsoWQSKhqGpjKfZ1Q6J7E
X-Gm-Gg: ASbGncvScvs/Rw4q5t6gbRUKTFwJA0ffUmxmDVc+mfw47ty1614cAplz+2EebxHke2B
	1wLPRaVZv78eRvFBzR7hbQ1coq3KlnrAcaPZ9qfks+m+avhN83KSMkqOXdflxo0pzDNQjkpdCXb
	5/H7CtO6x9O+o/FGLRXHAEl3rPBG6G6fx4X0YoQ4V7zVPua1AiSX6VyGIQKJvaYaFVU1VCRjTNa
	e725clp5hHdig1iTRK82SnPeNTEw4vyvz0bXZvk8OfJd//N/6n1864xZJbE70weZaNbVE3hZRk+
	HsQBIPWxjjAt2gmyjGwwtuLt+4s0aDV8aE19iLjOozTc6FY=
X-Received: by 2002:a05:620a:17a3:b0:7c5:4949:23f1 with SMTP id af79cd13be357-7c928018f4bmr3185901985a.40.1745392865609;
        Wed, 23 Apr 2025 00:21:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECt3GX1jujYZOuYeyCML0aAD6UdbPw9WeBOejlwFn8+sdFqhMMJoUnxJtiQzipVzSrLzOy0A==
X-Received: by 2002:a05:620a:17a3:b0:7c5:4949:23f1 with SMTP id af79cd13be357-7c928018f4bmr3185898685a.40.1745392865332;
        Wed, 23 Apr 2025 00:21:05 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:10e3:ecaa:2fb2:d23a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec42af6sm757138366b.43.2025.04.23.00.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:21:04 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v4 6/6] arm64: dts: qcom: qcm2290: Add CAMSS node
Date: Wed, 23 Apr 2025 09:20:44 +0200
Message-Id: <20250423072044.234024-7-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA0OSBTYWx0ZWRfX6tCFTOLsg8qb ZKVg0CPcO7Dh8dDtQ0JGEj+xAJ4KSg+rPRy6Twu/lhDrv4U4On0bTnieYfz7S1iBVPrUmvnYNBO ztK/BrZDBSW2x6ltu75kRc3gkWS4mdFZD6TKyaYF7gpCHYp+GCJFG3hNKQg0FrLHj39o5aV/ZRs
 JeU9vkq5GEg37qybBlWvZhR9TIskdDmljH1UoYIcAgIr4LueaiCm5CGK4lbrpGZgyb0/5yYlQLG TYJ55sj0mFiAlPS8k/eXaC1H1hFArSFcJPTJ29nUg4wiuR2GPRLflk8rs8rFC2Da2UwzKQCTu+C tLl6eqsa0/3WeSrB39rAfx625w1PhMm1YUrUdABBclG9eTZCYbP/Pe4/c69+37KDfwz/Uca1MIR
 6IVHsF+NLBSgb1QPbbm3gESkGRdYzLxRFK8SdukzslH+DRnplZalFtmmMgsPVfee1vqu9lik
X-Authority-Analysis: v=2.4 cv=bs1MBFai c=1 sm=1 tr=0 ts=680894e2 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=EzCDy3pf2FPqfMyO2-oA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: Untc1ejjOihaaIR743LxrLI0_KLnrS3L
X-Proofpoint-GUID: Untc1ejjOihaaIR743LxrLI0_KLnrS3L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_05,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230049

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


