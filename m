Return-Path: <devicetree+bounces-194236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EECEBAFD5FF
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 20:06:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9058D486A90
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 18:06:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D4282E7F3A;
	Tue,  8 Jul 2025 18:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bjm8yW79"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D4F2E5403
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 18:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751997944; cv=none; b=iDvtmOuSLGE5YKfwYEVymWnDSEnqRQEpgFQgjtj392V45JCI8MmaRZzGgcSrwIA3WM9E78MA1YrCyjNduWCljSN7VnyM86xvRykC+rD71oIbUCWXPLarY1WQBYYtXH1zFOTM42crFxpcVJ06wtH1LzM5ybxfHz9p9oeS8YQhB/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751997944; c=relaxed/simple;
	bh=t50FJzQhmteE/WPApUDxTzLg7TLzhqKkrodxrQ/hniQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=KPSPiaUOvpjurIZPxUoNaeL5cXyADXj9f+BbpPiTSeWDhXTPSFT53dryZytrOI2NmsE4diNHSeijn3HSVS+6eD/efXcP4Jjn7tiTjmx6w5A+q4GFWZVqmN4Q+THkgXGd9mQSE0Q+LxzJ3Sb8v4DAJwe4p77G09tBQkJCXEwzt70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bjm8yW79; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAQe9003516
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 18:05:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XRXx4PrIhdu
	ugCmIWoy/9iY9WF80V7JusJT0oVTYWXw=; b=Bjm8yW79n9Z3AJTXHNFses7qJJ0
	1eqmFngPqiGhyv14oLbIYXDWKV2TB3jZBOmVCeH/2HqmeDJ0ERLvEGT8+CqDxGx6
	u6MiHL86xs9wAnhiw68RiUk04twLzF/cFGiudGddTN6uiAw2rxcIM6+a/LXQv/4h
	tZMU9NxGMUnwGDaHpm3YCHAh7pA56Eubd18ejiuU0m5F10yVGFzhu7kvWZLP/FUI
	E2EG46fREIP2QOQhYfzw/NzwBmHNdx08rEXMGUcsvYNAY3W9tIBQBzcSj3xDhNmw
	GjNwJCpaw5h63fydCYnyzT5xqCScwIolR527/K6OV09Q0M6GE6zkB+yL1FQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pvefh2a0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 18:05:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a762876813so73885511cf.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 11:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751997940; x=1752602740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XRXx4PrIhduugCmIWoy/9iY9WF80V7JusJT0oVTYWXw=;
        b=sOaoWQvECsIaBHQDv//gk4OZsABxEmTImvk4juapdMi15EAp9xh9nSBMpjBGveonF6
         Hw6wu0FZmTgX4410fZUWIcb4rIZYPQK3F0K57X8RoE95xCgf+wK90c2bi+fTRs8ZYQY3
         og6pXdxI6iKA+iLw5qlA0GnooLGgnkQ+QJaEGbM9Fxi0OJ1byYPnt16rxUbJc7WciR9s
         4BH3hmmzX1p1LlhhurqZYQ+CbMD/yOHJ3lnmyTADxuC7zo7ueSGv/nG/CibDAy4WUr1q
         Tzpre2jQd9g7uUX/xaPvU383r//QzuNUGP9IxGtHMMfo2TS1O5HzGRjzqs+FV5JMP6Em
         VzJA==
X-Forwarded-Encrypted: i=1; AJvYcCVmOOvlm4NAl5zrupFM3xA8FEosqHonYvL6qOOigkRj5mTf8J1WC8eVbyOxli1qMV9sxfOpqVDxdvDp@vger.kernel.org
X-Gm-Message-State: AOJu0YzWdSqAGzrc1VsEZVNkvNT4PsE5yGxxnZyHT7YvbqzTUNJl3Vvl
	99QL2E3BPQedAxoOYlew3eGInywkv5oiiv2J8vy4EZzUoJDy5yUCiqemYldwa3nMFChVlWB0vf1
	S3S/S2PFPJQ9L0v544LtM++l2GXmQDb0mU+Jnmj5N9+NJeXnbJ83F+dg9B4JYc6ec
X-Gm-Gg: ASbGncvQfVY1ZfYqhiEwB70o9qawYaInieF5x2e0/us0yxu7XQ564Bl374oY0NGQvEa
	iSUXw52u+V9XAT0nlHW7Szy/BF6b+MQqW6LHbeILO/QXU1bp3ayryd1Lay0WqvtRPeV2OPt6SNH
	2kJVu1Ls39fMJbst5UPSxlA4a3CvDVoJDLBRC5sLKBrMPUcHnlzX1VkFcGG+CRDXnxtxzeKhDVW
	4T/4p1/2CPQ4rJ1JE1DPgWX2Zc3jziC0KoFGYv4WqZQV5p+VCwhxzEsEJ4SHU7n/LRo0VwcGxa2
	TfcJm9Tj2qF9T+rhGYHC2MZbw6QeQRhcr9lI79tz/pArSnfg+Q8/uDEo8ClnDQlwlNHdDvrfQg=
	=
X-Received: by 2002:a05:622a:1a04:b0:494:b3eb:a4b9 with SMTP id d75a77b69052e-4a9dbaa6a28mr6768471cf.51.1751997939853;
        Tue, 08 Jul 2025 11:05:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHayMJTBouvuIAfJIuce1b3nxsNzsgX73YAfdaekhFto6m7zDySxovSAtcJRgOnV+0y7Xcuaw==
X-Received: by 2002:a05:622a:1a04:b0:494:b3eb:a4b9 with SMTP id d75a77b69052e-4a9dbaa6a28mr6767901cf.51.1751997939174;
        Tue, 08 Jul 2025 11:05:39 -0700 (PDT)
Received: from trex.. (97.red-79-144-186.dynamicip.rima-tde.net. [79.144.186.97])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0a5csm13394906f8f.29.2025.07.08.11.05.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 11:05:38 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, bryan.odonoghue@linaro.org,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        robh@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/7] media: venus: Conditionally register codec nodes based on firmware version
Date: Tue,  8 Jul 2025 20:05:25 +0200
Message-Id: <20250708180530.1384330-3-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
References: <20250708180530.1384330-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDE1MSBTYWx0ZWRfXy48y8eJPfJf4
 vi9EIB9xIvSfk+WGoVtaWgrqKTuJKdVkf2cd/9/u477vzgj7QxTNrrrMcgExTV6/M6bIk5LZkv8
 3LiNw9PwUaV9vmFL3E8pKzkPwOfMs8jJeRRb01EUSgO7Xje3G+AnP+zILk3pL6qtmECg83bcpCZ
 19EK/d1+toh4+2hdaqj66cAGlyn7lGh0J9eAbjzVe4f15h+pJO8fibT6tbUCiFSxPbaf8FKDQGn
 OOjRBsS2FOkL0AH4l9DWlYvrrUW9ZdOrs7ZFhoK3ZyZLpnR6vP1Jug3nnJMVXqS2sbre+9aS2Du
 yNKIz/JRKqfe9fpsv/2Zh4XaDIY9vmA4nl9INlQvdcX4vLtYNnLbZG3Xws9rwpO+bIjLBp31BtI
 AE2OJyHah9ZzYr2PXTYZanAZC7fzC1GB9YT/51RiGYxQxw9R7rEr2w3Mq1V2nfCM8WSuDr8G
X-Authority-Analysis: v=2.4 cv=dciA3WXe c=1 sm=1 tr=0 ts=686d5df5 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=oX6B8lV6/A+qF9mARCc04Q==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=b6RcsaAH2Bz4aJime2YA:9
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: M8CCB6B-i6CMSrMIAo3z6o2gWnQ-hsLf
X-Proofpoint-ORIG-GUID: M8CCB6B-i6CMSrMIAo3z6o2gWnQ-hsLf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_05,2025-07-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 lowpriorityscore=0 adultscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080151

The encoding and decoding capabilities of a VPU can vary depending on the
firmware version in use.

This commit adds support for platforms with OF_DYNAMIC enabled to
conditionally skip the creation of codec device nodes at runtime if the
loaded firmware does not support the corresponding functionality.

Note that the driver becomes aware of the firmware version only after the
HFI layer has been initialized.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/core.c | 72 +++++++++++++++---------
 drivers/media/platform/qcom/venus/core.h |  8 +++
 2 files changed, 54 insertions(+), 26 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 4c049c694d9c..9744c18af54d 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -28,6 +28,15 @@
 #include "pm_helpers.h"
 #include "hfi_venus_io.h"
 
+static inline bool venus_fw_supports_codec(struct venus_core *core,
+					   const struct venus_min_fw *ver)
+{
+	if (!ver)
+		return true;
+
+	return is_fw_rev_or_newer(core, ver->major, ver->minor, ver->rev);
+}
+
 static void venus_coredump(struct venus_core *core)
 {
 	struct device *dev;
@@ -202,7 +211,8 @@ static u32 to_v4l2_codec_type(u32 codec)
 	}
 }
 
-static int venus_enumerate_codecs(struct venus_core *core, u32 type)
+static int venus_enumerate_codecs(struct venus_core *core, u32 type,
+				  const struct venus_min_fw *ver)
 {
 	const struct hfi_inst_ops dummy_ops = {};
 	struct venus_inst *inst;
@@ -213,6 +223,9 @@ static int venus_enumerate_codecs(struct venus_core *core, u32 type)
 	if (core->res->hfi_version != HFI_VERSION_1XX)
 		return 0;
 
+	if (venus_fw_supports_codec(core, ver) == false)
+		return 0;
+
 	inst = kzalloc(sizeof(*inst), GFP_KERNEL);
 	if (!inst)
 		return -ENOMEM;
@@ -288,14 +301,14 @@ static irqreturn_t venus_isr_thread(int irq, void *dev_id)
 
 #if defined(CONFIG_OF_DYNAMIC)
 static int venus_add_video_core(struct venus_core *core, const char *node_name,
-				const char *compat)
+				const char *compat, const struct venus_min_fw *ver)
 {
 	struct of_changeset *ocs = core->ocs;
 	struct device *dev = core->dev;
 	struct device_node *np, *enp;
 	int ret;
 
-	if (!node_name)
+	if (!node_name || venus_fw_supports_codec(core, ver) == false)
 		return 0;
 
 	enp = of_find_node_by_name(dev->of_node, node_name);
@@ -330,11 +343,13 @@ static int venus_add_dynamic_nodes(struct venus_core *core)
 
 	of_changeset_init(core->ocs);
 
-	ret = venus_add_video_core(core, core->res->dec_nodename, "venus-decoder");
+	ret = venus_add_video_core(core, core->res->dec_nodename, "venus-decoder",
+				   core->res->dec_minfw);
 	if (ret)
 		goto err;
 
-	ret = venus_add_video_core(core, core->res->enc_nodename, "venus-encoder");
+	ret = venus_add_video_core(core, core->res->enc_nodename, "venus-encoder",
+				   core->res->enc_minfw);
 	if (ret)
 		goto err;
 
@@ -363,6 +378,9 @@ static void venus_remove_dynamic_nodes(struct venus_core *core)
 #else
 static int venus_add_dynamic_nodes(struct venus_core *core)
 {
+	WARN_ONCE(core->res->enc_minfw || core->res->dec_minfw,
+		  "Feature not supported");
+
 	return 0;
 }
 
@@ -432,7 +450,7 @@ static int venus_probe(struct platform_device *pdev)
 					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
 					"venus", core);
 	if (ret)
-		goto err_core_put;
+		goto err_hfi_destroy;
 
 	venus_assign_register_offsets(core);
 
@@ -448,19 +466,9 @@ static int venus_probe(struct platform_device *pdev)
 	if (ret < 0)
 		goto err_runtime_disable;
 
-	if (core->res->dec_nodename || core->res->enc_nodename) {
-		ret = venus_add_dynamic_nodes(core);
-		if (ret)
-			goto err_runtime_disable;
-	}
-
-	ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
-	if (ret)
-		goto err_remove_dynamic_nodes;
-
 	ret = venus_firmware_init(core);
 	if (ret)
-		goto err_of_depopulate;
+		goto err_runtime_disable;
 
 	ret = venus_boot(core);
 	if (ret)
@@ -474,34 +482,46 @@ static int venus_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_venus_shutdown;
 
-	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_DEC);
+	if (core->res->dec_nodename || core->res->enc_nodename) {
+		ret = venus_add_dynamic_nodes(core);
+		if (ret)
+			goto err_core_deinit;
+	}
+
+	ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
 	if (ret)
-		goto err_core_deinit;
+		goto err_remove_dynamic_nodes;
+
+	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_DEC,
+				     core->res->dec_minfw);
+	if (ret)
+		goto err_of_depopulate;
 
-	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_ENC);
+	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_ENC,
+				     core->res->enc_minfw);
 	if (ret)
-		goto err_core_deinit;
+		goto err_of_depopulate;
 
 	ret = pm_runtime_put_sync(dev);
 	if (ret) {
 		pm_runtime_get_noresume(dev);
-		goto err_core_deinit;
+		goto err_of_depopulate;
 	}
 
 	venus_dbgfs_init(core);
 
 	return 0;
 
+err_of_depopulate:
+	of_platform_depopulate(dev);
+err_remove_dynamic_nodes:
+	venus_remove_dynamic_nodes(core);
 err_core_deinit:
 	hfi_core_deinit(core, false);
 err_venus_shutdown:
 	venus_shutdown(core);
 err_firmware_deinit:
 	venus_firmware_deinit(core);
-err_of_depopulate:
-	of_platform_depopulate(dev);
-err_remove_dynamic_nodes:
-	venus_remove_dynamic_nodes(core);
 err_runtime_disable:
 	pm_runtime_put_noidle(dev);
 	pm_runtime_disable(dev);
diff --git a/drivers/media/platform/qcom/venus/core.h b/drivers/media/platform/qcom/venus/core.h
index 5b1ba1c69adb..3af8386b78be 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -50,6 +50,12 @@ struct bw_tbl {
 	u32 peak_10bit;
 };
 
+struct venus_min_fw {
+	u32 major;
+	u32 minor;
+	u32 rev;
+};
+
 enum vpu_version {
 	VPU_VERSION_AR50,
 	VPU_VERSION_AR50_LITE,
@@ -92,6 +98,8 @@ struct venus_resources {
 	u32 cp_nonpixel_start;
 	u32 cp_nonpixel_size;
 	const char *fwname;
+	const struct venus_min_fw *enc_minfw;
+	const struct venus_min_fw *dec_minfw;
 	const char *enc_nodename;
 	const char *dec_nodename;
 };
-- 
2.34.1


