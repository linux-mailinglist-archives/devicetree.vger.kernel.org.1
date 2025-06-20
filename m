Return-Path: <devicetree+bounces-187761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B19AE1463
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:56:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 750F64A0884
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 06:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D8022836C;
	Fri, 20 Jun 2025 06:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z7zW9rHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A12228C99
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750402529; cv=none; b=AhLYXKae+gdMON+LrU5kTU7ZB7DsPKtWACuxYEfBzLtY4HsND1SA7U8FQpVLr8QYy80o1AkkMmp20p1i9k7dM2EIROhO2LQRdMTmzLJVKcQuhpS0EvcyVpiQYjLeVn6sBHD8+Je5taRawgH3nDvyElN5YMZqu7bbWcQjGUsgUxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750402529; c=relaxed/simple;
	bh=cb1ncv5kKe+9beezyK8P8PEh4cB50d4o5qsPw+1gBfI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IBew1qDOcMk8J2GyZlNFh31R2Tu4KT5P5zLBlJlpdsqvzCs5k6y6mGO0VSkJHI3d0d2KV+FErASSzsN9caz8Z6AeDnogAxotCEkicPDrl+3EAuS4PBPIfG4LDo+VDr2jZBhjhjQhXFBl9TJXEpV+R+0T5vZvFNg6oNbCyqTmwe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z7zW9rHg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55K5sp6V019473
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/cra5HUnd+Onw8p9cvyHZDcLODFatDJov6W4y7HTf2Q=; b=Z7zW9rHgAvjhnm+7
	kYL4yUZtbz0UIW6nnqrODR/VmfF+4C/5FGxkDS/zx7TzGL8C9Ct2iiAdlwdUKpSZ
	SiAukqYqYzbaxcmKz4RTPXLA74cmmJNFYTepJ36kl/Ew21UnfcnQw3wUO7LwPE3E
	w+5A1jmH402taX7tIQjYAY9JjCgmshTMMQAW/jzUi7xFIcCsfxGstp5AKbgJitbQ
	SVWfbuzSyugfgB4/jWj98hadZnGarfXFrmDy+CI7pw+cXYlyzMIK71KxJHTB2nkN
	S2P37muGUrtu8FvQ+BzKlYl1gG9jtEYfhRGz+lwHnUPZM+O0j1DvBunp3V5nHH52
	5X/gmw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791h9ja0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 06:55:26 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23507382e64so16233855ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 23:55:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750402515; x=1751007315;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cra5HUnd+Onw8p9cvyHZDcLODFatDJov6W4y7HTf2Q=;
        b=jq4WnwbVatYcNiDZtZjeh3PodgX/VV2ud6YWqXdFGNZJvv1WFcfRB9k94B+whs1f4V
         dRiRrXsEEYA2dYOQYOJYn51I57hCsmJR0znAR/FTY5yspmCKFgUbe65PDyG6RzjdHp7F
         bMBrdocIgqKJkA2/gxbuXmdC6ieg/k6AIBxUOfQCtwzZ7gAR38wVmJCXGFiYy8ypmG1s
         9kdih/ljF82d2/W8kg9sM3I9jVAjAYkwe2+3bD8F3MUJ99gcetY2x2ftak4OlBJ1RXzE
         ukkZMzsNKFyjBAQ/Yv7luBdGTy3qSTO1koEdo3FgIMy4yWjVzPZCl7ux20cjacpw4w7a
         IsAA==
X-Forwarded-Encrypted: i=1; AJvYcCUwF4/qwbP4IcW2XTsxObLpwztfCwVki67Vp7iF5lPboRaQaISjQADwUMlx8K5e+vCOz0i6s//UCL1P@vger.kernel.org
X-Gm-Message-State: AOJu0Yybj8cL8UoyP/QX6Sik7ci5ukTI1HxZ+vnzUa7SahQVA7B3xuHY
	boXuRUsYiMznwix5BiRdqbInH5CIvwop46o3c4biyhzS62Qxmqu+2P6O9gSGS72BV6wNP5S5TGZ
	iG0uRZZpEFSNbuz7rAQuzXpl28Xhf58Vjuvq2iEkQHliNd2CLFAuLwQ3JJA0/m+Qj
X-Gm-Gg: ASbGncueaxrP8jY6e19fXLGn7IJdk2K2faEnN+Snwt9Q6CCQ9cyiqidXFzlMKGo6w8f
	I8NbcfKZ0JB0yLVNzXyj6OhyR8S5ySDKAMiVF8SrosYqUeIi4kI7oPcShPBMdN8avZ7JO7BpiDT
	NQqRBKJ4+wRIEbwhxEEHGylvJWVOlDHGGLEQhezJtRekZeOTFV4weFHydWISh0QusiLCNcbQBcj
	/AUEqGkF07KHDP+V6nbjzPhPJYmAwJKeP5lauztS8RH3q1wuTS9WKxpNYA01P3BPwBatgULBCuy
	Zl45qBH1ZNcWrYwJgcNnKZrqIZkoV8JQ
X-Received: by 2002:a17:903:1b66:b0:234:c5c1:9b5f with SMTP id d9443c01a7336-237d99064ccmr28616665ad.16.1750402515072;
        Thu, 19 Jun 2025 23:55:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiXAnjhsU81dzFSNF8XeE5n0aYS1wi4Wc4hIGCqzrClvvAQg3nAWi7A56J6kwNx3saDQ1gfA==
X-Received: by 2002:a17:903:1b66:b0:234:c5c1:9b5f with SMTP id d9443c01a7336-237d99064ccmr28616285ad.16.1750402514633;
        Thu, 19 Jun 2025 23:55:14 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d8701c0csm10636185ad.223.2025.06.19.23.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 23:55:14 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 12:24:30 +0530
Subject: [PATCH v3 3/4] drm/msm/adreno: Add Adreno X1-45 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250620-x1p-adreno-v3-3-56398c078c15@oss.qualcomm.com>
References: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
In-Reply-To: <20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com>
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
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750402486; l=2100;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=cb1ncv5kKe+9beezyK8P8PEh4cB50d4o5qsPw+1gBfI=;
 b=6DsTJ1+fRdhEPD5dnhpU8R/Gz1ebwrb9QGaqZxTAvYnxQjpNbqZZnZeVEtrXDr6XOrbHpho2d
 D3lSYE0SnesC8otPnX0urguqEuklaUZlab1toQoIuaDx+Bast0rjRDM
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: lhk93pyvaMy-nkeL_wlHbC0NdSPW5Ybb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDA1MSBTYWx0ZWRfX+9uqSMEANPaP
 S/AjpuLRlyDF7Y3pWQMs8L9jfBO/n74RAt47b8OnqNeo8Kluh/kMyCeyxuMZyke4KlNKtF2N2Iz
 O8vvSF5ytn1M9MHNPHBQH3gU/xkM6BbzrftktCCoSeKb0XGgCi1SgKkxKIiqZvazNKGL1V13U6j
 LOlQ5J+vEp/PRVIdlsmgR+TpFcsVnNB61RsQ30kh3Scf2a9eE/DZvmG5FacZtN+3SY9394Xt/Vx
 Vyv4EnIIQGwHHin9IdNlZfsKTK2SyzMaqfMUyjXLiHfZjxh5QrIDUEDbzTrkc+rtMMTaV2Kzu/U
 L3G/2IxDJniZhXb1CFC9Vr3D04Qc2nR7370b0kY5hmTi19KEhmrnjx4UuuR6rSRCBaHaWdotuPt
 IIvv+nV8gUOQ5BynPpAa9vQY401b3n3WGUJjPhgPwuMZd+H7ZJjBHMN3nEp/Yf7gijxGE2iL
X-Authority-Analysis: v=2.4 cv=UL/dHDfy c=1 sm=1 tr=0 ts=685505de cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=gxl3bz0cAAAA:8
 a=xcvD53-FQScLkYWh0o0A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-GUID: lhk93pyvaMy-nkeL_wlHbC0NdSPW5Ybb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_02,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=957
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506200051

Add support for Adreno X1-45 GPU present Snapdragon X1P42100
series of compute chipsets. This GPU is a smaller version of
X1-85 GPU with lower core count and smaller internal memories.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Tested-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
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


