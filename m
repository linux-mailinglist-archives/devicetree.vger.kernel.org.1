Return-Path: <devicetree+bounces-158267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3DAA65639
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 16:46:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E22CA179A11
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 15:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAC4624EAA3;
	Mon, 17 Mar 2025 15:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eO2xwkT9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C74C24EA9F;
	Mon, 17 Mar 2025 15:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742226213; cv=none; b=AYBpwN37bj4pxT9MFCzSLXXjn+PHnydr5FADoRV9kaCcuNCfI0h5wNm68FzuxKejrajM5p0Vjpt1rEYGuH8Mw0WR21VDA980C8nOlyPXdSK58+EZqppcOKYfeXAKDXeChEYIHFogF8M+OTfE4hp6KDA3JWgm9Eml/8vS7jq/Uqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742226213; c=relaxed/simple;
	bh=hwp9/O2Fbuwjc82T6hQ804eE7giobo//smjQfjbiC9Y=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZeZyhzdMBBGwohzIq/kSJOkgtqvdrI8NlRsZTzlr+shslvpRdlph4EWXEDvO9z7AnezMDkhXCDvGt6Vg39pvkpkm92MAa9PHprYSK6WpyBB5vjIuM0k5YkVKlhDNwW44Ui244FlhMmY6NXELgTELGbEzDnTOwK/yMxS7exGbp2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=eO2xwkT9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52H9DEgh019140;
	Mon, 17 Mar 2025 15:43:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ksxotXP8NMy4CZ2fJb8N5TJK/PuT6qeKP4ZGGBd7JRQ=; b=eO2xwkT95YYav65O
	bf9Fo9ZtMfg2XLFssk/Whv3quWce/Myv/+hZ3lmXkItazNPk+cW11jqle+Q9LRDH
	xHxvGx72kcbno64AAgiHy4kGJS6962r0znWx9d6JveMUWBrDqzShmKkxjU0IFVTB
	VH5z33BwF0DlJbyVlg2KNPJBHQxLJFn/32FvgJlaopDLN2X437qs/2zP9xNC/h5E
	kOQ/NyfuGdWVyqZ3lIHctbcTg7SZAhetJlkn6InU74YWeiBYrK7VUvbbReOGcKcR
	HO6bQc2ySb73TB2tPOZ29rQKnGxF3avH7vJ8PvTxZAL9V7ALY3paORWrlDRCuEYC
	cWo3dA==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d2u9w6yw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Mar 2025 15:43:19 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52HFhIrs029875
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Mar 2025 15:43:18 GMT
Received: from hu-rajkbhag-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 17 Mar 2025 08:43:15 -0700
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
	<quic_rajkbhag@quicinc.com>,
        Vasanthakumar Thiagarajan
	<vasanthakumar.thiagarajan@oss.qualcomm.com>
Subject: [PATCH ath-next v10 09/13] wifi: ath12k: Power up root PD
Date: Mon, 17 Mar 2025 21:11:46 +0530
Message-ID: <20250317154150.1361364-10-quic_rajkbhag@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250317154150.1361364-1-quic_rajkbhag@quicinc.com>
References: <20250317154150.1361364-1-quic_rajkbhag@quicinc.com>
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
X-Authority-Analysis: v=2.4 cv=JsfxrN4C c=1 sm=1 tr=0 ts=67d84317 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=ts5QanDNsPI7iOQJwMMA:9
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: gyC3rkpLeOhY0cfT_m15I88ieY-hJVyK
X-Proofpoint-ORIG-GUID: gyC3rkpLeOhY0cfT_m15I88ieY-hJVyK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_06,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=999 impostorscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503170113

From: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>

Q6 processor acts as rootPD, other hardware like IPQ5332 which are
attached to Q6 act as userPDs. WCSS driver handles loading and booting
of rootPD, while the ath12k driver boots the userPD.
Get the rproc handle from the DTS entry and boot the rootPD if it
is not already powered on. Register to the rproc notifier to monitor
the rproc state, this allows ath12k driver to know power up/down
sequence of the rootPD. Power up the rootPD and wait for a power-up
notification from the notifier callback before powering up the userPDs.

Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1

Signed-off-by: Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
Co-developed-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
---
 drivers/net/wireless/ath/ath12k/ahb.c | 146 +++++++++++++++++++++++++-
 drivers/net/wireless/ath/ath12k/ahb.h |   7 ++
 2 files changed, 151 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/ath/ath12k/ahb.c b/drivers/net/wireless/ath/ath12k/ahb.c
index 597bc522ed01..8f7a00e9602f 100644
--- a/drivers/net/wireless/ath/ath12k/ahb.c
+++ b/drivers/net/wireless/ath/ath12k/ahb.c
@@ -8,6 +8,7 @@
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
+#include <linux/remoteproc.h>
 #include "ahb.h"
 #include "debug.h"
 #include "hif.h"
@@ -546,6 +547,136 @@ static const struct ath12k_hif_ops ath12k_ahb_hif_ops_ipq5332 = {
 	.map_service_to_pipe = ath12k_ahb_map_service_to_pipe,
 };
 
+static int ath12k_ahb_root_pd_state_notifier(struct notifier_block *nb,
+					     const unsigned long event, void *data)
+{
+	struct ath12k_ahb *ab_ahb = container_of(nb, struct ath12k_ahb, root_pd_nb);
+	struct ath12k_base *ab = ab_ahb->ab;
+
+	if (event == ATH12K_RPROC_AFTER_POWERUP) {
+		ath12k_dbg(ab, ATH12K_DBG_AHB, "Root PD is UP\n");
+		complete(&ab_ahb->rootpd_ready);
+	}
+
+	return 0;
+}
+
+static int ath12k_ahb_register_rproc_notifier(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+
+	ab_ahb->root_pd_nb.notifier_call = ath12k_ahb_root_pd_state_notifier;
+	init_completion(&ab_ahb->rootpd_ready);
+
+	ab_ahb->root_pd_notifier = qcom_register_ssr_notifier(ab_ahb->tgt_rproc->name,
+							      &ab_ahb->root_pd_nb);
+	if (IS_ERR(ab_ahb->root_pd_notifier))
+		return PTR_ERR(ab_ahb->root_pd_notifier);
+
+	return 0;
+}
+
+static void ath12k_ahb_unregister_rproc_notifier(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+
+	if (!ab_ahb->root_pd_notifier) {
+		ath12k_err(ab, "Rproc notifier not registered\n");
+		return;
+	}
+
+	qcom_unregister_ssr_notifier(ab_ahb->root_pd_notifier,
+				     &ab_ahb->root_pd_nb);
+	ab_ahb->root_pd_notifier = NULL;
+}
+
+static int ath12k_ahb_get_rproc(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+	struct device *dev = ab->dev;
+	struct device_node *np;
+	struct rproc *prproc;
+
+	np = of_parse_phandle(dev->of_node, "qcom,rproc", 0);
+	if (!np) {
+		ath12k_err(ab, "failed to get q6_rproc handle\n");
+		return -ENOENT;
+	}
+
+	prproc = rproc_get_by_phandle(np->phandle);
+	of_node_put(np);
+	if (!prproc)
+		return dev_err_probe(&ab->pdev->dev, -EPROBE_DEFER,
+				     "failed to get rproc\n");
+
+	ab_ahb->tgt_rproc = prproc;
+
+	return 0;
+}
+
+static int ath12k_ahb_boot_root_pd(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+	unsigned long time_left;
+	int ret;
+
+	ret = rproc_boot(ab_ahb->tgt_rproc);
+	if (ret < 0) {
+		ath12k_err(ab, "RootPD boot failed\n");
+		return ret;
+	}
+
+	time_left = wait_for_completion_timeout(&ab_ahb->rootpd_ready,
+						ATH12K_ROOTPD_READY_TIMEOUT);
+	if (!time_left) {
+		ath12k_err(ab, "RootPD ready wait timed out\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int ath12k_ahb_configure_rproc(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+	int ret;
+
+	ret = ath12k_ahb_get_rproc(ab);
+	if (ret < 0)
+		return ret;
+
+	ret = ath12k_ahb_register_rproc_notifier(ab);
+	if (ret < 0) {
+		ret = dev_err_probe(&ab->pdev->dev, ret,
+				    "failed to register rproc notifier\n");
+		goto err_put_rproc;
+	}
+
+	if (ab_ahb->tgt_rproc->state != RPROC_RUNNING) {
+		ret = ath12k_ahb_boot_root_pd(ab);
+		if (ret < 0) {
+			ath12k_err(ab, "failed to boot the remote processor Q6\n");
+			goto err_unreg_notifier;
+		}
+	}
+	return 0;
+
+err_unreg_notifier:
+	ath12k_ahb_unregister_rproc_notifier(ab);
+
+err_put_rproc:
+	rproc_put(ab_ahb->tgt_rproc);
+	return ret;
+}
+
+static void ath12k_ahb_deconfigure_rproc(struct ath12k_base *ab)
+{
+	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
+
+	ath12k_ahb_unregister_rproc_notifier(ab);
+	rproc_put(ab_ahb->tgt_rproc);
+}
+
 static int ath12k_ahb_resource_init(struct ath12k_base *ab)
 {
 	struct ath12k_ahb *ab_ahb = ath12k_ab_to_ahb(ab);
@@ -631,6 +762,7 @@ static int ath12k_ahb_probe(struct platform_device *pdev)
 {
 	struct ath12k_base *ab;
 	const struct ath12k_hif_ops *hif_ops;
+	struct ath12k_ahb *ab_ahb;
 	enum ath12k_hw_rev hw_rev;
 	u32 addr;
 	int ret;
@@ -660,6 +792,8 @@ static int ath12k_ahb_probe(struct platform_device *pdev)
 	ab->pdev = pdev;
 	ab->hw_rev = hw_rev;
 	platform_set_drvdata(pdev, ab);
+	ab_ahb = ath12k_ab_to_ahb(ab);
+	ab_ahb->ab = ab;
 
 	/* Set fixed_mem_region to true for platforms that support fixed memory
 	 * reservation from DT. If memory is reserved from DT for FW, ath12k driver
@@ -688,20 +822,27 @@ static int ath12k_ahb_probe(struct platform_device *pdev)
 
 	ath12k_ahb_init_qmi_ce_config(ab);
 
+	ret = ath12k_ahb_configure_rproc(ab);
+	if (ret)
+		goto err_ce_free;
+
 	ret = ath12k_ahb_config_irq(ab);
 	if (ret) {
 		ath12k_err(ab, "failed to configure irq: %d\n", ret);
-		goto err_ce_free;
+		goto err_rproc_deconfigure;
 	}
 
 	ret = ath12k_core_init(ab);
 	if (ret) {
 		ath12k_err(ab, "failed to init core: %d\n", ret);
-		goto err_ce_free;
+		goto err_rproc_deconfigure;
 	}
 
 	return 0;
 
+err_rproc_deconfigure:
+	ath12k_ahb_deconfigure_rproc(ab);
+
 err_ce_free:
 	ath12k_ce_free_pipes(ab);
 
@@ -741,6 +882,7 @@ static void ath12k_ahb_free_resources(struct ath12k_base *ab)
 	ath12k_hal_srng_deinit(ab);
 	ath12k_ce_free_pipes(ab);
 	ath12k_ahb_resource_deinit(ab);
+	ath12k_ahb_deconfigure_rproc(ab);
 	ath12k_core_free(ab);
 	platform_set_drvdata(pdev, NULL);
 }
diff --git a/drivers/net/wireless/ath/ath12k/ahb.h b/drivers/net/wireless/ath/ath12k/ahb.h
index 64f0696588c0..1105473917ce 100644
--- a/drivers/net/wireless/ath/ath12k/ahb.h
+++ b/drivers/net/wireless/ath/ath12k/ahb.h
@@ -7,6 +7,7 @@
 #define ATH12K_AHB_H
 
 #include <linux/clk.h>
+#include <linux/remoteproc/qcom_rproc.h>
 #include "core.h"
 
 #define ATH12K_AHB_RECOVERY_TIMEOUT (3 * HZ)
@@ -16,6 +17,8 @@
 #define ATH12K_AHB_SMP2P_SMEM_VALUE_MASK	0xFFFFFFFF
 #define ATH12K_PCI_CE_WAKE_IRQ			2
 #define ATH12K_PCI_IRQ_CE0_OFFSET		3
+#define ATH12K_ROOTPD_READY_TIMEOUT		(5 * HZ)
+#define ATH12K_RPROC_AFTER_POWERUP		QCOM_SSR_AFTER_POWERUP
 
 enum ath12k_ahb_smp2p_msg_id {
 	ATH12K_AHB_POWER_SAVE_ENTER = 1,
@@ -25,8 +28,12 @@ enum ath12k_ahb_smp2p_msg_id {
 struct ath12k_base;
 
 struct ath12k_ahb {
+	struct ath12k_base *ab;
 	struct rproc *tgt_rproc;
 	struct clk *xo_clk;
+	struct completion rootpd_ready;
+	struct notifier_block root_pd_nb;
+	void *root_pd_notifier;
 };
 
 static inline struct ath12k_ahb *ath12k_ab_to_ahb(struct ath12k_base *ab)
-- 
2.34.1


