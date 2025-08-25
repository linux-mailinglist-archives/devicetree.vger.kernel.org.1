Return-Path: <devicetree+bounces-208806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1D8B334BC
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 05:38:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8DEFE7A521F
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 03:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6028627EFFE;
	Mon, 25 Aug 2025 03:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pGgDr/Fz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40F023B63C
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756092980; cv=none; b=SLvFXgXYH6X960thAA/dCODmNYn+fvr77scfyeYjEIjlwVBBn37Yenj/3qnOulYrC0Df1GAuA2vxoWsuZwTMhXHv0JwCdPTBF7KY3XFzFpDoHwNAh/DO0+C3B6QQZr0G0FN7OE0YhZj/mfj5m65la0KTc1MKWSciLgzYU87wHVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756092980; c=relaxed/simple;
	bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gqwkEuh1n1ovYhffAkzbHQFfm8s4S127IFcjkLJsSvYMygTh4wC6JCFtKWl+pnvDjy0Ks4VmyZY/SXmY1z6LSADWi90+C3vuONrj0oIp52gCKsTN3FKKKNMxhlQm1w6YjalB0txUU8p3FH1D4IuGivt621CHp6C3J7VHhusMAJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pGgDr/Fz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57OMdLdv009700
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:36:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=; b=pGgDr/Fz3Upj9d+I
	At0CdDfKw777H8QMjqQCBobmuLqKx+uNxEtgVEHKcwfFRS7BV8ezxeX6Yci6r9Fq
	NmyNYzh+kIrNMNtV3Amcyp343N1OPnFk+oSJGDlOQqTm5iu7SL//qTbvWU0mucvN
	1Ja5TsExp3z5vqtLS9ygTrR6yPdS+4rxwwbzI/9/3jiCDWRPQDHFrHiw3qS50eAc
	n4c5oFlmPnGeuOK46EGE1S+Aychkxpvk+l4iqNIO2oys6eZ0SS2NNgtiiqYlO1po
	m5A4M0PmBR43xwbmlA0P1pZKgYX/uwGMihjnDSc8fDHPj1Kr3qFJjP7QuxXnTA14
	rkQ5hQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w2kmr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:36:18 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24458264c5aso43073815ad.3
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 20:36:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756092977; x=1756697777;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5H/bF7V+/uMeSq3g0gxgqc/EofmL6r/gf0PKGC0ccY=;
        b=rUj/dw+OwKy0L4cl1Jbp+SPc26ROwScHTy/AV+hTp27XggzVugKpe+JWEObik2laDI
         A2L4yOfxVOijvNh0qKpExmDEyVSp/warJU0YnLjMLxwrhLD4woWvxDP4OcrX5RVEqEe9
         NOqsouJF+FkHtoXfiLGdF9rkNoK5D1COct9Txnf2PoNVh9jUfLORC0CwfJXyYeZjYpS7
         Y3DYmwX5vzrciEkBP9rziSDrYbhqCbbh7pp/TlNSRVlHD4bAbyxJS1DgcppmSuE/Ghhk
         ZuAfvo/O0xw1YoP5o1hM0/DS+Ch/0GKrPtAPC0kMpWmfq+Yt+jM+bxUctwQU/ohPsR29
         nVkQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEhvpMqwAeMlV0xGcp6s9NL3+pML7ijWP99cWDJXHleXe8+161jZ3GGQzir1n659BNQ8C7XaDiEhYW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb5szreujoVnsfpX84wLAq7vQ76Imhu3mzCG6isB9pojytqZR9
	WnDB2JEjVVDvEtSTFzs5oHhZNhULA1fPGJdSygLSjIUE+Okv+x03U/ZqqnERLHuPo6PaDIgcDXX
	SKgoZ8jPmbPhC9Lt5auWppdA0j5NgArbsBIcZ7xCUG0SIc67d+btM9+zNo2hfHMSA
X-Gm-Gg: ASbGnctof+A6mW7gEOs5ZdIHk7NtbAL0Rldw203W7pNGW2ZPVTe9kinqaGJTXr7UOo5
	WLa5+ER0MlRGynpC7e96n55n5KQsuw266scabNPwwqrqqbItcfxWpfL42CNCLGfifGfp0etHSWN
	FwuYgufG715hUSFHjv9IIJkd6v/5t5IaC8fFDhTwN8qWXQPniIRl6QtTVpKgdbQ4ScVJgCGcBmL
	LufWpsQ97rILAZml1KBTFBigQNyfNe//2da/18WJzY8LcJHDHM75z3qypjUF7zU2yKRGM2Gym6F
	WwIbre7qx4AEBZW2lHaQppGCDbHLEPRVfxBfmYFDrHQnugveaIjbH6dAMaDZg70TT7XkY0A=
X-Received: by 2002:a17:902:c94c:b0:246:1c6a:7026 with SMTP id d9443c01a7336-2462ef5fceemr147015045ad.40.1756092977426;
        Sun, 24 Aug 2025 20:36:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUHF1EOpueF6zxgZFcVMl7eVaFCuRiBqihrB66vAAoQ0pqCcjvsZWuWh8z1BidLoA1l+DrmA==
X-Received: by 2002:a17:902:c94c:b0:246:1c6a:7026 with SMTP id d9443c01a7336-2462ef5fceemr147014785ad.40.1756092976954;
        Sun, 24 Aug 2025 20:36:16 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466877c707sm54859565ad.22.2025.08.24.20.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 20:36:16 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 11:34:25 +0800
Subject: [PATCH v9 6/6] drm/msm/dp: Add DisplayPort controller for QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-qcs8300_mdss-v9-6-ebda1de80ca0@oss.qualcomm.com>
References: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
In-Reply-To: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756092927; l=1242;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=jmOF3YxLYSDfb8Ohpc4kXPJtA6m1LCaahphFup+ozoQ=;
 b=+HddgfRGfsccGRo6kGLEJNIBQn6m5wNdaACaxKf7tyrPNIGgvaclwhJLOqcbQW5QheaYxKVIC
 zxQVvicexOkAOWG5myMhf6iDOKDelASLJfIQjhcr7u8lGqcq2fdmsdi
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68abda32 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=E9mFum2VwHQHOKsBOicA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX7DTVHQF2Sbp6
 IRNAGBxJVR+i8JFjWxDkYjGm0WOc7/zmv+Otw+RauXqtjH1BlThBGnKStm4dwwJ082ByEMHmwJI
 K6DadY4C7RWqZf0WLFgVvKr2j2tnazAKRdDobDCMFQe1MFhIFok3GtZJR/pJ45+IK7ktzwbeFyP
 lZ/w043To+9nkwttXNmlEwbCh8jB8cT+QvnckUECBSalzMeBHeec35kuoQ0QqUZovY6vovwHtUm
 uvym3O+k0tRQ0XPJxDInzfRaQWcKNFs2dYJo2urNuXpdhsYtNg5IEDwW+FTLVXppzon/BnwENIX
 cIIBCjcxs5ULTQIYIObckoqTOnNFeDVorpOL4Bad2Y0NEsQvEXt9ioxxeZVoaYlVbeE1JGhzTBr
 74E5P9sE
X-Proofpoint-GUID: R-eaTbc_zgWFh7-MUNzhNPEXG9caHEPW
X-Proofpoint-ORIG-GUID: R-eaTbc_zgWFh7-MUNzhNPEXG9caHEPW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

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


