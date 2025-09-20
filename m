Return-Path: <devicetree+bounces-219606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC104B8CF73
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 21:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7800B1B20B10
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 19:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FF9B25394A;
	Sat, 20 Sep 2025 19:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HPVJjvPK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467EF254B19
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758397328; cv=none; b=NmrPU9/AJ7U1xfKul/ZOg8H1iP26MMm+ywXaIQSujnnVAJf+uA7psRGWnor4X1oTgFYq4sqrIMAU8A7XBLy/K78LM+cOjYzQu+fWUidwwnIPLXTm727Bl9oXkUD7eBhT0X6DM9mMtbFlFXw9cJWRc2t19xuMgAeMMNUMYOAjYdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758397328; c=relaxed/simple;
	bh=kbDtLqMnZnoh3q6F/QSYtVvQh8xHtK8oMPDFf2TgxYQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UohkB68dqrYbUtfH3WLQIRqkSblUaPaaV6G1nY34esG0LKYlGUsdq4R/O2sF+Qskc1ypNvH9zARsSiU4TEMvABZCrlgqCqxMp54nignZ7DRTtV6wnPCuoBqVtdGzUhpGWZjU0jACqluPcdiIb9SC+MtjnBwb0xzL9pQxKLGGWNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HPVJjvPK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FXDj006144
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ykLocDZYUXZ9VeEX3PNr1SzQQUPNL26vUjQg2ocEoJ4=; b=HPVJjvPK6QrJXHhd
	jKDF3csbOWYfPJgSZ6q0qGOmpLVEp3bpglZ/Bco7IoJKnC6d+Nonxm5QM7B8RZAw
	f5YPlUPHbuzGqK3OSTOvTXvcrJzcludhEKKj565VWsADaioT8CHSTxQXdVPLng/K
	NJbEtfTO5X7O+FHsqpKhNT+zc+N3iKCETHB65r1tLBR0U9v/wkaI9QcVmIVPZGmY
	DN7Vq2epDoiDIQKGpwkRUKhnbR7vi8AyYg2q9/SWq7bdJIRoIfcg1/l0fBSBywfa
	ri69Z6m4rKgqDNHY9S6+yqB+Fwm3NtKWC4n+ufEu0FqN2rVnkOxWRrMBAoX6eTC6
	YJUzZQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhh97f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 19:42:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32ec69d22b2so3011381a91.1
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 12:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758397324; x=1759002124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ykLocDZYUXZ9VeEX3PNr1SzQQUPNL26vUjQg2ocEoJ4=;
        b=RyiFJ9zLAMMBX9LZ5lCl0eu5cqnDihCDTrBXu7ttF7/BpzvkPlCSe0NSRNtJTJ3wh8
         NKzW7flILfp4nP7wzl+2aPGgbiiq8pS9Lnc4uhLUBfDVgX/m6/ZKpwYnpdDSWazAknaj
         D/AK+20r7fbfKuSaqb1NW/TeKCSVpQpPp7CHZZpHfe2GEr1E50K6kKLfayxrEyRhiEt0
         CcDHCKW5kU/bzkp+LKPTFzz9ixGBkfyGnCtJ3f4kbuU/aEBsWUwISSmEDLWSV1FWr1Nr
         5W7I7bU/LIxzgbbi+G78XxuJ0kOUaE15YCsJb4sL3sA9L90JJKogLb0ClUvDOP00chh5
         yjDA==
X-Forwarded-Encrypted: i=1; AJvYcCUR2ONPxW0IP/7gUnjBzMlXH8+bvp/qF1d3ygELB5NWQtAAED8lMvWZhnJErPRh2jrJ0hYX4OMX7HOv@vger.kernel.org
X-Gm-Message-State: AOJu0YyjXxaZguNLtn6s8VDbeZqUWMKff7EBcAP6+MsiwHbqWkRSFND3
	F6cGY6muX80lv80YD/SSKd575Yh32SAeVF6fXc87CAc4oo8jWX5sSon6lzmJWzYPWGsf1G6ZE3e
	ebgogGVDX85mrMGbkE8JqEKcykM10/HjwlE2je/OxIm+VJBZbubyG6K2/sCVfkRH6
X-Gm-Gg: ASbGncv3aGwPQkBXEgFE1DebMpqhhir/8lBa18yHiJmseeIIOxe09e7ZnQni67khm3U
	chnYdWD9GkO517hc+a8K3oDV4CfyQic4bIDhl3fAZgHdg2MTx+w7rJy6edB2DjlL9D67W5C4b3f
	I2oH+tUS3cHcsG10J6tBlxJZp53jh2IcNbc6HhtZJujLNvw3ZZa2Mu498dsunoNKhf/3StSA26H
	9gD9Tzpr6gOzCpgOAtHB72MvoMCUbHRRlNeHGdlBmj8DcecBOktH/oG+HWnuQpkmo3kTzZ7MF8d
	KuKqbcqCpxPti4mzzhVCWpXqjcav4YM2CP4EYq9s29RKDZgJCrQyykYaTp3hNtpq53s=
X-Received: by 2002:a17:90b:3fc4:b0:32e:329d:3064 with SMTP id 98e67ed59e1d1-33097fe4fa2mr8290929a91.9.1758397323618;
        Sat, 20 Sep 2025 12:42:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO5sUPxrAqmm0MYW8RCNNP/9EhdH0gYwCUJ8PmRKUlxYM5vUp1i+jo+v85+POGyCteueKz9Q==
X-Received: by 2002:a17:90b:3fc4:b0:32e:329d:3064 with SMTP id 98e67ed59e1d1-33097fe4fa2mr8290904a91.9.1758397323050;
        Sat, 20 Sep 2025 12:42:03 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77f2c8aa554sm143767b3a.34.2025.09.20.12.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 12:42:02 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 01:11:03 +0530
Subject: [PATCH v3 05/12] remoteproc: pas: Use PAS context awareness in smc
 and mdt functions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-kvm_rproc_pas-v3-5-458f09647920@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758397299; l=11028;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=kbDtLqMnZnoh3q6F/QSYtVvQh8xHtK8oMPDFf2TgxYQ=;
 b=NRWKPYZtVwXXKRIiU86gBny9PcBCNVgcBQdZNf9sjAM+cE5xKQNbV8qu8VL0ZhZrjzeyWWy0p
 IN3fDeM4YeQCI+OTCjoyBydj4/kV/Fqcahmim6whOVEpi9ve/xoygiV
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: vntc3l43UanoS8eka40ltCM1ED4VHEsM
X-Proofpoint-GUID: vntc3l43UanoS8eka40ltCM1ED4VHEsM
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68cf038d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=1JlaEvupAcNU7l7u1ZAA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX5+2PivT3o5DQ
 Q7UV9n+k1Yp9mwcT0GZba/TG3gydKBLmZaa9ai86xpa2ygw+5e+i5m+mbaps630mQTfBS1NjAPE
 RUfs0dGg6AudI6PkBenJ9lXjoCnWgBKpCoCAEgZyV0hF319PnIuL2IDlRQ+HJ6twCxtht63+blN
 W+0AaobBZCtpEIvZNGNFuPEhocDwmhdmtbGLGJ0kon/6PzfLWbU2MY5wj4tb0jpzRle/JbNA/6w
 UEnUawISFTwyxw5vFxtjLniXRAZU78qHogCRiAB9QmY6BU7v7fy6fHb6u59zLardq/qMDGAlxRR
 zGAkyD7wDg6pcMQQa3MUocJwocIBBeZ7c1A513EqTp5nTwSA2v23mSF/GJcYwNohAFghW/p/mol
 nGdQ+DHq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_07,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

Since, we have introduced PAS context data structure to better handle
the code when SoC run with Gunyah or in absence. Let's put these
awareness in some of SMC and meta data functions and replace metadata
context as PAS context structure is superset and will help in unifying
remoteproc and non-remoteproc subsystem uses same set of functions for
Secure PAS method.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 32 +++++++++--------
 drivers/remoteproc/qcom_q6v5_pas.c     | 66 +++++++++++++++++++---------------
 drivers/soc/qcom/mdt_loader.c          |  6 ++--
 include/linux/firmware/qcom/qcom_scm.h |  4 +--
 include/linux/soc/qcom/mdt_loader.h    |  5 ++-
 5 files changed, 62 insertions(+), 51 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1c6b4c6f5513..917341308873 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -620,7 +620,7 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_ctx_destroy);
  *		and optional blob of data used for authenticating the metadata
  *		and the rest of the firmware
  * @size:	size of the metadata
- * @ctx:	optional metadata context
+ * @ctx:	optional pas context
  *
  * Return: 0 on success.
  *
@@ -629,8 +629,9 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_ctx_destroy);
  * qcom_scm_pas_metadata_release() by the caller.
  */
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
-			    struct qcom_scm_pas_metadata *ctx)
+			    struct qcom_scm_pas_ctx *ctx)
 {
+	struct qcom_scm_pas_metadata *mdt_ctx;
 	dma_addr_t mdata_phys;
 	void *mdata_buf;
 	int ret;
@@ -681,10 +682,11 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 out:
 	if (ret < 0 || !ctx) {
 		dma_free_coherent(__scm->dev, size, mdata_buf, mdata_phys);
-	} else if (ctx) {
-		ctx->ptr = mdata_buf;
-		ctx->phys = mdata_phys;
-		ctx->size = size;
+	} else if (ctx && ctx->metadata) {
+		mdt_ctx = ctx->metadata;
+		mdt_ctx->ptr = mdata_buf;
+		mdt_ctx->phys = mdata_phys;
+		mdt_ctx->size = size;
 	}
 
 	return ret ? : res.result[0];
@@ -693,18 +695,20 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
 
 /**
  * qcom_scm_pas_metadata_release() - release metadata context
- * @ctx:	metadata context
+ * @ctx:	pas context
  */
-void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
+void qcom_scm_pas_metadata_release(struct qcom_scm_pas_ctx *ctx)
 {
-	if (!ctx->ptr)
-		return;
+	struct qcom_scm_pas_metadata *mdt_ctx;
 
-	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
+	mdt_ctx = ctx->metadata;
+	if (!mdt_ctx->ptr)
+		return;
 
-	ctx->ptr = NULL;
-	ctx->phys = 0;
-	ctx->size = 0;
+	dma_free_coherent(__scm->dev, mdt_ctx->size, mdt_ctx->ptr, mdt_ctx->phys);
+	mdt_ctx->ptr = NULL;
+	mdt_ctx->phys = 0;
+	mdt_ctx->size = 0;
 }
 EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
 
diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 55a7da801183..ad87e0334a7d 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -115,8 +115,8 @@ struct qcom_pas {
 	struct qcom_rproc_ssr ssr_subdev;
 	struct qcom_sysmon *sysmon;
 
-	struct qcom_scm_pas_metadata pas_metadata;
-	struct qcom_scm_pas_metadata dtb_pas_metadata;
+	struct qcom_scm_pas_ctx *pas_ctx;
+	struct qcom_scm_pas_ctx *dtb_pas_ctx;
 };
 
 static void qcom_pas_segment_dump(struct rproc *rproc,
@@ -209,9 +209,9 @@ static int qcom_pas_unprepare(struct rproc *rproc)
 	 * auth_and_reset() was successful, but in other cases clean it up
 	 * here.
 	 */
-	qcom_scm_pas_metadata_release(&pas->pas_metadata);
+	qcom_scm_pas_metadata_release(pas->pas_ctx);
 	if (pas->dtb_pas_id)
-		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
+		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 
 	return 0;
 }
@@ -235,15 +235,8 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 			return ret;
 		}
 
-		ret = qcom_mdt_pas_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
-					pas->dtb_pas_id, pas->dtb_mem_phys,
-					&pas->dtb_pas_metadata);
-		if (ret)
-			goto release_dtb_firmware;
-
-		ret = qcom_mdt_load_no_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
-					    pas->dtb_mem_region, pas->dtb_mem_phys,
-					    pas->dtb_mem_size, &pas->dtb_mem_reloc);
+		ret = qcom_mdt_pas_load(pas->dtb_pas_ctx, pas->dtb_firmware, pas->dtb_firmware_name,
+					pas->dtb_mem_region, &pas->dtb_mem_reloc);
 		if (ret)
 			goto release_dtb_metadata;
 	}
@@ -251,9 +244,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 	return 0;
 
 release_dtb_metadata:
-	qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
-
-release_dtb_firmware:
+	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 	release_firmware(pas->dtb_firmware);
 
 	return ret;
@@ -301,14 +292,8 @@ static int qcom_pas_start(struct rproc *rproc)
 		}
 	}
 
-	ret = qcom_mdt_pas_init(pas->dev, pas->firmware, rproc->firmware, pas->pas_id,
-				pas->mem_phys, &pas->pas_metadata);
-	if (ret)
-		goto disable_px_supply;
-
-	ret = qcom_mdt_load_no_init(pas->dev, pas->firmware, rproc->firmware,
-				    pas->mem_region, pas->mem_phys, pas->mem_size,
-				    &pas->mem_reloc);
+	ret = qcom_mdt_pas_load(pas->pas_ctx, pas->firmware, rproc->firmware,
+				pas->mem_region, &pas->dtb_mem_reloc);
 	if (ret)
 		goto release_pas_metadata;
 
@@ -328,9 +313,9 @@ static int qcom_pas_start(struct rproc *rproc)
 		goto release_pas_metadata;
 	}
 
-	qcom_scm_pas_metadata_release(&pas->pas_metadata);
+	qcom_scm_pas_metadata_release(pas->pas_ctx);
 	if (pas->dtb_pas_id)
-		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
+		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 
 	/* firmware is used to pass reference from qcom_pas_start(), drop it now */
 	pas->firmware = NULL;
@@ -338,9 +323,9 @@ static int qcom_pas_start(struct rproc *rproc)
 	return 0;
 
 release_pas_metadata:
-	qcom_scm_pas_metadata_release(&pas->pas_metadata);
+	qcom_scm_pas_metadata_release(pas->pas_ctx);
 	if (pas->dtb_pas_id)
-		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
+		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 disable_px_supply:
 	if (pas->px_supply)
 		regulator_disable(pas->px_supply);
@@ -774,12 +759,33 @@ static int qcom_pas_probe(struct platform_device *pdev)
 	}
 
 	qcom_add_ssr_subdev(rproc, &pas->ssr_subdev, desc->ssr_name);
+
+	pas->pas_ctx = qcom_scm_pas_ctx_init(pas->dev, pas->pas_id, pas->mem_phys,
+					     pas->mem_size);
+	if (IS_ERR(pas->pas_ctx)) {
+		ret = PTR_ERR(pas->pas_ctx);
+		goto remove_ssr_sysmon;
+	}
+
+	pas->dtb_pas_ctx = qcom_scm_pas_ctx_init(pas->dev, pas->dtb_pas_id,
+						 pas->dtb_mem_phys, pas->dtb_mem_size);
+	if (IS_ERR(pas->dtb_pas_ctx)) {
+		ret = PTR_ERR(pas->dtb_pas_ctx);
+		goto destroy_pas_ctx;
+	}
+
 	ret = rproc_add(rproc);
 	if (ret)
-		goto remove_ssr_sysmon;
+		goto destroy_dtb_pas_ctx;
 
 	return 0;
 
+destroy_dtb_pas_ctx:
+	qcom_scm_pas_ctx_destroy(pas->dtb_pas_ctx);
+
+destroy_pas_ctx:
+	qcom_scm_pas_ctx_destroy(pas->pas_ctx);
+
 remove_ssr_sysmon:
 	qcom_remove_ssr_subdev(rproc, &pas->ssr_subdev);
 	qcom_remove_sysmon_subdev(pas->sysmon);
@@ -802,6 +808,8 @@ static void qcom_pas_remove(struct platform_device *pdev)
 {
 	struct qcom_pas *pas = platform_get_drvdata(pdev);
 
+	qcom_scm_pas_ctx_destroy(pas->dtb_pas_ctx);
+	qcom_scm_pas_ctx_destroy(pas->pas_ctx);
 	rproc_del(pas->rproc);
 
 	qcom_q6v5_deinit(&pas->q6v5);
diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index 2ef079797f05..24da6e49b2ad 100644
--- a/drivers/soc/qcom/mdt_loader.c
+++ b/drivers/soc/qcom/mdt_loader.c
@@ -234,13 +234,13 @@ EXPORT_SYMBOL_GPL(qcom_mdt_read_metadata);
  * @fw_name:	name of the firmware, for construction of segment file names
  * @pas_id:	PAS identifier
  * @mem_phys:	physical address of allocated memory region
- * @ctx:	PAS metadata context, to be released by caller
+ * @ctx:	PAS context, ctx->metadata to be released by caller
  *
  * Returns 0 on success, negative errno otherwise.
  */
 int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_metadata *ctx)
+		      struct qcom_scm_pas_ctx *ctx)
 {
 	const struct elf32_phdr *phdrs;
 	const struct elf32_phdr *phdr;
@@ -492,7 +492,7 @@ int qcom_mdt_pas_load(struct qcom_scm_pas_ctx *ctx, const struct firmware *fw,
 	int ret;
 
 	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id,
-				  ctx->mem_phys, ctx->metadata);
+				  ctx->mem_phys, ctx);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index e3e9e9e9077f..9ca3218f0948 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -84,8 +84,8 @@ void *qcom_scm_pas_ctx_init(struct device *dev, u32 pas_id, phys_addr_t mem_phys
 			    size_t mem_size);
 void qcom_scm_pas_ctx_destroy(struct qcom_scm_pas_ctx *ctx);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
-			    struct qcom_scm_pas_metadata *ctx);
-void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
+			    struct qcom_scm_pas_ctx *ctx);
+void qcom_scm_pas_metadata_release(struct qcom_scm_pas_ctx *ctx);
 int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
 int qcom_scm_pas_auth_and_reset(u32 pas_id);
 int qcom_scm_pas_shutdown(u32 pas_id);
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 36b8b331ce5f..ce2346b66af6 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -10,7 +10,6 @@
 
 struct device;
 struct firmware;
-struct qcom_scm_pas_metadata;
 struct qcom_scm_pas_ctx;
 
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
@@ -18,7 +17,7 @@ struct qcom_scm_pas_ctx;
 ssize_t qcom_mdt_get_size(const struct firmware *fw);
 int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_metadata *pas_metadata_ctx);
+		      struct qcom_scm_pas_ctx *pas_ctx);
 int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  const char *fw_name, int pas_id, void *mem_region,
 		  phys_addr_t mem_phys, size_t mem_size,
@@ -43,7 +42,7 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
 
 static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
-				    struct qcom_scm_pas_metadata *pas_metadata_ctx)
+				    struct qcom_scm_pas_ctx *pas_ctx)
 {
 	return -ENODEV;
 }

-- 
2.50.1


