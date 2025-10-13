Return-Path: <devicetree+bounces-225948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEA4BD2740
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 12:05:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 607C8189BEAF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 10:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977CA2FFF86;
	Mon, 13 Oct 2025 10:04:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EzFmC7Jk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0402FFDF9
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760349861; cv=none; b=QUl1Mu3ZyWktUxT1EeqGP1LP+GbA/+ln9oMLT9ASMqtBZfhPzoY+e6N4nePibynaxuzPCvCliPXytN5SuWKr4LAbdRRYFVG7yYzRNXHVbiRPIGMoCwLKPD9yLeEBOvYjJDne8ExirmVC2mScSoQXGUrfW0zIsVPqf9Pd8S9ECgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760349861; c=relaxed/simple;
	bh=YDMPLpDHZzxufhKY3pUfh7AmMazlGytDUcCpJKo4orc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JnBe8Gtmi39JO22YRSR415iZj1AepGr2ScanvPRF5Pb7b2HNeUyjBXkcV9Ar17jjeA61vBDBIxnJ1wNkdOIJvtxo54RJgREZ+0zALJ9qKRoz2EtlMCCjgyXnErPDcUYLJR7Og6COQuiYDcN/vIORewiwgwTHFbIM2Hbk9vwIaTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EzFmC7Jk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2n7vD022230
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:04:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w4HFDfAUy/D7959GditzeNh9D7CWq+9RRUqsoHUE3ks=; b=EzFmC7Jk1vQuv9At
	XRxmDy4EyEqpMmUdNQuZneJwQ1J2B3rJYray/yZeOAWH9sSbNTeBX/8zig28CoRD
	DB1LR+o5wSoHhbzoW7A6lT7NZn8KR+VwJlaOEqO1ucUHz7tVy5as6ZaVWlanJoU3
	/6QI2aUYF9gvv1fCzvhC6jTtmcw8oV8ErkpGHRHlF8H1qYlnccomOlv/0c32ZLwM
	zV7vo8V816TtUdhdiXZbI+UOe65Gn+Htyk7wYX6nTNWguIsnRyH6WYOxphjDJx4Y
	cF+1rbFRp6XVj5t9OW6lWmTbPmZNwbgV4Rvjls/rwOOQJL2Z6W1abV9YVZri8O0h
	I2xkEA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfv2d3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 10:04:19 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e2eb787f2so6745472b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 03:04:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760349858; x=1760954658;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w4HFDfAUy/D7959GditzeNh9D7CWq+9RRUqsoHUE3ks=;
        b=vd/5WXjDptL/uFneRhw777HM2M4AId0aEFtztXhc1EV+r3CMLdCsfpIkLQ+nb//hbe
         BGojoQ0QYCp8/k8FWeRdRBGRKVwo8lNqeczoijAnn4E72+u/UqUDz8FpoI86XP9HuJtN
         33Ugsu1OBYEPqOsu14rlHhW8xXM3bZ5Bjrg5xxifPwVZfSu4wnw5C0/+WVa2ollgaEx9
         P2Iq+a74N2HB88lXjf8VMs2/G/M1063GiT8k5jV3ZTi/i2XwZS8tQatcA+U2oSgnHRqA
         28X+Sim2RMRn08S8Z2YsZhL1I4kyfXgK2QO87M85RzVu2HfCkKmTvyaA40HYL4DKMeSS
         b1IQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfOhuYw0nwmv8RkLW3eNTtHmbJlRvQmfiV1azvHhzJlTr2VNUdv0xOuAFSx52//xrE2JIiOwZfrtlm@vger.kernel.org
X-Gm-Message-State: AOJu0YwnqXj6QyzzuZHPdaobYDBEUQy5nxMvu5DbveD2TKGVa2P0NJRE
	pjXzxbQfdTI0mdXb8aUWSunsSaQ7FPgPOJkexq40xPKLn5r77t0m2DhYxtSVV/jffvsfl5ZNjCJ
	fuoeMZCSlerdxjPwpWub0AYP5yZWrUF2VXnfym1vxLPkSiwBSRBnAm0xiDDkS6K1l
X-Gm-Gg: ASbGncu3EY07/FwKPrkTNaSef02MoFBOdFXk2t58A4I68dcugHKxpTBx5HvdgZB0t8l
	6XlSUt/5wz5Titn7oG58RmmIWs80zXiPgVR57MtMYFYWsM8E8y7PTXrrSMu71WbZIlkVynAdQop
	vd6RR8Yy+IxWNAF7GMhU1I1B/YKHpWr/fXgCMkZHAo//l2JIfNfx2CJN0rg6E/vEIYDsHIPJSls
	FJvVRiS+iV5QhTl2p6a84rTmgWoGJ+WaDjuNGUy4UgrDzMgVXnW7oE/7YjLJRMvyV8MmNJarT88
	wjq2xxmOj5T5IEXfTpzEexriSW39AzxCqR1ooCjdgDlxYx3dLlYYrNIzHkFrMxAgXaY=
X-Received: by 2002:a05:6a00:4f88:b0:781:1b91:8e34 with SMTP id d2e1a72fcca58-7938772d557mr26761130b3a.28.1760349858119;
        Mon, 13 Oct 2025 03:04:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFX7SuPfaWBoBU1c61TDEE7y27KtJet+JBArrhJO0Y4AjsUqNpZKgNRIqFb8ueVqfS34JpgEw==
X-Received: by 2002:a05:6a00:4f88:b0:781:1b91:8e34 with SMTP id d2e1a72fcca58-7938772d557mr26761083b3a.28.1760349857606;
        Mon, 13 Oct 2025 03:04:17 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d5b8672sm10981657b3a.69.2025.10.13.03.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 03:04:17 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 15:33:13 +0530
Subject: [PATCH v5 09/13] firmware: qcom_scm: Add SHM bridge handling for
 PAS when running without QHEE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-kvm_rprocv5-v5-9-d609ed766061@oss.qualcomm.com>
References: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
In-Reply-To: <20251013-kvm_rprocv5-v5-0-d609ed766061@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760349819; l=3703;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=YDMPLpDHZzxufhKY3pUfh7AmMazlGytDUcCpJKo4orc=;
 b=aVCuv8HAN0gr7ZbEhd8LnvFa8JOylRRseCLxS6oLGwXqCZtbX9K/hXTP66B0nOyINvm8CUJgp
 /xDEu1o/NeyC1ursXhuyK5/uvbeX33M2i5A20NenEYUimaT+4/FM0zX
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX/kzpL5wzYPvx
 CJ1AZuHEwKmqpFE+oer5u7uXqye5ZLrNlBRPXNTCyfJuVudGUUVewjRTq7IEzsjBtCNEEd8DEu+
 SgHvWJLUg7lnGs/B2sWx0g4dGda3SCruAQqK67VF4lVabUVj+PkfHxaMczp3lZzAj8pNtBBE+aC
 xiJw8bgtlggvbVNblbSfP4NCLIKmrvcobOJGEUu/xqThRtoMoBeWvm/jMLNTlIxYMPJyi2aRKF4
 9nt4EsjKq77v4g6VJzdDUenbMEc6FCsJRec3RVD5+n9TtyUwvWA9R0JkLwTLG14L/egwP6NKmh1
 hefPnjIkMYVu/xqFD0N6x5NfBtSc+XIXQMOgllojGRLFuPxGbAMiPJvnhgwLzd7Czh1CJjGrfUf
 Fmj7moff8s9nOPVkKjsKqm9BYc3w2g==
X-Proofpoint-GUID: doepGjH9RQ3kgNjos8Dklyw4a1YvElqH
X-Proofpoint-ORIG-GUID: doepGjH9RQ3kgNjos8Dklyw4a1YvElqH
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68eccea3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=foeKZLzp1bqqI__vITkA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

On SoCs running with a non-Gunyah-based hypervisor, Linux must take
responsibility for creating the SHM bridge both for metadata (before
calling qcom_scm_pas_init_image()) and for remoteproc memory (before
calling qcom_scm_pas_auth_and_reset()). We have taken care the things
required for qcom_scm_pas_auth_and_reset().

Lets put these awareness of above conditions into
qcom_scm_pas_init_image() and qcom_scm_pas_metadata_release().

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c       | 44 +++++++++++++++++++++++++++++++---
 include/linux/firmware/qcom/qcom_scm.h |  5 +++-
 2 files changed, 45 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index eb79fceda92b..c545f7114237 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -622,6 +622,35 @@ static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys, void *me
 	return ret;
 }
 
+static int qcom_scm_pas_prep_and_init_image(struct qcom_scm_pas_context *ctx,
+					    const void *metadata, size_t size)
+{
+	struct qcom_scm_pas_metadata *mdt_ctx;
+	struct qcom_scm_res res;
+	phys_addr_t mdata_phys;
+	void *mdata_buf;
+	int ret;
+
+	mdt_ctx = ctx->metadata;
+	mdata_buf = qcom_tzmem_alloc(__scm->mempool, size, GFP_KERNEL);
+	if (!mdata_buf)
+		return -ENOMEM;
+
+	memcpy(mdata_buf, metadata, size);
+	mdata_phys = qcom_tzmem_to_phys(mdata_buf);
+
+	ret = __qcom_scm_pas_init_image(ctx->pas_id, mdata_phys, mdata_buf, size, &res);
+	if (ret < 0 || !mdt_ctx) {
+		qcom_tzmem_free(mdata_buf);
+	} else if (mdt_ctx) {
+		mdt_ctx->ptr = mdata_buf;
+		mdt_ctx->addr.phys_addr = mdata_phys;
+		mdt_ctx->size = size;
+	}
+
+	return ret ? : res.result[0];
+}
+
 /**
  * qcom_scm_pas_init_image() - Initialize peripheral authentication service
  *			       state machine for a given peripheral, using the
@@ -648,6 +677,9 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 	void *mdata_buf;
 	int ret;
 
+	if (ctx && ctx->has_iommu)
+		return qcom_scm_pas_prep_and_init_image(ctx, metadata, size);
+
 	/*
 	 * During the scm call memory protection will be enabled for the meta
 	 * data blob, so make sure it's physically contiguous, 4K aligned and
@@ -673,7 +705,7 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 	} else if (ctx && ctx->metadata) {
 		mdt_ctx = ctx->metadata;
 		mdt_ctx->ptr = mdata_buf;
-		mdt_ctx->phys = mdata_phys;
+		mdt_ctx->addr.dma_addr = mdata_phys;
 		mdt_ctx->size = size;
 	}
 
@@ -693,9 +725,15 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
 	if (!mdt_ctx->ptr)
 		return;
 
-	dma_free_coherent(__scm->dev, mdt_ctx->size, mdt_ctx->ptr, mdt_ctx->phys);
+	if (ctx->has_iommu) {
+		qcom_tzmem_free(mdt_ctx->ptr);
+		mdt_ctx->addr.phys_addr = 0;
+	} else {
+		dma_free_coherent(__scm->dev, mdt_ctx->size, mdt_ctx->ptr,
+				  mdt_ctx->addr.dma_addr);
+		mdt_ctx->addr.dma_addr = 0;
+	}
 	mdt_ctx->ptr = NULL;
-	mdt_ctx->phys = 0;
 	mdt_ctx->size = 0;
 }
 EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
diff --git a/include/linux/firmware/qcom/qcom_scm.h b/include/linux/firmware/qcom/qcom_scm.h
index e1de3cf73451..583490bcd38b 100644
--- a/include/linux/firmware/qcom/qcom_scm.h
+++ b/include/linux/firmware/qcom/qcom_scm.h
@@ -68,7 +68,10 @@ int qcom_scm_set_remote_state(u32 state, u32 id);
 
 struct qcom_scm_pas_metadata {
 	void *ptr;
-	dma_addr_t phys;
+	union {
+		dma_addr_t dma_addr;
+		phys_addr_t phys_addr;
+	} addr;
 	ssize_t size;
 };
 

-- 
2.50.1


