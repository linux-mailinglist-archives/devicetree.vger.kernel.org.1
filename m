Return-Path: <devicetree+bounces-202638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3E3B1E4BB
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:50:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A5A1F7B3106
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0925026D4E8;
	Fri,  8 Aug 2025 08:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bE6qbnvH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D758826B742
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642980; cv=none; b=sJimGZuFpstjIVnNqKJfiu/pCvYgAh8u3C87Q1ZsQ6GLsJU32vH2XUAu2L0p7f9rKtKTS2vA6KDxXks7ftpgF5s3hVbMxMGYQ1RHfUPV9Np8pcxPjRVJlW99z+4zfnFo4oDhLQQrKfZ1tVQh6Lj+tEyR8G4KjF9klfXnqPc9vU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642980; c=relaxed/simple;
	bh=86PLTqk8gjY11xMPb1ytqtbNlgq74lMq8dDdY25h1Es=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aaNBK6/yz6lwt4kCb9VSVkFvXVB/sJFhBTIhTHSW5ysnLcQHgzkmFr5ftgxGLbjj5MfCg66uqkn5X50GHhrzF0zzCZ4wyz2vYGOZTFVrenrZ4q2fQ9pzOkMA7q3xSSdOs+XvsLjAMFAspojjR+J/lKdIVHO6E5o5sk77Yw2xEXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bE6qbnvH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5786ZkhC007608
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=LWjsBg1VVIO
	yEmDu+biLKzIOgFeO6f57DCN9nQYGCOQ=; b=bE6qbnvHgIiv3MDD6g/4XexqKuw
	6UqnD2fKMngjehHx8Yh60kgEVCB2gAKuICAd2rpMxEFDrhQJ/pANNJjRWs1kzZFA
	mpX05wfGjcr39vHGcFeNgxnuGCs9/qsAPwM1d3U6lw8ybi5b8Zf2rHhwMShT/lWh
	hbvCkmYy8PVZStK5htde1UBE129eKsKOhFuFHAYc4CrvsvH1Tjpvh2r/EpbNM6dp
	HlD4GzQdYzUvfrm+olpD3uednFnq+Ama0tfoWKxdcq0hKYFxTPJ/F9NYsjtllv9p
	4ZHgbQpiqkaKmbaE/gnJcIDUziSiMpvixli07PJVLsKFvL4xJpGV5m0sngQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c8u26cst-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:49:38 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b08b271095so51637841cf.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754642977; x=1755247777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LWjsBg1VVIOyEmDu+biLKzIOgFeO6f57DCN9nQYGCOQ=;
        b=rUTrDxZT0Tw+MTPTC1PEHi14ohw299eX7qil0qRfcbAZSmz34BVL4L9Nhe747goHUZ
         2IzdiaVl05fCApx62DeH2PzKhKnk42q8xRDnw5EnvQ+2VpTu170ri0Uf/G+A4k35ulJg
         iRnGwQ8/BRHNv334/QONCR7o0vSImppewd0rkk9r+Ia2K+I/jrLv+PUUzN2SgI+WpGie
         59sKQg9cDzGtvgQpwWr378ZiFlau41Gjf2Bf5KF8xJQeTtfefeIHP27wM5P7ObDky43C
         K6oKcdkV4Thw7dOo3rEu/Xf9e+ws13549iwZicvwpYVRKN8zvdVNuFM3OerzypsdfQkZ
         yHFw==
X-Forwarded-Encrypted: i=1; AJvYcCVN8oOmZX/wO3/Z5KDCcOCS1NwJc0rBdd1fxEj6+y/OMHrt3NdznSRlXC9DkiIXkTx9t9xexU+ovkWp@vger.kernel.org
X-Gm-Message-State: AOJu0YxGvasa9eX6eaqFtygyB5RAnlLOLdTQh+sMNQM8ht3+5UPIX4Bt
	2cEBSfaMSUMVFXP29B20QgDHx26XzTbLxINUVAPcmq7WyAWw/XoIMMRfR6yp86t8j7Qow/2mFUc
	FwJSluzL5AngbVi28Vt9ySSm3pGdjhdTF0A4Yu9IJbLz2bz4qWGFBJZGpa0q3q7ZD
X-Gm-Gg: ASbGncueJdJefqCoVoRI8w8XqnHkLrDPDTXuUP4lf5nFOH4Q2s4eQnm7iyzHJQc7cgT
	5OHxITLR1QsJSOVbQjZKm9RDYCTDVC99zkS6GuVGzuXbHK1BNfFT04ip1+O1vkF8g1dgwvnuDLM
	uSiJYfdGB0eRFv0WWQr9mnJq1njWBwL1icxJnuOmtPGKSoZnprksF0hcl0O+7MUvqGaKgE4WWSF
	nS3RjD5z+93yONj9jFVat5ne8siou1e0IwpkBjXG9kuopfGUQZTf8aGOWAsX5Z289kzi9f/xmM5
	CcTPz8/6eAlJjVe25fF3e0c5/G9VOpzFiSYpRuCWkZD8sKvQ7ifJhCayD94/20dDk/F750Mn0jm
	IJdyjygYKjJKC
X-Received: by 2002:ac8:58c5:0:b0:4b0:8773:9b0f with SMTP id d75a77b69052e-4b0aed0f079mr31522161cf.10.1754642971762;
        Fri, 08 Aug 2025 01:49:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEleTrWlsG0anHArp6k+mQlnVM4K5gb1a/fa4NSmTcJysP5EfMDPCkm8nMA1E9waB8F2IsMYQ==
X-Received: by 2002:ac8:58c5:0:b0:4b0:8773:9b0f with SMTP id d75a77b69052e-4b0aed0f079mr31521901cf.10.1754642971257;
        Fri, 08 Aug 2025 01:49:31 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e58400f5sm122904295e9.2.2025.08.08.01.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:49:30 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 2/8] media: venus: Define minimum valid firmware version
Date: Fri,  8 Aug 2025 10:49:17 +0200
Message-Id: <20250808084923.1402617-3-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: ZtXACpz9j4cl3PrmukRXAOJPivu3uYrL
X-Authority-Analysis: v=2.4 cv=Q/TS452a c=1 sm=1 tr=0 ts=6895ba22 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=-5R0vqtSU2Fw_BP-RAMA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ZtXACpz9j4cl3PrmukRXAOJPivu3uYrL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA5MCBTYWx0ZWRfX6nZjS4mOKrp2
 +Vj4PsPQ2yfFv3SjCfV6UHIReRRkUaIkbyJJ8bXdUMUiZKkgh/7rV8ys/3QdBj71ielmL7/kzKF
 6m+FPSDZslcwQ14MFJhBF8+w2jpCEa7dp+jOG2r7LD4hyvZyiwwxsX/+V4O3GiLH/KZq4Nlce4A
 fzYnGKc8waGVG6eO9tt2oLvTSOqk1woN1Z9KZelta3D7k9jk6V/gWADT9aN/yMwCbi013IS5qsv
 qDUU+ZEUaMANsW9zFy4SnikgT3CUYtuBInjUzxxTD46URT7R/AjV6YcuHBzPGgIDkm8vPfIvkJm
 VzKicT4zvQermCSi1S0ScoctK34zkSk3AGvKON+UDcYNLAdlCM/f0IsLrM1sXAvh9Z/e9Ut+AAo
 S352yOGJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060090

Add support for specifying the minimum firmware version required for
correct operation.

When set, the driver compares this value against the version reported by
the firmware: if the firmware is older than required, driver
initialization will fail.

The version check is performed before creating dynamic device tree
nodes, to avoid the need for reverting nodes on failure.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/core.c     | 40 +++++++++++---------
 drivers/media/platform/qcom/venus/core.h     | 13 ++++---
 drivers/media/platform/qcom/venus/firmware.c | 20 ++++++++++
 drivers/media/platform/qcom/venus/firmware.h |  1 +
 4 files changed, 51 insertions(+), 23 deletions(-)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 4c049c694d9c..f45715c9b222 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -448,19 +448,9 @@ static int venus_probe(struct platform_device *pdev)
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
@@ -474,34 +464,48 @@ static int venus_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_venus_shutdown;
 
-	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_DEC);
+	ret = venus_firmware_check(core);
 	if (ret)
 		goto err_core_deinit;
 
+	if (core->res->dec_nodename || core->res->enc_nodename) {
+		ret = venus_add_dynamic_nodes(core);
+		if (ret)
+			goto err_core_deinit;
+	}
+
+	ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
+	if (ret)
+		goto err_remove_dynamic_nodes;
+
+	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_DEC);
+	if (ret)
+		goto err_of_depopulate;
+
 	ret = venus_enumerate_codecs(core, VIDC_SESSION_TYPE_ENC);
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
index 5b1ba1c69adb..d1f0e9979ba4 100644
--- a/drivers/media/platform/qcom/venus/core.h
+++ b/drivers/media/platform/qcom/venus/core.h
@@ -58,6 +58,12 @@ enum vpu_version {
 	VPU_VERSION_IRIS2_1,
 };
 
+struct firmware_version {
+	u32 major;
+	u32 minor;
+	u32 rev;
+};
+
 struct venus_resources {
 	u64 dma_mask;
 	const struct freq_tbl *freq_tbl;
@@ -94,6 +100,7 @@ struct venus_resources {
 	const char *fwname;
 	const char *enc_nodename;
 	const char *dec_nodename;
+	const struct firmware_version *min_fw;
 };
 
 enum venus_fmt {
@@ -231,11 +238,7 @@ struct venus_core {
 	unsigned int core0_usage_count;
 	unsigned int core1_usage_count;
 	struct dentry *root;
-	struct venus_img_version {
-		u32 major;
-		u32 minor;
-		u32 rev;
-	} venus_ver;
+	struct firmware_version venus_ver;
 	unsigned long dump_core;
 	struct of_changeset *ocs;
 	bool hwmode_dev;
diff --git a/drivers/media/platform/qcom/venus/firmware.c b/drivers/media/platform/qcom/venus/firmware.c
index 66a18830e66d..3666675ae298 100644
--- a/drivers/media/platform/qcom/venus/firmware.c
+++ b/drivers/media/platform/qcom/venus/firmware.c
@@ -280,6 +280,26 @@ int venus_shutdown(struct venus_core *core)
 	return ret;
 }
 
+int venus_firmware_check(struct venus_core *core)
+{
+	const struct firmware_version *req = core->res->min_fw;
+	const struct firmware_version *run = &core->venus_ver;
+
+	if (!req)
+		return 0;
+
+	if (!is_fw_rev_or_newer(core, req->major, req->minor, req->rev))
+		goto error;
+
+	return 0;
+error:
+	dev_err(core->dev, "Firmware v%d.%d.%d < v%d.%d.%d\n",
+		run->major, run->minor, run->rev,
+		req->major, req->minor, req->rev);
+
+	return -EINVAL;
+}
+
 int venus_firmware_init(struct venus_core *core)
 {
 	struct platform_device_info info;
diff --git a/drivers/media/platform/qcom/venus/firmware.h b/drivers/media/platform/qcom/venus/firmware.h
index aaccd847fa30..ead39e3797f0 100644
--- a/drivers/media/platform/qcom/venus/firmware.h
+++ b/drivers/media/platform/qcom/venus/firmware.h
@@ -9,6 +9,7 @@ struct device;
 
 int venus_firmware_init(struct venus_core *core);
 void venus_firmware_deinit(struct venus_core *core);
+int venus_firmware_check(struct venus_core *core);
 int venus_boot(struct venus_core *core);
 int venus_shutdown(struct venus_core *core);
 int venus_set_hw_state(struct venus_core *core, bool suspend);
-- 
2.34.1


