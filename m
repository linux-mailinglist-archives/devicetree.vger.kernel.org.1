Return-Path: <devicetree+bounces-239671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B605DC684DC
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:52:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9A9C934628F
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE78A3101BF;
	Tue, 18 Nov 2025 08:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kG6MWYFm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UDzAzENA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418623101A2
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455903; cv=none; b=K082++yP+Vfkb5+u+4r5lowCQOLAmwp/51jET2tlhJog2g+eEyL9wo4qZPO1gcZ6EsgCWxzniewrG92o9iP1kTv/nPWBlKQqSMWwr4WFoI32D1oUNBnKuwUVwH/PLbZpwdiXPhxYXg/HFpfWat0FJWQmmXlm8XbuxpuINvRBzYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455903; c=relaxed/simple;
	bh=9A5anEH53GnLLVd9MMQtmEBnjJez85XhahSgwIYwj+o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jq2x30yyZhBxaXSa+CfLI8wRC5pDkHVUNt75CZNFGAWIDedbmzuShjtNugv9HN9Az65Fphx70BEP0r/Zzfbx072Bp6f2rbFeAFxx++CKkYaN8ihVENjIo7+PhZIxj1RI5pYlmzeiAUL3E+b6EvNMMV2yc96qk/jH+9cIxBjbC1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kG6MWYFm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UDzAzENA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6SxXn386625
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:51:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rlajs93xW44KTRN0rgVj9S8DZUtP1T558SNf4fvM8c4=; b=kG6MWYFm56FyS/dY
	diVBK7hBFx8rRM4vKOd/gDWtBy5atPPXqh736uHfkgPth0FtmszfkkNkx1Al1Ctz
	hn/znHNRxvEpkE7EVk9/tEtpMINtxH4qN/WQHA+oWq5VzVWYilZ8j88RssNxzy7W
	LQeouQChS/YLGHmgDxJd6lUPl98Pc1+GvDWy9jUyAFVcbh2YZDgtB+vP/0bFAeOs
	4uqf/7o3HkLwGcGtfa1yeEYTW02L3HXzEBLplDER9cjVE2ZVj0QmRNmwumGkjL2U
	zbSKkQ7CzNI5S/wLh+rf/i4WumDKsKNUTCNyTCSmOBpMG/DUOhtgALIi0LfklkFO
	PrerhA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8hsxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:51:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-295952a4dd6so81282475ad.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763455901; x=1764060701; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rlajs93xW44KTRN0rgVj9S8DZUtP1T558SNf4fvM8c4=;
        b=UDzAzENAl7NN0GGJzeFuNV7WK+A9L+7GpSsL/JZKV8YH1Nn9P+lzKJUPmPfGHO8esJ
         XvDnjU34jy22ICmPmSfwIrG3+2fzZbIHUuesIUyKR+EFcgZUGMbQrgw1RRDf/jvdRg11
         N4tNaDWb2DcNSOy6ytfR4GMcr1mstTtnPFFa6GsuJW8rxakxr1w82rrXjSH2tD6sIvBX
         JOkFdHMwycnHiKoE3N4kXKBWvATpSAXM6TIjhq2DGOfiB+UlI2tzU+x52iVtSI0DHTKh
         GAlT4Xjchq82pZuwQHsQ7Bxd3/oOgNMXj06EhTnw51pfFFep0qDgS6xQxPcq7BI/p+hI
         ON6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763455901; x=1764060701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rlajs93xW44KTRN0rgVj9S8DZUtP1T558SNf4fvM8c4=;
        b=sjzhy4ASFOIyRQTvNF/E2pr/9CFw22KEZLwqCZqW5vaz8iLpeWislRXbT+ZAUbikVO
         9XaVWiv4zrB3sCt1QiuKKxHEfNPAGO2ogB3efzTkJ29YfV6QoBzqhhZYHPxY7mDuXbi+
         mhMhtgrSmclmxux4iF37d7+YI/+Do+bw9naeaaBBLx4++tqNcTIUYpMnFg9iBf1IXYST
         MbQaQDNHUtII5ZBH95fkEbZDFaS8k3/5/g+pTHpl6UDrJt0M/5dshJd6EG4Uy3KmbJlT
         zukSCSAfxuRQ5TdlJUcxeZEc/El07cQVEfGUsZG6rxIvwgkqeUAOM5xk1Hw7deGAD7+y
         7Vrw==
X-Forwarded-Encrypted: i=1; AJvYcCU4ovzjxJzVMNh8CALvX31zBdG1jFpK8w10G2GbdR+mwvHwwPgYbweMAoviUMjsGPP3mX8JB2W8S6On@vger.kernel.org
X-Gm-Message-State: AOJu0YzxIr7mCRDhI6mf+muIeFBAvL7y4lugZuywx3XowR+9+fol/HUk
	jr66f0yKvlZIgjXlA62QazGnatDeYdEeU6wDxH/SPRdl3Dbi3PTx8bvjRdwFP/eHfro+xHyzd4m
	MOGILCr/G+8MsUzpuatGHgtXPiVcLKB251urPHZcrlHlA5eXROaOzALofX0fd4LCv
X-Gm-Gg: ASbGncuHQZE6mzq8HhNAR33BkmlPNBkv3XtEuW12KtNdn2v8dsPZvdU2S3Fv/zooGlO
	5REhv2Crl/ldNeBupAiJEqVDRyKOcyUx9xktQ2T3dRCwRA5fPJHglqt6mbHSMVNnVQvsWns1bCu
	WLybk6FQSPOSuDX7vcAXSTwTSvohlrcys2teuVuvh9onNf2bdfnZ3WBekkVdqBVzYbrHiSGGrWS
	WVnO+AkMJnhuNDdpGAnCPGSH1XO3qdIsrdCgEkUN/ZsUPkyfuhx6KpuYvY7yX3A19+wa79QqPig
	ImexbjtwrUrKlK+MT4La/YfY9GH/jpkvfqDEzRUMPkDqypUYBh2A7V5hKDf9LlF1jYy3AXArNGT
	kYBjHd/96sse1rXXKThza098=
X-Received: by 2002:a17:903:2c0d:b0:282:2c52:508e with SMTP id d9443c01a7336-299f55124b9mr25185195ad.8.1763455900697;
        Tue, 18 Nov 2025 00:51:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCsVUT/gyxi19V6NNcgQ1Bhhk7hd0QU8Q3IwF4m63Apgo8HYRSB6+A4jdvCpbIXf22MBDTag==
X-Received: by 2002:a17:903:2c0d:b0:282:2c52:508e with SMTP id d9443c01a7336-299f55124b9mr25184705ad.8.1763455900192;
        Tue, 18 Nov 2025 00:51:40 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2568c1sm162910695ad.47.2025.11.18.00.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 00:51:39 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 14:20:30 +0530
Subject: [PATCH v4 03/22] drm/msm/a6xx: Fix the gemnoc workaround
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-kaana-gpu-support-v4-3-86eeb8e93fb6@oss.qualcomm.com>
References: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
In-Reply-To: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
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
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763455868; l=1590;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=9A5anEH53GnLLVd9MMQtmEBnjJez85XhahSgwIYwj+o=;
 b=GKVy5XYk8J2atz7vVd9cbq8c445N4UJwCVBFzNslb6yr289XyqRF14cJW4/UDx5T1sgwFfTBe
 gLOlQU5BxT6CV9lRW2Re59yEwx79W/9ih/7ktY1yUUPaQPppV5gcEHU
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: DcYD6hElGCqzB-R845EK24RmncibJ3hA
X-Proofpoint-ORIG-GUID: DcYD6hElGCqzB-R845EK24RmncibJ3hA
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691c339d cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=twmNDnkDfZCprR7-lykA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA2OSBTYWx0ZWRfX6la21MHsWPa6
 UUdvlFE2pzOqU4J9J9Ro7KM52yEi4T4z9xgOyKwRNICcpHEPJWcs1edvYg9DwUBKJ5GFk1U+sGW
 UOg5Fbh5WF80zcpISUPfbLnSBfAgApKQDD/KFt5JPMNu13SF/DfNIhnunUGkS6nCvNRFB5SuWOV
 xM1v0q5uJ5g/DQxhGNjcHf4lAD12gPfxORhH2N2HB4u9j6135iPEfY6/fx4yJ1hWQQU6jl/Ed82
 fOrbPcnK3P8H5LDDckpUBTL6oWjaYP5H/1ts1T5xdC0Z9IgDscjaXqVf9UDcZ/aChw6NY1M3BBP
 wLqlQiKkyqp4upz4+tpZTYthsbJPe8O8XLBgSWloRo/lb4uJKGTP3FQ7isSOx40jdp1wy0STDJZ
 D4kQMpcu/imGbVqreXuCT+PpINuBpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180069

Correct the register offset and enable this workaround for all A7x
and newer GPUs to match the recommendation. Also, downstream does this
w/a after moving the fence to allow mode. So do the same.

Fixes: dbfbb376b50c ("drm/msm/a6xx: Add A621 support")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 72cd4fe0905c..52653ad376fc 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -511,8 +511,9 @@ static void a6xx_gemnoc_workaround(struct a6xx_gmu *gmu)
 	 * in the power down sequence not being fully executed. That in turn can
 	 * prevent CX_GDSC from collapsing. Assert Qactive to avoid this.
 	 */
-	if (adreno_is_a621(adreno_gpu) || adreno_is_7c3(adreno_gpu))
-		gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, BIT(0));
+	if (adreno_is_a7xx(adreno_gpu) || (adreno_is_a621(adreno_gpu) ||
+				adreno_is_7c3(adreno_gpu)))
+		gmu_write(gmu, REG_A6XX_GPU_GMU_CX_GMU_CX_FALNEXT_INTF, BIT(0));
 }
 
 /* Let the GMU know that we are about to go into slumber */
@@ -548,10 +549,9 @@ static int a6xx_gmu_notify_slumber(struct a6xx_gmu *gmu)
 	}
 
 out:
-	a6xx_gemnoc_workaround(gmu);
-
 	/* Put fence into allow mode */
 	gmu_write(gmu, REG_A6XX_GMU_AO_AHB_FENCE_CTRL, 0);
+	a6xx_gemnoc_workaround(gmu);
 	return ret;
 }
 

-- 
2.51.0


