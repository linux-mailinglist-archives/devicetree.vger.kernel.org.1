Return-Path: <devicetree+bounces-162913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F3016A7A26C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 14:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D15311893631
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 12:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9074E24C09E;
	Thu,  3 Apr 2025 12:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LLaGGJFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39D318DB10
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 12:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743681825; cv=none; b=dZkEEcnz442liO1ZVrTL/StKbyB8KyOqH0lEW04TDUzYiT79IYa7+VuPpRL+be/QXC5xUFOvjkRh8nvJiO+a4+Z0wIns7/GIRD9PzMjZ7qatXIf9nwCQADK/weB4YqoA7r1BQTv40RD4U8EwdhWk5aeFdulOqHvTiRVWAK3c/wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743681825; c=relaxed/simple;
	bh=H110QWxSgK6PO/93w8lyRv4ogAoDdbbt1O6zbiHur20=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=uhy57PYK/zFqVZTqqgzHsZF9rFmsoAmHAGA/AI9D5oeyYeUiWe2go9bdFP1LjKiZZeZyEgSb7AHzHGtOBWhEN4XbL4H5517nnd/rO6lv8kh7rSoYGRD7bEvIN5yFnUkCU0Os2cAZvPS02ioE62LhmRdeA1jcGaDmHxt3aTPr2Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LLaGGJFE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339s1La013669
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 12:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LT6MmECDseE
	eCLqSX4CgtHLhHI4UbyCMogOBDkDpRl8=; b=LLaGGJFEfFJg4syvfPGwu7/lc1S
	jv3oAPn5byN28YFacM7Edt/eHOvnjd5mNzIk4Yq9PLWVSlat1oZmTaIBboWbPBdi
	vFGTfFkhwEB98clzCMG726DnDU381h22sVeaUy16cZAzMUAY/Qvg7pwCMeDZGthQ
	rwh1WhVL2hvshjRG9C/zbSa8OU8iZMtRvn04Kj1s3915jiXhTIMJP4LrwI763Dvm
	kMlKVptS6n472nMKoti9UrgnJ/HvWke5E9jcE9Xv6kZc0I4I4WfBJtDnEQ53SxF3
	2MI1UlK3U3ladH87M2l8kK9fkhA2GbMr6RlS+vOd8Sz0vPCoMMRuJUoiLxg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45spnp0mtv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 12:03:42 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3032f4ea8cfso913127a91.3
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 05:03:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743681821; x=1744286621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LT6MmECDseEeCLqSX4CgtHLhHI4UbyCMogOBDkDpRl8=;
        b=vl3wquKF+LjWT0WA5l+0CIHtRVvVWTRmklQ3NZo4hi3iKQTqYIqbIDoVXGqzJZqRGY
         9Ogw3hO87XPHcabf/g/AHnhQ/2ql0Ah26g3MQ07GwN9M0sgbO8LSQnWuOpMPTxJZvAZN
         C10ZMXaKwIy9k3F7MBU7I/9Sba2UMUZIcxrB7d0AF7joa0kt4gfUq4UXycVrP/BzdsHZ
         +lG69xpMiFi1miMHDeB2PvJIFO5ZShkrsWvc3ZCSt3D74j74CbSrlMPf5kXdoQeL5Hy3
         Q+gWPgsCk1Im4b+loztyYhJ33VWfYHdhLZukWv+WoUr4SlQQobFGjsh5SKrjPNqrgtZ5
         WQHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVigQ1B8Gmrf0xj8dAtthFED936WOINv/q4NTZOuIGafmATRX7LFUGfeT0wm3oKT+wPty+FZ9htIG2v@vger.kernel.org
X-Gm-Message-State: AOJu0YwALX5+cuswbaJpaQEX7iEUMFbK6CvJY3iQXTKNMVhZT6yaRh7u
	5fJ4TQQ7yN37sgwhUi2t54ou2McPjJ3h1EC+GFhHiZb8jQw/qcpUX1sGsNYy4j9Cp90UxL7YCzO
	TNKUm9PELCX0bB3NZLsdxfOUpxnWvawaxbwjAXKmM8e5KCgOkeoy7WAO6UbD9
X-Gm-Gg: ASbGncsg9AWCmu74hqPisgPKJpFHi7wBYfY5fuPqLOSurEBCDakMo2ng8bpjWBmHcoJ
	sX+IDrOrvtdRf9ixh+1VL7QTd7ppTNwfszsbJz3e9dsb0rU0e5Gy0umTpoPdhOg0tK/W0sPr2rj
	qj7r1+m8Trbvz8SD3ZryFyyUm2ag7O3nPnLBtW3DZx7uaTPc4SY37/24Bw5gVLWkk0sRZ5+VFhb
	7iqs+1DS6Q8mbh0vCg3Pzg4q1C7sRYJSl/qVH8PYzgiwPtK6TExd+xAq4t7lazh+/FakPgIzwCb
	znPEfG8/Ey9Uc1xTC2choOFuWVbDt3u5SWAURyREVJJ+FnIc3V7thpig2oAQybgTpgdKy1CBHYb
	HMHem61g7fJ+4tlbcGOlccozJMLt+GR/4OgamW1k=
X-Received: by 2002:a17:90b:3a0e:b0:305:5f25:fd30 with SMTP id 98e67ed59e1d1-3057cb015b3mr3333431a91.4.1743681821223;
        Thu, 03 Apr 2025 05:03:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFksQBPR2gd7wbFvkKP4SZOdC0ewOjgF7cBTjN1/R6SbhQpjWwlwfvWHd4zFaNbOakFntw1XQ==
X-Received: by 2002:a17:90b:3a0e:b0:305:5f25:fd30 with SMTP id 98e67ed59e1d1-3057cb015b3mr3333382a91.4.1743681820738;
        Thu, 03 Apr 2025 05:03:40 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-305827d710csm1285799a91.10.2025.04.03.05.03.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 05:03:40 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V4 8/8] arm64: dts: qcom: ipq9574: add nodes to bring up q6
Date: Thu,  3 Apr 2025 17:33:04 +0530
Message-Id: <20250403120304.2345677-9-gokul.sriram.p@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: AEv-3lvmToH_XDFO1h5Rc5bf7kUyMHam
X-Authority-Analysis: v=2.4 cv=N/gpF39B c=1 sm=1 tr=0 ts=67ee791e cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=nG0a804IO7H6KQc07wUA:9 a=RVmHIydaz68A:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: AEv-3lvmToH_XDFO1h5Rc5bf7kUyMHam
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_05,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 adultscore=0 mlxscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 spamscore=0 phishscore=0 suspectscore=0 mlxlogscore=744
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030050

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

Enable nodes required for q6 remoteproc bring up.

Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 61 ++++++++++++++++++++++++++-
 1 file changed, 60 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index db69bff41afa..11a1849ec50f 100644
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
@@ -226,6 +226,11 @@ smem@4aa00000 {
 			hwlocks = <&tcsr_mutex 3>;
 			no-map;
 		};
+
+		q6_region: wcss@4ab00000 {
+			reg = <0x0 0x4ab00000 0x0 0x2b00000>;
+			no-map;
+		};
 	};
 
 	soc: soc@0 {
@@ -1473,6 +1478,36 @@ top_glue-critical {
 				};
 			};
 		};
+
+		q6v5_wcss: remoteproc@cd00000 {
+			compatible = "qcom,ipq9574-wcss-sec-pil";
+			reg = <0x0cd00000 0x4040>;
+			firmware-name = "ath11k/IPQ9574/hw1.0/q6_fw.mbn",
+					"ath11k/IPQ9574/hw1.0/qdsp6sw_dtb.mbn";
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
 	};
 
 	timer {
@@ -1482,4 +1517,28 @@ timer {
 			     <GIC_PPI 4 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
 			     <GIC_PPI 1 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
 	};
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
+	};
 };
-- 
2.34.1


