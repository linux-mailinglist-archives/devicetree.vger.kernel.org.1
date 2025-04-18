Return-Path: <devicetree+bounces-168504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8497A933E8
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 09:52:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 29D207B0A2A
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 07:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B687274649;
	Fri, 18 Apr 2025 07:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ExwlSEzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC622741A2
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:50:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744962621; cv=none; b=XTpIRxrjTIYOsBH4jj8XGT3T78rbGbSXRqmROKon2gLuYGlxfVPSmfgrlMolPAK9KBaKEicjpAMZPeBNk+XA6wzp245ASTNWymcLANFaSTVj+zU+cDJA8BTWiTPC2bZ+EzKosbnr0VB9QydkYJA9C+BOVuliYVbDHbFqTJS4XcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744962621; c=relaxed/simple;
	bh=TjhfmUBWPuRKp2VKhI5As5MNL09FnEzFDA2kKOvChig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=apEK5xcjYKk2dEGB+BsihTS4tYYwAw7hNEA+QrB4tAL+gN0dcf4FoejBSgBTLlzMSYN+JSKlTEcRKChukJTvi+9yYKV74P9lcYLhyEZUvOtnGLmsV6EBAe8Jj9kEyWDjZhVmmEJrIlfF/CrbAmw2NEuFs+0RI9y+JKnYLPMDZaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ExwlSEzL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I2X6Ql008134
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:50:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jBom37zGwjUcEJUexe/y24yFDLJmL/J5QBTdnrbnixM=; b=ExwlSEzLMJ02Ea3c
	KzM4wJeen7RNWJlaYuzipiNakxiuPvtJKB0sZUFuzH6Dz/4zoZSi/VOhLFstCxBh
	86+5VET8KIurHInZDfqnA2XspLFkdtHVuh5YCRYXWcFGgCTPssAoFRSuqoEVRRT2
	zAWGF592zB/jie+i7plLruWYOvC1Ps0WflUVTHN9ftdlshDfkV7j4QoKpIpteFGD
	12/0qd/ZUfaeRQZJriMRT7qKxuo+NlNrdZJmfUF3okthqzUC4dXDuGGcS19SGy2r
	ivPpxhuN0XiobZsuSrK3BKI/YzvmHLp9PGZ2k/u69NgUSO4X9YkCu0UgGVG3DfB4
	NdJWMw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxk97na-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:50:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e916df0d5dso28491316d6.2
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 00:50:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744962618; x=1745567418;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jBom37zGwjUcEJUexe/y24yFDLJmL/J5QBTdnrbnixM=;
        b=Is7wlFFQKeREYW9L/6DEFsuZeIvFmfb/Or3jak1RBsQvuJF+pHW2jMXBtwuvaEromN
         fJVoVbQEG0CGfKtB7NUUkYV2WmEd4WWSkfjvkOwUJ7ZNZC224fto8cJABnucE32sNPPQ
         mPvAvdjgoL4465tpBpubNUSzzDxSlaTRvPzlpu1KvXfwG0IAirMiDCorxgZ3h4SDfB4p
         4kykBuyPTmym8Zgn4P+8TXCDNnkjA+M/epgXAlpiVS0kyiNuAwKZhvlEby7ab/Bk6ESK
         Er/QKYlcTXIzxnDedKJ2BRAMbq8d26D0BbI7R/mG7egDTE6LNIXsJhCcNcMuW/0yezGe
         V1NA==
X-Forwarded-Encrypted: i=1; AJvYcCU0kpVrYb9vuLk8u8GKtrCWuAp78zRrVqdlVY/IWQAD3kQuFWKbFAi3XtlrPLhTzSVX6dSms0AOBpnR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9xgN5g7y3AJTlykMznSZq3VqIoJLYr8l1hXAN8l9hKhhV626K
	Qb2nJlA2Zu02V8dpU0yNmWRwHdMl8jAAQwwu1b9ll+cKEAwhzBiM9ExL1ADoqCq1mRbQW2ypHMp
	9PJ99DZEMKnEXuv76Q9gbUrq3Zq/Rg7+oJGbY3Lq3vPXQrKaN+wIhGuJZLnrL
X-Gm-Gg: ASbGncvczlBqFaLYhmx77B+/cEU43TRdTwgDaaovQzcbKaspWRWlTpH0WnwXY/Pwx/+
	JkJVb44+8hCCIKPjwg6OBslBsQU+fg30sdRfnnu3nDyZpv14qQnbW85XEakg3xsggMwMWmEwMCp
	xmG5XwoIm6WMn4YyLBFHPy9ibKXaLwEYM+9Lt/USf2uLedSOmyE8PFNUoK5AS+N9nwPqGnHX9Qa
	m66ph3CLouGtvANI/aEp0XTGHkVxnfDRxZke/HGzgWH4v4zT1PVkVtb5AnRuxiMVzYdqGp6pZMi
	Lqo4twE/33I0/3nnm60MXPKCTZNCnki7s3HEVMQhD51/C1cThwwv+dnQBfL4Sd66b3gnfzk8k+F
	X5AgOa/hWx1ijJZhHo0YVteKd
X-Received: by 2002:a05:6214:d0c:b0:6e8:fee2:aae7 with SMTP id 6a1803df08f44-6f2c46846dfmr28955926d6.39.1744962618020;
        Fri, 18 Apr 2025 00:50:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEp41yz7pGz3rEyrIWBHkmGxcC/v51+s0suhZapt8oZMdW/ahoCp10mwhc7lFNRji3DDBckxg==
X-Received: by 2002:a05:6214:d0c:b0:6e8:fee2:aae7 with SMTP id 6a1803df08f44-6f2c46846dfmr28955596d6.39.1744962617702;
        Fri, 18 Apr 2025 00:50:17 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-31090863bd0sm1649061fa.113.2025.04.18.00.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 00:50:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 18 Apr 2025 10:50:04 +0300
Subject: [PATCH v5 09/10] iommu/arm-smmu-qcom: Add SAR2130P MDSS compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250418-sar2130p-display-v5-9-442c905cb3a4@oss.qualcomm.com>
References: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
In-Reply-To: <20250418-sar2130p-display-v5-0-442c905cb3a4@oss.qualcomm.com>
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
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=NsF5aI5nusL+eHX5Edd+WVqyrIto2M0m5QQZuN1UEGY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoAgQqkZgl/bdTTEtxJp0GnWwdE3JkQfrfSLAQo
 xuILrb9K7yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAIEKgAKCRCLPIo+Aiko
 1ctKCACX1msikRt57+al3V2ScY3uZ8f0c89G55FBgYosm8h42OrGpKJK6eMCDaD8bjypFkY/pA8
 pSCJKCbzPr0wK/vmGOpz5lT6oFBO6WRXjl8ed8ktiu/TOjgmCSrSh5VqWthOd6ctL53I+oaukuL
 dJEojXXHPYuYYn05pYHi8+0hLO03FKzot3dv9jmWWK3Itd6zvgEyfm/5e2GDchZuHDFHphwlrdP
 5SMQf9ygiz64TwGNz2xu5tWX8KZ9cL7QxHhtX40n/NAF1ZlMKs5MevkP1/XvLB4bELzY5L2Mzvt
 itQx7oLuu1YULW3cPAt/zJhQwEve3LrnLUOjUGz4JLXp15/C
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=6802043b cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=GY4BWdjpb_dk1TMi0HgA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: S5r8F2jy6taGnF3gxptRfZ6hnwGuJH4U
X-Proofpoint-ORIG-GUID: S5r8F2jy6taGnF3gxptRfZ6hnwGuJH4U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_02,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180056

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Add the SAR2130P compatible to clients compatible list, the device
require identity domain.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
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


