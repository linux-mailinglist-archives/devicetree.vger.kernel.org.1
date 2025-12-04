Return-Path: <devicetree+bounces-244329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EE829CA3CDE
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9497830EACEE
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75637344026;
	Thu,  4 Dec 2025 13:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M0ytpIOR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kmk2vX7z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D8B29D268
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854549; cv=none; b=QP1vE8Zx878CU/416xkpXXbhE3dGiQTbmqEqf0mw0dhbVvsoNT/o/Vzisjap79Bd9Z7RuRlu8me4RSf6dBKHzoHo7lG9CrW2RaSoRxtwQp5+hCgavVIsfzofOW2XZVBXm51MjdIO2dD+Dm9hs/TaXKryKWvIfd8hlVeeNkK7WTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854549; c=relaxed/simple;
	bh=s6on9o/skjgZYk/EfByxas/5bzu6gD5rmktEr0jM4TI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oG67WhFJ90S50fxxs6dd5Ovn1PUEia5vcrWcy4aJwwCQe10RX3BsPY8ZltlTs009liW9JDQnPQUXMmKpmyhR1ke6G0sVuO580Qq9NPp9kB7y4neDHi0fW4MC8VJypYPLPiksjyKea1C5/016juGKymTnYpELTgbFqfT7VOmSGDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M0ytpIOR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kmk2vX7z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4AEwAN1179240
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:22:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rDCtvaj/x+y0wJTq14DJ8PKrZhaAhz+ntQ9Kfz+eJgA=; b=M0ytpIORLGdqjApB
	20VGEyKtaZ2OGYVEM/+D4Zuen664toCWCwharvhNSJo29UPUE6o0Zzo4r/1KFpIQ
	zTJPoGdY47+zDrcbptYbyazar4h3CaSZDn4TvEcsrefq5PUYaubQS0a1H0RGvxmd
	hWDOmO/3QaMCt2C/mLuEI7sSrpDQzOGGSZ3wiXIYbkloIywZsggcxCgdDQEPRLgH
	uorb4jWgx+Dyjh0y6Uk+AqN3oj5E1uqVM+f3Ds6I6DYCwi1ozVHdcal5iG/YOsG7
	miQRQnnvW3Dm/YYNQdzJgXC03F1TIkdgXjSUCxTKyNoroJar+pM6UrjJQ2GW9KHM
	8G9Asg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6v1gv9q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:22:27 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-343daf0f488so1048364a91.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764854545; x=1765459345; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rDCtvaj/x+y0wJTq14DJ8PKrZhaAhz+ntQ9Kfz+eJgA=;
        b=Kmk2vX7zj5SPl9iQpjiY+GyQKLQi9E9QZB9l9F5/4bOuWLvaZ3ThACeDA3gbJjjD9Q
         E70FuldcRL5atpKInrRfoPI8kYb2V8dQ7crgqJ9XZtKpYHqOsSyxyWwuWSALcINQ2lHN
         W3yYhGpk856jDBIszswRa/MuAdjhqChD1+EzjtCTTpKvGQHJlQv+8DOaickozHR7Rkdr
         Sf+5Bx1Ygwf1u1jvv+C0hSB+PVPLhrxKQnT/ukK86feI2FRjRWOPW24N+mCMntC3Is8I
         o+qVFUeiaCTvh/Uegmpg6Dr3vkRbASHbvcaQZnMs+YrRlRiNmi9w5+irmpfX2lhonQo1
         gSLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764854545; x=1765459345;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rDCtvaj/x+y0wJTq14DJ8PKrZhaAhz+ntQ9Kfz+eJgA=;
        b=E/wWiqg2pl854JVtNYFScv2337bxABG1xIKroLRXBP4VPweMzFgccpvpnxHgtbo9w9
         qr0QUgdbBYC8YemsIxpooeFsPbIaxGIJB238odptVxew0JPXvv7FnraxmEQfSnlzn1ef
         Y41rcP8Ybm4KKNqgvYa0WhjoHtfmBr5A9TJzw0dWnS0/yWO9bFiHKFL5s22USzMKnBnz
         zYkJaNx45Fs/XdhQ4a2BxVp135TRTEBZKaqaVIEuC/wzvbC2noG7RmXHaHFO4y/MJgIW
         0MqGE4qK/7QhYBpI3H+/XGp4bvkzamzHk9IoKGO9FfMn1SA5kKFZj2ewM7cnMN2EiBb8
         SklA==
X-Forwarded-Encrypted: i=1; AJvYcCUrJNqHZ3MAgQWxoTTooe8Ub8EYkDaq2oJaOt3X3m8LgcvRtxi2Sz7Ln7cuCrXMrTDDdEOvfVxxqAHE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv45Fkp1Vczi0Lv3Ka6JLssWchmXPuQVD2zAdP/KvbSGkH0bbI
	5ylnP4OzBRZ3xasVacgJN26HqSor2mOLgw+ZZ7EygJkwQ6+WDCd3gHNjEG4AOhoLtQIDyqR/SYC
	Vtu+VweONrF6FDaHRo5JzwEgZ3cnkziOlezVsgirQEOiUAq+YuoRa09YraJjrRKHq
X-Gm-Gg: ASbGnctvPm3BwGYBkNTOQqnEhq++7F+2QAi+hBUqgwO3AI4Ao0xmLGr7deyVlJj97A0
	rjp73oIehpCoPcdDjKIuKtrYrUaHKx6ubEQur/8CddJeNnjxYN6+xNEfmb7FsQTUE46oyyH8yYl
	tNTu+I+0gSVWp5XHyCxrjy2gfrHgXTu0jgZYmEye6YNZEksP9KmVL4IkhoeTHL+RYCkw7wOyOqC
	vN9FkGbkD4Bv8zmdkyMLB3ngZbkFevqcsCUTb1AFxa/BDjJx0pjz8ZBnjqhZd3HWtXD0AckaAvG
	JJ9gZQ29sEFEniUxo4bNbJfXCguNhces7RRKoS/s5V3AOTHyAbbeYNZ8EXArfXnI1mrzGQ+HXRC
	lbyXjh8gakp4H8eildEW+wqCRPIRuWuumPQ==
X-Received: by 2002:a17:90b:5184:b0:330:7a32:3290 with SMTP id 98e67ed59e1d1-34947f3218emr2946406a91.37.1764854544852;
        Thu, 04 Dec 2025 05:22:24 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFpJkp4s2aAYrupArV4VNXtGG2J6wvDwKoGHL7+mVcBFJ0xuwwN+MGHm+I7zlL5Cu2y9LwcSA==
X-Received: by 2002:a17:90b:5184:b0:330:7a32:3290 with SMTP id 98e67ed59e1d1-34947f3218emr2946369a91.37.1764854544271;
        Thu, 04 Dec 2025 05:22:24 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a18csm1914740a91.1.2025.12.04.05.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 05:22:23 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 18:51:53 +0530
Subject: [PATCH v4 1/8] drm/msm/a6xx: Retrieve gmu core range by index
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-qcs615-spin-2-v4-1-f5a00c5b663f@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764854530; l=2432;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=s6on9o/skjgZYk/EfByxas/5bzu6gD5rmktEr0jM4TI=;
 b=aOVaHYAaQPP+UfzJ43LHuSjw7Mkpd7AcC5kYLwX74IeC2r7laNLPg/Bp+fujGk62zrgZS+t47
 cUzYWV7EX8SDXQEHFBSNAfvqE8B3fK1oKMg23IRPMTNrVrjRtjdG5MD
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOCBTYWx0ZWRfX8OaDUmyL146c
 dzKPOg972pjWIr2Vp6WrVCQJBeJ0cwrY4wYiXWeHFoz7gGeLfGiGTJIqIFU0oynsdvcqQUvoTe7
 BkSLA+osvJfNxM5c87ic1ZNxXQ1oZi+nNF3Wy7fmpTCeBbMvTV4kOH+I3u+Eo28lyoIrikWmc8w
 qirvzErXOP1+6+oaMVtUHYzuMZ4eU0diQH3Gc3292b0a+MFUPeFAsf2fvhYuGJMBDEJKhmcLZoj
 L4YXalpdw0g/gw/5DzeE2EQ/FPun/jJlzpt6Oeeh9tD8DGJs5HldUs68US/sLfv9t9PVV5a2st7
 CQiu5VH+/2uKeBIhov9a1Nyl+19WOaCfpg8gjRWQapOihVRlf8cSZEiOdvOl4kscZqiEc0jJDkh
 47BvlMjRJtd/OJdYCURsr20K7jOzSA==
X-Proofpoint-GUID: vRaO8iq7KI6lj9wU0sXGHlZZWpGDFnLE
X-Proofpoint-ORIG-GUID: vRaO8iq7KI6lj9wU0sXGHlZZWpGDFnLE
X-Authority-Analysis: v=2.4 cv=KY7fcAYD c=1 sm=1 tr=0 ts=69318b13 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bd0xcQFpMvvK09R9pDkA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040108

Some GPUs like A612 doesn't use a named register range resource. This
is because the reg-name property is discouraged when there is just a
single resource.

To address this, retrieve the 'gmu' register range by its index. It is
always guaranteed to be at index 0.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_gmu.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
index 5903cd891b495f20e521562358068c7eea6ae603..9662201cd2e9d075425ac98bfa7c60989d00337d 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_gmu.c
@@ -2029,21 +2029,19 @@ static int cxpd_notifier_cb(struct notifier_block *nb,
 	return 0;
 }
 
-static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev,
-		const char *name, resource_size_t *start)
+static void __iomem *a6xx_gmu_get_mmio(struct platform_device *pdev, resource_size_t *start)
 {
+	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	void __iomem *ret;
-	struct resource *res = platform_get_resource_byname(pdev,
-			IORESOURCE_MEM, name);
 
 	if (!res) {
-		DRM_DEV_ERROR(&pdev->dev, "Unable to find the %s registers\n", name);
+		DRM_DEV_ERROR(&pdev->dev, "Unable to find the gmu core registers\n");
 		return ERR_PTR(-EINVAL);
 	}
 
 	ret = ioremap(res->start, resource_size(res));
 	if (!ret) {
-		DRM_DEV_ERROR(&pdev->dev, "Unable to map the %s registers\n", name);
+		DRM_DEV_ERROR(&pdev->dev, "Unable to map the gmu core registers\n");
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -2085,7 +2083,7 @@ int a6xx_gmu_wrapper_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
 	gmu->nr_clocks = ret;
 
 	/* Map the GMU registers */
-	gmu->mmio = a6xx_gmu_get_mmio(pdev, "gmu", &start);
+	gmu->mmio = a6xx_gmu_get_mmio(pdev, &start);
 	if (IS_ERR(gmu->mmio)) {
 		ret = PTR_ERR(gmu->mmio);
 		goto err_mmio;
@@ -2244,7 +2242,7 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
 		goto err_memory;
 
 	/* Map the GMU registers */
-	gmu->mmio = a6xx_gmu_get_mmio(pdev, "gmu", &start);
+	gmu->mmio = a6xx_gmu_get_mmio(pdev, &start);
 	if (IS_ERR(gmu->mmio)) {
 		ret = PTR_ERR(gmu->mmio);
 		goto err_memory;

-- 
2.51.0


