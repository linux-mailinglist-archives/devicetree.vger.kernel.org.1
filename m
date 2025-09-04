Return-Path: <devicetree+bounces-212718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 635ECB4395E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3710A7C202C
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17DCD2FC886;
	Thu,  4 Sep 2025 10:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PkyV1fqi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5334D2FC861
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 10:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756983414; cv=none; b=jS6Zto8CWwAXaJNvBeQd7mLssRNqMefatjfpfQ8bz3AhRPpjJvUwPodymOf12TV323mWz8Mmd9h2MlAMp5ODN4bx2Qpb62fvaJ6/WpFIJsi8VhFi9pSD/Y+FjxJJgID1fZnc5g0GcktyhKGDnjEYs/M7Prg2UFJIit6N3VP10b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756983414; c=relaxed/simple;
	bh=MCt0AAzgk+Spj4t//WWGOSAsleWLkYbQAko9OKAJnNM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=njxiEncqlhZqH18yOMVutf3a08Xw+yg51jrZ00sr8yqfMnXBxwyPq0B+bLOuoXEPDBeGKBSTBso8FnOrwjoA3TH2v0m5D8l/uyOT108aWGdMzHRkxWXMxHpYQSxiaMBIa40RqN4mhL0rgL8tztbX8Mzse/jUi9+56v0lpoRrntA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PkyV1fqi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XAJh014010
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 10:56:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QgPrdRIlfMd
	8DirDCyifuaxS1PjXlld6jz6oQI/b/ZY=; b=PkyV1fqie9E2EhxN5oB8677eZEs
	YtUsYR+XVbQamtHWfznBW5C9WtFc1yQkooRL2lGyTmJVfa+9IoLm5ME4UseImpE/
	jKlTv6hWroEONTNjC6i6D6I9c8y/J/wMZPjRce1HwzjIDZhhYeuJ/ZurdAjGI0vv
	YOOFEscQYBt+/lLml5eFAxlbn+C8uqPB6CW+lKOv6bJjfO7fpEL8IlKgkrA/QObF
	RexDG7qnSwa7nlv1d6g0dmrcCqeHqf9oVMrDY6WNf539CdOSs9vZWRfYNcMzgW0/
	ZntM2cNZwCJ5knj1ZRv9p7OkrUWVdmozkJDmV9YKsFiHLYoJS57Oo3ecj9g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv7bxt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:56:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32d323297so16822531cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 03:56:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756983411; x=1757588211;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QgPrdRIlfMd8DirDCyifuaxS1PjXlld6jz6oQI/b/ZY=;
        b=EtP54nL4++rYk7tdOO3zg5sthvrwJrM7qfgPh0hJsD++pzQZ8e05TUfmtSjbhHy138
         p4YiMvvrsyX+a1SJ8oOXoXPu3cnvE9otChqIYoe+ejfSKY2M9ZqXeBqw8DFpuPZkMmNU
         AUNZIT8FFI4mvjnbVYD7ypPIcb7OiSDUy5L/VQb/dBMSmQ2ZE5Iz8xRFe9lVJRR9BDZX
         9+ac6k3TjQcIdAwM/BnirtU4i5B0rPJ+dcf3N92CqCgYymS0BhzteVqK+FbV3doMZ/Np
         HWAIqhM//Is1tYOye2PLcRQlWLcFVPUQT5AHPMLq4K6crvAtGn1Vi+rJEZ/FnmYhnYEX
         ok5w==
X-Forwarded-Encrypted: i=1; AJvYcCV1+u3qDY/m7pMImkJPSHuq1iJhIwS36tYG8J9oIAqKMs90pIHVoV9HwqARLhX79zIZD4TjVuDJLUCp@vger.kernel.org
X-Gm-Message-State: AOJu0Yype3XTY+xrzEzIQJNf6oNk2/8DqFpp0ka3HgXmQfVUeirma+xI
	irOAynfUHEPEWOX6fZu9/jNX/q33Q2ka5GhXsidrx9sE4DyVfhCCrGpFps5a2rTUvEEp+UMJalu
	QgCbcO53baubU4L56K4KX6xTZLnLgNRlCUIB0/ikWo1Kl4aHwVcI8uJJ0KPIxIbBu
X-Gm-Gg: ASbGncsmYR5/MTna1dGyML866ksRhFsFRfqMO6diBiWMZG4frkiz9j2QhmKxQ8TiuvO
	2s+ZtdlBwPRx8EfYZVDmV2ZUJRf/ZtyR/GNqRCERmNxF7E4fhaaZ7daHRe42IP4Og+PELxor6xJ
	zkbHM+Ou4SOdzIEPPNZe2Y+6UF9ezH6l0s1FtPOkoadiQgxiiaSCxK4gvufC0NvoDecO5UV4Dpy
	NrcZFYtdJgbzzS79dbEg5XbceIXz53c9ocIZQX7vNv98vr8Le24sV4mGXXcd9ZsC7yS39EKJ/zl
	j6vfu70P5PbebyTCeYQOo99Zo6PfJlJCFt9vmRnFsszvOWAx6bPE6A==
X-Received: by 2002:a05:622a:178e:b0:4b5:d72d:b7ae with SMTP id d75a77b69052e-4b5d72dbc56mr20590161cf.12.1756983410505;
        Thu, 04 Sep 2025 03:56:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfYt3EtGxEW9lrwo9a1d50AV+Vq+UCEJHwqDC5cghy9pRT3Z/xAT/iRK+sWIrivQrG2ugQqQ==
X-Received: by 2002:a05:622a:178e:b0:4b5:d72d:b7ae with SMTP id d75a77b69052e-4b5d72dbc56mr20589871cf.12.1756983409991;
        Thu, 04 Sep 2025 03:56:49 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a1f807f9sm26462334f8f.38.2025.09.04.03.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 03:56:49 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 5/7] soundwire: qcom: prepare for v3.x
Date: Thu,  4 Sep 2025 11:56:14 +0100
Message-ID: <20250904105616.39178-6-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250904105616.39178-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX0Ty/as7LwYRs
 gs69eLZz4cZg7qFT6u00cp5sBlSnXqG0ZrfXVuNZQ+YOY/EEV01QiuXZwMti8bMbVBN6v3uXUDv
 7epmX4BYCGNXEY8GafUeyDG1xyA5fcojdiZDKAwabHIPY77awEBAzR6ESLdXkO4CYqcXN064U6C
 JrTlGJEEhrkJgpg5D4bS8wmGmkSBysfPFT3420VqkORwk2MvakRJ3e8yYogvAa7ItN+emuH8hKs
 NESRkb7M39Y6H9SNNAjvWJDFXV6+QNpSos1Bv5R154uXwlGnqGm2w0AN655HJUFBT+JY49UpvQE
 KAcHBbYtNxuSMFI59hCj8E5ov1CXqtBMIQfcOxQjSj52sWMcpVwLgm34RqzQY2XKxWtqrQ0iT0N
 UEi/uUdN
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b97073 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KTr9yuUO_FWm3CjRSecA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: JjfNzmQtXL9sLIdZkd5htFm2L02g9fhd
X-Proofpoint-GUID: JjfNzmQtXL9sLIdZkd5htFm2L02g9fhd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

cleanup the register layout structs to prepare for adding new 3.x
controller support.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 77 +++++++++++++++++++++++++++++-----------
 1 file changed, 56 insertions(+), 21 deletions(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 34d4e2c2dd0a..3d4d0c443977 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -99,14 +99,15 @@
 #define SWRM_MCP_SLV_STATUS					0x1090
 #define SWRM_MCP_SLV_STATUS_MASK				GENMASK(1, 0)
 #define SWRM_MCP_SLV_STATUS_SZ					2
-#define SWRM_DP_PORT_CTRL_BANK(n, m)	(0x1124 + 0x100 * (n - 1) + 0x40 * m)
-#define SWRM_DP_PORT_CTRL_2_BANK(n, m)	(0x1128 + 0x100 * (n - 1) + 0x40 * m)
-#define SWRM_DP_BLOCK_CTRL_1(n)		(0x112C + 0x100 * (n - 1))
-#define SWRM_DP_BLOCK_CTRL2_BANK(n, m)	(0x1130 + 0x100 * (n - 1) + 0x40 * m)
-#define SWRM_DP_PORT_HCTRL_BANK(n, m)	(0x1134 + 0x100 * (n - 1) + 0x40 * m)
-#define SWRM_DP_BLOCK_CTRL3_BANK(n, m)	(0x1138 + 0x100 * (n - 1) + 0x40 * m)
-#define SWRM_DP_SAMPLECTRL2_BANK(n, m)	(0x113C + 0x100 * (n - 1) + 0x40 * m)
-#define SWRM_DIN_DPn_PCM_PORT_CTRL(n)	(0x1054 + 0x100 * (n - 1))
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
 
@@ -171,6 +172,13 @@ enum {
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
@@ -230,6 +238,13 @@ static const unsigned int swrm_v1_3_reg_layout[] = {
 	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V1_3_CMD_FIFO_RD_CMD,
 	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V1_3_CMD_FIFO_STATUS,
 	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V1_3_CMD_FIFO_RD_FIFO_ADDR,
+	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1124,
+	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1128,
+	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x112c,
+	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1130,
+	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1134,
+	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1138,
+	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x113c,
 };
 
 static const struct qcom_swrm_data swrm_v1_3_data = {
@@ -264,6 +279,13 @@ static const unsigned int swrm_v2_0_reg_layout[] = {
 	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V2_0_CMD_FIFO_RD_CMD,
 	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V2_0_CMD_FIFO_STATUS,
 	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V2_0_CMD_FIFO_RD_FIFO_ADDR,
+	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1124,
+	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1128,
+	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x112c,
+	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1130,
+	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1134,
+	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1138,
+	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x113c,
 };
 
 static const struct qcom_swrm_data swrm_v2_0_data = {
@@ -964,10 +986,10 @@ static int qcom_swrm_port_params(struct sdw_bus *bus,
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
@@ -977,9 +999,11 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
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
@@ -991,15 +1015,19 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
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
@@ -1007,20 +1035,23 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
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
@@ -1029,7 +1060,8 @@ static int qcom_swrm_transport_params(struct sdw_bus *bus,
 		goto err;
 
 	if (pcfg->bp_mode != SWR_INVALID_PARAM) {
-		reg = SWRM_DP_BLOCK_CTRL3_BANK(params->port_num, bank);
+		offset = ctrl->reg_layout[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK];
+		reg = SWRM_DPn_BLOCK_CTRL3_BANK(offset, params->port_num, bank);
 		ret = ctrl->reg_write(ctrl, reg, pcfg->bp_mode);
 	}
 
@@ -1041,9 +1073,12 @@ static int qcom_swrm_port_enable(struct sdw_bus *bus,
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


