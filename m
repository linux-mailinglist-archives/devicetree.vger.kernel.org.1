Return-Path: <devicetree+bounces-184793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FECAD538C
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:16:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9853316EEA9
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D87AD25BEE0;
	Wed, 11 Jun 2025 11:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q28xpXfR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2161DA3D
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749640571; cv=none; b=o++OheXQl0aky6NHMpQ8rYzSrKm0fLcZHiMbH7EiF+010J8gl6PUgfuOx5fxPhkcrMhc3FhDxOiMfjF0pF8xWBkZU97fI05tFOamw5UWSrNM9nEnhueA5j4VDwagIvQ0T34f0SE3lyv8GZktNSF1N6oF2UhpxtQ0BoSCWTKUTR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749640571; c=relaxed/simple;
	bh=nMF9K7Auph9cWiGh0kXvvupbMizZQhoAr4irrlKWwzA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j7+7N5nYWJY8Qwpeqv7c5Qx5JcdBZ7D3vM97hu6jF098nO08IBx4GKk/zXnSXtMpvsnGJtr7uRUCG2ZPGAYZoc3h/K/clkiUbWDL4sIJ5Lg2buowsVwRhs4JHf5iwCe4n5tyxJfofNFVjdtW1RClMR1MwU8K9j04Pb1Th+DSL/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q28xpXfR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DNkF014226
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kptoO2Aza1llV+rVNxYt5GCzthVJqYhfomZaXMsN2c8=; b=Q28xpXfRIXoriJML
	Pq8K026dk+buY4vrjTM7ND/qPGRZkUVeQUMmmN8KUd7+V1NWxuBzgALPEDv+Qj0c
	mHDvxjax79lLC7M4JMXkpMJT5+GkCT1DA0JNV5wHbhwbVfP4km5SCnr9JDYjLC2A
	vAXtuVnUczmrWgP5k6P04mpxaR9TeCpTMxfaDdbDA2gnCtJ2p1Vq3Wae2QKJwEOt
	XSva5CT4tHh7X6CWxENiqepWGq3qDbpDw8yVYroLxeyoS3LefwlbbMVcMbGRGdDQ
	90nYCx2olBY4aOrQuyv9q4+Lw7E60wmPgYCEUQ3E6PGo0dDtKOBBadp4cR0iJTRh
	tKd7DQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmncbs4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:09 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-74620e98ec8so791845b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 04:16:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749640569; x=1750245369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kptoO2Aza1llV+rVNxYt5GCzthVJqYhfomZaXMsN2c8=;
        b=JhvPjkmrQsidJKK21EPefWE1RbmRqP4kIlwP+sBi3akRsxTUbNOtpGyp8IT38MzYsi
         rKs8O/xNOE8fAZIT2hslE4k5uKKwH4YrhSbwD5iI3Tst/DxsxeL9d4o+kAVyveYXnYAq
         Oo1PIbeyjbu3KukE3bF2exha+nuOeRE2C1ejP+MhISbs1NFCEO9RlfrkzBXYVpe+PI2f
         QKA2iTicDOCNnuCzpAv1hAwUaBHz6tNP/MF+PgH2g87RyQdDbcFr0UfBT9ML7HFj7O5H
         uJkrZikgSUKF7jI96xN3HR4DlR6sXxrj7QdXm8HJg0h6D0EdUHKrQAcreXin86mwxtLK
         G8+w==
X-Forwarded-Encrypted: i=1; AJvYcCVUwTIaAPf/gcjfXTH8nrYnKdCPplPMmhWVwmdvLt1zqdsMtvz6ozIMKx4vZbcUfAE16oxyYQs6DXic@vger.kernel.org
X-Gm-Message-State: AOJu0YyhhXstOClRR4wOVjK9tiLVbjMmztyNK8xmm1DuqbNIDUpRw4Hg
	wmtijxBFm9MrK+iwIhIMt2a4fIdzoM2Dttt0aY1DyoFn5SZ9703TdvCnEpDgal3Q1lTj2Rtm9k/
	R3/gBiIBLvliky2aIv5kE2A3uewjQY1oZMrXCq9G4QTvVQs3LH1QIWdW9bWsmIYbl
X-Gm-Gg: ASbGncssTvrb+NJcY2eP+u/vnkpqFJDv+rIXQ0mN6bLnuldHXIR5w2PbkwQsaC6ipjT
	q3tc9dsp2c/x0G1Y9UjcSyyXRjvlr/hmFlT+j4c3ffasYEr1/sNCtKjxtVdkkI6QwU84AEzuurH
	QXBAUXfjxskFCgi/+GS+5YByAbred9+awTYXhXWVdvPqOcclEejRHASh0G2pDqvtoIoSV1Qi7dZ
	InAfR7fXrTz3pHrABXgdz5XSF/CzzZ6ZT5LR8/AFxV2cCGJbE4RuBdtuI0HE1BGI5tlr1pIrYo9
	1eXTuWt4A/3ksb0zZ1TPKsYl6CENxQix
X-Received: by 2002:a05:6a00:4642:b0:73b:ac3d:9d6b with SMTP id d2e1a72fcca58-7486d2bfd99mr4480451b3a.4.1749640568952;
        Wed, 11 Jun 2025 04:16:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQv2oR9AKeWi6BvBwm3nl0UvCjpE79XpYL9hXCh5jA1F6NZ0xrqYz3otpm2s5qxPpHx5fcxA==
X-Received: by 2002:a05:6a00:4642:b0:73b:ac3d:9d6b with SMTP id d2e1a72fcca58-7486d2bfd99mr4480395b3a.4.1749640568511;
        Wed, 11 Jun 2025 04:16:08 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0e9d57sm8820772b3a.160.2025.06.11.04.16.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 04:16:08 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 16:45:32 +0530
Subject: [PATCH v2 2/4] arm64: defconfig: Enable X1P42100_GPUCC driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250611-x1p-adreno-v2-2-5074907bebbd@oss.qualcomm.com>
References: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
In-Reply-To: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749640547; l=821;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=nMF9K7Auph9cWiGh0kXvvupbMizZQhoAr4irrlKWwzA=;
 b=agOSO7dfGn8dIa7XVbLlt4oDG1hgwGxcPdJ+VerIynmrzAOr5Zglz547UxQuM47URqq26uh55
 1s+Uje4N5aqC8m4jFOukj8M61J+FVNVu7dbTpIXOsh6xEwxxDjWEE5g
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: mZDv2jjW2V2v5-ZbfhwAEstYSCB6Iw1U
X-Proofpoint-GUID: mZDv2jjW2V2v5-ZbfhwAEstYSCB6Iw1U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA5NiBTYWx0ZWRfX5tfFanhgODh9
 wjSX/roiu1+NXJSdhIMKT0wIztEknyFfIhdNVJacbxG/jEEtWKh9fCR07RUndt8DdA6iuDboUUM
 yrYj5mEEvVj3bi2wKJi2lINnIUftfZ28l54N4kCZ6500rgBufzvh1Cj/FAJBvKSX6fWL7ABrsRt
 /d2L6+17zfLLjcvlHAYLspbmbqOx+/i4tBtPYsq+3S5dbDDyd9hBmmEuJkEqQ5WOdANVLk92quU
 BIPlGhWyPJDTToNdfwl1l1eLliYHjB2IhqRY0J9AN58J/bE7ZB1KQDDCmo1Guq5LG+WVig/KNEE
 TXnNEBgJhh8fpnI5tWkyvJC5lf4u3NW3+yn5V+FQkM7vczrZRH523+ri/c06/aphWxTxG9h1SoA
 ll4E8Y4TbexE4RyTMSfNzdLwIww8Lzg1Ln5njZ8HMNViDcLrmCK4qBxlIxudOfk8pZt/YUyt
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=68496579 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=-EtVc9J5eg0rhuNXUfoA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=625 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110096

In order to enable GPU support in Snapdragon X1P42100
(8 CPU core version found on Asus Zenbook A14 and other
similar laptops), enable X1P42100 GPUCC driver as a module.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 62d3c87858e1817bac291780dff3823dacd72510..9cc473fd0d3308f7869d00425e17b114c87093b2 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1350,6 +1350,7 @@ CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
 CONFIG_CLK_X1E80100_GPUCC=m
+CONFIG_CLK_X1P42100_GPUCC=m
 CONFIG_CLK_X1E80100_TCSRCC=y
 CONFIG_CLK_QCM2290_GPUCC=m
 CONFIG_QCOM_A53PLL=y

-- 
2.48.1


