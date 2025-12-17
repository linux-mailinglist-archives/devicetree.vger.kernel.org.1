Return-Path: <devicetree+bounces-247597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF877CC8E79
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A0393137BB3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A542934EEF9;
	Wed, 17 Dec 2025 16:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ISCpe+le";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HytMWneV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A73534DCD6
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989328; cv=none; b=sj2K/OaLMdiVDz0Y+sXgtR/PyuXQdf99MM6tGlYFuIAi1ouylFK+M6R4TolMPYs7trz1sEghAXvReCM9cCy7smzW0XzZwGAVTOk2GeTaaS8cTDFw3qjCmwuEmi0UJzAAlUKCEKz1RTUuSiSIeDdIg1HihGbTg4TXjWeJDQH8AhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989328; c=relaxed/simple;
	bh=pJUGPpu5glL2PXZtxuhzRlV7CJHJhDbKuBaPBx2/JMo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jshsL1EXgRCeao4qsTlY+nDHn/j0bsKU6FFREkcNsveGP6bk7DijK9uugqm0+6Fls4HhQHg8QnWesLP0Yqde2fTD52eqgdcL+18v2scfh1Povc0GO3VGXnWZsYc3uia+/VUyI64FnZnx1g68irnsMKTggOef3z1koezT9MOX1Gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ISCpe+le; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HytMWneV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKrjk2764423
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3nFyfw1ZJGyPAD1wbud4RUYkiACfuPdWcD8wAsIs/YQ=; b=ISCpe+leJk86XvtQ
	dbUII2CGUzDrR3yFWGwNj3oWfB8tke6ayy7IkNlfaAiSSoQoAVOuiz1+dreClRsK
	dNNDv8JbedAhzJF8VIao9K2RmpZWe9afMdgItpIaD2/4+IfxpaZT1/0LwhTrAOtK
	EuPT00nVnWBppOpfEPcziHISE197eA61zFCmdgcwtVo6/Zagrx/kG5N/DaCJ+XYR
	cJrt33UGIlZvwtaiCoHe7Xkv7eJ+vfV8n6CFOl+aUDR12MJEn4AOVwK/Lt3S81tE
	fuS5UbntJhdi5ryXvg+xIq2Fu55KWBv6HPOLA1aHl9ZJgmyjTJf9FL5D2CX8QEJj
	85Frsw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3fefk704-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:25 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0e952f153so107023985ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989324; x=1766594124; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3nFyfw1ZJGyPAD1wbud4RUYkiACfuPdWcD8wAsIs/YQ=;
        b=HytMWneVvmEvyeOmZwAbcYlqyrbzJuSVMWSf+7RIb58ACJzUwxDJq1066mwFAF1uBT
         P30RRZEoSXXazrOEgrtpqNcr7ELATJO1zqWVYckZaVKnKtOE/m+OOrySm40xsHUzTCkT
         Vj7xpNEt/DoURROMcSwxiKKywvIL7XKKzZ1QOyDXvin53KKuVeAqRgtaBeywzuArZuVR
         qf3txX7SNcoYCD2oWi4m1H9pKxnsNHDYGnhDhUSuJs4sFGg1ov+YhdR/PlAlzTs8MPgZ
         OUVZ0mjtkPxOhvjUiIJXTjS26k2MNLj8cJhJHjhEohYAtxSOyJhn7DU1e9hPgkCXJMoe
         UMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989324; x=1766594124;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3nFyfw1ZJGyPAD1wbud4RUYkiACfuPdWcD8wAsIs/YQ=;
        b=T9M4w+lWCqjYatk6ur0+1ZVWfQ/l1ndOfjtgkDLibcGKKvyhrj8QLD3RCmib6Rqymo
         U47bUkDItGityekb3SoyUtTyiIusw86GOM3KvhFpn+NEgJHpnlsoo7mtWfRD2IQFv2Jc
         vgHBfgSbCN9MttUepoqrU8GbO3gsWXsj0xBBB4RGtb78hMY10EgQprOdheZ9rlL1Ye8K
         m8E5vBpEITG2qiJDnt5YPsz47sKcBG1jCK/LJ+zmbfLnVeIhpvfV2lbz/DSzaVruPexg
         IKxZ6gQDH+ZxqBXj3NkVL0kxiS+93iXqR8LRTKLxDfg09AiUXlvuz3Ee5BWe8WkdNGBG
         Gelw==
X-Forwarded-Encrypted: i=1; AJvYcCV+Rw4GNMj04+za4V2p98NstXOvq+UVlPJz/cxzkxLeSBzvO/S3rT5p4VuvV9nYeEhtpHSGj9zzfWKK@vger.kernel.org
X-Gm-Message-State: AOJu0YzcChX+N1L1EXor78LX1ort4w8445tfptkwUGTw+jIGg+aOOr52
	+qAmd8PeA0A0JtDyhhxvq1eeb4osOF/TCrA9L+UlmjcJscM4ya2fUP6DtpUzVSeLcQ3Z4vUeQ2b
	a7PbxpyJpj18X4hBkpEbiU5rvgpNUYCb9ygagPZenqwvjODmljRA38rLwBYlzL+Tq
X-Gm-Gg: AY/fxX4nK2iCc8gtmB8jvhiGUg66DQaQaoCMHFjnWoY1D4AiBhionpgpfJdWjLSBdZL
	DtkYaz6zPTnDaYIuywGMbbl9f1eGRQQQw7FWZWf/eVQ7kbsp51tljDoMijvxYOrB2vIj58O3fot
	dNfcPZN3/++JiNKjyRuGoPTvkHefcRWNhWJ1ea2TcMgLPkRlFgUV3dX1Qr5Fb7ny2F/aE4SLH+M
	NtOcFv65uy1OfyqDOkScwOnRT28kmi1s5zom9rcn5eDpm43HpuvKH4YhQvQqcSUGL7JP7cAFv0K
	pGkjeP1JVfaqWz8aO6/ubVXJ0KKx+f7WJQONH5imTGInw3oNmjmBZ+sjM2Xx+gpHpzENqO5whnM
	Ne7X3IabFDyO5nsxShN6O+/jCGlA2LJgBA39D
X-Received: by 2002:a17:903:38cc:b0:2a0:d43f:c934 with SMTP id d9443c01a7336-2a0d43fcb3cmr113433665ad.8.1765989324270;
        Wed, 17 Dec 2025 08:35:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFFqUhi856/bUEz/n5MhCMDYlrXvI/HDnq0Dt7qEie5rTmdw44V+dM0ehL0f/6ZzPKxZ1RvAw==
X-Received: by 2002:a17:903:38cc:b0:2a0:d43f:c934 with SMTP id d9443c01a7336-2a0d43fcb3cmr113433135ad.8.1765989323290;
        Wed, 17 Dec 2025 08:35:23 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:22 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:41 +0530
Subject: [PATCH v9 05/14] remoteproc: pas: Replace metadata context with
 PAS context structure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-5-ab7ac03e0ff1@oss.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=8850;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=pJUGPpu5glL2PXZtxuhzRlV7CJHJhDbKuBaPBx2/JMo=;
 b=CybVlcZVMw6wUGv8feTNzBJqgHWyEEzrhyRsh22uOtb58u8xAz7B4GZxqO+wHeXp8DlHyBUnv
 eoHqS96RCOsAfS4Pxfd6+N7FDqr+MsZHii7ikCn1o6BP9uSZHUgw98x
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX2Gosoez8UQE+
 3W6ch04ATJrKXDcrzxvdAmKsSllO41bfYLasaehUrumRVLNzNJNJyynksYZIi/q/bi0cqNYKXo9
 dlRobOM2mv+o8/cChTR+De0kGkyF+wTdnKPwSyFyRrucffs0kdA9k2gldOCXSp2PnGhEKA125h1
 G3164ZeOzPvlmeWU5JsmEwMY9UCQtgKPtQYXbeQjqW9u0rvegTzBV6sKXZ9fy5KcRuFqpfrzH4k
 ph2P0kgMbbcn+hsy6IihG6MwjtAaVGoQZVOIG8UpnvsIXc1QJ6qouK1StaEpdMJvZzcw5/rr75/
 kboN3MaEAn7eX/bmw2bB/sxwWewEFYLnTze9udV+XxPrCidfKV+hAdAvzFFksFKL14cIcMtFO1W
 KGg98eR/yovsWPbTeirAu/uOKihP2Q==
X-Proofpoint-ORIG-GUID: FgjdmsyQN5Ydpj2iwk3IVjQ0DkGSI-NL
X-Proofpoint-GUID: FgjdmsyQN5Ydpj2iwk3IVjQ0DkGSI-NL
X-Authority-Analysis: v=2.4 cv=R48O2NRX c=1 sm=1 tr=0 ts=6942dbcd cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=FPhKjH8jRcijH9SIsZwA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170131

As a superset of the existing metadata context, the PAS context
structure enables both remoteproc and non-remoteproc subsystems to
better support scenarios where the SoC runs with or without the Gunyah
hypervisor. To reflect this, relevant SCM and metadata functions are
updated to incorporate PAS context awareness and remove metadata context
data structure completely.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       |  8 +++----
 drivers/remoteproc/qcom_q6v5_pas.c     | 38 ++++++++++++++++++++++++----------
 drivers/soc/qcom/mdt_loader.c          |  4 ++--
 include/linux/firmware/qcom/qcom_scm.h | 10 ++-------
 include/linux/soc/qcom/mdt_loader.h    |  6 +++---
 5 files changed, 38 insertions(+), 28 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 5162c02f5f88..4edd475ef848 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -601,7 +601,7 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
  *		and optional blob of data used for authenticating the metadata
  *		and the rest of the firmware
  * @size:	size of the metadata
- * @ctx:	optional metadata context
+ * @ctx:	optional pas context
  *
  * Return: 0 on success.
  *
@@ -610,7 +610,7 @@ EXPORT_SYMBOL_GPL(devm_qcom_scm_pas_context_alloc);
  * qcom_scm_pas_metadata_release() by the caller.
  */
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
-			    struct qcom_scm_pas_metadata *ctx)
+			    struct qcom_scm_pas_context *ctx)
 {
 	dma_addr_t mdata_phys;
 	void *mdata_buf;
@@ -674,9 +674,9 @@ EXPORT_SYMBOL_GPL(qcom_scm_pas_init_image);
 
 /**
  * qcom_scm_pas_metadata_release() - release metadata context
- * @ctx:	metadata context
+ * @ctx:	pas context
  */
-void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
+void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
 {
 	if (!ctx->ptr)
 		return;
diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index 52680ac99589..bfcb65aed008 100644
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
@@ -241,7 +241,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 
 		ret = qcom_mdt_pas_init(pas->dev, pas->dtb_firmware, pas->dtb_firmware_name,
 					pas->dtb_pas_id, pas->dtb_mem_phys,
-					&pas->dtb_pas_metadata);
+					pas->dtb_pas_ctx);
 		if (ret)
 			goto release_dtb_firmware;
 
@@ -255,7 +255,7 @@ static int qcom_pas_load(struct rproc *rproc, const struct firmware *fw)
 	return 0;
 
 release_dtb_metadata:
-	qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
+	qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 
 release_dtb_firmware:
 	release_firmware(pas->dtb_firmware);
@@ -306,7 +306,7 @@ static int qcom_pas_start(struct rproc *rproc)
 	}
 
 	ret = qcom_mdt_pas_init(pas->dev, pas->firmware, rproc->firmware, pas->pas_id,
-				pas->mem_phys, &pas->pas_metadata);
+				pas->mem_phys, pas->pas_ctx);
 	if (ret)
 		goto disable_px_supply;
 
@@ -332,9 +332,9 @@ static int qcom_pas_start(struct rproc *rproc)
 		goto release_pas_metadata;
 	}
 
-	qcom_scm_pas_metadata_release(&pas->pas_metadata);
+	qcom_scm_pas_metadata_release(pas->pas_ctx);
 	if (pas->dtb_pas_id)
-		qcom_scm_pas_metadata_release(&pas->dtb_pas_metadata);
+		qcom_scm_pas_metadata_release(pas->dtb_pas_ctx);
 
 	/* firmware is used to pass reference from qcom_pas_start(), drop it now */
 	pas->firmware = NULL;
@@ -342,9 +342,9 @@ static int qcom_pas_start(struct rproc *rproc)
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
@@ -760,6 +760,22 @@ static int qcom_pas_probe(struct platform_device *pdev)
 	}
 
 	qcom_add_ssr_subdev(rproc, &pas->ssr_subdev, desc->ssr_name);
+
+	pas->pas_ctx = devm_qcom_scm_pas_context_alloc(pas->dev, pas->pas_id,
+						       pas->mem_phys, pas->mem_size);
+	if (IS_ERR(pas->pas_ctx)) {
+		ret = PTR_ERR(pas->pas_ctx);
+		goto remove_ssr_sysmon;
+	}
+
+	pas->dtb_pas_ctx = devm_qcom_scm_pas_context_alloc(pas->dev, pas->dtb_pas_id,
+							   pas->dtb_mem_phys,
+							   pas->dtb_mem_size);
+	if (IS_ERR(pas->dtb_pas_ctx)) {
+		ret = PTR_ERR(pas->dtb_pas_ctx);
+		goto remove_ssr_sysmon;
+	}
+
 	ret = rproc_add(rproc);
 	if (ret)
 		goto remove_ssr_sysmon;
diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index c239107cb930..b125140100db 100644
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
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index 5045f8fe876d..ad69b51fe6fc 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -66,12 +66,6 @@ int qcom_scm_set_warm_boot_addr(void *entry);
 void qcom_scm_cpu_power_down(u32 flags);
 int qcom_scm_set_remote_state(u32 state, u32 id);
 
-struct qcom_scm_pas_metadata {
-	void *ptr;
-	dma_addr_t phys;
-	ssize_t size;
-};
-
 struct qcom_scm_pas_context {
 	struct device *dev;
 	u32 pas_id;
@@ -87,8 +81,8 @@ struct qcom_scm_pas_context *devm_qcom_scm_pas_context_alloc(struct device *dev,
 							     phys_addr_t mem_phys,
 							     size_t mem_size);
 int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
-			    struct qcom_scm_pas_metadata *ctx);
-void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx);
+			    struct qcom_scm_pas_context *ctx);
+void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx);
 int qcom_scm_pas_mem_setup(u32 pas_id, phys_addr_t addr, phys_addr_t size);
 int qcom_scm_pas_auth_and_reset(u32 pas_id);
 int qcom_scm_pas_shutdown(u32 pas_id);
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 8ea8230579a2..07c278841816 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -10,14 +10,14 @@
 
 struct device;
 struct firmware;
-struct qcom_scm_pas_metadata;
+struct qcom_scm_pas_context;
 
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
 
 ssize_t qcom_mdt_get_size(const struct firmware *fw);
 int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_metadata *pas_metadata_ctx);
+		      struct qcom_scm_pas_context *pas_ctx);
 int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  const char *fw_name, int pas_id, void *mem_region,
 		  phys_addr_t mem_phys, size_t mem_size,
@@ -39,7 +39,7 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
 
 static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
-				    struct qcom_scm_pas_metadata *pas_metadata_ctx)
+				    struct qcom_scm_pas_context *pas_ctx)
 {
 	return -ENODEV;
 }

-- 
2.50.1


