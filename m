Return-Path: <devicetree+bounces-158261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA43A65620
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 16:43:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CE8A7AA375
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 15:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A950B24C070;
	Mon, 17 Mar 2025 15:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="O2XSQz0v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7406624886D;
	Mon, 17 Mar 2025 15:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742226187; cv=none; b=EJ+sGYJNZz+s/G9xRSpsz8pqs1mkuTO9u+Be/waxIDyU5bEzElYrMY+I/kBvC0fQVOZcXOpgUTjP3l/i2G2VgccHaXFpecj2FxT1jKuo/XuItuI80H44I2aZRmEeJKCGuPWo017gMNmmaZFzOUmXwK0JhCkjZ2GZmJzaG2v9QFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742226187; c=relaxed/simple;
	bh=5QJ7TDabCy6zwUUQIveKvg9swUitpH7LPC0qskHZtog=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kQ2D4OBUFoSNTsLxO/fXuTpa1fBY3JnU6HZRR/jyfU8CfdUqpwrauX6cj8Z7vIXsHfQtUO5L0VgpTEIPqz0oKaGkF5XE9r4AgWtHX0gP2JLkUDa8nkQ2/nG7CO9+c0naIu39j276/4KCthwE6vhAoVrYl3W+VG5Nje4vq7dInO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=O2XSQz0v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52HAkSFt016308;
	Mon, 17 Mar 2025 15:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qGsEDYvGf4vo8Ebr18/Y5ig7z3L9b3i9HM2SFs4Kgd4=; b=O2XSQz0vjQgQttY4
	wYE+vbT9pd+yQnoPnIg8WUWPt3yMRb6lKA/yefm+krilyY/k3Q3nBQu4/6cc8Vg+
	6J8v5w3LUCRkGM9JgLqinKPrPXNBtYki3BFR4woJjgbl3WCY23F6HZU/4TWNgpD1
	KuMGF510+aAvED5v1bCUDDgUoh3ZARZuCEz4G41lixeqgYYv4TpmjrD0xwzYqC+Q
	gxk6ruDZNT2fOMQVOowYqenFMWNR/Ju8oNthJ6RnJxIPyGXh2UeJ/TjZx7XSWUN0
	cbML8m8yRprC+qjDDYHaQY3p/BT5eNTffLEzqbFjwC2aAV9Caz1S5/NroypYFg50
	oJ60IA==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1t4n6mc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Mar 2025 15:42:56 +0000 (GMT)
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA03.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 52HFgtMK015289
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 17 Mar 2025 15:42:55 GMT
Received: from hu-rajkbhag-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 17 Mar 2025 08:42:50 -0700
From: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
To: <ath12k@lists.infradead.org>
CC: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        <linux-wireless@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        P Praneesh
	<quic_ppranees@quicinc.com>,
        Balamurugan S <quic_bselvara@quicinc.com>,
        "Raj
 Kumar Bhagat" <quic_rajkbhag@quicinc.com>,
        Vasanthakumar Thiagarajan
	<vasanthakumar.thiagarajan@oss.qualcomm.com>
Subject: [PATCH ath-next v10 03/13] wifi: ath12k: refactor ath12k_hw_regs structure
Date: Mon, 17 Mar 2025 21:11:40 +0530
Message-ID: <20250317154150.1361364-4-quic_rajkbhag@quicinc.com>
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
X-Authority-Analysis: v=2.4 cv=VLPdn8PX c=1 sm=1 tr=0 ts=67d84300 cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=0b9HUTbONrYHnOzTNYgA:9 a=RVmHIydaz68A:10
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: FpGZLH_PTCY90jx07gmkT1uySDHuU-I4
X-Proofpoint-GUID: FpGZLH_PTCY90jx07gmkT1uySDHuU-I4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-17_06,2025-03-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 clxscore=1015 mlxscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503170113

From: P Praneesh <quic_ppranees@quicinc.com>

IPQ5332 device have different register address values for the below
registers:

HAL_TCL1_RING_BASE_LSB
HAL_TCL1_RING_BASE_MSB
HAL_TCL2_RING_BASE_LSB

HAL_SEQ_WCSS_UMAC_CE0_SRC_REG
HAL_SEQ_WCSS_UMAC_CE0_DST_REG
HAL_SEQ_WCSS_UMAC_CE1_SRC_REG
HAL_SEQ_WCSS_UMAC_CE1_DST_REG

Hence, refactor ath12k_hw_regs structure to accommodate these changes
in IPQ5332.

Tested-on: IPQ5332 hw1.0 AHB WLAN.WBE.1.3.1-00130-QCAHKSWPL_SILICONZ-1
Tested-on: QCN9274 hw2.0 PCI WLAN.WBE.1.1.1-00210-QCAHKSWPL_SILICONZ-1

Signed-off-by: P Praneesh <quic_ppranees@quicinc.com>
Co-developed-by: Balamurugan S <quic_bselvara@quicinc.com>
Signed-off-by: Balamurugan S <quic_bselvara@quicinc.com>
Signed-off-by: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
Reviewed-by: Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>
---
 drivers/net/wireless/ath/ath12k/hal.c | 84 +++++++++++++--------------
 drivers/net/wireless/ath/ath12k/hal.h | 63 +++++++++++---------
 drivers/net/wireless/ath/ath12k/hw.c  | 29 ++++++++-
 drivers/net/wireless/ath/ath12k/hw.h  | 10 +++-
 4 files changed, 114 insertions(+), 72 deletions(-)

diff --git a/drivers/net/wireless/ath/ath12k/hal.c b/drivers/net/wireless/ath/ath12k/hal.c
index cd59ff8e6c7b..031f76d88bef 100644
--- a/drivers/net/wireless/ath/ath12k/hal.c
+++ b/drivers/net/wireless/ath/ath12k/hal.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: BSD-3-Clause-Clear
 /*
  * Copyright (c) 2018-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2021-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2021-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 #include <linux/dma-mapping.h>
 #include "hal_tx.h"
@@ -552,9 +552,9 @@ static int ath12k_hal_srng_create_config_qcn9274(struct ath12k_base *ab)
 	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_REO_REG + HAL_REO_STATUS_HP;
 
 	s = &hal->srng_config[HAL_TCL_DATA];
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL1_RING_BASE_LSB;
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL1_RING_BASE_LSB(ab);
 	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL1_RING_HP;
-	s->reg_size[0] = HAL_TCL2_RING_BASE_LSB - HAL_TCL1_RING_BASE_LSB;
+	s->reg_size[0] = HAL_TCL2_RING_BASE_LSB(ab) - HAL_TCL1_RING_BASE_LSB(ab);
 	s->reg_size[1] = HAL_TCL2_RING_HP - HAL_TCL1_RING_HP;
 
 	s = &hal->srng_config[HAL_TCL_CMD];
@@ -566,29 +566,29 @@ static int ath12k_hal_srng_create_config_qcn9274(struct ath12k_base *ab)
 	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL_STATUS_RING_HP;
 
 	s = &hal->srng_config[HAL_CE_SRC];
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG + HAL_CE_DST_RING_BASE_LSB;
-	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG + HAL_CE_DST_RING_HP;
-	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG;
-	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG;
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab) + HAL_CE_DST_RING_BASE_LSB;
+	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab) + HAL_CE_DST_RING_HP;
+	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab);
+	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab);
 
 	s = &hal->srng_config[HAL_CE_DST];
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG + HAL_CE_DST_RING_BASE_LSB;
-	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG + HAL_CE_DST_RING_HP;
-	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
-	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) + HAL_CE_DST_RING_BASE_LSB;
+	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) + HAL_CE_DST_RING_HP;
+	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
+	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
 
 	s = &hal->srng_config[HAL_CE_DST_STATUS];
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG +
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) +
 		HAL_CE_DST_STATUS_RING_BASE_LSB;
-	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG + HAL_CE_DST_STATUS_RING_HP;
-	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
-	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
+	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) + HAL_CE_DST_STATUS_RING_HP;
+	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
+	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
 
 	s = &hal->srng_config[HAL_WBM_IDLE_LINK];
 	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_WBM_REG + HAL_WBM_IDLE_LINK_RING_BASE_LSB(ab);
@@ -1371,9 +1371,9 @@ static int ath12k_hal_srng_create_config_wcn7850(struct ath12k_base *ab)
 
 	s = &hal->srng_config[HAL_TCL_DATA];
 	s->max_rings = 5;
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL1_RING_BASE_LSB;
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL1_RING_BASE_LSB(ab);
 	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_TCL_REG + HAL_TCL1_RING_HP;
-	s->reg_size[0] = HAL_TCL2_RING_BASE_LSB - HAL_TCL1_RING_BASE_LSB;
+	s->reg_size[0] = HAL_TCL2_RING_BASE_LSB(ab) - HAL_TCL1_RING_BASE_LSB(ab);
 	s->reg_size[1] = HAL_TCL2_RING_HP - HAL_TCL1_RING_HP;
 
 	s = &hal->srng_config[HAL_TCL_CMD];
@@ -1386,31 +1386,31 @@ static int ath12k_hal_srng_create_config_wcn7850(struct ath12k_base *ab)
 
 	s = &hal->srng_config[HAL_CE_SRC];
 	s->max_rings = 12;
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG + HAL_CE_DST_RING_BASE_LSB;
-	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG + HAL_CE_DST_RING_HP;
-	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG;
-	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG;
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab) + HAL_CE_DST_RING_BASE_LSB;
+	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab) + HAL_CE_DST_RING_HP;
+	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab);
+	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_SRC_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab);
 
 	s = &hal->srng_config[HAL_CE_DST];
 	s->max_rings = 12;
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG + HAL_CE_DST_RING_BASE_LSB;
-	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG + HAL_CE_DST_RING_HP;
-	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
-	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) + HAL_CE_DST_RING_BASE_LSB;
+	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) + HAL_CE_DST_RING_HP;
+	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
+	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
 
 	s = &hal->srng_config[HAL_CE_DST_STATUS];
 	s->max_rings = 12;
-	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG +
+	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) +
 		HAL_CE_DST_STATUS_RING_BASE_LSB;
-	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG + HAL_CE_DST_STATUS_RING_HP;
-	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
-	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG -
-		HAL_SEQ_WCSS_UMAC_CE0_DST_REG;
+	s->reg_start[1] = HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) + HAL_CE_DST_STATUS_RING_HP;
+	s->reg_size[0] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
+	s->reg_size[1] = HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) -
+		HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab);
 
 	s = &hal->srng_config[HAL_WBM_IDLE_LINK];
 	s->reg_start[0] = HAL_SEQ_WCSS_UMAC_WBM_REG + HAL_WBM_IDLE_LINK_RING_BASE_LSB(ab);
@@ -1756,7 +1756,7 @@ static void ath12k_hal_srng_src_hw_init(struct ath12k_base *ab,
 			      HAL_TCL1_RING_BASE_MSB_RING_BASE_ADDR_MSB) |
 	      u32_encode_bits((srng->entry_size * srng->num_entries),
 			      HAL_TCL1_RING_BASE_MSB_RING_SIZE);
-	ath12k_hif_write32(ab, reg_base + HAL_TCL1_RING_BASE_MSB_OFFSET, val);
+	ath12k_hif_write32(ab, reg_base + HAL_TCL1_RING_BASE_MSB_OFFSET(ab), val);
 
 	val = u32_encode_bits(srng->entry_size, HAL_REO1_RING_ID_ENTRY_SIZE);
 	ath12k_hif_write32(ab, reg_base + HAL_TCL1_RING_ID_OFFSET(ab), val);
diff --git a/drivers/net/wireless/ath/ath12k/hal.h b/drivers/net/wireless/ath/ath12k/hal.h
index 94e2e8735958..1ce97f9a92ac 100644
--- a/drivers/net/wireless/ath/ath12k/hal.h
+++ b/drivers/net/wireless/ath/ath12k/hal.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: BSD-3-Clause-Clear */
 /*
  * Copyright (c) 2018-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2021-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2021-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #ifndef ATH12K_HAL_H
@@ -44,10 +44,14 @@ struct ath12k_base;
 #define HAL_SEQ_WCSS_UMAC_OFFSET		0x00a00000
 #define HAL_SEQ_WCSS_UMAC_REO_REG		0x00a38000
 #define HAL_SEQ_WCSS_UMAC_TCL_REG		0x00a44000
-#define HAL_SEQ_WCSS_UMAC_CE0_SRC_REG		0x01b80000
-#define HAL_SEQ_WCSS_UMAC_CE0_DST_REG		0x01b81000
-#define HAL_SEQ_WCSS_UMAC_CE1_SRC_REG		0x01b82000
-#define HAL_SEQ_WCSS_UMAC_CE1_DST_REG		0x01b83000
+#define HAL_SEQ_WCSS_UMAC_CE0_SRC_REG(ab) \
+	((ab)->hw_params->regs->hal_umac_ce0_src_reg_base)
+#define HAL_SEQ_WCSS_UMAC_CE0_DST_REG(ab) \
+	((ab)->hw_params->regs->hal_umac_ce0_dest_reg_base)
+#define HAL_SEQ_WCSS_UMAC_CE1_SRC_REG(ab) \
+	((ab)->hw_params->regs->hal_umac_ce1_src_reg_base)
+#define HAL_SEQ_WCSS_UMAC_CE1_DST_REG(ab) \
+	((ab)->hw_params->regs->hal_umac_ce1_dest_reg_base)
 #define HAL_SEQ_WCSS_UMAC_WBM_REG		0x00a34000
 
 #define HAL_CE_WFSS_CE_REG_BASE			0x01b80000
@@ -57,8 +61,10 @@ struct ath12k_base;
 /* SW2TCL(x) R0 ring configuration address */
 #define HAL_TCL1_RING_CMN_CTRL_REG		0x00000020
 #define HAL_TCL1_RING_DSCP_TID_MAP		0x00000240
-#define HAL_TCL1_RING_BASE_LSB			0x00000900
-#define HAL_TCL1_RING_BASE_MSB			0x00000904
+#define HAL_TCL1_RING_BASE_LSB(ab) \
+	((ab)->hw_params->regs->hal_tcl1_ring_base_lsb)
+#define HAL_TCL1_RING_BASE_MSB(ab) \
+	((ab)->hw_params->regs->hal_tcl1_ring_base_msb)
 #define HAL_TCL1_RING_ID(ab)			((ab)->hw_params->regs->hal_tcl1_ring_id)
 #define HAL_TCL1_RING_MISC(ab) \
 	((ab)->hw_params->regs->hal_tcl1_ring_misc)
@@ -76,30 +82,31 @@ struct ath12k_base;
 	((ab)->hw_params->regs->hal_tcl1_ring_msi1_base_msb)
 #define HAL_TCL1_RING_MSI1_DATA(ab) \
 	((ab)->hw_params->regs->hal_tcl1_ring_msi1_data)
-#define HAL_TCL2_RING_BASE_LSB			0x00000978
+#define HAL_TCL2_RING_BASE_LSB(ab) \
+	((ab)->hw_params->regs->hal_tcl2_ring_base_lsb)
 #define HAL_TCL_RING_BASE_LSB(ab) \
 	((ab)->hw_params->regs->hal_tcl_ring_base_lsb)
 
-#define HAL_TCL1_RING_MSI1_BASE_LSB_OFFSET(ab)				\
-	(HAL_TCL1_RING_MSI1_BASE_LSB(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_MSI1_BASE_MSB_OFFSET(ab)				\
-	(HAL_TCL1_RING_MSI1_BASE_MSB(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_MSI1_DATA_OFFSET(ab)				\
-	(HAL_TCL1_RING_MSI1_DATA(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_BASE_MSB_OFFSET				\
-	(HAL_TCL1_RING_BASE_MSB - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_ID_OFFSET(ab)				\
-	(HAL_TCL1_RING_ID(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_CONSR_INT_SETUP_IX0_OFFSET(ab)			\
-	(HAL_TCL1_RING_CONSUMER_INT_SETUP_IX0(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_CONSR_INT_SETUP_IX1_OFFSET(ab) \
-		(HAL_TCL1_RING_CONSUMER_INT_SETUP_IX1(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_TP_ADDR_LSB_OFFSET(ab) \
-		(HAL_TCL1_RING_TP_ADDR_LSB(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_TP_ADDR_MSB_OFFSET(ab) \
-		(HAL_TCL1_RING_TP_ADDR_MSB(ab) - HAL_TCL1_RING_BASE_LSB)
-#define HAL_TCL1_RING_MISC_OFFSET(ab) \
-		(HAL_TCL1_RING_MISC(ab) - HAL_TCL1_RING_BASE_LSB)
+#define HAL_TCL1_RING_MSI1_BASE_LSB_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_MSI1_BASE_LSB(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_MSI1_BASE_MSB_OFFSET(ab)	({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_MSI1_BASE_MSB(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_MSI1_DATA_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_MSI1_DATA(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_BASE_MSB_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_BASE_MSB(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_ID_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_ID(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_CONSR_INT_SETUP_IX0_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_CONSUMER_INT_SETUP_IX0(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_CONSR_INT_SETUP_IX1_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_CONSUMER_INT_SETUP_IX1(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_TP_ADDR_LSB_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_TP_ADDR_LSB(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_TP_ADDR_MSB_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_TP_ADDR_MSB(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
+#define HAL_TCL1_RING_MISC_OFFSET(ab) ({ typeof(ab) _ab = (ab); \
+	(HAL_TCL1_RING_MISC(_ab) - HAL_TCL1_RING_BASE_LSB(_ab)); })
 
 /* SW2TCL(x) R2 ring pointers (head/tail) address */
 #define HAL_TCL1_RING_HP			0x00002000
diff --git a/drivers/net/wireless/ath/ath12k/hw.c b/drivers/net/wireless/ath/ath12k/hw.c
index a106ebed7870..4c9d6c42fbb9 100644
--- a/drivers/net/wireless/ath/ath12k/hw.c
+++ b/drivers/net/wireless/ath/ath12k/hw.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: BSD-3-Clause-Clear
 /*
  * Copyright (c) 2018-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2021-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2021-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #include <linux/types.h>
@@ -619,6 +619,9 @@ static const struct ath12k_hw_regs qcn9274_v1_regs = {
 	.hal_tcl1_ring_msi1_base_msb = 0x0000094c,
 	.hal_tcl1_ring_msi1_data = 0x00000950,
 	.hal_tcl_ring_base_lsb = 0x00000b58,
+	.hal_tcl1_ring_base_lsb = 0x00000900,
+	.hal_tcl1_ring_base_msb = 0x00000904,
+	.hal_tcl2_ring_base_lsb = 0x00000978,
 
 	/* TCL STATUS ring address */
 	.hal_tcl_status_ring_base_lsb = 0x00000d38,
@@ -681,6 +684,12 @@ static const struct ath12k_hw_regs qcn9274_v1_regs = {
 
 	/* REO status ring address */
 	.hal_reo_status_ring_base = 0x00000a84,
+
+	/* CE base address */
+	.hal_umac_ce0_src_reg_base = 0x01b80000,
+	.hal_umac_ce0_dest_reg_base = 0x01b81000,
+	.hal_umac_ce1_src_reg_base = 0x01b82000,
+	.hal_umac_ce1_dest_reg_base = 0x01b83000,
 };
 
 static const struct ath12k_hw_regs qcn9274_v2_regs = {
@@ -695,6 +704,9 @@ static const struct ath12k_hw_regs qcn9274_v2_regs = {
 	.hal_tcl1_ring_msi1_base_msb = 0x0000094c,
 	.hal_tcl1_ring_msi1_data = 0x00000950,
 	.hal_tcl_ring_base_lsb = 0x00000b58,
+	.hal_tcl1_ring_base_lsb = 0x00000900,
+	.hal_tcl1_ring_base_msb = 0x00000904,
+	.hal_tcl2_ring_base_lsb = 0x00000978,
 
 	/* TCL STATUS ring address */
 	.hal_tcl_status_ring_base_lsb = 0x00000d38,
@@ -761,6 +773,12 @@ static const struct ath12k_hw_regs qcn9274_v2_regs = {
 
 	/* REO status ring address */
 	.hal_reo_status_ring_base = 0x00000aa0,
+
+	/* CE base address */
+	.hal_umac_ce0_src_reg_base = 0x01b80000,
+	.hal_umac_ce0_dest_reg_base = 0x01b81000,
+	.hal_umac_ce1_src_reg_base = 0x01b82000,
+	.hal_umac_ce1_dest_reg_base = 0x01b83000,
 };
 
 static const struct ath12k_hw_regs wcn7850_regs = {
@@ -775,6 +793,9 @@ static const struct ath12k_hw_regs wcn7850_regs = {
 	.hal_tcl1_ring_msi1_base_msb = 0x0000094c,
 	.hal_tcl1_ring_msi1_data = 0x00000950,
 	.hal_tcl_ring_base_lsb = 0x00000b58,
+	.hal_tcl1_ring_base_lsb = 0x00000900,
+	.hal_tcl1_ring_base_msb = 0x00000904,
+	.hal_tcl2_ring_base_lsb = 0x00000978,
 
 	/* TCL STATUS ring address */
 	.hal_tcl_status_ring_base_lsb = 0x00000d38,
@@ -837,6 +858,12 @@ static const struct ath12k_hw_regs wcn7850_regs = {
 
 	/* REO status ring address */
 	.hal_reo_status_ring_base = 0x00000a84,
+
+	/* CE base address */
+	.hal_umac_ce0_src_reg_base = 0x01b80000,
+	.hal_umac_ce0_dest_reg_base = 0x01b81000,
+	.hal_umac_ce1_src_reg_base = 0x01b82000,
+	.hal_umac_ce1_dest_reg_base = 0x01b83000,
 };
 
 static const struct ath12k_hw_hal_params ath12k_hw_hal_params_qcn9274 = {
diff --git a/drivers/net/wireless/ath/ath12k/hw.h b/drivers/net/wireless/ath/ath12k/hw.h
index 8d52182e28ae..acb81b5798ac 100644
--- a/drivers/net/wireless/ath/ath12k/hw.h
+++ b/drivers/net/wireless/ath/ath12k/hw.h
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: BSD-3-Clause-Clear */
 /*
  * Copyright (c) 2018-2021 The Linux Foundation. All rights reserved.
- * Copyright (c) 2021-2024 Qualcomm Innovation Center, Inc. All rights reserved.
+ * Copyright (c) 2021-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
 #ifndef ATH12K_HW_H
@@ -293,6 +293,9 @@ struct ath12k_hw_regs {
 	u32 hal_tcl1_ring_msi1_base_msb;
 	u32 hal_tcl1_ring_msi1_data;
 	u32 hal_tcl_ring_base_lsb;
+	u32 hal_tcl1_ring_base_lsb;
+	u32 hal_tcl1_ring_base_msb;
+	u32 hal_tcl2_ring_base_lsb;
 
 	u32 hal_tcl_status_ring_base_lsb;
 
@@ -316,6 +319,11 @@ struct ath12k_hw_regs {
 	u32 pcie_qserdes_sysclk_en_sel;
 	u32 pcie_pcs_osc_dtct_config_base;
 
+	u32 hal_umac_ce0_src_reg_base;
+	u32 hal_umac_ce0_dest_reg_base;
+	u32 hal_umac_ce1_src_reg_base;
+	u32 hal_umac_ce1_dest_reg_base;
+
 	u32 hal_ppe_rel_ring_base;
 
 	u32 hal_reo2_ring_base;
-- 
2.34.1


