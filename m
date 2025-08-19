Return-Path: <devicetree+bounces-206266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C1BB2BE2E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:55:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E29925652DD
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 09:54:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 789943218BE;
	Tue, 19 Aug 2025 09:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WxLe+u3Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CEC931E103
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755597174; cv=none; b=lgpiH8sNvCvT72JGHZFIRXYzNS3LJIQUlWYrIrYCgsZd+kYi1xBpiPt25xq1mnUMp6l8Rb0D7mSSscm7zMjHCVGpUJfH+3R0QYQoo9zFGKfOUq6U7aHGUbxhAtFqIpumgNrHSXoLRWPBcMxzqPBN844lq8syFw3fRHnX1lRN1/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755597174; c=relaxed/simple;
	bh=XbC/EhKIPbWgAx5xtCXs15Izpyh+QjiCFb5aWinn93k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=L7AMwxjENCBnGit5R79qIlItUng5Wlwi1N8jS90OEV/QAy9rRdDayU/cM+QzP9AusAghYOb7aBT4KJ7lwSgUylRhJZ2SaHIne0yBqEGWKRT6/95O8dwmHT97+M7G/eTZTzqkvFLSWfMfaBkQKILXmzZoomCdMNiqBPWQu3c/9Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WxLe+u3Y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Yru028709
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZXdUtQNXJ2hesfvhNvI/OWy7YCjNNYfGl5bsLwFo4PQ=; b=WxLe+u3YzcryvC+U
	6hBambZ+jwevUrQjnFGvbMsmUWo5fF82NysSjIDSRMKtM+4i2ZEGvuLG2g/LNkRE
	V8im4WQf0tG7EBStZmOLzapDhH+C8xqSMOGvdai2EUVZN+pCjKLatlPm8BoE/kwf
	bZ5AaMn3s8qSGuvgivOjk866wHVjGv01Wo77tAWdBpx2rt2LFSGxPT8n8IMBc23l
	7Z5M2Jd62WJ8JR/9MqV/NBgQh/lwK7pDBHuOjX/UGUCopZTmREpIkPL8I3JuTveA
	I8nTPLVdi/aFVvbBYxf0l/oiTNK/2ic/2EGF1WPNAAQlo6SRgvE3aoCgf7XRkH4B
	/hxeiQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxtg977-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 09:52:51 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2eb2b837so4200021b3a.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 02:52:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755597171; x=1756201971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZXdUtQNXJ2hesfvhNvI/OWy7YCjNNYfGl5bsLwFo4PQ=;
        b=d0eXSDLaU6cPOkel2niyItTocMkJyxacWeebUZYMZNOWAL4r5fId00hXdbqENEuR66
         xBGR4y8nRcUzKNdEghTEwhHrDPxmR23GAj1lw8+FZGCBzhvJMK0c5ENxBh7/vFsuz5Lr
         x2IL4YIowJU7MQfTqapd61wSl2ndzDE+O7GaGaHJdd+3ueo372cBobHu4ny/bLskdELD
         GieQw/OYCnpYk4LWxASXC8PEQ83TTBUFMvMrJ90WEMzIJEPDkBWPHXqVSyQqLQStQn12
         9CIjUMXFEB7kZbDZVo82BBkXOq4eCbhRHi0wL2lynjOeGFWFI6+HdVNI96o3tYIZ6nGZ
         5NMA==
X-Forwarded-Encrypted: i=1; AJvYcCW2hxxrbyMcM7AsgrfMApGTQbC6s9SaNMPIaxx4twYH3IRfYAA4VfWy1PDcFLd+/EDntqV1WFP6dXCO@vger.kernel.org
X-Gm-Message-State: AOJu0YwudA9MW/lE94QKGWtJmU3DrEZWJ7wDennLc7eACKGrlt/rF6M2
	8VCws+cr2vvBjhk9h7wiBgWxCKMCGaC6CImQ/ZWal+ToA3jKl9n0PslQproK2xcTYbk4Ym4sB3R
	4unaISEmVTrnRR1iKNzWM9Ys+DCt5+0ZEMK+XTNXWryVAWeXsjwFo8/70eb8PSXv5SOdZuAKXwj
	8=
X-Gm-Gg: ASbGncsm4p3/RW6X2ESxSXDKezJWw0l8AvYSfiW6nHkwvqO9fYB+3wOQJwyAiMnHBxt
	92UN3YO3uk3LnUTSuyrMPVuwKpqRqxIZNUD9MW9B7oICzZlqmHN24w/3YI9fJv0fRvBmOlzB2pg
	qB69Pz9Dh3yfoRS/cGKr7JdpvjDeuEGa3WxM0L6DpPveAitwEbBxfwT2yCHYFxPSVpHX67Jy44u
	rLZYJcCuCjZ9enSPoxqnSt40zuScntwZ/sE9GmMJqjSY5Fc5lraLirhuPVrGUgeNAKLuksMLzjO
	1TbzbzcnZFG3r4AQUZcA3KB7IUFVXD4ef8iv4XNzTMUOCQ1fTKlzLJ3M95OWMALlSIuei/dml8R
	sBh8mjSzuM/P7MNo=
X-Received: by 2002:a05:6a00:1893:b0:748:e9e4:d970 with SMTP id d2e1a72fcca58-76e80e746a8mr2218625b3a.1.1755597170730;
        Tue, 19 Aug 2025 02:52:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHf4aRpNKR1aJRW4hTTUipwhih4soPt+VU7Faus3psEcWXtA92FJ5i400YWIWNJxAKyarm4MA==
X-Received: by 2002:a05:6a00:1893:b0:748:e9e4:d970 with SMTP id d2e1a72fcca58-76e80e746a8mr2218594b3a.1.1755597170275;
        Tue, 19 Aug 2025 02:52:50 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cf7sm1998291b3a.69.2025.08.19.02.52.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 02:52:49 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 02:52:08 -0700
Subject: [PATCH 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-glymur_pcie5-v1-4-2ea09f83cbb0@oss.qualcomm.com>
References: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
In-Reply-To: <20250819-glymur_pcie5-v1-0-2ea09f83cbb0@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755597163; l=2597;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=IjDSUOkDbzgxEeCC7x7bThrq8X7KAnHKc7YQ1oYlFq8=;
 b=+Yimf78LSPEQGi1dy/kn7GxcxX38qdkUzPgyA+eTTvwfToKLPMpvQ4zApWicSQZq7xwZZVLFx
 M1Nj5OfoxLyAau0VpucdXkSVo4mO9wu4SzVDBKYbvItORaLJRe29M/u
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-ORIG-GUID: zPtv6o0cvFVTj9i0qPUrxIHbZCAUvJkH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfXweEXV5Op+8W1
 f87Oky8KK0VpzeEXD6Nnn2lBT6jIE6RbHcDQMIr01LQJw4icokurbh/wEE+0DDSFewYxC5BWygm
 zPGgpeKwQmgkyWUISoond4w1RY4blQdLBekx+JnhOCB3jgiftoy5ObpYinIyzkyoh6Jp7CHD6Uk
 ntq4IMu2YWJtbPMTsH1QB/UHyJ7lY556+k/abSP6/phWI81MVDUmUlRYo6LQbLQtt3k11lc7rG3
 D0u+L2YsnQwWDNftpXcm/CT/ScWT2VWvNIm5o9gAhBnpbyp07YRR4ibAT9y6DntwhXdvHfLkBgt
 aI/0v0mi7jCBbkPyHBWhrSyvIw7tyo8SISBhLxM6PIBedjeNdbqhwQ2pR9OAoREl6lP58423GsT
 EGuCxo7e
X-Proofpoint-GUID: zPtv6o0cvFVTj9i0qPUrxIHbZCAUvJkH
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a44973 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KvwrgBbZ-pJFRlqJlL4A:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..e422cf6932d261074ed3419ed8806e9ed212c26c 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -93,6 +93,12 @@ static const unsigned int pciephy_v6_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]   = QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3229,6 +3235,10 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
+	.pcs        = 0x9000,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4258,6 +4268,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets        = &qmp_pcie_offsets_v8_50,
+
+	.reset_list     = sdm845_pciephy_reset_l,
+	.num_resets     = ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list      = sm8550_qmp_phy_vreg_l,
+	.num_vregs      = ARRAY_SIZE(sm8550_qmp_phy_vreg_l),
+
+	.regs           = pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl     = SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status     = PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5114,6 +5140,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy",
 		.data = &qmp_v6_gen4x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
+		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	},
 	{ },
 };

-- 
2.34.1


