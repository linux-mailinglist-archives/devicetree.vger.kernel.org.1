Return-Path: <devicetree+bounces-152281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08152A488B1
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 20:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A0019188AD6E
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 19:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54786271802;
	Thu, 27 Feb 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ppUCwShR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FE2A271297;
	Thu, 27 Feb 2025 19:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740683513; cv=none; b=qNXtHsF1Fmrile7L5VKFL0VoqtIim7H03SOLQ3cpzg0Ib5ZKnXI2XEbOJuxU4eGVJN/KD9owF5/HXtcyWrz7V3eIoNCibPPMba8hF+xGwPvdghC0WH//NSv99a/6t+1cy/Y8AS/PRFzDGtm9hL6ElyLpYMFuHXqkblOtMAYtO2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740683513; c=relaxed/simple;
	bh=dlRy//RXfjiZlbU2RFmdcD8pyv9NYGC+3tQ6K57/XPY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eorid+bCZCP2c5CRvR9BzZxTsi90hC2Qw57MX2rEY2590/S2RXebCU+YJJQTzaRWh0MP6R1jVbcIjyBPvu9mcw8HQHMEV+1VxKPcw0SW546PNDB7fgNi2GKSWjJ1DVSWdIITQ4YgXKYKSvBoHyTReaI+LnyxPHhmWSHdtV86WZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=ppUCwShR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51R9fAAj006133;
	Thu, 27 Feb 2025 19:11:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MrFzDqVVTSRJgXTkeg14wvbpGJsXVttaUSNe/aAw384=; b=ppUCwShRfRSFhtUz
	WzbrJcjr+ewZuGTELktVlUXEv0yV1xMKgZxUT8+STKrsqkCPfVSej3uYi8g0sGjH
	IrmJGd/s9nvQ8h4QGaIBD9EvKG26a5YlghEiNd0mI2tX3Ee22ietCqccjqQC7EIl
	TRQojbTDxWkPjgDmktMScgffBhekpPJgwA3PrGiZ/nUUsxXGGfwo7MtEiVlH8t8h
	ihQPC1J/mAMd24Xyr2yqm8G3S3klBbqDKTFS+Q0NWA2/r3ezeNYdP7Q0wNMaRJXK
	Qrp8/Ws0sA+okMt70EUfjjNXrZlOvdV2azn4n2h9yzUm3AOZffkmlhNB4lIpmxjc
	av5S5g==
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 452nmqsp0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Feb 2025 19:11:42 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51RJBg47002202
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Feb 2025 19:11:42 GMT
Received: from hu-rajkbhag-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 27 Feb 2025 11:11:38 -0800
From: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
To: <ath12k@lists.infradead.org>
CC: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        <linux-wireless@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        "Sowmiya Sree
 Elavalagan" <quic_ssreeela@quicinc.com>,
        Raj Kumar Bhagat
	<quic_rajkbhag@quicinc.com>
Subject: [PATCH v7 11/13] wifi: ath12k: Power up userPD
Date: Fri, 28 Feb 2025 00:40:32 +0530
Message-ID: <20250227191034.1949954-12-quic_rajkbhag@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250227191034.1949954-1-quic_rajkbhag@quicinc.com>
References: <20250227191034.1949954-1-quic_rajkbhag@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 3INM08BxSA80M4CilIVz5VhtK9KnQN24
X-Proofpoint-ORIG-GUID: 3INM08BxSA80M4CilIVz5VhtK9KnQN24
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_07,2025-02-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502270142

From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>

UserPD firmware image is loaded and booted by ath12k driver. Get the userPD
memory region from DTS and load the firmware for userPD from pre-defined
path into io-remapped address of this region. Authenticate this image
using pasid which is a peripheral ID. Set the spawn bit to instruct Q6
to spawn userPD thread. Wait for userPD to spawn which is indicated by
spawn interrupt. Ready interrupt is triggered once the userPD is powered
up completely.

Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1

Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
---
 drivers/net/wireless/ath/ath12k/ahb.c | 128 ++++++++++++++++++++++++++
 drivers/net/wireless/ath/ath12k/ahb.h |   9 ++
 2 files changed, 137 insertions(+)

diff --git a/drivers/net/wireless/ath/ath12k/ahb.c b/drivers/net/wireless/ath/ath12k/ahb.c
index 4ac2c9179f2d..842ba9451e80 100644
--- a/drivers/net/wireless/ath/ath12k/ahb.c
+++ b/drivers/net/wireless/ath/ath12k/ahb.c
@@ -5,10 +5,12 @@
  */
 
 #include <linux/dma-mapping.h>
+#include <linux/firmware/qcom/qcom_scm.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/remoteproc.h>
+#include <linux/soc/qcom/mdt_loader.h>
 #include <linux/soc/qcom/smem_state.h>
 #include "ahb.h"
 #include "debug.h"
@@ -336,6 +338,131 @@ static void ath12k_ahb_stop(struct ath12k_base *ab)
 	ath12k_ce_cleanup_pipes(ab);
 }
 
+static int ath12k_ahb_power_up(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+	char fw_name[ATH12K_USERPD_FW_NAME_LEN];
+	char fw2_name[ATH12K_USERPD_FW_NAME_LEN];
+	struct device *dev = ab->dev;
+	const struct firmware *fw, *fw2;
+	struct reserved_mem *rmem = NULL;
+	unsigned long time_left;
+	phys_addr_t mem_phys;
+	void *mem_region;
+	size_t mem_size;
+	u32 pasid;
+	int ret;
+
+	rmem = ath12k_core_get_reserved_mem(ab, 0);
+	if (!rmem)
+		return -ENODEV;
+
+	mem_phys = rmem->base;
+	mem_size = rmem->size;
+	mem_region = (void *)devm_ioremap_wc(dev, mem_phys, mem_size);
+	if (!mem_region) {
+		ath12k_err(ab, "unable to map memory region: %pa+%pa\n",
+			   &rmem->base, &rmem->size);
+		return -ENOMEM;
+	}
+
+	snprintf(fw_name, sizeof(fw_name), "%s/%s/%s%d%s", ATH12K_FW_DIR,
+		 ab->hw_params->fw.dir, ATH12K_AHB_FW_PREFIX, ab_ahb->userpd_id,
+		 ATH12K_AHB_FW_SUFFIX);
+
+	ret = request_firmware(&fw, fw_name, dev);
+	if (ret < 0) {
+		ath12k_err(ab, "request_firmware failed\n");
+		return ret;
+	}
+
+	ath12k_dbg(ab, ATH12K_DBG_AHB, "Booting fw image %s, size %zd\n", fw_name,
+		   fw->size);
+
+	if (!fw->size) {
+		ath12k_err(ab, "Invalid firmware size\n");
+		ret = -EINVAL;
+		goto err_fw;
+	}
+
+	pasid = (u32_encode_bits(ab_ahb->userpd_id, ATH12K_USERPD_ID_MASK)) |
+		ATH12K_AHB_UPD_SWID;
+
+	/* Load FW image to a reserved memory location */
+	ret = qcom_mdt_load(dev, fw, fw_name, pasid, mem_region, mem_phys, mem_size,
+			    &mem_phys);
+	if (ret) {
+		ath12k_err(ab, "Failed to load MDT segments: %d\n", ret);
+		goto err_fw;
+	}
+
+	snprintf(fw2_name, sizeof(fw2_name), "%s/%s/%s", ATH12K_FW_DIR,
+		 ab->hw_params->fw.dir, ATH12K_AHB_FW2);
+
+	ret = request_firmware(&fw2, fw2_name, dev);
+	if (ret < 0) {
+		ath12k_err(ab, "request_firmware failed\n");
+		goto err_fw;
+	}
+
+	ath12k_dbg(ab, ATH12K_DBG_AHB, "Booting fw image %s, size %zd\n", fw2_name,
+		   fw2->size);
+
+	if (!fw2->size) {
+		ath12k_err(ab, "Invalid firmware size\n");
+		ret = -EINVAL;
+		goto err_fw2;
+	}
+
+	ret = qcom_mdt_load_no_init(dev, fw2, fw2_name, pasid, mem_region, mem_phys,
+				    mem_size, &mem_phys);
+	if (ret) {
+		ath12k_err(ab, "Failed to load MDT segments: %d\n", ret);
+		goto err_fw2;
+	}
+
+	/* Authenticate FW image using peripheral ID */
+	ret = qcom_scm_pas_auth_and_reset(pasid);
+	if (ret) {
+		ath12k_err(ab, "failed to boot the remote processor %d\n", ret);
+		goto err_fw2;
+	}
+
+	/* Instruct Q6 to spawn userPD thread */
+	ret = qcom_smem_state_update_bits(ab_ahb->spawn_state, BIT(ab_ahb->spawn_bit),
+					  BIT(ab_ahb->spawn_bit));
+	if (ret) {
+		ath12k_err(ab, "Failed to update spawn state %d\n", ret);
+		goto err_fw2;
+	}
+
+	time_left = wait_for_completion_timeout(&ab_ahb->userpd_spawned,
+						ATH12K_USERPD_SPAWN_TIMEOUT);
+	if (!time_left) {
+		ath12k_err(ab, "UserPD spawn wait timed out\n");
+		ret = -ETIMEDOUT;
+		goto err_fw2;
+	}
+
+	time_left = wait_for_completion_timeout(&ab_ahb->userpd_ready,
+						ATH12K_USERPD_READY_TIMEOUT);
+	if (!time_left) {
+		ath12k_err(ab, "UserPD ready wait timed out\n");
+		ret = -ETIMEDOUT;
+		goto err_fw2;
+	}
+
+	qcom_smem_state_update_bits(ab_ahb->spawn_state, BIT(ab_ahb->spawn_bit), 0);
+
+	ath12k_dbg(ab, ATH12K_DBG_AHB, "UserPD%d is now UP\n", ab_ahb->userpd_id);
+
+err_fw2:
+	release_firmware(fw2);
+err_fw:
+	release_firmware(fw);
+	return ret;
+}
+
 static void ath12k_ahb_init_qmi_ce_config(struct ath12k_base *ab)
 {
 	struct ath12k_qmi_ce_cfg *cfg = &ab->qmi.ce_cfg;
@@ -551,6 +678,7 @@ static const struct ath12k_hif_ops ath12k_ahb_hif_ops_ipq5332 = {
 	.irq_enable = ath12k_ahb_ext_irq_enable,
 	.irq_disable = ath12k_ahb_ext_irq_disable,
 	.map_service_to_pipe = ath12k_ahb_map_service_to_pipe,
+	.power_up = ath12k_ahb_power_up,
 };
 
 static irqreturn_t ath12k_userpd_irq_handler(int irq, void *data)
diff --git a/drivers/net/wireless/ath/ath12k/ahb.h b/drivers/net/wireless/ath/ath12k/ahb.h
index b17e7693b31a..f8a5c43075c1 100644
--- a/drivers/net/wireless/ath/ath12k/ahb.h
+++ b/drivers/net/wireless/ath/ath12k/ahb.h
@@ -19,6 +19,15 @@
 #define ATH12K_PCI_IRQ_CE0_OFFSET		3
 #define ATH12K_ROOTPD_READY_TIMEOUT		(5 * HZ)
 #define ATH12K_RPROC_AFTER_POWERUP		QCOM_SSR_AFTER_POWERUP
+#define ATH12K_AHB_FW_PREFIX			"q6_fw"
+#define ATH12K_AHB_FW_SUFFIX			".mdt"
+#define ATH12K_AHB_FW2				"iu_fw.mdt"
+#define ATH12K_AHB_UPD_SWID			0x12
+#define ATH12K_USERPD_SPAWN_TIMEOUT		(5 * HZ)
+#define ATH12K_USERPD_READY_TIMEOUT		(10 * HZ)
+#define ATH12K_USERPD_STOP_TIMEOUT		(5 * HZ)
+#define ATH12K_USERPD_ID_MASK			GENMASK(9, 8)
+#define ATH12K_USERPD_FW_NAME_LEN		35
 
 enum ath12k_ahb_smp2p_msg_id {
 	ATH12K_AHB_POWER_SAVE_ENTER = 1,
-- 
2.34.1


