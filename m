Return-Path: <devicetree+bounces-152770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA36CA4A1F7
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 19:45:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AA213BD94A
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 18:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EB9274275;
	Fri, 28 Feb 2025 18:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="m69rHS++"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAA8230BFE;
	Fri, 28 Feb 2025 18:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740768238; cv=none; b=MEAx+L4UjvHHvgNmO3TA29WMquFj9R1l+u+deyJcvbfQPGMsMyy5o24Jj5svpQvohNeqMl8BKJG4E0oqhUwghKOlVRpnLjELCRjBWYyHq2ieFAO234kS5/Yv86vRwwQ6IusElTuCvJ8FM2Lx/9VYq60EznrJOUuOdj+EW6AB2Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740768238; c=relaxed/simple;
	bh=ALqLLUWogQkYE6963EHBoJczaxpLtNHQoLsx/VbbmHQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=stYKbrUc1wCBf43GB7m6lRmt0qaxUcQkeuG+64yc6EyWZ+FM5XEx1SG7OXjShoAnZuNzbu6CbOUADNTF8FFhCBs/7aITQl8rwXXX3oKzUUAJnIGY/BkJVGtDGtnsqXtnyIv3vOf77rgazdmmIYRT0Fc1crMrmdLHmBEhX34icIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=m69rHS++; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51SAXE4e021950;
	Fri, 28 Feb 2025 18:43:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4UWfRvr5rUx8BlgHcPdBC9yg9LunZEnqYzq8eLC80og=; b=m69rHS++ybt+wKCb
	VJDiqZDmVczqsJCpOl/bi0im+YKDN5U17RsAf/+Kmg1RRHarWdGs0wzJczJxkWSH
	O0Kj2IUS1TrYCAn0nMM+rWAM0N2XGacNOycUTi2/hTq/c7nBgRs9OWah3IYCAA/c
	eTOOgbKa03Zuodjur0eH5qPlhs5w4y31r6W0/DQM07sN+H4my6IjoBE5ywtf058x
	JxNNlY3O6GKUuVdNPeJf3t866T3MR8n5uh3jb2wjnphyyam5J/q0PqEuTff68sbE
	MjTyhfvGK8z6tfBYxwX1MCf5OXE2xEV076YUGywPQf6M3rRG19RKAFeIKbyhhN2Q
	WWsb6g==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451pu9jeyx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Feb 2025 18:43:49 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51SIhmX5019912
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Feb 2025 18:43:48 GMT
Received: from hu-rajkbhag-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 28 Feb 2025 10:43:44 -0800
From: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
To: <ath12k@lists.infradead.org>
CC: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        <linux-wireless@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Balamurugan S
	<quic_bselvara@quicinc.com>,
        P Praneesh <quic_ppranees@quicinc.com>,
        "Raj
 Kumar Bhagat" <quic_rajkbhag@quicinc.com>
Subject: [PATCH v8 06/13] wifi: ath12k: Add hw_params to remap CE register space for IPQ5332
Date: Sat, 1 Mar 2025 00:12:07 +0530
Message-ID: <20250228184214.337119-7-quic_rajkbhag@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250228184214.337119-1-quic_rajkbhag@quicinc.com>
References: <20250228184214.337119-1-quic_rajkbhag@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: kvjRl2CNyBg5A-ZcyVf2JkzsSsksaf6y
X-Proofpoint-ORIG-GUID: kvjRl2CNyBg5A-ZcyVf2JkzsSsksaf6y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-28_05,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 suspectscore=0 clxscore=1015
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502280137

From: Balamurugan S <quic_bselvara@quicinc.com>

For IPQ5332 CE register space is moved out of WCSS region and the
space is not contiguous. Hence, add hardware params (ce_ie_addr &
ce_remap) for IPQ5332. These parameters would be used by Ath12k
AHB driver (in subsequent patches) to remap the CE registers to a
new space for accessing them.

Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1

Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
Co-developed-by: P Praneesh <quic_ppranees@quicinc.com>
Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
---
 drivers/net/wireless/ath/ath12k/ce.h   | 11 ++++++++
 drivers/net/wireless/ath/ath12k/core.h |  4 +++
 drivers/net/wireless/ath/ath12k/hal.h  |  4 +++
 drivers/net/wireless/ath/ath12k/hw.c   | 35 +++++++++++++++++++++++---
 drivers/net/wireless/ath/ath12k/hw.h   |  3 +++
 5 files changed, 53 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/ath/ath12k/ce.h b/drivers/net/wireless/ath/ath12k/ce.h
index 8007a94cec5d..57f75899ee03 100644
--- a/drivers/net/wireless/ath/ath12k/ce.h
+++ b/drivers/net/wireless/ath/ath12k/ce.h
@@ -76,6 +76,17 @@ struct ce_pipe_config {
 	__le32 reserved;
 };
 
+struct ce_ie_addr {
+	u32 ie1_reg_addr;
+	u32 ie2_reg_addr;
+	u32 ie3_reg_addr;
+};
+
+struct ce_remap {
+	u32 base;
+	u32 size;
+};
+
 struct ce_attr {
 	/* CE_ATTR_* values */
 	unsigned int flags;
diff --git a/drivers/net/wireless/ath/ath12k/core.h b/drivers/net/wireless/ath/ath12k/core.h
index 553965f12fcd..85f0cdce774e 100644
--- a/drivers/net/wireless/ath/ath12k/core.h
+++ b/drivers/net/wireless/ath/ath12k/core.h
@@ -924,6 +924,10 @@ struct ath12k_base {
 	void __iomem *mem;
 	unsigned long mem_len;
 
+	void __iomem *mem_ce;
+	u32 ce_remap_base_addr;
+	bool ce_remap;
+
 	struct {
 		enum ath12k_bus bus;
 		const struct ath12k_hif_ops *ops;
diff --git a/drivers/net/wireless/ath/ath12k/hal.h b/drivers/net/wireless/ath/ath12k/hal.h
index 1ce97f9a92ac..47ff0b1bfdf4 100644
--- a/drivers/net/wireless/ath/ath12k/hal.h
+++ b/drivers/net/wireless/ath/ath12k/hal.h
@@ -11,6 +11,7 @@
 #include "rx_desc.h"
 
 struct ath12k_base;
+#define HAL_CE_REMAP_REG_BASE	(ab->ce_remap_base_addr)
 
 #define HAL_LINK_DESC_SIZE			(32 << 2)
 #define HAL_LINK_DESC_ALIGN			128
@@ -372,6 +373,9 @@ struct ath12k_base;
  * ath12k_hal_rx_desc_get_err().
  */
 
+#define HAL_IPQ5332_CE_WFSS_REG_BASE	0x740000
+#define HAL_IPQ5332_CE_SIZE		0x100000
+
 enum hal_srng_ring_id {
 	HAL_SRNG_RING_ID_REO2SW0 = 0,
 	HAL_SRNG_RING_ID_REO2SW1,
diff --git a/drivers/net/wireless/ath/ath12k/hw.c b/drivers/net/wireless/ath/ath12k/hw.c
index 84f542c02c94..91aecca566a4 100644
--- a/drivers/net/wireless/ath/ath12k/hw.c
+++ b/drivers/net/wireless/ath/ath12k/hw.c
@@ -1110,10 +1110,14 @@ static const struct ath12k_hw_regs ipq5332_regs = {
 	.hal_ppe_rel_ring_base = 0x0000046c,
 
 	/* CE address */
-	.hal_umac_ce0_src_reg_base = 0x00740000,
-	.hal_umac_ce0_dest_reg_base = 0x00741000,
-	.hal_umac_ce1_src_reg_base = 0x00742000,
-	.hal_umac_ce1_dest_reg_base = 0x00743000,
+	.hal_umac_ce0_src_reg_base = 0x00740000 -
+		HAL_IPQ5332_CE_WFSS_REG_BASE,
+	.hal_umac_ce0_dest_reg_base = 0x00741000 -
+		HAL_IPQ5332_CE_WFSS_REG_BASE,
+	.hal_umac_ce1_src_reg_base = 0x00742000 -
+		HAL_IPQ5332_CE_WFSS_REG_BASE,
+	.hal_umac_ce1_dest_reg_base = 0x00743000 -
+		HAL_IPQ5332_CE_WFSS_REG_BASE,
 };
 
 static const struct ath12k_hw_regs wcn7850_regs = {
@@ -1227,6 +1231,17 @@ static const struct ath12k_hw_hal_params ath12k_hw_hal_params_ipq5332 = {
 			    HAL_WBM_SW_COOKIE_CONV_CFG_WBM2SW4_EN,
 };
 
+static const struct ce_ie_addr ath12k_ce_ie_addr_ipq5332 = {
+	.ie1_reg_addr = CE_HOST_IE_ADDRESS - HAL_IPQ5332_CE_WFSS_REG_BASE,
+	.ie2_reg_addr = CE_HOST_IE_2_ADDRESS - HAL_IPQ5332_CE_WFSS_REG_BASE,
+	.ie3_reg_addr = CE_HOST_IE_3_ADDRESS - HAL_IPQ5332_CE_WFSS_REG_BASE,
+};
+
+static const struct ce_remap ath12k_ce_remap_ipq5332 = {
+	.base = HAL_IPQ5332_CE_WFSS_REG_BASE,
+	.size = HAL_IPQ5332_CE_SIZE,
+};
+
 static const struct ath12k_hw_params ath12k_hw_params[] = {
 	{
 		.name = "qcn9274 hw1.0",
@@ -1304,6 +1319,9 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 		.iova_mask = 0,
 
 		.supports_aspm = false,
+
+		.ce_ie_addr = NULL,
+		.ce_remap = NULL,
 	},
 	{
 		.name = "wcn7850 hw2.0",
@@ -1385,6 +1403,9 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 		.iova_mask = ATH12K_PCIE_MAX_PAYLOAD_SIZE - 1,
 
 		.supports_aspm = true,
+
+		.ce_ie_addr = NULL,
+		.ce_remap = NULL,
 	},
 	{
 		.name = "qcn9274 hw2.0",
@@ -1462,6 +1483,9 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 		.iova_mask = 0,
 
 		.supports_aspm = false,
+
+		.ce_ie_addr = NULL,
+		.ce_remap = NULL,
 	},
 	{
 		.name = "ipq5332 hw1.0",
@@ -1534,6 +1558,9 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 		.supports_dynamic_smps_6ghz = false,
 		.iova_mask = 0,
 		.supports_aspm = false,
+
+		.ce_ie_addr = &ath12k_ce_ie_addr_ipq5332,
+		.ce_remap = &ath12k_ce_remap_ipq5332,
 	},
 };
 
diff --git a/drivers/net/wireless/ath/ath12k/hw.h b/drivers/net/wireless/ath/ath12k/hw.h
index fbe1aec475ce..6a75af093f31 100644
--- a/drivers/net/wireless/ath/ath12k/hw.h
+++ b/drivers/net/wireless/ath/ath12k/hw.h
@@ -226,6 +226,9 @@ struct ath12k_hw_params {
 	bool supports_dynamic_smps_6ghz;
 
 	u32 iova_mask;
+
+	const struct ce_ie_addr *ce_ie_addr;
+	const struct ce_remap *ce_remap;
 };
 
 struct ath12k_hw_ops {
-- 
2.34.1


