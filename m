Return-Path: <devicetree+bounces-168045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D06A913A6
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:13:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D16E1906FF8
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 06:13:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E06371F4C94;
	Thu, 17 Apr 2025 06:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cy4Ijhr/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68EFC1F4720
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744870388; cv=none; b=k8VHKTmdd6r5rrQDb9EddZXOdoC/fQYlWzzPRmw4/wk+GlrNV06rzp5IjkosphZZh1GQwJ6zAIAHYP4JhQy3SHAEVXKlB0Y6QgGHpeL/Jv3ly9dkwtMMvyuIUniuelJ2sXaLEtDj3fkhF9d401H3X33uCFrSgBxhKkjokuH8HN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744870388; c=relaxed/simple;
	bh=VJTCRmqHS2y68xRGW1O/MldinJE1GSqTZtj3EQQK1NI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uGl/QoYrfZsnmkhWkxbF5Cesq4b30G/CbVwOXOfYzv3BGar6iVF8h//fBZOHp2RdM8VkukOqa3BOnGdWnYdBSGhFnzDo3jJDXaR4rOok2jg02cWKKflpQlncZO13M9IggEvCs9YJjiGjdwOOZ/kmAsnDNR1W4Dy4l7jKHCzr9RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cy4Ijhr/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53H5l7S7003029
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:13:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P1G1cZ3qDj/
	hVZX+G2fEgAbvUNIcYOCkJgxqNtnO6G0=; b=Cy4Ijhr/3a67450qMj3fkmV8UX2
	dfBYg7CLBvIWA8ESo0oG7gucHDOssgA42ufQ52IiOVvfiGyJXTu+T/3uj92M/73W
	4L83lQxcNy5LnuOXnCN+sIZpymAdAP1K3CgYEZ3f7zmKCBNlQAwDYErDrpFIL73Z
	HdPfInDhXhdFp1g9fSEoKEkbQVy/wbJAMDQhspDzWLE9Goqou5iqvUh2yaUZ0Qhh
	GdQiBMd//7TihwYfVXPfy+XGJbv3474bNR/aSLk6XDwS4Z33I3pzLowTMUW6XdtF
	OIoqfnc+4n3GmYVisZzBvY7lG8EdIIKckZeI2yLZR+XTTBWkBc+4FyNN6GA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxk5rb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:13:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2242f3fd213so4978745ad.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:13:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744870385; x=1745475185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P1G1cZ3qDj/hVZX+G2fEgAbvUNIcYOCkJgxqNtnO6G0=;
        b=D/58mcv2WpGN3eqapOMqIirVss+yqKjEN12QJ5Z5XK8DX+2Ca9gmv47b0wWAIxZCIp
         A7wJ+qKf+nhvy8Gl616pmS3ef+Xu7enUXJTjyMUbkhjL38uIWyPzc2TkJRdbQG5WNvhe
         QBMtOCpWgcirLEFTVBpg1BAhGDG/XUT4UeUvLSd0D8/sIMRAOOCn3Qim2vkdR5t9k7lO
         x2x6CfYc2RC1JVYDPVohDMRNlNsvYIWN45LiLdykfqjheT2pPbNhRomp05ZlDayrR2HK
         8ikgCJi2AmDcQHEYNggCRGAgRyvbX0GtRFx0/qi6spLG5HgHYEDfyc86du6x8nFMTM7K
         frxw==
X-Forwarded-Encrypted: i=1; AJvYcCVgHbENhKVixQTIFbfNXo7gYc0UL3DZe7hB7uPnyUxOK/P9Utyqur7LxKdVoT3c1d3rRJ/KS5NDUe+v@vger.kernel.org
X-Gm-Message-State: AOJu0YynaqzlG3ByznArxw7klJ9mh6UC7IcKXfnmOAR7zEgOpUp/I2ts
	2yJ7uKuaItYSBabufAZjIqek7me7mf2z2Yb57c6r4XuxVOLx30bi4Lt4bo3SkrziHKnNiDHxGuw
	EG5jSyr+PfuyQYzyvcSqUBr0mky8kIrQpyPconQAc8URJ6PFvHf9HJ2vZ57mi
X-Gm-Gg: ASbGnctRO5ONHcE2EEZdji0IbxoFstKD1KdVLhT6x8qcZl8vu/c6rauSSC5kI0Jyt2F
	kHZ/RtmIzea41V6NIrfjruSjQl2TONbDiDrZleYW9dvYjJNNjf50qbkwP8LpY5zZQJU7bOmUehq
	T9x8OBt8B5g26haRklREpCCDAWb/4G8n1R9angC69JZNu7/JamQC+9pBlHLWNAyO73h93Yl/siO
	ozDr6qR4JC+rQdU8/2cKAtleWtGtsNDKa3KHbGljwbss2KRlZOKRAkVIp8KC9L1fC7ZNJbW2EH1
	8NiIePSQtntOYMs3Z0uXj+IChZXimNW56f74/wRNb6frkKN/rzzaonxSs6+H58tnEjzk8tGfJAH
	PGwFtXMFh9kVKRE4yP1ISxvS7BjfeqTjvO9g=
X-Received: by 2002:a17:902:ce0b:b0:223:2cae:4a96 with SMTP id d9443c01a7336-22c359826d4mr76876185ad.42.1744870385504;
        Wed, 16 Apr 2025 23:13:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHunAiIYpp1iDTkhc7ODD4CiyRp9b3AamJrs7dwcFml+5AjYhon9cyZQ6UXAu6dgKQA2GL/g==
X-Received: by 2002:a17:902:ce0b:b0:223:2cae:4a96 with SMTP id d9443c01a7336-22c359826d4mr76875895ad.42.1744870385122;
        Wed, 16 Apr 2025 23:13:05 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm25159725ad.191.2025.04.16.23.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 23:13:04 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V5 4/6] arm64: dts: qcom: ipq5332: add nodes to bringup q6
Date: Thu, 17 Apr 2025 11:42:43 +0530
Message-Id: <20250417061245.497803-5-gokul.sriram.p@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=68009bf2 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=wvtPTOKNElVcqRjrzWMA:9 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: uhxGjNV9ossaXQzSIpu9cYOQiy8QNq7b
X-Proofpoint-ORIG-GUID: uhxGjNV9ossaXQzSIpu9cYOQiy8QNq7b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_01,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=893 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170046

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Enable nodes required for q6 remoteproc bring up.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
---
changes since v3:
        - added necessary padding for 8digt hex address in dts 
        - fixed firmware-name to use .mbn format

 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 64 ++++++++++++++++++++++++++-
 1 file changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 69dda757925d..fc120fd8b274 100644
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
@@ -146,6 +146,11 @@ smem@4a800000 {
 
 			hwlocks = <&tcsr_mutex 3>;
 		};
+
+		q6_region: wcss@4a900000 {
+			reg = <0x0 0x4a900000 0x0 0x2b00000>;
+			no-map;
+		};
 	};
 
 	soc@0 {
@@ -545,6 +550,39 @@ frame@b128000 {
 				status = "disabled";
 			};
 		};
+
+		q6v5_wcss: remoteproc@d100000 {
+			compatible = "qcom,ipq5332-wcss-sec-pil";
+			reg = <0x0d100000 0x4040>;
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
 	};
 
 	thermal-zones {
@@ -623,4 +661,28 @@ timer {
 			     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 	};
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
+	};
 };
-- 
2.34.1


