Return-Path: <devicetree+bounces-238381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B20BC5A941
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:31:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B3E583524C9
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 23:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3DD432A3D8;
	Thu, 13 Nov 2025 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ImtBloQj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EN0PdBwF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F004329E7A
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763076634; cv=none; b=HNM7z3qQ1ZiAQS56NV1PsLOMIFw7JDAOKMkuub/xNwL2tYor0250bNcHPoIe+KeOqnr5FQBYIzMkJHTSIxH6vfGUfrLCA8Q7Godv2XmFqRhoIn+1eKvYi8xWIij6kOTHfp+4W/u6VwhZC5aD8fUBMLuv+VgwrVy5XDTMNESFSNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763076634; c=relaxed/simple;
	bh=IGpokplXYyShZVLotE0neZI18HJLZ3KUnvDyUGOCvso=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MZSRkFdSHAtaInSou9HVkxbNLuNAxEDi9PS8LXy32hPKgxwAa1Fa04hlEM7hLYzvlwfk+ycSrZ14uFk/x7axyTMZmTT8xxmz80w+JznAF5xUCgZNIwBAn47CbLX45WbjaGXdWDXfzZnyT6pB/2H5rrCEe5/wRMXRbNCuIOen/1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ImtBloQj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EN0PdBwF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMaefw1629387
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gcf5l/K/LPI1X3Fga8TbV7X9VmsrDisI7kJ0hOFQ884=; b=ImtBloQjs3VbC6QK
	+PNa3ucCYR4LChcWkDL/0pay7FCkI0Fitv0oEgepxh7a/E3b6ekwOE+DGRXVibez
	X7soR84lC1lKKXaCC2LPLCF9klr0oQeh7LByi5aTu6q+Ism8XJZPw2J/w9lWfy6S
	dQsLilzzvYJ7gnyNxXYr6Y180sB04B6Psjr94kBYn1woDUMeaG+bqj8l3LJ8kGs6
	Aai/RoKT1uX97Gqtp4lvZVVW2tE3qAUjybkZz3hWqpP9cIhgNMcxdbY+LKtoliYT
	aI93A+BVCxjvtZMd46+GH/lXu9lnC4+DJO58L1Is55xfTOpguZfkgGeG75LJI0DO
	+gSemw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9d83xy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:30:31 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b8ed43cd00so1720025b3a.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 15:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763076631; x=1763681431; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gcf5l/K/LPI1X3Fga8TbV7X9VmsrDisI7kJ0hOFQ884=;
        b=EN0PdBwFmw6IJpo19utQMgjKMxb6GxRDf3mxpvBLtA5terDNhiH4sJpe5ljO3Mk6Xt
         aOJ+MLNSDnnANrN+B3XIuTyd2N6zEPty0spE0AlGu6hHwDm4BRON+I5pBXG2Fdkc94F0
         Q9Qa8kHYHdVyK50Vi9fd6+BsjgDr/wvc47yw8H1a8Uu5MbGyRiI/fV64GksTr6d3zW+E
         9AQkHMe+DpgxcvP+xRkb5qFHiV2syNqIc0M9cebbPvj21LeSla+ILVBoHmz0EI633Hac
         JGHxPnTcAcBiMJLo3iBZ08puvA+zszXFzHNtXb41YpavCEosis51AXuaagT3HknL7KdS
         0BbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763076631; x=1763681431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gcf5l/K/LPI1X3Fga8TbV7X9VmsrDisI7kJ0hOFQ884=;
        b=sFLCfZUNzV9vgAmCa1gO/Xypa4sw+rO9BPHo+spC8U0em7H9C4CQ+fKFa7TFb78qv8
         dkQQNcqa33OREmNsIjMyr/FKMuE7PqQ9l/iCsgRzoYbawFbpu5d2re6c6rxx3MmoK2Qa
         NC01TFduhWCIcYHEeT3dlBgE13rNrSncRXvm1WnX4pchihzCG5yqQNcGRKm4+90WAzzH
         jioV2ctkLSrc/WX0kDULPA7hyySS3nbpvSpnlNpUx9He6kBAVHoK5Q1KX57IBJQLOf78
         f94YMNTzxbRkPNcyoAuQQbztVtaB0OIkm6jkUzMv38cU3q98XBNVAZpJXB5a6HKP+F7i
         GmCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWy7hfyaIS/x8kbbCNVJq2xoGwOMX9YpSYG9mxa73y+qPjTFimkAr13FoEUDm3AjqrIW5f6il8K4Hpn@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu/RB2n1szJWlGBYzCy/dJ9b+KLlnPsMKF0OtRbbc3uhS9Fgvq
	L8L/DH/10HYbDm1Wl/PqQJYIbaciDxuRPLWGuN2QKIWU17mlF2ad/KyU++4SYT4xexRftKDSGi2
	2SlffNnAP9adaDq70dpLLJH76vWJqTZEXHam0/NSiKdEhIPSJBTcvqr8W6ppCmh1B
X-Gm-Gg: ASbGnctWCP2Kfllw0EBpLCd0wak9HWFc2VcM/zbh6jh4TM5lGnI/H4Sf1+5FiGwVHn0
	3LPFxOTb5skTxKofOaS6FwbrbiJfppxLIxjL1k8qSdQMYQ5b8TmPqZQ3U61V0FVyeWZw3BGaZyd
	ddSDWxCffGT7TcKey6GSnnD1cQlVmmM4WePo6HIzJsjJGKk8cQhb2y4nWew2mSuh+qAozU6r1kq
	lBxiRZmiEf+Gwi1LQAvFX36eYgJw8G7/pkvW0ar27JSEZmiVYSyfP6rRJ9NBHMqvsyVyXsPLOMP
	rcdbrPE3P80A7nQfaPw4Qxtzeh6CriSbNpe3RYO8/6JHaem4HMBhHFvPkk0GeieFVXmxo8zq4P7
	1nOsdSU3l2NEMxUfvIKzf3io=
X-Received: by 2002:a05:6a20:7f81:b0:334:7bce:8394 with SMTP id adf61e73a8af0-35ba2c7f49fmr1558598637.51.1763076630332;
        Thu, 13 Nov 2025 15:30:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFF7D8yPEUPkp+NbY22BN0Y1kfgJd40q6G3P0giPrxIE2bqHGm6311EF07g9YkzAqUjbYGJXQ==
X-Received: by 2002:a05:6a20:7f81:b0:334:7bce:8394 with SMTP id adf61e73a8af0-35ba2c7f49fmr1558536637.51.1763076629730;
        Thu, 13 Nov 2025 15:30:29 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc36ed72cd1sm3049486a12.11.2025.11.13.15.30.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 15:30:29 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 04:59:03 +0530
Subject: [PATCH v3 06/20] drm/msm/adreno: Move gbif_halt() to
 adreno_gpu_func
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-kaana-gpu-support-v3-6-92300c7ec8ff@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763076574; l=3572;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=IGpokplXYyShZVLotE0neZI18HJLZ3KUnvDyUGOCvso=;
 b=NVUVcDEzAp6sPGf+/YDVc97AOPQtMk6i7AKTEir8UVywiJ16mJrlqBXgy1BYJHHWn73Ng1nrJ
 TotY0EkaIRQAalvppoalIedeEivFRiO8/utpOvZ946ECcbG8esPdnuq
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: drsI75_sOk7qTbZ-_kNEwtt1IE6b337i
X-Authority-Analysis: v=2.4 cv=Rdidyltv c=1 sm=1 tr=0 ts=69166a17 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=W_sW28Yvd0frASqVc48A:9
 a=+jEqtf1s3R9VXZ0wqowq2kgwd+I=:19 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: drsI75_sOk7qTbZ-_kNEwtt1IE6b337i
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDE4NSBTYWx0ZWRfX/M66p1sn7z7X
 mXudsrC05UgYnWJECByVn1TvZFXUVuGvJghs4LJyb6SRWwPaA2+m7beCG5mGPm2eRfLEYA6s7xZ
 G9x7J/9sLAn1BmmQFnMQMI50Hb3X+0sjXXjFgDQ2tUYLV9f9HALGCvTJyF2oTbb6Ps9/wVTPhdX
 0xFzWx0XlIjedhoryJmOjPkf53aFLuYfwjII2bMI2P471+AAQYSiOEEldy7t9Yls4NzHD7/qRlW
 TTOF7wQ36TCj6PpGuYt58SIHx2WQ3jR0ZOGVxwhOnQ78vhMnbGAMsU2Hig1vY0YeyXrsbkHiU5D
 NWTw4MzHU5dB1HAJwEOlzQXCmlvXcXto7dDeNa3MuR2RQey06J+BW1tf4AZq35Z5Ss/0te14Kl7
 OTziPo+r0H5TSUZlD/oN7q9c/oiABQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_06,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130185

Move the gbif halt fn to adreno_gpu_func so that we can call different
implementation from common code. This will come handy when we implement
A8x layer.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c   | 4 ++--
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 7 +++++--
 drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 605bb55de8d5..306fc08492e4 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -1053,7 +1053,7 @@ static void a6xx_gmu_force_off(struct a6xx_gmu *gmu)
 	/* Halt the gmu cm3 core */
 	gmu_write(gmu, REG_A6XX_GMU_CM3_SYSRESET, 1);
 
-	a6xx_bus_clear_pending_transactions(adreno_gpu, true);
+	adreno_gpu->funcs->bus_halt(adreno_gpu, true);
 
 	/* Reset GPU core blocks */
 	a6xx_gpu_sw_reset(gpu, true);
@@ -1225,7 +1225,7 @@ static void a6xx_gmu_shutdown(struct a6xx_gmu *gmu)
 	if (ret)
 		goto force_off;
 
-	a6xx_bus_clear_pending_transactions(adreno_gpu, a6xx_gpu->hung);
+	adreno_gpu->funcs->bus_halt(adreno_gpu, a6xx_gpu->hung);
 
 	/* tell the GMU we want to slumber */
 	ret = a6xx_gmu_notify_slumber(gmu);
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index e9a0ee1262cc..9c6af226b076 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1580,7 +1580,7 @@ static void a6xx_recover(struct msm_gpu *gpu)
 
 	if (adreno_has_gmu_wrapper(adreno_gpu)) {
 		/* Drain the outstanding traffic on memory buses */
-		a6xx_bus_clear_pending_transactions(adreno_gpu, true);
+		adreno_gpu->funcs->bus_halt(adreno_gpu, true);
 
 		/* Reset the GPU to a clean state */
 		a6xx_gpu_sw_reset(gpu, true);
@@ -2291,7 +2291,7 @@ static int a6xx_pm_suspend(struct msm_gpu *gpu)
 	mutex_lock(&a6xx_gpu->gmu.lock);
 
 	/* Drain the outstanding traffic on memory buses */
-	a6xx_bus_clear_pending_transactions(adreno_gpu, true);
+	adreno_gpu->funcs->bus_halt(adreno_gpu, true);
 
 	if (adreno_is_a619_holi(adreno_gpu))
 		a6xx_sptprac_disable(gmu);
@@ -2659,6 +2659,7 @@ const struct adreno_gpu_funcs a6xx_gpu_funcs = {
 	},
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_gmu_get_timestamp,
+	.bus_halt = a6xx_bus_clear_pending_transactions,
 };
 
 const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
@@ -2689,6 +2690,7 @@ const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
 	},
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_get_timestamp,
+	.bus_halt = a6xx_bus_clear_pending_transactions,
 };
 
 const struct adreno_gpu_funcs a7xx_gpu_funcs = {
@@ -2721,4 +2723,5 @@ const struct adreno_gpu_funcs a7xx_gpu_funcs = {
 	},
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_gmu_get_timestamp,
+	.bus_halt = a6xx_bus_clear_pending_transactions,
 };
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 2c8b38eae7b6..19a1a1f699bc 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -77,6 +77,7 @@ struct adreno_gpu_funcs {
 	struct msm_gpu_funcs base;
 	struct msm_gpu *(*init)(struct drm_device *dev);
 	int (*get_timestamp)(struct msm_gpu *gpu, uint64_t *value);
+	void (*bus_halt)(struct adreno_gpu *adreno_gpu, bool gx_off);
 };
 
 struct adreno_reglist {

-- 
2.51.0


