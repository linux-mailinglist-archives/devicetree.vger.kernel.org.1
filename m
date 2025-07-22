Return-Path: <devicetree+bounces-198487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 79204B0D2E9
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:28:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B6293ACA1C
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0713C2DC33E;
	Tue, 22 Jul 2025 07:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nb2lJZoK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691242882BB
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753169022; cv=none; b=BtIwEJeUgiSK4w07ofQhZ4k2P9SjO+O5Xfl0+q2fuC/j7fFqvAJ3gm0G34gyXkux1JySNki1I1CznOvjXUn1GkG71/nEFO/p/O+EocJ1CyuHY2mwhAM2iqQbJBbgLWRRJgwdCd7LDIP3rKWaTgRFTBHVVat550A1z7YK+OmlRTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753169022; c=relaxed/simple;
	bh=IqNy2UOlnRxZPX6+c35gyiwHyCJKZ2vyWBvAK40oYUw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jjZWFqQNOtMyOss79FQnmSeVSOyCbieSi3dUcC3QLOjBB0+bseOTgeqjCjSymTXIhP6J2WsY3AtEtCuIEN/HyK4r0OTMRQYNkq3QnF//pKBOlPFiOAvc9VSgHP/ZnqspPFPD5iIjsIsFTSx+FvJhfmSLBjFLzV2r7OfKGZ2kANg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nb2lJZoK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M57htg015983
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6T5LoZlt4M2Nfb5X+7vfdX4LAsIOmzT/JE+HlobZE30=; b=Nb2lJZoKQUj0tLuH
	eRFnlJbO4HBHeUIrBulW0/dZjwGRnZ6w5pOhm4JWHajPfwLFKMZJIfBodb2Wkm8a
	WrAj0g51s5ii0drQgY0tVfrqg54VZziMNKT+gpWe5D8o10Ik/s1dWGLnuGpJRUD1
	ssVpJH2CIyvOxBgTwMWhthE6MxTnvPXsmLxRi5pb1jWOuJdhMb4tEIDXGr9SQx/0
	vxputu7C0op/3W17gMHHTqtT6R9Z2XC/h+2IE1MLyM9cxiyXAhoHWCIWdHAKyENd
	/HXSlfxyAXuseIYGBMpY9uoj2QeCeKBmPaJrVAAUz9sWBISvkqILHf7laILObGzk
	PeqkjA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 480451gaak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:23:40 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-31c459ccd56so1117218a91.3
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753169019; x=1753773819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6T5LoZlt4M2Nfb5X+7vfdX4LAsIOmzT/JE+HlobZE30=;
        b=SA/ccry0idDS5ed83SL20n5mS3PpETMco4GrVc5B1FTPe2dlOVA7WHiDUBh4rNs4c8
         l2PgNCws7HVxod4cShy9MWsHQSh6oUw/KAYNUpYVCtktjmM7YSiLDU8hf89jeVJVWAU7
         CSIdKIrcLrfqMTOaKabGWqhKgnPP/FBWbX+SiK4Kuylvh1+Ezr+MOP8529/1v49KGG3s
         pYodajGZC7/D/maAXuVyvGa8v/fXcAp2ABh3eFWx8BNypNyn8l1qTkDKU7M4bC1UzA7c
         oJcX7NOPHDNP9x9jRHEjcjwWdYCHaGS0kEkWySii6ACnsVtM6pjTfrK+3OAO9uiVsOul
         M+Ng==
X-Forwarded-Encrypted: i=1; AJvYcCWCiHihK1xAr1bD327Q71KuPcd+vB3kWT9tUBHL4n1705WAGv9rmwgG5W1YIoBT/SHLimcOtcShd8ip@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt5XlHn40UmUDnYXuZh5cMPM23GXibkoE4A+jmzNFNMct1DVCc
	Za+nM6tfNew5+VfO8lEcm82sy8b+xoTtwEguNpNoYWtoT5yaHjG995SmFnDbHssoI1uvr4As2GB
	+0fPYRp+/fVGJLYzHknDQgj0BtbySuYcDN5NwNRbiBi6Jh9TyLR6Pohy9kH4b2IZi
X-Gm-Gg: ASbGncslErZn3nr4nyvfHMFGWasnLxUV/Vvnj+7D9pGVTVlMTagVfZvnMdkDBew2e8y
	sQCLYhyHgfcPvZEF6nAeF8k602IfmxwwOJ+i0ePFtAufAfHheez17j5+TgeHVjxOQy4PcBVRYgR
	FYlWKcMUnuQGdH5oR7SZct/nQsCwPZurUzVU5+7cDqRTKSkU6XxGG5qkLpGWp5nvfqFRQPHnroI
	PCfJuxNdsqb1V3Yj/v+d2ayp0hM5/x9a1ftYBdV2J+8jrfD+lDBIb6qQP6AUPMX9kHveGVVP9KQ
	BoEybdB9yQIYkwC3n4F6CiLaA0LAitt3BX89CnDP2YBNl7FOgFM2W+oqF2yIwXuVo1SHHVhde0K
	w4oBtO9DQNUzeXVEqQCDfU6XGM575oEkyUQsTgLhpdIRbGXklSFyc1OgU
X-Received: by 2002:a17:90a:da8d:b0:311:e8cc:4250 with SMTP id 98e67ed59e1d1-31c9e75ef95mr12583153a91.3.1753169019029;
        Tue, 22 Jul 2025 00:23:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUBkompgYp4NsbDBV07hVcCo1eE/2e6MRN+tw1ZOzoeY3VNs+3v9W92tzFmCZwxBRf2BDv7A==
X-Received: by 2002:a17:90a:da8d:b0:311:e8cc:4250 with SMTP id 98e67ed59e1d1-31c9e75ef95mr12583132a91.3.1753169018485;
        Tue, 22 Jul 2025 00:23:38 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:23:38 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:12 +0800
Subject: [PATCH v2 11/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-11-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168938; l=1803;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=IqNy2UOlnRxZPX6+c35gyiwHyCJKZ2vyWBvAK40oYUw=;
 b=chI1sTIkkoEQ34btM+a8bsvY7GDpzMDyBcI0I765ZtJRv43IghZ0xyFcN8ZZvoqA0o1cTqVom
 /JIMtAyXyYsBWSgRb/wbBdHsI+7fA5OjpN64gKTST3z1uBj7gp9RO1t
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=EIMG00ZC c=1 sm=1 tr=0 ts=687f3c7c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CWFEUPHrMG6v4K5r7EwA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: LdhNiNiq_djrb8WYgtgl_0m3IjodOgCB
X-Proofpoint-GUID: LdhNiNiq_djrb8WYgtgl_0m3IjodOgCB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXzV3OG1sM78CW
 pet/dfB9dRPbCilEExeZjys/rbFYW39vhFCx/0qz9U/XtVjnnLZmdeAQTo2mEUbTCTd6dGoBy8T
 HTYg6x4L5RJebI5Wbl98fkcUmBms5+qsDASHldB9ZG6I4VgXKqHLfA33m3i8uBDp7iqUq9RhMYq
 nQHYC5jC93qpP9sV374DWyM1UFJKEMhTXDjJKjJlDpHuh3IyTPyY6FtKPCSwCtBHA29fekvX4a3
 ghL/9eKWnXy2xg/WAJnWV/X7ZN2yLgCztpMgCjNzK8VVlOjLM8jg1WD44KDJ99LZKry9zmBCzDJ
 EAGwtpBMRhyNNtj0j1eNFzYuLX8OnEJCsu0Y9QzO3KIrGeUIYC19PVBSNkg7vEWpopnF7Prj9l7
 r/4rnkzaKbZImx5hY8Qs2AQmdybVSB5E/jxzPl+zaYClkWY14ZzCVMWh8hcCz0MXefF9Xzu1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=985 phishscore=0 mlxscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059

Register the QCS615 DP PHY via device tree by adding its compatible
string and associating it with the full DP PHY configuration.

With this change, the DP PHY driver for QCS615 is fully integrated:
- All required ops and flow are implemented
- Platform-specific configuration and init data are in place
- Compatible handling is aligned with USB3.0 PHY via type-based
  dispatch
- Supports coexistence with USB3.0 PHY through mutual exclusion based
  on shared TCSR region

This enables end-to-end support for DP PHY mode on QCS615 platforms.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index e97a206a10554b2d157d1fadd66d66386eec6c40..35fecf78736f7a6b9c3af6a89c71fd3ad9a87496 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -699,6 +699,11 @@ static const struct qmp_phy_cfg sdm660_phy_usb3_cfg = {
 	.cfg = &sdm660_usb3phy_cfg,
 };
 
+static const struct qmp_phy_cfg qcs615_phy_dp_cfg = {
+	.type = QMP_PHY_USBC_DP,
+	.cfg = &qcs615_dpphy_cfg,
+};
+
 #define to_usb_cfg(x) ((struct qmp_phy_usb_cfg *)((x)->cfg))
 #define to_dp_cfg(x) ((struct qmp_phy_dp_cfg *)((x)->cfg))
 #define to_usb_layout(x) ((struct qmp_phy_usb_layout *)((x)->layout))
@@ -2204,6 +2209,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_phy_usb3_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-dp-phy",
+		.data =  &qcs615_phy_dp_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
 		.data = &qcm2290_phy_usb3_cfg,

-- 
2.34.1


