Return-Path: <devicetree+bounces-156020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D2BA58EF6
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 10:06:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 927FD1889BE1
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 09:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8FB224B1F;
	Mon, 10 Mar 2025 09:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="n0w1D13D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9632248A8;
	Mon, 10 Mar 2025 09:05:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741597522; cv=none; b=FC8PB5odgo50iWuPrpkLS91188850nQKTIAD94rX3UnazLmhEIovaWHSWBDEvZQQo9Pd9cuZYBN5kRmGBoM8nsLTNxosC7viT2R9qIFxpUqnBWyTVCMK/Ap/gHx3i+lRktxOX1nLuMnAxvUizYkR3eFt11iWamF4C9AM8FGyBss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741597522; c=relaxed/simple;
	bh=JjrXbq+vm1WvUzYT8mCu64siHk15/RmxJXFVo47BCR8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HD3+v5XUt/LeScijTOiRMeQh3yxZGtO1Af1MlmrKay95f1wN0YE+vgI4OR7BnfwBBs53mbr/vOX5noCFZFillVipTfdLWt+Bn1tHGHqoNhiclghqcicFiD2LYAO1yEb4Y5D1onwQQqoB1/IcdPvILJP9O/jdLmw2vdUbjTbA8gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=n0w1D13D; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 529NEB54018337;
	Mon, 10 Mar 2025 09:04:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	epICJwpsniGzAa+mydO1lj6USFz6nDK8cnXneWo8u4Q=; b=n0w1D13DPxLLZn+h
	AMfkhUwRqqUMw5FnMKKAP6YuKLSGzWsHBW9ZgZL5iuEDhVjPejDpHQf3C88L5Fy8
	L+/oiofwMXLrem0vfuQ9ltbkvi5sXr66u55zf53w0aiHXoVvSWXCYA7fD3ARifci
	iG2wkWey9C89jznxx0GTS87zgy7bfxzkRTGphePoueRdagxbnshjmEcNxBQMosaK
	f7UxM9gQ2jBE/pD3MAlRiZYQuPNCjH5by7rZ54ChuKk26lDWGhUu/W1rfwIUoaZ3
	o017kJPSX/Fhs6PXLhFeucoKI55FekqEQoXa7IKOohlCOrqj8ngw5MWiHbXJJ3mA
	TPOFrA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0pv6pp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 09:04:45 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52A94isY005832
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 Mar 2025 09:04:44 GMT
Received: from jiegan-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 10 Mar 2025 02:04:38 -0700
From: Jie Gan <quic_jiegan@quicinc.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
	<mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        "Alexander
 Shishkin" <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
CC: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao
	<quic_jinlmao@quicinc.com>, <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
Subject: [PATCH v1 2/4] dt-bindings: arm: Add an interrupt property for Coresight CTCU
Date: Mon, 10 Mar 2025 17:04:05 +0800
Message-ID: <20250310090407.2069489-3-quic_jiegan@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310090407.2069489-1-quic_jiegan@quicinc.com>
References: <20250310090407.2069489-1-quic_jiegan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: n_-0Z9s_sPyBZv-i7ad1wHCUdDU-nw3r
X-Authority-Analysis: v=2.4 cv=KK2gDEFo c=1 sm=1 tr=0 ts=67ceab2d cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=gSyxy6DGYGa4b6s9XCEA:9 a=adZxlrsHB6HFTpVwR5mc:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: n_-0Z9s_sPyBZv-i7ad1wHCUdDU-nw3r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-10_03,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503100070

Add an interrupt property to CTCU device. The interrupt will be triggered
when the data size in the ETR buffer exceeds the threshlod of the
BYTECNTRVAL register. Programming a threshold in the BYTECNTRVAL register
of CTCU device will enable the interrupt.

Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
---
 .../bindings/arm/qcom,coresight-ctcu.yaml       | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index 843b52eaf872..ea05ad8f3dd3 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -39,6 +39,16 @@ properties:
     items:
       - const: apb
 
+  interrupts:
+    items:
+      - description: Byte cntr interrupt for etr0
+      - description: Byte cntr interrupt for etr1
+
+  interrupt-names:
+    items:
+      - const: etr0
+      - const: etr1
+
   in-ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -56,6 +66,8 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
     ctcu@1001000 {
         compatible = "qcom,sa8775p-ctcu";
         reg = <0x1001000 0x1000>;
@@ -63,6 +75,11 @@ examples:
         clocks = <&aoss_qmp>;
         clock-names = "apb";
 
+        interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+                     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+        interrupt-names = "etr0",
+                          "etr1";
+
         in-ports {
             #address-cells = <1>;
             #size-cells = <0>;
-- 
2.34.1


