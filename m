Return-Path: <devicetree+bounces-38348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E134848B49
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 06:33:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86E7D281529
	for <lists+devicetree@lfdr.de>; Sun,  4 Feb 2024 05:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04B618C02;
	Sun,  4 Feb 2024 05:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="YAdGA30z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BF011724;
	Sun,  4 Feb 2024 05:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707024722; cv=none; b=AcHMPUkNPpEEVP7lQbyI0YuZ2KZb2zpv7rpWseZYEjIhQoCtEEdExgZxGMcLdqzBihK9eIu8S/H2RuT2Wf7i/9AzGY3ma6hEBHqfUhO5GEhtmXqbLXiWrXkKu2nm/wqR7SHGxSlz5c0luPoKujnB+WbStOJOdGaNXzZenqUnzS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707024722; c=relaxed/simple;
	bh=oWgnqiU0rxS/WreWWd9WfDlHYhB14/u/U0zESOUh4nQ=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Hk5w5JtOUTBLWKwesYiT5bsLzEYWG+qPnK+q/H3gwmd0Rvp96OqWQilQBD79A6dGG78kPYYm8fq2/zHXn/zHU7ktfgQP8By6dMUZqDokuXhvfBmwMmW/zek+X2yRGu1kIymlAbYbjxLSGV13TrjK/0uOmJDI65usGzr5v2Fy5WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=YAdGA30z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4145VmFv031998;
	Sun, 4 Feb 2024 05:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type:content-transfer-encoding; s=
	qcppdkim1; bh=eeg5FyzpHTgTrf2uMZnZMVoJ8h9AwGrFPs9QbxU8Rl0=; b=YA
	dGA30z5+ZHlapoBGsq4ooxzJ6MpelNJVRjdfGWxCfVNar/Y0ymvzdssRySakRiKl
	0MDUxClSG23UG3rUcjHM151TEEUb578/5oKhI8BAcXjsd7c+1NOOObaVhyVIKdAK
	nvchgTyRLX+3bMpzDjsh3ujFHl6gmfYVe+jf2iXozsBwI51eslsyuK3s8aK9GWl5
	raG3Qx+7TIogCPRciH6N04M09n3VOrp6brOZXB37FurlXskry0BWGZtwNkG86yXO
	0um8GQibgtqn2g19330I1YVUbNFgSm5TMek8QGM+nbqSstybLeawiMMPYyYo/fY+
	jsUn+otzwblvGH86SP7g==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3w1ey51ar1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 04 Feb 2024 05:31:48 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4145VlEc004322
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 4 Feb 2024 05:31:47 GMT
Received: from taozha-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Sat, 3 Feb 2024 21:31:42 -0800
From: Tao Zhang <quic_taozha@quicinc.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
        Suzuki K Poulose
	<suzuki.poulose@arm.com>,
        Alexander Shishkin
	<alexander.shishkin@linux.intel.com>,
        Konrad Dybcio <konradybcio@gmail.com>,
        Mike Leach <mike.leach@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: Tao Zhang <quic_taozha@quicinc.com>,
        Jinlong Mao
	<quic_jinlmao@quicinc.com>, Leo Yan <leo.yan@linaro.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <coresight@lists.linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Trilok Soni
	<quic_tsoni@quicinc.com>,
        Song Chai <quic_songchai@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <andersson@kernel.org>
Subject: [PATCH v7 07/10] coresight-tpdm: Add pattern registers support for CMB
Date: Sun, 4 Feb 2024 13:30:38 +0800
Message-ID: <1707024641-22460-8-git-send-email-quic_taozha@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1707024641-22460-1-git-send-email-quic_taozha@quicinc.com>
References: <1707024641-22460-1-git-send-email-quic_taozha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 0oRyUsCQ5dKqP6fu0xizQL0VqKBFZw2D
X-Proofpoint-ORIG-GUID: 0oRyUsCQ5dKqP6fu0xizQL0VqKBFZw2D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-04_02,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402040039

Timestamps are requested if the monitor’s CMB data set unit input
data matches the value in the Monitor CMB timestamp pattern and mask
registers (M_CMB_TPR and M_CMB_TPMR) when CMB timestamp enabled
via the timestamp insertion enable register bit(CMB_TIER.PATT_TSENAB).
The pattern match trigger output is achieved via setting values into
the CMB trigger pattern and mask registers (CMB_XPR and CMB_XPMR).
After configuring a pattern through these registers, the TPDM subunit
will assert an output trigger every time it receives new input data
that matches the configured pattern value. Values in a given bit
number of the mask register correspond to the same bit number in
the corresponding pattern register.

Reviewed-by: James Clark <james.clark@arm.com>
Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
Signed-off-by: Jinlong Mao <quic_jinlmao@quicinc.com>
---
 .../testing/sysfs-bus-coresight-devices-tpdm  | 30 ++++++
 drivers/hwtracing/coresight/coresight-tpdm.c  | 96 ++++++++++++++++++-
 drivers/hwtracing/coresight/coresight-tpdm.h  | 39 ++++++++
 3 files changed, 164 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
index 6dfb18d6d64a..b6cf050861ed 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
@@ -184,3 +184,33 @@ Description:	(Write) Set the data collection mode of CMB tpdm. Continuous
 		Accepts only one of the 2 values -  0 or 1.
 		0 : Continuous CMB collection mode.
 		1 : Trace-on-change CMB collection mode.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/cmb_trig_patt/xpr[0:1]
+Date:		January 2024
+KernelVersion	6.9
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the value of the trigger pattern for the CMB
+		subunit TPDM.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/cmb_trig_patt/xpmr[0:1]
+Date:		January 2024
+KernelVersion	6.9
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the mask of the trigger pattern for the CMB
+		subunit TPDM.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/dsb_patt/tpr[0:1]
+Date:		January 2024
+KernelVersion	6.9
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the value of the pattern for the CMB subunit TPDM.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/dsb_patt/tpmr[0:1]
+Date:		January 2024
+KernelVersion	6.9
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the mask of the pattern for the CMB subunit TPDM.
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
index b20071460375..07587287d9fa 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.c
+++ b/drivers/hwtracing/coresight/coresight-tpdm.c
@@ -66,6 +66,26 @@ static ssize_t tpdm_simple_dataset_show(struct device *dev,
 			return -EINVAL;
 		return sysfs_emit(buf, "0x%x\n",
 				drvdata->dsb->msr[tpdm_attr->idx]);
+	case CMB_TRIG_PATT:
+		if (tpdm_attr->idx >= TPDM_CMB_MAX_PATT)
+			return -EINVAL;
+		return sysfs_emit(buf, "0x%x\n",
+			drvdata->cmb->trig_patt[tpdm_attr->idx]);
+	case CMB_TRIG_PATT_MASK:
+		if (tpdm_attr->idx >= TPDM_CMB_MAX_PATT)
+			return -EINVAL;
+		return sysfs_emit(buf, "0x%x\n",
+			drvdata->cmb->trig_patt_mask[tpdm_attr->idx]);
+	case CMB_PATT:
+		if (tpdm_attr->idx >= TPDM_CMB_MAX_PATT)
+			return -EINVAL;
+		return sysfs_emit(buf, "0x%x\n",
+			drvdata->cmb->patt_val[tpdm_attr->idx]);
+	case CMB_PATT_MASK:
+		if (tpdm_attr->idx >= TPDM_CMB_MAX_PATT)
+			return -EINVAL;
+		return sysfs_emit(buf, "0x%x\n",
+			drvdata->cmb->patt_mask[tpdm_attr->idx]);
 	}
 	return -EINVAL;
 }
@@ -118,6 +138,30 @@ static ssize_t tpdm_simple_dataset_store(struct device *dev,
 			ret = size;
 		}
 		break;
+	case CMB_TRIG_PATT:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT) {
+			drvdata->cmb->trig_patt[tpdm_attr->idx] = val;
+			ret = size;
+		}
+		break;
+	case CMB_TRIG_PATT_MASK:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT) {
+			drvdata->cmb->trig_patt_mask[tpdm_attr->idx] = val;
+			ret = size;
+		}
+		break;
+	case CMB_PATT:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT) {
+			drvdata->cmb->patt_val[tpdm_attr->idx] = val;
+			ret = size;
+		}
+		break;
+	case CMB_PATT_MASK:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT) {
+			drvdata->cmb->patt_mask[tpdm_attr->idx] = val;
+			ret = size;
+		}
+		break;
 	default:
 		break;
 	}
@@ -280,12 +324,32 @@ static void tpdm_enable_dsb(struct tpdm_drvdata *drvdata)
 
 static void tpdm_enable_cmb(struct tpdm_drvdata *drvdata)
 {
-	u32 val;
+	u32 val, i;
 
 	if (!tpdm_has_cmb_dataset(drvdata))
 		return;
 
+	/* Configure pattern registers */
+	for (i = 0; i < TPDM_CMB_MAX_PATT; i++) {
+		writel_relaxed(drvdata->cmb->patt_val[i],
+			drvdata->base + TPDM_CMB_TPR(i));
+		writel_relaxed(drvdata->cmb->patt_mask[i],
+			drvdata->base + TPDM_CMB_TPMR(i));
+		writel_relaxed(drvdata->cmb->trig_patt[i],
+			drvdata->base + TPDM_CMB_XPR(i));
+		writel_relaxed(drvdata->cmb->trig_patt_mask[i],
+			drvdata->base + TPDM_CMB_XPMR(i));
+	}
+
 	val = readl_relaxed(drvdata->base + TPDM_CMB_CR);
+	/*
+	 * Set to 0 for continuous CMB collection mode,
+	 * 1 for trace-on-change CMB collection mode.
+	 */
+	if (drvdata->cmb->trace_mode)
+		val |= TPDM_CMB_CR_MODE;
+	else
+		val &= ~TPDM_CMB_CR_MODE;
 	/* Set the enable bit of CMB control register to 1 */
 	val |= TPDM_CMB_CR_ENA;
 	writel_relaxed(val, drvdata->base + TPDM_CMB_CR);
@@ -887,6 +951,22 @@ static struct attribute *tpdm_dsb_msr_attrs[] = {
 	NULL,
 };
 
+static struct attribute *tpdm_cmb_trig_patt_attrs[] = {
+	CMB_TRIG_PATT_ATTR(0),
+	CMB_TRIG_PATT_ATTR(1),
+	CMB_TRIG_PATT_MASK_ATTR(0),
+	CMB_TRIG_PATT_MASK_ATTR(1),
+	NULL,
+};
+
+static struct attribute *tpdm_cmb_patt_attrs[] = {
+	CMB_PATT_ATTR(0),
+	CMB_PATT_ATTR(1),
+	CMB_PATT_MASK_ATTR(0),
+	CMB_PATT_MASK_ATTR(1),
+	NULL,
+};
+
 static struct attribute *tpdm_dsb_attrs[] = {
 	&dev_attr_dsb_mode.attr,
 	&dev_attr_dsb_trig_ts.attr,
@@ -933,6 +1013,18 @@ static struct attribute_group tpdm_cmb_attr_grp = {
 	.is_visible = tpdm_cmb_is_visible,
 };
 
+static struct attribute_group tpdm_cmb_trig_patt_grp = {
+	.attrs = tpdm_cmb_trig_patt_attrs,
+	.is_visible = tpdm_cmb_is_visible,
+	.name = "cmb_trig_patt",
+};
+
+static struct attribute_group tpdm_cmb_patt_grp = {
+	.attrs = tpdm_cmb_patt_attrs,
+	.is_visible = tpdm_cmb_is_visible,
+	.name = "cmb_patt",
+};
+
 static const struct attribute_group *tpdm_attr_grps[] = {
 	&tpdm_attr_grp,
 	&tpdm_dsb_attr_grp,
@@ -941,6 +1033,8 @@ static const struct attribute_group *tpdm_attr_grps[] = {
 	&tpdm_dsb_patt_grp,
 	&tpdm_dsb_msr_grp,
 	&tpdm_cmb_attr_grp,
+	&tpdm_cmb_trig_patt_grp,
+	&tpdm_cmb_patt_grp,
 	NULL,
 };
 
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.h b/drivers/hwtracing/coresight/coresight-tpdm.h
index 2af92c270ed1..e5d4c22cd38c 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.h
+++ b/drivers/hwtracing/coresight/coresight-tpdm.h
@@ -11,12 +11,23 @@
 
 /* CMB Subunit Registers */
 #define TPDM_CMB_CR		(0xA00)
+/* CMB subunit timestamp pattern registers */
+#define TPDM_CMB_TPR(n)		(0xA08 + (n * 4))
+/* CMB subunit timestamp pattern mask registers */
+#define TPDM_CMB_TPMR(n)	(0xA10 + (n * 4))
+/* CMB subunit trigger pattern registers */
+#define TPDM_CMB_XPR(n)		(0xA18 + (n * 4))
+/* CMB subunit trigger pattern mask registers */
+#define TPDM_CMB_XPMR(n)	(0xA20 + (n * 4))
 
 /* Enable bit for CMB subunit */
 #define TPDM_CMB_CR_ENA		BIT(0)
 /* Trace collection mode for CMB subunit */
 #define TPDM_CMB_CR_MODE	BIT(1)
 
+/* Patten register number */
+#define TPDM_CMB_MAX_PATT		2
+
 /* DSB Subunit Registers */
 #define TPDM_DSB_CR		(0x780)
 #define TPDM_DSB_TIER		(0x784)
@@ -151,6 +162,22 @@
 		tpdm_simple_dataset_rw(msr##nr,			\
 		DSB_MSR, nr)
 
+#define CMB_TRIG_PATT_ATTR(nr)					\
+		tpdm_simple_dataset_rw(xpr##nr,			\
+		CMB_TRIG_PATT, nr)
+
+#define CMB_TRIG_PATT_MASK_ATTR(nr)				\
+		tpdm_simple_dataset_rw(xpmr##nr,		\
+		CMB_TRIG_PATT_MASK, nr)
+
+#define CMB_PATT_ATTR(nr)					\
+		tpdm_simple_dataset_rw(tpr##nr,			\
+		CMB_PATT, nr)
+
+#define CMB_PATT_MASK_ATTR(nr)					\
+		tpdm_simple_dataset_rw(tpmr##nr,		\
+		CMB_PATT_MASK, nr)
+
 /**
  * struct dsb_dataset - specifics associated to dsb dataset
  * @mode:             DSB programming mode
@@ -186,9 +213,17 @@ struct dsb_dataset {
 /**
  * struct cmb_dataset
  * @trace_mode:       Dataset collection mode
+ * @patt_val:         Save value for pattern
+ * @patt_mask:        Save value for pattern mask
+ * @trig_patt:        Save value for trigger pattern
+ * @trig_patt_mask:   Save value for trigger pattern mask
  */
 struct cmb_dataset {
 	u32			trace_mode;
+	u32			patt_val[TPDM_CMB_MAX_PATT];
+	u32			patt_mask[TPDM_CMB_MAX_PATT];
+	u32			trig_patt[TPDM_CMB_MAX_PATT];
+	u32			trig_patt_mask[TPDM_CMB_MAX_PATT];
 };
 
 /**
@@ -225,6 +260,10 @@ enum dataset_mem {
 	DSB_PATT,
 	DSB_PATT_MASK,
 	DSB_MSR,
+	CMB_TRIG_PATT,
+	CMB_TRIG_PATT_MASK,
+	CMB_PATT,
+	CMB_PATT_MASK
 };
 
 /**
-- 
2.17.1


