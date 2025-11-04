Return-Path: <devicetree+bounces-234687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF0EC2FBCE
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:58:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F1C23AB756
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FCD43126C0;
	Tue,  4 Nov 2025 07:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ux5VKHro";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MIA2Rwx+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55933310784
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762242996; cv=none; b=s90sW6Fnrx737hFOE+tA+HyE/KlKMtFN7avois3lsZSfBmzMZUdcl2tGqmQcxtKGfJMjVD6zg1j93WPCIJKhrfOO8Lj938o3PkfOZ05eajJaEVhezn/+D+U2r05/5zMa7NItatrwhNrYyTYgueS/t5sr7jJ6ZNF20z2K2Ia+114=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762242996; c=relaxed/simple;
	bh=zt/h1GPrcku6VfCD1Z2xF2fCFX7fT2M31PCFfCnbMWM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fpgTe/AUcW1nUgLLqsq7L3fPwR0q2zbuHZbYj/HNhYVgd0lYlxP0ze89/2FisOMZRtAi7QZ5iOc7iNwivY5YuaTX0BgrXet0zyvJMFgS0tB6muzLOxYamSQBYvkqmkZqr4Mc0JCSsnTZ8ljZaZkh8RJ6REO5NEQ6kA6e5tWbw2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ux5VKHro; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MIA2Rwx+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A42q7eU3659504
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:56:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=; b=Ux5VKHrowjSzFGVd
	8RbnKGrH08ze39srzgQOVAcXVsirjiq6VDbXmFF2rqFkSGxt7MMo3BYnTpSFA4Sj
	FSeDGlzAAYALT6nxLzNV05F1TNs2Uim/sr0tEmVya9ZuQlL3Tx+For52DVUvl4I8
	ZRavsHyaC9O61y31OY3zNSRL/6y9ws0qMbOfO8XpCHXB0AN1WPGP9bJqMUgjiJTI
	l4VFumi09iGGPFK19wqLVjJcNvOCDVfXBdPENht9MF0KTMcz3sMiWhVrtqttxYKG
	0VnxJdvvfwFyUiPNizxTMMTt20zuUmIpzPTeZZCZL8cjg3ZtCJN7ZehgHjmXYZzS
	Dvz5nA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70gea4cu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:56:32 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3407734d98bso5404853a91.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:56:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762242992; x=1762847792; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=;
        b=MIA2Rwx+zZ7DdxTpD9lMCKevZt3ruRFYLoynlpBO8l14Ns3SvoJrQLV9qnTW3Sm0G9
         hfEDFXTIVP3/EdbZ6DaH1pCrOc7UdARpKR0uzed3hUa5HcJQzGj6vIIJYCKq9ts7c+8n
         lieF8FE3nTZPRsu8wNaHB6s53iR4l6WUgNgzERJyqMBYZGbrWpLvmsRF/lWsmv/b5ufD
         V4EswxIl6Ita8ffvqsizip6GY1pf0ea78UK8+10rAJItb1LIkKH4dGkdXJNsRHgFMLI9
         VQ/6gPhADIHXRCb6fTsK55E2d89dKM+3KufufsPvEtwXJWJFJj2AobFGltfVrPxmt65z
         e2eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762242992; x=1762847792;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=36rRRJsb8die6TTtLLHxpI3oG8UeacOGLRFgDPbnS9E=;
        b=f0Ucw0jagwD6YVD3Fg9NSPZPIQT/yDaqeEqFp8DA5w97dTDN/nn5bhqqMuVI9I0HT1
         R6AwkZz7y7el9T8mbWv5mvwKyYTVaX20IWHwvOpJD8RCBnivj7j56St4zWa6w/0dssSe
         ET0AHxO7XgFrddxLxZoGWyQ6P4sKW5FEpfzKu7m+8FrrjiL0THXXPOHSdA0+pBSR8zxs
         qyP7/W1IQ+u+vicNDkBehRv0yoxxPiA2SO6ovAcVPxDQT4j/Ly6QuvMoXyiBZRrWZM4G
         yoD5O6RmfTYqcxaWlk+dGUfIi5XsezWqAscgc2ElzjWA6w/ftUcLLbzMk8gkVYeR84ae
         FLCQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwz+S3Bh3nHTp8XhfPeSKcbcGHRtcXOgK+kfZekfuKlo4mx/LtbelBIPFQMJALQ1029uf2+XvPvWnx@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs5eSmdlei9gaZGFkb5vkYyazyg7tfdGMYj3ILi42E6+lMfE30
	mjHno8xr/CH6qupSgX7JxIN+O4Jwes8ArAxX+AReeMGuGWnIh+W1mOMeN7oDinlsbMN15R0c+gD
	yG5LbLd6rOj2nCiiuaXCVVjNfK24QNNSr6Fip4Y7AcULArbnJdSI4fssOEgnMyDhJ
X-Gm-Gg: ASbGnctbbI6eIj34mVFIt08YaQ/eIidokjeM0zWdCtgJ93pRkQuuyiQHPf6uSgR1oY0
	7uJi7qypzrAZ6pKzHA5u6l0WHuFxSlSXkQiNlSgTyfWMllKAAnsFJzCZlQ46oeT6DxWgcfOsPeV
	HPqbYWHQzNH9Zz0Lq2uEZgKyTPXGoOfmMR4yQrunoGxhFsRlBufxiPSTN+WIR93goKzQ/zzjv8U
	RZ1x2pKTGWxEOdKWmccjmcgjpzAZIkgakpEUwMTsqZMckaK3rE6GVQEdYqcuLB+HQyyhGAPS/na
	EQH0VjFdJKbqKpRZBJg8Tfhbi3Ebw6B0yi1I0ogAr/uCQekEHo4CrxkNhyg60yL5dDxfZLBvIZO
	nzJn1/qxySVRgJkXeHaLHlScaO8igSCkJDzVGHUri9+LkYw==
X-Received: by 2002:a17:90b:3891:b0:340:c179:365a with SMTP id 98e67ed59e1d1-340c179451amr14114069a91.0.1762242991917;
        Mon, 03 Nov 2025 23:56:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETspjX1zfLO79dug+X80CLuKL5y0H5UZzcdJuKRXhbJn8V/01XyYLjgtnScFuA8LhmepwgcA==
X-Received: by 2002:a17:90b:3891:b0:340:c179:365a with SMTP id 98e67ed59e1d1-340c179451amr14114038a91.0.1762242991380;
        Mon, 03 Nov 2025 23:56:31 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34159a16652sm3627951a91.20.2025.11.03.23.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:56:31 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 23:56:26 -0800
Subject: [PATCH v6 3/3] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen5x4 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-glymur-pcie-upstream-v6-3-18a5e0a538dc@oss.qualcomm.com>
References: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
In-Reply-To: <20251103-glymur-pcie-upstream-v6-0-18a5e0a538dc@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762242987; l=2929;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=3I4+Hh02UK/6hCXFAJiGGjbIJsRvaSQpVywV9Q7zV1c=;
 b=Yy0wCNKoMhHH5+bQwNBM44G+N0KLCCONobdst6FmOH8rDTGtsbP9m10SSMTJLjzkyWK7f3zOv
 ljg3VAf21cLByVHntHv+oCK2C7W0VY280ExOKcxYAjx+vJ8KHssX0cZ
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-ORIG-GUID: ClMKvz_H1NAG2X9vxpMzp3xZh6gJbkPv
X-Authority-Analysis: v=2.4 cv=bqBBxUai c=1 sm=1 tr=0 ts=6909b1b0 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=cXB1dxBGfnZZ65A63A0A:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2NCBTYWx0ZWRfX/Vj9w1e+fznb
 WBRuSDctFFyH730Fh//2KXX1YyOMKfC4rW3t0JtA4GoLJdnkvC9hWQH1SWH5BB2E8R2g+P8FrNL
 1UmoeI1+3/RFJWOGiINUetHARNipDmiAIVoVvHxN1d0eJyCNBkK08VvyV8FZTpN7ihPK279LVqv
 nmzq2AvqbNC/IgAt28dOqwDfFVcxrZ+3WKC4ALbkY7MrYCI611JUbyPHh2HK/qxPeZXkXDJtrk6
 BUVABZiojxNXetH8Yk228vt77sr2fmyIX+vov8uVsNOCi85c73oSkyb0O8WglDQvwrmd3RwVYxu
 GHGERSHI2Un+Lljp5J9JXUk3Ynr79/ELp+44eaNshVjU+120W0xMKKCLproUPK44vU9yc+KM+mF
 kSwTu+jb9yDOOq3nr/d475Rtbb8UJw==
X-Proofpoint-GUID: ClMKvz_H1NAG2X9vxpMzp3xZh6gJbkPv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511040064

From: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>

Add support for Gen5 x4 PCIe QMP PHY found on Glymur platform.

Signed-off-by: Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>
Signed-off-by: Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 62b1c845b6275d924fa501ac64e69db5f58844aa..86b1b7e2da86a8675e3e48e90b782afb21cafd77 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -100,6 +100,12 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_50_PCS_POWER_DOWN_CONTROL,
+};
+
 static const struct qmp_phy_init_tbl msm8998_pcie_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_BIAS_EN_CLKBUFLR_EN, 0x14),
 	QMP_PHY_INIT_CFG(QSERDES_V3_COM_CLK_SELECT, 0x30),
@@ -3072,6 +3078,7 @@ struct qmp_pcie_offsets {
 	u16 rx2;
 	u16 txz;
 	u16 rxz;
+	u16 txrxz;
 	u16 ln_shrd;
 };
 
@@ -3356,6 +3363,12 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
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
 
@@ -4412,6 +4425,22 @@ static const struct qmp_phy_cfg qmp_v6_gen4x4_pciephy_cfg = {
 	.phy_status             = PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
+	.lanes = 4,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5163,6 +5192,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
+		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,
 	}, {

-- 
2.34.1


