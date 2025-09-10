Return-Path: <devicetree+bounces-215399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC14B5159A
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:27:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6638D16AE82
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 998B931A54A;
	Wed, 10 Sep 2025 11:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N3R18bPQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CB431A06C
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503587; cv=none; b=ZhFR7b9gLZNXGGO++8Lk21ApwTGfgWpzeCrAEEXvSHj+INAFWga+v3VKuZDmBsUJBxtWyeTgBiF7/AhAIAm4pPszjslSVStfGOnwsnuxvp2rYSHaI/6lP+ldC1ymEcvCKbyBqDbtVE4HbfXagI5xbnE45zWCOWoh0agRQMCFryY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503587; c=relaxed/simple;
	bh=yuCRPH4In9nuWIP15gnF49tqCzrlG95RKcO9BJSBpqo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UZsLRzu7WfRywzxi2730D96SFkzW9F4LGvg65FIW74+7A/4JhU+T3RD1vPReDS42LPeuGhlJL07hFxd7wWtP69uC3/ACzX6Y+NE57N+axIXnL/1k87xibJZbZUh41fACyYAY7MqRqDREmXKMZ0Lqv2kUJ2prakmi/z/D4oamn5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N3R18bPQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAFLg2032149
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t8/MZ1Z0ivzcpEA1k3SkR69iuMbjvUgH0zMXaZpabFo=; b=N3R18bPQude7mWut
	GJgsCqrJY6mmuSz8al39IC7ldM3fdJMZML+DZt91m3Kd9+8IKIwNOV3rHGsRAbDI
	m6TI5/79DvCMnTAFUleWL+X0JByua+D+QqU4LokF1SwUHp9bx6fuClmv2KvUNqXl
	iJgLm5mIHuCDoQcQRb2aPdVQe6aoKEnRa4fs4XQgYmijNW4TKIKPUN5GYRSejNf5
	wSsP3F24XqMmDcIZFDBrwI/AZFsLfbKG9e6e7g6vP1Sa282basGOyRr5QZkbYGbK
	3qXKv1OU6HDbHlu4HJ9Ue+Q8mG87brzxw5aEfFxMiOfVDvuSnQAzTPAttgnMU0PZ
	hP4Yrg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4m3h6v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:25 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-77422201fd8so5167004b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:26:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503584; x=1758108384;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t8/MZ1Z0ivzcpEA1k3SkR69iuMbjvUgH0zMXaZpabFo=;
        b=Zv1NLHFAWoTdJ2KfShgzcuYo8jJlmDKwp430kd/ZoiC6w48G38nelYgPKmWDHxAyiK
         hJkKZm/lpNfGzi7Mm+PCj0639eH97BjprblDmuWocJ+sC+/X6/X1ZynpGFho9nVelJX0
         6n5ZUIHmNGjiR3DsFS6P5dVzYscPR1qeyycHNfSgWQOo1DeuBdpE7TJOVRGI3qyc1e6e
         YtuGz9ZLZuQyCG443s9iUqWps+6y70nROqD4Cwg74k34V3jaE3n9PxG63PQZPMHu2XBm
         O4xaXga23VRemaoDz4GBOOLmdI+QNH2R3xfZSiNxmEjdcpLSdydH5hEcWUJzxBBZPl+z
         UJKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXAnhDC97w7eI8D8aStIsGcsxX6IBoG1/2MHHy7GJbwsIHPYo8nKO65lzk2PEujSWfAHncz/P8Ql+xk@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+yqDdaBKgegsYS8Zwb8WMAvVXQGS0wZW/Spueh72Y6WNAcox+
	MV+lZ9xwvysjNw601/XdbAQf3sjY6VMvWhgCth7QFNg8DWkMUWViFCQgupkku+8GaZRY5Plp6TN
	i6CkSOLaXaVuZvzOpq6PBimZASMV+G7LmG0QVbG+bZq3Sm2CWW83S1ziBFnGTm+Fz
X-Gm-Gg: ASbGncuyrnBF+HK3nL2e+opzKDYk/DtAHhmD/+WkoiBEsCaizguJ+B+HWaH5k8xXhtE
	s6C1nNRBQbtHP4MysJv8uaU/VlvlLN75jrXZtXU4k3SNUrHZT/yj2ksAAvxAxlopufBMh3NlhgK
	Nhip8WeqUpnbq0cerG7kVZU2gWLFqAKA1lmltxNXwsmX2CN/8OQSWQCfC+jtjH+ZX7Smm6/oLBD
	rLboHNduu5ppUPnw1TUTQsNPLNpt/VjM7r/y2wzrcv26dGbbWAmKnH8XlAnCWPBRkkM7YvfVw2x
	Q8DhiJw+as6nkyqpY7UH61S5BFpTJBUNRWKtHQPAEv30MUDwOuuXa4moRp6WWwai
X-Received: by 2002:a05:6a00:84b:b0:772:3714:60c0 with SMTP id d2e1a72fcca58-7742de62dfdmr21101653b3a.18.1757503583943;
        Wed, 10 Sep 2025 04:26:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+vKMhfpRQd0UiLtmW+vXWqGOmoSTOstFxWxLpweYFG8NgPpHn11KXD5VBasK4LGW6+2qGGg==
X-Received: by 2002:a05:6a00:84b:b0:772:3714:60c0 with SMTP id d2e1a72fcca58-7742de62dfdmr21101595b3a.18.1757503583151;
        Wed, 10 Sep 2025 04:26:23 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c7384sm4862260b3a.76.2025.09.10.04.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 04:26:22 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:55:23 +0530
Subject: [PATCH v6 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-a663-gpu-support-v6-3-5da15827b249@oss.qualcomm.com>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
In-Reply-To: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757503556; l=4545;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=TzSQIC476egRWEvc0vuMM1xOXcUXjS/jkSdKEYKiMyE=;
 b=jS5wc929f/JcNsB3utolzl03oS36/6yrhYFLYEiHFCDxSMXk01iodz4p9lrai9kdjjGsowLgd
 nZx6hRYwgNnBUurINoWely3+uMbzzGy/Y6zLEs9fySoIlg6/IFWNnQY
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX2HoTGBuNsiiO
 00m5WpAvBxVOXIdJAcXpJenvAf7bVGYjKuH0l15mS1isvYf5FrRcafvM97h7apPM23AsuDv+q6Y
 8hP2ylM5SVxpodKhyy1tL1uqk/8SBO3dYgt3cVqCNXe53oyK2J5NNuaV67eCFDWwnmMkdcfrR7r
 +34BsymehqJUFD+5LRCPV2lF4Dr62wWsE/PrTvkJqw3G9bQ7GS++R7erSOtA0uJ3hDejAwFB2O2
 RDQVOSGgINUhD6j/DCXXNSrYgWy4Babxg3/11/3zURdhus8GgazAryUk0hMJy31IFUBjrYXjNVr
 6hVxlgwyLzSxC2WtarM3YAQ4MPu22FBqbhnJEgNPwi10EBN7DVjfKA563nRc4O0ZzXw3Lsl5yDx
 XpLS98R3
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c16061 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KKAkSRfTAAAA:8 a=D_IGQ_qLm8RrHFHUsBgA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: j4oBBdpg_dzMlZPjENfN-oK3GWJP2yON
X-Proofpoint-ORIG-GUID: j4oBBdpg_dzMlZPjENfN-oK3GWJP2yON
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>

Add gpu and gmu nodes for sa8775p chipset. Also, add the speedbin
qfprom node and wire it up with GPU node.

Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 119 +++++++++++++++++++++++++++++++++++
 1 file changed, 119 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..bffce5a5d465b6360397290aa3d948268a254e41 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
 			#mbox-cells = <2>;
 		};
 
+		qfprom: efuse@784000 {
+			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
+			reg = <0x0 0x00784000 0x0 0x3000>;
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
@@ -4093,6 +4105,113 @@ tcsr: syscon@1fc0000 {
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
+			nvmem-cells = <&gpu_speed_bin>;
+			nvmem-cell-names = "speed_bin";
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
+					opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
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
+				opp-500000000 {
+					opp-hz = /bits/ 64 <500000000>;
+					opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
+				};
+			};
+		};
+
 		gpucc: clock-controller@3d90000 {
 			compatible = "qcom,sa8775p-gpucc";
 			reg = <0x0 0x03d90000 0x0 0xa000>;

-- 
2.50.1


