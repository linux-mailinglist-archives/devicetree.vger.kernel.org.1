Return-Path: <devicetree+bounces-236823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0309C481FF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:52:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35F2F4A31DD
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:42:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DC823254AD;
	Mon, 10 Nov 2025 16:38:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FylzTH7q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ge298gm8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58336322A26
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792701; cv=none; b=JVHHBypoD6pt4esnmPCFUKXVS3sH8FTxEdeV6waerGAFRK1d2+cyjPZR2MMbYfQ+tXV6LMiVDPu/4RBf/BSG+xzS1rS4kc/y3G9RLM5vfqjFLn5H9KMdGoamEg87z6Cmoz/EEeHGd66TfKyQgofWPWvgPL9ckfXUGvA4QEn4/WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792701; c=relaxed/simple;
	bh=0RH5+HB1DhuPB+qO4uxLrDpF6juU+e+LzCOFWLT2Qxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IEFpMpSCsi9CFyRLmpAVJ7LvBxBPWqcFVlvdp1/5ODZDav3yd0WU2GcrdZq2FVFdsUNoVi1V6BwjO++ufYKZvdJo+xQzg/qIvEicaC+lqU/eEMsEUQ7Fa9lZPsO7GMbtXVpuWAJZloBdiKm6hTw4EnzYQmRNSEh0L6OPV6GtP6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FylzTH7q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ge298gm8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AAGYLUg4070667
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:38:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mcdYC2GUWX3Yt8G/A+qwsr5JfoxF8rsQMfbirKGchD8=; b=FylzTH7qXckURdUD
	OLX83HGhHgJ+Q9hrI7XQQPI62RDSKKMBhh0bziVThWbjjxWf5o05jdu1XEuAvH8e
	y2wjqPz9YWG1klmm6PcsEK+dGJf1TE1OFvEQ5q6vtg4vTtft9dNnvAYFpwAGqYtI
	5cMkGqXJG1ErKfP5JM7siZHbbmnWs/YWf5DSJ0zsNpgkSHyyNeWJZlJCu9fSBCTi
	h22vLn4WnQF6xiaI8+hwlP4O/MMi5QIvHss41z8H5CVHvL/9YdB88qbjl7VH5R9z
	+pplPbbGPpUqPwS7snab8AalsHi+UjuVhJcr9kzTwD78uwY5lHZ24hYcBCC7LlYH
	BaYOPA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abkpj80h9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:38:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3437b43eec4so3281659a91.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762792696; x=1763397496; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mcdYC2GUWX3Yt8G/A+qwsr5JfoxF8rsQMfbirKGchD8=;
        b=Ge298gm8sI4NciAAM4EErctBtZdTgTwCOuQw+F3S09EY+lUgpU8HQn/ijZ91kJAfTf
         5Y1zCpFvMAS3pofT+fCP+Yjx8GTpvwir7TWDIWwiaTKPtwIQvnCCDRqAHXyI5IvVg/Bv
         iJgQcJx+QujBm44R4qynU6pus3sm9veb5BvfoJ425ryhg8JaR67rmFnpdtutUGpsNPgw
         Ahr6kJXBAsr1yzkrlgdm3iLg3BEVjSQJXBV1TvfYGfm6rGJbD9MyaEfsxbBJN82W8aLo
         MwplPuReiQsQcvYLb/3gAEmhWAYHPNAVDo+TNVMyRuIaU61mTk+UH3NUyjSmhvMs0iZp
         qfhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762792696; x=1763397496;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mcdYC2GUWX3Yt8G/A+qwsr5JfoxF8rsQMfbirKGchD8=;
        b=Q+HRHGFBiCCJLFQUaTtDlXBbreYF/mmAQy8xZ3EpdQytuyv6048tgM5BngEm72vWdx
         SC1wlc2emy+Cm+3s3QAkPGov15EoJY2AonCmsGSJeWUq37nZTva0ArkpgxGr7mIil7Zo
         WsFg459jH7ws0Iw9efqF4Y55hD8TApsod0e6jDlNu0WZhJ0wfAuChi2rluw+lFj6P8No
         NTNZvA1Snm4+2SirWnVOZ/ZwTHKwgYSetbccv+zgxWgkD+J6g8zjxqY4KCTaY1WisWvd
         iolERi0TVO+OE9hqw2uV5+bRr09M1TcV+Ck7jK+uDzLOh4umU7r041pITwWpvZM6DcZj
         OglQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnmpBXKlLPbC85roi+A9DfjtUfqXZHE3U0R5KiUpyve+kr9SlGUWmuI6UT3Qu7EF1x0ZWGhu+U9X5q@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs57RxAGn1udx6By54qc+w19AFjUKcZSmpf11Vu8PC0t4tzzhS
	YXt3ZfTMzYxalD1q2O8SiGkyxe6FfpKVMeJEuCL08uIcZHUGpkue3Uoe2rQWwh6gh+bG0NhzoHW
	YJ4OISKoXhQxQP+LswZU/BvfZMsxck7xmYURGFhTFaVZrTPtJf3xbjFhuPjB/rBOm1lLrwS6S
X-Gm-Gg: ASbGncusIqgu9BhiZeWJq/jHNIkmHgqiO0XcvWu/uCU4Yx6FvQu7JJobVhBgw0fXUC4
	6RcxMBZ3D/fuRFzthhqal2GbG6BCqs1LcIt9qM169dHho2xpAob55b0JqqZ0UrymZgWlmGKZLwo
	ECVZLwiMDZl2nglxmS98poqFSy0v9E18vSnG91UDNxD1YKngjbEy6MFyzVpnWofjEUdt5Gh8mpd
	mbb3FiVjhVWPYulxpzzFpog7gY4BxR3bUTxWy3FT/Q5YTJamCib/b6ovFMu7JKXT+y3rznRW2j2
	86omt8lF/EbHFkkkpAu8LSU7DDt/2e0ugy3b9WrEVSFViY426b30WxDJ6n13ULxObXj1Z8ch7bY
	k/axzSXg9Mj5K37CI+qWcd8c=
X-Received: by 2002:a17:90b:3d8d:b0:340:c64d:38d3 with SMTP id 98e67ed59e1d1-3436cba90e9mr15119950a91.12.1762792696049;
        Mon, 10 Nov 2025 08:38:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpeeLzlAYES/pvtPhYhWt6lEiwIUScD1B6YRIb/1r23lLyKUJQumTRvtgD/qeTqkbN1zcfMw==
X-Received: by 2002:a17:90b:3d8d:b0:340:c64d:38d3 with SMTP id 98e67ed59e1d1-3436cba90e9mr15119892a91.12.1762792695560;
        Mon, 10 Nov 2025 08:38:15 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c337b20sm11468922a91.13.2025.11.10.08.38.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 08:38:15 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 22:07:07 +0530
Subject: [PATCH v2 01/21] drm/msm/a6xx: Flush LRZ cache before PT switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-kaana-gpu-support-v2-1-bef18acd5e94@oss.qualcomm.com>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762792679; l=1640;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=0RH5+HB1DhuPB+qO4uxLrDpF6juU+e+LzCOFWLT2Qxo=;
 b=QKpYscsE7JUidxLJTjdztF9wYuuFQ9/van/0jE0PIt/jNOJ6D3vBNzOOdZyJ/eo0wJsHZeZJC
 YOytieMGrHrAXCLYQcFt1IEg81WjWnyBwdBPtLgVa7LKRAYQ44FDAn7
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: 01S_4wBXgGRPBNLOIFKZPVWDlv6aJNyr
X-Authority-Analysis: v=2.4 cv=GZoaXAXL c=1 sm=1 tr=0 ts=691214f9 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bBR9okFf-Jgdumx6fEkA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 01S_4wBXgGRPBNLOIFKZPVWDlv6aJNyr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDEzOSBTYWx0ZWRfXw99vPj7Suw0Y
 bgqVlGWEjMiqbC2UlSuzsKSAnW5DceW4331gNN2eXEUoAm4tuti30pXvdNn/GsigYf9+Y7Q8i58
 TY1uVbB2Slx/yxJK5kV1NTHvxpH8fVdqo9pJjcptq4aWP7pSitl8qWWFx6ZgXGwum5ymocjv6Y6
 Yxj8nd+RPI1KRx3FJfnZgMsWu32LwpH95y/NuzjEEvDPiOHbylW97zZ5JsH+SLvuz8kKK79RJE1
 O8ZqEp9yuSanjSqZKLenU78Ej3ose4jVkC4jvXQqcMmXd5yWv78dmqhkWbtqNgtIiyEPtTiVbTq
 pyDijYRapf2aQ7T4Y+iVqMX+dskzAen9sF71j4KkEF/05JFySCw5fx7K1MJq+v96rLpsUXldXFP
 +0U6H+OTXraOYtag1WIaSTGFpFg4zA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_06,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100139

As per the recommendation, A7x and newer GPUs should flush the LRZ cache
before switching the pagetable. Update a6xx_set_pagetable() to do this.
While we are at it, sync both BV and BR before issuing  a
CP_RESET_CONTEXT_STATE command, to match the downstream sequence.

Fixes: af66706accdf ("drm/msm/a6xx: Add skeleton A7xx support")
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gpu.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
index b8f8ae940b55..6f7ed07670b1 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
@@ -224,7 +224,7 @@ static void a6xx_set_pagetable(struct a6xx_gpu *a6xx_gpu,
 		OUT_RING(ring, submit->seqno - 1);
 
 		OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
-		OUT_RING(ring, CP_SET_THREAD_BOTH);
+		OUT_RING(ring, CP_THREAD_CONTROL_0_SYNC_THREADS | CP_SET_THREAD_BOTH);
 
 		/* Reset state used to synchronize BR and BV */
 		OUT_PKT7(ring, CP_RESET_CONTEXT_STATE, 1);
@@ -235,7 +235,13 @@ static void a6xx_set_pagetable(struct a6xx_gpu *a6xx_gpu,
 			 CP_RESET_CONTEXT_STATE_0_RESET_GLOBAL_LOCAL_TS);
 
 		OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
-		OUT_RING(ring, CP_SET_THREAD_BR);
+		OUT_RING(ring, CP_THREAD_CONTROL_0_SYNC_THREADS | CP_SET_THREAD_BOTH);
+
+		OUT_PKT7(ring, CP_EVENT_WRITE, 1);
+		OUT_RING(ring, LRZ_FLUSH);
+
+		OUT_PKT7(ring, CP_THREAD_CONTROL, 1);
+		OUT_RING(ring, CP_THREAD_CONTROL_0_SYNC_THREADS | CP_SET_THREAD_BR);
 	}
 
 	if (!sysprof) {

-- 
2.51.0


