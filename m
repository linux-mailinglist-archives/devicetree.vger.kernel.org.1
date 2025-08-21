Return-Path: <devicetree+bounces-207646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E23DDB3026A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 20:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E34B37BEE3F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 18:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B481334574D;
	Thu, 21 Aug 2025 18:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F5m7PP76"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FACC3451DE
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755802581; cv=none; b=KhlfUXDsu+d68YLCm5JRaFsI1knFOXUe0dhQmbwYocVpvU1HC9M1A39BUzM3gsHOL2vk53lTp4/rfgbUsiQTlsuvcCPxtP5s7AZy3BiiEFJjAq45803FiqrgHWycHb7bQdGudX9d/kdfyofht/kw6nND/Q2Svh4jJHl6ZBN75/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755802581; c=relaxed/simple;
	bh=dh5yRCCrqgo7ITPRxOGs22CFdqaavTKFG8dmxBRd41I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fYT4jJITvTJ/dtTAubQbMVjQVrNaVYInO/hMtYWs4VXJ0sS8wwUKMRrkA/78vuAXDlaVSnhPkEcU3UNfl9N4wI4Kcfrt2XHP2AyiDgoTdpagZM+b9IARNv3IfRE0mAGwj2WUdqsJ54NQbQWPr7fA0jyYBaky9vU1f87wt3LCxU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F5m7PP76; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57LI945b003022
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	b2aaGGi9vgh1ezkBA9wTuECFddorJT4shW0GuOItXNs=; b=F5m7PP76e/eiqROC
	vH9TlsXcBMa8M91NDemycmNCAihQsQLASWEUqCp2o0y2hohDkUdhxUQx2zKT4uqe
	kU8cjQB5PsR4nEvu6hQJAnmzhHLDNX8KG+PXeCoY2kbLfu13JzBr7U4/C7KynRHO
	9DDygMSCV0AuBdA0y04UTLCHFbKYlyxM6sUKzdo3zMQOLz43Lqzb/xS46JJY5pav
	5g4IJ3Wa2zmxuVgy3W5FISh/bzXr6vohl8DNmkaPLKstKXS67hXF36qCeqh17dCf
	8PwX/OYICINDfKkAZekxKU6I7jvLE/uXF3pwMPnc+eImw1OoDrsPqQpLFzAJGCbv
	twpptg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5296j4r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 18:56:19 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b4716f9dad2so2117847a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:56:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755802578; x=1756407378;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b2aaGGi9vgh1ezkBA9wTuECFddorJT4shW0GuOItXNs=;
        b=EGq2z1bAMUeL31IU4Crd+SqUJMuUjcr2Na5QfclnZf7zCwjXQoSSeM1/1bzWuxuy/U
         heWMJmS/1VZJlh1dXZ16/usNx+qSYMUWVQNQnsG0Nv1yGC8O07J6Cs5HUMYgbIKS/JsB
         1+7JtLqwAcRycthHXN11eFSZbLCFGW1wxplCrMlfQ8QdcRxJgfnAKargo507SNOvqwkI
         WnK/ldOMRnXmcAdYmTrktrIXASCjkrtx/t/1ob8fnd4wJk7+GXGQuUTsfbYHiHXVamKj
         5z8Om5vjuqvxxmNR9I+PZtJzrnnBUPIc+MsQht1VDbQwTJt+JjOYi3NJrWrKv7uCYJzx
         iGeA==
X-Forwarded-Encrypted: i=1; AJvYcCXcE7o6lS2aue9mkpTtoziq4xDEDJjQUfdtQHdCoVgVTgqu9j+z3gYWebV3JEZ3q4T0iC1+xWv9OO+c@vger.kernel.org
X-Gm-Message-State: AOJu0YwvrwboELsc30bhSsek7nJWgJGC2kMKfcTQHHdWcNY+XZWeJSKh
	NPOzOG5qVDsAM4zQnoQFPhxB8UZqQeHA9XgWvN7FTmMwZiMmkLvkXl20tsXSihX0ql4yM9Lpim9
	R2mrq53BnFJHwKCsIhRiowL8F1rr+6OK2h2XupzDfI4THmC93qCxKxsKr8KAWRTlw
X-Gm-Gg: ASbGncuZFNKWMXBmLWJHezN3vgpaUmQAwqC6oPiSIjE91WV1gJFKUyOYN2wGTXey/6r
	cGIPvpG1OUNnngVJcW4R1qZ6CiEjw9oxgOPnEEKJXpsESSTm2ERNEv7NQN6qVxCB1En/sOOyJ5R
	vuB+CPHkAjPLRNKAAoiTUVavljkgVWn0FsbUOyDOwZMHypwfGW1Dn2YdnJKE4pwXApTJ6r2+/ie
	LbLtjYJbM0eio4gr37aLP2vgDliijx2G1AEiDALR1jizmtLZaxtPeTEgeJ7jpz6u7n9Ga5eIYZb
	nO3GZJcP6RyN2RyDLQ22PSGFEYkdgj/6alJViI2feWJNV5/ZUZg6Eh7XdDYugYT3
X-Received: by 2002:a05:6a20:a11e:b0:240:1bdb:bed2 with SMTP id adf61e73a8af0-24340e1c5e9mr249961637.32.1755802578299;
        Thu, 21 Aug 2025 11:56:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/PvcztiKQ3+ysLQC44wdzL2nnd84bffnnBw7HXxvb3QajRBbw4ri6k6aeKp1I8dqHAddoNg==
X-Received: by 2002:a05:6a20:a11e:b0:240:1bdb:bed2 with SMTP id adf61e73a8af0-24340e1c5e9mr249926637.32.1755802577894;
        Thu, 21 Aug 2025 11:56:17 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4764090b0esm2106977a12.37.2025.08.21.11.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 11:56:17 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 00:25:26 +0530
Subject: [PATCH v4 1/6] drm/msm/adreno: Add speedbins for A663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-a663-gpu-support-v4-1-97d26bb2144e@oss.qualcomm.com>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
In-Reply-To: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755802565; l=831;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=dh5yRCCrqgo7ITPRxOGs22CFdqaavTKFG8dmxBRd41I=;
 b=/5kTakfykQ3AmdnUdoMQ4AB9+wrpS6Sg4icxX7Pn8G4w06qjqaLrqdMWxoFfR2c6gCf1yXHzU
 hcJfMlyo44VADh1a3HtlGxlKxaAgKW+a2+/QdkolNcZo5tFG1ddh8Ea
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: VEhYCBrS9BppCVq72pvTxv-g1SlKzX3x
X-Proofpoint-ORIG-GUID: VEhYCBrS9BppCVq72pvTxv-g1SlKzX3x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX/PxMrfI8K0zV
 a3+IQVJqfsV8/mB+2rL1X1iwy00qbDf5V1YwUIpWDDMUcvHrFbts+vxg7kNB/eFr+O6D8FUSxYS
 7bNF5MhxobcQP8LEEfIpEORPsMC/lt1A9jbXU0vh9p9Pvgdi2RKcUrWXYC+n6ONxBY9p/QVt9X8
 1KAt67IPIW2CMvqfYZW9hMcENLyI1LPnRp2fHXd25povdnVioWGhyufmZN2Ofm8NxcmwVYugV16
 AcFOdj83Iu2xBaREzFilqXQltjtNCijFT7jMbNdSSgJjpLynI3WlKwt0WWVdnfipyPch6UhVmZ7
 rxCNsGyAZlFI9Yzt/QgMht2WvoT6LEI8x93AjiLxzgXoBm7q9XF5UDkXMOnzAId4Z5ptMxPJeFG
 iO4mIaUwEc1YzIcaBXSwbrUfbb2gvg==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a76bd3 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=HtRe1b87dyxWHwbGPHEA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add speedbin mappings for A663 GPU.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 00e1afd46b81546eec03e22cda9e9a604f6f3b60..2b1c41f6cfeee912ba59f00c1beb4a43f0914796 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1024,6 +1024,11 @@ static const struct adreno_info a6xx_gpus[] = {
 			.gmu_cgc_mode = 0x00020200,
 			.prim_fifo_threshold = 0x00300200,
 		},
+		.speedbins = ADRENO_SPEEDBINS(
+			{ 0,   0 },
+			{ 169, 0 },
+			{ 113, 1 },
+		),
 	}, {
 		.chip_ids = ADRENO_CHIP_IDS(0x06030500),
 		.family = ADRENO_6XX_GEN4,

-- 
2.50.1


