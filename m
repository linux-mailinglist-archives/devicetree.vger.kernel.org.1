Return-Path: <devicetree+bounces-208805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38745B334C0
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 05:38:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 30FC81B24F15
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 03:38:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4649523ABAB;
	Mon, 25 Aug 2025 03:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KVJCpEGy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE582238C10
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756092974; cv=none; b=rmsAWjN6IDDL0lm9FXgApjgicwMo7TME6qjBHuiEcgMjuP4+dmS/+dko8rHTlPF3f3YMZb48KE0rALX/KaXEh77Qm1e0dXkD1c6jwLcFkAwkOcs7gwq7GH5pdlsZmLXt18f6fGqyYXneb6ETVlYmnAK6atqdOoSna7v5qTrNuqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756092974; c=relaxed/simple;
	bh=xP+KCWOk9SNxzFjMtHR6U06UR7/RbmmfOmVurK6QZow=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nPq6v4WjmnEwgU1OHqanGdRGASY+VBwnjezGVZTg419qPwKqTjJ0R7pqbj1NkaeXMjwPkKFSa82oPnURwoHd5tTsT7N4WIxpmrjXhEgjdhpuzIgFcSA2+PtqCEbnA/Qiy/8OChTpGtrEIAYp8GyAdYVY9dTmi1/AwGs3aPmXTl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KVJCpEGy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57OMkROE030501
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:36:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nc/Me6JhWACWqZ3Seo6sntz583zORBKIxRCpmiza2Ms=; b=KVJCpEGymbGybPM9
	Rkz9IMMik636mbIVWADF4ygtfKUH6nNdiZa4JvUqfBDOVkx9uqExDoyHAxFCRsHG
	ENuOH+2FYorhI9svghNSW/aV1MgRyhCdfKzsE4tXdNv535s31/u7/PcNy9RiTGl0
	bRI15QM/JGXBLP5KGv9cZcSbv+/uOdsfYIB6irFqeHYxtvey6ja8KNVau2cXY5tT
	3RuOMATqXWOAaZazPCsu0U+FDtKS+odvd0SJCyLtMc/sllQARZS/1KSaZtCWhLUX
	fcZLRO8QY66cGG5YrrGJ/V3QKRwjoVNPL7BsHVMYx2nmvRHVIB61Gp3tLJoTZisL
	SX3X1Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5unkgt1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:36:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24680b1905fso13668385ad.2
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 20:36:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756092970; x=1756697770;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nc/Me6JhWACWqZ3Seo6sntz583zORBKIxRCpmiza2Ms=;
        b=rNb4JN93Nt3C3wyF5Wm2XGkn0q+hiFCGmY3E1bBBuKByneOI4fMI3vSsoHXR7Y5egs
         MRmDWchyUo260z13b7dcbkMR18YBk7b5Dw3CCXK8KyDy7321Pe/UgWv9t23WglPgPoG4
         Q/dbDbeCA4BGac65z665ivmxsgYJoa87nM932g5SDNEEzR7dna/Qjj1c7KyIjrXzBxOZ
         HbQAJmUYTXsEiJLRTO81RlsLSltdY4wPB+w/CkykLglfpmnyziigp85i28fAfyBn348b
         n5pUNvS9dafCl/nuccff6J/bHOuf5b+V0BrmVm31yy8AsBz19k77RF6Xw0yx6QMUl1hZ
         j0gw==
X-Forwarded-Encrypted: i=1; AJvYcCVW+QMnK8xe3dHDJd+KX2BeUlRjwWAh689BLVz+I6MmY1+OgwDdvhVeYv5OgAzKatoVSflKyGNUOsAX@vger.kernel.org
X-Gm-Message-State: AOJu0YydLCTUigLR8/sfA+/UsM+DUvO5A1O/iKUOcep3ANunZwiX1RsZ
	EqJDJxMha31tA4nZfVnWVaeZCbMD4VrTadESn06hZaA/8uqf3rc8mmCYD/EPlLdHfuLwe5CAWzR
	40aj4uCxwiet/ELHpklXjrJa6W6jsqipnSWNcM1Nn8oAIWR62mIkciRHjptia5xSs
X-Gm-Gg: ASbGncvMgwW6wSLUJMmyRRW8UjgZkWgjotrXG+h75RI3D0tR3qo1PanNL91UiRFVOQF
	i2cau0Na5Z7MQ5LxR1peOSL+8VWwHCFWrgWwsCwszjUCoIN+nB8ZAUhhrp/C0sDIfJAfvcnhuXf
	M3u2AYNEpS6xMpEkh7/8129k5l0ZndU7AGCO0pp/ZpQEOzK6JpRd630XNINSRiBmhU03f33nXYc
	KvNlu3FMhDoY1p8e7nbLuhaMBt/Jo99RVg5R3zZybnuYaHZ6hR6+4JmPPRptSuNVEIyEo19riDt
	Aqo7w2nc9IBoa/RxOl2IFiC/SsO4GL41gKCgeB1DbOfkbXunvLqYU+yNb3062JY3a3CjA1M=
X-Received: by 2002:a17:902:ce90:b0:246:5214:e166 with SMTP id d9443c01a7336-2465214e452mr98782705ad.60.1756092970414;
        Sun, 24 Aug 2025 20:36:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzTqSR67U+tpNmDgf/how6hjhQZdfWFRotg9qOkMwQOBCL1NTrcmhM6hc2DsV3b0TbsOsshA==
X-Received: by 2002:a17:902:ce90:b0:246:5214:e166 with SMTP id d9443c01a7336-2465214e452mr98782415ad.60.1756092969812;
        Sun, 24 Aug 2025 20:36:09 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466877c707sm54859565ad.22.2025.08.24.20.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 20:36:09 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 11:34:24 +0800
Subject: [PATCH v9 5/6] drm/msm: mdss: Add QCS8300 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-qcs8300_mdss-v9-5-ebda1de80ca0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756092926; l=1044;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=xP+KCWOk9SNxzFjMtHR6U06UR7/RbmmfOmVurK6QZow=;
 b=FDyvGFXblAvBxHfRLhBNE2iuwsCHg20XL9cYb6uaNzOfq+jOhcjID6Tdrjb1NsPhIGdVdhyxf
 M4kmoCsJlbOCNbuFyrTSCeFqfFRefX4qhhz0HoHJUoA3h8CbL447X5M
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-GUID: W-xugIdF6uzNJ8gKGjaLXoYmmK6QK0Rz
X-Proofpoint-ORIG-GUID: W-xugIdF6uzNJ8gKGjaLXoYmmK6QK0Rz
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68abda2b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VHyea80QRMuD3TjLfpgA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfX1z33qhXbww6q
 5IIoAV+ju0wEME5hrLi7emf5QbLrdgKpdhi4riSfVOA7H6eYSiiQfZ1wkB8eGcx63WmnO5Jxqll
 xWQlL6bToz4tkbcC586vDHY7wBJsFdw7kw0j3RAVYnK2FrAE396TKIIWggILTx3+6RBCYaXnI+/
 9LS2H5+zoW88HUQnoXCG+hN0Om9VTtinhn5bFrnvBMnxvpMbvnTjEhlU8bxc+OfH8wA8FxDNcW6
 qWUmzssU9MwU5UJQOSsDPJQ+G4FsX5RjLZAc49dZMSBBYSrT8HNiSlsq9D3+zHSv1hvC9yt9vjU
 JzjzU1PXMVhfpdAAto6ypVHw4WLHraAH9RE80ZNHuUxBGFIZwk7KwwOprlwNp6az4wLCt0EN3oD
 FAQwijnX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031

Add Mobile Display Subsystem (MDSS) support for the QCS8300 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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


