Return-Path: <devicetree+bounces-129841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 816439ECE2D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 15:11:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6C5C51884E10
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 14:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 293072288CA;
	Wed, 11 Dec 2024 14:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="cGETnXla"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E663DAC12;
	Wed, 11 Dec 2024 14:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733926150; cv=none; b=HEpAtx5gpP7SW6ei4ha6yBBxaW51NhMwilmBpX4SmMyW855UKL4QST+RhtHtSRskXWWGM3yrcB2Q0GhY6OrXBUZxdWQYfGjwCdtIHpjK9ENQkriijdmedxuN/cGmU7wwN8wtfbuzMUfHkXhd/gPTnxJXxoE2o+EsFIl3MZS4YUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733926150; c=relaxed/simple;
	bh=EosQ6Do03sca2MumMJC0iYlkwHe6GjLQoBTiTInjlXw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=huh99RgJNBimyef7/X+2iZiypRv3Qr/xXcwUbZWunCKMCAtTXAS8k/9cnclkbsvgatgx68ebZV+w0Ax3diSeb5HGuFdyGH5ZSuh27L06DM2LHQpadTXKcaRB/7VwsApbPOAdtyheLSNwR2AxdfICDD4zY7Zq9KkibaoBXuxz2mI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=cGETnXla; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BBAAw0P006642;
	Wed, 11 Dec 2024 14:09:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LY28zXfT5hTmcBsgXYHTnTcadHq6IVwJHaerCHyeyUU=; b=cGETnXlaFpHaRXLA
	5LTpKo0V7tNPveuQpPbiZEsGMlFki61CX8lnFjxVxCZWRKqSvyVx9EDsr7Sq8tZ3
	95f6oI3vehR/ULm6GcRnFpo7vPyEvH+c332tQYdtgz+7z+xVecvNsuTtajnvn5k5
	fn0Yc9+Zhn3Thp2HsTSHt0sdyKEKWM+o7Pw34A+Vp3L0AZsVqL0shHwNH+T5HLmv
	Z8DULEsU3+y0XXXHMazskK3wwht2EQhRa7yFiX84lK0VP96T3pNxaGDpwjECa6Rp
	j22IHVURG6gGwi/R+2w/p/1d7WCv5u0dOjYFYryiQ2Pkeiphrpj51B5F/Z1xpwps
	ghQsQw==
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43eyg62ant-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 14:09:03 +0000 (GMT)
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4BBE92ET020224
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 11 Dec 2024 14:09:02 GMT
Received: from hu-depengs-sha.qualcomm.com (10.80.80.8) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Wed, 11 Dec 2024 06:08:56 -0800
From: Depeng Shao <quic_depengs@quicinc.com>
To: <rfoss@kernel.org>, <todor.too@gmail.com>, <bryan.odonoghue@linaro.org>,
        <mchehab@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <vladimir.zapolskiy@linaro.org>
CC: <quic_eberman@quicinc.com>, <quic_depengs@quicinc.com>,
        <linux-media@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <kernel@quicinc.com>
Subject: [PATCH 06/16] media: qcom: camss: csiphy-3ph: Use an offset variable to find common control regs
Date: Wed, 11 Dec 2024 19:37:28 +0530
Message-ID: <20241211140738.3835588-7-quic_depengs@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241211140738.3835588-1-quic_depengs@quicinc.com>
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: SOvcgukn8kAJ7LUZBOwj_xlt2N1PfIzQ
X-Proofpoint-ORIG-GUID: SOvcgukn8kAJ7LUZBOwj_xlt2N1PfIzQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412110102

From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

New versions of the CSIPHY locate the control registers at offset 0x1000
not offset 0x800.

Provide a variable to base an offset from for the purposes of redirecting
the base offset for the new PHY regs layout.

The existing setup bases from 0x800, the new from 0x1000 with some of the
'EXT' registers dropped but the lower-order lane config regs at offset 0x00
and up the same as before.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Depeng Shao <quic_depengs@quicinc.com>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 .../qcom/camss/camss-csiphy-3ph-1-0.c         | 67 ++++++++++++-------
 .../media/platform/qcom/camss/camss-csiphy.h  |  1 +
 2 files changed, 44 insertions(+), 24 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
index 2b8ff7fd1dd9..e44198686b55 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
+++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
@@ -42,11 +42,11 @@
 #define CSIPHY_3PH_LNn_CSI_LANE_CTRL15(n)	(0x03c + 0x100 * (n))
 #define CSIPHY_3PH_LNn_CSI_LANE_CTRL15_SWI_SOT_SYMBOL	0xb8
 
-#define CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(n)	(0x800 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(offset, n)	((offset) + 0x4 * (n))
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL5_CLK_ENABLE	BIT(7)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B	BIT(0)
 #define CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID	BIT(1)
-#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(n)	(0x8b0 + 0x4 * (n))
+#define CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(offset, n)	((offset) + 0xb0 + 0x4 * (n))
 
 #define CSIPHY_DEFAULT_PARAMS		0
 #define CSIPHY_LANE_ENABLE		1
@@ -321,19 +321,20 @@ csiphy_lane_regs lane_regs_sm8250[] = {
 static void csiphy_hw_version_read(struct csiphy_device *csiphy,
 				   struct device *dev)
 {
+	struct csiphy_device_regs *regs = csiphy->regs;
 	u32 hw_version;
 
-	writel(CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID,
-	       csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(6));
+	writel(CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_SHOW_REV_ID, csiphy->base +
+	       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 6));
 
 	hw_version = readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(12));
+				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 12));
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(13)) << 8;
+				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 13)) << 8;
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(14)) << 16;
+				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 14)) << 16;
 	hw_version |= readl_relaxed(csiphy->base +
-				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(15)) << 24;
+				   CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, 15)) << 24;
 
 	dev_dbg(dev, "CSIPHY 3PH HW Version = 0x%08x\n", hw_version);
 }
@@ -344,31 +345,39 @@ static void csiphy_hw_version_read(struct csiphy_device *csiphy,
  */
 static void csiphy_reset(struct csiphy_device *csiphy)
 {
-	writel_relaxed(0x1, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(0));
+	struct csiphy_device_regs *regs = csiphy->regs;
+
+	writel_relaxed(0x1, csiphy->base +
+		      CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 0));
 	usleep_range(5000, 8000);
-	writel_relaxed(0x0, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(0));
+	writel_relaxed(0x0, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 0));
 }
 
 static irqreturn_t csiphy_isr(int irq, void *dev)
 {
 	struct csiphy_device *csiphy = dev;
+	struct csiphy_device_regs *regs = csiphy->regs;
 	int i;
 
 	for (i = 0; i < 11; i++) {
 		int c = i + 22;
 		u8 val = readl_relaxed(csiphy->base +
-				       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(i));
+				       CSIPHY_3PH_CMN_CSI_COMMON_STATUSn(regs->offset, i));
 
 		writel_relaxed(val, csiphy->base +
-				    CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(c));
+			       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, c));
 	}
 
-	writel_relaxed(0x1, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(10));
-	writel_relaxed(0x0, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(10));
+	writel_relaxed(0x1, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 10));
+	writel_relaxed(0x0, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 10));
 
-	for (i = 22; i < 33; i++)
+	for (i = 22; i < 33; i++) {
 		writel_relaxed(0x0, csiphy->base +
-				    CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i));
+			       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, i));
+	}
 
 	return IRQ_HANDLED;
 }
@@ -522,6 +531,7 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 				s64 link_freq, u8 lane_mask)
 {
 	struct csiphy_lanes_cfg *c = &cfg->csi2->lane_cfg;
+	struct csiphy_device_regs *regs = csiphy->regs;
 	u8 settle_cnt;
 	u8 val;
 	int i;
@@ -532,16 +542,20 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 	for (i = 0; i < c->num_data; i++)
 		val |= BIT(c->data[i].pos * 2);
 
-	writel_relaxed(val, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(5));
+	writel_relaxed(val, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 5));
 
 	val = CSIPHY_3PH_CMN_CSI_COMMON_CTRL6_COMMON_PWRDN_B;
-	writel_relaxed(val, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(6));
+	writel_relaxed(val, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 6));
 
 	val = 0x02;
-	writel_relaxed(val, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(7));
+	writel_relaxed(val, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 7));
 
 	val = 0x00;
-	writel_relaxed(val, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(0));
+	writel_relaxed(val, csiphy->base +
+		       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 0));
 
 	if (csiphy_is_gen2(csiphy->camss->res->version))
 		csiphy_gen2_config_lanes(csiphy, settle_cnt);
@@ -549,18 +563,22 @@ static void csiphy_lanes_enable(struct csiphy_device *csiphy,
 		csiphy_gen1_config_lanes(csiphy, cfg, settle_cnt);
 
 	/* IRQ_MASK registers - disable all interrupts */
-	for (i = 11; i < 22; i++)
-		writel_relaxed(0, csiphy->base + CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(i));
+	for (i = 11; i < 22; i++) {
+		writel_relaxed(0, csiphy->base +
+			       CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, i));
+	}
 }
 
 static void csiphy_lanes_disable(struct csiphy_device *csiphy,
 				 struct csiphy_config *cfg)
 {
+	struct csiphy_device_regs *regs = csiphy->regs;
+
 	writel_relaxed(0, csiphy->base +
-			  CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(5));
+			  CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 5));
 
 	writel_relaxed(0, csiphy->base +
-			  CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(6));
+			  CSIPHY_3PH_CMN_CSI_COMMON_CTRLn(regs->offset, 6));
 }
 
 static int csiphy_init(struct csiphy_device *csiphy)
@@ -573,6 +591,7 @@ static int csiphy_init(struct csiphy_device *csiphy)
 		return -ENOMEM;
 
 	csiphy->regs = regs;
+	regs->offset = 0x800;
 
 	switch (csiphy->camss->res->version) {
 	case CAMSS_845:
diff --git a/drivers/media/platform/qcom/camss/camss-csiphy.h b/drivers/media/platform/qcom/camss/camss-csiphy.h
index 2371507b0a1f..8586cdc4be94 100644
--- a/drivers/media/platform/qcom/camss/camss-csiphy.h
+++ b/drivers/media/platform/qcom/camss/camss-csiphy.h
@@ -82,6 +82,7 @@ struct csiphy_subdev_resources {
 struct csiphy_device_regs {
 	const struct csiphy_lane_regs *lane_regs;
 	int lane_array_size;
+	u32 offset;
 };
 
 struct csiphy_device {
-- 
2.34.1


