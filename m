Return-Path: <devicetree+bounces-198488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CE2B0D2EF
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 09:28:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA4E53B1290
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:25:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D035B2DCF4F;
	Tue, 22 Jul 2025 07:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="icgi/h3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5554F2C08D7
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753169028; cv=none; b=VCf1y1/NdcLRuvnHnjuSS921qHYpQEYRdcNIjvp/FgZeKI3j7KmrzpuXkrjOd/TTwyUrPra+hFoCAsxdDhvNsXg109fKHZGWeJ6rhV41jWbZ8pmsEnSklinWOsYHCHGnUon50HrD9YtAPmj0WznyrbQGygSpQHjdFrVwQb0EIvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753169028; c=relaxed/simple;
	bh=ciyqoCYFS3+/i08fo7/Fy7G1mvvHDXj3yVN7GeS3ZyA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GLuxHbrXPkxqyxKlo79y95E6Runr6QcLGjT25ZlQu+HOED46d0rcEcm6WTYH+D5yjBt4jR/DfIVOsCtxzQuKpckq3bVk6zDfFn2jU5NYb9AFP5AE4L4g0Pr5mNpJdpjqgloxnxIqmHoHXV8dwtEl9oG0arotXytj2I2QoSAx2q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=icgi/h3C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M7BQaQ004419
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:23:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X7rTNTg/49ZHhf8B4W0jhkieUw+2aiMDE3XH+NwjhvM=; b=icgi/h3C+GjuGd1J
	WvE5bc0YhbTS3weKVinY83yE2zIwuULFNxarVzRuWMS67JuShghgGELWPRNUHqj1
	yBwgyvMiL/onk5YAAHQZ5InCCmZOtQ5jrqK4YT0xUdRQLS9jmWs1kbfSGizXNNlX
	b3OQzNfHFfLcG+MdRuCQ+EVQQh4LXumlX7jwj6YeaqFKP+1RV+F6GzC5ej4FbvM/
	eInGX8gJWEXS/4sYUhIUzPgQf1F1AZRy+OenETcTzhkAQmsQOTl7ODaVQqtq/gt/
	AjpQTOgJZ84wClAgsrLVeckFwR9KdM2znRFEFigg8+8ldq6O31Z/A1D0Vh74cP7R
	lGX0Aw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045vxu79-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 07:23:46 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-23c8f16343eso16850005ad.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 00:23:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753169026; x=1753773826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X7rTNTg/49ZHhf8B4W0jhkieUw+2aiMDE3XH+NwjhvM=;
        b=jah6ku2kl96D2qAjR+37t1ynuuxxBcExhm1bpa3Q8UQwMW2Z40Tc0GtJoF7mvHVfZZ
         pT96GaujLejmTg2iIgHRpEHY/H1IhTfcBRQRVLgtt07SCadnTBG4aueFL37MOhxpUHI7
         UjoRaaIrhEdXtR3LIP5ryBra/YMzg/P9Wt72emujBcgRJqHcm5mgrVjGc5y5k9Du0v1r
         xlacXZ5v48N/3/V88GdEmETWBti11/3PbyuhtKwRFLM5/B5Jz9Vcynf5UQZby9Nd2eFB
         kzfX3bA+zwOfJzuHDt3M9IqyVXgjyDHMFT+ynJ/8dnwZAV+5vgSF6NwGS/3Hsvh8xVm6
         83mw==
X-Forwarded-Encrypted: i=1; AJvYcCWchxURxcvVCnhveQct0CcRvJjo4Jmt4cA2JiURTzjuzwI45aBRNaM33y7TPVPoqLjOR4lkvRa11xzx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9pdXpptUcKUSm5mMqalFI3C5XiE3B/z9hHRbUO+k5Sz5W3J7m
	/ZLYGUaFsVU+GWndSjw0B5GQ1XE1W1u1fhIedQ+yVEyibfF5R9cLtvwQs7cB+1KJD1dtGwDVHtt
	8A2lv38ULzdqa3u/XSdkTanNnIS7z7NMuN/wEfi0eavhar3kybduDwskVJ5pR2UGN
X-Gm-Gg: ASbGncs53EmfiBOLzQcOMyJLG3ZWt6GE++t32RK14nJfIIvKqydxk3e015eaPke3uoU
	7swTssyA5bFc1L1bHCMgxFI0PUlEHjClVerHMVrLAZT5efh62Rf8nUSiDFYTQjtqZpyF74e1uew
	1pUujuHZEELfI4MXGK67U48YuHZG7brjsnv9Qxjl1H1UZ6R2+y9MHMlC3tK/gfh8fmmBMgVH8Ij
	F6qGOSY27gNlCvTGVDJvQERAngHqLJiJoeSfWiwdI9D4Ev/s5/ijtvbpiSD8sB6c/XAQAiCIkJq
	Svbnmn2FoUB06XILOR8SAzH6qI3ZChu50mIL4I9bYCi2lgjxaiHzCosEtpKQiPFwi3Rmik7mBBy
	PAcKfmnuRLVyMRl27M7wHO610jzJmJjlzGUMMLTc5V4Z15JUJwNEXntH9
X-Received: by 2002:a17:903:1a68:b0:234:d7b2:2abe with SMTP id d9443c01a7336-23e24ef7922mr141277405ad.7.1753169025693;
        Tue, 22 Jul 2025 00:23:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZi2sVWjlvxIefJwnEAsJbibA0RoEFuNEkqwkL4eJL/Th6uYnt2AV1OJZwiVCrhQBLPZSpSg==
X-Received: by 2002:a17:903:1a68:b0:234:d7b2:2abe with SMTP id d9443c01a7336-23e24ef7922mr141277025ad.7.1753169025225;
        Tue, 22 Jul 2025 00:23:45 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:23:44 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:13 +0800
Subject: [PATCH v2 12/13] drm/msm/dp: Add DisplayPort support for QCS615
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-12-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168938; l=1195;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ciyqoCYFS3+/i08fo7/Fy7G1mvvHDXj3yVN7GeS3ZyA=;
 b=FFmdwXZ8slTdA0DVE9pvzO1FYYEDAJMGMU1mJ7YxSnMqTiMvS9E6ow/3xLAHL6dB1Cr+/Lm96
 yucXBPSLDRWCQ54WzwHwXgwV6uLy40ZWzhspxwW2naZqPRAuu5M8Fc3
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=LL1mQIW9 c=1 sm=1 tr=0 ts=687f3c82 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=f-sKLqVA4YZL9HvktjMA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: r39_flkg_W2YdjDEHVP59TejWJJuJANG
X-Proofpoint-ORIG-GUID: r39_flkg_W2YdjDEHVP59TejWJJuJANG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfX+xrKA4PQxK7Q
 M2rdT8uyJQ0NJx3DAnAJCfJAok52nZBuLkIbyZSfglxMl9PjSButmFpOA/XofFILqtvnlvfaD3+
 d3tQyBVnSZH5GfP95eJvqBzS82c9peVVL5lb9G13q85BpGcZkHIIQF273bPfo6JkqaCwmZnNcFg
 go9jnoFL9DOQtDVBIVIkXZpoqTofK/TCKVTdQ3KdS8Qx4tPwKazQGW4r0om7WZ1qmvAfZDyNOpL
 6R/gdkfOjIxH9JzjkNBuS14CZlfKBqioaFy1rhLLkEBbmQGWtOFQ01OkLizr1zizusEa7fWdB6T
 xXydNH3temdnyMXV1nBPDYezUX/ifl6bjON8M7lPlhltep4gyj0ybpa5LFNZ+60AZxYrulz2K7M
 d4XZ9YeHI5+H2nsEuZbBJcCcrwlL8fxl7c1/YsJnFn/lJu0PgAMkuvPBZHXIiU/onvUz4Hua
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 mlxscore=0 adultscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220059

The Qualcomm QCS615 platform comes with a DisplayPort controller use the
same base offset as sc7180. add support for this in DP driver.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index d87d47cc7ec3eb757ac192c411000bc50b824c59..ddb22b50490035779904d4cab20e2fee7e0f9657 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -196,6 +196,7 @@ static const struct of_device_id msm_dp_dt_match[] = {
 	{ .compatible = "qcom,sc8280xp-dp", .data = &msm_dp_desc_sc8280xp },
 	{ .compatible = "qcom,sc8280xp-edp", .data = &msm_dp_desc_sc8280xp },
 	{ .compatible = "qcom,sdm845-dp", .data = &msm_dp_desc_sdm845 },
+	{ .compatible = "qcom,sm6150-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sm8350-dp", .data = &msm_dp_desc_sc7180 },
 	{ .compatible = "qcom,sm8650-dp", .data = &msm_dp_desc_sm8650 },
 	{ .compatible = "qcom,x1e80100-dp", .data = &msm_dp_desc_x1e80100 },

-- 
2.34.1


