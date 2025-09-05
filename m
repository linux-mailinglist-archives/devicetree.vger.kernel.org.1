Return-Path: <devicetree+bounces-213153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97AD6B44C36
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 05:23:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 306AF3A995F
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 03:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83F9221265;
	Fri,  5 Sep 2025 03:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qs/3W087"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B02EEEBD
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 03:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757042582; cv=none; b=U7HF9eLKHxDKk8BD+pnPWH4HwtFobv2WFh5xCed/HIKB59HmuotyoNSkeGGcZqGC3NeuKNQ4JyZUaVnU+3VYPGVgNmrVpckB73kBkWdXxAzrBZc9GqTOnLwauCkaW/8WDfEzd2gECcLywCBTz7EGVNIO/VUWG16YKDJ/nni0bWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757042582; c=relaxed/simple;
	bh=xP+KCWOk9SNxzFjMtHR6U06UR7/RbmmfOmVurK6QZow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rrN5XbXysMF10YPWiA/CUNDtqp2noVX9Ga7SeDItfC9BSfCF94AbJ/FQx8OThhdrzuVaiBz8/iDPS0s3iFx77VVn0PKJhncpoi1UAdV0zeM79QcxNmQ/xoOW8XG1y7HfXqrkyiPrXxBf23mJ8r52yFUImrzwEZiluDJyF7gY1y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qs/3W087; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584JCXk9023889
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 03:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nc/Me6JhWACWqZ3Seo6sntz583zORBKIxRCpmiza2Ms=; b=Qs/3W0873vuIK9d0
	LH0HYmRvSGG2ZAEFn8tQJt3jl0Hn0ZahdX/l9RUSs9fwrwcKbVTIFV1Xn+i//T8i
	jywulvtR1dr2Iz4XZjeMGfJ6ujsL1IQJsGqUGjWyDryqaFOqlwu6Ykaof6pJDeQZ
	A9EBOaPuO1yq0RxA4zAV5fv8QWoOW+VRVcydTjQaAZbrpP5tfU9H/H05m53Sjl2m
	nddQaLFx+n1wMnbgyt88sUuX95nE96VZRgM2He/Mg68qb9MjLOxGo3Yx5AycXKpX
	1oxAt4HhPziZ2m5fDm81fc1wY4rk3EdS3nr+7L6yUPak2Q/pk3U7sPPDoX2ksL4x
	2VeHgg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fsg9v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:23:00 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24abc029ee3so22129475ad.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 20:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757042579; x=1757647379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nc/Me6JhWACWqZ3Seo6sntz583zORBKIxRCpmiza2Ms=;
        b=MCq+s/eVGrbO9nvEcwtikhXUys/xTn1tpEu8etl8hy0Lf28sUEiLzVYf657n1oLJVP
         SMIyM/i7TID8+P2HiQxJqgPLZmNU8VkG5wcypZhIt7LQt94Gz1qVX48JbyB2vvBzzDor
         0d/10psvOTgA2OFJ9UMuifoUMPk2YKftxcLpoT5IYc8oyZbeErqR/ktSZ03J4G9U8pAZ
         QKwGWsxnBYNyxRcNXiQDDbvMIPa3OgMOq4hJ1KbJ6AeeZSPlDuwmae+CjTb1v8rWnpXH
         sReI8dsf2oQOCDRSv/ZUaNQPyHLg2vpCnINB9H/T3f0TAxs7gWb/DXYazRj/WhQutJAJ
         T5TA==
X-Forwarded-Encrypted: i=1; AJvYcCVUnlKMjCeBYaWL5QUvgUgBMSztvnKc0rRHKmH/H4RXnr5Yj0jdtm2UAki40HrMOB9AYUS/MxlyZsrB@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn0mETIO3V6bm3C7L5nffcqcBw4dqsSZVj+S5zPUXsM/2/W9Y2
	5MPVDrudL6nvpDB76CgYY9JAfgtqLDTgjDnn8llkhbTVVNkeQztT7To2H/klFsoVapTvJIsURpe
	eC62v80KJMBgcjrsbLGz0jybxnJtgCJ7Fj7s2Ew2RYYUM+w4YlsexnkGAWZi7lO3N
X-Gm-Gg: ASbGncvE1A0jtl2tpG3jjZcazqnRslnKQI/9AAwRdkYlq+LCcfKkBVioDIEfGTT4vQD
	0/5iqIQ0PLUC0KB7u8ww2L/GNym4rBdPBAnkT1ksAISxplXU+8zf5sL5ggi7rOechxlm80Pgc8b
	dYGea/3cNO6h+DrJ/vU7vohlE+8DyQlf2Q7EFEfDcUOkLR/oFn9WYQ0Flk1pmaiOVH9SHrswecz
	c51XABnKLft7Y9Oz3kI3e7E4p7GZoIgBjIaA8sV6j1G/JAeBcCPyKmT1TA/lBMwCjIzCYD1UpE3
	mU6gzJBU4ezX6WsJ55B3N5qO/FQ/ZszqNKMWGu0QtWhb69KmRCEAAPXkIQvB6XjQCxk=
X-Received: by 2002:a17:903:234a:b0:248:cd0b:3426 with SMTP id d9443c01a7336-24944a460c6mr319747285ad.20.1757042579400;
        Thu, 04 Sep 2025 20:22:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyydly+6Q3+za/vErI3NFaHpvIdVdkzEH2JljFFmfwcLO7aiqxAf3LzU16QOySCFRu0OmPvg==
X-Received: by 2002:a17:903:234a:b0:248:cd0b:3426 with SMTP id d9443c01a7336-24944a460c6mr319746945ad.20.1757042578960;
        Thu, 04 Sep 2025 20:22:58 -0700 (PDT)
Received: from cse-cd01-lnx.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24c92eb0898sm56355105ad.77.2025.09.04.20.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 20:22:58 -0700 (PDT)
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
Subject: [PATCH v11 5/6] drm/msm: mdss: Add QCS8300 support
Date: Fri,  5 Sep 2025 11:22:48 +0800
Message-Id: <20250904-qcs8300_mdss-v11-5-b6b6a67a1719@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756974526; l=1044; i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id; bh=xP+KCWOk9SNxzFjMtHR6U06UR7/RbmmfOmVurK6QZow=; b=Z884TyiVMh6z4n5Eo05hhTpvKy7488klciNK+fDHB2Ltr4fouFJ4gaQDdAtbKOSCIOIfHQHS8 Mg1w9ymL1zAAM2uX/f3ppo/qQHnXn2O+lwMidxWAVricDecApUAL0aJ
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519; pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfX2lU07Oeos/ZC
 UFeHJxUVzHN8PZXoBZa+4yXXWUASKr31J7QJQrDaJIDPgCKOF8z8yC/tt1UErd0q74hbUX2nCfK
 dgoekxhzpDjijfFriPHid2vI315f3kmoqT8W826jPFBjebphMssEPLF0FqevCE/hSuVPbfabrgz
 ORzzVScQzemmjgVW0/lfDLXRbDEXgdKGgAZ/UzkmMX/6FGB6BGOLsvbwuXPmwydjY6mJqMc5JI1
 yLQrnArt5XtAQIJ0cKJLiVw7XbZoRK15Q01fjNGEzJjllOkV2GqV9Fvk+JWY4hUdhyU1FRSV9Cw
 Zs09njp2ICQHRsHjbGQAEOjXreSU/Hqc5ZQt7NTIGyCb9VTOYsBeVUwuZTBUpS5uvz+5+6BVyAE
 RIjna3Pi
X-Proofpoint-ORIG-GUID: ycXT2mR_TxG1ToliCIpU35ufQJhzb2a_
X-Proofpoint-GUID: ycXT2mR_TxG1ToliCIpU35ufQJhzb2a_
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68ba5794 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VHyea80QRMuD3TjLfpgA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_01,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

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


