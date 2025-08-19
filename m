Return-Path: <devicetree+bounces-206079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0245CB2B7A3
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:35:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4454561538
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CA792FDC3F;
	Tue, 19 Aug 2025 03:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jBOq9EoF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 855112D8384
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574473; cv=none; b=qn5W+N/HQiYEHs34s7U/l5XsKk0PzHQIsZ5p2Zw2TCGPeA/E76t8zmCbOLixlIzJ5ZB2DxlV6w5vFOc1dl0wbirnlaFm6CqbWWLVU/MulkcT0V4nKZR4tJ+GlslFXIrzKPOIoEB+o5GgdCu/zAxeuhMppybm/Rja2tg3/DW7E3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574473; c=relaxed/simple;
	bh=jx21lmx5MGZ/FfsdeqVGZncpC/OsVU2to6SdDDH2l5M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KeCe6rKWGv3REhXI2XosXZHAYNh4GemS1eDKLRwWK1xR0yS6K1zy5yjpUZCUVKbjOhlZkvFCoDxHsvx7G3c2dYdj5MvvfYJFXIZI8zN+ZWt9Q4boBFVbTCARQDAMMUmceVqfAk4ywNh/AKI9pP3g2zvTxqLmelOvyV03q2x3OxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jBOq9EoF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J3CP4J017560
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c7ZlGnJLq3+8VPdDBGrjVATTNbjOXYsVFry4SHltG84=; b=jBOq9EoF/fhoB11d
	p/8AZMQlBQkJLJl1pz1YzheO7gBtxEC3pb81u2V4V2gvrfZvq2r/4FDxTkKbecgS
	5eG8kDSO/TlPhTImxtVrbePWdrtCS1lV5WC8bWmlWXLh/r4ynV5gka8QBw6EN1nO
	iOvYF499PhiS8KfmZ+jvDonAE0CP4vD/WNGPOiBo98Y1zZe0Wf6P65iGJup+Dw2u
	6eATT6JK7jmg7YRPbKDpNWtzOAspNgUL71Un8eBtqxUxreYWJ0C1DtQk+LXKlGwW
	B2+F4hGOZKp/35KMDVghHwuz28kKBJzVHvHNoAVd1VaDinDBcVLmKfDREOSxGbjJ
	7I0ong==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jh07726b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:30 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2445806eab4so49989235ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755574469; x=1756179269;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c7ZlGnJLq3+8VPdDBGrjVATTNbjOXYsVFry4SHltG84=;
        b=Gq3AZIm/rTX+NIiWT2GSWBimaOoJdLcj3d3lXHsZBqLvYvclnNzwM15/e3WHGXktJe
         XV20Pd3p9XGnlRv9rlHRLllPqcx78UWZ7zjkVzXYwd1it+LEVPUMxYcM6vrQvvphHo+x
         FqBZzwkGJFGyGyFSIRna/OnAQGeDZ3ooaMIGnnmyp7Ie8h2LBhh+k23iuL81dF2wQRjQ
         cjPj24bkSCimwIbWJnaS4qGr5d+4tItZbetT/plKrsUumEl5LI8c5z+4hpXQZ/kB7EFy
         e2ZavKy1JvSkXQ8gjuHWzefGuYTz1sc9PUXserFou+dZH7iEfPA2WBNc5zaQ/TrN9UFm
         h1GQ==
X-Forwarded-Encrypted: i=1; AJvYcCXa6z752W9Z+r7MDrhLg+4V1tLEHG/xMloPW0UDtmsasdoKTohAP6DwZICiOKQgFkQNwCJyit2OQQY5@vger.kernel.org
X-Gm-Message-State: AOJu0YwLkI1tf1a9HjYVQCltU/hit27WJl5VHEbBNZARrVCWOOmoKvTd
	kHi1CIkXSNxeBic77c9ZmQll/z/hf5kup7+CX38phLiNi2/fUqpLnpQZU5XaL9tjbHdzthOOWLo
	rad4opGw4xqedEmVs2gdUuhg+Dh5NyIPs0EyDhL3uW2UdAdpLPaZp1iBZIDMI0OdK
X-Gm-Gg: ASbGnctOf4byH4qBXW5ezsFqL81oNflmOpmU/grXZibZ2cKMZt8TdVvVKO7kiISOG3e
	zP3+h90Qca/mBdslAFX2KsFJT3pQvx3tHyIXX+QPAx+GDXMzUseKL8Plj1NRdXoxb0/I77/O63A
	HputNRd3lLt76kDGzqzyh4A3ftKVPDzhFZbeFo9gtCbLY2S/uZcws+8OrRruxObBz9LnfV5p/fr
	UddS9mTVRfgE+MZlFNIQpT9+GOKj8mvt+pMSomFqN772MU+sV6Z+1EUtEbYl31YaxVXEN8LNAd4
	rQxOuVGk8OcQE5ZXHksCWiovZhGOLckBryt9MwHpKKb78PEDPqaXh9ENOS0ZGAK6NTXUfZg=
X-Received: by 2002:a17:902:d4cc:b0:235:eb8d:7fff with SMTP id d9443c01a7336-245e0482f9fmr10590175ad.28.1755574468916;
        Mon, 18 Aug 2025 20:34:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1JFgru4hf1iy17i0CObbmSg5dyLheaV4AtduwGDjvOBwcV3Gq7ppd6xpwIwMmE6ACKsiVUA==
X-Received: by 2002:a17:902:d4cc:b0:235:eb8d:7fff with SMTP id d9443c01a7336-245e0482f9fmr10589795ad.28.1755574468461;
        Mon, 18 Aug 2025 20:34:28 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f55esm94486325ad.82.2025.08.18.20.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:34:28 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 11:33:32 +0800
Subject: [PATCH v7 5/6] drm/msm: mdss: Add QCS8300 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs8300_mdss-v7-5-49775ef134f4@oss.qualcomm.com>
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
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755574427; l=977;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=jx21lmx5MGZ/FfsdeqVGZncpC/OsVU2to6SdDDH2l5M=;
 b=ImYRC7sd2hDvtu9kDUR4j9uSNjtTCgqBVkh1MYWwvd6QNeGLrdTV3xFIkGqkEQEAfQekghy19
 TIZij5TnEnoBeShRac//+ic8blMQwGeM0RSHAJpsmLH3sryOvrEhsrP
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-ORIG-GUID: 1NjINXS_bfUhksuLoaBtX3KM7pqJeEBF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfXwjT+VQzxbC8L
 +YDBPfKbV97rG6yeVxR858n1lltzVvQ68lDrgZz4c8AJKElRE5nwNiWVnOuyBHknVumr4dqlCzR
 dHnhTQYOHBiFHiy1CEmd3Xc+OtQjKe6nLS21mOM+tAUrgc1OIHdBDgk6D624YKMdxBTs2t4gNqZ
 yX/V4EwTA+sdQTgusmOLzqmtTSHYVu3i1zQFKpbwo4KUNikOa3l0GhFNbujVW+RRJI4dmn/OcT5
 PlNyVxEJic0Z4C0wjBW1PcIDoh/J92IavQhHxyJYw7UCRVvxnDSAvoyCLNdpydyiIJsosskkSwA
 q8yncvYUREjY+tVDv3GS86mCEwZnDJL6gr63rJFfN3HK92B0FD1bzS5Tvcd733krr0AjY2v6KY5
 iB6hhpHN
X-Authority-Analysis: v=2.4 cv=a+Mw9VSF c=1 sm=1 tr=0 ts=68a3f0c6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=56KCLgTT6E_AFdM1kc8A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 1NjINXS_bfUhksuLoaBtX3KM7pqJeEBF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 adultscore=0 priorityscore=1501 clxscore=1011 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160020

Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2d0e3e784c044db8ac0c478446d211a982cf0350..db2f0064eb72e8a990ff4806f60be74d3ff8dfa9 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -555,6 +555,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &data_76k8 },
+	{ .compatible = "qcom,qcs8300-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sa8775p-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sar2130p-mdss", .data = &data_74k },
 	{ .compatible = "qcom,sdm670-mdss", .data = &data_76k8 },

-- 
2.34.1


