Return-Path: <devicetree+bounces-207355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D24B2F471
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:46:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D46D17B53E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA122F6592;
	Thu, 21 Aug 2025 09:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O4SimEev"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 818702EF66E
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755769500; cv=none; b=Yz9XoGlNMy8vs1/wdQ9vzKkYpv6vmbM7uNLYZvZDYjzuahHS/snMLqTuon+YLJfYSyEyAOEiJSVM3FJfoyJ1wVY+Ig6flW1DFT6gqqgQD3c0ljiSDu0HmIeKK1MmosKK0o4/QeIo0X6jzNwTWbxQiKKrlAHYuhkbiMxM2b0dWZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755769500; c=relaxed/simple;
	bh=u8m9J6JQcdijVzZyCUGGAb3P5FvSVwhfqYJgvJbWutg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aOf1sZzHPortDUAnu5Cu42xpOdu9sI6FygzjUdFAGVt05fEsAspvIYLkUOayd1SX0oXUFxHeWrGwKrSwGPC46qS6/SCrO6ZdghcdBnixR+5MMx/3rV/lKnyFj29X90VAOS2TjTkY29E8t/09ZQqFXRQpCwAI+UUgDdUZjPAdfgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O4SimEev; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9bWba006587
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pAjVIj9zZFihL1lRBahHpibojgWb7AeuAiH+1H/bqwE=; b=O4SimEevwrTiOB8/
	Q/CV5f89mpciz9a9uEDPJyNEn8VgtPq9vk+dKGBbBRSB1dIe4iLYwrUlBkmjskIG
	hk6wu8bY8y9gSp2RX85NjuPxbk/z94PtBw7SBru61U4Q+oYqVu5cN36pMaqauKPP
	lWS0SVIDkfWIb2/07PSxPsjt0uSvSm+XxiSiaXFd5aW9SuJu7ZYdlqNWnvBd7ZyV
	HvCnBn/wkpkYVIuq9vn7q0Qa59XoSIvDeSLtrfs4GXJ9A0NcAfAFyP/59NbL2DxE
	B5lyV8Xt5SmDYrIyTx/Fpw7JKEldqS53xz3nfT4x38PfkctgChymWsTpn81YYCJp
	llIGsQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5294yrv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:44:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2e614889so923350b3a.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755769497; x=1756374297;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pAjVIj9zZFihL1lRBahHpibojgWb7AeuAiH+1H/bqwE=;
        b=I75MyKthyAA9BB2AQk7Rs7CK5OpM/WrTeCtR8Lr+2IRduDt+1FfOYz5DlBUseBIGXO
         NT7UIsSw7jFSr3QFeijjmIj7i6S6LW7c/YS6M/Cz0M3LK9XBUgxkJWXWLQ/IpXy/y2zO
         Cb+MAkPob41Ug3knML09+TDy84Qyr3wrjQqZ/66+SfcF/niguisYJ6wY+J7ZgHeaB/Fr
         mbu8qcvXiVMu4ZKipSomMG06anOG0OvKDi+XIGG+CcKPVp86wkPyhdKdObgQ+sn399Rm
         EyBSnx/6pJVdeJf2PkajIf1efkLQzt3nhfAxJ2S41FOorggCD+pP2wbTjCIX3PKPSh0E
         0xig==
X-Forwarded-Encrypted: i=1; AJvYcCWnSX9IXXj6f/dMBgsj4kdWvupllriw2pGGBdPHUzwiLjLcO7XF67qD/TymZ2a/OMRGxpMw3uko5K/E@vger.kernel.org
X-Gm-Message-State: AOJu0YxpHqdMFkanIXqt/GP6YlZp4/9GMddr4WKZzDJG1ncMpEri7z2v
	hX7MM+KxpT5CPqDqF6lJFVp3NqkhULqmwFup7O8oYEWcgkM88DXcxMkKPbwKj64yE98y2i70ldQ
	yaKoVDGHjzEs5Ln4I4quwa5oen2soax1cyZ/kZQ7idvzz9C7zV+anxPRL772oYmGX
X-Gm-Gg: ASbGncsqO7tM+7eIYYpnK4OksY04qJgLO3jMSGfc9noP6Na7eN1zVJrQC5/MFuqJTOL
	94edndkoFycXZghtmzOm//BYQnOyDeuUFlY+V/Wl5njFblncbz8a2Y5DJRzH2SbmiMv6yEE2j68
	Pp+ixJ0abReGiu0cHuxBr0nI/scTa39fqApxzK7f+SMjHhtfGDILnvbdlIfj2c+mKrjEKj3ij91
	GZEUN7virC+wkAW3ZrIShl0qbL2BkVGFMjd4OMF0W0kDUFCf8/H8YQ7o6dFzlnWA+tXKgCTloJg
	hNUJHCtBbyY7hm355x4gJTaYrZBye0QogXJ1vagBH5Hl3WCtTYswlLubNRBYbneXN4PYlFzvMXS
	cHCO3UZlFcTl/Lzg=
X-Received: by 2002:a05:6a21:6daa:b0:240:1a3a:d7bc with SMTP id adf61e73a8af0-2433074ea5dmr2729230637.3.1755769496723;
        Thu, 21 Aug 2025 02:44:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/MpkzQr3ODF27xl6H7fzctS/steJVN2Lh7mmHLZCmX18Qc+LXKukq9LL+tR+L4vIIZsB+BQ==
X-Received: by 2002:a05:6a21:6daa:b0:240:1a3a:d7bc with SMTP id adf61e73a8af0-2433074ea5dmr2729197637.3.1755769496270;
        Thu, 21 Aug 2025 02:44:56 -0700 (PDT)
Received: from hu-wenbyao-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-324f23d853esm1426078a91.6.2025.08.21.02.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:44:55 -0700 (PDT)
From: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Date: Thu, 21 Aug 2025 02:44:31 -0700
Subject: [PATCH v2 4/4] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-glymur_pcie5-v2-4-cd516784ef20@oss.qualcomm.com>
References: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
In-Reply-To: <20250821-glymur_pcie5-v2-0-cd516784ef20@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755769489; l=2773;
 i=wenbin.yao@oss.qualcomm.com; s=20250806; h=from:subject:message-id;
 bh=JCxdUH/Y1jTAi945mFOnkGKBqKReuEeHRFI8YpRwdqY=;
 b=6wWnoLAUA4kYP35QHTffBdgSdXwR5Lbvh/SsOGFjyL6WHXSpedpTdCm7nm6S/liahDEy/d2bs
 IHolWYfa9GbCqIKvGTxQIMxeN2g6PHyR0poVPj8UmQfDLMRioUouvFd
X-Developer-Key: i=wenbin.yao@oss.qualcomm.com; a=ed25519;
 pk=nBPq+51QejLSupTaJoOMvgFbXSyRVCJexMZ+bUTG5KU=
X-Proofpoint-GUID: zZlE-45VfbfwiPR49LIHy-QCHz2_sJt6
X-Proofpoint-ORIG-GUID: zZlE-45VfbfwiPR49LIHy-QCHz2_sJt6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX2FYNjBa9A8uo
 ndR4WwI2bhiLEqalkdTuAd1EuIQ4skujPR3N1LxizR6otJuyzUJqC70n5ilzBSuXVx9YK2CMZSy
 9LiCYQ2TxtxGOzSrrlt1h+YEiUbXaekB+fw1jol1CFPQN+Wq2t3MoPvXJc0xImwBSYgECqR6p+0
 U05vOpRkEcMqm+5cYXWMiAhPhhPY9uTL02AcUuMFtwCzkaCth2RPCM61SVC8usmGNfZydO2xw+8
 wMnK215Eg2diWi9OzqbRy/Fd+KMCe4G06/zRTtDJKya/YEhJWDQs+hkarh1Vr1/cEQwTs9v2fQn
 I3P5DVKmn/fd/6qRZPU9FKs7X2iFh+gs8W7F7nJfsAh2coaLtzAjrCG1DlAeeoUAL4XA4j5ELzD
 xOhe3n/6cFB2gwO/ob+6yH3xIjT2oQ==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a6ea99 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=KvwrgBbZ-pJFRlqJlL4A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 95830dcfdec9b1f68fd55d1cc3c102985cfafcc1..fc67ee1e4a3c0c6f2ec23f51c09c3cc16df9aaf4 100644
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
@@ -2963,6 +2969,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrxz;
 	u16 ln_shrd;
 };
 
@@ -3229,6 +3236,12 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
+	.serdes     = 0x8000,
+	.pcs        = 0x9000,
+	.txrxz      = 0xd000,
+};
+
 static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
 	.lanes			= 1,
 
@@ -4258,6 +4271,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
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
@@ -5114,6 +5143,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
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


