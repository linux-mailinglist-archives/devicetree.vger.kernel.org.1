Return-Path: <devicetree+bounces-213155-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEB8B44C65
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 05:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 499D27B0156
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 03:40:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCAB420F079;
	Fri,  5 Sep 2025 03:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XEbGDZtI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5133F1C27
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 03:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757043710; cv=none; b=G/k7cOZZmDuiP1RwnMPmwWT/AqGCE4TlYZt5pszknDbcCQ8O6Rz2JqlmNov6Tzo1J6grxSbAIwz8d41FHvWAYrdpA/0LqfEYH5bSUL6cz5Fi1JmKGAfVOCHPSGRcgDSIkrqkmi9RCL15vKeaor0Ha+VfIitx3mr48XAF/0xxLDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757043710; c=relaxed/simple;
	bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PeXk0tQkHOFQR55+sXkQZt16kQLmAnMXPxhkdg/veOrZL/pK/owg9oCapIZuDcG2H6+UbV9QIW9ddCly2X7EWFxEYRb55a5JFfPSu2si0fK/TAg+hfyXC5xLET3L02+QjAtzKVh/de2iA9gwfSz0ORVm/h2sTIkFOVWRt4qw9QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XEbGDZtI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584J1gsJ002378
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 03:41:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=; b=XEbGDZtImuOhkztn
	NA+oNtbKbJYIGX60BiWd5G0nAbAd8pp6+KS9FPAKQWB10IGsEIGWbbEB7LwfKpBQ
	0A5CiO8xVsUUvITNdWFfzji+1SjmCURXUIKeRRWdk3cxfpIv6kObJ/+4BRh6+WJY
	7hiottyza2XXW2mUBfAth518jRCEuBmo8RdBFhRLss+kgXmvQm7hLycAjaDQwFhe
	H3RBzqSP9d+iv60j7WrRN1LAwdr2PsCVADpV1Kcc8CLmOz5cUTLLxEVlwQJxGgYK
	JGsFQvf6HQAB8GuVaD2qv92ArfPdL2R/Ae/8a1EnWtKnSRvQC+C1ZfzrT8Y/Nod4
	6DU9CQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush39j9r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:41:48 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-329cb4c3f78so1666269a91.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 20:41:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757043707; x=1757648507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=;
        b=NQupnfaN7xpmFvwTUQmrKNsYVb4AyCgQKHV9EattaBrt3bsB2EGnzy6TmopZ6qei7N
         2Lew+Ykw224ULavCSotrQ0R2x169L1PQIU/kqIFzKUYIscF1QjGF3R3Od0FF/z28yixN
         PC0L/hYY8uds4SMpt5tgZUKGRIVMUKsu71CRBy6ZrbfrCiTq32cuuJe558qys+S1LkzH
         Ic50+dc35JyNcqmgv17s9CNbhaKorU0YZbm9yg90Dwix13WDwaNEThnhWPH28raTgep2
         f0kMDOy4WyaqP2UdvUXGWIB7/qhsFKoXLTu42F1SoFoTYG2jeTk9SKlhk/BHdGQp2+Wx
         Qe3g==
X-Forwarded-Encrypted: i=1; AJvYcCUbFrR5itWpafkkz6hhFjiRCFALqlALm1mFuuZMAxGhyYfG+P/jZ5P6OC86PogcBTqliUw5jgtYkoYg@vger.kernel.org
X-Gm-Message-State: AOJu0YwI/psi1J43r8FsxMaqUF5LRFhDNU1AXqg40A9jLMn3Ul3X/g1f
	AA6eWFNAcZPstnquB+vc7SMMPBuSCj/zxFn/EyO9rwpohf6yCoUFebGjBiU/hMfrhfticiqBPYL
	T5RyTiaRk2u0MQJ5qtF/0/lDRmPJkIocKGf1JFMgBtbD3l9ezZn21iA+O+id8IJw6
X-Gm-Gg: ASbGncvZdY75t7GCTBzv4xT7FViudz4jyTL3jXefUS+P1zDdRMq6UxnTz+GaNqBj9vg
	t6/e47AuzenKaoiE0QxX1q31E1kDlkpzrF5iKNOjmZfds38ebIhriH+v9z1e7ZhP0TdHcHZ8dYR
	71T/svrDL2cVMisejTuh+545SFXzN95s7k8tu5oK2hdfN0p2fLkPfJBR43gAG3NmsLmxSBhslka
	JSa3WNiwjFebd53pjYrZeSg2Oki/wbA00UtaySShB5cJ1P/x1s88Mk6JkcRd2m+FsH6BL5L+eHK
	/226v9JUEMT4aL8urtRxZBj63PyknL/R7SVeJiIWtBpGbPFwnCXYNsVrldfp++3kyts=
X-Received: by 2002:a17:90b:3a4d:b0:32b:d79e:58ac with SMTP id 98e67ed59e1d1-32bd79e5d33mr12783a91.31.1757043707420;
        Thu, 04 Sep 2025 20:41:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZ9PvfDXRf85pIKpaZ0+e/fu4IJhXoTc6zGnbjcuhclxnsGhnVwS+OEgvprD3RTJKovkaIJA==
X-Received: by 2002:a17:90b:3a4d:b0:32b:d79e:58ac with SMTP id 98e67ed59e1d1-32bd79e5d33mr12743a91.31.1757043706922;
        Thu, 04 Sep 2025 20:41:46 -0700 (PDT)
Received: from cse-cd01-lnx.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-772818bd5e1sm5922315b3a.86.2025.09.04.20.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 20:41:46 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v11 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Date: Fri,  5 Sep 2025 11:41:38 +0800
Message-Id: <20250904-qcs8300_mdss-v11-6-b6b6a67a1719@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250904-qcs8300_mdss-v11-0-b6b6a67a1719@oss.qualcomm.com>
References: <20250904-qcs8300_mdss-v11-0-b6b6a67a1719@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756974526; l=1242; i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id; bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=; b=y2MHkOnGCX4UsKhNfZcloL+SNbTVPfVHc05X62CuJDECzxLMqihVz5DujWeU192GbDQtUNiCY iWrYKbzafawBZxMW0395JwCyixV/fY4bmbxq9iyL4VKvKizfzB4Xkwb
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519; pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX1wgSXSFl8GUz
 PMdtRB0rknwykHYMGoajyww/fggDdSmXQ602K/YQWODoV50jX0vSiYW88LPUQ2xbYcV4VRUh4is
 n1f3PIc6sXk3jHulF3AllNswINDlWSfzj7YLqaueMhFVm+R3HkZbOUJpaSh5JGrj5IIOybZ8P0p
 t6LWNjB9s2ri2h+cCoQ405X6CPRCSfXV3o0+YCFCHtNGHP0b8mTxa9M4hB3zDaphOQLclGaxdQo
 1wpGO7ghYmGtD2yZnInz2Xj5NWI0J8/4tFq24HUiTXbfEZeZLZzuNJgFYq8/oCVjwM47QN7VrUn
 XAV11W+14rK5tViMP4Q5xizxH58BS4cbRWq4tDp5vfhtavwsB8eiVZAkq8TF9Qz0oyVV9m9LJ4z
 uVk2znE8
X-Proofpoint-ORIG-GUID: HoqpS72ZcVPd_ejvZIvH2MuswuNDuhLI
X-Proofpoint-GUID: HoqpS72ZcVPd_ejvZIvH2MuswuNDuhLI
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68ba5bfc cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=E9mFum2VwHQHOKsBOicA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_01,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

The Qualcomm QCS8300 platform comes with one DisplayPort controller
with same base offset as SM8650. But it requires new compatible string
because QCS8300 controller supports 4 MST streams. 4 MST streams will
be enabled as part of MST feature support. Currently, using SM8650 data
structure to enable SST on QCS8300.

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


