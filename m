Return-Path: <devicetree+bounces-211406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E8FB3EEEA
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:52:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C3CF12C13CC
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:52:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E099626D4D4;
	Mon,  1 Sep 2025 19:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jBGY1XLE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0155721FF21
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756249; cv=none; b=O7gEb5+VBapHKdMJqCJXBgH7+4Vogq3q2Oyu6H4aAqtIW/bQZ4mSM+9fTLFPwUa4YSd6dqNQB97z8iX2Bdz4JCdtrLa53qyW2+GCB4lSzqT14qyJuO9mmXSuuqoYcPWrIT9cW4VTUznVNSXgc1yVLEKSf1uX8MaXCnVoCQ5Ln8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756249; c=relaxed/simple;
	bh=CdgQL5mdaZecDzYrMrmx0uxRF+ELbBGJzJvCdApDcTs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K8OspWccK+m+XmdckjSrD5MkdMABNvZaXQYihdHObOJo3RA5XIZyp/0Ff5Cus4a1LzPBCwZAdnHlgbb53Atb63FqO/uqt8Sb4vu5c+t4r3ams+hz0U0EVuK1WTbe/N7L+nO74TOVvWNtT6Ujl2h14eDAHIUFcGSdna7+rxujYTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jBGY1XLE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B46hh025113
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FrXvAt93TyK
	FdlEPKDTCgJcrZjP0GVH5gtoT7yXnMVg=; b=jBGY1XLEt6HjlER3+Rm/AsSwT3m
	zw+WlpE8+WEDoXtayH0O6BXIVS3DN9JdejDcJhARkgwz7nMYVOUEoG9HZjPFGoEz
	xMSBddyGr53PvCuAGhdtaUBZQy2OoNkT8e7hv4GjrPJ/dJjtkbRkDrQoLcxMMf1S
	a70rC5o00yIQ69yIfA3x5Zkhcsy9cAzGxDrOy7XhpUe2nDmOE+NHi5cFfvLMdBL/
	3fvzBeetskLseKq6E+3VkEncT37fiG48+/Lml80SV+qYZop9e6XrPCeRfDSMs8xs
	bT/y32Akh82wHMeYkCSH9t2TIjMUtwUowzBIDt/7ncXYHvKCrCrSWf2lWvQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fdkm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b2f7851326so117548351cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756246; x=1757361046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FrXvAt93TyKFdlEPKDTCgJcrZjP0GVH5gtoT7yXnMVg=;
        b=I1vzeZp2Bkvs3tjRspjkWuxtSJnCsTCO0nI8lbzjk/A4TlKPnTQbW2wGKikXL0Qlew
         G/VNrdmXIiAaOWhgR41lkubkiWooclTszjpXlLwSMh2qUEPCDvxFDJyAedp8atZ6K8WD
         1R8A6Qwr0X3PGkf0UtTWwnwbTtT3vufWWTkLfs89X/xOkMPayzhlQvJ7QWFqgXz9iOjT
         62BAA3H5pukRx118lxCQGK/F9RMafHoZ9Tuofv6sagyt2mJYgDFjKktfJj9DFA3VPpto
         7iZ6MOJZkbroZDsb50D6Kk90StJxAoTzBqpAMsXju0R8/r1oWnrOo7e83F8au6rM/ktm
         q77A==
X-Forwarded-Encrypted: i=1; AJvYcCVPgVBK5b19X1Hzj/OtL4xaoL7M2ADCypjqZnQXuDwfZTmFXiSObZmMm/Cqs6gggZvzUgOBrc1VSfrB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ixtMFP5KYTb6gHGfTz08ofjDLTBeazPGV0Ew5kCTcqTNxR7m
	XgXWntiZ+sBQ0wWnkIqe53opMrZaB9PfVlqoLyeJ3My7DTzPURBD45k5Rv60w1uZ6PUlLPzyCph
	ItDmrkfiC6qROqVfQ3svhB1022+It5r7kBoUxgklmgcTgHBNlR5Js7FaxgaeESfRR
X-Gm-Gg: ASbGnctLQnOBDHA0Uoh08Soo+Swzd6Szzyr6ES5RNiQtAEliS4gdh7OHh3CAFu6PNVi
	52EPiLKFuIQNzaTq9JpOfeJuFAcMxgmV64OrKGIqYxqwHDUyqJGd3ad1+eWqNIKnicAP0usHEYt
	ClV1tzLHskmqyyz+GLa8gFauwQPvxLs86wWTUdrNbInKNMezdWefYUdB2PV1gxQW+lHP5Qd57oq
	LdNeE6khc3y3Eni2XE2luIraznwxoQqwyB+GjtT6pc9eJ8hjNyDo/n/rK0xOTJy0XpuDdetS1ar
	rI4VdVejtIE8eM6NSCyhF77uR0FbATqL39Ko+TODMuNKu7YMIL4Obw==
X-Received: by 2002:ac8:5893:0:b0:4b2:967f:cb4b with SMTP id d75a77b69052e-4b31dcce3aemr106933891cf.63.1756756245838;
        Mon, 01 Sep 2025 12:50:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNaNqLHro1+nnQhbj6/M2WhOngioiYOWmfwgQ5TrDFRRe/furcRx1yvxHAb1QGc5fZXsVA+w==
X-Received: by 2002:ac8:5893:0:b0:4b2:967f:cb4b with SMTP id d75a77b69052e-4b31dcce3aemr106933601cf.63.1756756245302;
        Mon, 01 Sep 2025 12:50:45 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:44 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 5/7] soundwire: qcom: prepare for v3.x
Date: Mon,  1 Sep 2025 20:50:35 +0100
Message-ID: <20250901195037.47156-6-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX2ZWQfyOT7L+k
 aWdnQl59QzoGS2+kkFz1DaIvo0pZNUnlfZKpVooYPJE97SBoYq+EONXepFbkAaCLUPLsqypk1Sk
 KBvpdmTubuRKNPm2Whk+PpUSG97CD1vvSDNRldM/3ikYewQHYrWV0GPr4tU7zRCRnN8KGCzQlIs
 V5DaqjSfMY1F7CcCbIgJXZSnAkXLnzcSvTUY8DRyOg2QHLPS9DQrijMAZJE2/dq+vKriyuxxkJR
 Xi0h8fQCFzpzkCV65T3ZaPUoli665Oqz8y7dXodM/h1i98fSwhNF59Ry0ygkUH5l/bECR78eD/O
 UAc1ZUisJr0jR+ZS0HPF4Z3bNX/q1kh6VaOPa+iHv7YkaVdpgaRu/m6wLBnPq5Y87ro45b5ibZs
 KMjCYbBi
X-Proofpoint-ORIG-GUID: _Y4o8U2Rho7PoHaOTSUqzT1cmkI6aDZ2
X-Proofpoint-GUID: _Y4o8U2Rho7PoHaOTSUqzT1cmkI6aDZ2
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b5f917 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=HiuapPYOH4WAwTSfiWoA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

cleanup the register layout structs to prepare for adding new 3.x
controller support.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 69 ++++++++++++++++++++++++++++++++--------
 1 file changed, 56 insertions(+), 13 deletions(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 4fa3e1c080ef..e3d248432d49 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -107,6 +107,15 @@
 #define SWRM_DP_BLOCK_CTRL3_BANK(n, m)	(0x1138 + 0x100 * (n - 1) + 0x40 * m)
 #define SWRM_DP_SAMPLECTRL2_BANK(n, m)	(0x113C + 0x100 * (n - 1) + 0x40 * m)
 #define SWRM_DIN_DPn_PCM_PORT_CTRL(n)	(0x1054 + 0x100 * (n - 1))
+
+#define SWRM_DPn_PORT_CTRL_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_DPn_PORT_CTRL_2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_DPn_BLOCK_CTRL_1(offset, n)	(offset + 0x100 * (n - 1))
+#define SWRM_DPn_BLOCK_CTRL2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_DPn_PORT_HCTRL_BANK(offset,  n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_DPn_BLOCK_CTRL3_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_DPn_SAMPLECTRL2_BANK(offset, n, m)	(offset + 0x100 * (n - 1) + 0x40 * m)
+
 #define SWR_V1_3_MSTR_MAX_REG_ADDR				0x1740
 #define SWR_V2_0_MSTR_MAX_REG_ADDR				0x50ac
 
@@ -171,6 +180,13 @@ enum {
 	SWRM_REG_CMD_FIFO_RD_CMD,
 	SWRM_REG_CMD_FIFO_STATUS,
 	SWRM_REG_CMD_FIFO_RD_FIFO_ADDR,
+	SWRM_OFFSET_DP_PORT_CTRL_BANK,
+	SWRM_OFFSET_DP_PORT_CTRL_2_BANK,
+	SWRM_OFFSET_DP_BLOCK_CTRL_1,
+	SWRM_OFFSET_DP_BLOCK_CTRL2_BANK,
+	SWRM_OFFSET_DP_PORT_HCTRL_BANK,
+	SWRM_OFFSET_DP_BLOCK_CTRL3_BANK,
+	SWRM_OFFSET_DP_SAMPLECTRL2_BANK,
 };
 
 struct qcom_swrm_ctrl {
@@ -230,6 +246,13 @@ static const unsigned int swrm_v1_3_reg_layout[] = {
 	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V1_3_CMD_FIFO_RD_CMD,
 	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V1_3_CMD_FIFO_STATUS,
 	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V1_3_CMD_FIFO_RD_FIFO_ADDR,
+	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1124,
+	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1128,
+	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x112C,
+	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1130,
+	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1134,
+	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1138,
+	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x113C,
 };
 
 static const struct qcom_swrm_data swrm_v1_3_data = {
@@ -264,6 +287,13 @@ static const unsigned int swrm_v2_0_reg_layout[] = {
 	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V2_0_CMD_FIFO_RD_CMD,
 	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V2_0_CMD_FIFO_STATUS,
 	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V2_0_CMD_FIFO_RD_FIFO_ADDR,
+	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1124,
+	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1128,
+	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x112C,
+	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1130,
+	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1134,
+	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1138,
+	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x113C,
 };
 
 static const struct qcom_swrm_data swrm_v2_0_data = {
@@ -968,10 +998,10 @@ static int qcom_swrm_port_params(struct sdw_bus *bus,
 				 unsigned int bank)
 {
 	struct qcom_swrm_ctrl *ctrl = to_qcom_sdw(bus);
+	u32 offset = ctrl->reg_layout[SWRM_OFFSET_DP_BLOCK_CTRL_1];
 
-	return ctrl->reg_write(ctrl, SWRM_DP_BLOCK_CTRL_1(p_params->num),
-			       p_params->bps - 1);
-
+	return ctrl->reg_write(ctrl, SWRM_DPn_BLOCK_CTRL_1(offset, p_params->num),
+				p_params->bps - 1);
 }
 
 static int qcom_swrm_transport_params(struct sdw_bus *bus,
@@ -981,9 +1011,11 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 	struct qcom_swrm_ctrl *ctrl = to_qcom_sdw(bus);
 	struct qcom_swrm_port_config *pcfg;
 	u32 value;
-	int reg = SWRM_DP_PORT_CTRL_BANK((params->port_num), bank);
+	int reg, offset = ctrl->reg_layout[SWRM_OFFSET_DP_PORT_CTRL_BANK];
 	int ret;
 
+	reg = SWRM_DPn_PORT_CTRL_BANK(offset, params->port_num, bank);
+
 	pcfg = &ctrl->pconfig[params->port_num];
 
 	value = pcfg->off1 << SWRM_DP_PORT_CTRL_OFFSET1_SHFT;
@@ -995,15 +1027,19 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 		goto err;
 
 	if (pcfg->si > 0xff) {
+		offset = ctrl->reg_layout[SWRM_OFFSET_DP_SAMPLECTRL2_BANK];
 		value = (pcfg->si >> 8) & 0xff;
-		reg = SWRM_DP_SAMPLECTRL2_BANK(params->port_num, bank);
+		reg = SWRM_DPn_SAMPLECTRL2_BANK(offset, params->port_num, bank);
+
 		ret = ctrl->reg_write(ctrl, reg, value);
 		if (ret)
 			goto err;
 	}
 
 	if (pcfg->lane_control != SWR_INVALID_PARAM) {
-		reg = SWRM_DP_PORT_CTRL_2_BANK(params->port_num, bank);
+		offset = ctrl->reg_layout[SWRM_OFFSET_DP_PORT_CTRL_2_BANK];
+		reg = SWRM_DPn_PORT_CTRL_2_BANK(offset, params->port_num, bank);
+
 		value = pcfg->lane_control;
 		ret = ctrl->reg_write(ctrl, reg, value);
 		if (ret)
@@ -1011,20 +1047,23 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 	}
 
 	if (pcfg->blk_group_count != SWR_INVALID_PARAM) {
-		reg = SWRM_DP_BLOCK_CTRL2_BANK(params->port_num, bank);
+		offset = ctrl->reg_layout[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK];
+
+		reg = SWRM_DPn_BLOCK_CTRL2_BANK(offset, params->port_num, bank);
+
 		value = pcfg->blk_group_count;
 		ret = ctrl->reg_write(ctrl, reg, value);
 		if (ret)
 			goto err;
 	}
 
-	if (pcfg->hstart != SWR_INVALID_PARAM
-			&& pcfg->hstop != SWR_INVALID_PARAM) {
-		reg = SWRM_DP_PORT_HCTRL_BANK(params->port_num, bank);
+	offset = ctrl->reg_layout[SWRM_OFFSET_DP_PORT_HCTRL_BANK];
+	reg = SWRM_DPn_PORT_HCTRL_BANK(offset, params->port_num, bank);
+
+	if (pcfg->hstart != SWR_INVALID_PARAM && pcfg->hstop != SWR_INVALID_PARAM) {
 		value = (pcfg->hstop << 4) | pcfg->hstart;
 		ret = ctrl->reg_write(ctrl, reg, value);
 	} else {
-		reg = SWRM_DP_PORT_HCTRL_BANK(params->port_num, bank);
 		value = (SWR_HSTOP_MAX_VAL << 4) | SWR_HSTART_MIN_VAL;
 		ret = ctrl->reg_write(ctrl, reg, value);
 	}
@@ -1033,7 +1072,8 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 		goto err;
 
 	if (pcfg->bp_mode != SWR_INVALID_PARAM) {
-		reg = SWRM_DP_BLOCK_CTRL3_BANK(params->port_num, bank);
+		offset = ctrl->reg_layout[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK];
+		reg = SWRM_DPn_BLOCK_CTRL3_BANK(offset, params->port_num, bank);
 		ret = ctrl->reg_write(ctrl, reg, pcfg->bp_mode);
 	}
 
@@ -1045,9 +1085,12 @@ static int qcom_swrm_port_enable(struct sdw_bus *bus,
 				 struct sdw_enable_ch *enable_ch,
 				 unsigned int bank)
 {
-	u32 reg = SWRM_DP_PORT_CTRL_BANK(enable_ch->port_num, bank);
+	u32 reg;
 	struct qcom_swrm_ctrl *ctrl = to_qcom_sdw(bus);
 	u32 val;
+	u32 offset = ctrl->reg_layout[SWRM_OFFSET_DP_PORT_CTRL_BANK];
+
+	reg = SWRM_DPn_PORT_CTRL_BANK(offset, enable_ch->port_num, bank);
 
 	ctrl->reg_read(ctrl, reg, &val);
 
-- 
2.50.0


