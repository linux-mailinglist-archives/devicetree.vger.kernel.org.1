Return-Path: <devicetree+bounces-188630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46AC0AE46A2
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:26:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 08F574A08EA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69683255E53;
	Mon, 23 Jun 2025 14:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qr0/5Lmn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE05D255E2F
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750688076; cv=none; b=lgBOQGMM6ngjeJobGJUcDbSkzMCkB9jOja4jshsDO15TIv5HvGrh3HyfBi8DrQvBQOKQ4CqZEQ4LDwVtW+wnFf9wA0JrrOzX09j6uHODbc1Q29lETYu7gzb8mFd4qI7Ey5F7Q6jIsv2G9uEA5MXwYrqiwikBnndsbJ3FoivD6LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750688076; c=relaxed/simple;
	bh=xKZ9Xj4qiPD/2Zmj4aELMu3Uy4uODXqfzQQwFPTWu3E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P9eglDPNfWxihBvlLJLshmrhdZae0FfnvPMVhhUuchKqvzsYCbW+y09ycMbcij8CjtOshzKQybjGxEiBbruNt7XR8bq3I080QtXuiMe0MayIxDlPzwHdERw6cPQhLNfEjL2I0dc9Ok/bt62fMtt70urn9AKFK73fjEwYhMsjqzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qr0/5Lmn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N9JKF1013471
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IDdT8GmCmZBkVRDlqMB/TVH3NvJZR5f0rOeZUeSRtHg=; b=Qr0/5LmndzZH7Vy0
	9zK1b+MKQSOhlFsqy/SIVY2SW8wRk3lCJJPoRedx8FZgxUr9nRT9mRUdal33qRpD
	SDPDSp74oKrjJfRHJO3BoSK1Js292xtn1hZQ4mAtC5mJ8LuF/9OFKax3y2kPjC4h
	t6QZf0UYD2JkojDiq2Ao7RYqWkiX41bTauRD2ImU/LFnD5w0JZzry+IQH7L/pOxe
	0Zr+kE1jJeWEGnW/OQaEhU/JjSJ29RSzWfaWfTk/bB41Nitf07qf1Ge2k5/cEXZ8
	QbNnFZm0mTCPILf43q4qVNf2vE5ePBMEUrQOjHHq27WwFKEV5HM5HTpsbkMQ92tI
	7MBqIw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eud0a351-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:34 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-313c3915345so6586771a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:14:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750688073; x=1751292873;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IDdT8GmCmZBkVRDlqMB/TVH3NvJZR5f0rOeZUeSRtHg=;
        b=ePUsR9FuGagmQ2AXm7VQP8txxjiWVWzrtdD1vhLugthaDH92BI/FKhcHUquiK/0ccJ
         aSilxVfI1l7au94+p39K/o9Hv4VuMZWKfABTLoAHjaQTVyoRJ4D4qJD3kyjwd7AH24+p
         SM8tc9jPet26XFEFTeCYq5cvtlYGJH2FLK9t+58THO0wi9nnyNoHFLaFztAZFTAHNw3e
         wy9GBCFE8kj1kJBK2h1soW5dxyc2D5wdRKP4zzTtnm0YUH1qL7bFJiUH75EIP3KIhhuo
         yUVN2IWjV9e/f+sWoAkt3LubE8GYdDnsJhqhsPIr9fPjkwWSRl+jvBA0bRBG4tUW99RG
         q4GA==
X-Forwarded-Encrypted: i=1; AJvYcCV+4OhUGqNrXcITKcG2lwHTnAoAP7VYuuXwUMthOvOb+AkHySOmlRUFM2ckp1rVVkMqMCCZ54TU30TH@vger.kernel.org
X-Gm-Message-State: AOJu0YwfDV+aEcxoxjfOwtThLcUZ6iSVa/Dm9xRqLFeaGWGJpxu9bNAt
	9GKEvpjk0L19KeiiwiL8W49isVWfY1ob1RyMdkyHnf+IoLK/ksU8tD7tjcUOXEfXAwpPlEUD8PM
	G70JEfy23A7hXHXp0crKTydrpZ36pw4N4nnuBMfpMMRuTMIqd8UlD/jN7dnzgXBkziz5MCQFu
X-Gm-Gg: ASbGncscq1xDqeA427li3us7y54w9zCAMNIldhv2FoLq/nwdFMWhw9L19MnLGfUMzgc
	yQ8U+Js5v7xXN5Kt7m4TMItJUi4hCjHTgq0gQwnuUKAcu1tA6AIwJwbgjeHIy/VORYM9JIhqfF+
	8S0pbmqIhdFgk+aK0b2AF67ZDomZUrU7NZ7w2hSfq/Vfcc1ljX8TPsKU6cHqWyUevAPIvUox9sb
	gL9JYh2MqUQXLh5IALVC5YmZHxwN3zj1THWEeu1Yk0MKF/wUyILdlpXTp8TTEpHSvwiTtkALFU5
	EM/fjLIA72TI7eS1xarthoaWOYbqj9gr
X-Received: by 2002:a17:90b:2651:b0:311:ad7f:329c with SMTP id 98e67ed59e1d1-3159d7c8f9cmr24187367a91.18.1750688072956;
        Mon, 23 Jun 2025 07:14:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFohlIbDHPnzGFzoVo8IyUWv275ozTxbFgCP3ruQsyFrF9oyTg/DjA45LUYjJ+1geRNvBXBeA==
X-Received: by 2002:a17:90b:2651:b0:311:ad7f:329c with SMTP id 98e67ed59e1d1-3159d7c8f9cmr24187313a91.18.1750688072479;
        Mon, 23 Jun 2025 07:14:32 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159df71c4bsm8112049a91.2.2025.06.23.07.14.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 07:14:32 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 19:42:08 +0530
Subject: [PATCH v4 3/4] drm/msm/adreno: Add Adreno X1-45 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-x1p-adreno-v4-3-d2575c839cbb@oss.qualcomm.com>
References: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
In-Reply-To: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
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
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750688040; l=2172;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=xKZ9Xj4qiPD/2Zmj4aELMu3Uy4uODXqfzQQwFPTWu3E=;
 b=nyiUEqvVCW+25SYZKCQtGlM9mIdhtcEW0YGblasDdcsi9vA0hNbTrMnvW29/s2M5+bGhB9XUq
 aFcV0xh4x86AEvTj2u6wD9wWN3yobWDJ/JNXPBpIQzwfyk7yvN++lw5
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-GUID: ZuMrfZl4wjG2vv0hqJLsRNo_QCrGxv3J
X-Proofpoint-ORIG-GUID: ZuMrfZl4wjG2vv0hqJLsRNo_QCrGxv3J
X-Authority-Analysis: v=2.4 cv=eco9f6EH c=1 sm=1 tr=0 ts=6859614a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=gxl3bz0cAAAA:8
 a=pGLkceISAAAA:8 a=xcvD53-FQScLkYWh0o0A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4NCBTYWx0ZWRfXyY4M1A/T+1iZ
 yKUlqqmIY65V0ceUqkYKqhsaNtsAYso/hTGlusY3VHzPOgJkRCdKFC1qgVjXgdJUrUWbvtKfC4L
 v12UFryJR27aMXFNL9+hpepoHumLGvsWN0cbMsnhJ7W53S+ATS2WevFX5Hy76mPTLc+QLy4gPeh
 ce7KkTtNnFx8E4l8dtcdtdNkhpA0u92E+tJPvMd2VFUUo0dKvOvgtkeOCLAHk7Uf6stnJoi9H47
 PRAz14EcsjPbJyh/6Y5zuE1OBle0uNP15Y/atho79ShKYtt1yLnPn4a9NZxBDHDW9faqJK5LsZu
 Dc7mRovUrePXK7YyPGE3J9UoETCLxkz2lYbJc5qlHY7U6np8K4S40pe80uBPM5mc6/VWAtDyNQJ
 fiHtz5KDVgXvVb0eX8o2gXfeX59lp5LHFXAdwb4ye4g6b5pSTzeIAQbHHWKTkS6mEUVVI9SQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230084

Add support for Adreno X1-45 GPU present Snapdragon X1P42100
series of compute chipsets. This GPU is a smaller version of
X1-85 GPU with lower core count and smaller internal memories.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com> # x1-26-100
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 39 +++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 70f7ad806c34076352d84f32d62c2833422b6e5e..7748f92919b883bbcea839a61158ab52e6e4e79d 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1474,6 +1474,45 @@ static const struct adreno_info a7xx_gpus[] = {
 			},
 		},
 		.preempt_record_size = 3572 * SZ_1K,
+	}, {
+		.chip_ids = ADRENO_CHIP_IDS(0x43030c00),
+		.family = ADRENO_7XX_GEN2,
+		.fw = {
+			[ADRENO_FW_SQE] = "gen71500_sqe.fw",
+			[ADRENO_FW_GMU] = "gen71500_gmu.bin",
+		},
+		.gmem = SZ_1M + SZ_512K,
+		.inactive_period = DRM_MSM_INACTIVE_PERIOD,
+		.quirks = ADRENO_QUIRK_HAS_CACHED_COHERENT |
+			  ADRENO_QUIRK_HAS_HW_APRIV |
+			  ADRENO_QUIRK_PREEMPTION,
+		.init = a6xx_gpu_init,
+		.a6xx = &(const struct a6xx_info) {
+			.hwcg = a740_hwcg,
+			.protect = &a730_protect,
+			.pwrup_reglist = &a7xx_pwrup_reglist,
+			.gmu_chipid = 0x70f0000,
+			.gmu_cgc_mode = 0x00020222,
+			.bcms = (const struct a6xx_bcm[]) {
+				{ .name = "SH0", .buswidth = 16 },
+				{ .name = "MC0", .buswidth = 4 },
+				{
+					.name = "ACV",
+					.fixed = true,
+					.perfmode = BIT(3),
+					.perfmode_bw = 16500000,
+				},
+				{ /* sentinel */ },
+			},
+		},
+		.preempt_record_size = 4192 * SZ_1K,
+		.speedbins = ADRENO_SPEEDBINS(
+			{ 0,   0 },
+			{ 294, 1 },
+			{ 263, 2 },
+			{ 233, 3 },
+			{ 141, 4 },
+		),
 	}
 };
 DECLARE_ADRENO_GPULIST(a7xx);

-- 
2.48.1


