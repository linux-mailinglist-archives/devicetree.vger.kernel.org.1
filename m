Return-Path: <devicetree+bounces-251886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F4DCF7EFB
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 12:01:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BE1FA30FB105
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACB72331A5B;
	Tue,  6 Jan 2026 10:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GFOe8/uq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BmDERJB3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9773370EB
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696887; cv=none; b=UDOwNnvkocxIq8F8KnZfM2i9ogjxo4v670xPj1SkdwE5Oikgtw4Km+N1CvH17qQi5njzFI1Lx/gEFN6+oJkZ7uHGdpgLVfpbuscmLZrjf1M/53+3t8LUjF3mkW6ENZ24aDmVQpJHZlbro7Yfc1kD0U/uKxH1M7c1m5CmErcOUqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696887; c=relaxed/simple;
	bh=RXEbaiuftN4WfQZpnRxRSWyxt4aqWkvUyEe1N/0MvHI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=MYjqL585R5e2YBsO4FWsekvY3X9XvXLwqRq9Uko1vp/nv30hkRAbTspDKGpt+z2Nk4E9m70eOtdAW01qEQ49Lne09FkYC4LtLP9caJDDOesKJdtXGgwpAH2opDcnLWA8zCXq7bQK8T9gfKPJyVZEXnoJox+di6qmaqmo5XBLWK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GFOe8/uq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BmDERJB3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60648umZ2253728
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 10:54:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2x6gl7UM4ir
	lhhEFgnuugLaTx/vGRAbxEZci4ghQ1KY=; b=GFOe8/uqCl64yb8PphfSJflu+JK
	kpFdyeDuZhG4QuIzUZXWMeca9a8V5NK5mbSAjQv2DkZ/0Q/bilv+lnk+zzjtxTRx
	OS43zXAUHjah5Ygyg3PBHhkkvbgFsyYzUQTXJTxDw8CI8XjctqxH/gquHPDgEyXU
	md4jIzuZBH0lSvtL7X3lv4xieQ0/9TPWCEeqkHjs2d7Ee64FGBtRvN2cM5Ci6Vm7
	YJEVCQMSobUMIe7kY+AC7m8TL1XrKCtJSJJZDaFt26AE/5Fv/EqYx4RtJejclsz7
	HnjkQi0+5jSCSYzL243mOh+qEVgu+oROwgN52DuMbSspBcln2qwjxuw1bsw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgu42142m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:54:44 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7bf5cdef41dso1699524b3a.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:54:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767696884; x=1768301684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2x6gl7UM4irlhhEFgnuugLaTx/vGRAbxEZci4ghQ1KY=;
        b=BmDERJB31mHMaQNHelwoCPvL1/EmvS6ASz998U424cxqjKuAKaL2dgy9J3Y0MVRrGM
         Ev6BSc+mPYLKwyGb2mZa5Ftsl2x1CntM//NBcwuAj0bv1+B2idoKm70bRRrxNfXj2cVj
         sQSBcNjfWqJVJJ2dr3UVYk9cMTxBVNbbKd+GO/aLjDj/+uK0BKD0zS5gsuclcBvWQM3D
         sJLm53ZCXOMgcu2Ci34PaDCEe6+defAcWr02jfQWR2qC+6vln3uGQ6OsDW2bjT9oJjrN
         6mhEYodq5Pe9lbPmpTDrNVE4hBDhfzS9rAQvvfrOz5Rryck5S5vJlsNiEcWFKFB7YwaG
         iFhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696884; x=1768301684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2x6gl7UM4irlhhEFgnuugLaTx/vGRAbxEZci4ghQ1KY=;
        b=V+SG2gKkZ3hgQXBzJCAZ+//lkI98R9uSMsNkiL7wThXivsF0dEkPA6lD5JoSLteaRP
         B/9bHqCuBa1+2+iR3a35LABqjokNsDKULS71AkfoX2Yv34qSO9zmLJCByN+fxcr/Pzez
         IAPrW7dPhK/fx8mSJWve6HLf6N8DRWe5RsoZAcVVEOIORCOvmCyLVIaBuF2DRzUg7Kit
         +bYC4aHQ5F309FXlS8WZotNVOOicuqRRjUUwkStEBUfNjv4b4pJX2Azuurabh6Y8+b19
         w07CeXlIII1YypvhMFeNO7HNbWcEy5bg1dafsgFIscQUmAQh5WTjhMcdF46oBsDtImxT
         cx1w==
X-Forwarded-Encrypted: i=1; AJvYcCWNTYjOP2rr4Oe8Jo+SkL8hr35twrliiUNHy4WBPhfjvBQ2dktrsv5N1+/kGUbZgnVCGbEKSMzYYO4S@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd1wpt6w+zw1cbsGI5pcaEHV6Dj5M+a2MpIcaEtyvtbjCfqdxn
	h1zd/oYHL/N+8r0fC1U0ikVRTjzkZA5Blfaz/+ne1UjiVJ7PMiuqld0gNQCkEITtVWvXs52E09f
	CCGV2oThWBlvq0dFp7xfHolTtTqEJecAjuij02+gg3za9HG/jfCLhb4SLMuzDyIWU
X-Gm-Gg: AY/fxX4LEn44ZzUbrsppUrD9q51qA5eXv15+2Ny+HD+SB6kqZ5nDHKiZ9v9quJKP/YP
	Q+5eD7Mq0J+Ni27Skeb4mevMeMsWqnh8NqTgSkPNnMgJBFvAAo6xAX9rmAJTo7q3dGDAh5E56c0
	FN3n9DoBV6Gu4y1oZd9CBrrfOZbb3JZuFussTWASHitfNB2k8SuReuMHyESuQ1ahbaRJazp97q3
	cU5/IXRLw215v4LKDFjvuYOeYnIk8gk3197asHl4xrTPB5fjRbluV55PncKL8s6YjFvvI3CVBCZ
	a3ZwdBrHLizJqr2stcovKjqoDWqMsaR9TJOdzmYlTUe5v/ja4S2Iw4kxEox36HYXRPOeyP/eZNX
	r8Bda1QR7AIhqeWidZAPav9qP/qBHuXdkb9EhZXq72m0L+bSdcQilrgeVjq9EXiluUH2mWqoqtc
	H3f8Q5FpCBv3lUzNWXOIGo+K9jyDxBSA2K7SpNeak=
X-Received: by 2002:a05:6a00:ad05:b0:7e8:4471:ae79 with SMTP id d2e1a72fcca58-818830d2092mr2294914b3a.69.1767696883692;
        Tue, 06 Jan 2026 02:54:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG8A9d633uieo/HzBVb8OmBvgOdYxotxAKuUv3ytpGRBjSWOvrnPVYSbdYOLK69GFY0qZUT7Q==
X-Received: by 2002:a05:6a00:ad05:b0:7e8:4471:ae79 with SMTP id d2e1a72fcca58-818830d2092mr2294896b3a.69.1767696883206;
        Tue, 06 Jan 2026 02:54:43 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b98sm1855121b3a.20.2026.01.06.02.54.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:42 -0800 (PST)
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
Subject: [PATCH v9 6/6] arm64: dts: qcom: ipq9574: add nodes to bring up q6
Date: Tue,  6 Jan 2026 16:24:12 +0530
Message-Id: <20260106105412.3529898-7-varadarajan.narayanan@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=dYuNHHXe c=1 sm=1 tr=0 ts=695ce9f4 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=nG0a804IO7H6KQc07wUA:9
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Npwmy6UrjpOXEO8m-1x5sFpX5Zeea9HG
X-Proofpoint-ORIG-GUID: Npwmy6UrjpOXEO8m-1x5sFpX5Zeea9HG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5MyBTYWx0ZWRfX3cih69N8jL6x
 Di+yZ3GZf8oZ7hhKSW3uhXiF99DR7jijLaTeJ0E9VtSqZE86avfVayRHEYe8JVFtcC2gi/6rlyP
 rhnI5Z1ohUBl6RzWRa7FZAo3wMwtK4WAsF+oUpNnFxbLNmn+KxQgqfa8STPIRKMdUyKSeI+a/MQ
 RR/pLnFXl2TVJ8XyFX2GXfVzjeX51PntzFM/jUZekThBKfJE9Eth1FKEltQeNP6zhsKEJwAp+Kb
 RkWDytTmrQHK6SK8EgAxibCm7mgwNL8U9wmx0Ch0c+zx9as1aoNcJrJIAk48zL2cwnZQtLBI0Yl
 qRK7hszuikWfa5gh6eg+hjKmQzWBSHxChC8/AUyJIbMxKS8xUbOoWYR1i7aqpy+epbqWHGXHJ3N
 vnEqwYBGUxmZoI37tCcQQ8nu2zwMqc43n7yUMWAVp/EFV8c6YgXnatnQSw6GEWAWXDFqj/yTZr9
 sQk5E0ei3dRpoZfuHQw==
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
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 60 ++++++++++++++++++++++++++-
 1 file changed, 59 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc9..6d513fe6ad58 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -3,7 +3,7 @@
  * IPQ9574 SoC device tree source
  *
  * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2023-2025, Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <dt-bindings/clock/qcom,apss-ipq.h>
@@ -226,6 +226,35 @@ smem@4aa00000 {
 			hwlocks = <&tcsr_mutex 3>;
 			no-map;
 		};
+
+		q6_region: wcss@4ab00000 {
+			reg = <0x0 0x4ab00000 0x0 0x2b00000>;
+			no-map;
+		};
+	};
+
+	wcss: smp2p-wcss {
+		compatible = "qcom,smp2p";
+		qcom,smem = <435>, <428>;
+
+		interrupt-parent = <&intc>;
+		interrupts = <GIC_SPI 322 IRQ_TYPE_EDGE_RISING>;
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
 
 	soc: soc@0 {
@@ -903,6 +932,35 @@ frame@b128000 {
 			};
 		};
 
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq9574-wcss-sec-pil";
+			reg = <0x0cd00000 0x10000>;
+			firmware-name = "ath11k/IPQ9574/hw1.0/q6_fw.mbn";
+			interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
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
+			qcom,smem-states = <&smp2p_wcss_out 1>,
+					   <&smp2p_wcss_out 0>;
+			qcom,smem-state-names = "stop",
+						"shutdown";
+			memory-region = <&q6_region>;
+
+			glink-edge {
+				interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
+				label = "rtr";
+				qcom,remote-pid = <1>;
+				mboxes = <&apcs_glb 8>;
+			};
+		};
+
 		pcie1: pcie@10000000 {
 			compatible = "qcom,pcie-ipq9574";
 			reg = <0x10000000 0xf1d>,
-- 
2.34.1


