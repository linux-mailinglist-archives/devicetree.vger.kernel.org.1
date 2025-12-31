Return-Path: <devicetree+bounces-250757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22605CEB997
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:48:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 25AC63063886
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:46:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EF3C312827;
	Wed, 31 Dec 2025 08:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="haay+MYn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JeladMnA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E3C2E3B1C
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170791; cv=none; b=WFeKl/DHQ6OIkIbRMTfz4oOugBXHCrEd0ljQDQrxJnIS+fD1ETjsuPhkVubiYwlF3XtZxA+dpwhgveQXvWzcQDSUxP5oB6wd7rXew9X/J04upRTTtyfdyrV71T/SjzGS7Xbv6fvT288OIfH92rc3iYr9KabRoYKDO65dP7UpjXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170791; c=relaxed/simple;
	bh=l4eOR8kZJV+C+Iss2h5xt4YdVpdDGcWWAjLQKTHE2PA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VOOya2KDxEQO9nHdacQvMxW64id8Kue7cDkDh4zfcbB2AKaYwYY4QhYB40V9P/1vH801H1y6rmC/M4azIw1tBzRm9EclzgbrYJB1OuxSPjSf7c8qCBMbSMShUwsaIEf47f8HdXIrUotGKE0Yq4NDTHQvBruH0zUTSR/ahRBBBPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=haay+MYn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JeladMnA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV3dRJe1830517
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QaNzRd1GwTYSBjf/Z+ZwMZwMyMVSlmGG88hkiAFuNcA=; b=haay+MYnSmV8dwpB
	PHqAPXM7Us7ml1+DivxtIfO7Ne00LE4tcZDef/9pa9aJ5oV4eKg/6xuRp9TpEtAc
	8zwFjwv3LJKArl6xz79vEl7buSBw6tUIA7DFUSgVgIvOFJAleixor0UMgzckQolL
	GQCGL+Rpo7fM1RLIetRjl9Ge6UmdYLh3bNgBNCtvqDYHQ2CfW93oivnpX+yElmlp
	vkdjkbJMXUHNatp97ExNgoDkE0oaQ4D2jflFKHPGoil3jRTOPC5dsOi21d/cwtFA
	CQInU1QiODyWiyB+16FkxPL8RJ1oeG9w3fidBZKgrLorG9cyjCvT7m/fd5UE63MF
	clD8aQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcv4agh01-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:27 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b471737e673so13339714a12.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767170787; x=1767775587; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QaNzRd1GwTYSBjf/Z+ZwMZwMyMVSlmGG88hkiAFuNcA=;
        b=JeladMnAkLksm0gQRlmjyVxdUDVR2MFnrioGiAWjWESUJPA6gn7Al0IRJOkhGgcOZq
         60z7RLmqHstN89+A746dvwggrjwLIOnbjJxiXANxRmlPPrKSjFhKtcuWzoEOpUGuBU6/
         NDhHsU/xq+EyBoldBN4s0Y7kUUcSio0u/pqXxj5YclUHOTGXeWZfIxWfMGcUZ7k00xr4
         MtWGwCIhLZDrESjbxK3yIIqG7rbmic0SQY/4S8rblNLiIQRFYIE9wWfmb9Go8AbkobR3
         woy8EKPtg/zdqUZxOnLinl7IaIZqCd4tyin4UQJbDyfTEuO6tuaPDDPfRokl42987tCl
         SBVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767170787; x=1767775587;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QaNzRd1GwTYSBjf/Z+ZwMZwMyMVSlmGG88hkiAFuNcA=;
        b=bptODFpp1QsBklkMaxYG6IlBm2oU9GtX0S4sDdjYa+RPrxmsKZc6bGbEMXugOkncXb
         O9G/XnG+W2bLck3AIk2tmUkH9AYEvElFIW7eEKOJjoL5aiNWDflt4hSpuxKpvuhAatGs
         tSwdjejkZ+G2zJFItVwYNHWTwXVz/hak5vbgBj4H6TaUXgcfWN4kUiyERIUB/dV+dtWX
         KJ7rl2NvwIKHBN0c8p8QZIEsceUIRjH2g9DUquBHQMtYmNO20xllzt+OgxSgvHg9WnI7
         eKWoj65MQU+gf7sTapafOYJlMO28Ts3eJrW7ymI9hlatB5EMKvAILfSlZtsfh77o8/aC
         GVlw==
X-Forwarded-Encrypted: i=1; AJvYcCX5BVOX+l3Y8FRvZU2lIJmYBq2qvm6fU9VkEpaQJU8/VBh7qV0cq3Jt/zA4m1c2yKLEMH2U4oND+8PI@vger.kernel.org
X-Gm-Message-State: AOJu0YxTISPiTF6hSYWUNhwOIDnwLGgxgqscaOYUZeBwpu71d+KmG9zp
	JKu4QgBHRY9OfGogMOECUbVio5ReheSPzS0+Cu8vY9JFBiRYc+gTPvLCWEf9muJY7qm85awK8zx
	hVvYzFMLBBkqwq+g2kx/jiS2VXF/qUAcS8nfNDk9spFYzhy9p7RS4OFMawlOfATlq
X-Gm-Gg: AY/fxX4hJPtySs86g6q6xbZoO0GvgZ9XCVusyUr9BM4iJ765p9xeoheT/nviQdQX22s
	zWoKY75GcqyHuyDTPsc8NwsqpXGkFEDclvSgd70owvyjmIp1dOd79QlaxfDPmBEdIDi0uPIlrWd
	SbLagzTuGhzMRxjB7i5maIZa/1ICAa+xnaGT6s/AtA3BqcGKJWKXOgfBny+ziOKVehsOp8TnNtK
	j/yIE7ysEeclcVG09uKV9m0wujFeCuBrfsGxtZVb+39aFu7THqjQ+gemPWo1NhGEzUNGeiXPhjB
	AiXTYgiyHYiuzcyLwjU1zpn5xQwhQfQfRcBnctNUKFYWfTzllKGfaOtwNxQeRZrpdPLVAI7QMGi
	2Nc7ScQZgHbnrBIx/cimnLllhhIWIuN9mWA==
X-Received: by 2002:a05:6a20:72aa:b0:366:14ac:e1df with SMTP id adf61e73a8af0-376ab2df3afmr30047402637.69.1767170786711;
        Wed, 31 Dec 2025 00:46:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHu/EZ3oLGF1NZl2KMcyUSJhtDfGW2zPYLbNsW86lvNNZKwJtYXyj3PHGDeUbAhfuXdkhwrRA==
X-Received: by 2002:a05:6a20:72aa:b0:366:14ac:e1df with SMTP id adf61e73a8af0-376ab2df3afmr30047367637.69.1767170786180;
        Wed, 31 Dec 2025 00:46:26 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018eb5sm31356070a12.16.2025.12.31.00.46.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 00:46:25 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 14:15:27 +0530
Subject: [PATCH v6 6/8] arm64: dts: qcom: talos: Add gpu and rgmu nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-qcs615-spin-2-v6-6-da87debf6883@oss.qualcomm.com>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
In-Reply-To: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
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
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767170740; l=3729;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=lPrDGRXmTexYyR40CdhB6xnI9xlISq01WTO4Z8VvcR0=;
 b=MuisKXRywC9OCQqc/3Lssr80BMzgApYmNNGxqrut6L/gjG2mHNSAWdmmrHRC7wg6/d2LxvVNs
 JrFpwmHft6sACbQ0ZH7ZZcuqyYlIXpEfINFz7uZ52+1D0lwQuA4eRe7
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: sjZsjchmR2bdRAgnS5DWINqkZRUfS6yz
X-Authority-Analysis: v=2.4 cv=Ps6ergM3 c=1 sm=1 tr=0 ts=6954e2e3 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=jWRUczSHPS-Ra7sZ8p8A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA3NSBTYWx0ZWRfXxJZ6mjam1me+
 X9jUMdLCanmKAxPnzW1gpxER6lbjnFp8lBc7syYkUfK1ikkuaqjLMySu822ZHzHo+GydmzccIQb
 g/VNiK2xSSB7Qnyyr24MmFivSgbe7k3Id1aDARc6rPETf4Xjz0og/+Dzg9NN53py8huuXjTBtqE
 g1TmPi2rD3GWxwn+xa/d/uL1P8k2d9RanE5n8JJT6v4L0vHMXA5+B1ErdhC8Zs7B+fymlVeS/Gh
 a/+Lblkd4fabRK1xkR3R4Kp5YbE51ls9Rb5NTYYCqt4Am2piLu8SuNfQaVgw9D4yfxKkTkirp/z
 IEVQBCi8Wkeds5aK7syL2OPcEcWoqf/OdiDyBQqBa15OFfFI4Ds0I+DVcJI3Vt11HaGNvt7CjvJ
 c4DElIzMi7jNd0AdzhGBDjFlhWmgAY6V3WUcmPDmA1qy4Oz7I8PwanVIJzBy4TAfNqlJClM+VzF
 RN89M4o7ZTLH1St+tcw==
X-Proofpoint-GUID: sjZsjchmR2bdRAgnS5DWINqkZRUfS6yz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 impostorscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310075

From: Jie Zhang <quic_jiezh@quicinc.com>

Add gpu and rgmu nodes for Talos chipset.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/talos.dtsi | 110 ++++++++++++++++++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
index 743c840e496d..6880630e6735 100644
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
@@ -1826,6 +1831,111 @@ data-pins {
 			};
 		};
 
+		gpu: gpu@5000000 {
+			compatible = "qcom,adreno-612.0", "qcom,adreno";
+			reg = <0x0 0x05000000 0x0 0x40000>,
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
+			};
+		};
+
+		gmu: gmu@506a000 {
+			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
+			reg = <0x0 0x0506d000 0x0 0x2c000>;
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


