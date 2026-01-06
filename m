Return-Path: <devicetree+bounces-251885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E5155CF7E79
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:55:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 075BB3052478
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:54:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CF60333439;
	Tue,  6 Jan 2026 10:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FVvN8dng";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="im9FC74d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987CD33438D
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696883; cv=none; b=ejJAflbQ94SVVk+INutQEKBO9poGz2GoIW2e5nxhZYs+CnhHm2ImQKJdyvqX50+v86WEwEozbgB+I/cgQPlwGkOCb2aPhpBchyCgqN1MrwPOrsBVqdBQby6QE2eEsT1xNLu1rRQCHttCoZVs/DUmeQm+eKYskLk9FPRWBFmBLvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696883; c=relaxed/simple;
	bh=JdAUp26u1k029dM1clb3upkxXr+n1jntFq6kpHX7GN0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=K9ni3NB6yxCiJGccl6iJ15+kggvomZxmaifAXi5MRIuBRPK0trAzldY/ASvAsWuXxtJ0lPc4NdaH4XdNiQjl3wpC2/8oC7TiBWwVw6MWQLdPc0L3oCcD2YOyACbj9HfbAlyFV8l7x1uMpsboaA/7D+YJ27Ts9o41sQMoRSAs4Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FVvN8dng; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=im9FC74d; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60648x6M2253758
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 10:54:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pmdgkY+NJHC
	qIKKVVqame9s0BsDIY2GpxBhP5WwsSLM=; b=FVvN8dng+tjgAYDN2B5BHbbAdaL
	vPVUFX024rzudG6OTHuBqk3yZB3ubZAn2h5XWEYkgegh59nrXxAOKcH1s56n/95o
	oDHY1XvxY0dvexG9NDEpSx7vQ8ynbarR54Z9dWFwWqAZdq1R6RyJ0avyoacTjqwA
	6LTjDZghJi/Itbzw8xcFyR1TsqAycPgdPKkYsj0hjv2oBOjNNq2IazAFePKlA+50
	jRFUOlvu/L7v1lzmb7khro6VTDVS08ar0bxrNFSjQK4NlzTajfumC0fL2or+Sdor
	Xd+sWVlrpBNGK0ZfiWy5m2HD//1QXOXN/ZTyfkyrAVStxZFm80UrJ9HGCtg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu42142a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:54:40 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a99a5f77e0so1707113b3a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:54:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767696880; x=1768301680; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pmdgkY+NJHCqIKKVVqame9s0BsDIY2GpxBhP5WwsSLM=;
        b=im9FC74dEfap/6VTI30k98iNGtVAITGT0Bszlh1CvUB75I6Xf7rqcXtI0gMAzi+gev
         tYz1b1ryFJOooFVwRsoqRm+gONNH0IgNPh56UV8Wis8/k0J2fvgCHxJx3H67ssIImn1h
         fRce7FTsQltVTOzf99DGTrBjHXagQI9bUDCE+TXWrzOzpGRWqdQrfKV08NBEf/0gCpiI
         o02FApln7hVP+auqBx8WCIvlqvWwGmK0k+QdvEYpa5x1jjrLS0fpK8gG4xQwyQiKXjFd
         4OOkeKw49UqSXVlJHgCGQbOLKG1JetuNV0PBAIXD4+DFewFoXXE5HXrvakFKKdsTsjOh
         q27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696880; x=1768301680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=pmdgkY+NJHCqIKKVVqame9s0BsDIY2GpxBhP5WwsSLM=;
        b=S+fdqPAKv82ii/GRqqB/h5g20sGFBAycRjA39OiM+myULVNVv9zE794vYbEqz8BBgf
         Bn0ndsLmB6Ejsl7Ju0R75jBLYe8ZBPtCcyfHDDYNo/2trmSD+6ncT/OmVXv5Ax4rR/AB
         RGi4c4P4bovPEEo1rwcm4c1Sfs8TjCkdKOOIib4GO2am9cjp1+38H2iApn6m5MclzgJq
         1MlaoeAZU/lo27k6KdV7Y1duDtX5Y1RzNvHWAIqqukoGUH37aXJX8LVauYcPUiokss1s
         YuqaTKiYhKhy4NsFdJKYf8d9uFZW0paV4FJqo1iQBheZyj6RkG9jBT50mYXZseDQhqDV
         sRSg==
X-Forwarded-Encrypted: i=1; AJvYcCXkzWp2LM77/e5sa1TwGPHRfv+1vwzg2W83neo6ZU+aPqWbH8DjJ6pW1dEgSmY4YMMIxCGTKyGbiLAt@vger.kernel.org
X-Gm-Message-State: AOJu0YwVBQZuWyJsbQ2AHNx1C2wHYjjzsqVixw4B5IWGpSdhg8CE+1YI
	TI1ZFDBa0wsS1ZLUlEqtxEVuuFS+9rFlmr5NR0ddZFCaj17Lr2rLm9uR8kptZxgga14+4n5HRto
	W4ktsRh9yQwTfRsX5P/xs7hpI4ofNyNgj1q2vhuMlUnMr9QFKMEqdTS+aF9DryTt4
X-Gm-Gg: AY/fxX7brS/RU0hfF5JbQLkc5Vns+YI/NW0iRQUGFqX8OzVG7YfKqRZDJs4U5jJvqJX
	gP0CS4NBXs2j7LKqAfcAYANBdQUsIidIKcCVmyfCdQHxe57IVojFuEFjKUq+Z47CNfAx2gsy+Hp
	yPOHPpmCFQAgpG7zRBE3gZkTFP6eKKr5hI+G/JGIX/iQZF6eg/EnqSqtp7Ohq8YFrOvqjpBn1z6
	Vn0ApjdOjEA8L9b0AImiBNgmUTEvFlAIH302c40JIar/CHdOigfnquNx1m32C+QH8rLI24ZXwIc
	6fmt0XVeHQoQdjd89EAQGKKTqjkWb41h0/JRTnyKWf6FgICWasO296MSPmf9Hh8LXgm5uB7ecvT
	OWERUewfOIXzWXYP7fLbeRJ95XWeTR8cBozN0KmE5lTGXWd7FXtbuCOJv8DbPOhKfevHiCg0nDg
	F666TLzvCgiBPlvX9dZdM2AyGJ0ofhMlQbqbvRvjg=
X-Received: by 2002:aa7:8893:0:b0:819:baee:ee8e with SMTP id d2e1a72fcca58-819baeefc82mr1966132b3a.0.1767696879499;
        Tue, 06 Jan 2026 02:54:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGX2GerPDQkl+6vch3c+/0Q7qVuKNyAcIUOoWr+coGBHvXMsffTIvaNw8AXD7i4U2YhPECflQ==
X-Received: by 2002:aa7:8893:0:b0:819:baee:ee8e with SMTP id d2e1a72fcca58-819baeefc82mr1966102b3a.0.1767696878958;
        Tue, 06 Jan 2026 02:54:38 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b98sm1855121b3a.20.2026.01.06.02.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:38 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v9 5/6] arm64: dts: qcom: ipq5332: add nodes to bring up q6
Date: Tue,  6 Jan 2026 16:24:11 +0530
Message-Id: <20260106105412.3529898-6-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695ce9f0 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=wvtPTOKNElVcqRjrzWMA:9
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Pu-kuBF_2jYXpYgJN6kd1Zrs_N7K6zp-
X-Proofpoint-ORIG-GUID: Pu-kuBF_2jYXpYgJN6kd1Zrs_N7K6zp-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5MyBTYWx0ZWRfX8XVpUp99K4qP
 T1HiR1+FXU3KdBmiy79vX/B30QJ4c8pmTHgMQ4a6HkyQm7bqa4jaW7FmUvhlow5rD14tE5+pJg5
 qUXoklPyuwOstMLVSN4G8TKGPli01NMpiumiag4wc/Q1N9TVD3tNG5Rn1qEprtuV2tJf5cBDST9
 j5GZVRlbS798C7XkRHxmD5UxrkrsypoH+zQGDWxCJ81BxP8umvMny9vhlNjylVCS60EIzE5Su2V
 4xB0mwsHmlJ/b2McUZc/QapGxXIAL7CJyvSaFXwPbGB68M0f/eSasK7vE2JAzMtclaRKTDsBlkJ
 ZnvRcLerw/seDDL9v6SuWLDr4nEudRf1/v0iOFvmRoL7++zWbm7lmA+tWnNP4/tvXZCn+AFPR+d
 D6dnncr5HgsMuOVsgGtXm1HDc1894KIFvoRgn1oHuumSSvhHZvC2LpR3mkx+RFs5OjNy2jae9YP
 uYK/mvYlAcRTVuik/Ug==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060093

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Enable nodes required for q6 remoteproc bring up.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v9: Add R-b Konrad and Signed-off-by
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 64 ++++++++++++++++++++++++++-
 1 file changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 45fc512a3bab..c31b6906355e 100644
--- a/arch/arm64/boot/dts/qcom/ipq5332.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
@@ -2,7 +2,7 @@
 /*
  * IPQ5332 device tree source
  *
- * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2022-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <dt-bindings/clock/qcom,apss-ipq.h>
@@ -146,6 +146,35 @@ smem@4a800000 {
 
 			hwlocks = <&tcsr_mutex 3>;
 		};
+
+		q6_region: wcss@4a900000 {
+			reg = <0x0 0x4a900000 0x0 0x2b00000>;
+			no-map;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 418 IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&apcs_glb 9>;
+
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <1>;
+
+		smp2p_wcss_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_wcss_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	soc@0 {
@@ -586,6 +615,39 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@d100000 {
+			compatible = "qcom,ipq5332-wcss-sec-pil";
+			reg = <0x0d100000 0x10000>;
+			firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mbn";
+			interrupts-extended = <&intc GIC_SPI 421 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_wcss_in 0 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 1 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 2 IRQ_TYPE_NONE>,
+					      <&smp2p_wcss_in 3 IRQ_TYPE_NONE>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack";
+
+			clocks = <&gcc GCC_IM_SLEEP_CLK>;
+			clock-names = "sleep";
+
+			qcom,smem-states = <&smp2p_wcss_out 1>,
+					   <&smp2p_wcss_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 417 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@18000000 {
 			compatible = "qcom,pcie-ipq5332", "qcom,pcie-ipq9574";
 			reg = <0x18000000 0xf1c>,
-- 
2.34.1


