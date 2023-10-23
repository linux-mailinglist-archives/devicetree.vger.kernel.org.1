Return-Path: <devicetree+bounces-10844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F12807D2E06
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82561280F7E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19341134A6;
	Mon, 23 Oct 2023 09:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="e7H46TRX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D37E12B88
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:21:43 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B448810D3;
	Mon, 23 Oct 2023 02:21:40 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39N8Mr5o029770;
	Mon, 23 Oct 2023 09:21:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=4+tRrjJHW/bnHCSG3tKfhqziZi7X03Kxepqnry+DFSc=;
 b=e7H46TRXMqYfDXMEDU99U/Hs/0InS3KfetgoRNVQ73E2F5WiwgDfwBF/PX0Hk0I3AiT8
 lqAHp/oFVej6Pqmf3hRojCyo0Q/AICK87vphBShjdKXp9AKGAatYaaazFKDgt+HEqdSY
 D0UZbWomDm+H5V5l7Nw7fLpYien3UQnmck7pjC5EK7wgC7jke9g92kbPS0ZhmdenLr4b
 NyiOsOQala9wpSHakQG0KeypnIhGfFdxPX+jdtrr8mnfd+WKvOOk3CWsZZuuS6HeInlb
 edxJGNbJvcKQeUSjwapycjk9I7iqfrcYI0YjGmps17bLVBDiW39/fKxCuEUv+ytFzfbJ Lw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tv6873krx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 09:21:37 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39N9LZYg018595
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Oct 2023 09:21:36 GMT
Received: from zhenhuah-gv.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 23 Oct 2023 02:21:30 -0700
From: Zhenhua Huang <quic_zhenhuah@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_tingweiz@quicinc.com>, Zhenhua Huang <quic_zhenhuah@quicinc.com>
Subject: [PATCH v1 5/5] arm64: dts: qcom: sm8250: Add memory dump node
Date: Mon, 23 Oct 2023 17:20:57 +0800
Message-ID: <1698052857-6918-6-git-send-email-quic_zhenhuah@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
References: <1698052857-6918-1-git-send-email-quic_zhenhuah@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: KE3nraj1n_KaN-1mmnFlERsTbk5orANf
X-Proofpoint-ORIG-GUID: KE3nraj1n_KaN-1mmnFlERsTbk5orANf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-23_06,2023-10-19_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 suspectscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 mlxlogscore=744 impostorscore=0
 spamscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310230080

Add device node for memory dump on sm8250. Usage of memory dump
is to populate configuration in reserved memory, allowing
firmware to do the dump accordingly.

Signed-off-by: Zhenhua Huang <quic_zhenhuah@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index a4e58ad..d379524 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -674,6 +674,11 @@
 		reg = <0x0 0x80000000 0x0 0x0>;
 	};
 
+	mem-dump {
+		compatible = "qcom,mem-dump";
+		memory-region = <&dump_mem>;
+	};
+
 	pmu {
 		compatible = "arm,armv8-pmuv3";
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
@@ -851,6 +856,13 @@
 			reg = <0x0 0x8bf00000 0x0 0x4600000>;
 			no-map;
 		};
+
+		dump_mem: mem-dump-region {
+			compatible = "shared-dma-pool";
+			size = <0 0x2800000>;
+			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
+			reusable;
+		};
 	};
 
 	smem {
@@ -5424,6 +5436,25 @@
 			};
 		};
 
+		sram@146bf000 {
+			compatible = "qcom,sm8250-imem", "syscon", "simple-mfd";
+			reg = <0 0x146bf000 0 0x1000>;
+			ranges = <0 0 0x146bf000 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			mem-dump-table@10 {
+			    compatible = "qcom,qcom-imem-mem-dump-table";
+			    reg = <0x10 0x8>;
+			};
+
+			mem-dump-table-size@724 {
+				compatible = "qcom,qcom-imem-mem-dump-table-size";
+				reg = <0x724 0x8>;
+			};
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,sm8250-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0 0x15000000 0 0x100000>;
-- 
2.7.4


