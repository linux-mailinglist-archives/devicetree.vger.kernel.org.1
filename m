Return-Path: <devicetree+bounces-222640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2676BAB8F4
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E4B31886E63
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B22E9283144;
	Tue, 30 Sep 2025 05:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="inl1RaCM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FBC281369
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211446; cv=none; b=Uji5fnHfO1zUOSBBq72rBJV9pR4CPDKM2dfxXVyNd/F2ar9mlWohANi/v6sJD1qcZP8rbaxvqLDS+tKdNL45LKyR6EtNnclAJgWD61YszV2k/RRb2naf6XDzm8vo1XzHoUI1QAab5fRtgwQ+sv7ze+aMqucJ0Cl/DUq0Ji3ybUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211446; c=relaxed/simple;
	bh=EOCg+mGbEPCTFPOISLhEtf74Qtn/T6aGtxymMlc3OJg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HZA0XuYt2MGGrdxobMmbGvROraG/1LcMivmCDtNz6VfRwtk9H38Hh2oZ5ZHUPHWcvcsWW+yKRYCl/wclpat6wB79KToduAfmI7vACrk5ucnq60SDgKXBArYh9eFANIVoftgwo2vIfBoNc3E2WfSpONapTdQ8mjgI9Ifs2UpIQ4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=inl1RaCM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4Hhha001149
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	F7tggrQW35L+r9nA1vDz59ADeEIVjvvAvwMehI9EefQ=; b=inl1RaCMeUglYjC8
	tITm+ASQG186K9STW7mIvEThu+ylXopHsEUUZSLGyHNneob8rF44gOqoL5gEjk6B
	vYwxmaHBtHnhEp3QFRjryoBQwsQPWolhyUD+a7zMwB7zpdRH6KXz7PPE48AzCKLh
	llrqLu1H1GmWyRQ79XCzG77mSxUUcmJxV2/uYI9DWc/N+h1uQ+eFGk7m+Rl5BYOg
	LtvuoefoHX4QeUzlrZryLyLNul0w5FqGgWMd0kU0c3B+KEmf/dbBl7ii9PYXr5R0
	Z0eiHhreqTrpKomS7kp8cniqkkoN3s3HkF/j4sLOXYmUbcy2BpS1NpvW8F7Hnegz
	cVnxlA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr3936-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befb83so6268219a91.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:50:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211441; x=1759816241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F7tggrQW35L+r9nA1vDz59ADeEIVjvvAvwMehI9EefQ=;
        b=nQsUtdyfdDr6Cxcd+81HUDhF9omgvCL/PS2eciIaKLJ0MiD657cJ0JSGSSzuB8sGcL
         MEMYa41yOd4W3a/CQfGTTJVGMCKXbEaeE3RUnGrropf/k6N0o3mgS/ljbCMpDjs3fACY
         nVhjUh6A4+vXs7uuD57nuXsnJ8hrLMoyaAZ/z+olHcpfqMO3VtWLvzHEObOVUdLJEfjI
         VDea4XXaQJ6YVv2neVTh52rd4L/O7OACXW0aXd+7Y1D5syuzBL4hYAkxyYfDFK56+i1G
         Y82RlFRtyel2+Als/LQg3VyeNzdk+fePOsqTEEFB9oETIzuLZVP0ELcbXOxnQSXOcRwg
         3x6A==
X-Forwarded-Encrypted: i=1; AJvYcCXJYe0VOMMRyhVwn70mmfahUvgtuMgnjoWt3wAs/l/lhDnUNbmSOHzfS8YUrFJ2Ht4dkEACwJQsoGRK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8VuOb1TXPOj4s5OwetWzuHrqDZhtBZEaQQ6dThKQa7HD4R5eT
	Zwe1OvR0puvy0Qmtrd9RhbFjrr4Dl+sxwoGKi45WT4v9BeZmq/b9OP6sd2u4XU16DqGYFjcrsy9
	Nwh9shHbnc27STgsjSo3x97Rp0w6o2D18+xSC/gEtMmWJVCXzI7psA+tdBrLKSwJd
X-Gm-Gg: ASbGncupRGiwBuOoAQpzJvxGdg5BSwiPridf/EmDcbPgdnIlaL6gOYWngr+75Wf6Vs/
	4aovG8hu6kzeHPfoFzRLPPZOHFjsGdrIeZUmFf35q3UEFbi/yYNgfA9kWHJ8nVAQV1ouTMXy/x/
	ClZtP+z+Z2Fj01FhChqPOiUBaqZrfuub1OtnBLLSKKgLWlAmmuQdOjPTmb6lvjbP+jfOU4j5Z/R
	Gz7uYgzL+ettj9SrtgM/yurhQrvnnfoKQ62iwaElJr7cIvk83+XRiqN1AsA856HLZ2ITKBo3r5k
	cb5dffGQVcXdfC01lq9EW9m6gWST110dsK/In354D+H+EL+Kl0uxmUY4UxC/7ahHe+l1RQ==
X-Received: by 2002:a17:90b:3ec9:b0:330:bca5:13d9 with SMTP id 98e67ed59e1d1-3342a2ed8f8mr16860586a91.32.1759211440603;
        Mon, 29 Sep 2025 22:50:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUClMtiALwEZBTNv2EIqQ9cpUZDWBXrYItPYJDbMXvCLk9AJWSNN5pTsS86XXlWwKJL37amg==
X-Received: by 2002:a17:90b:3ec9:b0:330:bca5:13d9 with SMTP id 98e67ed59e1d1-3342a2ed8f8mr16860541a91.32.1759211440085;
        Mon, 29 Sep 2025 22:50:40 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be23412sm19029779a91.20.2025.09.29.22.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 22:50:39 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 11:18:12 +0530
Subject: [PATCH 07/17] drm/msm/adreno: Move gbif_halt() to adreno_gpu_func
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-kaana-gpu-support-v1-7-73530b0700ed@oss.qualcomm.com>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
In-Reply-To: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
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
        Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759211380; l=3805;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=EOCg+mGbEPCTFPOISLhEtf74Qtn/T6aGtxymMlc3OJg=;
 b=sq9fp1aH6Pcd4wBIzpytDz1wK3LwXQhNCTjV0qmHPnmNmNaZ2nD9irTtZQnCQRt1TkHngIyGp
 A2PWHqR5qNZCBoThU7g59zFNa96k2z+uXx2crV0tRBkpSCJX8JYjVqH
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX1Fa7agsAD/62
 bro63P6614q9m32ht+Lmndst9dhLWyGkz65KN7kaXO8o0EbjuJM9qYhR17oAF9yW8qwNjNGyoUT
 hWbPunGo/UeAxjGtcyVVikfraMXlpT05QezolQvw7KsIJfdlZpDVML8GnQGvSOOQNz1SDKexUWJ
 x8dhH/SxlN6RCeQNDmwBBwKfUtLvn+ckHXybhIZONgj4JP7laGzGl2xMNlLOwgiXJ5fDVrTCaxo
 +dp6drUXEfthQ6OQU5uf1RO+SilLTF+RkoHtUyfEt/0ojhv2zyPpdqvAt59lz4/HHDQkTTvk0GG
 dJwnAWOLAt3vLe/2m9QQ2VKuZIiUzIseqVE6q5qKZOA2CL4yo93XYqRJgcVPELHNuCkcfcoXvwi
 ch/ccmhN4LcHNauotg2JA5RiJGQNHg==
X-Proofpoint-ORIG-GUID: aJE64ZB7HUBHzcgbBDs9yYPEya1K38lN
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68db6fb3 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=W_sW28Yvd0frASqVc48A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: aJE64ZB7HUBHzcgbBDs9yYPEya1K38lN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082

Move the gbif halt fn to adreno_gpu_func so that we can call different
implementation from common code. This will come handy when we implement
A8x layer.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c   | 4 ++--
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 7 +++++--
 drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index e22106cafc394ef85f060e4f70596e55c3ec39a4..fc717c9474ca5bdd386a8e4e19f43abce10ce591 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -1050,7 +1050,7 @@ static void a6xx_gmu_force_off(struct a6xx_gmu *gmu)
 	/* Halt the gmu cm3 core */
 	gmu_write(gmu, REG_A6XX_GMU_CM3_SYSRESET, 1);
 
-	a6xx_bus_clear_pending_transactions(adreno_gpu, true);
+	adreno_gpu->funcs->bus_halt(adreno_gpu, true);
 
 	/* Reset GPU core blocks */
 	a6xx_gpu_sw_reset(gpu, true);
@@ -1222,7 +1222,7 @@ static void a6xx_gmu_shutdown(struct a6xx_gmu *gmu)
 	if (ret)
 		goto force_off;
 
-	a6xx_bus_clear_pending_transactions(adreno_gpu, a6xx_gpu->hung);
+	adreno_gpu->funcs->bus_halt(adreno_gpu, a6xx_gpu->hung);
 
 	/* tell the GMU we want to slumber */
 	ret = a6xx_gmu_notify_slumber(gmu);
diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 63aa3f8205085441c7cf8d391befacacd3aefc32..02725d28c607e7815587e9589c8344da3341c78d 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -1578,7 +1578,7 @@ static void a6xx_recover(struct msm_gpu *gpu)
 
 	if (adreno_has_gmu_wrapper(adreno_gpu)) {
 		/* Drain the outstanding traffic on memory buses */
-		a6xx_bus_clear_pending_transactions(adreno_gpu, true);
+		adreno_gpu->funcs->bus_halt(adreno_gpu, true);
 
 		/* Reset the GPU to a clean state */
 		a6xx_gpu_sw_reset(gpu, true);
@@ -2289,7 +2289,7 @@ static int a6xx_pm_suspend(struct msm_gpu *gpu)
 	mutex_lock(&a6xx_gpu->gmu.lock);
 
 	/* Drain the outstanding traffic on memory buses */
-	a6xx_bus_clear_pending_transactions(adreno_gpu, true);
+	adreno_gpu->funcs->bus_halt(adreno_gpu, true);
 
 	if (adreno_is_a619_holi(adreno_gpu))
 		a6xx_sptprac_disable(gmu);
@@ -2658,6 +2658,7 @@ const struct adreno_gpu_funcs a6xx_gpu_funcs = {
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.submit_flush = a6xx_flush,
+	.bus_halt = a6xx_bus_clear_pending_transactions,
 };
 
 const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
@@ -2689,6 +2690,7 @@ const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_get_timestamp,
 	.submit_flush = a6xx_flush,
+	.bus_halt = a6xx_bus_clear_pending_transactions,
 };
 
 const struct adreno_gpu_funcs a7xx_gpu_funcs = {
@@ -2723,4 +2725,5 @@ const struct adreno_gpu_funcs a7xx_gpu_funcs = {
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.submit_flush = a6xx_flush,
 	.feature_probe = a7xx_gpu_feature_probe,
+	.bus_halt = a6xx_bus_clear_pending_transactions,
 };
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index f5e23e0022060a726377faca125d57c7553c8493..991481adf2261f09912786ada3574f9f144953c0 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -79,6 +79,7 @@ struct adreno_gpu_funcs {
 	int (*get_timestamp)(struct msm_gpu *gpu, uint64_t *value);
 	void (*submit_flush)(struct msm_gpu *gpu, struct msm_ringbuffer *ring);
 	int (*feature_probe)(struct msm_gpu *gpu);
+	void (*bus_halt)(struct adreno_gpu *adreno_gpu, bool gx_off);
 };
 
 struct adreno_reglist {

-- 
2.51.0


