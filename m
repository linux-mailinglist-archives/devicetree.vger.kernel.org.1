Return-Path: <devicetree+bounces-241270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A64A1C7BCB4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 22:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F104E4E874E
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 21:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3AB2FF155;
	Fri, 21 Nov 2025 21:52:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AgNkieJw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KkVf6hy4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DA82DE6FF
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763761976; cv=none; b=faJJirCY/KaOl40g0K0bU+0Tl9pmNOkPYW/JSAaE1NFNziqQaf4qhgQOEJAZKZU42LogQx7UP+ubj1l5uk3xa+jRS9tTjo/pv/WOtvThOVI4N0vQ6mXjgFTj/8OR6GfavJZRBYHRlqCA/YBGtJZNkCeGW6pg5L/xB3zTwXeN0FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763761976; c=relaxed/simple;
	bh=uT9XzuQneNvS7bfuO5zLIF5cGFXOPlOtjREqASBfuRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ohgR1BXfRGdFPY3us5T6HU5hN622rGE8YLRV8YmgwnFxrxbT0WcSDuRODPmqGScUWTgbUlbByruxZ+fXyPYSwWwXxI7tVPKfgUsof0M+ffOgMzR6ewRAzvfb59GLrUL6VeFKlhtKolSzxY+NryX/3cXfI3D05/+NiKfRKDVcmAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AgNkieJw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KkVf6hy4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ALJTldW2746321
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:52:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J3pQTphbOvyGTpQsOyljwX9N4/Iy4OW8O/bre8HGT8A=; b=AgNkieJw44xDeiot
	JInOdISAm/b5WEjQQKhr+GOa57eTmKyKMaNlgytJjIAfF9Et9UxqDv0mFaAJK3qj
	yr7OJRX4ta/33BBZLCZievmNILlnzU2H5lwm8hKCG+dEuY0fMesJDCJmIzMj4oYj
	3eX9RK4O/1GqYXlIff/BBwmvX0JlNf56jDj7Hxi/ul2LfTPmgGvs0gM5SYMaov/V
	9d8H6XNlfNn1hPfKboKnTeGJ0i/5Y1sUlmnrS1vTkpHslRLfTxRkhR2W9OL8MgDW
	QWgADAr+tmkSgQHcGCyxaPydoNnxIOk5GpVFkSwTa3JO4SsmzYxksymyZj1lBWpi
	VzbmuA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajgeh38ca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 21:52:53 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso2332799b3a.2
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 13:52:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763761973; x=1764366773; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J3pQTphbOvyGTpQsOyljwX9N4/Iy4OW8O/bre8HGT8A=;
        b=KkVf6hy4IKCCwri22/HlHHzDE70tEWydhBpGYQZKO8G/0MUNRZ7EBxkFDPBtHeagFe
         yusLIkZvRs6pQ2mpW3l5YetT8EDznPPQiwiMejrL57kku+ujlLw59RX2LAcEcI3iDbvM
         fdLAGO6vwtd3e23Zmr96L7R0dK+54WtR0XSocx2gaHMbj4rG0L/i7f1RIBiLUKaTOFND
         J3SQPELe+3yRFZnTy/Tt+4adHVn9q+rW8eBOam07tR9UPX98cexF1FhXtl5O+N6p5jyJ
         OZO970TuJ2mQWK39X2zsUSZyXFjzj6kUd6Ro/ZQLVq32TkwF3DfycF2FcDmkYAohrxOY
         mbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763761973; x=1764366773;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J3pQTphbOvyGTpQsOyljwX9N4/Iy4OW8O/bre8HGT8A=;
        b=Qld2SioSEFPUUra/kNSUPoFQHNAHONrVByPGFWmKBbKoxYFEf2GL6dHZMzfZZxLwMI
         G0nPLQ2MxkuSQ3IDr825AgUIwk2Sw0uB2T7RcvTDMuEW0sTddhxgx9f/6s67HNU/GLU/
         VetUguqll/HEaCBTveGYTzCgcFA83Ur635Py6fosiAap8h58vPx6OE+89SHVQ6Uy+M1a
         BC9GPJ9ws+IjfC8z4pULamcYaTddpbZyGbOlaDEtWnEDTRSw1GLaD/9CUHUQRoBJgxnA
         wvQ3LI8VdmaG9DQ6So1MFpfz8IvhuVOul2kL0W0sgh4euaq1aZriBwJs5xvgpjGvLiev
         jB0g==
X-Forwarded-Encrypted: i=1; AJvYcCVMJ3MGs/Cw0yCwNqnjsFRG3UrfOn+wRl6IOWFdqyGRQwqZh4SN4UeD5KjfIB4HiMs6VkQY6TxNdziC@vger.kernel.org
X-Gm-Message-State: AOJu0YwHVkWdbl7YQVGImI+RcZGh9HXzCOYyyAxx/kfItUas0QG9UoLI
	DwfGWC84JLfcHanpC4BXUyjhtoqZyvNXrEoQxHkQ5C2BafzH+sj7YOHTAV2k0WE9WF0hzgRCMs5
	SuiRntsLp37NzVMgBQzalH4cVr5O4U194ipt642+i367VdwhvFkXZGSuSuMPZAdME
X-Gm-Gg: ASbGnctYub7TSOHkWc1qZx8ll6RjDr+UuDShk7baGAm/zsdYjL7Ozfit4+Oxvd46e62
	Y2XaEJBB3R7D4IELn/fQvOIARTP7Fod35HlvK06lKrfrrodxzOQFSG+v2qJ+vc1WR/CDSFekUYw
	pqivf9CVOUFCXgWCAMGnQyLhxFZRdFnFvp7zqw7kkx34cvWpBLwxBz/jeh1khcIQ/gV50OkeChJ
	LgWECsPfQ86XGcNGka8M0fNYRUjmWMSUDD+fXfWiWCGCl6gghboRpTt3RUi0YwZSNRjrEBLEMDN
	NowvbROaNssujJVetC27pqq4MglqMB7erLzIfhMGSIhobIEGTL3Ewg2K4e+j2v7jfif4LibLV2O
	RlKY70Vee+NvcoDABOq5Tb/mZWioG050nxg==
X-Received: by 2002:a05:6a20:e211:b0:35d:f625:7e87 with SMTP id adf61e73a8af0-3614ecdb5afmr3815780637.22.1763761972938;
        Fri, 21 Nov 2025 13:52:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/+4U46zyhkKPZl+BSd38HPBsjLVYVmZFu9he3w9Ox/ZVMAXvsyNg91fpwfW7FBFyKK3q4eQ==
X-Received: by 2002:a05:6a20:e211:b0:35d:f625:7e87 with SMTP id adf61e73a8af0-3614ecdb5afmr3815744637.22.1763761972393;
        Fri, 21 Nov 2025 13:52:52 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75def6314sm6399270a12.7.2025.11.21.13.52.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 13:52:52 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Sat, 22 Nov 2025 03:22:15 +0530
Subject: [PATCH v3 1/6] drm/msm/a6xx: Retrieve gmu core range by index
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251122-qcs615-spin-2-v3-1-9f4d4c87f51d@oss.qualcomm.com>
References: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
In-Reply-To: <20251122-qcs615-spin-2-v3-0-9f4d4c87f51d@oss.qualcomm.com>
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
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763761959; l=2309;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=uT9XzuQneNvS7bfuO5zLIF5cGFXOPlOtjREqASBfuRw=;
 b=qWs60XA9e7ZlQQs1ab6q+brocDt66kNUi6SCn2P94+vVBXiDRV9f23ZBIk/Cgz/CDgXjuzawJ
 jd3YYyvY02lBkSwNWXuHNmY0afeU1hut9ggpYxHQDnpkTtrEU/lMQsi
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDE2NyBTYWx0ZWRfX0CC8C2L8CWy/
 yAejcRYwL5cz73vPrOsj5831gu6MTGEuCWviNrkpyVL9ULqhppfRgmP2qI7bl6l1o1TzOXR5Nyz
 0RzsEmP1kXd1oICXn+NfrR+vkDEEDrJltlQecBPFsDDdZyBlJbCWvSnHLzGScXo1BymDGvQL0HY
 wGqjH9OmSEyhlPbezdVaQkQgLpZxcyFWuQM2Ot02/HtVI28GWw6TmjBiuqaYO5VOTwh68toXiQi
 To4k3AEN9nyzhpASuwCTUPwc6TllguYHWYViTynGFYL6U/tneUAJ87ClxAfgcqaffu6UQRAZzS3
 pcFAt1ydyhMo6/cCTVLl8CBiRbpjOoJJZguN/zKVkpITL59PQnirVBkJXsPJEsFwAuSP1m0rDjM
 iLwhCjzpiCVgUG/mo7oerbC7yb42qg==
X-Proofpoint-GUID: YZn4kZOlwkhERjokeWTFvJWH94D112L5
X-Authority-Analysis: v=2.4 cv=AubjHe9P c=1 sm=1 tr=0 ts=6920df35 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=bd0xcQFpMvvK09R9pDkA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: YZn4kZOlwkhERjokeWTFvJWH94D112L5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_06,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210167

Some GPUs like A612 doesn't use a named register range resource. This
is because the reg-name property is discouraged when there is just a
single resource.

To address this, retrieve the 'gmu' register range by its index. It is
always guaranteed to be at index 0.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
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


