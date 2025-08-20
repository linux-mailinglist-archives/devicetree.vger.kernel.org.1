Return-Path: <devicetree+bounces-206783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB14B2D8D6
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BE4C6825C0
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 09:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C85D2E36EC;
	Wed, 20 Aug 2025 09:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LY+ninO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9952E3398
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755682642; cv=none; b=VVj386V5qIqc9ObOifJi7dYPdNlI++IItCbUy5eb+ulpXi84wMw6IlY0mug91eqzt5lmJ7fJgQipfUQE9iZr5OdrrpqwOvp76EqMVZUqbPufGglXmOlh7B4M+IqYxJ1IvrmI+vJWvgolY/rzqsmi31z68HVISZe1W6LBsWQPtYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755682642; c=relaxed/simple;
	bh=CUfovqe+BoyUTI1U5egPOGaqwOCo/lDF47XuEnGpvAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CGWNaGJ+3E0HBPMT1FvcL8Rj+tC6GbGXi/stKEneUYtvBxRf2pR+Qaf7d+Tre/MZylSLHQrYdWh030zxMc9c4OtixIlrBRy3BcumbwKN3YqYg6yCQQ8UHoAe3bDYf7O/nDqmYWyBQ19Qp2CYJyxT28vU/O+17rUoTJajVB12duI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LY+ninO3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1oXug019714
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:37:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uegs61kuvy/Ef2awv7oKRsWNlD6GJZeqQNqXJ5q3U3M=; b=LY+ninO3vDfwnTNS
	iZjusYM8bZZqcMtUChWT6lnXtWwt6+iBwVD9G89Aji+m6/uLUHLgsOtg/jxnpnts
	60AikWkmIWnpIZ70WP/2V6Und2ObG+r/DHOXhC9zyvNZvWCcdqqmzeCm15FFxVFn
	16PmSrZt5/iniYvy//bz0FtufRjQAryPirXPtRqNE3zxdLe07bR2ynP2R9QCEmet
	E5PLwoDQpGtwF5JHX6Z4tF37+zbdPaPH+v9uvj+i3Xu++UHJ0gZaJatW/VGzFiRb
	FuS51o3taH9RRzuKwjElP0iOhY7mRd5Moo+cijOOSgH6bauAlb0jlWb1xzEpqRiX
	F7rUqA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n5291780-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 09:37:20 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-32326bedeb3so2099723a91.2
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 02:37:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682639; x=1756287439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uegs61kuvy/Ef2awv7oKRsWNlD6GJZeqQNqXJ5q3U3M=;
        b=XrhqxQ3QDyKW/Hew5Y5Q7wtRXv/5iYwxTLD35hDL/MXSDTZTru6hDFGkKmK7kJzDGY
         OEQY5fhqdwgo75walbTBtz6eJ8yKQ4yaG/5NIExcVh9cjIdi1g1pu4H/X+3B44Be6VIz
         RSAPz5rOvt9zhl1ZGdbypYmazs69HMyQcWWEygO1aN4NKe+kuTM81vKEzGUsqLNtVi+4
         SM8NU3mhAjW/PMsfH8Tn8zn9uD1HhcVuD/2zgkr5Kd81XEQ3zXogaS+f2JAFO5/wmlWf
         2SW2H1SNndTY2GRA4kkhN513hvzEGLrslYCo8bkwLi0RBhgobRAPu+mqNK1k40913pOv
         /EUQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjtPSZgpoYF/ElRrxs9yrvu0e8s1+gt7yi1QXfVdfLWSCa1hkJsVcnv+sgQcEe8HGrktVijPJHNIwG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8+LZ2Ml3gbfB8X714+EIfBiG+JHkvH6f78CZB5CLMDca9bncl
	0aPAQov1wApER4A+XUaCUc1B4aAH+X/tgJjFY6Hf3kxIV7Vj6BcRRMwuB6Luh8RxOMzhUddDcKb
	wmfW0Jr3iDPSot19CcYasHWNPFm/s40WwzvAGeT7hEizmkZ5cSXRtfBmUgg51QDMA
X-Gm-Gg: ASbGnct57X8Lyib0uptOIFXVEJ/342qYKUejn8PXkw58EAt9btqegC0mtTbY5LZHWXT
	E9zolCjsdLdTip0I6N9mx8JvMYPZqdpnaG1wvUgvmmS3WUEeemZRtOuliDGiUPdx3bmXsWltKzO
	TGIKbPHgecwKJveK4ErrXUp/PG88ztuD1RBhYFAnvePbwuEL01lMPeO/lwdd81/83PU7yjcrBZV
	dwK0BzqIBqZRKPdaC9Sawyh9PSVvk449TDgekNGUnOgfkviCO4EO4nnhiEYfUUzKK7EBGb1bD7M
	4FdzhyEztW8MJf4dcOJJlp1owHIzpyebOG8uYZSK0Pst7XPLduMaYKvc6J25do0wkG3HBDm4H8m
	BG40JW4debkQbVgsR03PxuGIZ37FqwP+vyK/2Lnil0bP/3ZvshdNevCe/
X-Received: by 2002:a17:902:ce83:b0:240:4cf6:b07b with SMTP id d9443c01a7336-245ef27aae4mr14851515ad.9.1755682639090;
        Wed, 20 Aug 2025 02:37:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhfCvj2U0FsjX6+7/r+e6YXxU+CPkEer/Hg5wGnIICikJE5F8McukYclnXK8JpsF9sBJac1g==
X-Received: by 2002:a17:902:ce83:b0:240:4cf6:b07b with SMTP id d9443c01a7336-245ef27aae4mr14851125ad.9.1755682638604;
        Wed, 20 Aug 2025 02:37:18 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4ec100sm20954305ad.116.2025.08.20.02.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 02:37:18 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 17:34:55 +0800
Subject: [PATCH v3 13/14] drm/msm/dp: Add DisplayPort support for sm6150
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-add-displayport-support-for-qcs615-platform-v3-13-a43bd25ec39c@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
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
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        quic_lliu6@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755682521; l=1316;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=CUfovqe+BoyUTI1U5egPOGaqwOCo/lDF47XuEnGpvAs=;
 b=ekFdgiw2VFgvGPY0u++RuMC/OoE30pi/c4ArAK4euKoOaQd5xA/773GbG8DDKJIfnJZNmKkAa
 ++LEXlx15JPA4vl5eGl1FhBay0hnnzF2X25zr4Rxgu8ALm78V7VObo/
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: qbjr_roaJOD5_TucdR-85xgMnz3gpHvE
X-Proofpoint-ORIG-GUID: qbjr_roaJOD5_TucdR-85xgMnz3gpHvE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX7XHETU9ac1/L
 yknhoq4pz56L9aDObvg/AYibf+Pp4Pm+Cqw6EZJxZKTvLqOUOAFBzGLg86VPkptlPOmfJeirahq
 nGPKoIsG9eglya/ONv+C1uu+QG2SftOPG6enYZvYL6hGhwp21D3gDFaI6U7gVzlgT++/yViIcyv
 23a5KP9Re3+rX+PeRVaF7dY5VjoHAUS2HN4+W3y/Gm0VFdiDbQYtg32ixSSkinRC45vlDjkojQj
 yCuIVClnpbR2jZRR1Rs8Ed6im8sbhV+05GzUyTx6dxLCd2uX8P4eGUn9spaB8McYBav25Tl0l/c
 m4WFhuytitQzCChZACi422Tv1rpHlmiuBY4wCdmhjifB3qlAWn6Bo68mDrrb4GfKZpWV4+wBZdg
 Out0d+OpTE9xf5Nsau9bZdeg/aRynA==
X-Authority-Analysis: v=2.4 cv=SPkblOvH c=1 sm=1 tr=0 ts=68a59750 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=V_msf0f7WKJAu9UcZZMA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

Add support for SM6150 DisplayPort controller, which shares base offset
and configuration with SC7180. While SM6150 lacks some SC7180 features
(e.g. HBR3), current msm_dp_desc_sc7180 data is sufficient. Listing it
explicitly ensures future compatibility.

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


