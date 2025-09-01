Return-Path: <devicetree+bounces-211410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BBBB3EEF2
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 984AE2C13CC
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B22732ED56;
	Mon,  1 Sep 2025 19:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QV5jW0QH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5CA26D4EF
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756252; cv=none; b=fxJ7YWrpiJfd7iD6A6nZcMsPVWU9mHpVRRnbnK8FOO8FxLslDSdYYA3ZscOcdb3+CoQbLxDQggfW4HWH0N1hzsWALGyMAn6nb+qtimXKnWl4fC/KmJDc5/M4km61HQUWMIdxOtBi4/HUiVZxV7UnMGWY9BKCTXxG32op/aje62g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756252; c=relaxed/simple;
	bh=vH3oMbsPgp5OYepA+zgye3XPZSMonO8B70jM2paEwes=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HHDTgETnwh3ovlC69XW+bc0rCH3kykue1B8yAjd7AP1mFMQb9mg0r0qFXyfl6UIpQv54bVoJ+NcDPvPETFZBDUjXMd9ljKA+C52mB4P++yPE82sXVPeijRbySK8ED6BROg4+e8drXTZgdpbO3jx62SimqJy4o5evbkgsTpFOqq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QV5jW0QH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B44B1016594
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=bwXgKqG7l6m
	3fBEufVnNvnktN6pG8bwNFgdMC4s7c1E=; b=QV5jW0QH18OTojfVY9GPRf7MqfO
	8zU+pJsFCbow3EwoZFanRU09YzA7QQhBUK770z0/Y6qdeN7ITofrd5o7TDIp/Lon
	B6AqsClxbl0RXagqLHSmrgd/tR9yOUg1tDjskfFCTIYmhfYjNsKF8RWthdYu6/Zh
	CHJrtV6/syUrH0TUmNDEHha1PdaBXWt8c5FLJFgtEkTkicAUBGTsKwqiisxXXG9u
	/dvmNKVwMeC+3LUpU1WqhT23SzE/G8lR29AMIG8UxT0HQoA7AJMM3wxS2OUBizYW
	e+om9OaW/vxtJCj+h4tfuC/uASNl5GTlMObDS4zQ1T4kVN85LDX7HH9EQ0g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush2wm99-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32119e6c6so42353031cf.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756248; x=1757361048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bwXgKqG7l6m3fBEufVnNvnktN6pG8bwNFgdMC4s7c1E=;
        b=LCYif4iV+y23ZTNzu3VYyXt3UEOjy9o8PQ2xlr9uc/8XPijDNS6kdzfeKHYnILEAPq
         XFJVNR8ThXOl9T3jSJETMcYRjiEzJuVO1kZmYrpn8a2I4tYnGn1pvA0QdNwesFUeKPdw
         UmeSNeW9Wj+9Sw+knirtZsK060la/PCu9yXYQP+heQsinoD3P83krjJgAPtiIGqveVdS
         PARGQlarAaE4VqkSCEuLrriva9ukBqGLps9BsH4qC/hvjEYDnweY7SzG4Mq5UlifEYVw
         Vlm/BNVDo7/revvuoVs1nVbVQ4qVTy/WNNkhu4iErxf9vBkGNVZ24bFQD7xhwNOxtamv
         oo0A==
X-Forwarded-Encrypted: i=1; AJvYcCWMwZ2jqJ69pJs2p4s5xKZ3Guep/7WnQsJL+T1c8S43Em2cLriBP9xz+0JKE0i4YGJz56lQbtuvKCmW@vger.kernel.org
X-Gm-Message-State: AOJu0YyfDiAdzRVxiYiP/dYhiFHbopFN3e4GGGJ9/9qzkJhGL1mjFgYb
	swKS00XC8TzfPAGXcGcyYWbqjm/5c1xKdSmYQSBGiaAmb4sIoQ6Nr5KVHQfpx0iMgDfiPWIS+Cd
	TRhSWNlsEnyu6qL0WCDAZ1VDOuhdV8woYtW7SEiAvJM8/fhfyAsWIHYL4+QlXu/fu
X-Gm-Gg: ASbGncsluKR4B35twiSBZvd+L1tVIcWrbvDhhjHzeiLaI0yzCPDUDQO5a8Y0VNtqd5B
	iWFbCpfIgu9uOyDv6iwhiOgsRJ7KfAWFzfrO2dLlIs9MgqI+vh2n9yNp6qS/OpLscLmVPzbhLf7
	/Z/MX2YjjEykIQgRO7KM3S9mkdsZiGRftpXKUMZJV4NvUfUcwLONzLbT8rvA26/2wKG4HRlfIR2
	34wUxWvCAfAGwojraGtWmnUbOrIzzpejMElJxqolSkoUKVaWWHIdPRDCpsJvnjkbILozyK3lwet
	yHI0AlM5TmmrJFRRiHzkDXL5FyXvizAzwVc1qmVOSXetgy9dX9nwTA==
X-Received: by 2002:a05:622a:1492:b0:4b3:279b:6986 with SMTP id d75a77b69052e-4b3279b6e1emr92068631cf.78.1756756247786;
        Mon, 01 Sep 2025 12:50:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxW4sRj/3pU8ygE7OoLsbGqEoBt4d/nupXfxoM5c10IIpNaAzuefqWEifbW16rAQrE8kTLTw==
X-Received: by 2002:a05:622a:1492:b0:4b3:279b:6986 with SMTP id d75a77b69052e-4b3279b6e1emr92068381cf.78.1756756247238;
        Mon, 01 Sep 2025 12:50:47 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:46 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 7/7] soundwire: qcom: adding support for v3.1.0
Date: Mon,  1 Sep 2025 20:50:37 +0100
Message-ID: <20250901195037.47156-8-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX+nXhWxYihjEh
 w3+TcUw4ryQsMRNZrBVEnS7grE/8BJrdE2fjZShIU8APuoGIeypQdT5ULDKcSDyh7vT7x4/z23j
 Cmnlnub/jg17RYK3kKsYr7SQg+5+7HbMxprmmKaOfNKEdu8R7ToEKfSxzewUxJISSa6Wcg70XCb
 1ftMKRoGIMiAnYsYomdYIAZAhtbmzVhetiml15PLD8INcgMapeW6E16tgmgy2bIC3wLFsC34qFh
 dcy6jM80piFAKsp6G5bMwvli9sh9W3gxn9Umk9zMg8+EqKVGm/awdlbckhGtFxX9b/JI1pZ3VrK
 513A0XXkkLnUtqza2KT33V0GZ+JGj09U+5d0NerE+3iujkbJvswn6np714E5TcpOPu4mKzvXR5v
 pF8tgA+e
X-Proofpoint-ORIG-GUID: y5xKR92scnThLGywG03UHooN6ER-qSg2
X-Proofpoint-GUID: y5xKR92scnThLGywG03UHooN6ER-qSg2
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b5f919 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=W4XR6XjLtGUYRM1o5EgA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

Add support for controller version v3.1.0, which has changes in
register layout and some register fields compared to v2.0.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 47 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 46 insertions(+), 1 deletion(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index e3d248432d49..ab97d9d8f1d9 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -31,6 +31,7 @@
 #define SWRM_VERSION_1_5_1					0x01050001
 #define SWRM_VERSION_1_7_0					0x01070000
 #define SWRM_VERSION_2_0_0					0x02000000
+#define SWRM_VERSION_3_1_0					0x03010000
 #define SWRM_COMP_HW_VERSION					0x00
 #define SWRM_COMP_CFG_ADDR					0x04
 #define SWRM_COMP_CFG_IRQ_LEVEL_OR_PULSE_MSK			BIT(1)
@@ -40,6 +41,9 @@
 #define SWRM_COMP_PARAMS_RD_FIFO_DEPTH				GENMASK(19, 15)
 #define SWRM_COMP_PARAMS_DOUT_PORTS_MASK			GENMASK(4, 0)
 #define SWRM_COMP_PARAMS_DIN_PORTS_MASK				GENMASK(9, 5)
+#define SWRM_V3_COMP_PARAMS_WR_FIFO_DEPTH			GENMASK(17, 10)
+#define SWRM_V3_COMP_PARAMS_RD_FIFO_DEPTH			GENMASK(23, 18)
+
 #define SWRM_COMP_MASTER_ID					0x104
 #define SWRM_V1_3_INTERRUPT_STATUS				0x200
 #define SWRM_V2_0_INTERRUPT_STATUS				0x5000
@@ -99,6 +103,17 @@
 #define SWRM_MCP_SLV_STATUS					0x1090
 #define SWRM_MCP_SLV_STATUS_MASK				GENMASK(1, 0)
 #define SWRM_MCP_SLV_STATUS_SZ					2
+
+#define SWRM_V3_DP0_PORT_CTRL_BANK(n, m)	(0x1124 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP0_PORT_CTRL_2_BANK(n, m)	(0x1128 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP_PORT_CTRL_BANK(n, m)		(0x1224 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP_PORT_CTRL_2_BANK(n, m)	(0x1228 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP_BLOCK_CTRL_1(n)		(0x122C + 0x100 * (n - 1))
+#define SWRM_V3_DP_BLOCK_CTRL2_BANK(n, m)	(0x1230 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP_PORT_HCTRL_BANK(n, m)	(0x1234 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP_BLOCK_CTRL3_BANK(n, m)	(0x1238 + 0x100 * (n - 1) + 0x40 * m)
+#define SWRM_V3_DP_SAMPLECTRL2_BANK(n, m)	(0x123C + 0x100 * (n - 1) + 0x40 * m)
+
 #define SWRM_DP_PORT_CTRL_BANK(n, m)	(0x1124 + 0x100 * (n - 1) + 0x40 * m)
 #define SWRM_DP_PORT_CTRL_2_BANK(n, m)	(0x1128 + 0x100 * (n - 1) + 0x40 * m)
 #define SWRM_DP_BLOCK_CTRL_1(n)		(0x112C + 0x100 * (n - 1))
@@ -304,6 +319,32 @@ static const struct qcom_swrm_data swrm_v2_0_data = {
 	.reg_layout = swrm_v2_0_reg_layout,
 };
 
+static const unsigned int swrm_v3_0_reg_layout[] = {
+	[SWRM_REG_FRAME_GEN_ENABLED] = SWRM_V2_0_LINK_STATUS,
+	[SWRM_REG_INTERRUPT_STATUS] = SWRM_V2_0_INTERRUPT_STATUS,
+	[SWRM_REG_INTERRUPT_MASK_ADDR] = 0, /* Not present */
+	[SWRM_REG_INTERRUPT_CLEAR] = SWRM_V2_0_INTERRUPT_CLEAR,
+	[SWRM_REG_INTERRUPT_CPU_EN] = SWRM_V2_0_INTERRUPT_CPU_EN,
+	[SWRM_REG_CMD_FIFO_WR_CMD] = SWRM_V2_0_CMD_FIFO_WR_CMD,
+	[SWRM_REG_CMD_FIFO_RD_CMD] = SWRM_V2_0_CMD_FIFO_RD_CMD,
+	[SWRM_REG_CMD_FIFO_STATUS] = SWRM_V2_0_CMD_FIFO_STATUS,
+	[SWRM_REG_CMD_FIFO_RD_FIFO_ADDR] = SWRM_V2_0_CMD_FIFO_RD_FIFO_ADDR,
+	[SWRM_OFFSET_DP_PORT_CTRL_BANK]		= 0x1224,
+	[SWRM_OFFSET_DP_PORT_CTRL_2_BANK]	= 0x1228,
+	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x122C,
+	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1230,
+	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1234,
+	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1238,
+	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x123C,
+};
+
+static const struct qcom_swrm_data swrm_v3_0_data = {
+	.default_rows = 50,
+	.default_cols = 16,
+	.sw_clk_gate_required = true,
+	.max_reg = SWR_V2_0_MSTR_MAX_REG_ADDR,
+	.reg_layout = swrm_v3_0_reg_layout,
+};
 #define to_qcom_sdw(b)	container_of(b, struct qcom_swrm_ctrl, bus)
 
 static int qcom_swrm_ahb_reg_read(struct qcom_swrm_ctrl *ctrl, int reg,
@@ -928,7 +969,10 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
 	ctrl->slave_status = 0;
 	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
 
-	ctrl->wr_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_WR_FIFO_DEPTH, val);
+	if (ctrl->version >= SWRM_VERSION_3_1_0)
+		ctrl->wr_fifo_depth = FIELD_GET(SWRM_V3_COMP_PARAMS_WR_FIFO_DEPTH, val);
+	else
+		ctrl->wr_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_WR_FIFO_DEPTH, val);
 
 	return 0;
 }
@@ -1778,6 +1822,7 @@ static const struct of_device_id qcom_swrm_of_match[] = {
 	{ .compatible = "qcom,soundwire-v1.6.0", .data = &swrm_v1_6_data },
 	{ .compatible = "qcom,soundwire-v1.7.0", .data = &swrm_v1_5_data },
 	{ .compatible = "qcom,soundwire-v2.0.0", .data = &swrm_v2_0_data },
+	{ .compatible = "qcom,soundwire-v3.1.0", .data = &swrm_v3_0_data },
 	{/* sentinel */},
 };
 
-- 
2.50.0


