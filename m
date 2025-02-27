Return-Path: <devicetree+bounces-151945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0ACA47916
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA7C6167522
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9B2229B21;
	Thu, 27 Feb 2025 09:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="eOo9SgcE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7A2229B0B;
	Thu, 27 Feb 2025 09:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740648450; cv=none; b=AZTFMz+qe/iJ7r15EEB5ofpdkjAtFpZYXScViFy9DoCQPKsZlcli+2NQn6buENdCAo9AC/lK53XHsloiL9WNcOk9AxBTALt18UL0jcHzCpNTT2GzIPd7M2UyEKojFJJhUyRrFZUEMLvtDZFbc2wOBE0eV3WAPFbmAAS+jEQB4lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740648450; c=relaxed/simple;
	bh=3hJUiAytV0lEDPpzYO0n7pWCvtQS/nZGxibT0yIGfkg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pD0j3VTOhR/RPotE1XqeREJ6fK5UszGFetzwdiw/WAW3vTCPkTtNvumu0A7KHUD+U6gww85Wq3dUo7ygs9qNUmKsP57pGk9w5ZWCx8ALvhtCSQvBJyw0dXUMh4BLSOkpZzwAkyzdauy3PQmj+OUP6wgbk7xOh2kTkp6eNqDxNw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=eOo9SgcE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51QKnaV5012246;
	Thu, 27 Feb 2025 09:27:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uKuXy/4aKvxHKCdUhhNgjImqcQA0VyST3sQ1IfPjgjc=; b=eOo9SgcETsB3wH8f
	7wSzuYH3SXmLNzs8dH6XZoQrcjbBTS5wWURDpTk/r/K6QGERrg+TPSO0mvGJNCg5
	IjTvdGxGaNScCia2Kev+4N9hX0fYWml0sg4piLDA6gLXqhlt7yRPi9nY7Dh9u5/v
	5QM4E/JczDRcYs4TafGe/++eIkEFUgsgTqN7D0Ud6X1j0hxtwpBAsodDdjnQ4MJn
	MxWeq9LLrvozXGLLOPd+WRssQgOUo7J8hmF86AyLlWgdtL1H+ZHHsQUBJzSr5D9I
	ZjL5F2zGLy9rWsrPZTxhkQv8/m8+GPahjQC+QYreExvscNeVBh8HCQpNAbx8nlux
	SpIA/w==
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prk5323-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Feb 2025 09:27:19 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51R9RIKv019225
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Feb 2025 09:27:18 GMT
Received: from ap-cloud-sh02-lnx.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Thu, 27 Feb 2025 01:27:14 -0800
From: songchai <quic_songchai@quicinc.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
	<mike.leach@linaro.org>, James Clark <james.clark@arm.com>,
        "Alexander
 Shishkin" <alexander.shishkin@linux.intel.com>,
        Andy Gross
	<agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: Songwei Chai <quic_songchai@quicinc.com>, <linux-kernel@vger.kernel.org>,
        <coresight@lists.linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>
Subject: [PATCH v3 4/7] coresight-tgu: Add TGU decode support
Date: Thu, 27 Feb 2025 17:26:37 +0800
Message-ID: <20250227092640.2666894-5-quic_songchai@quicinc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250227092640.2666894-1-quic_songchai@quicinc.com>
References: <20250227092640.2666894-1-quic_songchai@quicinc.com>
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
X-Proofpoint-GUID: NXzRh4Vbk2F4aEQ-NaVNhYvrXdLa_vgY
X-Proofpoint-ORIG-GUID: NXzRh4Vbk2F4aEQ-NaVNhYvrXdLa_vgY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 phishscore=0 spamscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0
 adultscore=0 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502270071

From: Songwei Chai <quic_songchai@quicinc.com>

Decoding is when all the potential pieces for creating a trigger
are brought together for a given step. Example - there may be a
counter keeping track of some occurrences and a priority-group that
is being used to detect a pattern on the sense inputs. These 2
inputs to condition_decode must be programmed, for a given step,
to establish the condition for the trigger, or movement to another
step.

Signed-off-by: Songwei Chai <quic_songchai@quicinc.com>
Signed-off-by: songchai <quic_songchai@quicinc.com>
---
 .../testing/sysfs-bus-coresight-devices-tgu   |   7 ++
 drivers/hwtracing/coresight/coresight-tgu.c   | 113 ++++++++++++++++--
 drivers/hwtracing/coresight/coresight-tgu.h   |  29 ++++-
 3 files changed, 136 insertions(+), 13 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
index af7332153833..dd6cc1184d52 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tgu
@@ -14,3 +14,10 @@ KernelVersion   6.15
 Contact:        Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Sam Chai (QUIC) <quic_songchai@quicinc.com>
 Description:
                 (RW) Set/Get the sensed siganal with specific step and priority for TGU.
+
+What:           /sys/bus/coresight/devices/<tgu-name>/step[0:7]_condition_decode/reg[0:3]
+Date:           February 2025
+KernelVersion   6.15
+Contact:        Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Sam Chai (QUIC) <quic_songchai@quicinc.com>
+Description:
+                (RW) Set/Get the decode mode with specific step for TGU.
diff --git a/drivers/hwtracing/coresight/coresight-tgu.c b/drivers/hwtracing/coresight/coresight-tgu.c
index f28761619ebe..5eebf5eecbbb 100644
--- a/drivers/hwtracing/coresight/coresight-tgu.c
+++ b/drivers/hwtracing/coresight/coresight-tgu.c
@@ -22,9 +22,21 @@ static int calculate_array_location(struct tgu_drvdata *drvdata, int step_index,
 {
 	int ret = -EINVAL;
 
-	ret = operation_index * (drvdata->max_step) *
-		      (drvdata->max_reg) + step_index * (drvdata->max_reg)
-				+ reg_index;
+	switch (operation_index) {
+	case TGU_PRIORITY0:
+	case TGU_PRIORITY1:
+	case TGU_PRIORITY2:
+	case TGU_PRIORITY3:
+		ret = operation_index * (drvdata->max_step) *
+			(drvdata->max_reg) + step_index * (drvdata->max_reg)
+			+ reg_index;
+		break;
+	case TGU_CONDITION_DECODE:
+		ret = step_index * (drvdata->max_condition_decode) + reg_index;
+		break;
+	default:
+		break;
+	}
 
 	return ret;
 }
@@ -36,10 +48,23 @@ static ssize_t tgu_dataset_show(struct device *dev,
 	struct tgu_attribute *tgu_attr =
 		container_of(attr, struct tgu_attribute, attr);
 
-	return sysfs_emit(buf, "0x%x\n",
-			  drvdata->value_table->priority[calculate_array_location(
+	switch (tgu_attr->operation_index) {
+	case TGU_PRIORITY0:
+	case TGU_PRIORITY1:
+	case TGU_PRIORITY2:
+	case TGU_PRIORITY3:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->priority[calculate_array_location(
 				  drvdata, tgu_attr->step_index,
 				  tgu_attr->operation_index, tgu_attr->reg_num)]);
+	case TGU_CONDITION_DECODE:
+		return sysfs_emit(buf, "0x%x\n",
+				  drvdata->value_table->condition_decode[calculate_array_location(
+				  drvdata, tgu_attr->step_index, tgu_attr->operation_index,
+				  tgu_attr->reg_num)]);
+
+	}
+	return -EINVAL;
 
 }
 
@@ -58,11 +83,25 @@ static ssize_t tgu_dataset_store(struct device *dev,
 		return ret;
 
 	guard(spinlock)(&tgu_drvdata->spinlock);
-	tgu_drvdata->value_table->priority[calculate_array_location(
-		tgu_drvdata, tgu_attr->step_index, tgu_attr->operation_index,
-		tgu_attr->reg_num)] = val;
-	ret = size;
-
+	switch (tgu_attr->operation_index) {
+	case TGU_PRIORITY0:
+	case TGU_PRIORITY1:
+	case TGU_PRIORITY2:
+	case TGU_PRIORITY3:
+		tgu_drvdata->value_table->priority[calculate_array_location(
+			tgu_drvdata, tgu_attr->step_index, tgu_attr->operation_index,
+			tgu_attr->reg_num)] = val;
+		ret = size;
+		break;
+	case TGU_CONDITION_DECODE:
+		tgu_drvdata->value_table->condition_decode[calculate_array_location(
+			tgu_drvdata, tgu_attr->step_index, tgu_attr->operation_index,
+			tgu_attr->reg_num)] = val;
+		ret = size;
+		break;
+	default:
+		break;
+	}
 	return ret;
 }
 
@@ -79,8 +118,23 @@ static umode_t tgu_node_visible(struct kobject *kobject, struct attribute *attr,
 		container_of(dev_attr, struct tgu_attribute, attr);
 
 	if (tgu_attr->step_index < drvdata->max_step) {
-		ret = (tgu_attr->reg_num < drvdata->max_reg) ?
-					    attr->mode : 0;
+		switch (tgu_attr->operation_index) {
+		case TGU_PRIORITY0:
+		case TGU_PRIORITY1:
+		case TGU_PRIORITY2:
+		case TGU_PRIORITY3:
+			ret = (tgu_attr->reg_num < drvdata->max_reg) ?
+				      attr->mode : 0;
+			break;
+		case TGU_CONDITION_DECODE:
+			ret = (tgu_attr->reg_num <
+					drvdata->max_condition_decode) ?
+						attr->mode : 0;
+			break;
+		default:
+			break;
+		}
+
 		return ret;
 	}
 	return SYSFS_GROUP_INVISIBLE;
@@ -103,6 +157,17 @@ static void tgu_write_all_hw_regs(struct tgu_drvdata *drvdata)
 		}
 	}
 
+	for (i = 0; i < drvdata->max_step; i++) {
+		for (j = 0; j < drvdata->max_condition_decode; j++) {
+			tgu_writel(drvdata,
+				   drvdata->value_table
+					   ->condition_decode[calculate_array_location(
+						   drvdata, i,
+						   TGU_CONDITION_DECODE, j)],
+				   CONDITION_DECODE_STEP(i, j));
+		}
+	}
+
 	/* Enable TGU to program the triggers */
 	tgu_writel(drvdata, 1, TGU_CONTROL);
 	CS_LOCK(drvdata->base);
@@ -245,6 +310,14 @@ static const struct attribute_group *tgu_attr_groups[] = {
 	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 1),
 	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 2),
 	PRIORITY_ATTRIBUTE_GROUP_INIT(7, 3),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(0),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(1),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(2),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(3),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(4),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(5),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(6),
+	CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(7),
 	NULL,
 };
 
@@ -289,6 +362,13 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (ret)
 		return -EINVAL;
 
+	ret = of_property_read_u32(adev->dev.of_node, "tgu-conditions",
+				   &drvdata->max_condition);
+	if (ret)
+		return -EINVAL;
+
+	drvdata->max_condition_decode = drvdata->max_condition;
+
 	drvdata->value_table =
 		devm_kzalloc(dev, sizeof(*drvdata->value_table), GFP_KERNEL);
 	if (!drvdata->value_table)
@@ -303,6 +383,15 @@ static int tgu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata->value_table->priority)
 		return -ENOMEM;
 
+	drvdata->value_table->condition_decode = devm_kzalloc(
+		dev,
+		drvdata->max_condition_decode * drvdata->max_step *
+			sizeof(*(drvdata->value_table->condition_decode)),
+		GFP_KERNEL);
+
+	if (!drvdata->value_table->condition_decode)
+		return -ENOMEM;
+
 	drvdata->enable = false;
 	desc.type = CORESIGHT_DEV_TYPE_HELPER;
 	desc.pdata = adev->dev.platform_data;
diff --git a/drivers/hwtracing/coresight/coresight-tgu.h b/drivers/hwtracing/coresight/coresight-tgu.h
index 6e5d465117df..c2a9ce38b44f 100644
--- a/drivers/hwtracing/coresight/coresight-tgu.h
+++ b/drivers/hwtracing/coresight/coresight-tgu.h
@@ -46,6 +46,9 @@
 #define PRIORITY_REG_STEP(step, priority, reg)\
 	(0x0074 + 0x60 * priority + 0x4 * reg + 0x1D8 * step)
 
+#define CONDITION_DECODE_STEP(step, decode) \
+	(0x0050 + 0x4 * decode + 0x1D8 * step)
+
 #define tgu_dataset_ro(name, step_index, type, reg_num)     \
 	(&((struct tgu_attribute[]){ {                      \
 		__ATTR(name, 0444, tgu_dataset_show, NULL), \
@@ -66,6 +69,9 @@
 	tgu_dataset_rw(reg##reg_num, step_index, TGU_PRIORITY##priority, \
 		       reg_num)
 
+#define STEP_DECODE(step_index, reg_num) \
+	tgu_dataset_rw(reg##reg_num, step_index, TGU_CONDITION_DECODE, reg_num)
+
 #define STEP_PRIORITY_LIST(step_index, priority)  \
 	{STEP_PRIORITY(step_index, 0, priority),  \
 	 STEP_PRIORITY(step_index, 1, priority),  \
@@ -88,6 +94,14 @@
 	 NULL			\
 	}
 
+#define STEP_DECODE_LIST(n) \
+	{STEP_DECODE(n, 0), \
+	 STEP_DECODE(n, 1), \
+	 STEP_DECODE(n, 2), \
+	 STEP_DECODE(n, 3), \
+	 NULL           \
+	}
+
 #define PRIORITY_ATTRIBUTE_GROUP_INIT(step, priority)\
 	(&(const struct attribute_group){\
 		.attrs = (struct attribute*[])STEP_PRIORITY_LIST(step, priority),\
@@ -95,11 +109,19 @@
 		.name = "step" #step "_priority" #priority \
 	})
 
+#define CONDITION_DECODE_ATTRIBUTE_GROUP_INIT(step)\
+	(&(const struct attribute_group){\
+		.attrs = (struct attribute*[])STEP_DECODE_LIST(step),\
+		.is_visible = tgu_node_visible,\
+		.name = "step" #step "_condition_decode" \
+	})
+
 enum operation_index {
 	TGU_PRIORITY0,
 	TGU_PRIORITY1,
 	TGU_PRIORITY2,
-	TGU_PRIORITY3
+	TGU_PRIORITY3,
+	TGU_CONDITION_DECODE
 
 };
 
@@ -115,6 +137,7 @@ struct tgu_attribute {
 
 struct value_table {
 	unsigned int *priority;
+	unsigned int *condition_decode;
 };
 
 /**
@@ -127,6 +150,8 @@ struct value_table {
  * @value_table: Store given value based on relevant parameters.
  * @max_reg: Maximum number of registers
  * @max_step: Maximum step size
+ * @max_condition: Maximum number of condition
+ * @max_condition_decode: Maximum number of condition_decode
  *
  * This structure defines the data associated with a TGU device, including its base
  * address, device pointers, clock, spinlock for synchronization, trigger data pointers,
@@ -141,6 +166,8 @@ struct tgu_drvdata {
 	struct value_table *value_table;
 	int max_reg;
 	int max_step;
+	int max_condition;
+	int max_condition_decode;
 };
 
 #endif


