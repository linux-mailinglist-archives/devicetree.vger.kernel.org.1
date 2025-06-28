Return-Path: <devicetree+bounces-190629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C5AEC449
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 05:02:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15E201BC4F6A
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 03:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95A8F19E7D1;
	Sat, 28 Jun 2025 03:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BPMNTleF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D1BE552
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751079762; cv=none; b=fwzr0eVQAEHjXK94yDMyAyOGjdgl1cSVDoihzrScDGA3y0HIU68ATjPqh4uslH07hAdofxFb4ZlJXCJWw5y0Uu1XEQeQCPBQ9O5eCqBY8yJLqcYeyG/ZrUOd0LJNChGs19q+HkC1H6Y/p5SJjNuF7q2NXJyU8TDu3dES8/1nXhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751079762; c=relaxed/simple;
	bh=HPCRtSTGwz5zkPqvv1wbF7TQq1M+P6roUP+I7n1ctIo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KYhyTj7wMoiSNQIy1hRKV9nrHzIZPuUu7sLMUddOoJC6odFdVJoNpTI3D+4vfqQ/YG+1ayZu6dgUHQyNNr7OVPm2Nnlk/YaiSMuqI15Rl2CaeyKnnE1iRp25t4eFgkkEwv1QziHub0+9RhmZOR/UwnOQrEHzv1Tc5P8esljXjGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BPMNTleF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S293TX024551
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Ca0LgcLkNFqV2mw7hYegHH
	5vRj8FHsSnureGggYKmUc=; b=BPMNTleFOulZunmD1KM7BipbyeiJ8tavf5pOF3
	6uo4NZyVT1sJvI+3zPAIX6Aouq0sXvc5ssVoXLh55jtjzw0Ye9GBNJAOCnnT8sjI
	y4gK+6w4i1mfFGsfBnjpy5kFfow+UkTRb86rnDJfLGbrLG/vR5j7n170Ikf22sDH
	IUspdgDVpI04tbmCpmlvUpfFqQtXRSaMn1DgvqK22x7QYurxoStRr6cvSwYSXDth
	ENBAR2K7J9zfYoJc4rQj/cEmOyZX4VtrBZi92EGLH39uSQiPBO3e3fGGNKwfQDhT
	l2VeRa72kfW1tgJkhPemrP70msCUQhDstFMM3H46mGoQHKRQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7bvg1s2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 03:02:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09bc05b77so62612385a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 20:02:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751079759; x=1751684559;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ca0LgcLkNFqV2mw7hYegHH5vRj8FHsSnureGggYKmUc=;
        b=Gtv5eQF74CXwZCJwyDOSaJ7yGtBP2pfrtt+LFpt1+t6A9ElG21IxhwYh33mDXF4lDR
         OKSlohgLt80ivOTrouLOILSqtx1C3sycZkEGiB03A8UjSUk+xMaXmjbIrhg/n9a6V6U8
         OnVJty7e9UJKsKifzKXNSZmP2gnKg7obFa+qY5qg6c2zg/gudkViTItbwVt9TC+3KcGW
         uBYQd4t64ysPRvMysaXKHs5MBISP/I4K30aJ0Oc20T/x5vtJMlK9JksU49TFBuK8uhma
         ejLYxvfuOIGXd7d0UHf/ufP+siJfi2+wpx6Ygalc8ujMV7nJHYe1TE0dcJdxGocpK+BG
         wFXQ==
X-Forwarded-Encrypted: i=1; AJvYcCWt3SnUv41OpC2IlUgDdafWfg7x83lIPXiEctKC87BrsWfTo9QyUHxUMXqRr2kznn0L0TrmEs2v3+Qy@vger.kernel.org
X-Gm-Message-State: AOJu0YxfbKSgnhSeh/mkpYnUANJHGj4bkPVZ0Bxo/2+gDGKhHdy5RfwV
	45Yxohd7HLBvwfRhEBMM2jT0RoHNSOZrRLQMtBjY1wueokPjWgmLa//n8PGnF/zn5aisCciFp2R
	3FaChwQf8ehEFHXXdkIPN+GkPn3eT/WGEYHoyNDgftr+AytwL3p46A3ZSMEnoeTYE
X-Gm-Gg: ASbGnctz/22EXD3qCsVg2LUG+pNX2OHXs+QJbPyAeVwQKiwGAC1Vg6y5dFLngdiGY/U
	qF2NSbKjJAOdmpoSSbzq3Eos3xAMPl6GGarNaqcQtwcIV0OFKN8hpjH59Psp7HFUY4PfJWrXYDL
	aBUra2LKqGaW5j3ARsJXxhZjPchONd9G2Lgb++TpxUN1Xa/1QkRWKPA9n+FRoknXgfb8LTzhqnm
	+GMWkz6cz1dqTCIRsJ+WPAJ2hvvAXgoHxKYeFMaZ7N4t+NUASt7QEbAQAZBfHYkR9PVZdiZ1Dij
	F1PcJWoTy6AA4V2PBZYf/nuSVpMfUX06fMYlyO4lMOhNjD66SLyWZ56Y8ZlXjOs2cZ372+AAfbl
	xj4HYpD+QV4xk16wdTqSVyhVTs1DgzFFY7E8=
X-Received: by 2002:a05:620a:6188:b0:7d4:3af3:8ef9 with SMTP id af79cd13be357-7d44394f4b7mr697101385a.19.1751079758756;
        Fri, 27 Jun 2025 20:02:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDYWANWNuy16+nJ5OMuX7E6djSxIFc/7BaQQh+t5tnbRh+Z++1SUzPh2ZlXOCteDcaEDP4PA==
X-Received: by 2002:a05:620a:6188:b0:7d4:3af3:8ef9 with SMTP id af79cd13be357-7d44394f4b7mr697099485a.19.1751079758366;
        Fri, 27 Jun 2025 20:02:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2cec36sm652162e87.180.2025.06.27.20.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 20:02:37 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/3] dt-bindings: display/msm/gpu: rework clocks
 definitions
Date: Sat, 28 Jun 2025 06:02:34 +0300
Message-Id: <20250628-rework-msm-gpu-schema-v1-0-89f818c51b6a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEpbX2gC/x3MQQqEMAxA0atI1gZqpGXwKuKio7GGoSoJzgyId
 7e4fIv/TzBWYYOuOkH5KybbWtDUFYxLXBOjTMVAjrwL9ELl36YfzJYx7QfauHCO6CK3zk/k6R2
 gtLvyLP/n2w/XdQPrpqSiZwAAAA==
X-Change-ID: 20250628-rework-msm-gpu-schema-0ae305d252b6
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=817;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=HPCRtSTGwz5zkPqvv1wbF7TQq1M+P6roUP+I7n1ctIo=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ0Z8tI/AxPjWoLQivp0SXotle4rlTAWfH09VX5jHkLlKh
 nuBDl8nozELAyMXg6yYIotPQcvUmE3JYR92TK2HGcTKBDKFgYtTACZiwc3+P63z0bcTDGW9UV+m
 ajLa/z8o08CuXPaucf1774fKHzVuNa/PensxbzK7lLBM17rURaeWfOc6zOvx4/OHbq7HhiLTFlk
 u3ebXu/DC26R415k906TDz6/40Jz6JMLLZxkno9m5h7vXa7lrMFzsyGlKSpJ/bFRR0JJ8We5n7c
 7wJJbwsxe61t4yvPSpcga7X27/gn9ZR24mRO7f9U+s45eeg+rmyRNPT98rnhL3wkPu4MHpHMlnU
 qZd1koJrzwUZ6pXH5t5M2ZhEBNjTLxBlcq+DCX2R5Obc80ubvVz9nGM6BDneNG2ga8mvGHq/IZ3
 b35IpyWWm599Y7U85dOsC97rAtSSlHeHJ1+y3bbhjf9GAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: FLeIaVgiqgu-jdBv7l8h-aXhGFYrLI7D
X-Authority-Analysis: v=2.4 cv=RJCzH5i+ c=1 sm=1 tr=0 ts=685f5b50 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=h7DytwQeoaBOExqUImAA:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: FLeIaVgiqgu-jdBv7l8h-aXhGFYrLI7D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDAyMyBTYWx0ZWRfX7PRFMmcwze/u
 rca2Ybs+jRSb9Igw6DFIK2a2Yq8Nk0kmJ2V5r3XpQIBcmsim6xdBgEnGk/ulMytFdwTymdj06LN
 2BzBD+zAg/peLAweFaNtsIA70U1/eEyyxghMcUepWtFVXw71FHSOPHESJQOwOA9zeYXvl4UK0Pz
 1RkqzC66v5g9wV3BCNh/pRHqFwLzLmsLVZIa7CShDbv602ey9hwkDbsF4cT9+z1N3ifUKdgM+hA
 LjBTvKYTo1FpCD6SMD7SyjNMA9+aqZ7Tp3GIE/V0MgsR4dlMhf5dSTbht+yjRdvIlcPB8FXyOUV
 6OMFWRwWv8WXtHuC/C8m2M+JujW0Y4rmGBzn7eI3/Iv823QEE53Nf7vFwpoRc9TdEFVpiGTW3pG
 0A/8+NGLPqHaiSiqDoBBrXVAebbtWL/UyGlo/QrHHDBQuTOsdofrtfdiHnqDLyT+ymNeTMwC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=937 adultscore=0
 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0 phishscore=0
 bulkscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506280023

Currently MSM GPU schema defines a single statement for all A3xx - A5xx
GPUs, listing all possible clocks for all generations. Split the list
per GPU type, listing exact clock names for each type.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (3):
      dt-bindings: display/msm/gpu: account for 7xx GPUs in clocks conditions
      dt-bindings: display/msm/gpu: describe alwayson clock
      dt-bindings: display/msm/gpu: describe clocks for each Adreno GPU type

 .../devicetree/bindings/display/msm/gpu.yaml       | 223 ++++++++++++++++++---
 1 file changed, 198 insertions(+), 25 deletions(-)
---
base-commit: 2aeda9592360c200085898a258c4754bfe879921
change-id: 20250628-rework-msm-gpu-schema-0ae305d252b6

Best regards,
-- 
With best wishes
Dmitry


