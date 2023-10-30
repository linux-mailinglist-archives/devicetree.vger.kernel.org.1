Return-Path: <devicetree+bounces-12762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C3F7DB678
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BF9E2815D1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A48CADF47;
	Mon, 30 Oct 2023 09:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="cbRLRpx0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBA5DDD1;
	Mon, 30 Oct 2023 09:48:13 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC99119;
	Mon, 30 Oct 2023 02:48:08 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39U7LHWj021956;
	Mon, 30 Oct 2023 09:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=nBUwvv1TU5njiVfmxmIc5DjWqcQHCwam9AG/snVJj/E=;
 b=cbRLRpx0FJ3Doa+0JuZYb2JNKM7Zgy/bpWJFx5umKGmGFB/4NJfM0tatbObHy3DmSMX4
 WNN1ITe48vPK3v4DVBBSrmPZM5lmHV4822By9Fd95jNaSJy6mWfIUN0p4VM0/fCd53s4
 oZt2b+0DZ4GGpM+UPpga61yvLVnPqwqvikZHa9NWkO8wv6f3qaW5u1EWywmyl+47gkyI
 MMFqOqa+4wYwd3hPh6kH4Dex6UcK9COU22w6TFdmzn2MhtNX9ixZDzXHtq2Tx4lyveBP
 cEEezjonrWUYPdLWgDAInYIBT6qgbK8ldnfIfawrf13WOwL+FxxS103adSxjkIHr4oxM Iw== 
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u0sw7ufpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 09:47:58 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39U9lv7t027699
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 09:47:57 GMT
Received: from hu-kathirav-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 30 Oct 2023 02:47:52 -0700
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Date: Mon, 30 Oct 2023 15:17:20 +0530
Subject: [PATCH 5/8] dt-bindings: clock: add IPQ5332 NSSCC clock and reset
 definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231030-ipq5332-nsscc-v1-5-6162a2c65f0a@quicinc.com>
References: <20231030-ipq5332-nsscc-v1-0-6162a2c65f0a@quicinc.com>
In-Reply-To: <20231030-ipq5332-nsscc-v1-0-6162a2c65f0a@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette
	<mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas
	<catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        "Kathiravan
 Thirumoorthy" <quic_kathirav@quicinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698659244; l=5960;
 i=quic_kathirav@quicinc.com; s=20230906; h=from:subject:message-id;
 bh=gnTxTHVemRJjz6NLYE10vtmDzXAuRzOl7oJEOK+mBb8=;
 b=aZC8ISsbqgPDG8R4L8ATxcqR77ddz7AUklVXbQmx7UVpC/tJXsriUAX+SChjC7wW5Bv91SC0U
 6LMHNWNLJHtAtboKuYOoSYPXBRtLWylLLMMRzcqEV6vpa53gaM8mgmP
X-Developer-Key: i=quic_kathirav@quicinc.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: Sn3n1aFA8pWlhSJg12HD0iFM_DO8hVe8
X-Proofpoint-GUID: Sn3n1aFA8pWlhSJg12HD0iFM_DO8hVe8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_08,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300074

Add NSSCC clock and reset definitions for IPQ5332.

Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
---
 .../bindings/clock/qcom,ipq5332-nsscc.yaml         | 60 +++++++++++++++
 include/dt-bindings/clock/qcom,ipq5332-nsscc.h     | 86 ++++++++++++++++++++++
 2 files changed, 146 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,ipq5332-nsscc.yaml b/Documentation/devicetree/bindings/clock/qcom,ipq5332-nsscc.yaml
new file mode 100644
index 000000000000..59f8d1e99229
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,ipq5332-nsscc.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,ipq5332-nsscc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Networking Sub System Clock & Reset Controller on IPQ5332
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+
+description: |
+  Qualcomm networking sub system clock control module provides the clocks,
+  resets and power domains on IPQ5332
+
+  See also::
+    include/dt-bindings/clock/qcom,ipq5332-nsscc.h
+
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+properties:
+  compatible:
+    const: qcom,ipq5332-nsscc
+
+  clocks:
+    items:
+      - description: Common PLL nss clock 200M source
+      - description: Common PLL nss clock 300M source
+      - description: GCC GPLL0 out aux clock source
+      - description: Uniphy0 NSS Rx clock source
+      - description: Uniphy0 NSS Tx clock source
+      - description: Uniphy1 NSS Rx clock source
+      - description: Uniphy1 NSS Tx clock source
+      - description: Board XO source
+
+required:
+  - compatible
+  - clocks
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    clock-controller@39b00000 {
+      compatible = "qcom,ipq5332-nsscc";
+      reg = <0x39b00000 0x80000>;
+      clocks = <&bias_pll_cc_clk>,
+               <&bias_pll_nss_noc_clk>,
+               <&gcc_gpll0_out_aux>,
+               <&uniphy 0>,
+               <&uniphy 1>,
+               <&uniphy 2>,
+               <&uniphy 3>,
+               <&xo_board_clk>;
+      #clock-cells = <1>;
+      #reset-cells = <1>;
+      #power-domain-cells = <1>;
+    };
+...
diff --git a/include/dt-bindings/clock/qcom,ipq5332-nsscc.h b/include/dt-bindings/clock/qcom,ipq5332-nsscc.h
new file mode 100644
index 000000000000..c077cde7f57d
--- /dev/null
+++ b/include/dt-bindings/clock/qcom,ipq5332-nsscc.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
+/*
+ * Copyright (c) 2021, The Linux Foundation. All rights reserved.
+ * Copyright (c) 2022-2023, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#ifndef _DT_BINDINGS_CLK_QCOM_NSS_CC_IPQ5332_H
+#define _DT_BINDINGS_CLK_QCOM_NSS_CC_IPQ5332_H
+
+/* NSS_CC clocks */
+#define NSS_CC_CE_APB_CLK					0
+#define NSS_CC_CE_AXI_CLK					1
+#define NSS_CC_CE_CLK_SRC					2
+#define NSS_CC_CFG_CLK_SRC					3
+#define NSS_CC_DEBUG_CLK					4
+#define NSS_CC_EIP_BFDCD_CLK_SRC				5
+#define NSS_CC_EIP_CLK						6
+#define NSS_CC_NSS_CSR_CLK					7
+#define NSS_CC_NSSNOC_CE_APB_CLK				8
+#define NSS_CC_NSSNOC_CE_AXI_CLK				9
+#define NSS_CC_NSSNOC_EIP_CLK					10
+#define NSS_CC_NSSNOC_NSS_CSR_CLK				11
+#define NSS_CC_NSSNOC_PPE_CFG_CLK				12
+#define NSS_CC_NSSNOC_PPE_CLK					13
+#define NSS_CC_PORT1_MAC_CLK					14
+#define NSS_CC_PORT1_RX_CLK					15
+#define NSS_CC_PORT1_RX_CLK_SRC					16
+#define NSS_CC_PORT1_RX_DIV_CLK_SRC				17
+#define NSS_CC_PORT1_TX_CLK					18
+#define NSS_CC_PORT1_TX_CLK_SRC					19
+#define NSS_CC_PORT1_TX_DIV_CLK_SRC				20
+#define NSS_CC_PORT2_MAC_CLK					21
+#define NSS_CC_PORT2_RX_CLK					22
+#define NSS_CC_PORT2_RX_CLK_SRC					23
+#define NSS_CC_PORT2_RX_DIV_CLK_SRC				24
+#define NSS_CC_PORT2_TX_CLK					25
+#define NSS_CC_PORT2_TX_CLK_SRC					26
+#define NSS_CC_PORT2_TX_DIV_CLK_SRC				27
+#define NSS_CC_PPE_CLK_SRC					28
+#define NSS_CC_PPE_EDMA_CFG_CLK					29
+#define NSS_CC_PPE_EDMA_CLK					30
+#define NSS_CC_PPE_SWITCH_BTQ_CLK				31
+#define NSS_CC_PPE_SWITCH_CFG_CLK				32
+#define NSS_CC_PPE_SWITCH_CLK					33
+#define NSS_CC_PPE_SWITCH_IPE_CLK				34
+#define NSS_CC_UNIPHY_PORT1_RX_CLK				35
+#define NSS_CC_UNIPHY_PORT1_TX_CLK				36
+#define NSS_CC_UNIPHY_PORT2_RX_CLK				37
+#define NSS_CC_UNIPHY_PORT2_TX_CLK				38
+#define NSS_CC_XGMAC0_PTP_REF_CLK				39
+#define NSS_CC_XGMAC0_PTP_REF_DIV_CLK_SRC			40
+#define NSS_CC_XGMAC1_PTP_REF_CLK				41
+#define NSS_CC_XGMAC1_PTP_REF_DIV_CLK_SRC			42
+
+#define NSS_CC_CE_APB_CLK_ARES					0
+#define NSS_CC_CE_AXI_CLK_ARES					1
+#define NSS_CC_DEBUG_CLK_ARES					2
+#define NSS_CC_EIP_CLK_ARES					3
+#define NSS_CC_NSS_CSR_CLK_ARES					4
+#define NSS_CC_NSSNOC_CE_APB_CLK_ARES				5
+#define NSS_CC_NSSNOC_CE_AXI_CLK_ARES				6
+#define NSS_CC_NSSNOC_EIP_CLK_ARES				7
+#define NSS_CC_NSSNOC_NSS_CSR_CLK_ARES				8
+#define NSS_CC_NSSNOC_PPE_CLK_ARES				9
+#define NSS_CC_NSSNOC_PPE_CFG_CLK_ARES				10
+#define NSS_CC_PORT1_MAC_CLK_ARES				11
+#define NSS_CC_PORT1_RX_CLK_ARES				12
+#define NSS_CC_PORT1_TX_CLK_ARES				13
+#define NSS_CC_PORT2_MAC_CLK_ARES				14
+#define NSS_CC_PORT2_RX_CLK_ARES				15
+#define NSS_CC_PORT2_TX_CLK_ARES				16
+#define NSS_CC_PPE_BCR						17
+#define NSS_CC_PPE_EDMA_CLK_ARES				18
+#define NSS_CC_PPE_EDMA_CFG_CLK_ARES				19
+#define NSS_CC_PPE_SWITCH_BTQ_CLK_ARES				20
+#define NSS_CC_PPE_SWITCH_CLK_ARES				21
+#define NSS_CC_PPE_SWITCH_CFG_CLK_ARES				22
+#define NSS_CC_PPE_SWITCH_IPE_CLK_ARES				23
+#define NSS_CC_UNIPHY_PORT1_RX_CLK_ARES				24
+#define NSS_CC_UNIPHY_PORT1_TX_CLK_ARES				25
+#define NSS_CC_UNIPHY_PORT2_RX_CLK_ARES				26
+#define NSS_CC_UNIPHY_PORT2_TX_CLK_ARES				27
+#define NSS_CC_XGMAC0_PTP_REF_CLK_ARES				28
+#define NSS_CC_XGMAC1_PTP_REF_CLK_ARES				29
+
+#endif

-- 
2.34.1


