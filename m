Return-Path: <devicetree+bounces-249772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD7BCDEE45
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 19:30:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 788EF300A372
	for <lists+devicetree@lfdr.de>; Fri, 26 Dec 2025 18:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC11022425B;
	Fri, 26 Dec 2025 18:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TrhWk0X6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jTWOUZvQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC1325FA10
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766773816; cv=none; b=Rmte109EDZqW3NnCpV4cP9npXAMJSdGqyVG4kx/5vwD30HA3PvR6iYjM98GnPQ2J0mgMe3T2bm+NpYC269O2yDxMToGq1pE4nsgjLb3I7avBbgmiaTWVSbxIGMVKewC+U0CHjwyEki1vX0yeyd8+3pBLV/r3EY/riFmcNlBvBTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766773816; c=relaxed/simple;
	bh=s6on9o/skjgZYk/EfByxas/5bzu6gD5rmktEr0jM4TI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sBghb0+/aqPGLmkEM6DQ5tIAXIrKeyVuClF83SLbtOH091vpTq2l9A7BK/K5qA9XgaNf59mc4VZKhnyHFUxjFH+KCHYLuLPFitGLtALic+szta5O0e7KgGo+KUojjm04LwL5WT66HQBs4bEnIAAWKIC5IkQFXdsVv8sK3bWQ3a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TrhWk0X6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jTWOUZvQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BQ94LaD176993
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rDCtvaj/x+y0wJTq14DJ8PKrZhaAhz+ntQ9Kfz+eJgA=; b=TrhWk0X63nN76CEN
	Txvv3cI9xk9ZuhJ0knooXspmzvrg3QdMB8ELMDQarwbWw6wtpkls/RTX/BxzksAS
	gNlWfqHk3NYSRe6B04dRDPjeV0opoeo2tQvLlwvGNTo3I0xaAPnq0LD6D+hg5ftP
	Y6O1dEQt7S38Z3giC+YVtGa13gzHNVplZfy+ucX+/USeNw+qfAIoIYy+7wD99rwy
	9xXDqszCzFN7OfFmxFIUPFOoIlBp7DEP23BkNK91IFxYw2AXZ5iRs2dKtkBIbtZD
	+Xs9LuXmLVOSUMtWNrABY6C/P+/+hN61IfOljGerQPio+6LW18HEkFGRsUOzVyPT
	CwlEJQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b9qdk90yq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 18:30:13 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c93f0849dso7445798a91.1
        for <devicetree@vger.kernel.org>; Fri, 26 Dec 2025 10:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766773812; x=1767378612; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rDCtvaj/x+y0wJTq14DJ8PKrZhaAhz+ntQ9Kfz+eJgA=;
        b=jTWOUZvQDQUh5puXE48M3FjwYWW2oFmDUW99XG4XBzFbMJEK4XgIENm4bXeqZTkntD
         x8E9Qcmgrxn0k9zezTm1qn2h25f3KpJfkXqgidLpu0ssOV40t5Gmqh4REnSF2byJ9zcP
         o50acCnAZnjoh2GD9V/qonqPUhSWwVTIqod/a1Ki1xS5AlocAcCzf2TjLpNY7RVll4Ar
         6+MMcwgc/7FmLDVXGF+QHYjG+qfZ68/giR3Ire3N2+H3yX5HQIfHcf8t7NAU1weOEO/0
         LbMef4t4fMZg2kCiue97SvAWQ2EZOPitwacM6OKuPLoI8T7+uBTenHYlb1cI8nNBSov0
         LVEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766773812; x=1767378612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rDCtvaj/x+y0wJTq14DJ8PKrZhaAhz+ntQ9Kfz+eJgA=;
        b=xFgQGMI9kXf75lVXLhlh2zrSh25K2FJWKDJkScLfT17fJRIciQmKm4COZM76wKaQhV
         hpH6nd97CqTGPrXSYH1XWw+lhSsmX/2/nTj3Sbrrfu9hHZ5G+1RWhkHyMHDey6RuikrB
         75Pp0PzjcrPvSDfKUUppGx0uVG6myY0dkxhAzYny8Q7muXtjnsmqWRg5aEB4GDJhEu36
         aYaasTJdvgp9AatVNQ1hCrgBbSDmqrwdBdSBmZA2mqxEtHfarPFVKFeXMKcLj99CJpR0
         5wZnkSzwRIcuS+e7VT9M9TLKc4uwISbl4bM22+JDDFFuFdZ0fETm7tbW99y20rhC7QKM
         NWvA==
X-Forwarded-Encrypted: i=1; AJvYcCXRtAiQNQ8sBm/CKhYnrCcjH5uK+OeNzmytRFf9bCuISNcAYkL2F2i9YUvUXsbaXoQaM8o6I3lEr6kn@vger.kernel.org
X-Gm-Message-State: AOJu0YyXyDXz/XWfmeCkXMwtEXhFqI+Ddol0ab7NOZnuqo2+kEE34X5A
	UyM3fjt8L6oTnTyKwiZsLjdqKpggYe8QAMwm0p+YWuRp9yv7Eevt0ngc+TOVkHaOn9Iez0JQSry
	S6v89VbDWYS8+iL8TSXEpe+UyfOvG6saI0jO2Sn2myyz6cEIM+Vy7bzjZMq/riSVI
X-Gm-Gg: AY/fxX7U55HTmbXd0l81KfE6m2e8uCpe/2HfL0yd0k1KOQpdret7424TTNuKD6m50ct
	LYAS8mcS696AThxnFQYChAnt+BaHyOo3MquQSo54jCboK6pKNIcps7O3QzbQnq77DHpPw6ZBXY2
	wLRFHK6sYStqVyuFiuLSge4IpQnHas2NvzRnPWRYSAaa8HWOudxXxkznMgXEiaJZGgbXp71S0Vv
	AUkv4Giu+cS6dNJJsIrorRqo1I+5D/OqMyRKGV+tpu8Ttowj9Aw1hjtxlrmdZ2YAa1baOnG6ecq
	IvY72mB7xPZnqOXKMLWY+YE62KXkQwa5aNwJc+VPJtJiqfDeWeGZeyKMNVVvBF9w7/WdH6nhkbl
	O56bEcMUYf0xMV78wiEDbvWbcnXhzXt3PYw==
X-Received: by 2002:a17:90b:4a43:b0:34c:2f01:2262 with SMTP id 98e67ed59e1d1-34e71d6961amr23605177a91.3.1766773811504;
        Fri, 26 Dec 2025 10:30:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaD8kQxfQc/TThojHQjO+Ie3t1EH+3EbOETAYXHcDtvrG4vSORZTdAIFwzqkAJiBzPmYXtvQ==
X-Received: by 2002:a17:90b:4a43:b0:34c:2f01:2262 with SMTP id 98e67ed59e1d1-34e71d6961amr23605157a91.3.1766773811038;
        Fri, 26 Dec 2025 10:30:11 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70d65653sm23808883a91.5.2025.12.26.10.30.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Dec 2025 10:30:10 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 26 Dec 2025 23:59:34 +0530
Subject: [PATCH v5 1/8] drm/msm/a6xx: Retrieve gmu core range by index
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251226-qcs615-spin-2-v5-1-354d86460ccb@oss.qualcomm.com>
References: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
In-Reply-To: <20251226-qcs615-spin-2-v5-0-354d86460ccb@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766773796; l=2432;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=s6on9o/skjgZYk/EfByxas/5bzu6gD5rmktEr0jM4TI=;
 b=hn1AsMrVUsX2Z0TG+8TcZQT5a5wVnvQcQ0r/EOOjUPBRYXz7V79M72oDjV+3lvMiMbYkymYrd
 myNzut/c1GYBK1YrqvxMk0w83pVixNbiV/sZjlIBSluq34y5Kl7BG8p
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI2MDE3MyBTYWx0ZWRfX8b0AfYAYVA87
 E302N5St6moP/myYWk6+yXzAxPoGx7O/RNot2cJStcUGlID8B10VHgFX333TmWztKpY7gn3LO2+
 CDOhcBd7rRq4cMogRb/rWmNZJI4koRN9tUOr+9rKU16wwFOfISLNRkWcJQ2K1XJzfOtTbKzCGiH
 gWcocA1ZutaShhp4bnKq5yUTR533+GvaGxYRp3w8JM9JjzZSVNdiKjTDntdXAH0GcVfak2w6uug
 myTSQEOvpFzkmMJsBvmCUSA/rnsZfQiorrY6yoIDGsZYWUmHuhLb3jZPtA5K9lxMCcdBwfLgOqn
 LRR/wZts7eqH5i5F641sWo3SK7Yl/Qv2U5Mx8BNXphsL7k+EGRupTxShkzXP+ekIJoGRPNiNiob
 QEZZAiLRxdyrmiBPLusuzRg/AF5/qfrUQIPf8sRb6oq15QgZndQOOjBrCsWz9NuvbQFlbIpXdNv
 T7QQWB2sYLmVudmSw2A==
X-Proofpoint-GUID: E2l0v_5eHGCd1Ac4dCrgBI0SRgVZW69q
X-Authority-Analysis: v=2.4 cv=br9BxUai c=1 sm=1 tr=0 ts=694ed435 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bd0xcQFpMvvK09R9pDkA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: E2l0v_5eHGCd1Ac4dCrgBI0SRgVZW69q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-26_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512260173

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


