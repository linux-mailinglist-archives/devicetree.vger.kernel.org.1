Return-Path: <devicetree+bounces-216319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0734CB54581
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:33:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4808E7B8599
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:31:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22FD2D7388;
	Fri, 12 Sep 2025 08:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HveAS/BL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A69B26FA53
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665963; cv=none; b=LgDhmsqDW84l2UdjRkiwwP/GzTDQCFro4n2vy6nvSPVBdqzvkhKPq8Jmk/C+ntt/kSck6e1yy/9b6iDw1I+RwEiqrz3PPSZcDEGkhGjmUQT6TV1JM9wJMqvOK+5sHMf46tDekXTR5D2oEUkRQbpTt7pGeM8MNN8xr1hrjmPY+mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665963; c=relaxed/simple;
	bh=t66MAn3Nwvg/BgkzEKFhUiREcUiVPhCJxUavfb35i20=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CHbijZ1UOPcpz0ewZ2ck8PpQ1uXEBxInAOoPRWRORY+cSIsV9gRKHiCp+mSHb2P7cz6M5pn8kLXqL6zq5umFuGpodJWQsut8ZgVpskKUQNCf/tfcF78ERIaSiH31mWBq6FODmHBa7Z3kJCkgkX/My5ogR96M9yduLu1vnTOyDts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HveAS/BL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C7aIjo002350
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=tE9A84HrisC
	i01MLhVRRDnJjMb3SqJek9fgYZmAL/Is=; b=HveAS/BL1UxPgA3ZICkYhLY6gMS
	QZ8j0J6+BwIKOnKehm0FmeyfJcgSONFGrj/yzAyczZ3OLVBlFM4M7VMbOQPCqPN6
	uZJKZvmtztE9rp797meVPMi2eKJaWVJN7lDpG/oHUm7yM7GlQcfDpSFVgw18g8Ik
	733ZRK5aqGafvx/Bqj4pDsj7tJQe7ETrBVAyNn8QLhgPv1LwXkBoubGD1aT1X6SQ
	2T5uxaZ5avl3pvHDiSJwr5lE1G+TYAosdPd/KoznGhIOBidiTCT4t4y9wBvL0Q2Z
	fGutjmT7rFwWD2CSZmkXFJX0/bGrgxwEEHxUChGMSKn95hsVf2U2zYKrWvQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8tw9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:32:41 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-724ee8d2a33so29642706d6.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757665960; x=1758270760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tE9A84HrisCi01MLhVRRDnJjMb3SqJek9fgYZmAL/Is=;
        b=Wwne80XiUO4eDGUmokpU1T8ps3NyMZKw7MN2eHV14CQ9KPuDKa1oCnAoRtv4y4Uldm
         siCnQQRllleTPZwbxCEtprOEoR/mMq0Xx4gkCXMFEqcpCcrsmc//zxyvtPZoR/b9qIwz
         VmRC0jyNVpa7mthjDDeOOJw53jf8pHfoPqH121jVhLnzIN7Ndji1xHWfTqPQzoZNnskZ
         Ezp8vn8V4UOHq1hu6USwilvjaAob8G/T+MPQ/xEHem1jbsM6V6YLRontLrDmxMLvz/JR
         6/GD/f4h/PMfMdwGiReqGYDG2UDGqlHk/XtZSeNW9oQht+cuG5cxxgvU69HVhGS6U7Ve
         OCZw==
X-Forwarded-Encrypted: i=1; AJvYcCWFFW2WOAE4mnp4CoIBVPeCAydxcTmoD54gGLjT64ybTAZUjMevYyXLsN97xFk84HLlRWGRMJWl0gbK@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ+0aHfLz7plzJR+cQqM2jU6FSngILQfvAxIqWdzX+4+6Bcko0
	2VYLXcYL1nTqt2UipFqa7ia+zC0bFmH8nSlB4yumD0KIguuXOoQ3NqFzAWoc1VxTwh9Jq/dP5ah
	pHu/kJ0BjLsTylai0ClQGS8WdgMeecgIGD73RuYXdOyxtjpT1pc4FHIVswX788HPT
X-Gm-Gg: ASbGncsNIgYDKn9zQu3Df+Kozot31gAkXPT5vtzefodggcTIyrpSaP9KPBWaEJLuApu
	NWCJ4Kaxu2Cx6NC+JIAylcQj6kreZ4mhP3vS8S5xqYUgiDatM9izMi+a45D+0geo96H0i63PWYd
	+f/h9+Y2IH/5x12ighP+jn3BXOdxplUZ+gVFsXA/uMuTjmyGi7UWObQEfe1vGcRuDHNY4RDg40b
	1zpkrAycIhX+/6373Vw0xkmE+ySmTirr9qquoYjnlysei/wEG3lLO9DZEAOao4loUHpB6pEtVgq
	gDrqJTeu3vggoAIwdvnxA0CdxvUfJRDXbkJU0vYB/QtqxEpzCVyImw==
X-Received: by 2002:a05:6214:4102:b0:730:df1e:a99d with SMTP id 6a1803df08f44-767bcfa78e3mr24803986d6.17.1757665960255;
        Fri, 12 Sep 2025 01:32:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhdT74E29k2br0fqsuCFK/2Qpd+RB91i3IK7DqDnADWFd8rcV8unpUlG3DNZckWdx7yuUN5w==
X-Received: by 2002:a05:6214:4102:b0:730:df1e:a99d with SMTP id 6a1803df08f44-767bcfa78e3mr24803856d6.17.1757665959871;
        Fri, 12 Sep 2025 01:32:39 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e017c1dd3sm31247265e9.2.2025.09.12.01.32.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 01:32:39 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, alexey.klimov@linaro.org,
        linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v4 7/7] soundwire: qcom: adding support for v3.1.0
Date: Fri, 12 Sep 2025 09:32:25 +0100
Message-ID: <20250912083225.228778-8-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250912083225.228778-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX/mDHibEOesrF
 dfMco1V8n+X/T3q/IuP1/UtsHCBqpBGq0p3zPEI2bTJRe1rb5ndNU6+PxkxFIEPP4EWHMp0mUBn
 ngLnx2JPSzpbeZD+a2+Pq8ECjv0QxUTiD+tE9znOWNpFlx0sG5TSy8B4GsWMIadBvC4KJ8dwj5J
 HzHMKCQO1ae3K80JGFXmeQIX+YYlw0j1uWn6czhnS27o8RTE+zI2Q1kWD9Hz2/i9Da5iSy1DrQ6
 UPu7yM3059tiFmvhOO5yEdoIcX9HXv/Q7zb2vSWEt3ZV3FCWaduJPxN+sUUMQ5fT7hdeqvnNDAW
 ONR2Ydr1xj1Ntu7gEEOmy776TRyH7u/uZIZ2VY5QpCZbCjNV2IQtBL8uDoZlNJkknBUWxf7MZXb
 bOg8PvtN
X-Proofpoint-ORIG-GUID: 9mB2yOPdzBdQ4DqEkbhJtwjWdu5RbLpE
X-Proofpoint-GUID: 9mB2yOPdzBdQ4DqEkbhJtwjWdu5RbLpE
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c3daa9 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2e052FzMMQUWBbw-z-wA:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

Add support for controller version v3.1.0, which has changes in
register layout and some register fields compared to v2.0.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 37 ++++++++++++++++++++++++++++++++++++-
 1 file changed, 36 insertions(+), 1 deletion(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 5baf831f49ab..17afc5aa8b44 100644
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
@@ -296,6 +300,32 @@ static const struct qcom_swrm_data swrm_v2_0_data = {
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
+	[SWRM_OFFSET_DP_BLOCK_CTRL_1]		= 0x122c,
+	[SWRM_OFFSET_DP_BLOCK_CTRL2_BANK]	= 0x1230,
+	[SWRM_OFFSET_DP_PORT_HCTRL_BANK]	= 0x1234,
+	[SWRM_OFFSET_DP_BLOCK_CTRL3_BANK]	= 0x1238,
+	[SWRM_OFFSET_DP_SAMPLECTRL2_BANK]	= 0x123c,
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
@@ -919,7 +949,11 @@ static int qcom_swrm_init(struct qcom_swrm_ctrl *ctrl)
 	swrm_wait_for_frame_gen_enabled(ctrl);
 	ctrl->slave_status = 0;
 	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
-	ctrl->wr_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_WR_FIFO_DEPTH, val);
+
+	if (ctrl->version >= SWRM_VERSION_3_1_0)
+		ctrl->wr_fifo_depth = FIELD_GET(SWRM_V3_COMP_PARAMS_WR_FIFO_DEPTH, val);
+	else
+		ctrl->wr_fifo_depth = FIELD_GET(SWRM_COMP_PARAMS_WR_FIFO_DEPTH, val);
 
 	return 0;
 }
@@ -1785,6 +1819,7 @@ static const struct of_device_id qcom_swrm_of_match[] = {
 	{ .compatible = "qcom,soundwire-v1.6.0", .data = &swrm_v1_6_data },
 	{ .compatible = "qcom,soundwire-v1.7.0", .data = &swrm_v1_5_data },
 	{ .compatible = "qcom,soundwire-v2.0.0", .data = &swrm_v2_0_data },
+	{ .compatible = "qcom,soundwire-v3.1.0", .data = &swrm_v3_0_data },
 	{/* sentinel */},
 };
 
-- 
2.50.0


