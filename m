Return-Path: <devicetree+bounces-224253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F4050BC2273
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:49:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E51543C6F45
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD5B2E8B97;
	Tue,  7 Oct 2025 16:49:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dtmCsg7f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34592E88AB
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855767; cv=none; b=ImqiHBcXRrkAdvZMsLmX0AzEB1AVhgdzZmpfmMIPx9LzIIW8jy5lUXj621CN2ySOgXt+gqmeXECKLlJDaCDsvhZ9M1hmTr4kyviSne2BZzpJ/RgsSWt+XEH600x+id1y/Bj4pCSxM64wImujeabsWjm2chOjS0Mu3sC1MAPeRWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855767; c=relaxed/simple;
	bh=rtvm3+Ddz+f+13iqQLmokYM0aY2hnbKT1DANmSnuV5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sX3X8GbzBaNV6GbPzDoIxqPA19r6rs0WBNDbsbQljU6b25/74RXwISBp1Td+o8+MWttuRLgeutJu7FTCP8vnIWBPTlE+UDQ9xpkIGkA15/1iT8EeI89dRPwcam9LBrvoehng3iYCi2+dvXAX6F4kAEN0DLwZY2cNYRVYoCXffjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dtmCsg7f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597ET5Ik017427
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 16:49:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8vz/gQycZaJGjMl9k5XINZTrvGlzn+yuEewtwO6TWbs=; b=dtmCsg7fSfjFgkQd
	UXtfi1xrMZ5guMgvCplU3IKnrZArKHUsCheu613rt1qXw0UZD4GhO5LvpNOsMs0w
	R0MRuyxmp5gS2O38CBElaxCnd0rFDLzT6Aa6GRXvldm3e2G8CTPMzzC8m1avh+hR
	n98752jLo8UnmTAuQxdFBQ6FFR13Hg4OpGfoPUE95C0PH0q260CvgvCN5bXP2RIo
	XIunRjdGRCl4WxMkjmJN/+Wx9ZbVLAntN0LXzcZaT3aa4U55+11X7LB06qiY3P/2
	OEnIrxAX02Ejy/oun0qxwJ8yNZkDVjKcijlcgjYG7UWKz2T9BxFid+X+6cM0juXi
	9HSJKw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jrxn89kj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 16:49:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2697410e7f9so132227295ad.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:49:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759855764; x=1760460564;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8vz/gQycZaJGjMl9k5XINZTrvGlzn+yuEewtwO6TWbs=;
        b=orH3S0k+mgdBQXb9IheMhMlnnM0T3UvwBPHvOo2KcdOCgfW3g2Bd+96iRVMGC+4BeB
         1nti2eSM/eNvgjJV53PwarW4AfI0VQ89fkO0aYvUOyYZWhkZMSaP+vb1kDI6irTA+9l2
         l+housuknHTmt7RZ+3VZlw1U6VNsa6tXhzxyQOt34Lu45kxyhgqTvb1MWdrKHUvHnHtn
         pGR0iDn+ju6MGOg+uPA2tCBjBCf8hHa4mFq3qlJgs8kWf+fAbYIvC3mePgV1Xx+38Rib
         TvkUmB+0fYF6IqW99DW33+EoSWzomg4Voym4co5mxlLM03X9vtmRDOQakVCEejHLQDGO
         mjCw==
X-Forwarded-Encrypted: i=1; AJvYcCW/oEcTLeeCqtWiEo1lfuO9CxaPZWAUP8NRnwWffPJG3EYNdE3EcP0emI4XiY58oiMKcc+kwxUVtff5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx70XGUItGNKRskTNhwJyEj+iHAO98tQ1QxmH9k7A3XCTVVfHD7
	VCQpWEEMzmMO1YFdgke7G1JzkC2wOKMfB8rnjdihKc8NpVNFZ2rcFHhKGeYuEzCmtdV7cv997nS
	rgnBTdngX/1pZ4dhdzIug+XDF4PMQiD2j4mbJ2mcs/7aYBxwRNSrFlKA0HFxWL1aH
X-Gm-Gg: ASbGncv3Tn775zM5knMjZxjPyoUfzQnFEwgCsCs+U5HJ1dcaQXvJVNc1bS/WW/LH1nW
	yMjb0YS/laOQjtxLQWXiVJvDmGuIPabwiEfX8d+0jHXPm4IAyq4phmJgCWrM1R90OXTAPW3gaHN
	2tJbq05Yg21Mr+aqKfp84Jp2LGpnq113iQjHBjHtEJh/93gcWwKVkzyuDjdYujrFAPwtx2NYWqY
	GJ0Bwx3x5ayXbBGoLQSBggMcA+nSk7Va8iBHVRzJ9Rx1bTwVVttz+mHKI+C6A4Dl3oi+BUbmyf9
	cVAv1CSBZ0aZweAF4FCwbmgctZrigpVx/AjaIEx/HbAsnQZ9Ft9TTtIxF8S8PzECIg/MCTgy
X-Received: by 2002:a17:902:e80c:b0:278:9051:8e9c with SMTP id d9443c01a7336-290272e3cf0mr6648645ad.42.1759855763360;
        Tue, 07 Oct 2025 09:49:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEe++5qn3pIgVX278WDIBcX0wBGoL4i1UDfu9v6PrUb4F29UsE5m3tnu7RYbxhCHhFZyfDpSg==
X-Received: by 2002:a17:902:e80c:b0:278:9051:8e9c with SMTP id d9443c01a7336-290272e3cf0mr6647835ad.42.1759855762443;
        Tue, 07 Oct 2025 09:49:22 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1261e2sm171990825ad.38.2025.10.07.09.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:49:22 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 07 Oct 2025 22:18:47 +0530
Subject: [PATCH v4 02/12] firmware: qcom_scm: Rename peripheral as pas_id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-kvm_rprocv4_next-20251007-v4-2-de841623af3c@oss.qualcomm.com>
References: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
In-Reply-To: <20251007-kvm_rprocv4_next-20251007-v4-0-de841623af3c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759855751; l=6055;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=rtvm3+Ddz+f+13iqQLmokYM0aY2hnbKT1DANmSnuV5Q=;
 b=9cqur5rxpvIdWpcbqloYpmrcwgRDwCVOS5FxJLvhusp5tTZ2qWovDEgiIL0wXOKuuGfODkCdx
 nq6poSWiT/XAtEGhI0+Ok5MhGUwmNpgALCiPDIp0Ref48ALX3E7pihW
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAwMSBTYWx0ZWRfXzYHzOnVSSNVP
 O2/3C99ivkGVPyIYcK8x01lfbTfkZbAXdKEEG/fpLZ8StE1+bP29N4JyYpx5ITYFbMHE/ex2bIw
 Yw2mGlU5dA0IU53yA6xXpY93Ddt6LFJrvLjZuZLva3J6PVjFfzstP7KnOD/BFnKLwL7R69eWPmb
 GXaW8vLB3vV9XhkLgvLGp+jzCBk5BV3s2MR9MLWJbfCAGKy4Z9WO0SKWkgzAnQ7jNDKmp7S2hHQ
 uSVWErqD+pYsTGTNh2MdQIQdr9/+bb5bXUh3nPywkFqg+ro7KSfDHl/tmSyIvrS5wVwVfhPYJYz
 6zd+j49Z/ERq8TPCIsHL1NOfnyU/GdjEGeR6krod6jxx5HxkH3WlhBxITZhuJtiUDJQNgLZMMyN
 hm8R5xFqcfBw7v11Mw4TOyNDUfcqZQ==
X-Proofpoint-GUID: myN54CUYuuQojk-Aftfbr7x8M46ynZVl
X-Proofpoint-ORIG-GUID: myN54CUYuuQojk-Aftfbr7x8M46ynZVl
X-Authority-Analysis: v=2.4 cv=EqnfbCcA c=1 sm=1 tr=0 ts=68e54494 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=bcWw3dkznkfw-y6_B5AA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040001

Peripheral and pas_id refers to unique id for a subsystem and used only
when peripheral authentication service from secure world is utilized.

Lets rename peripheral to pas_id to reflect closer to its meaning.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
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


