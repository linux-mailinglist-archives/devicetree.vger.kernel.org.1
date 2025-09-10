Return-Path: <devicetree+bounces-215397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F42DB51591
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 13:26:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5547E188242B
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 11:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87B283191DB;
	Wed, 10 Sep 2025 11:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RwfUD00L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30A1318143
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757503575; cv=none; b=A2LhZDy1VIoJ0oYAM5n5xxaVTa8z89PBspLsMbo2iJj57v4REVfIEpjVN32D/GOibD/nECs4bq78tnt02vWx+Ig8+Y09hR+fZKlB1XpJ/Kceu3lB4Kcvh/3IGpIF24OuRkT7BA0hiN977fJPA+3434in26v5JTmv8oDcSt95Gfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757503575; c=relaxed/simple;
	bh=uzPVmN95UYA3m4eO5APKZbdkhOvUBX1OERZwHXJ9QPs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CbjOrWoVHWahudep71VHthbzxRgvm3yu8PYVkVdBqPT6kRfVcflOWpKfjMle24eyKFoJt4+lG2fAtehEnqPdd/CW14w/XdjmRWp5a1PF40DdlRhqj+Es/EEiMb816Jqy/VooohdC08RaWcaMARl1BA9yAMBCv0jXn3nEPbEQ0i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RwfUD00L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58AAF6e2031869
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gt3lMrqxrsh5HFvqVveVdKW5qqiAGEIrNSWV3HoZYpQ=; b=RwfUD00LFWtG3E6I
	qKtyTpK4TrrkwOlzlHuWsp++82VkijRFCSQvCmJddvXXATjlU+h3uIzB6pZsxbRC
	fYYHhj28oiWAfiiQFMeVSDMZ7dozANHrVlGmLGMoh/Nd3j+n90/+6tlUujQ6xHDz
	styoXDDMymUjx9dZGHlS11AqskLNnd3NBFT8mmoE9jKDVf+eFEI9nxvdNGlIgS/a
	vErf1RZUznb/WyfpL0HTZvayy5T75hHKMoZV4MbYDAedpSsLWX7iHZjO8PLzVrBq
	nzcxj4gTs9x3eVCuZLGkx0tgOG9qBCvptcGGObZxugE7BOgrW/csjBCm3hgqYFFK
	2QFRSg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by93np7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 11:26:12 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77253535b2cso6605761b3a.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 04:26:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757503571; x=1758108371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gt3lMrqxrsh5HFvqVveVdKW5qqiAGEIrNSWV3HoZYpQ=;
        b=baOU4pj3DxUdeHewIRaErHpLvVmdv8L4sErhL6YM5VAAavsJO5hsYYyJE+pt2Z/U11
         Kj6sTgQqopqrCGtLluqkPkqPvlDRUHqEk5nc5IeukofFXJF2zzTZpebPs38Mh61+XVjV
         X+JZrS91k/wbNmVYFLg20f47CMNHBX/jnnsNyh7kgSZwbR59LmnoIxgHCIz2RxciLVzi
         sTwebbNiQqN60QI94A6LvORJq4wB5L/qkh56q+PvBbIpOr4ezc3Ryea2jtROXrUxAvxJ
         V0xZjRMVzFjfGdafv+Jy50J2jPf2SKyri9Jteacd9TU6bxfgjdfwvrH55U09dAv9Y9We
         CDuQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqNRVURUhC+NEscZ73jg+WVPqL0UblZ9XHUJvrK7+FuOWwA56Q9NuSY3OEuDm2oVanQkw5MwAjasFY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4c7wxJUn80JHtOBmFX11L4LmFpYcFAAgFePIsgQanUubmTdJk
	k4B5soHtIZZg11gjcLakCLpyQteBCu7ljpEA3stfKvF1f38H9+c21Muj+Wm+u32QKdRNFP/D+le
	mnN2llzna4vbZfk/bxS+gryhUz4uocodkECnBZzzJipgw+nZj2RRVrGILWEDIYpZi
X-Gm-Gg: ASbGncu62i5083u61Y0+YU+5yUwBkd2En8qnSwJaFwYOboFBT+vZaCSPodn9Sm/9m+2
	9Qd9a+yYIGW14dFI4AAlohIyDHSVZYQMH/zOvY2/VxH3NbNz3/rzmiZUyVVJOd7rnSGAZqnKM5L
	Gdp7aHH9albWUIUF7Lq66NJuGotqq+IJdg+/LRHmxjfwNhqO6tFl9muzn82uOBTuF2jV9fG95A3
	8EaEvkWXuR1mHXV3SCVaWQ+kCdVtWTlrqe8js+ZKCT39Cld2nL3rnBrcXX1rkb5Lnuf0sd29C+9
	6YMneBsc87obS4B4WYZJmhlniF4ACRKkd5OibIadtJGp2Lg06Nostcefd6hhUYq0
X-Received: by 2002:a05:6a00:14ce:b0:772:3b9d:70fb with SMTP id d2e1a72fcca58-7742ded7359mr21704533b3a.31.1757503570716;
        Wed, 10 Sep 2025 04:26:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGL+jXRvCFnuy9K5s7zAAadG0Sf39RWmu+cwoO05ITAyVd+5McQwptiwhwv3oQ8fuawRfi01w==
X-Received: by 2002:a05:6a00:14ce:b0:772:3b9d:70fb with SMTP id d2e1a72fcca58-7742ded7359mr21704478b3a.31.1757503570177;
        Wed, 10 Sep 2025 04:26:10 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-774662c7384sm4862260b3a.76.2025.09.10.04.26.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 04:26:09 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 10 Sep 2025 16:55:21 +0530
Subject: [PATCH v6 1/6] drm/msm/adreno: Add speedbins for A663 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250910-a663-gpu-support-v6-1-5da15827b249@oss.qualcomm.com>
References: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
In-Reply-To: <20250910-a663-gpu-support-v6-0-5da15827b249@oss.qualcomm.com>
To: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757503556; l=898;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=uzPVmN95UYA3m4eO5APKZbdkhOvUBX1OERZwHXJ9QPs=;
 b=U1kGtdA1U9VR5G5dL7kDdE3dQA4lZ77QOfk2JkSYOMau99SLXDF4cj/W5i6UUvvnnF1JCd/cA
 NOgMg7nJzKUCKhcldklSwobxAc4fXE5pFPx13Sljlvxso5+uZn5kWOc
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68c16054 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=92do0itG5Mw8xxZS-WcA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: ZTPygba89dxMqP7Up4-Q1cFxgpVjzGFV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX9L6V+GrQDFDD
 0sX1xbdIPixxZL7Mcq/KhVlYwXZrzzvEAPn6fXpooZ0JWq4rYigaMO7G4GWvMR3wM3CgOkIlsOB
 AwCdyZycQIuOM6S21Cr3woHwfS5KJ5eDRcD63cbFxSGJIAgTJgwSq9M6YRWyxfz7viXsy2vCIzl
 eggUxo5gAYmhQt2rSeVVYXEhJcpC3UPCeoHcW/+G4Y1X8Q3R4CjcsodFbrFlzFIeoRh5vg9xaKW
 cB155hXDK3CCVIA6B2yCFPunWTAV4VM8PRM/VRTTtH0LXrn1vK/nQ4YfUpG4oRnsWVMQ+1umQbd
 TEdlmMqx3+d+Ks1xYw73Gr5pda5QFoJor3tUydRktWOUIf0F2E4+LLmdSVTd/nkQxqGyMSzoV4k
 mIT2aWNz
X-Proofpoint-ORIG-GUID: ZTPygba89dxMqP7Up4-Q1cFxgpVjzGFV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_01,2025-09-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

Add speedbin mappings for A663 GPU.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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


