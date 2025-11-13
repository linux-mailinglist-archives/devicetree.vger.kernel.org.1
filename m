Return-Path: <devicetree+bounces-238389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 224F3C5A9DE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:34:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 726E03A7D5E
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:33:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5E43328F8;
	Thu, 13 Nov 2025 23:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mw1OiDK8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JzpdP//3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F201B3328E2
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076695; cv=none; b=HFPxx+86Z8HCObJN8PLx0zB7HCcb0KRo4hdlgEmjbN+7Aje8wVkFVIaP2Min65Qn4olfEAY9CRjpKaPQSfZyaqzSK7v9RyzvjpZFrL9DXYR4BoTZNMpW6sc8p0TzMbVHOjri0t9CIiXaGVQ2USmULLNIay7Y1DIfYXOiP6ccRF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076695; c=relaxed/simple;
	bh=vDNLN4cN0PzKe93m1lQLnQLp8oN4RHAbHPt0ChRj+xE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tfIkWJJ2tfmiB/UO6GxkZBGYYsg/+hqKepJ0FhRQ10N3ZqSYojXbYjGBs2i/KvOT6wgWT7hVlGU3cKdDLaZSpqrVyIetuImqiBcAx6/HwH0fJp6GKYshIQeMmLduCXimtCRoK7wqCURDpwXvBok1/tgGg3Kg+/3jKjYIq+4tCbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mw1OiDK8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JzpdP//3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMah0C1703651
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QDjAMzX1/GGw5QnIGM//3FYMijCaV+ej1ziddao90JE=; b=Mw1OiDK8Pb6bZsSH
	U48pTdy7ZWEep5GJH9OoWz9Hpxw2o+SrVtEoP8ZRtlXT29kz96EScAXt9JJiJI5F
	JVdLi5ep4JNn95nwAchEfJV7F0+Ep2XmrKSqdNNpWdj8vys2fqAQe9EelG+YuFeI
	VYY6U02sQkmLbQzM4165psOQDZFwotTZhm2wiWEddV6XbWAy1kqVoWlbPdtJm6n5
	CZrgEbCC3QlKd8+T3YrCr5npm9pXgCuKZ73KsYoegpRq4LD/+JYzVIUGVKaF1p7c
	twUP2t5ls0dTnHTJFpCh6SQeal6vQOOdWGdeiuO5+LPqqKooGN6dFiVGXhOzU9Dk
	G+JSRg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9e842y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:31:32 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b5533921eb2so1201802a12.0
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763076691; x=1763681491; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QDjAMzX1/GGw5QnIGM//3FYMijCaV+ej1ziddao90JE=;
        b=JzpdP//3X9xxf1J9OywjvfJC6Pi2xEmVyMYati2cA1j+cZWENx5VE1Rnp/i+EzKlqZ
         pjpc3Ijzg5D0ds0+cLPSOIFzFsweQg9sB4pYkSjFCe06dqjWd97mlK93p+X01LaRiqTQ
         U1un5ezxzNUDioLwb5V4Aa7NX6CzPxA1ZLdu1aY5HkTBjx1Eph8gZpQuzVjpo+v9G1Le
         LcXJoS3tlpPEhqhwRU6BoI3RCaAsGphxZnDVBfcNH+7AAx/F+QUGYGmmalNCjWh+0yY3
         6llt7ahd12ivLNMZBXH72/gseiIBzTpKCyyTu6mzR00pmMA9RWt6sYfU9iqptTHJRwKc
         y4bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763076691; x=1763681491;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QDjAMzX1/GGw5QnIGM//3FYMijCaV+ej1ziddao90JE=;
        b=ZuwNd9XPrD9uvSexmEshBp2yONT8jhfa8d64lPof8ROpoY/e4MvYQTF389ydcDWGka
         2xIV3E9AC/ySmVCqUQqz4rJXJgc9xHg9A/8O7WD6w137SfS0ljK8ALDCfzQBaUOENIMC
         G9DDksql8LE85wXkRd2Q7TLB8x+BilxVMdMdH4RSDUgs5XKwCXnR1fPkZRPkFAY5w9Uk
         vhSNOZ5JZow5+2Z0aXbXwIYkhXUipGVhU+7Jm4ez3OPqAOL8IOLchbv5CEPXbbWQPK3t
         HHRA/kteyZG02IzUbLPbHSLH6L6BZ0ZeCmWhJeS7ovlQTuqcgI57pYwCNzuO5lAgvbPX
         0fpQ==
X-Forwarded-Encrypted: i=1; AJvYcCURhIndlNWji4GAzT1VlY+O+tUQxb8+yU8WjB6g4jtzJ3xSur19hVnqYfEqSqdZ3rKogfSW8e5RB0Wx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6YJKfP6XOHmPDqKQ0vfKCDVdIInM/O3JtjIsOD0dNVN8As6Uc
	DFHQUQZPk9g0m9c7OM79HWsEnAoTo2Aetc5Wi+FGTtCFygjlXsLezyHuLlXiOSzyA/g3cVkDXqU
	kGHHeZRbxmLiQ68BfVAYFdyJC2QBAcPK96BcHv+JClLFYlMh5Js3j1zbAh1caGn9+
X-Gm-Gg: ASbGncsZEc/HPDiF8uLGAS7lh6/65FdrDbL4GkhA38iago3AR0wdY78GCCJB2yqCOHt
	hw7l59GL9PFrl3acd4vv0sNsYPG8ZX6pWRBCgAgmrnJ9W3EYHpZRNADA/Ea71RUsUgEt62PZSx0
	KPboksheb96JBv92cd8UbRkGwuTCrLaTZm/n+vMzjhDAcFUDWcq7nXwVjVSk5ZKh2GIfvMw3TOb
	8pR7cCd1hZyCvz+AeZljf5Muk3FZXCWK9CdrbePORAOOpp0A0lnZD35KVIoaOoXFPtdNQqGxrDb
	vXSsVYoaS19BbYRdN29LrDZtgu4SBduZoprsf4RTYTWyw8lHkORm93iOz4MwF7m3Vm6/TxQuPpH
	pwmwsZIKeA/NkIxFv5zrruJo=
X-Received: by 2002:a17:903:196b:b0:267:f7bc:673c with SMTP id d9443c01a7336-2986a752a74mr7180315ad.44.1763076691169;
        Thu, 13 Nov 2025 15:31:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEv4VMp31p4xpUkl+cBSArUnMXmzuRTp0dA9/uwzoA+kOnP7j0EiVv6LoBQ7lgxDaAp9pqADQ==
X-Received: by 2002:a17:903:196b:b0:267:f7bc:673c with SMTP id d9443c01a7336-2986a752a74mr7179955ad.44.1763076690622;
        Thu, 13 Nov 2025 15:31:30 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36ed72cd1sm3049486a12.11.2025.11.13.15.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 15:31:30 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 04:59:11 +0530
Subject: [PATCH v3 14/20] drm/msm/adreno: Support AQE engine
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-kaana-gpu-support-v3-14-92300c7ec8ff@oss.qualcomm.com>
References: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
In-Reply-To: <20251114-kaana-gpu-support-v3-0-92300c7ec8ff@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763076574; l=3021;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=vDNLN4cN0PzKe93m1lQLnQLp8oN4RHAbHPt0ChRj+xE=;
 b=oJOTsEuxiDw0mQjFV7awI5cZuJCQsXd3sW7WigV/GBEJYyROma0U3lQegB886iKXDxyIF1K3o
 IWStbmFNJp/AvJ5rOnPtVqvIVQxAAU8dt6hkQjz5F8562Nh4A9cfeCw
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=ccPfb3DM c=1 sm=1 tr=0 ts=69166a54 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=rHWH_X82z2bqsOHW_PQA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: z0R-Q3oy-smBef4rMYSHyXw7ALYe141k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE4NSBTYWx0ZWRfX+XSWtCDmN5PG
 L5XFvcYUcNicdGigQ9Zpwi5wqRqYx5tB3aTE4d9+P9SWnC6PWFnQkUITSuzGZrmkn4mywSlv2Mx
 rCQrUqDD1U2QfW65JmWvffGk6EEXxTLtvM5snKSfDNbOfD3Wnk5b9b9+sdPMlQtRxQy/iVMWf9s
 Nc4oFxIKpWVp6CzDLD0AM9YsaJ8KOaiMhNcigFpg/bd1ij/0fDNakQEE0ecTwXBGYWj6eNP0ECO
 VbPwvP8Qjk9NDXh/OQneDrt5VuIlR5j7KhvZrr2tTiveRox/A/ko55t63hbdfETuz6mc7+q7/VQ
 cR2w6vXs2UVhrYwdVOTk6smyktpqFW/aKXcfdaeWBwK9h9qwsMxXEil7KzcafPH4ba0F3gkZmnE
 IzrXR6iMS+5iNKhX6173IxAiznRxQg==
X-Proofpoint-ORIG-GUID: z0R-Q3oy-smBef4rMYSHyXw7ALYe141k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130185

AQE (Applicaton Qrisc Engine) is a dedicated core inside CP which aides
in Raytracing related workloads. Add support for loading the AQE firmware
and initialize the necessary registers.

Since AQE engine has dependency on preemption context records, expose
Raytracing support to userspace only when preemption is enabled.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 17 +++++++++++++++++
 drivers/gpu/drm/msm/adreno/a6xx_gpu.h   |  2 ++
 drivers/gpu/drm/msm/adreno/a8xx_gpu.c   |  3 +++
 drivers/gpu/drm/msm/adreno/adreno_gpu.h |  1 +
 4 files changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 20dbdad6e2e8..ef79f4cfb80b 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1104,6 +1104,23 @@ static int a6xx_ucode_load(struct msm_gpu *gpu)
 		}
 	}
 
+	if (!a6xx_gpu->aqe_bo && adreno_gpu->fw[ADRENO_FW_AQE]) {
+		a6xx_gpu->aqe_bo = adreno_fw_create_bo(gpu,
+			adreno_gpu->fw[ADRENO_FW_AQE], &a6xx_gpu->aqe_iova);
+
+		if (IS_ERR(a6xx_gpu->aqe_bo)) {
+			int ret = PTR_ERR(a6xx_gpu->aqe_bo);
+
+			a6xx_gpu->aqe_bo = NULL;
+			DRM_DEV_ERROR(&gpu->pdev->dev,
+				"Could not allocate AQE ucode: %d\n", ret);
+
+			return ret;
+		}
+
+		msm_gem_object_set_name(a6xx_gpu->aqe_bo, "aqefw");
+	}
+
 	/*
 	 * Expanded APRIV and targets that support WHERE_AM_I both need a
 	 * privileged buffer to store the RPTR shadow
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
index e6218b0b9732..3a054fcdeb4a 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
@@ -59,6 +59,8 @@ struct a6xx_gpu {
 
 	struct drm_gem_object *sqe_bo;
 	uint64_t sqe_iova;
+	struct drm_gem_object *aqe_bo;
+	uint64_t aqe_iova;
 
 	struct msm_ringbuffer *cur_ring;
 	struct msm_ringbuffer *next_ring;
diff --git a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
index cf11135f46d3..78b38b52da91 100644
--- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
@@ -631,6 +631,9 @@ static int hw_init(struct msm_gpu *gpu)
 		goto out;
 
 	gpu_write64(gpu, REG_A8XX_CP_SQE_INSTR_BASE, a6xx_gpu->sqe_iova);
+	if (a6xx_gpu->aqe_iova)
+		gpu_write64(gpu, REG_A8XX_CP_AQE_INSTR_BASE_0, a6xx_gpu->aqe_iova);
+
 	/* Set the ringbuffer address */
 	gpu_write64(gpu, REG_A6XX_CP_RB_BASE, gpu->rb[0]->iova);
 	gpu_write(gpu, REG_A6XX_CP_RB_CNTL, MSM_GPU_RB_CNTL_DEFAULT);
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 155d58751ba3..edf1f6624c31 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -27,6 +27,7 @@ enum {
 	ADRENO_FW_PFP = 1,
 	ADRENO_FW_GMU = 1, /* a6xx */
 	ADRENO_FW_GPMU = 2,
+	ADRENO_FW_AQE = 3,
 	ADRENO_FW_MAX,
 };
 

-- 
2.51.0


