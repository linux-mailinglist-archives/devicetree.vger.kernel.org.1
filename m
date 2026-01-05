Return-Path: <devicetree+bounces-251514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 91081CF3C83
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:26:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6389F3043A52
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0965D33C530;
	Mon,  5 Jan 2026 13:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="caMLtLHO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EIu2Wi/5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79BF33DECD
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619439; cv=none; b=EaSNUIeE20ZFfoh/lRzjVhZ5BPcCIAYsizgL/C+OAnbmHSeGNjkwziwm+XiL/3ihmviiHEv9I+sb9ItDzo/Gv/U3XuhizPlcqWzvAqxziHe5C7oHNpuMX6Kks5njdNrrltYhuLD7cIx6zFIpzEt3aMLbcnCDBpaxfkYqy1yW04s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619439; c=relaxed/simple;
	bh=JHAyLsFhkDEAcfYluzFEJIJb2NWskgIjsHullCrZs8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mzN4okAg46vMitKAqaM9mK28vP14coFtmHcqUV63Y2Q6bPypASlPO01G97lIzNReb9hmyzzcVneWXNW/LSlsTTE9/2lL5coHR8z4vpwZH2DnBMyfP/ELuB0D4F60aJtkRMzVBNFYh1+m5pNzJm695/unu5w83wglsnGp6R/oz6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=caMLtLHO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EIu2Wi/5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058K0gR3895225
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:23:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XRXEzbpmZoLWVEC17zlGvTcHTCfFUbZ+n7JXj3Kr3u8=; b=caMLtLHOTNpKuUfJ
	D9cwyhYWq9VFd3HNwBqVa8jAHof3kTK+/zGYWzvHl63pRqVBTHmAWtjdBV7fsssQ
	slCoUQ1IlKYJaKr7ZFuYlRHiK4Q9yCZ8ivSN9jtSjalc6SkD8e06WRo4FIy+Iw7n
	Vjb5cAmvjikp/Lq7sr1UDSxYXuadcEytuOvlm5dQdQnaV9HHRfCVkKnfIeAZh0zi
	JkeZOEcvkkWWwIKcRTn3og1OCp+KudfF8/Mby/w5HLOJKdI+kZxRXHsGbElyiOQQ
	vnTE5sfTLkkIQhnDL+Xbt0+gib9mtqXvRLCN88nLm56oqBoY9gGmWDckSexXNggZ
	JKgZyw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beuvd4jdu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:23:57 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7d481452732so26438117b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619436; x=1768224236; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XRXEzbpmZoLWVEC17zlGvTcHTCfFUbZ+n7JXj3Kr3u8=;
        b=EIu2Wi/5M/zCKcVkVTXYGtaA2dwBSAmH0KOPqNAY46uKNZLqOq4I6JMQixGbHcrxR1
         QDXT0hQVEmqhSeW7FUeZIF7bluZPCUxrB5XTbA2VdbnE5oQ+68DamvxDxg/glljy4xed
         vD2iYbo1r0hc3mwVZ+JtNLzn2Tf35eO4Nmyl++lYhLK888enwl9orjcAeLOch9kaH1pH
         8nAG5ON9DF22/w8F1qcJnqza1YyuvDrH5QPDrLBM93O3qDkndr8rm7b1dwKeXCDh4v/I
         abJYw0R+3lHTjJmonau67nixnOyOhlacZqeZwCUAPPOZporfItVqt/TOi9p3a+nIw/tj
         B6OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619436; x=1768224236;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=XRXEzbpmZoLWVEC17zlGvTcHTCfFUbZ+n7JXj3Kr3u8=;
        b=Hk9nTGJ6x6jgabnDMND53j6tWPLNofTedJrQiQCZPDBap91HfNPlC6CRxE60CJPkFJ
         /iqZ/boy7OayAQcYMx66R1ujSX1+QoFM9BfHitormh/BNO8s31jfm7N2UZcDs6EzMcHl
         S0K5dVZUi+55jbbkwG0V5FXBZvc+eKnk+zn5nsP15rEmf2yaeh4Dh2FPJWbeh9/+NQ4C
         /OU1AJDu9jLN+UbPh+i4rtrWtVvo/erTGDb2jpmG5lsXLfVR6s8tyPNg1nHTh5Z1fU98
         57nsSPh8i5K/dUfdsd/3zSjq7g3vExxI3LX5xTbp/GGBaDQ0D2TJkwWqbBmMiGtUK8H2
         GCMA==
X-Forwarded-Encrypted: i=1; AJvYcCUQdzgDGtE7CfGwg+cH/3P8TXuImp8yN8iw8gQ88EdeMB9+NW3jv8i/tx7q4rJ9NqmwqdW82+BHf55u@vger.kernel.org
X-Gm-Message-State: AOJu0YxBjY423Qv2QLXl0KDRDGXq6mrI+7IgvyNbRNcSRZTqxdr6nhkR
	2kiSyS1WyHa90nWGsBoONGQk3fdghKQc15+5PZV31218kVabO5WU+IdFNlL87n1GabZlYu8FIyF
	A/ZpmyAve0SynHVrl/a6c2YukavRaHuh72PlIGi00cWrBSE4y+EJOxYicU+IlNIg1
X-Gm-Gg: AY/fxX60/U4BEF1LVXiVNfHYFYHYKg9oU9NkZcUt32J9oJH4VoFybP8BOUaC7pej7l+
	LFvyV6VUNnIbqIKiKrXstlodSCxMSTzphIBdeJwgTpNuI6+B1ltzA8DQPN3JhtEqorsvEow7MJJ
	v+6LYcE6C5k0423rNnFUFl8CTCbB96XlnM6lBjXARQpMYTFpNbo33aosPqlEYr/rRx5Hkre1Rna
	vSxg1/tQ/UqyP6zB89q4CEhOOutT2T2L9YwyZXSYKgrbVVkKFolpSYrXxskWTNt34Fl7R8S3Vco
	TZBFVsXRnMtHObhPtigziQZQVAKf6r0Wuj6ZKwwBKNce8fopdozeaOfeK85HUKFSVzGHGQjfmA8
	Oe5O5Gokmmaon9/AuEb0UiPMWXT5yWEV1ft2d
X-Received: by 2002:a05:6a00:2a0c:b0:7e8:450c:61b9 with SMTP id d2e1a72fcca58-7ff6607bcfemr39160886b3a.41.1767619435832;
        Mon, 05 Jan 2026 05:23:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9QSNQ45E6pm9WIqKpv7s+2aGOeq3jGRXUnf8Z4LGYwWh16ZrKpdKTPzYTLY4yPkjlXQ2rXQ==
X-Received: by 2002:a05:6a00:2a0c:b0:7e8:450c:61b9 with SMTP id d2e1a72fcca58-7ff6607bcfemr39160856b3a.41.1767619435221;
        Mon, 05 Jan 2026 05:23:55 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b127b00sm48426542b3a.21.2026.01.05.05.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:23:54 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 05 Jan 2026 18:52:58 +0530
Subject: [PATCH v10 10/14] firmware: qcom_scm: Add SHM bridge handling for
 PAS when running without QHEE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-kvmrprocv10-v10-10-022e96815380@oss.qualcomm.com>
References: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
In-Reply-To: <20260105-kvmrprocv10-v10-0-022e96815380@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619390; l=2509;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=JHAyLsFhkDEAcfYluzFEJIJb2NWskgIjsHullCrZs8A=;
 b=kWlzfyRrhgtOfbGUFcndw/B5jXC3d47Y3XmyPjHijUUFyBFDx8qnq7TRIeVSXRxf5NkAzWSPt
 F+XObqnslRaA8EqSIrb0Aj/e/EmFnAg+fqbWiuRAl35ttcAuIBoPCUi
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-ORIG-GUID: xtw0P8CD8FRUxGS5qgTf-jKNWLZ8NcYi
X-Proofpoint-GUID: xtw0P8CD8FRUxGS5qgTf-jKNWLZ8NcYi
X-Authority-Analysis: v=2.4 cv=OuhCCi/t c=1 sm=1 tr=0 ts=695bbb6d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=08WIqK_J-xaQODWVIAIA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfX/qrcOzKUHrOo
 1p7gpyMq7g0pPwgxCr2/Np6ITWJCEv+yT9nlG0GS6L0Gs5Xl3Qv0onigr51cDeZVUgVOoeOBoFZ
 PR49/7QypWsxnWsi6Uh8dPM/675Pi1Xh7x0S+75tAhlMeetYeeMw3wMgOCCJpjfxDKu7ca8vUPF
 TiaRea3UCBa1GWrP6iwNN8fItfp/a6x+INQIzntc8Dabuxd8N9a4UEPN2UWDb+FKYiuCWiPa2bJ
 L6qEe0AuRQ0lYGh2tjzNIj26vTPdYVg3831kr0Zd07je6HTRQPydJRudx8N0iZkNAAmRNcH4Icz
 EBGGuQBRyYz4oyb90FhlvlHAPZu82I859Neb+oha2tlApQ4gWy0+StAN5ml7j3i7BCQWFlty0TO
 sMiFbdRf9szvFYZSKqIGGKMSTXV7m9vF7PIz0/7eu2Lzi6D8HMHoexcOmhio5dRAB/v3rzKcuzS
 m3YIvMiWwsGf1fe549Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050117

On SoCs running with a non-Gunyah-based hypervisor, Linux must take
responsibility for creating the SHM bridge both for metadata (before
calling qcom_scm_pas_init_image()) and for remoteproc memory (before
calling qcom_scm_pas_auth_and_reset()). We have taken care the things
required for qcom_scm_pas_auth_and_reset(). Lets put these awareness
of above conditions into qcom_scm_pas_init_image() and
qcom_scm_pas_metadata_release().

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 75a57fbea74b..9ee673193301 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -623,6 +623,30 @@ static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys,
 	return ret;
 }
 
+static int qcom_scm_pas_prep_and_init_image(struct qcom_scm_pas_context *ctx,
+					    const void *metadata, size_t size)
+{
+	struct qcom_scm_res res;
+	phys_addr_t mdata_phys;
+	void *mdata_buf;
+	int ret;
+
+	mdata_buf = qcom_tzmem_alloc(__scm->mempool, size, GFP_KERNEL);
+	if (!mdata_buf)
+		return -ENOMEM;
+
+	memcpy(mdata_buf, metadata, size);
+	mdata_phys = qcom_tzmem_to_phys(mdata_buf);
+
+	ret = __qcom_scm_pas_init_image(ctx->pas_id, mdata_phys, &res);
+	if (ret < 0)
+		qcom_tzmem_free(mdata_buf);
+	else
+		ctx->ptr = mdata_buf;
+
+	return ret ? : res.result[0];
+}
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
@@ -648,6 +672,9 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 	void *mdata_buf;
 	int ret;
 
+	if (ctx && ctx->use_tzmem)
+		return qcom_scm_pas_prep_and_init_image(ctx, metadata, size);
+
 	/*
 	 * During the scm call memory protection will be enabled for the meta
 	 * data blob, so make sure it's physically contiguous, 4K aligned and
@@ -689,7 +716,10 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
 	if (!ctx->ptr)
 		return;
 
-	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
+	if (ctx->use_tzmem)
+		qcom_tzmem_free(ctx->ptr);
+	else
+		dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
 
 	ctx->ptr = NULL;
 }

-- 
2.50.1


