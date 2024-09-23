Return-Path: <devicetree+bounces-104534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4AC97EAC9
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 13:32:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D7FB1C21073
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 11:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91A25198A0F;
	Mon, 23 Sep 2024 11:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="atJDRywS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCFD52F62;
	Mon, 23 Sep 2024 11:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727091137; cv=none; b=tDTQrNoNN19gepyQndb0I/xV+SG5Q8Ex1Ws9adK9CvSPx2rPN3YJ6kjOlQ+7UzjcTzqRnJled0AU8O19glgqM3/+wjAt8qPPuCyWVgPkvtSGnp9M+p7nz9k2AdDggrG+TmSU3mHBAUWbCuzQIsocJ8rT1uzrYrx6OMzOy5SZn58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727091137; c=relaxed/simple;
	bh=AYWEH61WYvuJan+jMEl/AGUTpUetupw5KDDiNmxNp8g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=okIlq9CprWVYMoYFP0+1+q5tdj6qP1tAIU4RfkCXaAJ5pq3AziR2OPImJB8DaAdsWEarCJIMdNCkmZ4Ro1h5BO6PiJX7FpCrwSZsWYX79vWNP5Vvts/6GS4Oan0DANS1/UWlEcBz4eWf8sdS1UQWJrSggB6CP34aDW5tlc6tqvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=atJDRywS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48NBLYeK029212;
	Mon, 23 Sep 2024 11:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:date:from:in-reply-to:message-id:references:subject:to; s=
	qcppdkim1; bh=rqwTpa97pgqxIE9vqhePFWWrYqXz8K9omN++BeHeWsg=; b=at
	JDRywSeGWUMrMnTOoVdp4+JCjOWfqxH8MFXIt5VmaqTJ++oxNIlsILOxVffpzP5x
	dyAhxllmQBWLiUqqghxvVYip79kZZqOiXDr6GKb2h9w/jgDt61CBEf0W7bxlyO1f
	l9l5i5KK7yw9H9zZEaEPHJC5cxcDa3/I05iSmoog26X6QFb9I5WV2nxTDVvsdj1d
	CG6VtuUmATXJ2zsLOdmffSAfG+knZjrpbG2WDDUMW7QU/9EVITu6Uh7hbb8k5t3c
	V+x1bdnEHk8nvwbIFmhGuaQYwR7SsTCFySoUSWbMGC1JSrJ8bvjf4owKh4HVYOma
	myYc9cL5MKcAU6/Dh5cA==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sqe94b6a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 23 Sep 2024 11:31:57 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48NBVr9k028932;
	Mon, 23 Sep 2024 11:31:53 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 41sq7kstdm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 23 Sep 2024 11:31:53 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48NBVqHN028908;
	Mon, 23 Sep 2024 11:31:52 GMT
Received: from hu-maiyas-hyd.qualcomm.com (hu-mukhopad-hyd.qualcomm.com [10.147.244.250])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTP id 48NBVqOi028901;
	Mon, 23 Sep 2024 11:31:52 +0000
Received: by hu-maiyas-hyd.qualcomm.com (Postfix, from userid 3978529)
	id 904825000B0; Mon, 23 Sep 2024 17:01:51 +0530 (+0530)
From: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
To: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, simona@ffwll.ch, dmitry.baryshkov@linaro.org,
        abel.vesa@linaro.org, robdclark@gmail.com, quic_abhinavk@quicinc.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_khsieh@quicinc.com, konrad.dybcio@linaro.org,
        quic_parellan@quicinc.com, quic_bjorande@quicinc.com
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        quic_riteshk@quicinc.com, quic_vproddut@quicinc.com
Subject: [PATCH v3 2/5] phy: qcom: edp: Introduce aux_cfg array for version specific aux settings
Date: Mon, 23 Sep 2024 17:01:47 +0530
Message-Id: <20240923113150.24711-3-quic_mukhopad@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
References: <20240923113150.24711-1-quic_mukhopad@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: VHWY-o6FbUaMYNm7y9tkkFPypVOiY7Uy
X-Proofpoint-GUID: VHWY-o6FbUaMYNm7y9tkkFPypVOiY7Uy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 phishscore=0 impostorscore=0 clxscore=1011
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409230085
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

In order to support different HW versions, introduce aux_cfg array
to move v4 specific aux configuration settings.

Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
---
v2: Fixed review comments from Bjorn and Dmitry
	- Made aux_cfg array as const.

v3: Fixed review comments from Dmitry
	- Used a for loop to write the dp_phy_aux_cfg registers.
	- Pre-defined the aux_cfg size to prevent any magic numbers.

---
 drivers/phy/qualcomm/phy-qcom-edp.c | 41 ++++++++++++-----------------
 1 file changed, 17 insertions(+), 24 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index da2b32fb5b45..2ecff164ec44 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,16 +32,8 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_PHY_AUX_CFG0				0x0024
-#define DP_PHY_AUX_CFG1				0x0028
-#define DP_PHY_AUX_CFG2				0x002C
-#define DP_PHY_AUX_CFG3				0x0030
-#define DP_PHY_AUX_CFG4				0x0034
-#define DP_PHY_AUX_CFG5				0x0038
-#define DP_PHY_AUX_CFG6				0x003C
-#define DP_PHY_AUX_CFG7				0x0040
-#define DP_PHY_AUX_CFG8				0x0044
-#define DP_PHY_AUX_CFG9				0x0048
+#define DP_AUX_CFG_SIZE                         10
+#define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058
 
@@ -90,6 +82,7 @@ struct phy_ver_ops {
 
 struct qcom_edp_phy_cfg {
 	bool is_edp;
+	const u8 *aux_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -186,11 +179,15 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
+static const u8 edp_phy_aux_cfg_v4[10] = {
+	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
+};
+
 static int qcom_edp_phy_init(struct phy *phy)
 {
 	struct qcom_edp *edp = phy_get_drvdata(phy);
+	u8 aux_cfg[DP_AUX_CFG_SIZE];
 	int ret;
-	u8 cfg8;
 
 	ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
 	if (ret)
@@ -200,6 +197,8 @@ static int qcom_edp_phy_init(struct phy *phy)
 	if (ret)
 		goto out_disable_supplies;
 
+	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
+
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
@@ -222,22 +221,12 @@ static int qcom_edp_phy_init(struct phy *phy)
 	 * even needed.
 	 */
 	if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
-		cfg8 = 0xb7;
-	else
-		cfg8 = 0x37;
+		aux_cfg[8] = 0xb7;
 
 	writel(0xfc, edp->edp + DP_PHY_MODE);
 
-	writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
-	writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
-	writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
-	writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
-	writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
-	writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
-	writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
-	writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
-	writel(cfg8, edp->edp + DP_PHY_AUX_CFG8);
-	writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
+	for (int i = 0; i < DP_AUX_CFG_SIZE; i++)
+		writel(aux_cfg[i], edp->edp + DP_PHY_AUX_CFG(i));
 
 	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
 	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
@@ -519,16 +508,19 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -707,6 +699,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 };
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
-- 
2.17.1


