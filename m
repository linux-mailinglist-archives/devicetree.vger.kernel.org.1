Return-Path: <devicetree+bounces-11499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A07057D6020
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 04:54:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A50A281AF9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 02:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 878D21360;
	Wed, 25 Oct 2023 02:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="TbXE9L+F"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6AEC1FBF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 02:54:35 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35C4510E9;
	Tue, 24 Oct 2023 19:54:28 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39P2pluS032571;
	Wed, 25 Oct 2023 02:54:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=FCHbdmq1xCyOIZ1AStbDsQBYbZxraKTtw2jFU04e4Lc=;
 b=TbXE9L+F3NMtJq3FhptW85pZcrPz02F+hiPInIxha8Viy9mLHwnZiR0sBEaBcOLJNiJz
 sQt9EblL6ulmypxRZ+FhZfZ7dGxc77znnDEXxxgdeskw6CTcdv9MOCXbbwLGp3eA5yAH
 40orkOC1m1RblGlPsQvehtxzlv0R1H4CUJG6th6A8Y+aYvniuw1ZAW45u8uvl3NXr5Aj
 TPy4ehLdimLvKT6JD77bd0MMERd7LEknzyo9lg095TruJOFzm7N8lPa1EDpl2V8zfHkn
 MVf/UhoG0zMGcl66ValiyF8RU9S7bEyw1xXGsVb70/u30uf/yrOGHzL42XSrYW9ek4Uz PA== 
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3twx9ubeqt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 02:54:16 +0000
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39P2sFqL031965
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 02:54:15 GMT
Received: from taozha-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 24 Oct 2023 19:54:11 -0700
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
Subject: [PATCH v2 5/8] coresight-tpdm: Add pattern registers support for CMB
Date: Wed, 25 Oct 2023 10:53:25 +0800
Message-ID: <1698202408-14608-6-git-send-email-quic_taozha@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1698202408-14608-1-git-send-email-quic_taozha@quicinc.com>
References: <1698202408-14608-1-git-send-email-quic_taozha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: bD0_FMKu-DTC2lnF9hWtFz3yM6_tB8e8
X-Proofpoint-ORIG-GUID: bD0_FMKu-DTC2lnF9hWtFz3yM6_tB8e8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_01,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 suspectscore=0 bulkscore=0 lowpriorityscore=0 mlxlogscore=999 phishscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2310170001
 definitions=main-2310250022

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

Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
Signed-off-by: Jinlong Mao <quic_jinlmao@quicinc.com>
---
 .../ABI/testing/sysfs-bus-coresight-devices-tpdm   | 30 ++++++++
 drivers/hwtracing/coresight/coresight-tpdm.c       | 88 +++++++++++++++++++++-
 drivers/hwtracing/coresight/coresight-tpdm.h       | 39 ++++++++++
 3 files changed, 156 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
index ace7231..c17468f 100644
--- a/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
+++ b/Documentation/ABI/testing/sysfs-bus-coresight-devices-tpdm
@@ -180,3 +180,33 @@ Description:	(Write) Set the data collection mode of CMB tpdm.
 		Accepts only one of the 2 values -  0 or 1.
 		0 : Continuous CMB collection mode.
 		1 : Trace-on-change CMB collection mode.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/cmb_trig_patt/xpr[0:1]
+Date:		March 2023
+KernelVersion	6.7
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the value of the trigger pattern for the CMB
+		subunit TPDM.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/cmb_trig_patt/xpmr[0:1]
+Date:		March 2023
+KernelVersion	6.7
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the mask of the trigger pattern for the CMB
+		subunit TPDM.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/dsb_patt/tpr[0:1]
+Date:		March 2023
+KernelVersion	6.7
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the value of the pattern for the CMB subunit TPDM.
+
+What:		/sys/bus/coresight/devices/<tpdm-name>/dsb_patt/tpmr[0:1]
+Date:		March 2023
+KernelVersion	6.7
+Contact:	Jinlong Mao (QUIC) <quic_jinlmao@quicinc.com>, Tao Zhang (QUIC) <quic_taozha@quicinc.com>
+Description:
+		(RW) Set/Get the mask of the pattern for the CMB subunit TPDM.
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
index efb376e..894d430 100644
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
 		else
 			ret = -EINVAL;
 		break;
+	case CMB_TRIG_PATT:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT)
+			drvdata->cmb->trig_patt[tpdm_attr->idx] = val;
+		else
+			ret = -EINVAL;
+		break;
+	case CMB_TRIG_PATT_MASK:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT)
+			drvdata->cmb->trig_patt_mask[tpdm_attr->idx] = val;
+		else
+			ret = -EINVAL;
+		break;
+	case CMB_PATT:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT)
+			drvdata->cmb->patt_val[tpdm_attr->idx] = val;
+		else
+			ret = -EINVAL;
+		break;
+	case CMB_PATT_MASK:
+		if (tpdm_attr->idx < TPDM_CMB_MAX_PATT)
+			drvdata->cmb->patt_mask[tpdm_attr->idx] = val;
+		else
+			ret = -EINVAL;
+		break;
 	default:
 		ret = -EINVAL;
 	}
@@ -289,7 +333,19 @@ static void tpdm_enable_dsb(struct tpdm_drvdata *drvdata)
 
 static void tpdm_enable_cmb(struct tpdm_drvdata *drvdata)
 {
-	u32 val;
+	u32 val, i;
+
+	/* Configure pattern registers */
+	for (i = 0; i < TPDM_CMB_MAX_PATT; i++) {
+		writel_relaxed(drvdata->cmb->patt_val[i],
+			    drvdata->base + TPDM_CMB_TPR(i));
+		writel_relaxed(drvdata->cmb->patt_mask[i],
+			    drvdata->base + TPDM_CMB_TPMR(i));
+		writel_relaxed(drvdata->cmb->trig_patt[i],
+			    drvdata->base + TPDM_CMB_XPR(i));
+		writel_relaxed(drvdata->cmb->trig_patt_mask[i],
+			    drvdata->base + TPDM_CMB_XPMR(i));
+	}
 
 	val = readl_relaxed(drvdata->base + TPDM_CMB_CR);
 	/*
@@ -904,6 +960,22 @@ static struct attribute *tpdm_dsb_msr_attrs[] = {
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
@@ -950,6 +1022,18 @@ static struct attribute_group tpdm_cmb_attr_grp = {
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
@@ -958,6 +1042,8 @@ static const struct attribute_group *tpdm_attr_grps[] = {
 	&tpdm_dsb_patt_grp,
 	&tpdm_dsb_msr_grp,
 	&tpdm_cmb_attr_grp,
+	&tpdm_cmb_trig_patt_grp,
+	&tpdm_cmb_patt_grp,
 	NULL,
 };
 
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.h b/drivers/hwtracing/coresight/coresight-tpdm.h
index c6b36d2..e90d008c 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.h
+++ b/drivers/hwtracing/coresight/coresight-tpdm.h
@@ -11,12 +11,23 @@
 
 /* CMB Subunit Registers */
 #define TPDM_CMB_CR		(0xA00)
+/*CMB subunit timestamp pattern registers*/
+#define TPDM_CMB_TPR(n)		(0xA08 + (n * 4))
+/*CMB subunit timestamp pattern mask registers*/
+#define TPDM_CMB_TPMR(n)	(0xA10 + (n * 4))
+/*CMB subunit trigger pattern registers*/
+#define TPDM_CMB_XPR(n)		(0xA18 + (n * 4))
+/*CMB subunit trigger pattern mask registers*/
+#define TPDM_CMB_XPMR(n)	(0xA20 + (n * 4))
 
 /* Enable bit for CMB subunit */
 #define TPDM_CMB_CR_ENA		BIT(0)
 /* Trace collection mode for CMB subunit */
 #define TPDM_CMB_CR_MODE	BIT(1)
 
+/*Patten register number*/
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
2.7.4


