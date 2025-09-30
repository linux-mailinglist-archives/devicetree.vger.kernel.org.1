Return-Path: <devicetree+bounces-222636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48AA4BAB895
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:51:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EEE51922AD7
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A40B427B333;
	Tue, 30 Sep 2025 05:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="maM9JAzg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1571B27AC57
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211428; cv=none; b=XdTLmIX0qcGcuaM7tuWGdEkEsId3OW95uLb44JwZzOWSdq2TTkY+mH/XtwIMQuJiNrPBWpkOlDjeeha1q23fxVkKIyEuU/HRpJOX99jXGN5bWyoouNxAvpfuG2uOQEPzrlJkdT0TRCwY1nvtM3NlT5YG9BbT5DtIavMSvyPqxxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211428; c=relaxed/simple;
	bh=r9oQbEwLVJJDIQbYTusbpAt6OAJRxZxziR2i2dJYHBs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K7eagkFm5qs+BlfpqB6KFf9rAhpayu3GuVl6o2JmnyXLyyv75Xt2Z+pfXtKzQsQ5M3Lckyg1OTRGdXhoI1pYk70sRTjEW+SsHuN1vBMerM0WygKvU93Z2r0nJmIJJamj5Cp81diHiy/5Ux7zREYrRWNbTLpJh50owpkJdvRxGaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=maM9JAzg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HVSr030619
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5DcOYuuJJ+cW6vFNFMyOqLHX/YGKWTBxTGWvOie70iM=; b=maM9JAzgC8bn3UtP
	bK3l9Mr5pbIBVnd51dGsizmhHoKWbbpPi/8nG7N4p9sJEp+cARaCmUjI/BafMMBS
	OShbyK0S7NsVakVVhBPMC4di37if5ePlKzRjD+GcdQ+CjyaUmHzJt07bNQu42aDB
	nIlUYI6k8sfMZbjTEQKa41YRiaeXreNbDHN52R5E/qafzwncU7iaFwjom1g8Rb1f
	Hv4nzvTG68XgnXz7uoQMVUPqb7cA9QMwsFlMM1lj3AHvrhfTZ+8Rlj7Jzd09iudx
	tO+gOPVF28/UYIXaIVF5CW51UdhMXIA0SlO0BMYVP8hrofLC9foRJ2DHMtvG470Z
	SC9o0A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdfjny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:50:26 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3324538ceb0so8812559a91.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 22:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211425; x=1759816225;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5DcOYuuJJ+cW6vFNFMyOqLHX/YGKWTBxTGWvOie70iM=;
        b=RnrnRt8seM6AcA6KuKVMV3jw+LeJSFLnCS+7nKX/NoTVZXTl2omFCvBGSfN9U3wZEs
         JsqUsccA52+B+zvn79HwTs2evnkqfwF22+FeCFgeeXRMchyArYpeFc9WnbPXZ0lkGGao
         UqVBWY5tCJQTFdKNaSDqquRZm6gkKMYTZT4HYiYsmy7sY3Gkund4yLpRnqQuqWrVuaPd
         6qBZzrrZ3v6n4AgVODUToolApM4yJNdXsIdu53gxqT5M/tW3VJnfpaH13BTP8pBosplQ
         Kwy63Qmzs+KlfUqp0kTeCH2F6JPLx4WBW7Y4UoXHg1YYfZBWWytVEzFyxdTE4iDK6p16
         D9PA==
X-Forwarded-Encrypted: i=1; AJvYcCWo+HBwdAGb5arkZ97ihtgm8tdDptR6j9t81rkM96OpO/XXgmGLpyIhvzXpj6db3YKXz1N7knkZsVeu@vger.kernel.org
X-Gm-Message-State: AOJu0YzgZIJOVcCXhPTktCfWV4Yxn3RjAcwudlIKqHsnsSCO1p4dBIZo
	WmnSLyxxa9MdP2vmSDu03AANc9itKOXMGJ2rOL4/ngCQwkQFOPmPfVsRIRc8xuWkGBTrvkhF3AI
	/OxFACwHnL1DdjuCofVYBe2ulgx8bf5gASfRs0eMwqTG0SQ6oW3/oKoDccdTKR9dF
X-Gm-Gg: ASbGncuRMzEJZZsfS5yMS4595Hno1lAym8OX4BunYr5OX0hNm/eSt/UamvSWUziHGo/
	khFrqeSD7pAMWGBLfB+HZtPalJ0MN6m7cCAJPeDGvIVhpVMAeFd4ivo4JAk4CB1WVmDy7+/eGlv
	kb4Tebs+7I47POz5cH5/UCUZNEKDsTEeGieYPA8yXow0wf5EzhSHEKDABWaumn2ouP9pwRdx71X
	U0s41L3qZi+79T+77FhSE8nAsRj7auPVeBywQANrjaigDUyY5Z1kAjhQn8lzpMHK8ufD4/5KTkK
	TJ+0dYeO/VJ4hX3WWvePa44MsYOah6PrCnVUI9HJIe9QAcpeg8yalo1swlZetmyISBIJ/Q==
X-Received: by 2002:a17:90b:2684:b0:32b:94a2:b0d5 with SMTP id 98e67ed59e1d1-3342a318acbmr22583492a91.37.1759211425542;
        Mon, 29 Sep 2025 22:50:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUIQWH84fqllYLQOn6xvNXBsEPOR+cZgKu2hLJ5kpoceLfbQeC3W3x6mtJBPFDPhqUZSJFdQ==
X-Received: by 2002:a17:90b:2684:b0:32b:94a2:b0d5 with SMTP id 98e67ed59e1d1-3342a318acbmr22583460a91.37.1759211425055;
        Mon, 29 Sep 2025 22:50:25 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3341be23412sm19029779a91.20.2025.09.29.22.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 22:50:24 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 11:18:10 +0530
Subject: [PATCH 05/17] drm/msm/a6xx: Rename and move a7xx_cx_mem_init()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-kaana-gpu-support-v1-5-73530b0700ed@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759211380; l=2329;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=r9oQbEwLVJJDIQbYTusbpAt6OAJRxZxziR2i2dJYHBs=;
 b=XtsAQGS6JKr43XfgTE3f3PxKYwJMKqXqAQxlF0DEooff7/mkggdbd/tl5m3RDE7pPZll3vDo/
 khRRRuP4zrzCfhmz8gkqnP94SAjFhZEUgylnY6MbreRTFexF/VIk2LO
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: bXKvZdwCEDCSBSN8CLsgx3yyJFJI8pdw
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68db6fa2 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=HijK2bQ2CIbjB8v2WwsA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: bXKvZdwCEDCSBSN8CLsgx3yyJFJI8pdw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX3RPqypnW1iav
 nGGGEafaogx/j1Wt147SnztulkEiiGIRcgi+/FtknVhwnjq0X2X9PKT99OViY6P29gtveXyY69m
 ioLX4LiBSXqZOHBKrw8PufgDx/hu0gZK0v8NOU4D9YK5EFjFPwUXsGB4FsEN1hcaraSJq83Lftd
 y8kg/tmMjSwgHSIW/LU104fRmibX+MqBnq0U2RXbGGYUiYRa7MJ0WumLvNOMekGENzL8TlB5qm4
 Zyn+0zmv6DcpA+aisfMRvvBwl3Is3olgHi4E8BzgD8C4/rHpZfuDH86bTsSAprDKlAyvaZJ07e/
 NbnFPMPnLhKj3qKZZnl6u1gEryoOsPT5oZ1j18Yabe7PotUeuqtqK/q0SMl0W1DfpT7mJCx+Wfz
 x1QWfd1SieW5TgRujnYOdiaC9s6EnQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

Rename to a7xx_gpu_feature_probe() and move it to adreno_gpu_func list
so that we can simplify the caller.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 11 ++++++-----
 drivers/gpu/drm/msm/adreno/adreno_gpu.h |  1 +
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 9cc2f008388929f0c8e8f70a3e3e79fb4d35ab38..4be0117c3ab1d56dc81b43ff00e3cc48b02b080f 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2065,10 +2065,10 @@ static void a6xx_llc_slices_init(struct platform_device *pdev,
 		a6xx_gpu->llc_mmio = ERR_PTR(-EINVAL);
 }
 
-static int a7xx_cx_mem_init(struct a6xx_gpu *a6xx_gpu)
+static int a7xx_gpu_feature_probe(struct msm_gpu *gpu)
 {
-	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
-	struct msm_gpu *gpu = &adreno_gpu->base;
+	struct adreno_gpu *adreno_gpu = to_adreno_gpu(gpu);
+	struct a6xx_gpu *a6xx_gpu = to_a6xx_gpu(adreno_gpu);
 	u32 fuse_val;
 	int ret;
 
@@ -2621,6 +2621,7 @@ static const struct adreno_gpu_funcs funcs_a7xx = {
 	},
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.submit_flush = a6xx_flush,
+	.feature_probe = a7xx_gpu_feature_probe,
 };
 
 struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
@@ -2702,8 +2703,8 @@ struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 		return ERR_PTR(ret);
 	}
 
-	if (adreno_is_a7xx(adreno_gpu)) {
-		ret = a7xx_cx_mem_init(a6xx_gpu);
+	if (adreno_gpu->funcs->feature_probe) {
+		ret = adreno_gpu->funcs->feature_probe(gpu);
 		if (ret) {
 			a6xx_destroy(&(a6xx_gpu->base.base));
 			return ERR_PTR(ret);
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 77b1c73ff8946fb0f8ff279e16c973cade50c130..5abe442637e321fb996402fd833711f0a948e176 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -75,6 +75,7 @@ struct adreno_gpu_funcs {
 	struct msm_gpu_funcs base;
 	int (*get_timestamp)(struct msm_gpu *gpu, uint64_t *value);
 	void (*submit_flush)(struct msm_gpu *gpu, struct msm_ringbuffer *ring);
+	int (*feature_probe)(struct msm_gpu *gpu);
 };
 
 struct adreno_reglist {

-- 
2.51.0


