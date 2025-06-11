Return-Path: <devicetree+bounces-184794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C486AD5397
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:17:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0AEB07AE4A9
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 11:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B359B273D73;
	Wed, 11 Jun 2025 11:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cQLqZHu4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3305E23ABBD
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749640579; cv=none; b=ZidCiFrtg+BpSDStUePJJD8J1/nGnwdLLaMzvS8hLsH15QqWUVYllzYBxXFXXePOSsiMtMUT5yjS+jkuRyznkZOgm1P6cEAxgvuwkwf8xBExqos9/MeAF7PheGwEYuMdancqRqJn7U4k3HJS73E9/SLix6Zq9kVpw6dPLWwOxO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749640579; c=relaxed/simple;
	bh=+s4ITcXnEPYZYROUKwHmQyjB4wKU/KPjLzqOm960DLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HB556mSQjxbQ+BO67seS4lSCJ1waoGx0MlLcnrEz36vHDwWW74XG0XVb/iqvZrv74AM8GQiKenFxrxLNqD4RKq6AYBtDdOjazbsDdiqjYjXm1Mp1Khi/6GvZpDpRlTMa681Mxb3JMOYNElfkyMURt5OprMCcsJAAoa5FUnA8+Ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cQLqZHu4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55B9DF6L011018
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V3j1uc9440Aqe3s91zqfhD9O3nYuGwVY1biiyW8GV5w=; b=cQLqZHu4SR959/cD
	TVEoC9cM62pYtKr1pOEuu/dPCBJVrmgCV6r3nt+B9H/IJRBngV3bpbKVaauWrxOX
	NtI1FB6Q6bB3lP7NKFPMkU8JssHjvBolmsvNzUfGKlFAULd04wl1UrbHMZeCVVlF
	IzmIwYfEmm1NEwm/iB6Ww8iyai/spB8TU/Jr+ddaClhfyh6KYyzpWP6BZWG6OiFo
	AQLFwV/ZNvBF1HeEYsRPEIi+o65cNUhxxyWJs2KIOgu8OG1iq3iMKUIq/q+7MViH
	weR4MJ5JpLqaEqIMbvol54w/Q/S+Zdh0lg7VziYOsPT2Zk3QfxgZKSmmCwJv3Mhz
	VNY2Ww==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ekpvdqu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 11:16:17 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-747af0bf0ebso5132782b3a.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 04:16:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749640576; x=1750245376;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V3j1uc9440Aqe3s91zqfhD9O3nYuGwVY1biiyW8GV5w=;
        b=NpvxtTfC2cK95CGNwcO0lIF13q+QUaaMVefNpUjvToaBRd0rxHvbuWov0RBJdyC0WJ
         d2ZhQ8YYNE0Ww6VrWdd8vD7p4qqGTCUkXGQvMgRK/hYMyABKJnccRgqOjWEMe9BKzH1u
         SoYV6lDXOxZ2OdNqUS+kipb8kpfe5SiHIM1Ynp7p25UPo9mB1ZXtY4X2I5okifglANAE
         fTsTVvceaNNC41COkgcPIz1tP0yNe3Y97H4aCktfY+ZXPTonKnqSPhdOvtf48gPtZxtb
         sNG/gIH+ew/N2UF3JzFPF5LEkXtH9h8LP9w/e1kmvozodA2fDTRkugUpHJ3+csi0vdwy
         yfSQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+cBw/vr2x27lK8hGIF0DfMvzr6KYP4GnRFAQkavfTkBhaLHr5Tn3TBlgldbU+KTcnncpxWrmTWlJ/@vger.kernel.org
X-Gm-Message-State: AOJu0Yza5a/RoPK6SafLlqCnlf4U0iVjalehfChf+5ijdjlXhz43j1Sq
	AyQwmXlrXtzp82Y+3wkMOs1RfGnbjt/QdUhSurcQ26P85SEixCCJIEjv328dwl4WAeVRRu4nETE
	YvTYdALxgyt4980IVttAYnGrb0poC9WGsUuyTNLRISmL+6JFTyagr3if2R7R4bbu2
X-Gm-Gg: ASbGncvLBeG5/GAOm/Zq+actTgCW3AYIS0FGvsPCXgWqkClSky5S6H1F6Z553b+P2BK
	iAa/wmYTOQo84N9nC196+1p9Uu1KUBsERKwAXD+dGCkydSUnu7UzoOMpBLeb3YZVfl9ZDaGLI4C
	BCWpen4xtjIMDcW1ZrO/AJKxw7TngMlr7sEWptYWt/v5Lp8N5JpTKENf8wpEupYtLXUHzHVCVrc
	69UI4T6oiY0VEgjNWIFHbtQjxZnTr4aboRxSZzwkl7Z+h8l63CZWrePzhhvj9yd7Ry2DuFdtIMi
	l6dRakqpg4xe9mh7D5eIQ63VZ5Nzdrfr
X-Received: by 2002:a05:6a00:3e18:b0:740:aa31:fe66 with SMTP id d2e1a72fcca58-7486cb59a04mr3951264b3a.4.1749640576346;
        Wed, 11 Jun 2025 04:16:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAG34Pvkev4y/hpRlus2OjuQHXtSd81WCCELRlR9luC9dphyxucxaLNk7Bj0pfHjdJyK31pg==
X-Received: by 2002:a05:6a00:3e18:b0:740:aa31:fe66 with SMTP id d2e1a72fcca58-7486cb59a04mr3951226b3a.4.1749640575915;
        Wed, 11 Jun 2025 04:16:15 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482b0e9d57sm8820772b3a.160.2025.06.11.04.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 04:16:15 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 11 Jun 2025 16:45:33 +0530
Subject: [PATCH v2 3/4] drm/msm/adreno: Add Adreno X1-45 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250611-x1p-adreno-v2-3-5074907bebbd@oss.qualcomm.com>
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
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749640547; l=2022;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=+s4ITcXnEPYZYROUKwHmQyjB4wKU/KPjLzqOm960DLE=;
 b=1BufoQl+K2Mq+EwIqeygORUYFrLK7REnSATB3nejAesVra4H4dodAXHO6ddF72x+zhVjfsmKF
 jPpmZU5C+rVDlrz0Lfd80Nhf8eY9DdVkZHaoRrQdu7TxWUm3e+ZDLWa
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=JcO8rVKV c=1 sm=1 tr=0 ts=68496581 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=25T8ekUwwafyqMypFLMA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjExMDA5NiBTYWx0ZWRfX5q76Ve5JeXex
 GTlIItlg2S1gDeGhM7rvmD1DCVcywYPRH+vkUAuFUscY1iINpSuVG8D8aNDivOjlF90lD4Z55aL
 Yk0mgjC6jpWWAc9xcNhNR7ojGg8b6IpntdnNaH7h1+VYCe9QVLWIhi36VfPZh2w9gfSkiSBuLBP
 Xp5ThMKMcV/sWD/fOEQV8amV64dqXKBCScUDTJCjI5FqZ7n0RMs+TZOVI2L+5CEgjGKtMN2Fdyi
 iIscY6EUIcYBKbc7bZf+a6XV0DVW+xJKzgfWZUBveMZEd3PKuHcRvxg+XIEXgPcKKXZSCJKdq0w
 IE891oHT1IKupuf+Th/wEwdPT5omiLS7EXgUzLBxP1pehtNmSrpa/3NZR/nFXYLZuUbak41PPQt
 cok9ZffRfjtUfQJ2BZX/s5AbUDBMh42oYdi7SzX41LXtGUpWlvzriEYYm8wzwVY9OQhbIN4B
X-Proofpoint-GUID: KasfTlwzueIAdYFlEwgfitPxGEKqBdy_
X-Proofpoint-ORIG-GUID: KasfTlwzueIAdYFlEwgfitPxGEKqBdy_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-11_04,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=954 bulkscore=0 spamscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506110096

Add support for Adreno X1-45 GPU present Snapdragon X1P42100
series of compute chipsets. This GPU is a smaller version of
X1-85 GPU with lower core count and smaller internal memories.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 38 +++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 70f7ad806c34076352d84f32d62c2833422b6e5e..2db748ce7df57a9151ed1e7f1b025a537bb5f653 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1474,6 +1474,44 @@ static const struct adreno_info a7xx_gpus[] = {
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
+			{ 141, 3 },
+		),
 	}
 };
 DECLARE_ADRENO_GPULIST(a7xx);

-- 
2.48.1


