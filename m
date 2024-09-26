Return-Path: <devicetree+bounces-105575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73D987237
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 13:02:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 38215B214C2
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2024 11:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721D21AE853;
	Thu, 26 Sep 2024 11:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="Aw89Pz8g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3621AD413;
	Thu, 26 Sep 2024 11:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727348544; cv=none; b=DqoUcNfg+C+mrkuGQ3Lq+2IzVyLeMp1gcZbQHzMFB6XaSjOJ3Q1lqIMHryhqtocjNNo/vAVC5n6bPlum2fq1K54BUya6ZHSpVIR0Wr9Hi/IWvM7FKVSc0mmBwOWDTtk0gicklapzCV44sChDGEk0OioOJZnOw3yILdLEE8H3r1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727348544; c=relaxed/simple;
	bh=vEjFmhF+PBztzHFLd7+hXTGBQluw6mgVFXpkG9GccUk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GK/fDIbGGyiNKEIvTK1OJ2CRadjnld94/Lnp2ZcU5+f494DSnljr0fOK2UNpdukB0O3iy5H1wtfUgFDVxWBxb1YnHXy5RZIJ9eSpl70Kql+3sjmt7dCkyHV7ImReTTZlJrHZO9HvwVXImzHjNSJq/oRWW7gwEaoIJ/5ONpoGeqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=qualcomm.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=Aw89Pz8g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48Q6lH0p032241;
	Thu, 26 Sep 2024 11:02:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=J/2Z9Ajj4sc
	bkDXFXPsLr9jPlw++rjXzJgE9fQgQwRU=; b=Aw89Pz8gP+1qM8fU0tIfIxfDAps
	wfY9ETVZtY9xbOrM0D7fZ1hDv+XtOiLADZ5S3ToWFUBvI3Zhe3BlbYd9TvouwwVm
	uUZU+tEyXSx+pl8gNGkDKOv8PqguVwEmgqrApxGJVkm84+2AM1ZJUJXOEA3Z+ZMR
	EQuwD+QISQEAfj1I5+WuGck08wSDsl5OMSon8ZK6+YclLVX3y7rStdIPfE3vjlw7
	qR5z0/vUJ3NToZfSbbnMpVzTMrF6V7jC+r0rQ/lP2ZwgTRoNxHT6tN4DE5mTeFuF
	6SOfv/ikaNRhqACAUDV68qJGtrtXQeLQu78oTlxWZ11nPPTMfik6q7ZHa1w==
Received: from apblrppmta02.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41sp7uqdje-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 11:02:05 +0000 (GMT)
Received: from pps.filterd (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTP id 48QB1kFE024467;
	Thu, 26 Sep 2024 11:02:01 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 41sq7mg02m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 11:02:01 +0000
Received: from APBLRPPMTA02.qualcomm.com (APBLRPPMTA02.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 48QB21Kn025001;
	Thu, 26 Sep 2024 11:02:01 GMT
Received: from hu-devc-hyd-u22-c.qualcomm.com (hu-mahap-hyd.qualcomm.com [10.213.96.84])
	by APBLRPPMTA02.qualcomm.com (PPS) with ESMTPS id 48QB214a024961
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Sep 2024 11:02:01 +0000
Received: by hu-devc-hyd-u22-c.qualcomm.com (Postfix, from userid 2365311)
	id 788F5AF6; Thu, 26 Sep 2024 16:32:00 +0530 (+0530)
From: Mahadevan <quic_mahap@quicinc.com>
To: robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch,
        maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, swboyd@chromium.org, konrad.dybcio@linaro.org,
        danila@jiaxyga.com, bigfoot@classfun.cn, neil.armstrong@linaro.org,
        mailingradian@gmail.com, quic_jesszhan@quicinc.com,
        andersson@kernel.org
Cc: Mahadevan <quic_mahap@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_kalyant@quicinc.com, quic_jmadiset@quicinc.com,
        quic_vpolimer@quicinc.com
Subject: [PATCH v2 3/5] drm/msm: mdss: Add SA8775P support
Date: Thu, 26 Sep 2024 16:31:35 +0530
Message-Id: <20240926110137.2200158-4-quic_mahap@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240926110137.2200158-1-quic_mahap@quicinc.com>
References: <20240926110137.2200158-1-quic_mahap@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 9qMCOtyDvsNOa3E5GVMUPsE97nUwRGxs
X-Proofpoint-ORIG-GUID: 9qMCOtyDvsNOa3E5GVMUPsE97nUwRGxs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 mlxlogscore=999 mlxscore=0 phishscore=0
 suspectscore=0 impostorscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2408220000 definitions=main-2409260073

Add Mobile Display Subsystem (MDSS) support for the SA8775P platform.

Signed-off-by: Mahadevan <quic_mahap@quicinc.com>
---

[v2]
- Update commit message. [Dmitry]
- Reorder compatible string of MDSS based on alphabetical order. [Dmitry]
- add reg_bus_bw in msm_mdss_data. [Dmitry]

---
 drivers/gpu/drm/msm/msm_mdss.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index faa88fd6eb4d..8f1d42a43bd0 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -573,6 +573,16 @@ static const struct msm_mdss_data qcm2290_data = {
 	.reg_bus_bw = 76800,
 };
 
+static const struct msm_mdss_data sa8775p_data = {
+	.ubwc_enc_version = UBWC_4_0,
+	.ubwc_dec_version = UBWC_4_0,
+	.ubwc_swizzle = 4,
+	.ubwc_static = 1,
+	.highest_bank_bit = 0,
+	.macrotile_mode = 1,
+	.reg_bus_bw = 74000,
+};
+
 static const struct msm_mdss_data sc7180_data = {
 	.ubwc_enc_version = UBWC_2_0,
 	.ubwc_dec_version = UBWC_2_0,
@@ -710,6 +720,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,msm8998-mdss", .data = &msm8998_data },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &qcm2290_data },
+	{ .compatible = "qcom,sa8775p-mdss", .data = &sa8775p_data },
 	{ .compatible = "qcom,sdm670-mdss", .data = &sdm670_data },
 	{ .compatible = "qcom,sdm845-mdss", .data = &sdm845_data },
 	{ .compatible = "qcom,sc7180-mdss", .data = &sc7180_data },
-- 
2.34.1


