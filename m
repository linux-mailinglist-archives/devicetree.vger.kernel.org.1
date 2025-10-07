Return-Path: <devicetree+bounces-224257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DE8BC22AC
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A82D94F7C59
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F2192E9EBA;
	Tue,  7 Oct 2025 16:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lp9E4NGV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E96D2E9755
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759855779; cv=none; b=HYArYH9oDjKzpArBMitjkKab4HvllUyZPUdBlRnFbmJJ1M9/ixzYpXRaKaFAoyvxFAfxDER6kj57W67ww9hbGlyo4qsrH0xmo6y09UoGWaf7DErjozVsOlHMl2qOf64eTo4yXfon1cwn7yAls1Ds3LJg6OpIglK8TfP/Iq4wGs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759855779; c=relaxed/simple;
	bh=fhlgXSslWG8im7Sh35q3DRG/YwXlsfWraHg974Frnlw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jMgg4leckLQ2kysPmS4nL5WOh+/yArRiJFFrJ1ZL4jhDj4lGTjFklCzamEz5deJ7U9TBHKXC/yE/Qp4I9gat6DlYBZyfH4A6Eqc1SXIGX4gc2orJViu38nQb98dqrv9CvdpN1hnXz6Qb0Hb37ws0oHwjyX8MoDG+HdeGj+0c6vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lp9E4NGV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597ET4FB000416
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 16:49:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	T8Aac58ZOwp4ZfB717YuHCRoJXQdTpPA0OyU2dAGpeI=; b=Lp9E4NGVdxoQ+58M
	3lC4A+2s/CipB12Ao6thWg+qz5V5GbD2Uq9ZLkyFqtUXR04cUKcSTH0ZNUv8yCnl
	DvyO6z+E3rnjuT5MxHEXsTZhPpTP19yhMNSO7D4YYJECxL+W5y9GWu6oSf5c5vWc
	0cUWoGmyl7WsvRvf81kZqLXYdmlObRj06bnbpbiRIZUlPR/h6i6aAJuk8E3ZMAnq
	UEYdbksoLyywToTW4bO0Lhk8B8MViO8chgvU+2F5z3Wjjaa42G5XPeNkx7dE4DUY
	6M08xAQV2CmuzsbpOfZ6ajQvBTcqAhdlgNcqpIXR3OXhsFPRg3Kvg1on9UxjUIIN
	w8B7Dw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgr0km-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 16:49:35 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2699ed6d43dso64225185ad.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:49:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759855775; x=1760460575;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T8Aac58ZOwp4ZfB717YuHCRoJXQdTpPA0OyU2dAGpeI=;
        b=hd6uMtlKNJl7C5loI1dIxDX2sPBna2Tqim0kVf4muIJ/+9ZeoR8fZzEnih9zgVPrXU
         yVaMujrY2hdylWyqUk9dIZVAI+HEqNDphEWtik81k2SncFn3oY7gGpID+hkouMdLehph
         FB/HuLqw5mYPqSPEtE8F+mNTyNoHsZtpV6y4zbPYcuKXsU1gWAXWO2hMwcJMDuoXUN3L
         yqns60iCkUWmDIdQS1EJQYTsj9p2lS4AQzKzY7n5/7glXGi+yYplyalCXy0CLBYXxwcZ
         93sx74tPnPm6DcuroQQSsMIrnnxMsRqOabXL5kh/Mq1rIZ//EeCl8R5yS0jkEPWFTOsz
         XwDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgoindg6NKstuzVLMv1LLApSAI6E37VAALCypIaYcnyBX29fcHHzrNeBpEtOTRSJOpHamWZyg6c9aH@vger.kernel.org
X-Gm-Message-State: AOJu0YwctR/0oXJvfYsR8jdujw3FDk9AUUlI7rQY2Zdq5b7dYmXfIKBf
	nhAei6iCmNBKlexEUq9GQVBDUfwFcG3O+H7Xbk8+jl/R8MEeEzDNeMqnBMnfDFFABlvOERS1WpS
	S0kNFJBuquyph4kX3hGgeyl8X2ZFiRyG6jpbA7NAwKuovIwjpDAfxH1Zmddt+9JdE
X-Gm-Gg: ASbGnctA6X4Ofm36aYLQcMiEJ05gES3H/r0+Rk63QjJNdxCaRYWn0E/V9IF2jh0I/Dy
	JRzAqAyGNxwMzgAIaaOPTJ5elDa2VGxScljEt0ZJE1gp4t3dqzW7Iz/C8aJZljaBNSfgPb5TMRj
	U0pdmi+f1c4dVBp42oOVE3byaJO3VnjeFbviAM2JjHOmAuT4KI8fpro/kOLA20edYPgvx4hq/4U
	RBFhYhQmK/uj662d8loZ8OsL4QlnM9m/D74QlfD9oURpLhdwAv5qmv0qtINYnL/84ZMS0Xye4f5
	QXV3r6/oKFF9NFp+2ADfm7tnKiesOkWi4/zWIsrX8Bq4q4mRTP4aePi2xMMlyf6T+HxGS9RI
X-Received: by 2002:a17:903:2f10:b0:275:27ab:f6c8 with SMTP id d9443c01a7336-29027379486mr4962905ad.20.1759855774296;
        Tue, 07 Oct 2025 09:49:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiRTBSPbJ4vEU7hc6nGyyL7kuLscazo3Bj1F7v2ZWOr9ts/F8H2QUFqWkxFCANi0R8GCIVJA==
X-Received: by 2002:a17:903:2f10:b0:275:27ab:f6c8 with SMTP id d9443c01a7336-29027379486mr4962405ad.20.1759855773452;
        Tue, 07 Oct 2025 09:49:33 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1261e2sm171990825ad.38.2025.10.07.09.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:49:33 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 07 Oct 2025 22:18:50 +0530
Subject: [PATCH v4 05/12] remoteproc: pas: Replace metadata context with
 PAS context structure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-kvm_rprocv4_next-20251007-v4-5-de841623af3c@oss.qualcomm.com>
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
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759855751; l=11120;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=fhlgXSslWG8im7Sh35q3DRG/YwXlsfWraHg974Frnlw=;
 b=NEedAU6N9z/52J8QXHKQpl7a3TEx1eYQ8ehIw6zKvZ0/Bi38QjCkztSTsJCIoBW+xg8C+mrdK
 8Pp12NY/P7HAnXdHqTg88TpF3ckPLz1ae21V3+qTLU5aYFvjp4nFNys
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfX0agNsS7/pHuz
 MMlDbtjTwrqyKWF6iKJJGr7XPFl3tSo5efqbUBx66Difb9bkXgasfuFVbeOqEnaTWVNjyILDUF2
 17TYAEQMx2CWcZGOyKE5cKk4B/ijyv35T0Lbbrkc7hhI1u+zP08SFQC81R5BSioRR+DhrBEqH3V
 CUMlKRTBSQ6FskxnKbQbLJCzCII1ZcoWiIhQadNCF1coegqyp06KR0OZtBF4QVfTE/kmVW2woXV
 5IQASoPf41R/vLWgSvxYBCJ3j+0sWy4YFR2MuSyYdV9glM++HT1E002DjG2dmxYvtDrUu5fPGff
 iMdj/V4O1pIbY/IOrf79ChKNTRfmoV/MEnxLYdyR4Ggv9rMi6pyZykbEadXoTC6U4xYeBNB5jqL
 n6oCUw7NOdYSMSboIVMK1mFmNymaZw==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e5449f cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VY3JnA7QM_wrRPQd7p8A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: eaYNJ22U-7B1nodcu7PCyFUPrYuus0Gw
X-Proofpoint-ORIG-GUID: eaYNJ22U-7B1nodcu7PCyFUPrYuus0Gw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

As a superset of the existing metadata context, the PAS context
structure enables both remoteproc and non-remoteproc subsystems to
better support scenarios where the SoC runs with or without the Gunyah
hypervisor. To reflect this, relevant SMC and metadata functions are
updated to incorporate PAS context awareness.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 32 +++++++++--------
 drivers/remoteproc/qcom_q6v5_pas.c     | 66 +++++++++++++++++++---------------
 drivers/soc/qcom/mdt_loader.c          |  7 ++--
 include/linux/firmware/qcom/qcom_scm.h |  4 +--
 include/linux/soc/qcom/mdt_loader.h    |  5 ++-
 5 files changed, 62 insertions(+), 52 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index b8ce4fc34dbe..7b4ff3cb26ed 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -621,7 +621,7 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_context_destroy);
  *		and optional blob of data used for authenticating the metadata
  *		and the rest of the firmware
  * @size:	size of the metadata
- * @ctx:	optional metadata context
+ * @ctx:	optional pas context
  *
  * Return: 0 on success.
  *
@@ -630,8 +630,9 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_context_destroy);
  * qcom_scm_pas_metadata_release() by the caller.
  */
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
-			    struct qcom_scm_pas_metadata *ctx)
+			    struct qcom_scm_pas_context *ctx)
 {
+	struct qcom_scm_pas_metadata *mdt_ctx;
 	dma_addr_t mdata_phys;
 	void *mdata_buf;
 	int ret;
@@ -682,10 +683,11 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
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
@@ -694,18 +696,20 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
 
 /**
  * qcom_scm_pas_metadata_release() - release metadata context
- * @ctx:	metadata context
+ * @ctx:	pas context
  */
-void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
+void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
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
index 158bcd6cc85c..46a23fdefd48 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -117,8 +117,8 @@ struct qcom_pas {
 	struct qcom_rproc_ssr ssr_subdev;
 	struct qcom_sysmon *sysmon;
 
-	struct qcom_scm_pas_metadata pas_metadata;
-	struct qcom_scm_pas_metadata dtb_pas_metadata;
+	struct qcom_scm_pas_context *pas_ctx;
+	struct qcom_scm_pas_context *dtb_pas_ctx;
 };
 
 static void qcom_pas_segment_dump(struct rproc *rproc,
@@ -211,9 +211,9 @@ static int qcom_pas_unprepare(struct rproc *rproc)
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
@@ -239,15 +239,8 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
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
@@ -255,9 +248,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 	return 0;
 
 release_dtb_metadata:
-	qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
-
-release_dtb_firmware:
+	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 	release_firmware(pas->dtb_firmware);
 
 	return ret;
@@ -305,14 +296,8 @@ static int qcom_pas_start(struct rproc *rproc)
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
 
@@ -332,9 +317,9 @@ static int qcom_pas_start(struct rproc *rproc)
 		goto release_pas_metadata;
 	}
 
-	qcom_scm_pas_metadata_release(&pas->pas_metadata);
+	qcom_scm_pas_metadata_release(pas->pas_ctx);
 	if (pas->dtb_pas_id)
-		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
+		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 
 	/* firmware is used to pass reference from qcom_pas_start(), drop it now */
 	pas->firmware = NULL;
@@ -342,9 +327,9 @@ static int qcom_pas_start(struct rproc *rproc)
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
@@ -779,12 +764,33 @@ static int qcom_pas_probe(struct platform_device *pdev)
 	}
 
 	qcom_add_ssr_subdev(rproc, &pas->ssr_subdev, desc->ssr_name);
+
+	pas->pas_ctx = qcom_scm_pas_context_init(pas->dev, pas->pas_id, pas->mem_phys,
+						 pas->mem_size);
+	if (IS_ERR(pas->pas_ctx)) {
+		ret = PTR_ERR(pas->pas_ctx);
+		goto remove_ssr_sysmon;
+	}
+
+	pas->dtb_pas_ctx = qcom_scm_pas_context_init(pas->dev, pas->dtb_pas_id,
+						     pas->dtb_mem_phys, pas->dtb_mem_size);
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
+	qcom_scm_pas_context_destroy(pas->dtb_pas_ctx);
+
+destroy_pas_ctx:
+	qcom_scm_pas_context_destroy(pas->pas_ctx);
+
 remove_ssr_sysmon:
 	qcom_remove_ssr_subdev(rproc, &pas->ssr_subdev);
 	qcom_remove_sysmon_subdev(pas->sysmon);
@@ -807,6 +813,8 @@ static void qcom_pas_remove(struct platform_device *pdev)
 {
 	struct qcom_pas *pas = platform_get_drvdata(pdev);
 
+	qcom_scm_pas_context_destroy(pas->dtb_pas_ctx);
+	qcom_scm_pas_context_destroy(pas->pas_ctx);
 	rproc_del(pas->rproc);
 
 	qcom_q6v5_deinit(&pas->q6v5);
diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index 31855836b251..105a44f42ba7 100644
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
+		      struct qcom_scm_pas_context *ctx)
 {
 	const struct elf32_phdr *phdrs;
 	const struct elf32_phdr *phdr;
@@ -505,8 +505,7 @@ int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *f
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys,
-				ctx->metadata);
+	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys, ctx);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index e82fdc200df7..af6ab837ad5a 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -84,8 +84,8 @@ void *qcom_scm_pas_context_init(struct device *dev, u32 pas_id, phys_addr_t mem_
 				size_t mem_size);
 void qcom_scm_pas_context_destroy(struct qcom_scm_pas_context *ctx);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
-			    struct qcom_scm_pas_metadata *ctx);
-void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
+			    struct qcom_scm_pas_context *ctx);
+void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx);
 int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
 int qcom_scm_pas_auth_and_reset(u32 pas_id);
 int qcom_scm_pas_shutdown(u32 pas_id);
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 2832e0717729..7d57746fbbfa 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -10,7 +10,6 @@
 
 struct device;
 struct firmware;
-struct qcom_scm_pas_metadata;
 struct qcom_scm_pas_context;
 
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
@@ -18,7 +17,7 @@ struct qcom_scm_pas_context;
 ssize_t qcom_mdt_get_size(const struct firmware *fw);
 int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_metadata *pas_metadata_ctx);
+		      struct qcom_scm_pas_context *pas_ctx);
 int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  const char *fw_name, int pas_id, void *mem_region,
 		  phys_addr_t mem_phys, size_t mem_size,
@@ -43,7 +42,7 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
 
 static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
-				    struct qcom_scm_pas_metadata *pas_metadata_ctx)
+				    struct qcom_scm_pas_context *pas_ctx)
 {
 	return -ENODEV;
 }

-- 
2.50.1


