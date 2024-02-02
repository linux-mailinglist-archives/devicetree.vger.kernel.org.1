Return-Path: <devicetree+bounces-37908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 21AC6846C15
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 10:34:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDCFA294F36
	for <lists+devicetree@lfdr.de>; Fri,  2 Feb 2024 09:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 481D47A71F;
	Fri,  2 Feb 2024 09:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="pSIUrSVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97A0C78B6D;
	Fri,  2 Feb 2024 09:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706866428; cv=none; b=b66/9E/+5MOccvb21ATGGu7/Fw9fZyYEMUeE3AsISC5V4cIjyeMowHqurPoWWe3zbaItGyxj3z0OX2ceoqmiyyrUiFTIurT8RhoQVm+MQthFDqva5WfNfWlXL7032eGicJhLPP2bNrP0nf4oE6OIXiSuValkFqYChmWBAFja6RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706866428; c=relaxed/simple;
	bh=2cz8QxazTlom7D6/lUC/JjzQX3hc8N8ZJyqOiCEVixg=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BM073Gaov8Wk1c5GxlfagR8ZQEuOnBCPGg35lId4vpY+RaQt5Tm9wQFBaI8PhGg+RT++0CNvR/z9UOw/x8a6cq4ZmiEMwOMA5KQcS0gcB+eXGWlNGqf8g0AEZMFmRFEqYqCWllrcA1etA0JVHTesRddim7f9igzTefbdVz5SF1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=pSIUrSVS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4127tesv004186;
	Fri, 2 Feb 2024 09:33:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-type; s=qcppdkim1; bh=qAQRPVLt3Q4DEovXyjvA
	de+pVgFOFHTgqD2iMKFnwJQ=; b=pSIUrSVSReQeB0jB97dtcY89dCapvgu1DE1d
	SNX22Cx78i9W3g0uuygOG2dZ2qdLsNiMAJ7h6ypZlcvh64t+CC1qoRW+bjGx8mC/
	O9AmlduQ7xAq+S4FmvHCoN/YBuA7/125RxAi7AJOY/53V301ZXMYogbkebeE3YmJ
	3Lv0K8gZvsBDqPqbxsnyHdom3HcE3V/6JcC2D5zD3dFcSIKu/PVCiQyH0fOQouEu
	oVIWbRVSE913ZmcXqzs0MCN1/SvSAFl9SOCaXjRR8Z44y0w1QfaOiaMGePT72ZCC
	LVaEQmP7sK/d8r1dmT3RAVHL/+5sYWHdPCO7DjJSOvOemDYtYw==
Received: from nalasppmta03.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3w0ptw910d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 02 Feb 2024 09:33:36 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 4129XY4J021330
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 2 Feb 2024 09:33:34 GMT
Received: from taozha-gv.qualcomm.com (10.80.80.8) by
 nalasex01c.na.qualcomm.com (10.47.97.35) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 2 Feb 2024 01:33:30 -0800
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
Subject: [PATCH v6 04/10] coresight-tpdm: Add CMB dataset support
Date: Fri, 2 Feb 2024 17:32:38 +0800
Message-ID: <1706866364-19861-5-git-send-email-quic_taozha@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1706866364-19861-1-git-send-email-quic_taozha@quicinc.com>
References: <1706866364-19861-1-git-send-email-quic_taozha@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: AcL8rqiXOokimAzaPhiUd6rbtRxeQNpo
X-Proofpoint-GUID: AcL8rqiXOokimAzaPhiUd6rbtRxeQNpo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_04,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 malwarescore=0 mlxscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 impostorscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2401310000 definitions=main-2402020068

CMB (continuous multi-bit) is one of TPDM's dataset type. CMB subunit
can be enabled for data collection by writing 1 to the first bit of
CMB_CR register. This change is to add enable/disable function for
CMB dataset by writing CMB_CR register.

Reviewed-by: James Clark <james.clark@arm.com>
Signed-off-by: Tao Zhang <quic_taozha@quicinc.com>
Signed-off-by: Jinlong Mao <quic_jinlmao@quicinc.com>
---
 drivers/hwtracing/coresight/coresight-tpdm.c | 28 ++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tpdm.h | 13 +++++++++
 2 files changed, 41 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
index 4b1296d11360..1bb1d8e83501 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.c
+++ b/drivers/hwtracing/coresight/coresight-tpdm.c
@@ -263,6 +263,19 @@ static void tpdm_enable_dsb(struct tpdm_drvdata *drvdata)
 	writel_relaxed(val, drvdata->base + TPDM_DSB_CR);
 }
 
+static void tpdm_enable_cmb(struct tpdm_drvdata *drvdata)
+{
+	u32 val;
+
+	if (!tpdm_has_cmb_dataset(drvdata))
+		return;
+
+	val = readl_relaxed(drvdata->base + TPDM_CMB_CR);
+	/* Set the enable bit of CMB control register to 1 */
+	val |= TPDM_CMB_CR_ENA;
+	writel_relaxed(val, drvdata->base + TPDM_CMB_CR);
+}
+
 /*
  * TPDM enable operations
  * The TPDM or Monitor serves as data collection component for various
@@ -276,6 +289,7 @@ static void __tpdm_enable(struct tpdm_drvdata *drvdata)
 	CS_UNLOCK(drvdata->base);
 
 	tpdm_enable_dsb(drvdata);
+	tpdm_enable_cmb(drvdata);
 
 	CS_LOCK(drvdata->base);
 }
@@ -312,12 +326,26 @@ static void tpdm_disable_dsb(struct tpdm_drvdata *drvdata)
 	writel_relaxed(val, drvdata->base + TPDM_DSB_CR);
 }
 
+static void tpdm_disable_cmb(struct tpdm_drvdata *drvdata)
+{
+	u32 val;
+
+	if (!tpdm_has_cmb_dataset(drvdata))
+		return;
+
+	val = readl_relaxed(drvdata->base + TPDM_CMB_CR);
+	/* Set the enable bit of CMB control register to 0 */
+	val &= ~TPDM_CMB_CR_ENA;
+	writel_relaxed(val, drvdata->base + TPDM_CMB_CR);
+}
+
 /* TPDM disable operations */
 static void __tpdm_disable(struct tpdm_drvdata *drvdata)
 {
 	CS_UNLOCK(drvdata->base);
 
 	tpdm_disable_dsb(drvdata);
+	tpdm_disable_cmb(drvdata);
 
 	CS_LOCK(drvdata->base);
 }
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.h b/drivers/hwtracing/coresight/coresight-tpdm.h
index ddaf333fa1c2..a442d9c6e4ac 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.h
+++ b/drivers/hwtracing/coresight/coresight-tpdm.h
@@ -9,6 +9,12 @@
 /* The max number of the datasets that TPDM supports */
 #define TPDM_DATASETS       7
 
+/* CMB Subunit Registers */
+#define TPDM_CMB_CR		(0xA00)
+
+/* Enable bit for CMB subunit */
+#define TPDM_CMB_CR_ENA		BIT(0)
+
 /* DSB Subunit Registers */
 #define TPDM_DSB_CR		(0x780)
 #define TPDM_DSB_TIER		(0x784)
@@ -79,10 +85,12 @@
  *
  * PERIPHIDR0[0] : Fix to 1 if ImplDef subunit present, else 0
  * PERIPHIDR0[1] : Fix to 1 if DSB subunit present, else 0
+ * PERIPHIDR0[2] : Fix to 1 if CMB subunit present, else 0
  */
 
 #define TPDM_PIDR0_DS_IMPDEF	BIT(0)
 #define TPDM_PIDR0_DS_DSB	BIT(1)
+#define TPDM_PIDR0_DS_CMB	BIT(2)
 
 #define TPDM_DSB_MAX_LINES	256
 /* MAX number of EDCR registers */
@@ -224,4 +232,9 @@ static bool tpdm_has_dsb_dataset(struct tpdm_drvdata *drvdata)
 {
 	return (drvdata->datasets & TPDM_PIDR0_DS_DSB);
 }
+
+static bool tpdm_has_cmb_dataset(struct tpdm_drvdata *drvdata)
+{
+	return (drvdata->datasets & TPDM_PIDR0_DS_CMB);
+}
 #endif  /* _CORESIGHT_CORESIGHT_TPDM_H */
-- 
2.17.1


