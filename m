Return-Path: <devicetree+bounces-162911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 505E2A7A271
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 14:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DCD81756D3
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 12:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F9124E01E;
	Thu,  3 Apr 2025 12:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cA05Tp6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924AF24E002
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 12:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743681817; cv=none; b=RGRBGLWwHhPyHUUyJX+Cbk1kCcmCMjkoBmxr20ZfPzQehZBAMtdr1mPVSzwyjuiLVoWxtno2S4GVF3kiYf+sF8LVoARWLWUUh4iWRh1QuMZDzvy8ELMKnjaBm6Kn3mWy5reG75Q1ZcYAI3hkHX+clJC7McR9cqLmCIcG9eOv0kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743681817; c=relaxed/simple;
	bh=GL7EeUsU4WMIp5QLj1a+MV//M+kg+7cZMA0v8yEg1ts=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HibMtIDrwbQB0RFnHFOrGu46wMd7RQNr4Nz3FToNV6UqsNeSYdhJ2TXfpWfJ0RdfOxT8ia0cNp/rCkoGoF8uXTiEpnaS4S9w8XcBcwaZl/DJeafwUwj0Maca5mkzpvQnpKKb2F//R7KrOH3tkGBe/HZkEY7S44d73ZCvK7ouydM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cA05Tp6B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339rw6x009782
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 12:03:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5a6VfY7OYvQ
	0mCUlB+VfDZK73f4CkKDPhQjMlt/Zo7k=; b=cA05Tp6B4xqQ9adXi1MlN6f3A1U
	X2GjzUxayyCMGkKsANdMw94D76MPfUPrvCNX1U+eCBJJndHSBGxtwtznn1Ja1IaF
	GJBbFeBFcXRxRvKlHuHZLELDgUNJD11x/yAO0sKkqRPpO7+WPJZJm0WOCMA6HeJT
	TF3VQgNMC2eB/hFz19Rq07LZ+fpSUhYW/G9BYB843j43F6/g6B/qcfS3PNJH0mSC
	7Xh9ak5lnbD5ugmwO+XPY2+KVjxvIlgzBtakdeSaTlF1qqWLkJd0hUm5jqqX+q+g
	GWAjIATAmjEmrnAyPiru4hUACED9nJnqQWkr/n4Dr/6EjIlCRxIYmAy1s0w==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45se4g1s2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:03:34 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-af972dd0cd6so628851a12.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 05:03:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743681814; x=1744286614;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5a6VfY7OYvQ0mCUlB+VfDZK73f4CkKDPhQjMlt/Zo7k=;
        b=kjeBBtKyNNlqPOooyBWDbHZoHoloq4E6DB4RLGy18jxAfNmFzun4CSgTtgQc6wo+ml
         sSmcr1EczMUWXa79oCmLrzJuiL1dsKr0hwgvO1MI0Buwo6KDUQprjrP8N3x4g7Z6zlqO
         kHt0jnAyuVfzwmBHF3F1EEOolEmk73c5n7YEtVm8M90C+vQOzgofDPbSdIOTnMStINPV
         5YN2XZdCq32GQkK+eECkyCX9DXxj7vg5rP9UffHQfKPiP7yk5x7X7fScf/BAfishBhK/
         5XLrf4pcPVDibu3+s8zNIolw0cG0crguq+hpoeuv63Rr5dP1Go/9xHJ8uzR5ZeZE2FKX
         ElvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTshGW4DNxg8AUtvijSa2FwrobWcZH2kpg5nlU/x9FGE5KT0GOZXOVg5j4UoyPPZ2tqGIxAPzSpJ0Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzQJl9Mpsj4eKynrGMsFT7B6c2haMIZwZMU+AYO0Ecc1fWs/cPw
	6uA+XGiOMGvt+DE2OXlNts8VqMXI7D/Qf/TYDAX9iV1gButzGxexhVJmvFNt9DM0uZpfPXPXSlY
	ifwO2t3JfLmhb51iEW08AY+AjgsMj2vcsPdsmwASPIfaoAwgExleTlyzWOwe6
X-Gm-Gg: ASbGncv6hg132z+453UMtWj9CDKol8BWA9rEr3GytpPSTcIGqoLK2ulM+65dEymbYu0
	otrvsLJV8rYDAZ2kJqZvWNT0WqwXJeSpZqjguPtjh2GhOQ+dn/OqU9DorJD0qXFif08fAODBqA3
	a6EBVPlLy25p3zSjwkpmHAfqnjTEcLD1TM4IKtYe1VsLQhX1aEdYqAhNehX1cwD8WxIfW9j/Tur
	uO5Z/nP6CFczn7Lsesbs2zhlnqkLEIFcncEuGKfNhO0vyhx32amIGvwAZP1sECdGf74KtDA0iB0
	pNPEVrExX1VvpqRzobqTZ1BjsNbQbUP/iD08gxGOm4eYi3ojUaDWRSUiLUfXy3LGspqPQWgFJ5E
	sZYp2BACvsgUbyzpNGx4bbAO88McbZEFFuaLLO6g=
X-Received: by 2002:a17:902:d2cd:b0:224:1eab:97b5 with SMTP id d9443c01a7336-2292f94944emr287081705ad.1.1743681813719;
        Thu, 03 Apr 2025 05:03:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1dPGo60kLxifjgzaEpfslBOsmeHnjTVzT/vyKVQ5TIUBC9KhFNxlbD+IuHudFmQmUETqVhQ==
X-Received: by 2002:a17:902:d2cd:b0:224:1eab:97b5 with SMTP id d9443c01a7336-2292f94944emr287081265ad.1.1743681813305;
        Thu, 03 Apr 2025 05:03:33 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-305827d710csm1285799a91.10.2025.04.03.05.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 05:03:33 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V4 6/8] arm64: dts: qcom: ipq5332: add nodes to bringup q6
Date: Thu,  3 Apr 2025 17:33:02 +0530
Message-Id: <20250403120304.2345677-7-gokul.sriram.p@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
References: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: PJDXJLB0feh_4e1A4Exum6CztmjXf3fl
X-Authority-Analysis: v=2.4 cv=a8Iw9VSF c=1 sm=1 tr=0 ts=67ee7916 cx=c_pps a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=7PM57pxieELrpG8NSiQA:9 a=RVmHIydaz68A:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PJDXJLB0feh_4e1A4Exum6CztmjXf3fl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_05,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 adultscore=0 phishscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 mlxlogscore=909 malwarescore=0 spamscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030050

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Enable nodes required for q6 remoteproc bring up.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq5332.dtsi | 71 ++++++++++++++++++++++++++-
 1 file changed, 70 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5332.dtsi b/arch/arm64/boot/dts/qcom/ipq5332.dtsi
index 69dda757925d..af0de072abd2 100644
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
@@ -146,6 +146,16 @@ smem@4a800000 {
 
 			hwlocks = <&tcsr_mutex 3>;
 		};
+
+		q6_region: wcss@4a900000 {
+			reg = <0x0 0x4a900000 0x0 0x2b00000>;
+			no-map;
+		};
+
+		q6_dtb_region: wcss-dtb@4d400000 {
+			reg = <0x0 0x4d400000 0x0 0x2000>;
+			no-map;
+		};
 	};
 
 	soc@0 {
@@ -545,6 +555,41 @@ frame@b128000 {
 				status = "disabled";
 			};
 		};
+
+		q6v5_wcss: remoteproc@d100000 {
+			compatible = "qcom,ipq5332-wcss-sec-pil";
+			reg = <0x0d100000 0x4040>;
+			firmware-name = "ath12k/IPQ5332/hw1.0/q6_fw0.mbn",
+					"ath12k/IPQ5332/hw1.0/qdsp6sw_dtb.mbn";
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
+			memory-region = <&q6_region>, <&q6_dtb_region>;
+			qcom,q6-dtb-info = <&tcsr 0x1f004 0x1f008 0x1f00c>;
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
@@ -623,4 +668,28 @@ timer {
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


