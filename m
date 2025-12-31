Return-Path: <devicetree+bounces-250752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DE7CEB946
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB400305A879
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1F83126B7;
	Wed, 31 Dec 2025 08:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mZOpK1N8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C640gJzc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834D4221271
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170758; cv=none; b=SpVD8fbGZOTRhdX38ZmxswrnN/lmkHmazmCtL0wGQxMvLX9iLh5YgHUVurYEeO+FGxQhd2kGKoO0ZhPnwFebJoM/05DD69o/iogDcKDTL5HjBYFwKNnJVwUuiBocOGcQAJuTFPKigUn/SwoiDDZwXl9xywY+7kYD6yVi0feEFJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170758; c=relaxed/simple;
	bh=OPiDnreeN1/VHEOQRtyu84fDdgcHq5MMvUjo9czgt40=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=inr5zxIQ5O12dXtd9LiEkK6kQv8AkEZEi1zbPM5y2WnZpka5102IHiEbiN47+WB9EGvpNL10omRs6WCIhIzNiQZIUmpiRxH6URBAL47DaRpR9L12fL5sOLr0szZnm8tvwjR8Ax0V92kvlTuzbRZjjHadHJ9zfC2XzXXDIxKBJ4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mZOpK1N8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C640gJzc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BULnLKW1800857
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:45:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MEhqbU0WUFx5unoTkBAi+ncY8G/nDPpOVVFJMkC1J7c=; b=mZOpK1N8IIZG/DZH
	5aIWijGvEQAoh0sIzVTObni8pcabvR8I+yVad3XASCI7C9px3dDJH/Jk4cdSQKxk
	Zq7UCuuUScUHDzPbW4qDQE/Uu8Wd1XzTs9gukr4k2egF3V2xofufdBFMa07lyUkR
	n+kdkbFMe7NDNRzq4VoidmszvMj49XiNxO5J0pSyMRFrrJsaPNVWBy4wYlS+97uY
	u2rFEaUZx/WTLVR80OeLRNEOQur1vbRe8Dl0kZ9f2pAk5DT8Al5E2nZeWnuk9plK
	K/jpVJeEkTB8795pTI3uHB37Nrf/1WDMObe0C2Vd36raCznq+8Fjdx8OfQZ4ot2c
	XO0CUQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcf5yt2q4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:45:55 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34abd303b4aso30183983a91.1
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767170754; x=1767775554; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEhqbU0WUFx5unoTkBAi+ncY8G/nDPpOVVFJMkC1J7c=;
        b=C640gJzc+x/geYCa0R/YT+Sgpxqgx7SA9hNGjYvH7L8Fijejx/4m5HWGA4pSNCV1od
         f5Dj+nO04bXces8MICCy35JUJ+e0cAf8rGhxE6DY8BVfMx9SpIC8Y7zckik9UmdA17nJ
         jap1eGbJfIBUnHKtAxpveVu/j44RujWV61EPQr9A6V5RMilRS6vIuFlJE8fldnQuFQZn
         O5GO1Lhu19N9TOvqieHD0rgoy5rzIkyLlBEudXwx/i+zDQYHi6+j2JTlVeCpDOzzTimn
         oK3K/cU9Rvup6YHdcpWHNjOD8tEqTHzMgedhOCkQ5pgTUkMpwcAFil1FHocGYIK37VZ6
         fO2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767170754; x=1767775554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MEhqbU0WUFx5unoTkBAi+ncY8G/nDPpOVVFJMkC1J7c=;
        b=lfjlNIyIL7mIfavqYcCeDRlY3XbY21ozvI0EDz6wC+LR1cd9WOSQgrEgSfstYvg4bM
         IED5W0iKdU/NO0qj4DpahjrNngFfEoRhO5WrCjbJlSA2P82ZEG2JYBIAMBFEud7G9pE9
         78ZP4f1zlTKhWsYeVsZvpgMbW4zEVAOFqVqP9QWnHZSvq3tTSTphBXdrA7WwzCk8PUps
         bSuHAkr+P4B2nrX7fdIJjbUzLzJBwEeeVCOOIo5i2zGuwQmtlakcqoDHDQ3TB4NZNC+8
         mfIjpO8Wt0RFcXJaSTZBp2ih8at34af2WkZoljXtFiU2+9R/VjwROVGw7wtpKGodcUwQ
         xvhw==
X-Forwarded-Encrypted: i=1; AJvYcCXB1tc4AXzUN9fzBa6fMv3r8rd3xJ5OuRP9pwuvKeglaVPyLqqjCk6ok/SEH4eOIETlpF6nbBY7L1nf@vger.kernel.org
X-Gm-Message-State: AOJu0YzkgN4QnPZEctJpWvBOK950Fdnns+hN7ogZ+lw4pordXLJMyCLS
	uI5mtF7E1JaAlGjOwuG5519lWqOs+NcAc7ccZVQ0nBEizWNxANOJVIJvH5nG/zBXLTb/L4fgXcM
	p6cYzGJHT3djWxaEB7JaHtkV8UXA3IFLSnuEI0pfx17jcZmxgPljtxpBDnNE93jwU
X-Gm-Gg: AY/fxX5e+3AQtTpqCfFRVvmC9Af7nI+RsDljwDs17TstPp4IFK9wNERIOSRxaMd3HE+
	Vf12aU3Sn9C6RZt1sQAMDvDotQ8+2+fcFZSz5y6HY4PRLJGVAN7wvUGyPfWgxwSsA8+KtYhEiqu
	8i+ayOzivHGwYRcBSWl49sZ+C6DZ8zygzp5h71y7jR+hyjpPC00PhVz9oWD/4yWAzjiaHoXOZtT
	OqtLuXXOzmN+FlWOM4W5UF39si5a1H/4StoU2nooXQgAkkkb6cQavxdQoQ1/mOeNhBV0d+KaE2n
	9A9yHu+/vs2ACk/7OP4ouKtfMOlbhFXmbYGY6MWZCZL0VWkpBFnxbg+89/uJVBj0BvruwtvKdAK
	JKcfHammikiTbxMikGZwUGkAgL/RRDSxDcw==
X-Received: by 2002:a05:6a21:3381:b0:350:8f99:367c with SMTP id adf61e73a8af0-376aabfb4a5mr37381369637.58.1767170754150;
        Wed, 31 Dec 2025 00:45:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAo6dVSAwao+S3Igkb8Qh1q5ljTKlW1Z+o57LI4podu7CjXok+fqoYJxLC0NUQooJgkDPFDw==
X-Received: by 2002:a05:6a21:3381:b0:350:8f99:367c with SMTP id adf61e73a8af0-376aabfb4a5mr37381335637.58.1767170753692;
        Wed, 31 Dec 2025 00:45:53 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018eb5sm31356070a12.16.2025.12.31.00.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 00:45:53 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 14:15:22 +0530
Subject: [PATCH v6 1/8] drm/msm/a6xx: Retrieve gmu core range by index
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-qcs615-spin-2-v6-1-da87debf6883@oss.qualcomm.com>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
In-Reply-To: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
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
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767170740; l=2376;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=OPiDnreeN1/VHEOQRtyu84fDdgcHq5MMvUjo9czgt40=;
 b=zhrU5zRuzb3+31hJUFJGdIbEHUzbwA2QKWKVFIos+tJc4cKdK/NOoZSXwyVuQHwdaIvRFjYR0
 Sb7hB6qvMz9C27ymv1rO0JgLa6J1NSAGeETZ1CiGcZLOz8motfBIk89
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA3NCBTYWx0ZWRfX54pK0lww3sys
 2T3X4S8ZEMqfMEff0JLHsh3UK0c297J/GHMq2FXVSouTkQUXfDWu9L9hRmA1ThYN0fv8uNl6yBT
 B9keFXFk38wd8UGjxCCoXUYUxkJSmLOni0Zj1iaRbPY45dFHptEXtbKi+43BoWcu6Ne6EmiUnVF
 B7H0BS3V16wSlu1yl3a6xWtwX5g03bR4FaNXuQCY80thFNarPBksSNEn4jjWEImzZfmq7ag969A
 clZATTGROP1imh8eywjY6xUJnRXzLfdfHcsJUYqOxaiMoj0j95BtcFMqetl5csFnvIfiDb1tAgn
 W8zXTwV6wfJcEaMtKtGGUpXKrtYm7EPCEF5J4gwZgnTBGMGEcSankxJizeIAA87Mp21oGNsFsJr
 G3ap7vvhRLQKGG8CIDQaU8LY+vUuKCCJlNhoGkxqtgSr8iarL0DyzeJqNXWhIApfXv1n3gD2c5W
 XOGNRqAmK6qU8NR0CrA==
X-Proofpoint-ORIG-GUID: clbHSZEVVwHtpiiyFtUkRT7CT5AnKmPA
X-Authority-Analysis: v=2.4 cv=KvNAGGWN c=1 sm=1 tr=0 ts=6954e2c3 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bd0xcQFpMvvK09R9pDkA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: clbHSZEVVwHtpiiyFtUkRT7CT5AnKmPA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310074

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
index 5903cd891b49..9662201cd2e9 100644
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


