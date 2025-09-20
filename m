Return-Path: <devicetree+bounces-219603-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C9FB8CF4D
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 21:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4A0417B5A2
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 19:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825D7245005;
	Sat, 20 Sep 2025 19:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hcD53B4g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD14D246BC1
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758397315; cv=none; b=skblBKZmiSPu12Zj8bxDQaprZEZBOeujwOPTRt/58QkzYKMq8YiHoXPWUmL08pJYGDFP0XxHJEyD0B7sWN7eBgAL8PRDtXm8tXikDpZMSRfyOwHyIOSedAdQZgrXB85VuJt3ip2plrXCqYavvoA456jZ1kLA6A8x9TyZCnsCY10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758397315; c=relaxed/simple;
	bh=VjNbYY7aaqKShUXgm3Bl844wtAfc/SbWgaQ17r4q8zI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CApoWDJEfRQBVY9zJroe0Dy9iKKOzA8K56795rHXmBfvikCntkjCPwBQpSM+IFpRKiubGVPoLHNenMktVCBJmOfwnqrutSPvviJNNag5M/0NBzIfNpTMoElvA8z4cWTONaHXa8i8rPScq40Y36mJ+DR39AgmYQ4mXzYUIzow80Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hcD53B4g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3ZE4d025247
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:41:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kifMgFPT4OZ3vmxFBQuyI3bPmyDtJpE9SmJKfH6MoTI=; b=hcD53B4gcaBjCqpu
	2A1/UNo3ma2hHY+K5CHsDJFTEpNo4PpaodTjbhR8JxZoAd7iZfCoDtnGr727ZSz0
	tL+9EQbBInzREGXmKsdoNU+B/0xsq5ycwVWc76t7o9w9RkaLNzVI5rnlteTrpyBH
	us1aalSV/ULfMOKFBMTN+5XAn89wOAi31X1QbKHvO3rN+UA3RrRt52xHAeL3FBqo
	EIfBnaAHwuvkUE6a8wLVCJQqZksDukg/s6E2d/H3wg5xKxiHWvI04HoxhrgSndcs
	fKQxziHWo+/p2vaGqBmjqQRY4OlmGl5PfN10fpUUxvpNt8SfFgq9/lOJkBE3cWuP
	lHJyeg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499mg316b8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:41:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-269880a7bd9so34472055ad.3
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 12:41:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758397312; x=1759002112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kifMgFPT4OZ3vmxFBQuyI3bPmyDtJpE9SmJKfH6MoTI=;
        b=iv1M0+d5qct6jfbZ3TKN1v+HhV/CytipzAsKkIG+3w5ML+nIGwltkMgh8JlWwforA/
         JiQ1VF2/60WCLJhsFpblwE66f+bcNccz2MrbPegU9uzloZCE+enA3lKt88JN7pP6Dewd
         Z3s7cVjs9T9PZri0An/HjKBhNnO/ZZhyFzIZCCleq0aI3kXNGiIdggSNUkvcBtaXxRUi
         2cfDkL1KwEmOOKTotJcEVkmCxEXbqx+UctDntPiBDZ80FnJouILqnwthP1vA4WTyE9U1
         mudNJSfonutb/BEyzubxWz+C+j53v047QR4FsNliOJk/uvW5M47h8WXcfzYJd1ZpGlet
         UxFg==
X-Forwarded-Encrypted: i=1; AJvYcCU17YNxf+pXHxGtq/gAVF/0o9jcgKzo2dGLKv7QZRLnS1cipcDgdpwj3YzriYA8ytUWcyg2jB3w+Ctm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3vor8yc2aP9mBD6OQiUyVS8awHpyn95hJPu1cJT1Lxg1uLQip
	zOGtYSTy+Y/GmrV55Ycl3Cym73uS/owigij1QdhbUTrXX0cccnr/jIwvHpqUBFFGKBWdeNGUqUH
	r+V3WUeqJJodL1VH78YUfGIRyVCaM4pCm7AlC4P9UjBljgUMQ2FGc9NBtRlGTVdzq
X-Gm-Gg: ASbGncvJAAGJW8+EYKmbf9xT4xRUapFqOx0PLjr4/ga4JyM1rltVSe+aiOxP1cXvm4N
	HlTiR8LpzB8b52rDnmEmp+KHzWxKucJuAonVnKZCnhdUVnRUpbscnOMQ9eXumDWvANcDEU7sX/v
	o8iLSnJk8o3uOiDKqEdik81v9XMaegmvmaGvI8LoVZxaXL/ruogv5wxRTFjj2t4gw95qQDVV4vV
	cufQoUivFvpvuTHG9Nix8SjANx76jFm1y6Sdvnng3aaYPza/rl4ABjPqNLE57T66DgLOr/xfH0c
	cMgIjLHwvDKbpXjrdY8eU/BkiTMIsIGMRlxAbxKb7ivEkIoEJKa/fcS/7i4ImncTAKA=
X-Received: by 2002:a17:903:298b:b0:267:c9c8:3b49 with SMTP id d9443c01a7336-269ba43547dmr108966765ad.5.1758397311979;
        Sat, 20 Sep 2025 12:41:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGzm6swY7g3ljdJ38jcL/w68YVOQANM53hR8yfTX1LvBKsyzTsSQaPaUpp349mFafgecKzNSQ==
X-Received: by 2002:a17:903:298b:b0:267:c9c8:3b49 with SMTP id d9443c01a7336-269ba43547dmr108966555ad.5.1758397311560;
        Sat, 20 Sep 2025 12:41:51 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f2c8aa554sm143767b3a.34.2025.09.20.12.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 12:41:51 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 01:11:00 +0530
Subject: [PATCH v3 02/12] firmware: qcom_scm: Rename peripheral as pas_id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-kvm_rproc_pas-v3-2-458f09647920@oss.qualcomm.com>
References: <20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com>
In-Reply-To: <20250921-kvm_rproc_pas-v3-0-458f09647920@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758397299; l=5995;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=VjNbYY7aaqKShUXgm3Bl844wtAfc/SbWgaQ17r4q8zI=;
 b=X0qq0JQVjMg+Hwn5EDAYYezZITmRLHpQDXvOADQMFsWrlJXtXsWtTPdRbiWwNHPTdMW+sblRq
 UpXCtP35pBVCEWCsMQR1MItGEJXTJvqfq+k76Bsq1qfGvd91ol7h0+m
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzMiBTYWx0ZWRfX5l7hGy3mRy3/
 D3E7ILmk812JlWkzbv3I7B/ofQVV0mpvIn/tilFmKLXDB27M/kS+y1RVrRWq55h6aX4BMciwRtW
 u/C1z18XMeBFRTMdDW3MvQe72f4IDScWouoH0drb1vqXvGUrIV1Yts93+O2QQEVsgZIoaSChjGn
 EUea6XkzimSIoUEzZDEWS2DOYO/40JP+/O1o76MH90Tir96rXi24q4dEyTrKry2KQbVW0K6Bn4Y
 6lVNtyPt8ZiWVvVlGt8HILrs820vLweN9Wa0qE9WKqslfJNexfTNj5eRGrt+Tj9N0IIFoOvbGAL
 M7DuBglfzXkcEX/l8zMZqN6wBXKBuwyDhipnXhMkrGiDniQ0GxoiXq4Pd7N92XHTP5d4L1ndtO4
 TKg6oCp9
X-Proofpoint-GUID: jMlIh93bZp_rAbpxNcJOq5IiLGjFXchG
X-Authority-Analysis: v=2.4 cv=UvtjN/wB c=1 sm=1 tr=0 ts=68cf0381 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bcWw3dkznkfw-y6_B5AA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: jMlIh93bZp_rAbpxNcJOq5IiLGjFXchG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_07,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200032

Peripheral and pas_id refers to unique id for a subsystem and used only
when peripheral authentication service from secure world is utilized.

Lets rename peripheral to pas_id to reflect closer to its meaning.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 30 +++++++++++++++---------------
 include/linux/firmware/qcom/qcom_scm.h | 10 +++++-----
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index e777b7cb9b12..3379607eaf94 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -562,7 +562,7 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
  *			       metadata
- * @peripheral: peripheral id
+ * @pas_id:	peripheral authentication service id
  * @metadata:	pointer to memory containing ELF header, program header table
  *		and optional blob of data used for authenticating the metadata
  *		and the rest of the firmware
@@ -575,7 +575,7 @@ static void qcom_scm_set_download_mode(u32 dload_mode)
  * track the metadata allocation, this needs to be released by invoking
  * qcom_scm_pas_metadata_release() by the caller.
  */
-int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
+int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_metadata *ctx)
 {
 	dma_addr_t mdata_phys;
@@ -585,7 +585,7 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
 		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -658,20 +658,20 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
 /**
  * qcom_scm_pas_mem_setup() - Prepare the memory related to a given peripheral
  *			      for firmware loading
- * @peripheral:	peripheral id
+ * @pas_id:	peripheral authentication service id
  * @addr:	start address of memory area to prepare
  * @size:	size of the memory area to prepare
  *
  * Returns 0 on success.
  */
-int qcom_scm_pas_mem_setup(u32 peripheral, phys_addr_t addr, phys_addr_t size)
+int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_MEM_SETUP,
 		.arginfo = QCOM_SCM_ARGS(3),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.args[1] = addr,
 		.args[2] = size,
 		.owner = ARM_SMCCC_OWNER_SIP,
@@ -699,18 +699,18 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_mem_setup);
 /**
  * qcom_scm_pas_auth_and_reset() - Authenticate the given peripheral firmware
  *				   and reset the remote processor
- * @peripheral:	peripheral id
+ * @pas_id:	peripheral authentication service id
  *
  * Return 0 on success.
  */
-int qcom_scm_pas_auth_and_reset(u32 peripheral)
+int qcom_scm_pas_auth_and_reset(u32 pas_id)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_AUTH_AND_RESET,
 		.arginfo = QCOM_SCM_ARGS(1),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -735,18 +735,18 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_auth_and_reset);
 
 /**
  * qcom_scm_pas_shutdown() - Shut down the remote processor
- * @peripheral: peripheral id
+ * @pas_id:	peripheral authentication service id
  *
  * Returns 0 on success.
  */
-int qcom_scm_pas_shutdown(u32 peripheral)
+int qcom_scm_pas_shutdown(u32 pas_id)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_SHUTDOWN,
 		.arginfo = QCOM_SCM_ARGS(1),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -772,18 +772,18 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_shutdown);
 /**
  * qcom_scm_pas_supported() - Check if the peripheral authentication service is
  *			      available for the given peripherial
- * @peripheral:	peripheral id
+ * @pas_id:	peripheral authentication service id
  *
  * Returns true if PAS is supported for this peripheral, otherwise false.
  */
-bool qcom_scm_pas_supported(u32 peripheral)
+bool qcom_scm_pas_supported(u32 pas_id)
 {
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
 		.cmd = QCOM_SCM_PIL_PAS_IS_SUPPORTED,
 		.arginfo = QCOM_SCM_ARGS(1),
-		.args[0] = peripheral,
+		.args[0] = pas_id,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index a55ca771286b..a13f703b16cd 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -72,13 +72,13 @@ struct qcom_scm_pas_metadata {
 	ssize_t size;
 };
 
-int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
+int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 			    struct qcom_scm_pas_metadata *ctx);
 void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
-int qcom_scm_pas_mem_setup(u32 peripheral, phys_addr_t addr, phys_addr_t size);
-int qcom_scm_pas_auth_and_reset(u32 peripheral);
-int qcom_scm_pas_shutdown(u32 peripheral);
-bool qcom_scm_pas_supported(u32 peripheral);
+int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
+int qcom_scm_pas_auth_and_reset(u32 pas_id);
+int qcom_scm_pas_shutdown(u32 pas_id);
+bool qcom_scm_pas_supported(u32 pas_id);
 
 int qcom_scm_io_readl(phys_addr_t addr, unsigned int *val);
 int qcom_scm_io_writel(phys_addr_t addr, unsigned int val);

-- 
2.50.1


