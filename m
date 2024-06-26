Return-Path: <devicetree+bounces-80266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1CD91846A
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:36:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 230E81C22711
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:36:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51FF918E762;
	Wed, 26 Jun 2024 14:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="o6wrUV2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D541891A6;
	Wed, 26 Jun 2024 14:33:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719412417; cv=none; b=AmDOelRJpCbAeUyTFvr1IUBIy24qR7HDRHh9M7GICGWuIAxpgA48X8pBX+ZjiB1ORMsdbGhTgabA11AfsZUaVCptaR0Qe0Jlh3H2LQeadIwhbG3Udb577c8wPex2cBu3Bpoqu9ijeCHNFGG8EA7PT+EvwsBxniTO2eNpXsZdiKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719412417; c=relaxed/simple;
	bh=0cKg736du39D+YUbP7HpRZYZ4/NdPZTOW3TZmb9VNEg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hEV1ThD0oFTe4A4rZ7OKLfEYQkMG6/EjU4bP0kBy4Lyqiqs7u1/P+ORxWQ2D2iDDjFGMviEynoKWREWbp6ot+4GmAZYIpZMnI4btn8CHJjEmIPpuFID5Qk6auJRbXYarKjncXNU5mLtbevU6ZsDW4d+Zt6iRZ3IUHIQKkuWaSJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=o6wrUV2n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45QAfRg3025797;
	Wed, 26 Jun 2024 14:33:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=B8swzRnpuYI
	PqANLqcbMtg/yKgsgVLaMCrEBO+Z07Bk=; b=o6wrUV2nUgsssrqC261QT/BuNlp
	DjiPI4TDsjHwTvLVwtVAf5Piz+LE01DyNMkfT+ZJF7ZC6p2B2l978wCjGk3oxL9y
	AKvU2IAs9vfmDzXqWIpcfwWQwZSElX9FSDBF59kzzsmwlCNBnr4bnOj6r/PLow3v
	WfzgY8SYg2MO1d0QDR+6oUwnztuP1yql0sfXPNmgT5LjLBfwJXrRJ1g+1SmEW5Du
	jIEl+iUSqm5Tc2CCODrGtC/mM8GHvFsl60vGy+Ug2pSz4wY129+RKFff5+rDKY+5
	hhlOz8xIZhzyyBUXLSKP27SoR+K5HPQ7cwFQMFG+F+c2qt5OE2YObEK4ncA==
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ywnjs1k2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Jun 2024 14:33:08 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTP id 45QEUF0j023433;
	Wed, 26 Jun 2024 14:33:04 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3ywqpkv29f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Jun 2024 14:33:04 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 45QEX3gm025797;
	Wed, 26 Jun 2024 14:33:03 GMT
Received: from hu-devc-blr-u22-a.qualcomm.com (hu-devipriy-blr.qualcomm.com [10.131.37.37])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 45QEX3nE025791
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 26 Jun 2024 14:33:03 +0000
Received: by hu-devc-blr-u22-a.qualcomm.com (Postfix, from userid 4059087)
	id 8F2B241042; Wed, 26 Jun 2024 20:03:02 +0530 (+0530)
From: Devi Priya <quic_devipriy@quicinc.com>
To: andersson@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        konrad.dybcio@linaro.org, catalin.marinas@arm.com, will@kernel.org,
        p.zabel@pengutronix.de, richardcochran@gmail.com,
        geert+renesas@glider.be, dmitry.baryshkov@linaro.org,
        neil.armstrong@linaro.org, arnd@arndb.de, m.szyprowski@samsung.com,
        nfraprado@collabora.com, u-kumar1@ti.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Cc: quic_devipriy@quicinc.com
Subject: [PATCH V5 4/7] dt-bindings: clock: Add ipq9574 NSSCC clock and reset definitions
Date: Wed, 26 Jun 2024 20:02:59 +0530
Message-Id: <20240626143302.810632-5-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240626143302.810632-1-quic_devipriy@quicinc.com>
References: <20240626143302.810632-1-quic_devipriy@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: eEO-3K6M9uEdUclNT3Pm8L7gzEsB2Kgq
X-Proofpoint-ORIG-GUID: eEO-3K6M9uEdUclNT3Pm8L7gzEsB2Kgq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-26_07,2024-06-25_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 mlxscore=0 suspectscore=0 adultscore=0 mlxlogscore=999
 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2406140001 definitions=main-2406260107

Add NSSCC clock and reset definitions for ipq9574.

Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Changes in V5:
	- Dropped interconnects and added interconnect-cells to NSS
	  clock provider so that it can be  used as icc provider.

 .../bindings/clock/qcom,ipq9574-nsscc.yaml    |  74 +++++++++
 .../dt-bindings/clock/qcom,ipq9574-nsscc.h    | 152 ++++++++++++++++++
 .../dt-bindings/reset/qcom,ipq9574-nsscc.h    | 134 +++++++++++++++
 3 files changed, 360 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,ipq9574-nsscc.yaml
 create mode 100644 include/dt-bindings/clock/qcom,ipq9574-nsscc.h
 create mode 100644 include/dt-bindings/reset/qcom,ipq9574-nsscc.h

diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq9574-nsscc.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq9574-nsscc.yaml
new file mode 100644
index 000000000000..5a6a097b3036
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq9574-nsscc.yaml
@@ -0,0 +1,74 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,ipq9574-nsscc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Networking Sub System Clock & Reset Controller on IPQ9574
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Anusha Rao <quic_anusha@quicinc.com>
+
+description: |
+  Qualcomm networking sub system clock control module provides the clocks,
+  resets and power domains on IPQ9574
+
+  See also::
+    include/dt-bindings/clock/qcom,ipq9574-nsscc.h
+    include/dt-bindings/reset/qcom,ipq9574-nsscc.h
+
+properties:
+  compatible:
+    const: qcom,ipq9574-nsscc
+
+  clocks:
+    items:
+      - description: Board XO source
+      - description: Bias PLL cc clock source
+      - description: Bias PLL nss noc clock source
+      - description: Bias PLL ubi nc clock source
+      - description: GCC GPLL0 OUT AUX clock source
+      - description: Uniphy0 NSS Rx clock source
+      - description: Uniphy0 NSS Tx clock source
+      - description: Uniphy1 NSS Rx clock source
+      - description: Uniphy1 NSS Tx clock source
+      - description: Uniphy2 NSS Rx clock source
+      - description: Uniphy2 NSS Tx clock source
+      - description: GCC NSSCC clock source
+
+  '#interconnect-cells':
+    const: 1
+
+required:
+  - compatible
+  - clocks
+
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
+    clock-controller@39b00000 {
+      compatible = "qcom,ipq9574-nsscc";
+      reg = <0x39b00000 0x80000>;
+      clocks = <&xo_board_clk>,
+               <&bias_pll_cc_clk>,
+               <&bias_pll_nss_noc_clk>,
+               <&bias_pll_ubi_nc_clk>,
+               <&gcc GPLL0_OUT_AUX>,
+               <&uniphy 0>,
+               <&uniphy 1>,
+               <&uniphy 2>,
+               <&uniphy 3>,
+               <&uniphy 4>,
+               <&uniphy 5>,
+               <&gcc GCC_NSSCC_CLK>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/clock/qcom,ipq9574-nsscc.h b/include/dt-bindings/clock/qcom,ipq9574-nsscc.h
new file mode 100644
index 000000000000..59d57d9c788c
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,ipq9574-nsscc.h
@@ -0,0 +1,152 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2023, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLOCK_IPQ_NSSCC_9574_H
+#define _DT_BINDINGS_CLOCK_IPQ_NSSCC_9574_H
+
+#define NSS_CC_CE_APB_CLK					0
+#define NSS_CC_CE_AXI_CLK					1
+#define NSS_CC_CE_CLK_SRC					2
+#define NSS_CC_CFG_CLK_SRC					3
+#define NSS_CC_CLC_AXI_CLK					4
+#define NSS_CC_CLC_CLK_SRC					5
+#define NSS_CC_CRYPTO_CLK					6
+#define NSS_CC_CRYPTO_CLK_SRC					7
+#define NSS_CC_CRYPTO_PPE_CLK					8
+#define NSS_CC_HAQ_AHB_CLK					9
+#define NSS_CC_HAQ_AXI_CLK					10
+#define NSS_CC_HAQ_CLK_SRC					11
+#define NSS_CC_IMEM_AHB_CLK					12
+#define NSS_CC_IMEM_CLK_SRC					13
+#define NSS_CC_IMEM_QSB_CLK					14
+#define NSS_CC_INT_CFG_CLK_SRC					15
+#define NSS_CC_NSS_CSR_CLK					16
+#define NSS_CC_NSSNOC_CE_APB_CLK				17
+#define NSS_CC_NSSNOC_CE_AXI_CLK				18
+#define NSS_CC_NSSNOC_CLC_AXI_CLK				19
+#define NSS_CC_NSSNOC_CRYPTO_CLK				20
+#define NSS_CC_NSSNOC_HAQ_AHB_CLK				21
+#define NSS_CC_NSSNOC_HAQ_AXI_CLK				22
+#define NSS_CC_NSSNOC_IMEM_AHB_CLK				23
+#define NSS_CC_NSSNOC_IMEM_QSB_CLK				24
+#define NSS_CC_NSSNOC_NSS_CSR_CLK				25
+#define NSS_CC_NSSNOC_PPE_CFG_CLK				26
+#define NSS_CC_NSSNOC_PPE_CLK					27
+#define NSS_CC_NSSNOC_UBI32_AHB0_CLK				28
+#define NSS_CC_NSSNOC_UBI32_AXI0_CLK				29
+#define NSS_CC_NSSNOC_UBI32_INT0_AHB_CLK			30
+#define NSS_CC_NSSNOC_UBI32_NC_AXI0_1_CLK			31
+#define NSS_CC_NSSNOC_UBI32_NC_AXI0_CLK				32
+#define NSS_CC_PORT1_MAC_CLK					33
+#define NSS_CC_PORT1_RX_CLK					34
+#define NSS_CC_PORT1_RX_CLK_SRC					35
+#define NSS_CC_PORT1_RX_DIV_CLK_SRC				36
+#define NSS_CC_PORT1_TX_CLK					37
+#define NSS_CC_PORT1_TX_CLK_SRC					38
+#define NSS_CC_PORT1_TX_DIV_CLK_SRC				39
+#define NSS_CC_PORT2_MAC_CLK					40
+#define NSS_CC_PORT2_RX_CLK					41
+#define NSS_CC_PORT2_RX_CLK_SRC					42
+#define NSS_CC_PORT2_RX_DIV_CLK_SRC				43
+#define NSS_CC_PORT2_TX_CLK					44
+#define NSS_CC_PORT2_TX_CLK_SRC					45
+#define NSS_CC_PORT2_TX_DIV_CLK_SRC				46
+#define NSS_CC_PORT3_MAC_CLK					47
+#define NSS_CC_PORT3_RX_CLK					48
+#define NSS_CC_PORT3_RX_CLK_SRC					49
+#define NSS_CC_PORT3_RX_DIV_CLK_SRC				50
+#define NSS_CC_PORT3_TX_CLK					51
+#define NSS_CC_PORT3_TX_CLK_SRC					52
+#define NSS_CC_PORT3_TX_DIV_CLK_SRC				53
+#define NSS_CC_PORT4_MAC_CLK					54
+#define NSS_CC_PORT4_RX_CLK					55
+#define NSS_CC_PORT4_RX_CLK_SRC					56
+#define NSS_CC_PORT4_RX_DIV_CLK_SRC				57
+#define NSS_CC_PORT4_TX_CLK					58
+#define NSS_CC_PORT4_TX_CLK_SRC					59
+#define NSS_CC_PORT4_TX_DIV_CLK_SRC				60
+#define NSS_CC_PORT5_MAC_CLK					61
+#define NSS_CC_PORT5_RX_CLK					62
+#define NSS_CC_PORT5_RX_CLK_SRC					63
+#define NSS_CC_PORT5_RX_DIV_CLK_SRC				64
+#define NSS_CC_PORT5_TX_CLK					65
+#define NSS_CC_PORT5_TX_CLK_SRC					66
+#define NSS_CC_PORT5_TX_DIV_CLK_SRC				67
+#define NSS_CC_PORT6_MAC_CLK					68
+#define NSS_CC_PORT6_RX_CLK					69
+#define NSS_CC_PORT6_RX_CLK_SRC					70
+#define NSS_CC_PORT6_RX_DIV_CLK_SRC				71
+#define NSS_CC_PORT6_TX_CLK					72
+#define NSS_CC_PORT6_TX_CLK_SRC					73
+#define NSS_CC_PORT6_TX_DIV_CLK_SRC				74
+#define NSS_CC_PPE_CLK_SRC					75
+#define NSS_CC_PPE_EDMA_CFG_CLK					76
+#define NSS_CC_PPE_EDMA_CLK					77
+#define NSS_CC_PPE_SWITCH_BTQ_CLK				78
+#define NSS_CC_PPE_SWITCH_CFG_CLK				79
+#define NSS_CC_PPE_SWITCH_CLK					80
+#define NSS_CC_PPE_SWITCH_IPE_CLK				81
+#define NSS_CC_UBI0_CLK_SRC					82
+#define NSS_CC_UBI0_DIV_CLK_SRC					83
+#define NSS_CC_UBI1_CLK_SRC					84
+#define NSS_CC_UBI1_DIV_CLK_SRC					85
+#define NSS_CC_UBI2_CLK_SRC					86
+#define NSS_CC_UBI2_DIV_CLK_SRC					87
+#define NSS_CC_UBI32_AHB0_CLK					88
+#define NSS_CC_UBI32_AHB1_CLK					89
+#define NSS_CC_UBI32_AHB2_CLK					90
+#define NSS_CC_UBI32_AHB3_CLK					91
+#define NSS_CC_UBI32_AXI0_CLK					92
+#define NSS_CC_UBI32_AXI1_CLK					93
+#define NSS_CC_UBI32_AXI2_CLK					94
+#define NSS_CC_UBI32_AXI3_CLK					95
+#define NSS_CC_UBI32_CORE0_CLK					96
+#define NSS_CC_UBI32_CORE1_CLK					97
+#define NSS_CC_UBI32_CORE2_CLK					98
+#define NSS_CC_UBI32_CORE3_CLK					99
+#define NSS_CC_UBI32_INTR0_AHB_CLK				100
+#define NSS_CC_UBI32_INTR1_AHB_CLK				101
+#define NSS_CC_UBI32_INTR2_AHB_CLK				102
+#define NSS_CC_UBI32_INTR3_AHB_CLK				103
+#define NSS_CC_UBI32_NC_AXI0_CLK				104
+#define NSS_CC_UBI32_NC_AXI1_CLK				105
+#define NSS_CC_UBI32_NC_AXI2_CLK				106
+#define NSS_CC_UBI32_NC_AXI3_CLK				107
+#define NSS_CC_UBI32_UTCM0_CLK					108
+#define NSS_CC_UBI32_UTCM1_CLK					109
+#define NSS_CC_UBI32_UTCM2_CLK					110
+#define NSS_CC_UBI32_UTCM3_CLK					111
+#define NSS_CC_UBI3_CLK_SRC					112
+#define NSS_CC_UBI3_DIV_CLK_SRC					113
+#define NSS_CC_UBI_AXI_CLK_SRC					114
+#define NSS_CC_UBI_NC_AXI_BFDCD_CLK_SRC				115
+#define NSS_CC_UNIPHY_PORT1_RX_CLK				116
+#define NSS_CC_UNIPHY_PORT1_TX_CLK				117
+#define NSS_CC_UNIPHY_PORT2_RX_CLK				118
+#define NSS_CC_UNIPHY_PORT2_TX_CLK				119
+#define NSS_CC_UNIPHY_PORT3_RX_CLK				120
+#define NSS_CC_UNIPHY_PORT3_TX_CLK				121
+#define NSS_CC_UNIPHY_PORT4_RX_CLK				122
+#define NSS_CC_UNIPHY_PORT4_TX_CLK				123
+#define NSS_CC_UNIPHY_PORT5_RX_CLK				124
+#define NSS_CC_UNIPHY_PORT5_TX_CLK				125
+#define NSS_CC_UNIPHY_PORT6_RX_CLK				126
+#define NSS_CC_UNIPHY_PORT6_TX_CLK				127
+#define NSS_CC_XGMAC0_PTP_REF_CLK				128
+#define NSS_CC_XGMAC0_PTP_REF_DIV_CLK_SRC			129
+#define NSS_CC_XGMAC1_PTP_REF_CLK				130
+#define NSS_CC_XGMAC1_PTP_REF_DIV_CLK_SRC			131
+#define NSS_CC_XGMAC2_PTP_REF_CLK				132
+#define NSS_CC_XGMAC2_PTP_REF_DIV_CLK_SRC			133
+#define NSS_CC_XGMAC3_PTP_REF_CLK				134
+#define NSS_CC_XGMAC3_PTP_REF_DIV_CLK_SRC			135
+#define NSS_CC_XGMAC4_PTP_REF_CLK				136
+#define NSS_CC_XGMAC4_PTP_REF_DIV_CLK_SRC			137
+#define NSS_CC_XGMAC5_PTP_REF_CLK				138
+#define NSS_CC_XGMAC5_PTP_REF_DIV_CLK_SRC			139
+#define UBI32_PLL						140
+#define UBI32_PLL_MAIN						141
+
+#endif
diff --git a/include/dt-bindings/reset/qcom,ipq9574-nsscc.h b/include/dt-bindings/reset/qcom,ipq9574-nsscc.h
new file mode 100644
index 000000000000..6910db0cff51
--- /dev/null
+++ b/include/dt-bindings/reset/qcom,ipq9574-nsscc.h
@@ -0,0 +1,134 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2023, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_RESET_IPQ_NSSCC_9574_H
+#define _DT_BINDINGS_RESET_IPQ_NSSCC_9574_H
+
+#define EDMA_HW_RESET                   0
+#define NSS_CC_CE_BCR			1
+#define NSS_CC_CLC_BCR			2
+#define NSS_CC_EIP197_BCR		3
+#define NSS_CC_HAQ_BCR			4
+#define NSS_CC_IMEM_BCR			5
+#define NSS_CC_MAC_BCR			6
+#define NSS_CC_PPE_BCR			7
+#define NSS_CC_UBI_BCR			8
+#define NSS_CC_UNIPHY_BCR		9
+#define UBI3_CLKRST_CLAMP_ENABLE	10
+#define UBI3_CORE_CLAMP_ENABLE		11
+#define UBI2_CLKRST_CLAMP_ENABLE	12
+#define UBI2_CORE_CLAMP_ENABLE		13
+#define UBI1_CLKRST_CLAMP_ENABLE	14
+#define UBI1_CORE_CLAMP_ENABLE		15
+#define UBI0_CLKRST_CLAMP_ENABLE	16
+#define UBI0_CORE_CLAMP_ENABLE		17
+#define NSSNOC_NSS_CSR_ARES		18
+#define NSS_CSR_ARES			19
+#define PPE_BTQ_ARES			20
+#define PPE_IPE_ARES			21
+#define PPE_ARES			22
+#define PPE_CFG_ARES			23
+#define PPE_EDMA_ARES			24
+#define PPE_EDMA_CFG_ARES		25
+#define CRY_PPE_ARES			26
+#define NSSNOC_PPE_ARES			27
+#define NSSNOC_PPE_CFG_ARES		28
+#define PORT1_MAC_ARES			29
+#define PORT2_MAC_ARES			30
+#define PORT3_MAC_ARES			31
+#define PORT4_MAC_ARES			32
+#define PORT5_MAC_ARES			33
+#define PORT6_MAC_ARES			34
+#define XGMAC0_PTP_REF_ARES		35
+#define XGMAC1_PTP_REF_ARES		36
+#define XGMAC2_PTP_REF_ARES		37
+#define XGMAC3_PTP_REF_ARES		38
+#define XGMAC4_PTP_REF_ARES		39
+#define XGMAC5_PTP_REF_ARES		40
+#define HAQ_AHB_ARES			41
+#define HAQ_AXI_ARES			42
+#define NSSNOC_HAQ_AHB_ARES		43
+#define NSSNOC_HAQ_AXI_ARES		44
+#define CE_APB_ARES			45
+#define CE_AXI_ARES			46
+#define NSSNOC_CE_APB_ARES		47
+#define NSSNOC_CE_AXI_ARES		48
+#define CRYPTO_ARES			49
+#define NSSNOC_CRYPTO_ARES		50
+#define NSSNOC_NC_AXI0_1_ARES		51
+#define UBI0_CORE_ARES			52
+#define UBI1_CORE_ARES			53
+#define UBI2_CORE_ARES			54
+#define UBI3_CORE_ARES			55
+#define NC_AXI0_ARES			56
+#define UTCM0_ARES			57
+#define NC_AXI1_ARES			58
+#define UTCM1_ARES			59
+#define NC_AXI2_ARES			60
+#define UTCM2_ARES			61
+#define NC_AXI3_ARES			62
+#define UTCM3_ARES			63
+#define NSSNOC_NC_AXI0_ARES		64
+#define AHB0_ARES			65
+#define INTR0_AHB_ARES			66
+#define AHB1_ARES			67
+#define INTR1_AHB_ARES			68
+#define AHB2_ARES			69
+#define INTR2_AHB_ARES			70
+#define AHB3_ARES			71
+#define INTR3_AHB_ARES			72
+#define NSSNOC_AHB0_ARES		73
+#define NSSNOC_INT0_AHB_ARES		74
+#define AXI0_ARES			75
+#define AXI1_ARES			76
+#define AXI2_ARES			77
+#define AXI3_ARES			78
+#define NSSNOC_AXI0_ARES		79
+#define IMEM_QSB_ARES			80
+#define NSSNOC_IMEM_QSB_ARES		81
+#define IMEM_AHB_ARES			82
+#define NSSNOC_IMEM_AHB_ARES		83
+#define UNIPHY_PORT1_RX_ARES		84
+#define UNIPHY_PORT1_TX_ARES		85
+#define UNIPHY_PORT2_RX_ARES		86
+#define UNIPHY_PORT2_TX_ARES		87
+#define UNIPHY_PORT3_RX_ARES		88
+#define UNIPHY_PORT3_TX_ARES		89
+#define UNIPHY_PORT4_RX_ARES		90
+#define UNIPHY_PORT4_TX_ARES		91
+#define UNIPHY_PORT5_RX_ARES		92
+#define UNIPHY_PORT5_TX_ARES		93
+#define UNIPHY_PORT6_RX_ARES		94
+#define UNIPHY_PORT6_TX_ARES		95
+#define PORT1_RX_ARES			96
+#define PORT1_TX_ARES			97
+#define PORT2_RX_ARES			98
+#define PORT2_TX_ARES			99
+#define PORT3_RX_ARES			100
+#define PORT3_TX_ARES			101
+#define PORT4_RX_ARES			102
+#define PORT4_TX_ARES			103
+#define PORT5_RX_ARES			104
+#define PORT5_TX_ARES			105
+#define PORT6_RX_ARES			106
+#define PORT6_TX_ARES			107
+#define PPE_FULL_RESET			108
+#define UNIPHY0_SOFT_RESET		109
+#define UNIPHY1_SOFT_RESET		110
+#define UNIPHY2_SOFT_RESET		111
+#define UNIPHY_PORT1_ARES		112
+#define UNIPHY_PORT2_ARES		113
+#define UNIPHY_PORT3_ARES		114
+#define UNIPHY_PORT4_ARES		115
+#define UNIPHY_PORT5_ARES		116
+#define UNIPHY_PORT6_ARES		117
+#define NSSPORT1_RESET			118
+#define NSSPORT2_RESET			119
+#define NSSPORT3_RESET			120
+#define NSSPORT4_RESET			121
+#define NSSPORT5_RESET			122
+#define NSSPORT6_RESET			123
+
+#endif
-- 
2.34.1


