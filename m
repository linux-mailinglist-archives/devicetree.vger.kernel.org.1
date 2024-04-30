Return-Path: <devicetree+bounces-63810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B4B8B6AA1
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 08:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E6692825D4
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 06:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB2F1B95B;
	Tue, 30 Apr 2024 06:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YcPLycht"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26318383A9;
	Tue, 30 Apr 2024 06:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714459370; cv=none; b=mHElPYQm9WsLL8P0FSrPL1WIkDI+i3cg87pqiOepah01bm57VNFCIDxti0JkeonC6mduAXM6sjKF8XjYd+q8DqvndCLM0x9IZUBtx3BhlES5Sl1KEyBiQSxRq6RIwucJOYwSTNm/F7cU1p0eh9I5PBRWu+ziqDqHWVyuwT5F+l4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714459370; c=relaxed/simple;
	bh=XybQroQeN0eE0ix6Fobx9yRCRTYv0AlPiSYjTSL+kRQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UZojAkpKU8JtGu7JnSqPtsal1J4QaFM7piD0AjZCjvClUxjYizrJNFDFnj9A+3NnCcthKrH0K8eXaAefozSmcG13pE+8rVMBBgl4ZtBRLl4wCALiPhwY6lTzRy5SQt8QZnclyvp8Xc+vmq1vnON5DcMB77NfQkNcP887pe0x6vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=YcPLycht; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43U0hhdb007036;
	Tue, 30 Apr 2024 06:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	qcppdkim1; bh=j3aKCbUUtIHqgfAK33ULbLltXkIe6zWBqBxxLnT1NAo=; b=Yc
	PLychtxe3Lnij4Lzw6+uSX8d1i4Sc0kTJp/FUtYhoPwz2Fq7krFtxlLUjrQx17Vv
	g+qezqZ+H6vs1qkbIALZ6QsB7DqVSn6jhDHPaGMMFWacfBrvZIw+KZboglvmUYnY
	e+/IBCE37l7ZjDOgbrifOSHVLbb7hBpEskAZUJFXo2rKEtEGFyyRwP5fu7m5liHG
	5JWFp+ZHZNeBBjWl5eES+jhBAhM8yROnmf85xMG7Ss8yZZij6BQKl7GwAAaVthNb
	WHNfmXBX6NuLRiUdwWh4GvDZu9WyFkjX1ZO4y/q/nxfWOGJAtJD/cKQOra1WVXyl
	0zwlLQrhoTIeyM4kQa3w==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3xtbv8c81h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Apr 2024 06:42:45 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 43U6gipn023815
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 30 Apr 2024 06:42:44 GMT
Received: from hu-varada-blr.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 29 Apr 2024 23:42:38 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <andersson@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <konrad.dybcio@linaro.org>, <djakov@kernel.org>,
        <dmitry.baryshkov@linaro.org>, <quic_varada@quicinc.com>,
        <quic_anusha@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-pm@vger.kernel.org>,
        <bryan.odonoghue@linaro.org>
CC: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v11 2/6] dt-bindings: interconnect: Add Qualcomm IPQ9574 support
Date: Tue, 30 Apr 2024 12:12:10 +0530
Message-ID: <20240430064214.2030013-3-quic_varada@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240430064214.2030013-1-quic_varada@quicinc.com>
References: <20240430064214.2030013-1-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: OYBstOhUj2-8jLJlj1Rr0kQQ8eYRue9r
X-Proofpoint-GUID: OYBstOhUj2-8jLJlj1Rr0kQQ8eYRue9r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1011,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-04-30_03,2024-04-29_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 mlxscore=0 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2404010003 definitions=main-2404300047

Add interconnect-cells to clock provider so that it can be
used as icc provider.

Add master/slave ids for Qualcomm IPQ9574 Network-On-Chip
interfaces. This will be used by the gcc-ipq9574 driver
that will for providing interconnect services using the
icc-clk framework.

Acked-by: Georgi Djakov <djakov@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v8:
Remove ICC_xxx macros
Fix macro defines to be consistent with other bindings
v7:
Fix macro names to be consistent with other bindings
v6:
Removed Reviewed-by: Krzysztof Kozlowski
Redefine the bindings such that driver and DT can share them

v3:
Squash Documentation/ and include/ changes into same patch

qcom,ipq9574.h
	Move 'first id' to clock driver

---
 .../bindings/clock/qcom,ipq9574-gcc.yaml      |  3 +
 .../dt-bindings/interconnect/qcom,ipq9574.h   | 59 +++++++++++++++++++
 2 files changed, 62 insertions(+)
 create mode 100644 include/dt-bindings/interconnect/qcom,ipq9574.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml
index 944a0ea79cd6..824781cbdf34 100644
--- a/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-gcc.yaml
@@ -33,6 +33,9 @@ properties:
       - description: PCIE30 PHY3 pipe clock source
       - description: USB3 PHY pipe clock source
 
+  '#interconnect-cells':
+    const: 1
+
 required:
   - compatible
   - clocks
diff --git a/include/dt-bindings/interconnect/qcom,ipq9574.h b/include/dt-bindings/interconnect/qcom,ipq9574.h
new file mode 100644
index 000000000000..42019335c7dd
--- /dev/null
+++ b/include/dt-bindings/interconnect/qcom,ipq9574.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+#ifndef INTERCONNECT_QCOM_IPQ9574_H
+#define INTERCONNECT_QCOM_IPQ9574_H
+
+#define MASTER_ANOC_PCIE0		0
+#define SLAVE_ANOC_PCIE0		1
+#define MASTER_SNOC_PCIE0		2
+#define SLAVE_SNOC_PCIE0		3
+#define MASTER_ANOC_PCIE1		4
+#define SLAVE_ANOC_PCIE1		5
+#define MASTER_SNOC_PCIE1		6
+#define SLAVE_SNOC_PCIE1		7
+#define MASTER_ANOC_PCIE2		8
+#define SLAVE_ANOC_PCIE2		9
+#define MASTER_SNOC_PCIE2		10
+#define SLAVE_SNOC_PCIE2		11
+#define MASTER_ANOC_PCIE3		12
+#define SLAVE_ANOC_PCIE3		13
+#define MASTER_SNOC_PCIE3		14
+#define SLAVE_SNOC_PCIE3		15
+#define MASTER_USB			16
+#define SLAVE_USB			17
+#define MASTER_USB_AXI			18
+#define SLAVE_USB_AXI			19
+#define MASTER_NSSNOC_NSSCC		20
+#define SLAVE_NSSNOC_NSSCC		21
+#define MASTER_NSSNOC_SNOC_0		22
+#define SLAVE_NSSNOC_SNOC_0		23
+#define MASTER_NSSNOC_SNOC_1		24
+#define SLAVE_NSSNOC_SNOC_1		25
+#define MASTER_NSSNOC_PCNOC_1		26
+#define SLAVE_NSSNOC_PCNOC_1		27
+#define MASTER_NSSNOC_QOSGEN_REF	28
+#define SLAVE_NSSNOC_QOSGEN_REF		29
+#define MASTER_NSSNOC_TIMEOUT_REF	30
+#define SLAVE_NSSNOC_TIMEOUT_REF	31
+#define MASTER_NSSNOC_XO_DCD		32
+#define SLAVE_NSSNOC_XO_DCD		33
+#define MASTER_NSSNOC_ATB		34
+#define SLAVE_NSSNOC_ATB		35
+#define MASTER_MEM_NOC_NSSNOC		36
+#define SLAVE_MEM_NOC_NSSNOC		37
+#define MASTER_NSSNOC_MEMNOC		38
+#define SLAVE_NSSNOC_MEMNOC		39
+#define MASTER_NSSNOC_MEM_NOC_1		40
+#define SLAVE_NSSNOC_MEM_NOC_1		41
+
+#define MASTER_NSSNOC_PPE		0
+#define SLAVE_NSSNOC_PPE		1
+#define MASTER_NSSNOC_PPE_CFG		2
+#define SLAVE_NSSNOC_PPE_CFG		3
+#define MASTER_NSSNOC_NSS_CSR		4
+#define SLAVE_NSSNOC_NSS_CSR		5
+#define MASTER_NSSNOC_IMEM_QSB		6
+#define SLAVE_NSSNOC_IMEM_QSB		7
+#define MASTER_NSSNOC_IMEM_AHB		8
+#define SLAVE_NSSNOC_IMEM_AHB		9
+
+#endif /* INTERCONNECT_QCOM_IPQ9574_H */
-- 
2.34.1


