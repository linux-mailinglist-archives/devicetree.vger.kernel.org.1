Return-Path: <devicetree+bounces-254379-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D550D179A6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:26:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48AF030911D0
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E2938A9A7;
	Tue, 13 Jan 2026 09:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BUsqiOyA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PIyQHGnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C223389DF6
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296069; cv=none; b=iH/l6pncWrltwBRxoA4ZZbAJHAEVq1/bdHSMY7Ax/1cjrqOd0f3D2bVAYCMD6ypDPvzeEOslSZCW7XPnEusPvgrN2a87EMA2UhlS6BWcishJsKyzeWy2wGtdCquFCpWxlUcqvooUM80giW02X4pHEi3r2v3TnfY2ZlrZAgtnPww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296069; c=relaxed/simple;
	bh=RXEbaiuftN4WfQZpnRxRSWyxt4aqWkvUyEe1N/0MvHI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PXc8biUvlecryy67iv4qi636dS/1RFbIYMG6CAZR7fH8ZLUEGEePYVfJ6fTQiJ7f6Dx+Evhm3ODw79guLKzWm6WcvCOraAeOVor6VNVssZ7VvVeHhCN36giarSoojpprhECaa5E9HBnfaS352p0C2RQTosncDIU/qptkMTcwCc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BUsqiOyA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PIyQHGnJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D82DOo3299867
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2x6gl7UM4ir
	lhhEFgnuugLaTx/vGRAbxEZci4ghQ1KY=; b=BUsqiOyA/0C4VSsXPilLEpEYzJQ
	UPior1Rdij0LirhB9RT3hGplJvTEDm/Psxnj+KiivdWVUrTKYtdEeU0kUYp3f/Wz
	wb2dvjfrYFmk3Sp6UiS1NTBvYEWH9tY7GhAb1yp8xg2YtvXH2TK6QAJ+vkPRsAVa
	dWdLf0uMNYWKM7YS5fIR+WDpMas5IgmypXqo3U1rFvBbshqOl2OFwiEItswUZ9yl
	tcGGHlH/g4YqPAlhGjNMNuGwwZHhktubH8umPh4u9b2T25pQFPWFP/JMGLjc+Bxo
	Ft7B5xFO7lNsHhYJcV/IbnixgvEp/TqA7aRvqk2xn0LoADVDYHIkdwPLSPg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6jma5v5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:54 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f1f69eec6so76134475ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296054; x=1768900854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2x6gl7UM4irlhhEFgnuugLaTx/vGRAbxEZci4ghQ1KY=;
        b=PIyQHGnJzkMuHlyz6ZzYrPORWRGUla5V7Amu+xZo5vJNyopciaqBsF5fccmLom6dyA
         /6p2FqpnnIq1LQSNmoXTk85VDcwh98xf7X+SFPXjR7qUW/ip0bOgFIGgSuQcovDqlCqC
         N8JXUzMzwILzxZQK9RAaEMov0jBlnMJLdbs/7QJZHVvcjMYxWo+TUewcYe6aLzWdCAhh
         GYc0SP+Rn0VutNN+MHa7x+UEqKtHMFOASRqPx7CXCNuJnSAH4xPxkXNaGupNJRAW23t6
         swbH2yUFuzK15BVCraTaFt5cN/XEtmspwJHr3FC+3XMZ9/+goT86YKDx5CMQN4RfsdHZ
         oXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296054; x=1768900854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2x6gl7UM4irlhhEFgnuugLaTx/vGRAbxEZci4ghQ1KY=;
        b=Oe6T4ebSmhUol5AvWW02yJpmLJuk8jHv1rCPxuqrxbriDLxAM0ilhsVjjBKUAC9ujQ
         l6ViIYB8G5Kf8LgaTqxzcXhxhj0sI/Ter1o3hFQZSqo7ljvxi5OEXyK2wlHGXtnUucAa
         YZSasZzMLhATZFxKvnvIToq9UeENeUyHJonkgU7swE2actvF3Kfdu2+3lovTopYRSMqO
         k0cEq5RyjrFP570YDmK6G8d9meww4+GRPnPBxhFPhl+wU4gWymImuYPvMdjnukkbHr4P
         ELOiXTFOtHxKP2hfXMHM2aTzQBZ3pOQFPL0xQzS+V7/zmfp6MBbspzY3N0QTcftLgk50
         x1yQ==
X-Forwarded-Encrypted: i=1; AJvYcCXh8LAQa+9zJoRS/hl9uszXRjO3mexzO2abRir9It98Sj6uQoyZ3s0kSUBOgCE8kHIqK2+zdp4izLLi@vger.kernel.org
X-Gm-Message-State: AOJu0YwBOf0Vu45JuuMs+MoqZqZi1dJxLw4rAqgdxPNCpyUQuBhnaty7
	uyBrZVfB2vmerW7t7ZRgcW9ptfUw3fc4VbCtYs+4oX+UtzuHsQO6Sl0w467NkFZFKELLYOo7s4g
	kpDQHwn/FKXYDL7Wgl6z+trerbYS9N4gMA+4cueTalCQBQL8Tvw3mOM+7WmQpUWkh
X-Gm-Gg: AY/fxX4ATeDp1KhE+FjFoTn7FXdPVPKwQ4noYE6H6pQ4VZQ0/kg+yezpcVnPZGnSlNr
	0n5Fj8CYpkVSfWaX9TUn5p2FsnjzkAp/fSuCwdppk7Sb7fT1vY9lAxwV3zoTEdBGjhgAroW6DC+
	fd001axkutq+Mbc5h6fypwgKcpnaTmfBlECETgIGi8V4n/JheqXftvwGpUVJcNW6twVZuyWf0Wm
	M8ZU3SA7SqU0PWThuy4LOZMSsH+f4XH0mnLdpCDjtTGK9wN75dpwcm8XLFPzadxS5Q7x4PTyWZI
	NxyEWWBP6d4tAJs4aPCrGs5d0fbQ63vku3wnmC6euLLHG5RQx1g9d2bCKDCXXXvA+a68QAdKzYZ
	UYKs1C7VO89kvA5YoLqKXHJkLahtIY/PHATR4pnfFK5CAD8TbcGFT8hjj0M/YNAWGklzr+mgkdd
	BNFxEUaAOfL2turajcDbGkb3AkXQeXa0AbZ/jpvfo=
X-Received: by 2002:a17:902:cf06:b0:2a0:d662:7285 with SMTP id d9443c01a7336-2a3ee33e1aamr198417975ad.0.1768296053494;
        Tue, 13 Jan 2026 01:20:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDPnzoPrXStTklTA4MBEI+FzFY0SJXLlzUhccTwmg/os1uz2t73VIY4+5ANrpyV7q11REnsA==
X-Received: by 2002:a17:902:cf06:b0:2a0:d662:7285 with SMTP id d9443c01a7336-2a3ee33e1aamr198417725ad.0.1768296052995;
        Tue, 13 Jan 2026 01:20:52 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc794asm196314945ad.70.2026.01.13.01.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:20:52 -0800 (PST)
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
Subject: [PATCH v10 6/6] arm64: dts: qcom: ipq9574: add nodes to bring up q6
Date: Tue, 13 Jan 2026 14:50:21 +0530
Message-Id: <20260113092021.1887980-7-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: CKFCLiKZg-0DDzdG1P2L_QvDtYmpT8lS
X-Authority-Analysis: v=2.4 cv=SK1PlevH c=1 sm=1 tr=0 ts=69660e76 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=UqCG9HQmAAAA:8 a=nG0a804IO7H6KQc07wUA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: CKFCLiKZg-0DDzdG1P2L_QvDtYmpT8lS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3OCBTYWx0ZWRfX+MkC9WeCjYx+
 dsupPowCl0yufqNXkP5tJQvK/4pQ0/y1l20qY7ctFUcAL/x1xJf3O1JGeLcrwOQk70RIq0JnRxF
 z/FXY19OO15/6mYbDqqbokzDFhFKhlHEVnXjlY4qwxRI/irC+ye5chKX44S+GBQdoL7whhKKHCf
 mkn7sZLXs5rXiaNu6Yo24fT7pQzH8nUU1A7tondI+7dRGpcUGJSYFVaBU+mqpB5jA78tUYuX7Sl
 6J187op8Al51dY7Ym/NXpDMMBhIYtM1A56z/igZsWsKiMQCRgpq1OOvZxisGWeCzJfD4FlGTkd7
 eZh3FLFc0BuSiw4fRH6XEhSFj8p9ilWz+jAfVZyL8TQw9oiwYrN0/lB94X97HgWCP6+TlYJ8oPd
 fJedVZkRLRvMxKiSyloyDArgpwntRAqCNbfBicmiT8G2qj8tCxnw/6fUAnrYwDZD/X74fNZcDvD
 bXXw+bxPR+Wh6edYfuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130078

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


