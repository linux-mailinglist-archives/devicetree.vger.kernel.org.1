Return-Path: <devicetree+bounces-157411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC83A608EE
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 07:11:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A25D519C3AB1
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 06:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D5FF15DBA3;
	Fri, 14 Mar 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VyHDBwxo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A01AE1953A9
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741932593; cv=none; b=XFrgPS4BEd1j2T4sEZgj0LdfhHyld0dflkQlUrBEib11dlqvZsAEoI73csxUnO/DQ1VX7yxuVOtQiNlH4j9ziqRhaQeBpnzp7w08TSWTvb5Mq3JdX9sXSXYg4rtdHnbtyJIfipuc3vBZns7pLh6+WJkdU4zcwjkbAsiTnS+qb4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741932593; c=relaxed/simple;
	bh=OG5d4gY7vmYN/Ho4ZXDwy54ckaj7MCjmkwbMaApZrvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jqPs6mfKDJgg36bV+Ri1Hv6u8K4b2n8HzLIdWQSmDRqQJ4/n35pIqJGdHsEvuAjibJlfqs1XkNGRKJt2zc72IRqS7q6xZJXDAVWsJe3lZ320fq4ey6juB2gY/uRsVq1PCz37gbTI4rpjE8cLpbIG8ZWYuFuYeUWAAfoh+w8Of3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VyHDBwxo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52DMrebP028132
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:09:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mjSoUBvhcQw/y04Nu5LFvXZ5AJDuaSz5Df8S6I6vgwI=; b=VyHDBwxoPudWArcF
	UM3K3KFFTk72GNi5BAMt0MnLiTd2Vh6iG5b+ioI8UOWbekNFYAWJ8QWpyeADE9p3
	SuKBMSoe7hDmY9Z09m3M+02Xv75jHFz28sXy/tgO4WEgT9SfQknLAimjKyct+ezo
	+oCklyYEdvTLiz5XgJEGoR3LSog+QjUSSAyPKmPTj/USLQPQcgAepmGOBy6tHL5I
	VZ1uH45WZ6wRJG70muXas5SfZYun9GXV213k4E6dj1hyVKWW+vrHmKDZLvGhdAD5
	0v0GNh+7y4MLJVhvSA6hSQKcQYMwNspkJ9UuClIaqJ98AM1WcSkICqJ4/GGsXzTI
	6pRAJw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45au2q06kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 06:09:50 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4765f7bbe1bso30041721cf.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 23:09:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741932589; x=1742537389;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjSoUBvhcQw/y04Nu5LFvXZ5AJDuaSz5Df8S6I6vgwI=;
        b=bILAcx/SSW8QmU5D2iDjgq0evrHf/+xaGBbpq/4Y54F7acsD6uIv44dqK9ULMdFfAw
         2QPCWht0nlnMpExpQtQpTYACUMHAhP3jHeFfWWaVbXKNLxQ9sMka/OmUX2IBZ2ax0Ek1
         NyisvqCSS5sdQvX0pWAa6vRqC22/cUsiwj2cAjfkUb8h43Gbs+L6AnQzaCp+qbggIeR6
         STzgJHNL0HDkXgLoOQY8u2saa7WlszsiKIg/Apkngjq0I8juTfIiXGeo62JR7KYlaCEk
         +Y52G4FuzM89+Uk8Mdkn5mpQfq2fNTXdiOZnTFIV9RhwojODzexzTdyHNE9ERx1dw+Xv
         Ws4g==
X-Forwarded-Encrypted: i=1; AJvYcCVEPmEXMhJfcnErO47i4Hzfx/WcM9i6zkRTKMDNvYHwUQXuwkb7Z5E393HXvLiOTgfFEVBA0pqZ5Pm4@vger.kernel.org
X-Gm-Message-State: AOJu0YyaOs/nNvb/jOeGtBkXGcg+aFwoz+ULfZ23ZxzCvjfUZliB5oKA
	5CV/jbB5jyMEKaI+FUQuuwmlxSuSZeVw0glTWXMKnd1l6FyEbCTlLeetW72HNVlPZLLdN/5s1s8
	Soi8nZWk2duowUk0viA7dF3ruo5teYpGiUCEjTJzhNmk6TXqr7aadIF5SCJwL
X-Gm-Gg: ASbGnct61oZ2LktFDqvXBHYzNaDAYJveq14Mok+1qMtGcDDgKSYMbihmqXq8+E+g40R
	G3F3LkSQxpSpSJVPB3goJF2bOfmZxxt7Skle1uCVoIimjJQ7CB8eShl9Vq8zNzsKscVXcIUdkos
	65saM1UXZDP0H2sm1DT96UIlRwicUrrmkV80iYLg/5x9ZdsHYArsQJSMW9kwa69myFuMc+v10Vk
	bjvZs/xGU583KWAplppUQSiexC/e0bt8RJ6RvJrjCasYArSw2wvF3SgWhTkN02jp+Jm2Z23FJtF
	3c46FyqXLw/ii/U/kzkLKIU+e4gtiGOkeIkisLuf45CRN91meL6D3uOx0vvhd70utIS775joq9O
	QrXKuOBGlfUXsJ3sGXkVwlEngROgB
X-Received: by 2002:a05:622a:3d2:b0:475:287:12fb with SMTP id d75a77b69052e-476c81c3e7amr15418791cf.36.1741932589555;
        Thu, 13 Mar 2025 23:09:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFf5nv3MOYAkMmnz2OsAe+o9/z+buMZfQX7OZ04tCBLdd/CA2XLrJH4hX+ODMGN8nRL1Az0fg==
X-Received: by 2002:a05:622a:3d2:b0:475:287:12fb with SMTP id d75a77b69052e-476c81c3e7amr15418421cf.36.1741932589241;
        Thu, 13 Mar 2025 23:09:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864fc9sm416071e87.140.2025.03.13.23.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Mar 2025 23:09:47 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 14 Mar 2025 08:09:13 +0200
Subject: [PATCH v2 09/10] iommu/arm-smmu-qcom: Add SAR2130P MDSS compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250314-sar2130p-display-v2-9-31fa4502a850@oss.qualcomm.com>
References: <20250314-sar2130p-display-v2-0-31fa4502a850@oss.qualcomm.com>
In-Reply-To: <20250314-sar2130p-display-v2-0-31fa4502a850@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=944;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=j/LGXpgnuRffqJSRqVOkk/ZdY8s1uzD2F9Jjdwztl/s=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBn08gHRNb3rAw/1YzOCHHQbVo9K1tLhPyYm7yys
 7MIo6TQOkqJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ9PIBwAKCRCLPIo+Aiko
 1bIAB/9iefWNNYwh+AhEoS9fi7fnc0aFhfEWmt/qtY1iAeShQna7KTXKAzo3SbUNBaZo9tErN2L
 WCk6iLtrFQ5WyPlwV3u9SbBQewc4Fjz37eeV/q8ulhrbHssaXkX3cIEixP9xNeJCqb+NjPkosVf
 A3zYjGvP76y9p1LANOqxkChYYGCbSXMzgzFmBKlByz0ULTZ5uI1BdRO+dC2bbmYbPjDJF8gLuZZ
 K2MgUIW/9IVltX03bTJup8BOkeGWi9Sc/EMDPB2ksIdCcSG/B3KjVWgFgpqCWyG3ZAJvlR3DzxH
 EQqc3RLVcZi6JctqZ0QcvA8vEwLzq399AIjKshNLNRCk10U5
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=P506hjAu c=1 sm=1 tr=0 ts=67d3c82e cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=VUTEsYOwyNIbN2ghz4EA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: _i-0gWL28RiLPtwAI-ZSFxbelI9lMtYA
X-Proofpoint-ORIG-GUID: _i-0gWL28RiLPtwAI-ZSFxbelI9lMtYA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-14_02,2025-03-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 phishscore=0
 mlxscore=0 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=978 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503140047

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Add the SAR2130P compatible to clients compatible list, the device
require identity domain.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
index 59d02687280e8d37b5e944619fcfe4ebd1bd6926..ecc4a1bc9477b766f317a58ef8b5dbcfe448afa9 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
@@ -356,6 +356,7 @@ static const struct of_device_id qcom_smmu_client_of_match[] __maybe_unused = {
 	{ .compatible = "qcom,mdp4" },
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,qcm2290-mdss" },
+	{ .compatible = "qcom,sar2130p-mdss" },
 	{ .compatible = "qcom,sc7180-mdss" },
 	{ .compatible = "qcom,sc7180-mss-pil" },
 	{ .compatible = "qcom,sc7280-mdss" },

-- 
2.39.5


