Return-Path: <devicetree+bounces-239676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BD035C68578
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 313F74EE4D6
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7CB3164A0;
	Tue, 18 Nov 2025 08:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PbrWAn92";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RqcgrPzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67E92D1F6B
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763455944; cv=none; b=rpaeFSGxgdldIzAqlIpryONTOL7jyac2LdF6BFRS6kRs5GITC3dp18/SK2/0gyonUxh0GYzHbGMVc0zZU4O2CdeVArAWuyswvsOe9pvCfAnHuQgGjhVgkc8b7VC98qEHe+2hKwdZ+3XsWWaZNpy5PJPBvvIM5L0d6x3tZwINgi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763455944; c=relaxed/simple;
	bh=ye3E3o4bkNQLrLn0I1sQjG1xLLVdg0W9qxVP6kAlZGU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J9gvdUhhOyazhlkF/ZpRCKuZ6wY5OQ9eGS5SyqPdtkcjREwUnxbM8rMCIYFagfYGaNUUQtcxMyNUZnj/tnGA0ZLU/AbWqSOCNS20hD5vwGi0NNuoJDNRWcv2sBbbGq1y/qkl1B2/AMmrFROrn4lb8syUdcS6/m6w/6rWu0jIf8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PbrWAn92; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RqcgrPzr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8l7J52755129
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:52:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	knMij2ystjWIyfW63qfz5ONy7pXmsUWRejuLgPEDZyg=; b=PbrWAn92/UAvnxop
	hVL8WnJV+jyrdZzcyx1IT/cxgRshVWUIpNNYmpgd0uNI8bQUiI6E/wR/5qbJuMli
	g4WnDzjNychYcH1QO3cuNwZ9T7MUPXucS7v5Iks/Yf1HuFscEtsB/Arevxk0WlIy
	dzHEaJFVzJevTlVtzBF9+JCLxTJzJUvvbkswwb4TtyTKWKz1PCrkDHJHPYwpoTYC
	CIBzRN8fSp1fVTZPmm6F5vrFtfHBbhXPb4TWUNy5HZ4OCW2ckXGxtk0rU7rzzB/t
	GebM6rn1rYpxTwISucZzRRXNd1PkicUaaqIHjuNqrZiakCW4N002lOqMde/ZBhbn
	bz6J7Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnkj00gq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:52:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29806c42760so191488355ad.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763455940; x=1764060740; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=knMij2ystjWIyfW63qfz5ONy7pXmsUWRejuLgPEDZyg=;
        b=RqcgrPzrTCxJq8Bhw/UTimvzg0yog3Et+RdjIhotC0Ntb1G/qGR4tXCeVldSeGRmn4
         WkGAT31rKPU8iqZ/PYYuQBLl3uQQU0W/raLNkkqu7qdxk4E1EprUxKwKBkqR+Vkj9tXb
         hAIMmpKPacjmQ7r5k0S6H3Naw4tcaGluCodRclbJUD0j6yaGUKzGMvqJ6y/VdOiBmLPC
         iW/I3L7o6X3T27BJKuo5ukk2Q5ruqLebkZ3WQO2mGf5JG1vyxJPOrv4P/MZep6HOf2iP
         P+e/9w78eMvccEha5ViFfCd5l5C3yC3VjyMwX0gWdEDnIJ7J9NcA9Tz1GmljHNOM+A4m
         R7kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763455940; x=1764060740;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=knMij2ystjWIyfW63qfz5ONy7pXmsUWRejuLgPEDZyg=;
        b=VOekqyPx8/PSTrHebfVP60pAdtJ9ffP4Df/7oP1V3Bop846UKk2sfcNqMQnTOQ7M6T
         dw8eFg+5SJXMZ3WPWUoiE1xyHUL/IFa82jIIVkInfGgbblOxAzLXEHEXdMfQzULTQBxU
         rIQ9RMs9acg8/GajcUoqNGW+Wr425o4aBmC9D30jhweQ71umZ5RFNbE1AkUlG2l8VlzY
         Ck1577aS7t5UUuy6dynNsAXftS8hlOEixtskghLk0cy6tdC11DlQ1H9ApzTwc5SHZn/k
         CfLjc7DuAIy421N/syY7Y1gX6inxxgkOi0CtTIGgMAApE8pSRLOm2yrz7JPDIxvbgeAE
         k41Q==
X-Forwarded-Encrypted: i=1; AJvYcCWKVrNV1BivY9Q9QueETuR+tlyeiCPP4+wUxPcxvug15gNXbA6hIUoQYfILkZmUZu7GFUV3twLVnnHF@vger.kernel.org
X-Gm-Message-State: AOJu0YySArFEtKBspbv6o1bsexn/jx7mO00t0nlQm6MVoLBwUo3fwdHI
	08VHQs8Ncc6/QUrpTkdvocFClcx0RalmykzUgJDWhHBmzQhIoo0PP3y7nzsgU4+bh77lo2JPdMR
	x5CelpEziml9hQ2hGKKaFP06agYKp8UkjYTtNDcUVqDIH7vVyg/z6J1wyFvIeSPKz
X-Gm-Gg: ASbGnctzVo+Ghp7ZfIobkoUh+1JJ39y+aFeO8f2kolpSkEiYZBxvBjQ7kgnNteszZJK
	1zUK72MD9AlB0zrMxJuhiBNluNxHYL6/L7dsA+sPdNYTNZWYLW2nFc9AoRThHmV05g3Nim2ibb6
	p5dncHbXHmRZqRVUhg67uQcJDWhOxZR5UqWx9X52GxvIoDFdDFQqEGXKy3KADpyl3qGUZNY1L3N
	yJKlXPyrten+RNkmv9fDPTVm8WaxkgoThDdpzHPsgora46g5FXmr3mMfGhE4ZLObL++ZQPItGNy
	olZ13KmQmGzPVY8T/javWkIVesNCmXMyvb0LN9dEnir5nhFMLfPG4WkHrQtLF08sNxIQIjtxQjX
	8VmmbKQ9WfYBHRETyBN4zqHg=
X-Received: by 2002:a17:902:d4c4:b0:26a:8171:dafa with SMTP id d9443c01a7336-2986a6d225dmr192585045ad.21.1763455939696;
        Tue, 18 Nov 2025 00:52:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFY5DSlIVYM8XbzjgfaGaoj0qv84BBjOFWR74NO9yqLaQacZkB3oED8rW587lTo9DK6YDF0CQ==
X-Received: by 2002:a17:902:d4c4:b0:26a:8171:dafa with SMTP id d9443c01a7336-2986a6d225dmr192584645ad.21.1763455939244;
        Tue, 18 Nov 2025 00:52:19 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2568c1sm162910695ad.47.2025.11.18.00.52.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 00:52:18 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 14:20:35 +0530
Subject: [PATCH v4 08/22] drm/msm/adreno: Add MMU fault handler to
 adreno_gpu_func
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-kaana-gpu-support-v4-8-86eeb8e93fb6@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763455868; l=2452;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=ye3E3o4bkNQLrLn0I1sQjG1xLLVdg0W9qxVP6kAlZGU=;
 b=uO/b3x2yM+ErviiHC5Yiqi/gnDy9JSeF3Bmq3OXfo8eK4rnUn7HPMORG4OtVFdsgLXpz3DYe2
 wILpk1MLNgzC4XeeECdd+yI2O2WBC6cJabZuE7vqvTFBDIx8LII4tbD
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: fZACs8BqkMPTWguy46HC9qOKpmcqjriU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA2OSBTYWx0ZWRfXyTQYYlqnGarR
 C2H3lNNsfUNhrhPaR5eyBSIG4q6Z54yo1kidvd6N79gksS64Ya/hVLwEtgSfiVoqJ6B7y4Q1PPN
 2y4s2v5cX8HnGPACSQHDP5/qaHN34zL/gtwtlkh/adjLLH7e+fW2dY59jqIo+CM0gyprUkjGQw1
 u615u6cPYxsqqRykJLGpFNscOtmHS2nY3PVAJkWroD+frOlskPBEn19YZ91/2K1S6kIxuS9/ok2
 1k4r4ank7+AIU4IBlEF+U4B9+elnl9T+dqqhL6ATLA9nSn825KQ+GP78fM+nhMWbBZ6ProznXCo
 8H9J65ILwNznU0vGbHZjwvIRxTZQQKqJNJyI5LwIo6q5cgQzN3JwxYTYojs1xSpB3xUeuhCxL7d
 ePauB3t2Ye7FK1lUMgad5lnOEQQtmg==
X-Authority-Analysis: v=2.4 cv=cs+WUl4i c=1 sm=1 tr=0 ts=691c33c4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=i9YFFn0sWQDpYGFnbDoA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: fZACs8BqkMPTWguy46HC9qOKpmcqjriU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180069

Move MMU fault handler for each generation to adreno function list. This
will help to use common code for mmu pagefault handler registration between
a6x/a7x and a8x layer.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 5 ++++-
 drivers/gpu/drm/msm/adreno/adreno_gpu.h | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index 575f2f9d3b1d..9edd23d419ec 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -2641,7 +2641,7 @@ static struct msm_gpu *a6xx_gpu_init(struct drm_device *dev)
 	adreno_gpu->uche_trap_base = 0x1fffffffff000ull;
 
 	msm_mmu_set_fault_handler(to_msm_vm(gpu->vm)->mmu, gpu,
-				  a6xx_fault_handler);
+				  adreno_gpu->funcs->mmu_fault_handler);
 
 	ret = a6xx_calc_ubwc_config(adreno_gpu);
 	if (ret) {
@@ -2686,6 +2686,7 @@ const struct adreno_gpu_funcs a6xx_gpu_funcs = {
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.bus_halt = a6xx_bus_clear_pending_transactions,
+	.mmu_fault_handler = a6xx_fault_handler,
 };
 
 const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
@@ -2717,6 +2718,7 @@ const struct adreno_gpu_funcs a6xx_gmuwrapper_funcs = {
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_get_timestamp,
 	.bus_halt = a6xx_bus_clear_pending_transactions,
+	.mmu_fault_handler = a6xx_fault_handler,
 };
 
 const struct adreno_gpu_funcs a7xx_gpu_funcs = {
@@ -2750,4 +2752,5 @@ const struct adreno_gpu_funcs a7xx_gpu_funcs = {
 	.init = a6xx_gpu_init,
 	.get_timestamp = a6xx_gmu_get_timestamp,
 	.bus_halt = a6xx_bus_clear_pending_transactions,
+	.mmu_fault_handler = a6xx_fault_handler,
 };
diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
index 08bb601b3bd3..922d2dee70fb 100644
--- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
+++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
@@ -78,6 +78,7 @@ struct adreno_gpu_funcs {
 	struct msm_gpu *(*init)(struct drm_device *dev);
 	int (*get_timestamp)(struct msm_gpu *gpu, uint64_t *value);
 	void (*bus_halt)(struct adreno_gpu *adreno_gpu, bool gx_off);
+	int (*mmu_fault_handler)(void *arg, unsigned long iova, int flags, void *data);
 };
 
 struct adreno_reglist {

-- 
2.51.0


