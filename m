Return-Path: <devicetree+bounces-211407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C5497B3EEE6
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:52:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 970487B1522
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8678D26E161;
	Mon,  1 Sep 2025 19:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fu1eN1HD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47427267729
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756250; cv=none; b=dFBW1ZDQAIatRC+JYoEpADFcnJPF9Y5LQL0IsIfjcqPmA5h0oUTFP29tiKB1sh9mURFJoC5iXFx/WL9tRgTFQKnabGS9KqmT2i5+oax0z2LMcxiorJGcqbDy4VZVxKDdluoFFMjHRz0y2zUQlo+1NgjOvoVhyy1vVW1zlHpEHEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756250; c=relaxed/simple;
	bh=kz93cl5EEs9aFPCQgx7/2OGMmxjglWUCUfbzjWETbNk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qy0TzPcJ3YY5vk4S7HKFduGvUL9Dcqga/Sqq3mggCDjvCT955kjZ3T85dUzwhZIl5ZDil3+UQbMEcRzDrNr7w4DE13m0naY1FZHi2YeKcor+kG/4I6jGT4yLvOipzpD4Ty0P+ABjO89ST0rEEaKAWQSHXH71VvoVb7igc2VxUps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fu1eN1HD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B53cV017933
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rKd+WJXhY+Q
	UuteBJAWqQUsmMSIsMZqmekxIdIRdEc4=; b=fu1eN1HDZWVPNOiggsnuXVHkNiU
	jEKgjz/Rfrc1SmzJoGrPesfc3VYZI7nxfLzxdVfuTLFNwE9OrG1K5/B9H9FCMSHc
	32Z7ESAh8Ypoy0b5RNYLP1FJGYrGvXYqR84PggUfJ78xClfpOQCG7r6bFh+KU93g
	IdZrvjiAT5d/h6TgzEffhcjdS+02IzKcpuWDyMy+nhUrTFyFh0Gy9wElPnUq3m1d
	/TWb818WaT6HfMRmHTINM8wV4LoCyRvGgGXoVA6ENajDGM4TstCksrsME/L8AzqG
	MtnBQpLs4oa273pWYw6bLs1792n3VGw5fP1iBIDpsKv73INx7QemXAzzvWA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utfkdjbw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b319ed6427so77153231cf.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756245; x=1757361045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rKd+WJXhY+QUuteBJAWqQUsmMSIsMZqmekxIdIRdEc4=;
        b=fSjGy6P7OPza1bzwb12z3nVDK+r8KPd15MaSy01rHfnrPKGgLRswsOpOY8wqyP7tfc
         z7CIG/DVkCMFx2rb8tQVMYMQrdZO0swqzJIKs2csNmtanJl86V6O+FrkQvi9HHPMidjw
         rcsBGA4fGaQ2OCfG5fHtb0URFawflGIFDh+VGhF73JP8oN3C8u2Ee7BXzaOvEUhZ1xq4
         ppbZD8tyxudGDy6RzIQhxuqKnvCz86o/7SOApk4OVPKxOFPBI/g9bYAJmrJAo+zwk9Hp
         hCqGoMXC3B1ksK2E0KJlpZxD/TXVzkBJAn4DbUB8Kjxpm9SlzToORtfnZcpLQdg+kZwR
         0AUA==
X-Forwarded-Encrypted: i=1; AJvYcCXTOraSl6B9j8pVxVJZJD6IHvzKhrPr5H+2L0SqTIbtWXvZy/qaQ7LfodxgWdyz9wGq3k5+u1OaQzUF@vger.kernel.org
X-Gm-Message-State: AOJu0YwsXPFFT9dL6V6Y4qxoF/T0n/EPrHu++l1PjxZZ4+XDdj7osD8i
	5HaHTnxJtvsjyiPMvaxNdiP5jpWU8SIGH6z7YgegM+CfDHLbGVrXI9gQ0fWjZL5qoiYx9/7jn/h
	ZIzb+OlGH6I9K3S/IhoYnnsazDu8vj6lBVEjgkNwWv3nhGsZPzHHh/hFPuX/s0nl6
X-Gm-Gg: ASbGncvAoYzNAoViir0D145OXPfYGPD+yw20GeFw9RHiqppjiMn7bJVoV+DDA9BlU/e
	iGICM6sW+V/xx0d0wJ7a9iYSnejf6ZHB+QP9ToOjZz2V7lGTKH6CcStpjZlib/4dkwtF/wo8ixk
	QgPxGf1aT8bT/X6C9p7zvKKh/SmW5AX2B6PipBoYk4L2UqI8FC0UsXxdRBCyzfbxgKHHPo4RSfS
	LdCl7Pfv9O/gZIVa7H+X1qf2QLrg8KP3wavy8cNx8fR8r/UWIO80A+9Q9kCZPU5EfR4KtTTV8qe
	XGVNulx+kCwun4rURMiWVpNi74TkLg6P8TVdwIKRXaxPOozoBLPMKw==
X-Received: by 2002:ac8:7d51:0:b0:4b1:dd3:e3a0 with SMTP id d75a77b69052e-4b31dd23cf1mr106481081cf.63.1756756244972;
        Mon, 01 Sep 2025 12:50:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcRQqLvsO73smMhar4EHusoKlaCPVlMgz0D/DH7vCqNrnGoSyqy1pzM5xIvq7blIF/patDLA==
X-Received: by 2002:ac8:7d51:0:b0:4b1:dd3:e3a0 with SMTP id d75a77b69052e-4b31dd23cf1mr106480701cf.63.1756756244351;
        Mon, 01 Sep 2025 12:50:44 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:43 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 4/7] soundwire: qcom: deprecate qcom,din/out-ports
Date: Mon,  1 Sep 2025 20:50:34 +0100
Message-ID: <20250901195037.47156-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=eaQ9f6EH c=1 sm=1 tr=0 ts=68b5f916 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=nfbzo9wS4cg9a-Y7DkQA:9
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: _n8_tsxePEn_KNVpplDCQDB4UGb8wypw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MCBTYWx0ZWRfX7ggWQsXmvlIu
 PdCPMeXK4rtykt4pNgsVYQMfE9dDJpytLzdFqDS+nD/DL7Gl1Vir85KQfOR1Xl5BzJ+v3CklThH
 eRbBBkMvLRSbwtbirJbWjZIRPtV3jFG6rD3H9NSb4im4xiHrekfp1o5XIMxZLu6FZnSW8ALND5b
 035FhH9hqBApsawz6XUtPUL/00w26ZwqFq+6HTtyUnVRtcIQT68U+ipI3PGSCzpavNs2Dh2qhjE
 sR2eLI6Fm7Hogd6pHSYtBVBEYEYsZSRG+cqql8OKMWa7TISXm9paO3anZ0u0/wAE7/g3dhbFNOG
 rYI/DA/CqtnaUUwI7Vcpm/zfYovGvuqoOUFlzoN81qC1LdEknOWVDUThDrOwk6G/bTGyt5upDsD
 7Q3sEggc
X-Proofpoint-GUID: _n8_tsxePEn_KNVpplDCQDB4UGb8wypw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0
 adultscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300040

Number of input and output ports can be dynamically read from the
controller registers, getting this value from Device Tree is redundant
and potentially lead to bugs.

Remove the code parsing this property along with marking this as
deprecated in device tree bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 drivers/soundwire/qcom.c | 134 ++++++++++++++-------------------------
 1 file changed, 49 insertions(+), 85 deletions(-)

diff --git a/drivers/soundwire/qcom.c b/drivers/soundwire/qcom.c
index 7f19ebba6137..4fa3e1c080ef 100644
--- a/drivers/soundwire/qcom.c
+++ b/drivers/soundwire/qcom.c
@@ -128,7 +128,6 @@
 #define MAX_FREQ_NUM						1
 #define TIMEOUT_MS						100
 #define QCOM_SWRM_MAX_RD_LEN					0x1
-#define QCOM_SDW_MAX_PORTS					14
 #define DEFAULT_CLK_FREQ					9600000
 #define SWRM_MAX_DAIS						0xF
 #define SWR_INVALID_PARAM					0xFF
@@ -195,6 +194,7 @@ struct qcom_swrm_ctrl {
 	int wake_irq;
 	int num_din_ports;
 	int num_dout_ports;
+	int nports;
 	int cols_index;
 	int rows_index;
 	unsigned long port_mask;
@@ -202,7 +202,7 @@ struct qcom_swrm_ctrl {
 	u8 rcmd_id;
 	u8 wcmd_id;
 	/* Port numbers are 1 - 14 */
-	struct qcom_swrm_port_config pconfig[QCOM_SDW_MAX_PORTS + 1];
+	struct qcom_swrm_port_config *pconfig;
 	struct sdw_stream_runtime *sruntime[SWRM_MAX_DAIS];
 	enum sdw_slave_status status[SDW_MAX_DEVICES + 1];
 	int (*reg_read)(struct qcom_swrm_ctrl *ctrl, int reg, u32 *val);
@@ -1157,7 +1157,7 @@ static int qcom_swrm_stream_alloc_ports(struct qcom_swrm_ctrl *ctrl,
 				       struct snd_pcm_hw_params *params,
 				       int direction)
 {
-	struct sdw_port_config pconfig[QCOM_SDW_MAX_PORTS];
+	struct sdw_port_config *pconfig __free(kfree) = NULL;
 	struct sdw_stream_config sconfig;
 	struct sdw_master_runtime *m_rt;
 	struct sdw_slave_runtime *s_rt;
@@ -1167,6 +1167,10 @@ static int qcom_swrm_stream_alloc_ports(struct qcom_swrm_ctrl *ctrl,
 	int maxport, pn, nports = 0, ret = 0;
 	unsigned int m_port;
 
+	pconfig = kcalloc(ctrl->nports, sizeof(*pconfig), GFP_KERNEL);
+	if (!pconfig)
+		return -ENOMEM;
+
 	if (direction == SNDRV_PCM_STREAM_CAPTURE)
 		sconfig.direction = SDW_DATA_DIR_TX;
 	else
@@ -1190,8 +1194,7 @@ static int qcom_swrm_stream_alloc_ports(struct qcom_swrm_ctrl *ctrl,
 			continue;
 
 		port_mask = &ctrl->port_mask;
-		maxport = ctrl->num_dout_ports + ctrl->num_din_ports;
-
+		maxport = ctrl->nports;
 
 		list_for_each_entry(s_rt, &m_rt->slave_rt_list, m_rt_node) {
 			slave = s_rt->slave;
@@ -1351,106 +1354,67 @@ static int qcom_swrm_register_dais(struct qcom_swrm_ctrl *ctrl)
 static int qcom_swrm_get_port_config(struct qcom_swrm_ctrl *ctrl)
 {
 	struct device_node *np = ctrl->dev->of_node;
-	u8 off1[QCOM_SDW_MAX_PORTS];
-	u8 off2[QCOM_SDW_MAX_PORTS];
-	u16 si[QCOM_SDW_MAX_PORTS];
-	u8 bp_mode[QCOM_SDW_MAX_PORTS] = { 0, };
-	u8 hstart[QCOM_SDW_MAX_PORTS];
-	u8 hstop[QCOM_SDW_MAX_PORTS];
-	u8 word_length[QCOM_SDW_MAX_PORTS];
-	u8 blk_group_count[QCOM_SDW_MAX_PORTS];
-	u8 lane_control[QCOM_SDW_MAX_PORTS];
-	int i, ret, nports, val;
-	bool si_16 = false;
+	struct qcom_swrm_port_config *pcfg;
+	int i, ret, val;
 
 	ctrl->reg_read(ctrl, SWRM_COMP_PARAMS, &val);
 
 	ctrl->num_dout_ports = FIELD_GET(SWRM_COMP_PARAMS_DOUT_PORTS_MASK, val);
 	ctrl->num_din_ports = FIELD_GET(SWRM_COMP_PARAMS_DIN_PORTS_MASK, val);
 
-	ret = of_property_read_u32(np, "qcom,din-ports", &val);
-	if (ret)
-		return ret;
-
-	if (val > ctrl->num_din_ports)
-		return -EINVAL;
-
-	ctrl->num_din_ports = val;
+	ctrl->nports = ctrl->num_dout_ports + ctrl->num_din_ports;
 
-	ret = of_property_read_u32(np, "qcom,dout-ports", &val);
-	if (ret)
-		return ret;
-
-	if (val > ctrl->num_dout_ports)
-		return -EINVAL;
-
-	ctrl->num_dout_ports = val;
-
-	nports = ctrl->num_dout_ports + ctrl->num_din_ports;
-	if (nports > QCOM_SDW_MAX_PORTS)
-		return -EINVAL;
+	ctrl->pconfig = devm_kcalloc(ctrl->dev, ctrl->nports + 1,
+					sizeof(*ctrl->pconfig), GFP_KERNEL);
+	if (!ctrl->pconfig)
+		return -ENOMEM;
 
-	/* Valid port numbers are from 1-14, so mask out port 0 explicitly */
 	set_bit(0, &ctrl->port_mask);
+	/* Valid port numbers are from 1, so mask out port 0 explicitly */
+	for (i = 0; i < ctrl->nports; i++) {
+		pcfg = &ctrl->pconfig[i + 1];
 
-	ret = of_property_read_u8_array(np, "qcom,ports-offset1",
-					off1, nports);
-	if (ret)
-		return ret;
-
-	ret = of_property_read_u8_array(np, "qcom,ports-offset2",
-					off2, nports);
-	if (ret)
-		return ret;
-
-	ret = of_property_read_u8_array(np, "qcom,ports-sinterval-low",
-					(u8 *)si, nports);
-	if (ret) {
-		ret = of_property_read_u16_array(np, "qcom,ports-sinterval",
-						 si, nports);
+		ret = of_property_read_u8_index(np, "qcom,ports-offset1", i, &pcfg->off1);
 		if (ret)
 			return ret;
-		si_16 = true;
-	}
 
-	ret = of_property_read_u8_array(np, "qcom,ports-block-pack-mode",
-					bp_mode, nports);
-	if (ret) {
-		if (ctrl->version <= SWRM_VERSION_1_3_0)
-			memset(bp_mode, SWR_INVALID_PARAM, QCOM_SDW_MAX_PORTS);
-		else
+		ret = of_property_read_u8_index(np, "qcom,ports-offset2", i, &pcfg->off2);
+		if (ret)
 			return ret;
-	}
 
-	memset(hstart, SWR_INVALID_PARAM, QCOM_SDW_MAX_PORTS);
-	of_property_read_u8_array(np, "qcom,ports-hstart", hstart, nports);
+		ret = of_property_read_u8_index(np, "qcom,ports-sinterval-low", i, (u8 *)&pcfg->si);
+		if (ret) {
+			ret = of_property_read_u16_index(np, "qcom,ports-sinterval", i, &pcfg->si);
+			if (ret)
+				return ret;
+		}
+
+		ret = of_property_read_u8_index(np, "qcom,ports-block-pack-mode",
+						i, &pcfg->bp_mode);
+		if (ret) {
+			if (ctrl->version <= SWRM_VERSION_1_3_0)
+				pcfg->bp_mode = SWR_INVALID_PARAM;
+			else
+				return ret;
+		}
 
-	memset(hstop, SWR_INVALID_PARAM, QCOM_SDW_MAX_PORTS);
-	of_property_read_u8_array(np, "qcom,ports-hstop", hstop, nports);
+		/* Optional properties */
+		pcfg->hstart = SWR_INVALID_PARAM;
+		pcfg->hstop = SWR_INVALID_PARAM;
+		pcfg->word_length = SWR_INVALID_PARAM;
+		pcfg->blk_group_count = SWR_INVALID_PARAM;
+		pcfg->lane_control = SWR_INVALID_PARAM;
 
-	memset(word_length, SWR_INVALID_PARAM, QCOM_SDW_MAX_PORTS);
-	of_property_read_u8_array(np, "qcom,ports-word-length", word_length, nports);
+		of_property_read_u8_index(np, "qcom,ports-hstart", i, &pcfg->hstart);
 
-	memset(blk_group_count, SWR_INVALID_PARAM, QCOM_SDW_MAX_PORTS);
-	of_property_read_u8_array(np, "qcom,ports-block-group-count", blk_group_count, nports);
+		of_property_read_u8_index(np, "qcom,ports-hstop", i, &pcfg->hstop);
 
-	memset(lane_control, SWR_INVALID_PARAM, QCOM_SDW_MAX_PORTS);
-	of_property_read_u8_array(np, "qcom,ports-lane-control", lane_control, nports);
+		of_property_read_u8_index(np, "qcom,ports-word-length", i, &pcfg->word_length);
 
-	for (i = 0; i < nports; i++) {
-		/* Valid port number range is from 1-14 */
-		if (si_16)
-			ctrl->pconfig[i + 1].si = si[i];
-		else
-			ctrl->pconfig[i + 1].si = ((u8 *)si)[i];
-		ctrl->pconfig[i + 1].off1 = off1[i];
-		ctrl->pconfig[i + 1].off2 = off2[i];
-		ctrl->pconfig[i + 1].bp_mode = bp_mode[i];
-		ctrl->pconfig[i + 1].hstart = hstart[i];
-		ctrl->pconfig[i + 1].hstop = hstop[i];
-		ctrl->pconfig[i + 1].word_length = word_length[i];
-		ctrl->pconfig[i + 1].blk_group_count = blk_group_count[i];
-		ctrl->pconfig[i + 1].lane_control = lane_control[i];
+		of_property_read_u8_index(np, "qcom,ports-block-group-count",
+					i, &pcfg->blk_group_count);
+
+		of_property_read_u8_index(np, "qcom,ports-lane-control", i, &pcfg->lane_control);
 	}
 
 	return 0;
-- 
2.50.0


