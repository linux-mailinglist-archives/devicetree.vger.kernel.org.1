Return-Path: <devicetree+bounces-152771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74061A4A1F5
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 19:45:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B88B1189949F
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 18:45:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 020F227604D;
	Fri, 28 Feb 2025 18:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="oUM0roJm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC2327603E;
	Fri, 28 Feb 2025 18:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740768242; cv=none; b=QuRkN4A68JoR3rM52C/pzMh9utMjpg17EeMB9Qo0UVTQYofF3rtP0tOyBGYRpai2OTjgvQT8vaM3VDi8sVzrFnuIHA6lw/I9BDS1ulRJqYu7V00eSb1eNjWdJ65T9hIi8RenPxSZF2HbmNQrUMiBy+xmQ0hSMSb0LEAspBf+8WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740768242; c=relaxed/simple;
	bh=Lc+d0WN8S8hJ4v71hddIvLcxGZkriy74N0b+L0nHLp8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BOcJuldt6PaUj9CecwOeYR8Lya526VZwY3slANG19FWtgvDxYrD7VoRBJjpzX914iAXWjH/N7wUTP6e78ZDEwdEHHex/ECXmqCdDlUfCC8IdW14vbD6Qa1iWRnx/9Rh4rschpybLgzRod49s6XtDfrte3yrrleUr0dIavvt7FgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=oUM0roJm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51SAXHXJ008967;
	Fri, 28 Feb 2025 18:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fqgbhDjWA/hCVQutupf6kxMmzX+H3p/HIoA1Ird4Cqs=; b=oUM0roJm+lDp7P52
	0R3f0I/WgZ7mQLlS2weheDt09xJMqsIDrvkl/TNF93ViDepndzL2Oyt+MvaPJwK9
	INLVNBeLFyehCCnZdn/42NkBoxtJckh6wxfzy6cuWHg8SVFHoSdLVWmcrjq2BBv5
	jRKGRPLU+kaa8Z+n6qpQGtknaZ4zCRfzDCbMzztBa85RX9Dye/Z2mZxO8ppqjnS4
	KTmSnZHFqWC6ZvrzrJeoRJMfxYNCQZYhkLqdOikkZ4RfZa4EBWsCyHI0yWpicPk1
	VKdP9L9miyvfd6QHWUMLSj8KI34xcQtuxonaLA/6KwWXhhmmKuzHf6qKiaFe+K0O
	0cN5dQ==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 452be6pyr4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Feb 2025 18:43:53 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51SIhql3019931
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Feb 2025 18:43:52 GMT
Received: from hu-rajkbhag-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 28 Feb 2025 10:43:49 -0800
From: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
To: <ath12k@lists.infradead.org>
CC: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        <linux-wireless@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        "Raj Kumar
 Bhagat" <quic_rajkbhag@quicinc.com>
Subject: [PATCH v8 07/13] wifi: ath12k: add support for fixed QMI firmware memory
Date: Sat, 1 Mar 2025 00:12:08 +0530
Message-ID: <20250228184214.337119-8-quic_rajkbhag@quicinc.com>
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
X-Proofpoint-GUID: stJGMgZUCBhi-sZAJ1cCdCywWZQTUy_b
X-Proofpoint-ORIG-GUID: stJGMgZUCBhi-sZAJ1cCdCywWZQTUy_b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-28_05,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 clxscore=1015
 lowpriorityscore=0 adultscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502280137

IPQ5332 firmware supports only fixed QMI firmware memory.

Hence, add support to read reserved fixed memory region from
device-tree and provide the reserved memory segments for
firmware to use during QMI firmware memory request.

Note that the ability to set the fixed memory will be introduced in
a subsequent patch. Currently, the flag remains unset by default,
ensuring that existing chipsets are unaffected.

Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1

Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
---
 drivers/net/wireless/ath/ath12k/core.c |  25 ++++
 drivers/net/wireless/ath/ath12k/core.h |   4 +
 drivers/net/wireless/ath/ath12k/hw.c   |   4 +
 drivers/net/wireless/ath/ath12k/hw.h   |   1 +
 drivers/net/wireless/ath/ath12k/qmi.c  | 182 ++++++++++++++++++++++---
 5 files changed, 200 insertions(+), 16 deletions(-)

diff --git a/drivers/net/wireless/ath/ath12k/core.c b/drivers/net/wireless/ath/ath12k/core.c
index 0b2dec081c6e..5bd852f9572b 100644
--- a/drivers/net/wireless/ath/ath12k/core.c
+++ b/drivers/net/wireless/ath/ath12k/core.c
@@ -612,6 +612,31 @@ u32 ath12k_core_get_max_num_tids(struct ath12k_base *ab)
 	return TARGET_NUM_TIDS(SINGLE);
 }
 
+struct reserved_mem *ath12k_core_get_reserved_mem(struct ath12k_base *ab,
+						  int index)
+{
+	struct device *dev = ab->dev;
+	struct reserved_mem *rmem;
+	struct device_node *node;
+
+	node = of_parse_phandle(dev->of_node, "memory-region", index);
+	if (!node) {
+		ath12k_dbg(ab, ATH12K_DBG_BOOT,
+			   "failed to parse memory-region for index %d\n", index);
+		return NULL;
+	}
+
+	rmem = of_reserved_mem_lookup(node);
+	of_node_put(node);
+	if (!rmem) {
+		ath12k_dbg(ab, ATH12K_DBG_BOOT,
+			   "unable to get memory-region for index %d\n", index);
+		return NULL;
+	}
+
+	return rmem;
+}
+
 static void ath12k_core_stop(struct ath12k_base *ab)
 {
 	ath12k_core_stopped(ab);
diff --git a/drivers/net/wireless/ath/ath12k/core.h b/drivers/net/wireless/ath/ath12k/core.h
index 85f0cdce774e..398f76a9d2e4 100644
--- a/drivers/net/wireless/ath/ath12k/core.h
+++ b/drivers/net/wireless/ath/ath12k/core.h
@@ -14,6 +14,7 @@
 #include <linux/dmi.h>
 #include <linux/ctype.h>
 #include <linux/firmware.h>
+#include <linux/of_reserved_mem.h>
 #include <linux/panic_notifier.h>
 #include <linux/average.h>
 #include "qmi.h"
@@ -239,6 +240,7 @@ enum ath12k_dev_flags {
 	ATH12K_FLAG_EXT_IRQ_ENABLED,
 	ATH12K_FLAG_QMI_FW_READY_COMPLETE,
 	ATH12K_FLAG_FTM_SEGMENTED,
+	ATH12K_FLAG_FIXED_MEM_REGION,
 };
 
 struct ath12k_tx_conf {
@@ -1220,6 +1222,8 @@ u32 ath12k_core_get_max_peers_per_radio(struct ath12k_base *ab);
 u32 ath12k_core_get_max_num_tids(struct ath12k_base *ab);
 
 void ath12k_core_hw_group_set_mlo_capable(struct ath12k_hw_group *ag);
+struct reserved_mem *ath12k_core_get_reserved_mem(struct ath12k_base *ab,
+						  int index);
 
 static inline const char *ath12k_scan_state_str(enum ath12k_scan_state state)
 {
diff --git a/drivers/net/wireless/ath/ath12k/hw.c b/drivers/net/wireless/ath/ath12k/hw.c
index 91aecca566a4..b4d5651973b7 100644
--- a/drivers/net/wireless/ath/ath12k/hw.c
+++ b/drivers/net/wireless/ath/ath12k/hw.c
@@ -1322,6 +1322,7 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 
 		.ce_ie_addr = NULL,
 		.ce_remap = NULL,
+		.bdf_addr_offset = 0,
 	},
 	{
 		.name = "wcn7850 hw2.0",
@@ -1406,6 +1407,7 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 
 		.ce_ie_addr = NULL,
 		.ce_remap = NULL,
+		.bdf_addr_offset = 0,
 	},
 	{
 		.name = "qcn9274 hw2.0",
@@ -1486,6 +1488,7 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 
 		.ce_ie_addr = NULL,
 		.ce_remap = NULL,
+		.bdf_addr_offset = 0,
 	},
 	{
 		.name = "ipq5332 hw1.0",
@@ -1561,6 +1564,7 @@ static const struct ath12k_hw_params ath12k_hw_params[] = {
 
 		.ce_ie_addr = &ath12k_ce_ie_addr_ipq5332,
 		.ce_remap = &ath12k_ce_remap_ipq5332,
+		.bdf_addr_offset = 0xC00000,
 	},
 };
 
diff --git a/drivers/net/wireless/ath/ath12k/hw.h b/drivers/net/wireless/ath/ath12k/hw.h
index 6a75af093f31..5123d2f51865 100644
--- a/drivers/net/wireless/ath/ath12k/hw.h
+++ b/drivers/net/wireless/ath/ath12k/hw.h
@@ -229,6 +229,7 @@ struct ath12k_hw_params {
 
 	const struct ce_ie_addr *ce_ie_addr;
 	const struct ce_remap *ce_remap;
+	u32 bdf_addr_offset;
 };
 
 struct ath12k_hw_ops {
diff --git a/drivers/net/wireless/ath/ath12k/qmi.c b/drivers/net/wireless/ath/ath12k/qmi.c
index 6978200fb79a..7df6c6eebed6 100644
--- a/drivers/net/wireless/ath/ath12k/qmi.c
+++ b/drivers/net/wireless/ath/ath12k/qmi.c
@@ -11,6 +11,8 @@
 #include "debug.h"
 #include <linux/of.h>
 #include <linux/firmware.h>
+#include <linux/of_address.h>
+#include <linux/ioport.h>
 
 #define SLEEP_CLOCK_SELECT_INTERNAL_BIT	0x02
 #define HOST_CSTATE_BIT			0x04
@@ -2378,7 +2380,8 @@ int ath12k_qmi_respond_fw_mem_request(struct ath12k_base *ab)
 	 * failure to firmware and firmware then request multiple blocks of
 	 * small chunk size memory.
 	 */
-	if (ab->qmi.target_mem_delayed) {
+	if (!test_bit(ATH12K_FLAG_FIXED_MEM_REGION, &ab->dev_flags) &&
+	    ab->qmi.target_mem_delayed) {
 		delayed = true;
 		ath12k_dbg(ab, ATH12K_DBG_QMI, "qmi delays mem_request %d\n",
 			   ab->qmi.mem_seg_count);
@@ -2442,6 +2445,7 @@ static void ath12k_qmi_free_mlo_mem_chunk(struct ath12k_base *ab,
 {
 	struct ath12k_hw_group *ag = ab->ag;
 	struct target_mem_chunk *mlo_chunk;
+	bool fixed_mem;
 
 	lockdep_assert_held(&ag->mutex);
 
@@ -2453,8 +2457,13 @@ static void ath12k_qmi_free_mlo_mem_chunk(struct ath12k_base *ab,
 		return;
 	}
 
+	fixed_mem = test_bit(ATH12K_FLAG_FIXED_MEM_REGION, &ab->dev_flags);
 	mlo_chunk = &ag->mlo_mem.chunk[idx];
-	if (mlo_chunk->v.addr) {
+
+	if (fixed_mem && mlo_chunk->v.ioaddr) {
+		iounmap(mlo_chunk->v.ioaddr);
+		mlo_chunk->v.ioaddr = NULL;
+	} else if (mlo_chunk->v.addr) {
 		dma_free_coherent(ab->dev,
 				  mlo_chunk->size,
 				  mlo_chunk->v.addr,
@@ -2464,7 +2473,10 @@ static void ath12k_qmi_free_mlo_mem_chunk(struct ath12k_base *ab,
 
 	mlo_chunk->paddr = 0;
 	mlo_chunk->size = 0;
-	chunk->v.addr = NULL;
+	if (fixed_mem)
+		chunk->v.ioaddr = NULL;
+	else
+		chunk->v.addr = NULL;
 	chunk->paddr = 0;
 	chunk->size = 0;
 }
@@ -2475,19 +2487,24 @@ static void ath12k_qmi_free_target_mem_chunk(struct ath12k_base *ab)
 	int i, mlo_idx;
 
 	for (i = 0, mlo_idx = 0; i < ab->qmi.mem_seg_count; i++) {
-		if (!ab->qmi.target_mem[i].v.addr)
-			continue;
-
 		if (ab->qmi.target_mem[i].type == MLO_GLOBAL_MEM_REGION_TYPE) {
 			ath12k_qmi_free_mlo_mem_chunk(ab,
 						      &ab->qmi.target_mem[i],
 						      mlo_idx++);
 		} else {
-			dma_free_coherent(ab->dev,
-					  ab->qmi.target_mem[i].prev_size,
-					  ab->qmi.target_mem[i].v.addr,
-					  ab->qmi.target_mem[i].paddr);
-			ab->qmi.target_mem[i].v.addr = NULL;
+			if (test_bit(ATH12K_FLAG_FIXED_MEM_REGION, &ab->dev_flags) &&
+			    ab->qmi.target_mem[i].v.ioaddr) {
+				iounmap(ab->qmi.target_mem[i].v.ioaddr);
+				ab->qmi.target_mem[i].v.ioaddr = NULL;
+			} else {
+				if (!ab->qmi.target_mem[i].v.addr)
+					continue;
+				dma_free_coherent(ab->dev,
+						  ab->qmi.target_mem[i].prev_size,
+						  ab->qmi.target_mem[i].v.addr,
+						  ab->qmi.target_mem[i].paddr);
+				ab->qmi.target_mem[i].v.addr = NULL;
+			}
 		}
 	}
 
@@ -2640,6 +2657,130 @@ static int ath12k_qmi_alloc_target_mem_chunk(struct ath12k_base *ab)
 	return ret;
 }
 
+static int ath12k_qmi_assign_target_mem_chunk(struct ath12k_base *ab)
+{
+	struct reserved_mem *rmem;
+	size_t avail_rmem_size;
+	int i, idx, ret;
+
+	for (i = 0, idx = 0; i < ab->qmi.mem_seg_count; i++) {
+		switch (ab->qmi.target_mem[i].type) {
+		case HOST_DDR_REGION_TYPE:
+			rmem = ath12k_core_get_reserved_mem(ab, 0);
+			if (!rmem) {
+				ret = -ENODEV;
+				goto out;
+			}
+
+			avail_rmem_size = rmem->size;
+			if (avail_rmem_size < ab->qmi.target_mem[i].size) {
+				ath12k_dbg(ab, ATH12K_DBG_QMI,
+					   "failed to assign mem type %u req size %u avail size %zu\n",
+					   ab->qmi.target_mem[i].type,
+					   ab->qmi.target_mem[i].size,
+					   avail_rmem_size);
+				ret = -EINVAL;
+				goto out;
+			}
+
+			ab->qmi.target_mem[idx].paddr = rmem->base;
+			ab->qmi.target_mem[idx].v.ioaddr =
+				ioremap(ab->qmi.target_mem[idx].paddr,
+					ab->qmi.target_mem[i].size);
+			if (!ab->qmi.target_mem[idx].v.ioaddr) {
+				ret = -EIO;
+				goto out;
+			}
+			ab->qmi.target_mem[idx].size = ab->qmi.target_mem[i].size;
+			ab->qmi.target_mem[idx].type = ab->qmi.target_mem[i].type;
+			idx++;
+			break;
+		case BDF_MEM_REGION_TYPE:
+			rmem = ath12k_core_get_reserved_mem(ab, 0);
+			if (!rmem) {
+				ret = -ENODEV;
+				goto out;
+			}
+
+			avail_rmem_size = rmem->size - ab->hw_params->bdf_addr_offset;
+			if (avail_rmem_size < ab->qmi.target_mem[i].size) {
+				ath12k_dbg(ab, ATH12K_DBG_QMI,
+					   "failed to assign mem type %u req size %u avail size %zu\n",
+					   ab->qmi.target_mem[i].type,
+					   ab->qmi.target_mem[i].size,
+					   avail_rmem_size);
+				ret = -EINVAL;
+				goto out;
+			}
+			ab->qmi.target_mem[idx].paddr =
+				rmem->base + ab->hw_params->bdf_addr_offset;
+			ab->qmi.target_mem[idx].v.ioaddr =
+				ioremap(ab->qmi.target_mem[idx].paddr,
+					ab->qmi.target_mem[i].size);
+			if (!ab->qmi.target_mem[idx].v.ioaddr) {
+				ret = -EIO;
+				goto out;
+			}
+			ab->qmi.target_mem[idx].size = ab->qmi.target_mem[i].size;
+			ab->qmi.target_mem[idx].type = ab->qmi.target_mem[i].type;
+			idx++;
+			break;
+		case CALDB_MEM_REGION_TYPE:
+			/* Cold boot calibration is not enabled in Ath12k. Hence,
+			 * assign paddr = 0.
+			 * Once cold boot calibration is enabled add support to
+			 * assign reserved memory from DT.
+			 */
+			ab->qmi.target_mem[idx].paddr = 0;
+			ab->qmi.target_mem[idx].v.ioaddr = NULL;
+			ab->qmi.target_mem[idx].size = ab->qmi.target_mem[i].size;
+			ab->qmi.target_mem[idx].type = ab->qmi.target_mem[i].type;
+			idx++;
+			break;
+		case M3_DUMP_REGION_TYPE:
+			rmem = ath12k_core_get_reserved_mem(ab, 1);
+			if (!rmem) {
+				ret = -EINVAL;
+				goto out;
+			}
+
+			avail_rmem_size = rmem->size;
+			if (avail_rmem_size < ab->qmi.target_mem[i].size) {
+				ath12k_dbg(ab, ATH12K_DBG_QMI,
+					   "failed to assign mem type %u req size %u avail size %zu\n",
+					   ab->qmi.target_mem[i].type,
+					   ab->qmi.target_mem[i].size,
+					   avail_rmem_size);
+				ret = -EINVAL;
+				goto out;
+			}
+
+			ab->qmi.target_mem[idx].paddr = rmem->base;
+			ab->qmi.target_mem[idx].v.ioaddr =
+				ioremap(ab->qmi.target_mem[idx].paddr,
+					ab->qmi.target_mem[i].size);
+			if (!ab->qmi.target_mem[idx].v.ioaddr) {
+				ret = -EIO;
+				goto out;
+			}
+			ab->qmi.target_mem[idx].size = ab->qmi.target_mem[i].size;
+			ab->qmi.target_mem[idx].type = ab->qmi.target_mem[i].type;
+			idx++;
+			break;
+		default:
+			ath12k_warn(ab, "qmi ignore invalid mem req type %u\n",
+				    ab->qmi.target_mem[i].type);
+			break;
+		}
+	}
+	ab->qmi.mem_seg_count = idx;
+
+	return 0;
+out:
+	ath12k_qmi_free_target_mem_chunk(ab);
+	return ret;
+}
+
 /* clang stack usage explodes if this is inlined */
 static noinline_for_stack
 int ath12k_qmi_request_target_cap(struct ath12k_base *ab)
@@ -3483,11 +3624,20 @@ static void ath12k_qmi_msg_mem_request_cb(struct qmi_handle *qmi_hdl,
 			   msg->mem_seg[i].type, msg->mem_seg[i].size);
 	}
 
-	ret = ath12k_qmi_alloc_target_mem_chunk(ab);
-	if (ret) {
-		ath12k_warn(ab, "qmi failed to alloc target memory: %d\n",
-			    ret);
-		return;
+	if (test_bit(ATH12K_FLAG_FIXED_MEM_REGION, &ab->dev_flags)) {
+		ret = ath12k_qmi_assign_target_mem_chunk(ab);
+		if (ret) {
+			ath12k_warn(ab, "failed to assign qmi target memory: %d\n",
+				    ret);
+			return;
+		}
+	} else {
+		ret = ath12k_qmi_alloc_target_mem_chunk(ab);
+		if (ret) {
+			ath12k_warn(ab, "qmi failed to alloc target memory: %d\n",
+				    ret);
+			return;
+		}
 	}
 
 	ath12k_qmi_driver_event_post(qmi, ATH12K_QMI_EVENT_REQUEST_MEM, NULL);
-- 
2.34.1


