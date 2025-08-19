Return-Path: <devicetree+bounces-206080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1E0B2B7B2
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 109FF7B7439
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA9F2FF64A;
	Tue, 19 Aug 2025 03:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oVz1uf3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A302D877F
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574479; cv=none; b=tY9dDPgim5mibUq04L0Zsu+Are0RtZM26qlNSI8h8fimoalWDjYYlZWI6JJIeR0xYyn5IJcTK4YcHdfAM4ux71kCMQebDUY9O2rKK/1gBvVOcCrHohVSBxahLFnrML+Gl1kVuexF1IdT+p475dMo5h3/e1zLejEG39gaJIg4F2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574479; c=relaxed/simple;
	bh=PkZh52tFVW68m2fUUsOwG1KUdbGeXKurw+4OaZvkX8I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R0Lk1uU9C+PbbM3BkmdEXNIicFIrKYH1+2DZy8Il+5Nk/ORdFm2TrH3C7YhKgJ2a7k+ibGb1iy/BllsULkux1oveBBFAeg1clIUe6UK/sSGUmliFik3wIji0oUHeZdYOcv/+iRZ7aZY3cxtVhDbHEnwzYle9LO2ePYHEAco3fg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oVz1uf3C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J2rBll021859
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R5/ed+iMJVza84RA4CmOOZSSACg+IzN4IYjyPBClVDw=; b=oVz1uf3CRu6f4Gjh
	JnK6KXd5EzzWQnGXvUqANguG8cz5HxvpU9o0TcUTmQukj57RbmJcGW18xVKUJJnC
	9+Yq2fhB4ju3JvGICCHrZWP2EDcyxFuYCuzxIbawxELhzSCvkOpO1hFz7oAhLCmk
	TSxP8rFGcOQ7vyEb4TTa8qh08HVXJW2o+kB0DDPFBCh80ApYOTeuiQk+JTGnhnvx
	Km6US/rQb6xl/1cqBATmZ5y0Njf1Og/iLuL0wSz6AtXp+ua2cb3m+K7yeHhsZ+QJ
	WaNKDp+vkH72H5uwaW5v0ek4tF/W6bqAq5WnDM4a5fbas0SDQMrDBr7/ItjTh9rV
	+Ha6mw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhagxyym-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2445806eab4so49990135ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:34:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755574476; x=1756179276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R5/ed+iMJVza84RA4CmOOZSSACg+IzN4IYjyPBClVDw=;
        b=jh2mJumpZH+0f3W+MPLpgB9jmFPOmTADZvilzx7kGFPUBKkxuw6nvwg1fmzpmxQ3HX
         i214ou65SqHz+SLGgEXxvkogpukg85XVd9t9v55TT4fXrJA8T0QIAi1KCxh100rWwssF
         7SW8u1qUtw9zxA5TVIVk+PHmJgWsZrAzZEM2ClcnUQ2uyPyB/MMHOPA7lkvn8o+l52Vo
         eSTvdC/308pW57ctIZHm7B5NLkBPoXIQ3NpkmfN2XtaL8XFVG/i3pDqjPMVKN43CXA40
         k6UQ9YLF9ssm69mwf+WCPwFDP8C511rUhixu2a72QZC/45Snu7xRoA7olxxJ6vNiizqI
         Qndg==
X-Forwarded-Encrypted: i=1; AJvYcCVxuzxA+4vXWE8dWWPtDiTkjN/5kRn/5CdS7VjernAlVo/8Z2ceS1Xuaw3Zx4r7VoyGADYkJ+AE4pxo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd02BH6eKVQxutpSE2JMWHQcH88G9Zirb4VO/pM7yEvon0mFlE
	YKljWIqQNbuBael/4+s2x8Tp/fIfv3kDLZXeiWh53uA/xPOP/LeR+2FhojoxmsGAJIrB9pBS8Ro
	txqS2zGCMCQEVY5IKoMTSf3ScyS6atqLm3pPrqZvLT0gYbLuNeqUrzSjgOgbfzV8X
X-Gm-Gg: ASbGncs/pv6ppoPzHXSbbXVHnoqnRe/XuZXVAcvwxz1WsV0rext8Ctrtw9d67XuNIxf
	EUvSzcCJvij5jiLs5wT1bgH4lxtKLhyRSouKHiRu6whOhzR6rCdx43up/mfpuY6WUr6MPwQagid
	BLp1S86Se6Fn4JIfS/XrqipxWnCVTRrxosoBHw8M1hXscMesfLaH4XfSsKd8dkFrKRHMQUfR9l1
	c5NxYp6u6NuwoviuaClzxKzmu5udQXtYH4SK0PK3PjR9gLfaURkFnRYHZVoUJ5XKRdk/cTenrn3
	fRiLMCgeYICokFO3QhexSJ2m3HopxZx6mnqPCY/Dr6PwSTLC2aAGXNM1v1fJSSR1URcU7wg=
X-Received: by 2002:a17:903:1249:b0:240:6fd0:25b7 with SMTP id d9443c01a7336-245e04ac757mr15321325ad.38.1755574475924;
        Mon, 18 Aug 2025 20:34:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeF3q0NRFaqzmeniqpQaJM8C07r12p9EeneZ0E+iAYto/zETVgcNSjCv0p2TC+5I/zykn6ig==
X-Received: by 2002:a17:903:1249:b0:240:6fd0:25b7 with SMTP id d9443c01a7336-245e04ac757mr15320805ad.38.1755574475483;
        Mon, 18 Aug 2025 20:34:35 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f55esm94486325ad.82.2025.08.18.20.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:34:35 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 11:33:33 +0800
Subject: [PATCH v7 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs8300_mdss-v7-6-49775ef134f4@oss.qualcomm.com>
References: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
In-Reply-To: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755574427; l=1239;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=PkZh52tFVW68m2fUUsOwG1KUdbGeXKurw+4OaZvkX8I=;
 b=dQ6aru+yQ61EPbqt3DsNB3TZCLkB+30rVHlgf5Qp0xqAZ4vNfPSKD+2OoesGCp3xqCbOVmBvY
 qnw3cp0Vl/PBskaHMLYtoqm56M0lLnVkiKAh8YdMn+BnF6esphosG4P
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=D9xHKuRj c=1 sm=1 tr=0 ts=68a3f0cd cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=E9mFum2VwHQHOKsBOicA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: u5JK-9JA1nn4TgbPLY7GWayZjLppD1pT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyNCBTYWx0ZWRfXzWnZRW9CPQP6
 5n+AQHCZp0hO2RBa0fY2Yixo5dAcWhbcmWgt/aY0yug/hjJrv45NNmg9HRbUeaJEFrebML20LYx
 o99jVPspgkExn5S+iBzbPdpPvKdqUQvcxRYOEp/hX53Zml0UcQbKOVh6lcsxfdKbLrAOnP1kDvq
 Di6ldaNDEX/EuHx44AQ63OCeucrVbx7BsZ2MXZREY6F4jk+dHKRZRXe0/KHyyiF8VEFYUAJzKiG
 VBimKDuTpDbuy0t0wLSMMnOnvmHTOYskb5DLdJITILrai6L3yr8Bpas/FB2zN3Xczv3p3mA6mja
 duX8/6oejXzJA4gNbViLbdYcZnAwpp02j9wheZNcA67HayGyb+09nwrZ854aDsm0RNt1InIaQVE
 MpHa/K/d
X-Proofpoint-GUID: u5JK-9JA1nn4TgbPLY7GWayZjLppD1pT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160024

The Qualcomm QCS8300 platform comes with one DisplayPort controller
with same base offset as SM8650. But it requires new compatible string
because QCS8300 controller supports 4 MST streams. 4 MST streams will
be enabled as part of MST feature support. Currently, using SM8650 as
fallback to enable SST on QCS8300.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index d87d47cc7ec3eb757ac192c411000bc50b824c59..bb4660585849d1a67921a28e7e12422e0c327ab2 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -187,6 +187,7 @@ static const struct msm_dp_desc msm_dp_desc_x1e80100[] = {
 };
 
 static const struct of_device_id msm_dp_dt_match[] = {
+	{ .compatible = "qcom,qcs8300-dp", .data = &msm_dp_desc_sm8650 },
 	{ .compatible = "qcom,sa8775p-dp", .data = &msm_dp_desc_sa8775p },
 	{ .compatible = "qcom,sc7180-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sc7280-dp", .data = &msm_dp_desc_sc7280 },

-- 
2.34.1


