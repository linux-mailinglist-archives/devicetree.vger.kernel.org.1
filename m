Return-Path: <devicetree+bounces-238070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 517EAC56E86
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 50DB84E7D3B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1926B3396F1;
	Thu, 13 Nov 2025 10:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jmzgqgUC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VC7cIgTE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72583334C11
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030210; cv=none; b=qzE71Mv3Lbl5JA1VXAt8KYPzYI2GzaS6mDZ33qc4WI3TicjFo+5vEXsUFTyhxF7CdxsSnRQq6IbAHDG6tp8rj02spIfbZsDqFVFGUBTQYOaDxKc/ZUR6t/u8zOSkXLEnZ9tNrJ2F4L7jLEuPeuLpm7salFJJ0BsZBblmq54YZWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030210; c=relaxed/simple;
	bh=K5AD4MS8Ep7hajHBXS/zPrrGUHN+ZQvv9zBkPOPyBR8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EJMQ1T9WDLuDpWlwQ8A4zPeCiYx/dnuv74S0U1SvHTFgTOO75e2iFaXv7JmzARg50nuEOua+0dilMbrihyiHdePmQWgOc4ygly4XyLFH9C701Tb9/pKIrjvOIofEDymHF15xFBN8/AwUf+vtjIvo7Aw72CtUdC7ziE/uMhbWtiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jmzgqgUC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VC7cIgTE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD5S3f53440428
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:36:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tz5oxegOpV9wqnYLDAnAOnc8hojI0YEC3J8gLErT30E=; b=jmzgqgUCEN06FNi8
	B8Xl1nSluHMbE0KDMEqndrTTmdrAW4/dn+EOmZN0cM7XlhkNRgl2+/HEQ2fhjD4F
	4O3rgE0G4g216+lkGWgkaomYyiA4LLYa03uXJHGFh046cO296dFhJPsstWYK/k18
	LEif5bUVaLCygcEQf4TpH3qiZLvCElzb7X8FN17ZtyLCJO3rqjkeUYz1Ycz4SNIY
	/JsEyyDTgG9w4MgZFgAQ4N4+SqPZPlXdChPVrUqI/0XDPoVdY8VGiiKJdYXDpe28
	mFI5M7PFKpxBBcSdoAEpx5MtFxx5Fxu+WBYO/1gN+Al22NTQufs6LeP3dgqFoxQI
	nkARFw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad9788yc9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:36:47 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b5d4e1de6dso721526b3a.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763030207; x=1763635007; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tz5oxegOpV9wqnYLDAnAOnc8hojI0YEC3J8gLErT30E=;
        b=VC7cIgTEheNrzhVz4m9F6g2Is2vzMDKGpOq5jAhruSr21dNpbdrE+TxY86Qfm0Er8G
         bmFnwxb6K9qTYqPItV4ndAYdUev+yyNwEbPHZUrhQJgT2rg2vpOgbRYUEYBUop7Y+guE
         gGPsJAqQVNsWR/GeiLP+pi1tluS58NO4H4WAev2OFhZdw9yQ1jKTnEaEr3dIdmrEn9vC
         BoWD04DPpu3Se8wNlXgftAr/7AqcunSAdwj2Qg4im4xalIlFl7czImlEdx/TZFyE5v0J
         q05+m/kvdQI8ceyJarnqYmD2VGTZ/pausg3eu4YYDEw9X3Z89t2Hd9LywKKuj5O/nfmL
         0V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763030207; x=1763635007;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tz5oxegOpV9wqnYLDAnAOnc8hojI0YEC3J8gLErT30E=;
        b=X+AdF5zA6+9S3XTFNdm1hbhzM/RW8yPgAh29FSeRzinmMO20Km0zVN3R9v/pb+t0Gu
         ktfRevSsJrxPzmxxJbFBJF/ccNJbI2vMwuQr+5lPKucZPw04WrbDa4BQhbl8VCBzly3Q
         P5foJlmfAyzdJw4pOxBkh/hGrj4qiD20XdpuakXm5kHs2lgN/fNjJ0n5EAxUioVHFSBI
         5naYrAnh9bpzovTrAJkym/jpfSIAKlxMIiVBCsPy4uYtXdS4uj29qQJEwEhXrixFA6NC
         Dmr8pbPNMMwnjqvNPY+HbBeWNiP3qOVQtbhC9Zf6o/tNTpBkeMUa8rIqMmgWTNn6D3/L
         zXug==
X-Forwarded-Encrypted: i=1; AJvYcCW+Ln+xpmq/aIe5tdkIaQDaE4naaaLBtDiQUEBNqK1c8dhEsI6XNFN64E45raPr6HKXbv1kjCgw7diP@vger.kernel.org
X-Gm-Message-State: AOJu0Yw36RmHBmmcln3QAWq9rICiO8nQUf3aYNef2PRGoC/Tv5U8jYr8
	kgNwlCyDuXwh2NoqfpoB1Q5w4Nigj5YIz6yfg7kAF2JNHM3LqgiX8Akc5uT6TDQq4sLhZGqBsgI
	rKMwbY2pCNqxFlfJ3lzHasQIjCTIM00FVxsRf5jHgk0B+YQ6MNyplgy+12W55jMUc
X-Gm-Gg: ASbGncvJ+h/HMI/KB+qkjQEE0d5vlIvLmjYpPaLy+7GeXtwJIV96QCACJwloK3F9e7P
	fk/F2nvPU9OB7uL/RhJl+3UFzvV1FKtlbYbxLucKAdbm3QqyGXOar/mWcgj6CLwwXJg8S5JJoi4
	iV07rWIufO9k1uTcWIKd7ZZrzDrOBrRYVc/WcEvz4QEO5X1MTvW601QX8ecNmjErlgFN+0uacFS
	/LSy0CXUlPK+kz8YoMKjZq0yIedWHDthXRiTIlextaldz4GNMvCZLBO4wSKH9FG6UnlECTS0H8E
	/FRl7C8eMUWFoeW8JjXo5NtntTTjIa49VTH2eztAwi6JwL1Sed0jRSowLh1U0x0UZClPMS7H57f
	TJ0UDqPVe0WgWD1Mwp7hcLROpzw==
X-Received: by 2002:a05:6a00:2287:b0:7a2:6c61:23fc with SMTP id d2e1a72fcca58-7b7a2b92da3mr6960951b3a.10.1763030206459;
        Thu, 13 Nov 2025 02:36:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/WKDiCM2UOrMWgSAoR7ZDfPT2yc3wUHejCPKn29YFtjPwMnE39+X/wjvHSar2LPQwCJgk6Q==
X-Received: by 2002:a05:6a00:2287:b0:7a2:6c61:23fc with SMTP id d2e1a72fcca58-7b7a2b92da3mr6960914b3a.10.1763030205815;
        Thu, 13 Nov 2025 02:36:45 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9250d2d16sm1886922b3a.22.2025.11.13.02.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 02:36:45 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 16:06:00 +0530
Subject: [PATCH v7 10/14] firmware: qcom_scm: Add SHM bridge handling for
 PAS when running without QHEE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-kvm-rproc-v7-v7-10-df4910b7c20a@oss.qualcomm.com>
References: <20251113-kvm-rproc-v7-v7-0-df4910b7c20a@oss.qualcomm.com>
In-Reply-To: <20251113-kvm-rproc-v7-v7-0-df4910b7c20a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763030164; l=2476;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=K5AD4MS8Ep7hajHBXS/zPrrGUHN+ZQvv9zBkPOPyBR8=;
 b=IcKOznaNl4sz1EXhicKw1RV3lBUoHCmqELDUGl1+01BWVW4upKK+HhJDoP5jg4MW90VBsLxDU
 47EjUoTpFQyDsyatel4b7984Ae4UX8LRTKu1Z0oDcWzfQ3Q9mhUYsn+
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA3OCBTYWx0ZWRfX8xrDtHAHPE/f
 7L/osb3rYDz6VOxcAAwWmKMe4ntQ2TrrH00o7ajxZ/Cs85nGe6tdS/+TPjfr0OUEgYUn2Z9Inxg
 1xc7pkxIkn5m4LPZmHWh1bnbkvmR1KI9hWYA3z41Vm2a9KIut/ayXCSCJM7ggWB2LjfNgCYYeEm
 5T9JmWQozxKRUz53VcVoiS+m+B8FKtb42lWdBCjXeUYDQSHylPDTExrwJ4bOAywWJcICsY7O9rn
 7m4KkxJi1AW4BS4ig9lPOn6UZf02sDtEpU7WEvIHXPTnV5lrE2QCtl4/EsyAuzo3UPs1O5nCrWH
 Dk7CVK83plXcKHXkmiITRMudHmr+I+VJzIaLuMj3RXr/MiHAVegKpCwjSBySs3EcgZWTaKPW7ZF
 D4p4Anw+WpE17dw0VVH61nopSKLi+A==
X-Proofpoint-ORIG-GUID: -RvMwDVFL8RFhY_Ujo0suLZgKCxT-6Rk
X-Proofpoint-GUID: -RvMwDVFL8RFhY_Ujo0suLZgKCxT-6Rk
X-Authority-Analysis: v=2.4 cv=PIYCOPqC c=1 sm=1 tr=0 ts=6915b4bf cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=08WIqK_J-xaQODWVIAIA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130078

On SoCs running with a non-Gunyah-based hypervisor, Linux must take
responsibility for creating the SHM bridge both for metadata (before
calling qcom_scm_pas_init_image()) and for remoteproc memory (before
calling qcom_scm_pas_auth_and_reset()). We have taken care the things
required for qcom_scm_pas_auth_and_reset().

Lets put these awareness of above conditions into
qcom_scm_pas_init_image() and qcom_scm_pas_metadata_release().

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1d8a2c537c44..cab4723eb33d 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -621,6 +621,30 @@ static int __qcom_scm_pas_init_image(u32 pas_id, dma_addr_t mdata_phys, void *me
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
+	ret = __qcom_scm_pas_init_image(ctx->pas_id, mdata_phys, mdata_buf, size, &res);
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
@@ -646,6 +670,9 @@ int qcom_scm_pas_init_image(u32 pas_id, const void *metadata, size_t size,
 	void *mdata_buf;
 	int ret;
 
+	if (ctx && ctx->has_iommu)
+		return qcom_scm_pas_prep_and_init_image(ctx, metadata, size);
+
 	/*
 	 * During the scm call memory protection will be enabled for the meta
 	 * data blob, so make sure it's physically contiguous, 4K aligned and
@@ -687,7 +714,10 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_context *ctx)
 	if (!ctx->ptr)
 		return;
 
-	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
+	if (ctx->has_iommu)
+		qcom_tzmem_free(ctx->ptr);
+	else
+		dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
 
 	ctx->ptr = NULL;
 }

-- 
2.50.1


