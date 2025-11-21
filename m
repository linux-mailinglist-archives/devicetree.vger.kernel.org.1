Return-Path: <devicetree+bounces-241002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF40C789F8
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 12:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CF5D735C6F3
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 11:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98207348463;
	Fri, 21 Nov 2025 11:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UPyEXWeF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LZ0co6Wh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F311345CB9
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763722897; cv=none; b=vAvZI0bVHUqYz4k1JGTNWLlZ0bf+KTumVwuqhfHQ3ITT/dmLIFlDqChhy/Es/6b6LVJSjsz2nfyhRN0lW3G24RQ9SzMFdQNKWNWrK7/80rUgY8iwM/Fb0EusiS0oah6iAOHRVjx/QNtTMUra6+zn4LI/aCvmG3O9hI2RNDO+xCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763722897; c=relaxed/simple;
	bh=4OHWHDjFq2jAK9+Bld2fkj3MwlJ5JU6OOThT1NP9j4s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AIXIRfuocDZHvR+H69tUL0rPzv8u/yf/JHQyQVvY/msx3OyUMvmc+JellrNE7dGZI2RGAkfnTfWDXECaLprU0e8AOBxC8ce4lZ6N9ikfH7716WNg8axKGtYIE58cnvb+xx1+7qm8EeKEezmDXyoZ+hXKpP3IwXaDTCcNSxDWoaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UPyEXWeF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LZ0co6Wh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL531eD3007582
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AR4qgOv39nCgYv9wQSzT0BQbLvoJwKdb29TlFdA6Xsk=; b=UPyEXWeFnox++Jps
	4cfEqE/nV4MKjvb9BL17/4ELkBp05A49z4fXHO6ELK9ksdBkD7oLWttxgonY1QVT
	DIkBEp/SFXJllulVcYRyAcFHiulxVVDyUmgUnKr/o5m5hXbOqB9AqRHFNYojqxvM
	OMmhWYRtXbZK6TbnzwbjQNADDvsz7DL3SXCFqygFtSJFKrgk7SPfXjh/StX3GMKt
	ql7MIm2qNx4fROaSp3+L36b6SchOndqhS9VRcLiRYeF9EWIXxPpRu2iDfgRohey2
	CRJCPLSc40gO6c4S2D5YWa1rWbvyr2zEJ+mrspLZHi/8AFRauP960K1VEX5C8qxk
	sMZbpg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhkf15q6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 11:01:34 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3438744f12fso5662784a91.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 03:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763722893; x=1764327693; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AR4qgOv39nCgYv9wQSzT0BQbLvoJwKdb29TlFdA6Xsk=;
        b=LZ0co6WhgrV27bWO3UGQ1A3Z4A3/1sLC1zKHGyhbJw/GFg6/xyTsDZklCzVaLGI3+x
         1y6tkrBUy4Ed1/INr+izQOc/+vunknuNyCsvl0xKlE/koVxICmkdowAaLe9pAFqIikAE
         rL71ptyHX4uIp3GY6brtEGuxNrYPpjJb4sk3CC+XtglRjsK7OJ7B+oOgXq+U52zCUmyy
         KGbKQHJcN7qFQcXn6g0ESEVpOQujNIriKQejl6NarTloFYdZ2C4XGYagxcqrd8jszDBd
         3sevTVql8lWJFQ9JmT26WPFX+Nd/8sT92blHy/1Thtz26ZR5yqiILwB/rBpUMrVQKY6x
         qzOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763722893; x=1764327693;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AR4qgOv39nCgYv9wQSzT0BQbLvoJwKdb29TlFdA6Xsk=;
        b=shJ6Hibl88LbX7IX1XKkolyHfz0oUD2hBFfNcmXc2TOvpuQo9TWRt6FYkJYZtieCfA
         IYRWuTh/d1loqolRnkV68NLxIrwXWfgVZLOtCmIne8NhTI3GNWPQ3U4ewLbcQi3bzoC3
         QWbe3+fm7yCbE7P3ohA1bboYWyiFzj7vr7P9VgCo3ce9Xr9Qwczn+zREIjSkX6vdXazu
         sdOGdjFsaU701FfgdAGivu7VRzbhU7ajFlrL5FO27hm/15LgIIA0Hbf1md+hH4TTIWAt
         m4simf5fffN4N/EXlhP1++e5bJDOutymLKon5PxnSFYyVQeyXUXQBwfZuerlzttu6ms3
         rcSw==
X-Forwarded-Encrypted: i=1; AJvYcCV9jkjwq1z3K3zQ643+E1c/QTbhHi+0KW+6OhZkBcwhVjzzE2QLxErgYRIiT8ZHA0kNtxst3TQV1FE0@vger.kernel.org
X-Gm-Message-State: AOJu0YzkRmk6UNY6dO73ehC0NM9gc8q88LqCXggAEGxVlnW/TwPZxlTz
	/5R7fmrq56DU1awfgNpahZaabnkYBdPSf7SnuI/R+5OBKLZe4UHy7nlbhwpdzjKMWnnEItECZb+
	xGiyhGK5Sz/j4FFjZYinsILrr2sSf5y2/txFJxzC03hRyiNu2cXx8+H40p7qCsyw5
X-Gm-Gg: ASbGncuZmh/FWZTt3Og1ZWKmpwuiN9mZUbbUXt7QTJHWO4nA5xUBx0n8EVnjheF3CKd
	A574e3UO+7JnTSrjCqF4VR5QRAX5nL1J5G0LeBQjj4Vem6lWWVXHiqUlBVmSHokzEbD7WFhQyoi
	+yO3dJl9RK3RbI/993uNTRMLa1RZxlLH2eGaHMyjyvDJO/tJk7bhm42MiVDnqb2bsUZxXTACeke
	IPuGGZirXatAoDiFgS0PAQ0lNcfjCbwN4EWG/T/xPvFqix9iOcSGnrCWBPHbzcbv9dl9JgbngVA
	3pwMR3qvk+6qNYabiQAaTniZFkraAzu5VF4MHqS8kjQwyQ6UEVpgVZirK+U/9DqISTVphYK8uJg
	SiCJSBJlPTFA5dhXK1P/9YILf3sNXgbsHHPHn
X-Received: by 2002:a17:90b:1c01:b0:343:8242:fbaf with SMTP id 98e67ed59e1d1-34733e78facmr2353059a91.10.1763722891814;
        Fri, 21 Nov 2025 03:01:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGruYPbxJ0wdUplhScy6yWFlNJDGF+FcjwecZPTTqfMzUPmK0CRo4jwMemUW9ciMslbAW5Aqw==
X-Received: by 2002:a17:90b:1c01:b0:343:8242:fbaf with SMTP id 98e67ed59e1d1-34733e78facmr2352978a91.10.1763722891133;
        Fri, 21 Nov 2025 03:01:31 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34727d5208csm5191165a91.15.2025.11.21.03.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 03:01:30 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:31:04 +0530
Subject: [PATCH v8 02/14] firmware: qcom_scm: Remove redundant piece of
 code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251121-kvm_rproc_v8-v8-2-8e8e9fb0eca0@oss.qualcomm.com>
References: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
In-Reply-To: <20251121-kvm_rproc_v8-v8-0-8e8e9fb0eca0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763722879; l=906;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=4OHWHDjFq2jAK9+Bld2fkj3MwlJ5JU6OOThT1NP9j4s=;
 b=dSHngmywAeCxkVUyGHNZ52W/H47oY9IZYWvOLGsaNXZVJ12FK4UbAJpJe+SIIuVo7yvE6xIhU
 LVHtc8fpvb8ByZ/ZaloRyGt2ND1MZX0KyqyNBk//tLCaQ/9Mrefx7zF
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-GUID: wLOHPRQQxGrC-Pp9sCfGx5uLfVRH_Eop
X-Authority-Analysis: v=2.4 cv=ApPjHe9P c=1 sm=1 tr=0 ts=6920468e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pWxEDRe995Kf1ot4LjYA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: wLOHPRQQxGrC-Pp9sCfGx5uLfVRH_Eop
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA4NCBTYWx0ZWRfX30cR/AguUPqX
 G6miSz+KzvycSp4s7RXY/0mglSXYvv381RT/MeVeHWbYGwznirZ5o0ao4V9HuHT6yHfAr54DdrI
 lhy7x3swQlWSIcIBdcpYQmbvOoomXFM0xTUEVpULm+czQM3ZUE00zYs2PAUXA4nVAK+nImsOHrb
 f7+vXC0OhvKgNEGhcDZsWEVEqf6pZkW7H/aYZTjkjXv++IwmQhvoCFQ9/jZyZaHy51E1CNgA2cO
 2RAVcrLDTyEiaqThvHM6ESpaUpQSdYXzE16R8rmC6CN+i9Bz9LqCWy96q2/wh1pFCfWIufJJrAq
 6V8btlh8qVA6Vv2IvkxOl6Qpi/FyD09uuLT5eJnctg0jKeJ4d9BHYu2B0DfO/2RVF0jDGRJ6lhv
 ZvArym2Ey2dKc2k50Tv4eF3FLdVclg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_03,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210084

The qcom_scm_pas_metadata_release() function already frees the allocated
memory and sets ctx->ptr to NULL. Resetting ctx->phys and ctx->size to
zero is unnecessary because the context is expected to be discarded
after release.

Lets removes redundant assignments.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index e777b7cb9b12..26969bcd763c 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -650,8 +650,6 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
 	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
 
 	ctx->ptr = NULL;
-	ctx->phys = 0;
-	ctx->size = 0;
 }
 EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
 

-- 
2.50.1


