Return-Path: <devicetree+bounces-206778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E634BB2D901
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:48:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C656C1C47E19
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:39:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B7C72E285C;
	Wed, 20 Aug 2025 09:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eknKaBkr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63F62DA755
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682601; cv=none; b=RVjIQdt8GhsycpDzGPACJXDxIjnrmEidxu4jA4PFrc2cM1U/mbipchWBEWSubakoBccFSv35O8t7bdyXSv7FxZIdeNp2DPr8SU9upLyKrtfV0xSRD98iu3TPuIfaUYBuMRbY74V7SAp5gTbx6wgutHBQrMJ+u6aSAekybz9vPyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682601; c=relaxed/simple;
	bh=Au5j4uIKg5CFe2fNrABPgg+lLTFB0b1BIdCK5Ts5W+c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JbDGTjmOX78qrfYWhcm7UvmbfnF1+eV8vOkTuzJSSZIwagT9WqiqpChrXbKpXkU5gY/Za1SxDYhKUgI7u5lu7RVnNdwfSfDdRqseK6eFPDjutT4NC/4ktxPEZWrajZwM0OWr10Wf7QYVFV6wQnsatJyBFvhc4qE4ZtFGxniXyLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eknKaBkr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1okn4020839
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:36:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/01U9WrFK6eJjq2i30BGBpBw8ZKhEzQxhNKF7yaBIZU=; b=eknKaBkrl/mv6tV8
	loOPEcnimyf0ZGViov+m42Q7C1OurZwMtYpD4GcrVKn6ik9pn5M7y/2xUU/LkMtt
	j6NXLj6I4qdSJxG4NUqQmSlbE3JWInjrtnMkCA94sPblKZKdhSiYSFOLAlEvf+q3
	iymLd0YoDEpL7vCdksv3WsffZ7w/FHI/Qt+g2zkoXp+A93LT4QTmik471CiNpCnu
	2oFO7h/IPHLWVa5q+wo1fueLLwalN/pTnh40ntblWa9VUQa6nePQuf1vRboi1Y3i
	R/MZvz9piWT+UYVsObV7Ne2derzZSmA58cLyIEQzJXykl8kNg7Mdp3dVEWL+8ADU
	KJMhpA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5291743-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:36:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581c3b2bso10059455ad.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682598; x=1756287398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/01U9WrFK6eJjq2i30BGBpBw8ZKhEzQxhNKF7yaBIZU=;
        b=HLISKdYb3xyR7pUxhj6YIWFKGROyu8XbeszZewp938+sqmKs00862Q1rAFNjw1yaXv
         TyWRViQm55eMXiyr7KKe/miCDPjBeMVff8TOoE1E5dbnSxyKdKu0JPxHecvfmFt4R7gl
         5qhRFWDPY8ACxG+ZjycLd/r3joiO0cu+oRBdDFRPagcG5C44ZaSndnsSwJ9+RMNpSwtk
         hH8Vi0gXN5h0RawUdx6p8rYqbfcoi6pdBgW4QEtFHRN//Pn0+6jhIpq6V/e/fFwOGwUN
         sm58xuPhpl/Z1GCtFP8eBr9UcEEI5razLi6dsHeXtofcEbvEo42zM5e3QBkHm+hxgZ6k
         VHjw==
X-Forwarded-Encrypted: i=1; AJvYcCWOB/sIzC5Og4qCy5nCrwayqyW6c2qqotfwPFx2l44uOTvZ3YPPEMNH7bX6OBMNCQfuV6vVpzGQMk7q@vger.kernel.org
X-Gm-Message-State: AOJu0YzNkp9VS6DrnYrJJVMigHaogwSlQt60RtjK7QxYsJZbm8hcSJob
	Qui/D0QU7sXvwmmMYnbq4J6k8KxuCXACTSE8xIP5b/tuj1nrBELQR7Wpbs4k7jot+touhr9if+n
	WeGLNJtxzG4dDcCmW+UIzOvCBtTPT/GNhPFudVyXfer8esHDUI4mxU+Dw8qB+QiSc
X-Gm-Gg: ASbGncuRvqJe2spSCClrDLMdMln+FLik6mPIkEWonymKKHECR77tzxMT+GaDt7Nett7
	8qLnUFC+oDXsk81kaiQ9/ZOavpCI9WACKaBrqGGP+QZG8ARF7nR3O1ZtxEq1HauKTJebJj/Sle5
	Q/6zlADH1Xal5lOKPoFq7zXYthyoJ0jevbgnrbBtepNcaH12vKZuExmbJ1NLn5hpzhQKlEWE0xc
	V24/Z0UvaKgDm4IDa6ear6EAV3rBtpbk2od7L7W6LqbBm8BgpoHTzz797tlITrHu6ilqnnUmKYB
	tElimyxSgwfhB4KJycenypvkBm1tAR3XCrMNEjp+Qe7G8ytaleQMVCJyw5FbfsH6U+5p4jCcxv0
	i9+hqbnkgm6Ycm5S1oyWeOoOZWn+Flpi3dvf8Q5ozWu4L4G3KlwFm5guj
X-Received: by 2002:a17:902:ea05:b0:240:52d7:e8a4 with SMTP id d9443c01a7336-245ef236c14mr13848855ad.7.1755682597506;
        Wed, 20 Aug 2025 02:36:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVOpeLEXLIK665HUx3eONf+neE43AUvhCDFX0ZfWa6PWxaJVl4lunGADtjJ90NajJa15+Xtg==
X-Received: by 2002:a17:902:ea05:b0:240:52d7:e8a4 with SMTP id d9443c01a7336-245ef236c14mr13848485ad.7.1755682596997;
        Wed, 20 Aug 2025 02:36:36 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:36:36 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:50 +0800
Subject: [PATCH v3 08/14] phy: qcom: qmp-usbc: Add DP PHY configuration
 support for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-8-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682521; l=10287;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=Au5j4uIKg5CFe2fNrABPgg+lLTFB0b1BIdCK5Ts5W+c=;
 b=guwW8rllyedPULooM5NTzerFgU+BA/4+KLRsVf2pixoMYW2Fuaeqy/UQZMYnDcs+OPKrjppTW
 +04HNfdiJpbAWiniy5aI6csA5/zHli4yR+cqTcHESnxgLA5bE+Esw/C
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: XfWMMY18M4E5Yv3wm3ZsCSKVLVhOLr9D
X-Proofpoint-ORIG-GUID: XfWMMY18M4E5Yv3wm3ZsCSKVLVhOLr9D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX92w0GaTx6gSs
 WHIJp+WscCaoUo+q8LAhASMxLJcSaqgSX17b3tCUP/iLDNkNgldDoWyq4YG0hJgKqPZTj/liobd
 +wwptn0dblnK1vknSzVTxtWTLDAjt/x626Ue1KQgm9jZdppr0BIJFID55AnMaMHQVJlgLNWegg4
 GFZhnJfoyBayjLN3K9BuTJpo2qAjdgwcRY10Cioy2bL03YjIFeJluRCpNopgbTIdTEuzPMUYZ1Z
 o5LuGY8af3/NfNM9+Im7EdTxO2vKSaAyZ9YBCLqIb0JkSmHxjapJE8IkE3Iy6aKJaDOdHptU0L8
 R+4WJK2HyB+1ai7x4tynzK3oxbtHrW05X5R15Ateqq7J61X1FEpERACx/fAbOd2zhUCLYdxg3+/
 ZgTkak/cSXBfQaFtcMiWxYbGt2y4Qg==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a59726 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ewgvXcV7Hd3kUc6h8x0A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Introduce DisplayPort PHY configuration routines for QCS615, including
aux channel setup, lane control, voltage swing tuning, clock
programming and calibration. These callbacks are registered via
qmp_phy_cfg to enable DP mode on USB/DP switchable Type-C PHYs.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h |   1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c   | 251 +++++++++++++++++++++++++++++
 2 files changed, 252 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
index 0ebd405bcaf0cac8215550bfc9b226f30cc43a59..59885616405f878885d0837838a0bac1899fb69f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-dp-phy.h
@@ -25,6 +25,7 @@
 #define QSERDES_DP_PHY_AUX_CFG7				0x03c
 #define QSERDES_DP_PHY_AUX_CFG8				0x040
 #define QSERDES_DP_PHY_AUX_CFG9				0x044
+#define QSERDES_DP_PHY_VCO_DIV				0x068
 
 /* QSERDES COM_BIAS_EN_CLKBUFLR_EN bits */
 # define QSERDES_V3_COM_BIAS_EN				0x0001
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 4e797b7e65da0e3a827efa9a179f1c150c1b8b00..1508a4a5f57aff85318485b79528325f28a825a4 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -28,6 +28,9 @@
 #include "phy-qcom-qmp.h"
 #include "phy-qcom-qmp-pcs-misc-v3.h"
 
+#include "phy-qcom-qmp-dp-phy.h"
+#include "phy-qcom-qmp-dp-phy-v3.h"
+
 #define PHY_INIT_COMPLETE_TIMEOUT		10000
 
 /* set of registers with offsets different per-PHY */
@@ -623,6 +626,11 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
+static void qcs615_qmp_dp_aux_init(struct qmp_usbc *qmp);
+static void qcs615_qmp_configure_dp_tx(struct qmp_usbc *qmp);
+static int qcs615_qmp_configure_dp_phy(struct qmp_usbc *qmp);
+static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp);
+
 static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.offsets		= &qmp_usbc_usb3dp_offsets_qcs615,
 	.type			= QMP_PHY_USBC_USB3_DP,
@@ -653,6 +661,11 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.swing_tbl		= &qmp_dp_voltage_swing_hbr2_rbr,
 	.pre_emphasis_tbl	= &qmp_dp_pre_emphasis_hbr2_rbr,
 
+	.dp_aux_init		= qcs615_qmp_dp_aux_init,
+	.configure_dp_tx	= qcs615_qmp_configure_dp_tx,
+	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
+	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
+
 	.reset_list		= usb3dpphy_reset_l,
 	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
 	.vreg_list		= qmp_phy_usbdp_vreg_l,
@@ -723,6 +736,244 @@ static int qmp_usbc_com_exit(struct phy *phy)
 	return 0;
 }
 
+static void qcs615_qmp_dp_aux_init(struct qmp_usbc *qmp)
+{
+	writel(DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN,
+	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN,
+	       qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+
+	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG0);
+	writel(0x13, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
+	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG2);
+	writel(0x00, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG3);
+	writel(0x0a, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG4);
+	writel(0x26, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG5);
+	writel(0x0a, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG6);
+	writel(0x03, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG7);
+	writel(0xbb, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG8);
+	writel(0x03, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG9);
+	qmp->dp_aux_cfg = 0;
+
+	writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
+	       PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
+	       PHY_AUX_REQ_ERR_MASK,
+	       qmp->dp_dp_phy + QSERDES_V3_DP_PHY_AUX_INTERRUPT_MASK);
+}
+
+static int qcs615_qmp_configure_dp_swing(struct qmp_usbc *qmp)
+{
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
+	void __iomem *tx = qmp->dp_tx;
+	void __iomem *tx2 = qmp->dp_tx2;
+	unsigned int v_level = 0, p_level = 0;
+	u8 voltage_swing_cfg, pre_emphasis_cfg;
+	int i;
+
+	if (dp_opts->lanes > 4) {
+		dev_err(qmp->dev, "Invalid lane_num(%d)\n", dp_opts->lanes);
+		return -EINVAL;
+	}
+
+	for (i = 0; i < dp_opts->lanes; i++) {
+		v_level = max(v_level, dp_opts->voltage[i]);
+		p_level = max(p_level, dp_opts->pre[i]);
+	}
+
+	if (v_level > 4 || p_level > 4) {
+		dev_err(qmp->dev, "Invalid v(%d) | p(%d) level)\n",
+			v_level, p_level);
+		return -EINVAL;
+	}
+
+	voltage_swing_cfg = (*cfg->swing_tbl)[v_level][p_level];
+	pre_emphasis_cfg = (*cfg->pre_emphasis_tbl)[v_level][p_level];
+
+	voltage_swing_cfg |= DP_PHY_TXn_TX_DRV_LVL_MUX_EN;
+	pre_emphasis_cfg |= DP_PHY_TXn_TX_EMP_POST1_LVL_MUX_EN;
+
+	if (voltage_swing_cfg == 0xff && pre_emphasis_cfg == 0xff)
+		return -EINVAL;
+
+	writel(voltage_swing_cfg, tx + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(pre_emphasis_cfg, tx + QSERDES_V3_TX_TX_EMP_POST1_LVL);
+	writel(voltage_swing_cfg, tx2 + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(pre_emphasis_cfg, tx2 + QSERDES_V3_TX_TX_EMP_POST1_LVL);
+
+	return 0;
+}
+
+static void qmp_usbc_configure_dp_mode(struct qmp_usbc *qmp)
+{
+	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
+	u32 val;
+
+	val = DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	      DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN;
+
+	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
+
+	if (reverse)
+		writel(0xc9, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
+	else
+		writel(0xd9, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
+}
+
+static int qmp_usbc_configure_dp_clocks(struct qmp_usbc *qmp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
+	u32 phy_vco_div;
+	unsigned long pixel_freq;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		phy_vco_div = 0x1;
+		pixel_freq = 1620000000UL / 2;
+		break;
+	case 2700:
+		phy_vco_div = 0x1;
+		pixel_freq = 2700000000UL / 2;
+		break;
+	case 5400:
+		phy_vco_div = 0x2;
+		pixel_freq = 5400000000UL / 4;
+		break;
+	default:
+		dev_err(qmp->dev, "link rate:%d not supported\n", dp_opts->link_rate);
+		return -EINVAL;
+	}
+	writel(phy_vco_div, qmp->dp_dp_phy + QSERDES_DP_PHY_VCO_DIV);
+
+	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
+	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);
+
+	return 0;
+}
+
+static void qcs615_qmp_configure_dp_tx(struct qmp_usbc *qmp)
+{
+	void __iomem *tx = qmp->dp_tx;
+	void __iomem *tx2 = qmp->dp_tx2;
+
+	/* program default setting first */
+	writel(0x2a, tx + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(0x20, tx + QSERDES_V3_TX_TX_EMP_POST1_LVL);
+	writel(0x2a, tx2 + QSERDES_V3_TX_TX_DRV_LVL);
+	writel(0x20, tx2 + QSERDES_V3_TX_TX_EMP_POST1_LVL);
+
+	qcs615_qmp_configure_dp_swing(qmp);
+}
+
+static int qcs615_qmp_configure_dp_phy(struct qmp_usbc *qmp)
+{
+	u32 status;
+	int ret;
+
+	qmp_usbc_configure_dp_mode(qmp);
+
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_TX0_TX1_LANE_CTL);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_V3_DP_PHY_TX2_TX3_LANE_CTL);
+
+	ret = qmp_usbc_configure_dp_clocks(qmp);
+	if (ret)
+		return ret;
+
+	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x05, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x01, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+
+	writel(0x20, qmp->dp_serdes + QSERDES_COM_RESETSM_CNTRL);
+
+	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_COM_C_READY_STATUS,
+			       status,
+			       ((status & BIT(0)) > 0),
+			       500,
+			       10000)) {
+		dev_err(qmp->dev, "C_READY not ready\n");
+		return -ETIMEDOUT;
+	}
+
+	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_COM_CMN_STATUS,
+			       status,
+			       ((status & BIT(0)) > 0),
+			       500,
+			       10000)){
+		dev_err(qmp->dev, "FREQ_DONE not ready\n");
+		return -ETIMEDOUT;
+	}
+
+	if (readl_poll_timeout(qmp->dp_serdes + QSERDES_COM_CMN_STATUS,
+			       status,
+			       ((status & BIT(1)) > 0),
+			       500,
+			       10000)){
+		dev_err(qmp->dev, "PLL_LOCKED not ready\n");
+		return -ETIMEDOUT;
+	}
+
+	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+
+	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V3_DP_PHY_STATUS,
+			       status,
+			       ((status & BIT(0)) > 0),
+			       500,
+			       10000)){
+		dev_err(qmp->dev, "TSYNC_DONE not ready\n");
+		return -ETIMEDOUT;
+	}
+
+	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V3_DP_PHY_STATUS,
+			       status,
+			       ((status & BIT(1)) > 0),
+			       500,
+			       10000)){
+		dev_err(qmp->dev, "PHY_READY not ready\n");
+		return -ETIMEDOUT;
+	}
+
+	writel(0x3f, qmp->dp_tx + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
+	writel(0x10, qmp->dp_tx + QSERDES_V3_TX_HIGHZ_DRVR_EN);
+	writel(0x0a, qmp->dp_tx + QSERDES_V3_TX_TX_POL_INV);
+	writel(0x3f, qmp->dp_tx2 + QSERDES_V3_TX_TRANSCEIVER_BIAS_EN);
+	writel(0x10, qmp->dp_tx2 + QSERDES_V3_TX_HIGHZ_DRVR_EN);
+	writel(0x0a, qmp->dp_tx2 + QSERDES_V3_TX_TX_POL_INV);
+
+	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
+
+	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V3_DP_PHY_STATUS,
+			       status,
+			       ((status & BIT(1)) > 0),
+			       500,
+			       10000)){
+		dev_err(qmp->dev, "PHY_READY not ready\n");
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp)
+{
+	static const u8 cfg1_settings[] = {0x13, 0x23, 0x1d};
+	u8 val;
+
+	qmp->dp_aux_cfg++;
+	qmp->dp_aux_cfg %= ARRAY_SIZE(cfg1_settings);
+	val = cfg1_settings[qmp->dp_aux_cfg];
+
+	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_AUX_CFG1);
+
+	return 0;
+}
+
 static int qmp_usbc_usb_power_on(struct phy *phy)
 {
 	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
2.34.1


