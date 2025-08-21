Return-Path: <devicetree+bounces-207648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BB9B30276
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:58:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88CBCB61B09
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:56:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 518E434DCD4;
	Thu, 21 Aug 2025 18:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YGjBJFln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 886BB3451C9
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755802595; cv=none; b=araz/5jZQa0gVBnh2TqmeX6tZAVSKoACuK5GxdIajZ164IXD+Sq/g/tTV8nhqvgh/A84ZTvf8A4PuJbmkkxpIrlmWQV+WfpOgFHeUPxZ+eCw/ctvM0IlpiY+vskHF27J8HClqrB9Br0aXOa2DvRJwjEX4y3HCEyt2nYCVPa3W3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755802595; c=relaxed/simple;
	bh=6AFrVVcg/N51X91M5bv9em1Itbidcds+ZgEHoW2k3Ec=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k7RlzMdEDFajt+Up9H/WW3SLImMrv88kZydJFBruqcw5WJLFyGn2cuXfrGnGnlxtotv4a0m6M/4fsh4m21XOtmnyJZ9FC7s+WG2ggG9W3oAgUEz6U3bKj8pfPtu3KnpnLInPzdPPt5jMq8wjcULRUtUveQd8bwPWSWoYUjbzFhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YGjBJFln; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI93Ww012234
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tPLB0lOSl90qjv87azKGiAHlMSsu88zpljXIRtVwbjQ=; b=YGjBJFlnVQhEEWkZ
	S+x2kx4nwHhRT8q5cP88FHWG8ygji6d7he5zz8QGXxnbsIBzskIKIvEy62VEHS7T
	Px4PFnxxix9YYQ70WgDGB0xn7TNVyVybToDo1JtXe1L0alellQ5VRy8PZ2hJnE5N
	SbtVbDEIiSGgI0uCTj3iEuZkun7EjR+FNo8vKzaz5SiB1DzyGAWp4VtlVfGBKJs3
	npIofUQKQB2CzcjAUHkcJWEN4S64O9iWkbaZ8nVv/bMT+xsyQiBN+vqL9UyK8b7G
	jTKaypFeriZJawT4FLmXLVrqXztM3vWq9CLyPd9qyqmoZB3MLyLViHKSUWUzKvjF
	ElskNw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dpf5b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:32 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2eac5c63so1255878b3a.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:56:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755802591; x=1756407391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tPLB0lOSl90qjv87azKGiAHlMSsu88zpljXIRtVwbjQ=;
        b=cU6pYsKRdquRINo1ryzjFfeiTdVB/LBag/V5hPlfGMw9juXjyIBQPPsCdpE889AlNb
         67HqnGWh9G8OtJRQ+QFHCkkPhVPkQWm73frs/Oquyym40hRz8Q1Li0i3APbNJ7FpjO4z
         MiwFywDFHGftqdW5V73TejJn9MhDXEj1mnuEDuEtVniQLzOgJjD9boTGtWZzSJYJ7q3q
         Qkvmpt/uyEcKjhBif7yvaayfBCbTijGJ+bRixGY4nP1LHcIFrqnRM5gBohj3zEoy0bfW
         M1noQtl9eel5r+JmWonTWOZWmbfJBgtbeSp35Eco4KVO4ytz4Zk3JgrMFJJ9iUezG9J+
         fLbg==
X-Forwarded-Encrypted: i=1; AJvYcCXSFsTrr4EzdK7lPeFXaYaeNexyS7Ar0q7S/Ei7riRmzM8hA8Fn6AWahEjDnchL9hDXdTLEr1xTIUaX@vger.kernel.org
X-Gm-Message-State: AOJu0YzCqH/t7b2TKTWm/WUfRyvDjMaArTr8Z7jUiZK9qn4dkmfTyc38
	o/tZjt+5+vNWxuNrP8MgwOUDLL16FOtI68cXh+hglLZZCfjhhXZLXKM2jiNqhrUcSUBhh/6M60X
	EUJQt0M9gmy8Ag9gzkIJM7mt/JjQzCWxnBEqDMD7o9XbXTLqa+2r9dNNCME48j2AK
X-Gm-Gg: ASbGncvAxB4elc66YYtcqhkuhVKFLnF/rzqlogcQfk+1uuWOSMQMUMpHCipgrKOfmgw
	zKKjs7vDjum3BmpilvlUsNAGziR6vev/xTCZLD4Ty7mvXTBtbyHyU3PQmHStH7FWPk9+wCD7EUS
	CaVx9jqzzYryV1Xli1KPkR4IE4/E33EVBppO6R94Ox3jkZadMk+8jidoetOKHkYRl1LKVgnMMNx
	gD69g0cGW+Y6IyZlfKSoFWlN32l9ufMifg1N+A9p26R30oa2D0NH5YQLzK5tTkuh4Rk+y29s/VD
	zSPPHBm0D5mVVnkZIiRhbOioCFxA5YByPe7rlNZmx7hdUYRaSE1cgkYUmBPMy90R
X-Received: by 2002:a05:6a20:2585:b0:243:78a:82a3 with SMTP id adf61e73a8af0-24340e4a4edmr270001637.60.1755802591172;
        Thu, 21 Aug 2025 11:56:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgXXMidYmQXFpqBRDLcsODNjXVwWerFYBzO2zoS70dDoedtPxh2rZs542+/5DAWroEPgZTFQ==
X-Received: by 2002:a05:6a20:2585:b0:243:78a:82a3 with SMTP id adf61e73a8af0-24340e4a4edmr269952637.60.1755802590729;
        Thu, 21 Aug 2025 11:56:30 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4764090b0esm2106977a12.37.2025.08.21.11.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 11:56:30 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 00:25:28 +0530
Subject: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
In-Reply-To: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755802565; l=4497;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=nI41liweZfTMu604YixzPD6RJqaIWEkGUI9JOPsmvDw=;
 b=Dc8lSBNBKRNBYdzfgozV0uhBRvQ64bZE53SgZopfgFk3sLXSxqDcg92mzm4x+EOOQij2IrdA5
 4/s0j2HHGsEAVbEtHg9bAJD3doK7ClVrT0Z3RgIm94q2mgxETjjI0PE
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5bgOqidvjiSB
 /wMogCXf+jUMTy3aM5Em8BsNm3vq6uP3fkf0jw7Bwztl3LXakl6Lqj5rYbVlR0ad3td4Gpw+ZBD
 01PECkLmUQQOImOXi6cd3iU4r1SbPeqbxTMwibjSua51Dxmpc2P4BSJUX8tZcHu+h/LR0CogCTQ
 v6i0YZfzB+ORNkunOhL3c2kRZ7VNsy4vmoPf4lnEKRrTVltXFvPDFs0NWjoNF1jmc5+cWio/LR2
 0a6tHQz50nbRKnYC+omTFca0lMmlNgxdZxeS1T7H32Lt5VIIBTfEHe6lj27NzAekBhC0BXb9wmj
 U76ekK5twthUjJoz+jv+CCGvxnAT/ZIhzkN8FP97Wmouq2QvBnkamipKEHvs0G4oE8fqFkrLoLe
 xvH7uNlYDTjr620i5FNQu5tNwQAjEA==
X-Proofpoint-ORIG-GUID: uVoJrMQQMeMRWKXuqfyQsSt1qiFWk9h6
X-Proofpoint-GUID: uVoJrMQQMeMRWKXuqfyQsSt1qiFWk9h6
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a76be0 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=D_IGQ_qLm8RrHFHUsBgA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>

Add gpu and gmu nodes for sa8775p chipset. As of now all
SKUs have the same GPU fmax, so there is no requirement of
speed bin support.

Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
 			#mbox-cells = <2>;
 		};
 
+		qfprom: efuse@784000 {
+			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
+			reg = <0x0 0x00784000 0x0 0x2410>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			gpu_speed_bin: gpu_speed_bin@240c {
+				reg = <0x240c 0x1>;
+				bits = <0 8>;
+			};
+		};
+
 		gpi_dma2: dma-controller@800000  {
 			compatible = "qcom,sa8775p-gpi-dma", "qcom,sm6350-gpi-dma";
 			reg = <0x0 0x00800000 0x0 0x60000>;
@@ -4093,6 +4105,110 @@ tcsr: syscon@1fc0000 {
 			reg = <0x0 0x1fc0000 0x0 0x30000>;
 		};
 
+		gpu: gpu@3d00000 {
+			compatible = "qcom,adreno-663.0", "qcom,adreno";
+			reg = <0x0 0x03d00000 0x0 0x40000>,
+			      <0x0 0x03d9e000 0x0 0x1000>,
+			      <0x0 0x03d61000 0x0 0x800>;
+			reg-names = "kgsl_3d0_reg_memory",
+				    "cx_mem",
+				    "cx_dbgc";
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+			iommus = <&adreno_smmu 0 0xc00>,
+				 <&adreno_smmu 1 0xc00>;
+			operating-points-v2 = <&gpu_opp_table>;
+			qcom,gmu = <&gmu>;
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+			#cooling-cells = <2>;
+
+			status = "disabled";
+
+			gpu_zap_shader: zap-shader {
+				memory-region = <&pil_gpu_mem>;
+			};
+
+			gpu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-405000000 {
+					opp-hz = /bits/ 64 <405000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
+					opp-peak-kBps = <5285156>;
+					opp-supported-hw = <0x3>;
+				};
+
+				opp-530000000 {
+					opp-hz = /bits/ 64 <530000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					opp-peak-kBps = <12484375>;
+					opp-supported-hw = <0x2>;
+				};
+
+				opp-676000000 {
+					opp-hz = /bits/ 64 <676000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_NOM>;
+					opp-peak-kBps = <8171875>;
+					opp-supported-hw = <0x1>;
+				};
+
+				opp-778000000 {
+					opp-hz = /bits/ 64 <778000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_TURBO>;
+					opp-peak-kBps = <10687500>;
+					opp-supported-hw = <0x1>;
+				};
+
+				opp-800000000 {
+					opp-hz = /bits/ 64 <800000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_TURBO_L1>;
+					opp-peak-kBps = <12484375>;
+					opp-supported-hw = <0x1>;
+				};
+			};
+		};
+
+		gmu: gmu@3d6a000 {
+			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
+			reg = <0x0 0x03d6a000 0x0 0x34000>,
+			      <0x0 0x03de0000 0x0 0x10000>,
+			      <0x0 0x0b290000 0x0 0x10000>;
+			reg-names = "gmu", "rscc", "gmu_pdc";
+			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hfi", "gmu";
+			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_CXO_CLK>,
+				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_AHB_CLK>,
+				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+			clock-names = "gmu",
+				      "cxo",
+				      "axi",
+				      "memnoc",
+				      "ahb",
+				      "hub",
+				      "smmu_vote";
+			power-domains = <&gpucc GPU_CC_CX_GDSC>,
+					<&gpucc GPU_CC_GX_GDSC>;
+			power-domain-names = "cx",
+					     "gx";
+			iommus = <&adreno_smmu 5 0xc00>;
+			operating-points-v2 = <&gmu_opp_table>;
+
+			gmu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-200000000 {
+					opp-hz = /bits/ 64 <200000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_MIN_SVS>;
+				};
+			};
+		};
+
 		gpucc: clock-controller@3d90000 {
 			compatible = "qcom,sa8775p-gpucc";
 			reg = <0x0 0x03d90000 0x0 0xa000>;

-- 
2.50.1


