Return-Path: <devicetree+bounces-241274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id E146CC7BCFC
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:54:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F32AE366EBD
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:53:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70EBF2FD681;
	Fri, 21 Nov 2025 21:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pAsVU2bX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S74BEbfa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C475308F2A
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763762003; cv=none; b=FLgd4RF4zzh/FGQ3fNoUjN7whwe/RchsAIq3agi/KPvuate6TPUqLCGMMe6ajJLRBGz0beXU8OrZKXKVaq0rQEOVPM1DeZyo/fMdiaRZnEBZ81TNvyPm7lQfP7U1acwG51HE9zETxEP/WVHasuW96unfDTzaEOhJn3RrUBCY2HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763762003; c=relaxed/simple;
	bh=LsfeDA8IApnwZoyPMsjXlaSNZEuYyp2aUcld8hHLXDE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Q2SB3k+08VSuPTz6kt73fes7ymwxUhFeCOyiC2XXJsuyEXjpHEwcA7YmHSAtip0TJVCO9UQFnxmQH5FLDM9Y0IPrsdfzKH0mwrTHJMWtiEp2kKPxCP18a4bUhdwOZ7h2x0nzmlb3vHREP+Fzda+uzjkU+ycchBqXpqmY5HpRBFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pAsVU2bX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S74BEbfa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALKq8MP2841478
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:53:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KjLJCdugkSrnuhoZABzCHzl3nmZIMgNYbluEhMiOUDc=; b=pAsVU2bXCoM7+c7s
	R9JjeMrtJ42d0uB3BPpqo4eGCP9EZ7rrKxGwWB3j7SDbLYd5r/CP7Dki0963rQ5Y
	js6duFALSa7BhaoyGpFmTYPkiC3WtNJdq3udh5eLJctrd05QU90eB/irIShVYbjL
	KtbRhomKG5azjfPABZ/8CTONoEQ4+f5YCwxpvvSNibk6xxELJcAfiB7MYmhy15US
	vyGEWOa9Zp5OTFSZXDcgW8uMD8WdCEf0GMh+AbBY8vFpNMXLDse7viiU6lp7ZdfB
	5k2J/cRipDnTPIH0QzXcEOIClMEx4Fwg8MPIBCo8aoO3O1R23pnf7peSXkz7Beul
	JEdRKw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhkvk27x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:53:20 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7bf15b82042so3586683b3a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763761999; x=1764366799; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KjLJCdugkSrnuhoZABzCHzl3nmZIMgNYbluEhMiOUDc=;
        b=S74BEbfaKznjba+kRdjf3R2LxI3xT2P9IlDdJlYxRawEw4YxN87suuSnwZLVI2faCz
         TnjiaR+sjnB6M6dvJ9J/k4I69FKCsbvYL5KfSKI87+QYVg062e5Hwo6NBdGMI+sDMuDE
         1krrPQIV2HAnXpkZARXrqGIdcMLOgFt78UQoeGIURbwQAaXlEcFfP7ftBor4LnsbEBgE
         zD7YVOHA25wkXTKDXuAudWyISJMbhZz3qXvjv+mWpj2UlU6agKi1oJ1mJZA8y9IAo5SL
         Jst9ns2IOOQVMTU31CpVYMRysJm6sm8KlH5sOdW/mzTmg69T47Ye4wQji53JHPwLDA9q
         O8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763761999; x=1764366799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KjLJCdugkSrnuhoZABzCHzl3nmZIMgNYbluEhMiOUDc=;
        b=pNO2cZEJKuqJhlGa9Ag8M6sCRssG/3GAkmZIH48XiXgroGC3tPFQ89L3xfz63PpRII
         EGGwTImW9z+n5HQMOW4qSqEJxfljoVdFBM27mp2lFU6YK9KlKHTidvIg4KS34Lj/hDdF
         F7RsuCabe03znCBN+BrFGqDWr8+f4yvwQ/XjgIw/hX0dz5bOQsFTSOqMN4Mn+xuaa5ac
         W7oCJjYSVdraAXVtrxI7EVKp28WcI8N+7vogRXykN5IdXHfna1qPG10PU3JIASHDwISi
         Dbg/52+/OI7Xht13n2YEneA5QnPyTch8UZWtjOXifl/bIDQbLCQVYUgutal4Jc5z/Xx3
         g3Kg==
X-Forwarded-Encrypted: i=1; AJvYcCVtirgY8MZlkDiFCs4pBHn6Ac1UyeA8vNsmQQFIQ0FRvchBjkRqmKAiKUxBmoDG9sdaMachG9tLO21B@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1G/LlEknC7xYu05hCq+yIYhbkl94j3hpDfZAJrh+ugnjWgy66
	xaY5YYNPa4V9W6BoyAIu0P9QTMIT81z6SR/FghEgmmDcigGnzF/Kg/XE02WC/qdPTiu2eIiteA+
	pvVpODT8Z/spYqLI2AHV4KuTciQUdAL/r+OwIVY7RcCl4BcnoygcvRRDj2krE/UjF
X-Gm-Gg: ASbGncsbAYc11jfscWkZ5qLjlSI3I0sDFDHZ/EvkFzDFXdTaHlTWiQYLn1W20a1d9/z
	kWW5hdZ5Z3J4YDwIsUYE0s2TxyNZiBHu1xIIei4Bydqd0YZMGUQan5dT186RxB9QTCNj5+RWZ0Z
	CSm4zv2VrQGVKdTkXsJQ0nc+mlvZfKD6hSrJ5J+1pZT4u8Wbdk110fjHbPUaF8/BaUxyRrJyFM4
	8E6uVAWjLyupbPCanovcWUdRo1JQfu+FFlC2RcTe9Vuh2WNxVqRiegVdVcpvv3iXTBLJN+dm0/G
	yIaRJWnyLhaFkcYfZTVaWJ88zZjNdZXt8KsE3ZPfLwfEMi9yh6mTQ46+yMXM363qaKjuuyt8Rm+
	8KQnWdfQBHjOQUqNazr1329hUNMJrNv5HSg==
X-Received: by 2002:a05:6a20:430f:b0:35b:ae01:a4cd with SMTP id adf61e73a8af0-3614eb18184mr5149972637.2.1763761999346;
        Fri, 21 Nov 2025 13:53:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSgxBtF2ograWO1NrHiOadBUmpcmLAamAg76KthlngYGISb7kJWhbFYgOnSeBWgxh+5JwBTA==
X-Received: by 2002:a05:6a20:430f:b0:35b:ae01:a4cd with SMTP id adf61e73a8af0-3614eb18184mr5149943637.2.1763761998827;
        Fri, 21 Nov 2025 13:53:18 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75def6314sm6399270a12.7.2025.11.21.13.53.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:53:18 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Sat, 22 Nov 2025 03:22:19 +0530
Subject: [PATCH v3 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251122-qcs615-spin-2-v3-5-9f4d4c87f51d@oss.qualcomm.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
In-Reply-To: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763761959; l=3755;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=s6trvpgsx15gZ8Cw3XsRmVsxCHybqjIyr/OcMGeEUE4=;
 b=TJyzzBt/5IxjTd0qvYkEeFl6VnMIlv+N7NU2fWChxGxucijjZiRnZgH4XdjfxKzrl7cGp4gaf
 BI8cGUJ/gTSDsTUvpegTcgek32u1uXpE3j0ZHUuS86YWN+fMA11WeAR
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: nD_0YZ0IO_6O3DofG4lUUoas2wB-4vXc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDE2NyBTYWx0ZWRfX/vRdY6VjfMFx
 jaxUQFBUF+3QQIk7KK6D8IV0w+W+AHPigqqk5Rv6sPZvB2n5spM9FnvNHZZ1rxJ6prL3JHMmoxC
 2e6u1gEa5lAPO2Gagdz5SlZZ9ukEsZJy5ovgpohUa8n+NiZ7cCIUhNHo9BJzLVLIg6xmzLrx2pv
 4HTBceAlo70JG+SiOc5PM4XpUXsUuRtspwV82uc0/fK9Yp+sZFiNLfkc96G61v/ZsSzb0vEENT9
 GOxvkoIAsD2ksdsM2ncbY5RwqGljhQQfDtitze1JK0IIEfa1WFoqmhl4tH4umcaxeqcAxVcTwBL
 LVvcJMOX5TOaWwOo+BJ9VTBiw+H/gM9QcpbwKS09j4CHrRnAGyKEbFrHr+1sfpaqR+L94jXNppl
 cJ0DNtpQCPP2y0Gwi45CjpSPaAVHXQ==
X-Authority-Analysis: v=2.4 cv=bpdBxUai c=1 sm=1 tr=0 ts=6920df50 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=WQ4zR0kUUHxS2nCRhxYA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: nD_0YZ0IO_6O3DofG4lUUoas2wB-4vXc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_06,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210167

From: Jie Zhang <quic_jiezh@quicinc.com>

Add gpu and rgmu nodes for qcs615 chipset.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 116 ++++++++++++++++++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 743c840e496d..12d6b296b562 100644
--- a/arch/arm64/boot/dts/qcom/talos.dtsi
+++ b/arch/arm64/boot/dts/qcom/talos.dtsi
@@ -647,6 +647,11 @@ rproc_adsp_mem: rproc-adsp@95900000 {
 			reg = <0x0 0x95900000 0x0 0x1e00000>;
 			no-map;
 		};
+
+		pil_gpu_mem: pil-gpu@97715000 {
+			reg = <0x0 0x97715000 0x0 0x2000>;
+			no-map;
+		};
 	};
 
 	soc: soc@0 {
@@ -1826,6 +1831,117 @@ data-pins {
 			};
 		};
 
+		gpu: gpu@5000000 {
+			compatible = "qcom,adreno-612.0", "qcom,adreno";
+			reg = <0x0 0x05000000 0x0 0x90000>,
+			      <0x0 0x0509e000 0x0 0x1000>,
+			      <0x0 0x05061000 0x0 0x800>;
+			reg-names = "kgsl_3d0_reg_memory",
+				    "cx_mem",
+				    "cx_dbgc";
+
+			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>;
+			clock-names = "core";
+
+			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
+
+			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "gfx-mem";
+
+			iommus = <&adreno_smmu 0x0 0x401>;
+
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&rpmhpd RPMHPD_CX>;
+
+			qcom,gmu = <&gmu>;
+
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
+				opp-845000000 {
+					opp-hz = /bits/ 64 <845000000>;
+					required-opps = <&rpmhpd_opp_turbo>;
+					opp-peak-kBps = <7050000>;
+				};
+
+				opp-745000000 {
+					opp-hz = /bits/ 64 <745000000>;
+					required-opps = <&rpmhpd_opp_nom_l1>;
+					opp-peak-kBps = <6075000>;
+				};
+
+				opp-650000000 {
+					opp-hz = /bits/ 64 <650000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+					opp-peak-kBps = <5287500>;
+				};
+
+				opp-500000000 {
+					opp-hz = /bits/ 64 <500000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+					opp-peak-kBps = <3975000>;
+				};
+
+				opp-435000000 {
+					opp-hz = /bits/ 64 <435000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+					opp-peak-kBps = <3000000>;
+				};
+
+				opp-290000000 {
+					opp-hz = /bits/ 64 <290000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+					opp-peak-kBps = <1762500>;
+				};
+			};
+		};
+
+		gmu: gmu@506a000 {
+			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
+			reg = <0x0 0x0506a000 0x0 0x34000>;
+
+			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_CXO_CLK>,
+				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
+			clock-names = "gmu",
+				      "cxo",
+				      "axi",
+				      "memnoc",
+				      "smmu_vote";
+
+			power-domains = <&gpucc CX_GDSC>,
+					<&gpucc GX_GDSC>;
+			power-domain-names = "cx",
+					     "gx";
+
+			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "oob",
+					  "gmu";
+
+			operating-points-v2 = <&gmu_opp_table>;
+
+			gmu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-200000000 {
+					opp-hz = /bits/ 64 <200000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+			};
+		};
+
 		gpucc: clock-controller@5090000 {
 			compatible = "qcom,qcs615-gpucc";
 			reg = <0 0x05090000 0 0x9000>;

-- 
2.51.0


