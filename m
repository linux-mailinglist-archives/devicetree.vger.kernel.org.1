Return-Path: <devicetree+bounces-144378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CF6A2DE69
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 15:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF4923A0397
	for <lists+devicetree@lfdr.de>; Sun,  9 Feb 2025 14:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551B11E32B7;
	Sun,  9 Feb 2025 14:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="mvDK2Kfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BD21DF25A;
	Sun,  9 Feb 2025 14:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739111448; cv=none; b=knW/PToqBv4VwtFlpMP+nkhdOB/ZbA9/h2eQDvjX4zAgpvTBHv8/wyagabiBT/0NEd6DNd4wTKMqmFE9ActDHXkfjdkREwqrla30qBcJIVmQtbt08SyCxRJGsgsH6426bZOSGTX+GkrCgSyH7Wtq7/kG/5kO1Y2U5N/0eQj9HTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739111448; c=relaxed/simple;
	bh=3IfswyCNzlVvhMus/q7yOcOalc2OmKd4UFO21CG9k+I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=t92KcE2/T4yaZsbAkRiet45dpe8DAK6GkZwTYZo61VC1+3jj6nxbr+4ySC7yJ3KyCQd/2o15a5UogAB6wWxHGmh3Nea0HOj7dRyozMqvN2puGXfXPUhQJPmuvxacTbbrG1kGdigfitimdJ9KgiY18mVEJ821itA6nAI5Qz1knO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=mvDK2Kfy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 519DpCBj000623;
	Sun, 9 Feb 2025 14:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SygarV5Te6pXC1mcPWfVGvOUuAarnxW+vio8wdN36N0=; b=mvDK2KfyJZiJ2j0F
	3Lnmm9Ml3RKBrzZ/a0N/BPJS7FJL5WpSKW5g4LzmAUu/I8IYngupPxLgyKCulrWI
	BhdnETdef19edpXa0w263q5ydwnMcahFRAXJrBWeiM8QMLj6NDRhzYnnnCJYwqe+
	mbRspeEt49avzoA6uiV5f2akgpSu45DBS6kAqEAwlsobCxzGfYh8CCYiv0cCIhaA
	cGA6bOq57d/PDcX4mCeAB4sn1Vo12Mu6qUcT1rwX703Fw2Uvuzxq0JroW7bkp3/2
	TZCOOCbTsUogGfQ1WG6cGq+gBLyy7vePYst9t9K+vGZmdkVljgiTA2UDreDSq+05
	iWta8A==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0f723pd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 09 Feb 2025 14:30:29 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 519EUSwI014760
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 9 Feb 2025 14:30:28 GMT
Received: from nsssdc-sh01-lnx.ap.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Sun, 9 Feb 2025 06:30:22 -0800
From: Luo Jie <quic_luoj@quicinc.com>
Date: Sun, 9 Feb 2025 22:29:40 +0800
Subject: [PATCH net-next v3 06/14] net: ethernet: qualcomm: Initialize the
 PPE scheduler settings
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20250209-qcom_ipq_ppe-v3-6-453ea18d3271@quicinc.com>
References: <20250209-qcom_ipq_ppe-v3-0-453ea18d3271@quicinc.com>
In-Reply-To: <20250209-qcom_ipq_ppe-v3-0-453ea18d3271@quicinc.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
	<davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski
	<kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring
	<robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>, Lei Wei <quic_leiwei@quicinc.com>,
        Suruchi Agarwal
	<quic_suruchia@quicinc.com>,
        Pavithra R <quic_pavir@quicinc.com>,
        "Simon
 Horman" <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook
	<kees@kernel.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        "Philipp
 Zabel" <p.zabel@pengutronix.de>
CC: <linux-arm-msm@vger.kernel.org>, <netdev@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-hardening@vger.kernel.org>,
        <quic_kkumarcs@quicinc.com>, <quic_linchen@quicinc.com>,
        <srinivas.kandagatla@linaro.org>, <bartosz.golaszewski@linaro.org>,
        <john@phrozen.org>, Luo Jie <quic_luoj@quicinc.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1739111388; l=28236;
 i=quic_luoj@quicinc.com; s=20250209; h=from:subject:message-id;
 bh=3IfswyCNzlVvhMus/q7yOcOalc2OmKd4UFO21CG9k+I=;
 b=asxguayM8lgA4k8JdkCwDjCmvPtsJ5e+br61LQ5pLNDHklmHk750we0/4q3GljygrM55OuGYC
 woFOVBpeH2KCMw3vseMK1RsAKurU9EFrja7dSDWYDSQ8BDPGoEiMtx8
X-Developer-Key: i=quic_luoj@quicinc.com; a=ed25519;
 pk=pzwy8bU5tJZ5UKGTv28n+QOuktaWuriznGmriA9Qkfc=
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: dUzjU_w-GI_pHyy1OwDcmkZm1rFbmeCi
X-Proofpoint-ORIG-GUID: dUzjU_w-GI_pHyy1OwDcmkZm1rFbmeCi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-09_06,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0 adultscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502090129

The PPE scheduler settings determine the priority of scheduling the
packet across the different hardware queues per PPE port.

Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
---
 drivers/net/ethernet/qualcomm/ppe/ppe_config.c | 788 ++++++++++++++++++++++++-
 drivers/net/ethernet/qualcomm/ppe/ppe_config.h |  37 ++
 drivers/net/ethernet/qualcomm/ppe/ppe_regs.h   |  97 +++
 3 files changed, 921 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/qualcomm/ppe/ppe_config.c b/drivers/net/ethernet/qualcomm/ppe/ppe_config.c
index d55e99656271..e5bea9a28a5d 100644
--- a/drivers/net/ethernet/qualcomm/ppe/ppe_config.c
+++ b/drivers/net/ethernet/qualcomm/ppe/ppe_config.c
@@ -16,6 +16,8 @@
 #include "ppe_config.h"
 #include "ppe_regs.h"
 
+#define PPE_QUEUE_SCH_PRI_NUM		8
+
 /**
  * struct ppe_bm_port_config - PPE BM port configuration.
  * @port_id_start: The fist BM port ID to configure.
@@ -66,6 +68,66 @@ struct ppe_qm_queue_config {
 	bool dynamic;
 };
 
+/**
+ * struct ppe_scheduler_bm_config - PPE arbitration for buffer config.
+ * @valid: Arbitration entry valid or not.
+ * @is_egress: Arbitration entry for egress or not.
+ * @port: Port ID to use arbitration entry.
+ * @second_valid: Second port valid or not.
+ * @second_port: Second port to use.
+ *
+ * Configure the scheduler settings for accessing and releasing the PPE buffers.
+ */
+struct ppe_scheduler_bm_config {
+	bool valid;
+	bool is_egress;
+	unsigned int port;
+	bool second_valid;
+	unsigned int second_port;
+};
+
+/**
+ * struct ppe_scheduler_qm_config - PPE arbitration for scheduler config.
+ * @ensch_port_bmp: Port bit map for enqueue scheduler.
+ * @ensch_port: Port ID to enqueue scheduler.
+ * @desch_port: Port ID to dequeue scheduler.
+ * @desch_second_valid: Dequeue for the second port valid or not.
+ * @desch_second_port: Second port ID to dequeue scheduler.
+ *
+ * Configure the scheduler settings for enqueuing and dequeuing packets on
+ * the PPE port.
+ */
+struct ppe_scheduler_qm_config {
+	unsigned int ensch_port_bmp;
+	unsigned int ensch_port;
+	unsigned int desch_port;
+	bool desch_second_valid;
+	unsigned int desch_second_port;
+};
+
+/**
+ * struct ppe_scheduler_port_config - PPE port scheduler config.
+ * @port: Port ID to be scheduled.
+ * @flow_level: Scheduler flow level or not.
+ * @node_id: Node ID, for level 0, queue ID is used.
+ * @loop_num: Loop number of scheduler config.
+ * @pri_max: Max priority configured.
+ * @flow_id: Strict priority ID.
+ * @drr_node_id: Node ID for scheduler.
+ *
+ * PPE port scheduler configuration which decides the priority in the
+ * packet scheduler for the egress port.
+ */
+struct ppe_scheduler_port_config {
+	unsigned int port;
+	bool flow_level;
+	unsigned int node_id;
+	unsigned int loop_num;
+	unsigned int pri_max;
+	unsigned int flow_id;
+	unsigned int drr_node_id;
+};
+
 /* Assign the share buffer number 1550 to group 0 by default. */
 static const int ipq9574_ppe_bm_group_config = 1550;
 
@@ -152,6 +214,599 @@ static const struct ppe_qm_queue_config ipq9574_ppe_qm_queue_config[] = {
 	},
 };
 
+/* Scheduler configuration for the assigning and releasing buffers for the
+ * packet passing through PPE, which is different per SoC.
+ */
+static const struct ppe_scheduler_bm_config ipq9574_ppe_sch_bm_config[] = {
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 7, 0, 0},
+	{1, 1, 7, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 2, 0, 0},
+	{1, 1, 2, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 3, 0, 0},
+	{1, 1, 3, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 7, 0, 0},
+	{1, 1, 7, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 4, 0, 0},
+	{1, 1, 4, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 2, 0, 0},
+	{1, 1, 2, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 7, 0, 0},
+	{1, 1, 7, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 3, 0, 0},
+	{1, 1, 3, 0, 0},
+	{1, 0, 1, 0, 0},
+	{1, 1, 1, 0, 0},
+	{1, 0, 0, 0, 0},
+	{1, 1, 0, 0, 0},
+	{1, 0, 5, 0, 0},
+	{1, 1, 5, 0, 0},
+	{1, 0, 6, 0, 0},
+	{1, 1, 6, 0, 0},
+	{1, 0, 4, 0, 0},
+	{1, 1, 4, 0, 0},
+	{1, 0, 7, 0, 0},
+	{1, 1, 7, 0, 0},
+};
+
+/* Scheduler configuration for dispatching packet on PPE queues, which
+ * is different per SoC.
+ */
+static const struct ppe_scheduler_qm_config ipq9574_ppe_sch_qm_config[] = {
+	{0x98, 6, 0, 1, 1},
+	{0x94, 5, 6, 1, 3},
+	{0x86, 0, 5, 1, 4},
+	{0x8C, 1, 6, 1, 0},
+	{0x1C, 7, 5, 1, 1},
+	{0x98, 2, 6, 1, 0},
+	{0x1C, 5, 7, 1, 1},
+	{0x34, 3, 6, 1, 0},
+	{0x8C, 4, 5, 1, 1},
+	{0x98, 2, 6, 1, 0},
+	{0x8C, 5, 4, 1, 1},
+	{0xA8, 0, 6, 1, 2},
+	{0x98, 5, 1, 1, 0},
+	{0x98, 6, 5, 1, 2},
+	{0x89, 1, 6, 1, 4},
+	{0xA4, 3, 0, 1, 1},
+	{0x8C, 5, 6, 1, 4},
+	{0xA8, 0, 2, 1, 1},
+	{0x98, 6, 5, 1, 0},
+	{0xC4, 4, 3, 1, 1},
+	{0x94, 6, 5, 1, 0},
+	{0x1C, 7, 6, 1, 1},
+	{0x98, 2, 5, 1, 0},
+	{0x1C, 6, 7, 1, 1},
+	{0x1C, 5, 6, 1, 0},
+	{0x94, 3, 5, 1, 1},
+	{0x8C, 4, 6, 1, 0},
+	{0x94, 1, 5, 1, 3},
+	{0x94, 6, 1, 1, 0},
+	{0xD0, 3, 5, 1, 2},
+	{0x98, 6, 0, 1, 1},
+	{0x94, 5, 6, 1, 3},
+	{0x94, 1, 5, 1, 0},
+	{0x98, 2, 6, 1, 1},
+	{0x8C, 4, 5, 1, 0},
+	{0x1C, 7, 6, 1, 1},
+	{0x8C, 0, 5, 1, 4},
+	{0x89, 1, 6, 1, 2},
+	{0x98, 5, 0, 1, 1},
+	{0x94, 6, 5, 1, 3},
+	{0x92, 0, 6, 1, 2},
+	{0x98, 1, 5, 1, 0},
+	{0x98, 6, 2, 1, 1},
+	{0xD0, 0, 5, 1, 3},
+	{0x94, 6, 0, 1, 1},
+	{0x8C, 5, 6, 1, 4},
+	{0x8C, 1, 5, 1, 0},
+	{0x1C, 6, 7, 1, 1},
+	{0x1C, 5, 6, 1, 0},
+	{0xB0, 2, 3, 1, 1},
+	{0xC4, 4, 5, 1, 0},
+	{0x8C, 6, 4, 1, 1},
+	{0xA4, 3, 6, 1, 0},
+	{0x1C, 5, 7, 1, 1},
+	{0x4C, 0, 5, 1, 4},
+	{0x8C, 6, 0, 1, 1},
+	{0x34, 7, 6, 1, 3},
+	{0x94, 5, 0, 1, 1},
+	{0x98, 6, 5, 1, 2},
+};
+
+static const struct ppe_scheduler_port_config ppe_port_sch_config[] = {
+	{
+		.port		= 0,
+		.flow_level	= true,
+		.node_id	= 0,
+		.loop_num	= 1,
+		.pri_max	= 1,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 0,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 8,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 16,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 24,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 32,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 40,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 48,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 56,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 256,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 0,
+		.flow_level	= false,
+		.node_id	= 264,
+		.loop_num	= 8,
+		.pri_max	= 8,
+		.flow_id	= 0,
+		.drr_node_id	= 0,
+	},
+	{
+		.port		= 1,
+		.flow_level	= true,
+		.node_id	= 36,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 1,
+		.drr_node_id	= 8,
+	},
+	{
+		.port		= 1,
+		.flow_level	= false,
+		.node_id	= 144,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 36,
+		.drr_node_id	= 48,
+	},
+	{
+		.port		= 1,
+		.flow_level	= false,
+		.node_id	= 272,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 36,
+		.drr_node_id	= 48,
+	},
+	{
+		.port		= 2,
+		.flow_level	= true,
+		.node_id	= 40,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 2,
+		.drr_node_id	= 12,
+	},
+	{
+		.port		= 2,
+		.flow_level	= false,
+		.node_id	= 160,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 40,
+		.drr_node_id	= 64,
+	},
+	{
+		.port		= 2,
+		.flow_level	= false,
+		.node_id	= 276,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 40,
+		.drr_node_id	= 64,
+	},
+	{
+		.port		= 3,
+		.flow_level	= true,
+		.node_id	= 44,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 3,
+		.drr_node_id	= 16,
+	},
+	{
+		.port		= 3,
+		.flow_level	= false,
+		.node_id	= 176,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 44,
+		.drr_node_id	= 80,
+	},
+	{
+		.port		= 3,
+		.flow_level	= false,
+		.node_id	= 280,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 44,
+		.drr_node_id	= 80,
+	},
+	{
+		.port		= 4,
+		.flow_level	= true,
+		.node_id	= 48,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 4,
+		.drr_node_id	= 20,
+	},
+	{
+		.port		= 4,
+		.flow_level	= false,
+		.node_id	= 192,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 48,
+		.drr_node_id	= 96,
+	},
+	{
+		.port		= 4,
+		.flow_level	= false,
+		.node_id	= 284,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 48,
+		.drr_node_id	= 96,
+	},
+	{
+		.port		= 5,
+		.flow_level	= true,
+		.node_id	= 52,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 5,
+		.drr_node_id	= 24,
+	},
+	{
+		.port		= 5,
+		.flow_level	= false,
+		.node_id	= 208,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 52,
+		.drr_node_id	= 112,
+	},
+	{
+		.port		= 5,
+		.flow_level	= false,
+		.node_id	= 288,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 52,
+		.drr_node_id	= 112,
+	},
+	{
+		.port		= 6,
+		.flow_level	= true,
+		.node_id	= 56,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 6,
+		.drr_node_id	= 28,
+	},
+	{
+		.port		= 6,
+		.flow_level	= false,
+		.node_id	= 224,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 56,
+		.drr_node_id	= 128,
+	},
+	{
+		.port		= 6,
+		.flow_level	= false,
+		.node_id	= 292,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 56,
+		.drr_node_id	= 128,
+	},
+	{
+		.port		= 7,
+		.flow_level	= true,
+		.node_id	= 60,
+		.loop_num	= 2,
+		.pri_max	= 0,
+		.flow_id	= 7,
+		.drr_node_id	= 32,
+	},
+	{
+		.port		= 7,
+		.flow_level	= false,
+		.node_id	= 240,
+		.loop_num	= 16,
+		.pri_max	= 8,
+		.flow_id	= 60,
+		.drr_node_id	= 144,
+	},
+	{
+		.port		= 7,
+		.flow_level	= false,
+		.node_id	= 296,
+		.loop_num	= 4,
+		.pri_max	= 4,
+		.flow_id	= 60,
+		.drr_node_id	= 144,
+	},
+};
+
+/* Set the PPE queue level scheduler configuration. */
+static int ppe_scheduler_l0_queue_map_set(struct ppe_device *ppe_dev,
+					  int node_id, int port,
+					  struct ppe_scheduler_cfg scheduler_cfg)
+{
+	u32 val, reg;
+	int ret;
+
+	reg = PPE_L0_FLOW_MAP_TBL_ADDR + node_id * PPE_L0_FLOW_MAP_TBL_INC;
+	val = FIELD_PREP(PPE_L0_FLOW_MAP_TBL_FLOW_ID, scheduler_cfg.flow_id);
+	val |= FIELD_PREP(PPE_L0_FLOW_MAP_TBL_C_PRI, scheduler_cfg.pri);
+	val |= FIELD_PREP(PPE_L0_FLOW_MAP_TBL_E_PRI, scheduler_cfg.pri);
+	val |= FIELD_PREP(PPE_L0_FLOW_MAP_TBL_C_NODE_WT, scheduler_cfg.drr_node_wt);
+	val |= FIELD_PREP(PPE_L0_FLOW_MAP_TBL_E_NODE_WT, scheduler_cfg.drr_node_wt);
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	reg = PPE_L0_C_FLOW_CFG_TBL_ADDR +
+	      (scheduler_cfg.flow_id * PPE_QUEUE_SCH_PRI_NUM + scheduler_cfg.pri) *
+	      PPE_L0_C_FLOW_CFG_TBL_INC;
+	val = FIELD_PREP(PPE_L0_C_FLOW_CFG_TBL_NODE_ID, scheduler_cfg.drr_node_id);
+	val |= FIELD_PREP(PPE_L0_C_FLOW_CFG_TBL_NODE_CREDIT_UNIT, scheduler_cfg.unit_is_packet);
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	reg = PPE_L0_E_FLOW_CFG_TBL_ADDR +
+	      (scheduler_cfg.flow_id * PPE_QUEUE_SCH_PRI_NUM + scheduler_cfg.pri) *
+	      PPE_L0_E_FLOW_CFG_TBL_INC;
+	val = FIELD_PREP(PPE_L0_E_FLOW_CFG_TBL_NODE_ID, scheduler_cfg.drr_node_id);
+	val |= FIELD_PREP(PPE_L0_E_FLOW_CFG_TBL_NODE_CREDIT_UNIT, scheduler_cfg.unit_is_packet);
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	reg = PPE_L0_FLOW_PORT_MAP_TBL_ADDR + node_id * PPE_L0_FLOW_PORT_MAP_TBL_INC;
+	val = FIELD_PREP(PPE_L0_FLOW_PORT_MAP_TBL_PORT_NUM, port);
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	reg = PPE_L0_COMP_CFG_TBL_ADDR + node_id * PPE_L0_COMP_CFG_TBL_INC;
+	val = FIELD_PREP(PPE_L0_COMP_CFG_TBL_NODE_METER_LEN, scheduler_cfg.frame_mode);
+
+	return regmap_update_bits(ppe_dev->regmap, reg,
+				  PPE_L0_COMP_CFG_TBL_NODE_METER_LEN,
+				  val);
+}
+
+/* Set the PPE flow level scheduler configuration. */
+static int ppe_scheduler_l1_queue_map_set(struct ppe_device *ppe_dev,
+					  int node_id, int port,
+					  struct ppe_scheduler_cfg scheduler_cfg)
+{
+	u32 val, reg;
+	int ret;
+
+	val = FIELD_PREP(PPE_L1_FLOW_MAP_TBL_FLOW_ID, scheduler_cfg.flow_id);
+	val |= FIELD_PREP(PPE_L1_FLOW_MAP_TBL_C_PRI, scheduler_cfg.pri);
+	val |= FIELD_PREP(PPE_L1_FLOW_MAP_TBL_E_PRI, scheduler_cfg.pri);
+	val |= FIELD_PREP(PPE_L1_FLOW_MAP_TBL_C_NODE_WT, scheduler_cfg.drr_node_wt);
+	val |= FIELD_PREP(PPE_L1_FLOW_MAP_TBL_E_NODE_WT, scheduler_cfg.drr_node_wt);
+	reg = PPE_L1_FLOW_MAP_TBL_ADDR + node_id * PPE_L1_FLOW_MAP_TBL_INC;
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(PPE_L1_C_FLOW_CFG_TBL_NODE_ID, scheduler_cfg.drr_node_id);
+	val |= FIELD_PREP(PPE_L1_C_FLOW_CFG_TBL_NODE_CREDIT_UNIT, scheduler_cfg.unit_is_packet);
+	reg = PPE_L1_C_FLOW_CFG_TBL_ADDR +
+	      (scheduler_cfg.flow_id * PPE_QUEUE_SCH_PRI_NUM + scheduler_cfg.pri) *
+	      PPE_L1_C_FLOW_CFG_TBL_INC;
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(PPE_L1_E_FLOW_CFG_TBL_NODE_ID, scheduler_cfg.drr_node_id);
+	val |= FIELD_PREP(PPE_L1_E_FLOW_CFG_TBL_NODE_CREDIT_UNIT, scheduler_cfg.unit_is_packet);
+	reg = PPE_L1_E_FLOW_CFG_TBL_ADDR +
+		(scheduler_cfg.flow_id * PPE_QUEUE_SCH_PRI_NUM + scheduler_cfg.pri) *
+		PPE_L1_E_FLOW_CFG_TBL_INC;
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(PPE_L1_FLOW_PORT_MAP_TBL_PORT_NUM, port);
+	reg = PPE_L1_FLOW_PORT_MAP_TBL_ADDR + node_id * PPE_L1_FLOW_PORT_MAP_TBL_INC;
+
+	ret = regmap_write(ppe_dev->regmap, reg, val);
+	if (ret)
+		return ret;
+
+	reg = PPE_L1_COMP_CFG_TBL_ADDR + node_id * PPE_L1_COMP_CFG_TBL_INC;
+	val = FIELD_PREP(PPE_L1_COMP_CFG_TBL_NODE_METER_LEN, scheduler_cfg.frame_mode);
+
+	return regmap_update_bits(ppe_dev->regmap, reg, PPE_L1_COMP_CFG_TBL_NODE_METER_LEN, val);
+}
+
+/**
+ * ppe_queue_scheduler_set - Configure scheduler for PPE hardware queue
+ * @ppe_dev: PPE device
+ * @node_id: PPE queue ID or flow ID
+ * @flow_level: Flow level scheduler or queue level scheduler
+ * @port: PPE port ID set scheduler configuration
+ * @scheduler_cfg: PPE scheduler configuration
+ *
+ * PPE scheduler configuration supports queue level and flow level on
+ * the PPE egress port.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int ppe_queue_scheduler_set(struct ppe_device *ppe_dev,
+			    int node_id, bool flow_level, int port,
+			    struct ppe_scheduler_cfg scheduler_cfg)
+{
+	if (flow_level)
+		return ppe_scheduler_l1_queue_map_set(ppe_dev, node_id,
+						      port, scheduler_cfg);
+
+	return ppe_scheduler_l0_queue_map_set(ppe_dev, node_id,
+					      port, scheduler_cfg);
+}
+
 static int ppe_config_bm_threshold(struct ppe_device *ppe_dev, int bm_port_id,
 				   const struct ppe_bm_port_config port_cfg)
 {
@@ -358,6 +1013,133 @@ static int ppe_config_qm(struct ppe_device *ppe_dev)
 	return ret;
 }
 
+static int ppe_node_scheduler_config(struct ppe_device *ppe_dev,
+				     const struct ppe_scheduler_port_config config)
+{
+	struct ppe_scheduler_cfg sch_cfg;
+	int ret, i;
+
+	for (i = 0; i < config.loop_num; i++) {
+		if (!config.pri_max) {
+			/* Round robin scheduler without priority. */
+			sch_cfg.flow_id = config.flow_id;
+			sch_cfg.pri = 0;
+			sch_cfg.drr_node_id = config.drr_node_id;
+		} else {
+			sch_cfg.flow_id = config.flow_id + (i / config.pri_max);
+			sch_cfg.pri = i % config.pri_max;
+			sch_cfg.drr_node_id = config.drr_node_id + i;
+		}
+
+		/* Scheduler weight, must be more than 0. */
+		sch_cfg.drr_node_wt = 1;
+		/* Byte based to be scheduled. */
+		sch_cfg.unit_is_packet = false;
+		/* Frame + CRC calculated. */
+		sch_cfg.frame_mode = PPE_SCH_WITH_FRAME_CRC;
+
+		ret = ppe_queue_scheduler_set(ppe_dev, config.node_id + i,
+					      config.flow_level,
+					      config.port,
+					      sch_cfg);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+/* Initialize scheduler settings for PPE buffer utilization and dispatching
+ * packet on PPE queue.
+ */
+static int ppe_config_scheduler(struct ppe_device *ppe_dev)
+{
+	const struct ppe_scheduler_port_config *port_cfg;
+	const struct ppe_scheduler_qm_config *qm_cfg;
+	const struct ppe_scheduler_bm_config *bm_cfg;
+	int ret, i, count;
+	u32 val, reg;
+
+	count = ARRAY_SIZE(ipq9574_ppe_sch_bm_config);
+	bm_cfg = ipq9574_ppe_sch_bm_config;
+
+	/* Configure the depth of BM scheduler entries. */
+	val = FIELD_PREP(PPE_BM_SCH_CTRL_SCH_DEPTH, count);
+	val |= FIELD_PREP(PPE_BM_SCH_CTRL_SCH_OFFSET, 0);
+	val |= FIELD_PREP(PPE_BM_SCH_CTRL_SCH_EN, 1);
+
+	ret = regmap_write(ppe_dev->regmap, PPE_BM_SCH_CTRL_ADDR, val);
+	if (ret)
+		goto sch_config_fail;
+
+	/* Configure each BM scheduler entry with the valid ingress port and
+	 * egress port, the second port takes effect when the specified port
+	 * is in the inactive state.
+	 */
+	for (i = 0; i < count; i++) {
+		val = FIELD_PREP(PPE_BM_SCH_CFG_TBL_VALID, bm_cfg[i].valid);
+		val |= FIELD_PREP(PPE_BM_SCH_CFG_TBL_DIR, bm_cfg[i].is_egress);
+		val |= FIELD_PREP(PPE_BM_SCH_CFG_TBL_PORT_NUM, bm_cfg[i].port);
+		val |= FIELD_PREP(PPE_BM_SCH_CFG_TBL_SECOND_PORT_VALID, bm_cfg[i].second_valid);
+		val |= FIELD_PREP(PPE_BM_SCH_CFG_TBL_SECOND_PORT, bm_cfg[i].second_port);
+
+		reg = PPE_BM_SCH_CFG_TBL_ADDR + i * PPE_BM_SCH_CFG_TBL_INC;
+		ret = regmap_write(ppe_dev->regmap, reg, val);
+		if (ret)
+			goto sch_config_fail;
+	}
+
+	count = ARRAY_SIZE(ipq9574_ppe_sch_qm_config);
+	qm_cfg = ipq9574_ppe_sch_qm_config;
+
+	/* Configure the depth of QM scheduler entries. */
+	val = FIELD_PREP(PPE_PSCH_SCH_DEPTH_CFG_SCH_DEPTH, count);
+	ret = regmap_write(ppe_dev->regmap, PPE_PSCH_SCH_DEPTH_CFG_ADDR, val);
+	if (ret)
+		goto sch_config_fail;
+
+	/* Configure each QM scheduler entry with enqueue port and dequeue
+	 * port, the second port takes effect when the specified dequeue
+	 * port is in the inactive port.
+	 */
+	for (i = 0; i < count; i++) {
+		val = FIELD_PREP(PPE_PSCH_SCH_CFG_TBL_ENS_PORT_BITMAP,
+				 qm_cfg[i].ensch_port_bmp);
+		val |= FIELD_PREP(PPE_PSCH_SCH_CFG_TBL_ENS_PORT,
+				  qm_cfg[i].ensch_port);
+		val |= FIELD_PREP(PPE_PSCH_SCH_CFG_TBL_DES_PORT,
+				  qm_cfg[i].desch_port);
+		val |= FIELD_PREP(PPE_PSCH_SCH_CFG_TBL_DES_SECOND_PORT_EN,
+				  qm_cfg[i].desch_second_valid);
+		val |= FIELD_PREP(PPE_PSCH_SCH_CFG_TBL_DES_SECOND_PORT,
+				  qm_cfg[i].desch_second_port);
+
+		reg = PPE_PSCH_SCH_CFG_TBL_ADDR + i * PPE_PSCH_SCH_CFG_TBL_INC;
+		ret = regmap_write(ppe_dev->regmap, reg, val);
+		if (ret)
+			goto sch_config_fail;
+	}
+
+	count = ARRAY_SIZE(ppe_port_sch_config);
+	port_cfg = ppe_port_sch_config;
+
+	/* Configure scheduler per PPE queue or flow. */
+	for (i = 0; i < count; i++) {
+		if (port_cfg[i].port >= ppe_dev->num_ports)
+			break;
+
+		ret = ppe_node_scheduler_config(ppe_dev, port_cfg[i]);
+		if (ret)
+			goto sch_config_fail;
+	}
+
+	return 0;
+
+sch_config_fail:
+	dev_err(ppe_dev->dev, "PPE scheduler arbitration config error %d\n", ret);
+	return ret;
+};
+
 int ppe_hw_config(struct ppe_device *ppe_dev)
 {
 	int ret;
@@ -366,5 +1148,9 @@ int ppe_hw_config(struct ppe_device *ppe_dev)
 	if (ret)
 		return ret;
 
-	return ppe_config_qm(ppe_dev);
+	ret = ppe_config_qm(ppe_dev);
+	if (ret)
+		return ret;
+
+	return ppe_config_scheduler(ppe_dev);
 }
diff --git a/drivers/net/ethernet/qualcomm/ppe/ppe_config.h b/drivers/net/ethernet/qualcomm/ppe/ppe_config.h
index 7b2f6a71cd4c..f28cfe7e1548 100644
--- a/drivers/net/ethernet/qualcomm/ppe/ppe_config.h
+++ b/drivers/net/ethernet/qualcomm/ppe/ppe_config.h
@@ -8,5 +8,42 @@
 
 #include "ppe.h"
 
+/**
+ * enum ppe_scheduler_frame_mode - PPE scheduler frame mode.
+ * @PPE_SCH_WITH_IPG_PREAMBLE_FRAME_CRC: The scheduled frame includes IPG,
+ * preamble, Ethernet packet and CRC.
+ * @PPE_SCH_WITH_FRAME_CRC: The scheduled frame includes Ethernet frame and CRC
+ * excluding IPG and preamble.
+ * @PPE_SCH_WITH_L3_PAYLOAD: The scheduled frame includes layer 3 packet data.
+ */
+enum ppe_scheduler_frame_mode {
+	PPE_SCH_WITH_IPG_PREAMBLE_FRAME_CRC = 0,
+	PPE_SCH_WITH_FRAME_CRC = 1,
+	PPE_SCH_WITH_L3_PAYLOAD = 2,
+};
+
+/**
+ * struct ppe_scheduler_cfg - PPE scheduler configuration.
+ * @flow_id: PPE flow ID.
+ * @pri: Scheduler priority.
+ * @drr_node_id: Node ID for scheduled traffic.
+ * @drr_node_wt: Weight for scheduled traffic.
+ * @unit_is_packet: Packet based or byte based unit for scheduled traffic.
+ * @frame_mode: Packet mode to be scheduled.
+ *
+ * PPE scheduler supports commit rate and exceed rate configurations.
+ */
+struct ppe_scheduler_cfg {
+	int flow_id;
+	int pri;
+	int drr_node_id;
+	int drr_node_wt;
+	bool unit_is_packet;
+	enum ppe_scheduler_frame_mode frame_mode;
+};
+
 int ppe_hw_config(struct ppe_device *ppe_dev);
+int ppe_queue_scheduler_set(struct ppe_device *ppe_dev,
+			    int node_id, bool flow_level, int port,
+			    struct ppe_scheduler_cfg scheduler_cfg);
 #endif
diff --git a/drivers/net/ethernet/qualcomm/ppe/ppe_regs.h b/drivers/net/ethernet/qualcomm/ppe/ppe_regs.h
index 6eac3ab8e58b..4c832179d539 100644
--- a/drivers/net/ethernet/qualcomm/ppe/ppe_regs.h
+++ b/drivers/net/ethernet/qualcomm/ppe/ppe_regs.h
@@ -9,16 +9,113 @@
 
 #include <linux/bitfield.h>
 
+/* PPE scheduler configurations for buffer manager block. */
+#define PPE_BM_SCH_CTRL_ADDR			0xb000
+#define PPE_BM_SCH_CTRL_INC			4
+#define PPE_BM_SCH_CTRL_SCH_DEPTH		GENMASK(7, 0)
+#define PPE_BM_SCH_CTRL_SCH_OFFSET		GENMASK(14, 8)
+#define PPE_BM_SCH_CTRL_SCH_EN			BIT(31)
+
+#define PPE_BM_SCH_CFG_TBL_ADDR			0xc000
+#define PPE_BM_SCH_CFG_TBL_ENTRIES		128
+#define PPE_BM_SCH_CFG_TBL_INC			0x10
+#define PPE_BM_SCH_CFG_TBL_PORT_NUM		GENMASK(3, 0)
+#define PPE_BM_SCH_CFG_TBL_DIR			BIT(4)
+#define PPE_BM_SCH_CFG_TBL_VALID		BIT(5)
+#define PPE_BM_SCH_CFG_TBL_SECOND_PORT_VALID	BIT(6)
+#define PPE_BM_SCH_CFG_TBL_SECOND_PORT		GENMASK(11, 8)
+
 /* PPE queue counters enable/disable control. */
 #define PPE_EG_BRIDGE_CONFIG_ADDR		0x20044
 #define PPE_EG_BRIDGE_CONFIG_QUEUE_CNT_EN	BIT(2)
 
+/* Port scheduler global config. */
+#define PPE_PSCH_SCH_DEPTH_CFG_ADDR		0x400000
+#define PPE_PSCH_SCH_DEPTH_CFG_INC		4
+#define PPE_PSCH_SCH_DEPTH_CFG_SCH_DEPTH	GENMASK(7, 0)
+
+/* PPE queue level scheduler configurations. */
+#define PPE_L0_FLOW_MAP_TBL_ADDR		0x402000
+#define PPE_L0_FLOW_MAP_TBL_ENTRIES		300
+#define PPE_L0_FLOW_MAP_TBL_INC			0x10
+#define PPE_L0_FLOW_MAP_TBL_FLOW_ID		GENMASK(5, 0)
+#define PPE_L0_FLOW_MAP_TBL_C_PRI		GENMASK(8, 6)
+#define PPE_L0_FLOW_MAP_TBL_E_PRI		GENMASK(11, 9)
+#define PPE_L0_FLOW_MAP_TBL_C_NODE_WT		GENMASK(21, 12)
+#define PPE_L0_FLOW_MAP_TBL_E_NODE_WT		GENMASK(31, 22)
+
+#define PPE_L0_C_FLOW_CFG_TBL_ADDR		0x404000
+#define PPE_L0_C_FLOW_CFG_TBL_ENTRIES		512
+#define PPE_L0_C_FLOW_CFG_TBL_INC		0x10
+#define PPE_L0_C_FLOW_CFG_TBL_NODE_ID		GENMASK(7, 0)
+#define PPE_L0_C_FLOW_CFG_TBL_NODE_CREDIT_UNIT	BIT(8)
+
+#define PPE_L0_E_FLOW_CFG_TBL_ADDR		0x406000
+#define PPE_L0_E_FLOW_CFG_TBL_ENTRIES		512
+#define PPE_L0_E_FLOW_CFG_TBL_INC		0x10
+#define PPE_L0_E_FLOW_CFG_TBL_NODE_ID		GENMASK(7, 0)
+#define PPE_L0_E_FLOW_CFG_TBL_NODE_CREDIT_UNIT	BIT(8)
+
+#define PPE_L0_FLOW_PORT_MAP_TBL_ADDR		0x408000
+#define PPE_L0_FLOW_PORT_MAP_TBL_ENTRIES	300
+#define PPE_L0_FLOW_PORT_MAP_TBL_INC		0x10
+#define PPE_L0_FLOW_PORT_MAP_TBL_PORT_NUM	GENMASK(3, 0)
+
+#define PPE_L0_COMP_CFG_TBL_ADDR		0x428000
+#define PPE_L0_COMP_CFG_TBL_ENTRIES		300
+#define PPE_L0_COMP_CFG_TBL_INC			0x10
+#define PPE_L0_COMP_CFG_TBL_SHAPER_METER_LEN	GENMASK(1, 0)
+#define PPE_L0_COMP_CFG_TBL_NODE_METER_LEN	GENMASK(3, 2)
+
 /* Table addresses for per-queue dequeue setting. */
 #define PPE_DEQ_OPR_TBL_ADDR			0x430000
 #define PPE_DEQ_OPR_TBL_ENTRIES			300
 #define PPE_DEQ_OPR_TBL_INC			0x10
 #define PPE_DEQ_OPR_TBL_DEQ_DISABLE		BIT(0)
 
+/* PPE flow level scheduler configurations. */
+#define PPE_L1_FLOW_MAP_TBL_ADDR		0x440000
+#define PPE_L1_FLOW_MAP_TBL_ENTRIES		64
+#define PPE_L1_FLOW_MAP_TBL_INC			0x10
+#define PPE_L1_FLOW_MAP_TBL_FLOW_ID		GENMASK(3, 0)
+#define PPE_L1_FLOW_MAP_TBL_C_PRI		GENMASK(6, 4)
+#define PPE_L1_FLOW_MAP_TBL_E_PRI		GENMASK(9, 7)
+#define PPE_L1_FLOW_MAP_TBL_C_NODE_WT		GENMASK(19, 10)
+#define PPE_L1_FLOW_MAP_TBL_E_NODE_WT		GENMASK(29, 20)
+
+#define PPE_L1_C_FLOW_CFG_TBL_ADDR		0x442000
+#define PPE_L1_C_FLOW_CFG_TBL_ENTRIES		64
+#define PPE_L1_C_FLOW_CFG_TBL_INC		0x10
+#define PPE_L1_C_FLOW_CFG_TBL_NODE_ID		GENMASK(5, 0)
+#define PPE_L1_C_FLOW_CFG_TBL_NODE_CREDIT_UNIT	BIT(6)
+
+#define PPE_L1_E_FLOW_CFG_TBL_ADDR		0x444000
+#define PPE_L1_E_FLOW_CFG_TBL_ENTRIES		64
+#define PPE_L1_E_FLOW_CFG_TBL_INC		0x10
+#define PPE_L1_E_FLOW_CFG_TBL_NODE_ID		GENMASK(5, 0)
+#define PPE_L1_E_FLOW_CFG_TBL_NODE_CREDIT_UNIT	BIT(6)
+
+#define PPE_L1_FLOW_PORT_MAP_TBL_ADDR		0x446000
+#define PPE_L1_FLOW_PORT_MAP_TBL_ENTRIES	64
+#define PPE_L1_FLOW_PORT_MAP_TBL_INC		0x10
+#define PPE_L1_FLOW_PORT_MAP_TBL_PORT_NUM	GENMASK(3, 0)
+
+#define PPE_L1_COMP_CFG_TBL_ADDR		0x46a000
+#define PPE_L1_COMP_CFG_TBL_ENTRIES		64
+#define PPE_L1_COMP_CFG_TBL_INC			0x10
+#define PPE_L1_COMP_CFG_TBL_SHAPER_METER_LEN	GENMASK(1, 0)
+#define PPE_L1_COMP_CFG_TBL_NODE_METER_LEN	GENMASK(3, 2)
+
+/* PPE port scheduler configurations for egress. */
+#define PPE_PSCH_SCH_CFG_TBL_ADDR		0x47a000
+#define PPE_PSCH_SCH_CFG_TBL_ENTRIES		128
+#define PPE_PSCH_SCH_CFG_TBL_INC		0x10
+#define PPE_PSCH_SCH_CFG_TBL_DES_PORT		GENMASK(3, 0)
+#define PPE_PSCH_SCH_CFG_TBL_ENS_PORT		GENMASK(7, 4)
+#define PPE_PSCH_SCH_CFG_TBL_ENS_PORT_BITMAP	GENMASK(15, 8)
+#define PPE_PSCH_SCH_CFG_TBL_DES_SECOND_PORT_EN	BIT(16)
+#define PPE_PSCH_SCH_CFG_TBL_DES_SECOND_PORT	GENMASK(20, 17)
+
 /* There are 15 BM ports and 4 BM groups supported by PPE.
  * BM port (0-7) is for EDMA port 0, BM port (8-13) is for
  * PPE physical port 1-6 and BM port 14 is for EIP port.

-- 
2.34.1


