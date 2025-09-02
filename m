Return-Path: <devicetree+bounces-211805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B18B40A4A
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 18:13:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2718116501E
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616D73054F4;
	Tue,  2 Sep 2025 16:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fb0MAOPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623183376BF
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 16:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756829561; cv=none; b=jfJByblxJ8lHhVdgWeFYl+EXbZyjfXsbVixEj65pw1dkxVtffdOME6a80LEOIX44MB3QfQyIN8RxgoEcp6DyZSxvfAlYkOgbediTN8HVRas+0yebfvrJxftw5qJcFGyxJdWs0qXThLJT81eO2+tSCBIGel4mMuX+UNnC34OmRcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756829561; c=relaxed/simple;
	bh=MCt0AAzgk+Spj4t//WWGOSAsleWLkYbQAko9OKAJnNM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tI5ZTk7OqkgOhpbz+CT8J9aVL/6RXdosYTl84OvUvpW8uk+h795F3PZ3L1lX71llV07JIQnkB85hEwHt2AlYCHaMwcgANuLC4Gb3mzyP7Rz5g0Hs1x3IaTt5VcGgO7Iw4/K86qx34zaY5/RU5AIQi6kgrfqNb2UYeNK7N5mZuXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fb0MAOPR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582EqAW9001375
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 16:12:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QgPrdRIlfMd
	8DirDCyifuaxS1PjXlld6jz6oQI/b/ZY=; b=Fb0MAOPRCC5f06m0HLW0uqYOKbN
	xC5YNqRb9ac5gs4ZDPKzQx5/yGGl8BXdSARkUwS07+vhPLU42DvJN83CMJ3pWezL
	E+ZXVJDanefm7qcZXrSIR8EX8iC8jLvZBwaIvKTDKnv3/9uV2mtKN7lvHR6XWpOl
	XZOqusxKZTb9csYEKcE+i/2zDyQsHSODFZWV2mgoLStDFqUfS8dlil1pfDF4Vq3L
	SyMpDEDoAaLnItQORFg6tXa6XEhyEULfcWo1YuA8i/2WDdO0awdZ/z7a6GUmMvo8
	rAjKoUSC6NGDhJhXUOkQo9bLMSIJ2I8BYEMV+3SxaWXskptNkj+C0VKGW1Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy4acv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 16:12:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b3476fbe7eso19953661cf.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:12:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756829557; x=1757434357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QgPrdRIlfMd8DirDCyifuaxS1PjXlld6jz6oQI/b/ZY=;
        b=gyI2iI8GnqOHMlo0fQgEFEArcCCtodos9MyldhgvrroAAoj4ixN+engmg5rqRkrmnm
         rgdrVjOtt4g2+Ci66kpL6q5ziAOHCDiXbkX9sV3DVnak9vN/uxhZxab64JCnr/JP26Bh
         r81xAXQEfc5322kghHwROwZ/kRQoBowgTYqRuVVQUbbMl5RSvfxGVfCIsElMdZ6vBbMb
         q484J8StY4Z/okP68Zn+hj/SjJRc9AxXYQDD+oRdVZlpa6LPIK2D+827KVWfYghc2tHq
         oVEm+vaJ7mKZVkyS3uzEjehjR2be8lP34SeGXrPefWmuIygVEBRDaE7J1NMmRKWeEuFK
         xrxA==
X-Forwarded-Encrypted: i=1; AJvYcCXrTg50THYX5gkPbjfhVAiUJPU0FGdwVO6Crc9K/v+1J1V11tUBkUbFURGTLx5HmiM+Q24oOmKGsi8f@vger.kernel.org
X-Gm-Message-State: AOJu0YzJt/jhYnkfC/hI6yGdLPNqXYSWLdKRZYDJwhQ01NRjN4EytukK
	oBYk4kV3HivbMStaV+v4efsmpDFyE1IkQIeaSRQ38km6iilf5J7zLICooEQ4RPjxyy6t9ujM6mc
	Puq988PpTYWOYYCYwp3Uuof49wDwDpWs0L/0psg5brjeoHW6N/YxiM4BGeDxK3Rxb
X-Gm-Gg: ASbGncvpiE4bd90AXAJMWrO8uu2OgfVEoC6br6pgj31mif8rmVBk9Wmt4/xNP5QtKWx
	ImOPic9BFORMNk21u/R9HAZBSlCXr1FCl/7NOM+YgQFTrmxb0eXxSk4ysUDFb5xuPp1eYvsG4pr
	VB9aSXKMktVy+vnsrv86ylCJn2zKai7dfn8xNL+PVm8ogSwig7ClGAqLc4xlUDT+N42/4NcjsWh
	Z3lW7Va/9ic802VNrwXnVNq+wxEsGLq7yTzsSXHCfpCFl9Wpl1C18RBpcC+pUPDNzaG50biUGbv
	sNS3hoi0hputIRbRk8mLPtRVqbb35cGWw9rb00dw1b1Mgw6XtwEHJw==
X-Received: by 2002:a05:622a:4085:b0:4ab:9586:386b with SMTP id d75a77b69052e-4b31da22698mr168627241cf.53.1756829556992;
        Tue, 02 Sep 2025 09:12:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJkTJcUQ/yX5aX22luk5Vf8q0lM5NIj4aVAwx479cSoaiYueGXur4w4d6rif7Njpsb2+rIaw==
X-Received: by 2002:a05:622a:4085:b0:4ab:9586:386b with SMTP id d75a77b69052e-4b31da22698mr168626001cf.53.1756829556102;
        Tue, 02 Sep 2025 09:12:36 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm309894655e9.9.2025.09.02.09.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 09:12:35 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 5/7] soundwire: qcom: prepare for v3.x
Date: Tue,  2 Sep 2025 17:11:54 +0100
Message-ID: <20250902161156.145521-6-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902161156.145521-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b71776 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KTr9yuUO_FWm3CjRSecA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: vGOA3k5uxNlfnnUrAVgL5uOjHuib-rxk
X-Proofpoint-ORIG-GUID: vGOA3k5uxNlfnnUrAVgL5uOjHuib-rxk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfXxG/YOyNBkuPi
 AAmCmiDFedplfoIwkzcAAnakt3vfB+LmDvwgRebdrcVoQ6FWY/gnZVvGzvk8BTZE4OhxtYTl9+2
 BcREKQe/YupjgTJjd6dI+oiLE3TAxG7Xdyp6xHJN2S9laQ0J0Z6p3rYUB1bbdfY+F6q5akiXCsu
 P2DeZUehid0uZ2NvD7hTGv+VQHjhPMbqRMS2xW01jnCihWWXdkcSHtWt+hr2nPEChe67DN9nqpU
 qtod+Ci8pOjldDIdZGa/9ETNRIy8Vv6BJQaOIgohMk11VkDM6DSUfxswnbJ3KwrH+03s+iWshqZ
 hyW34h+qFfWE0F+mj7Uac49IT3dCYdj16rzqWWwKTkammZFcjyL1rZfR0P3FQDSJ8ztzgrzj9NA
 yzJA9Tua
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

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


