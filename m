Return-Path: <devicetree+bounces-221094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C9569B9D2F1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E7442E1BA8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:32:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D252EAB6B;
	Thu, 25 Sep 2025 02:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FoDhhdoE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2242E6112
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767352; cv=none; b=pdJhXRQy60jlxtOmk1m0aa6lUcscRAHVSyiZ7FTQdbgzXJsht7CXaN8Z6GuaeOdCU9lxlIBfdHa/KWjb6zySw0gAgMU44dtln3s35ju8iIum24WS1ohyD4Ut95aRNKI4yr/mkbkEjzcSJzh0K9bpTrKD+hPs8oCn14WUGDQt2D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767352; c=relaxed/simple;
	bh=OkC1mLtz16qVJoq2dcpPz2WMUUNz5fHtzWVOhSAQHi8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VFU9svSFvIzJkczb+zlEJqCMTqlNFOHWx1pSNOAjfNMTRqihJiGEce6uQqCvlrYWbVl4Vlyc307gY+WkegpR6KzCV0up/LS06lZYoYSQdIBenMyCoL+FMahTB0ZvvOZRUfHeYQT5TIU/f/8hjqySdOCEPmML5PX5JapXhhtTDus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FoDhhdoE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0dRWc002118
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GwDc2ByWl5B
	YnzIa/5w++Oacjx00R55NFfYXUv0r7SI=; b=FoDhhdoExc/E0oa/RjY6gsGt/Jh
	V2wlsOgUWGGySNr0nKBxTNQ524GE66k9a1tr6uGHvlhxYOvuusqqfuZLoufZv3E5
	InFF9mK4clImcK31E4vXy8zGJVaNJqtlN89+4ziPsWF+sBh/Fyb/0rglEyVf7kpf
	inT29eT8B91jGnDgs+Z4Hs8fU/7w+O5tj2hTyPzX2LQnF0USyrqITFnnJd788LiD
	fy+eN5IEcV9c+OEkHuyMuMceYfWRyZiLCCpThAe4EZlwC7x3NdR4u7Qe2H1H3Di3
	k5Y6MgAqOai0gDG/WUj/SnTuhQf5TOhNwvGjBTBFJ6n0SM5L2MCrshKsYmQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98pepv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:29:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26985173d8eso7356055ad.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:29:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767348; x=1759372148;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GwDc2ByWl5BYnzIa/5w++Oacjx00R55NFfYXUv0r7SI=;
        b=c85jNuNWZk1T08e9ZTxgq2Wetw5U3F1StViZDItBaT2pf9npYGtsFICuuZremx8HRc
         xtuFURjsM2uCJZUq5bR+6zaRfViWHg2sGWtp9ppYcx6K0FNLY8xd6Ea57Z1s6BAhAiNg
         8cysg+KZQHTnbOwfcCb38wKKmXneNvkBeY8J9nrcO+3yuuw9SrvH/U55K9ToiHacNX+K
         brHEGKxD/k8AT3Cw9TfUKMycbZB08VFcXosO6bt/K2qKWlrOsW0JZJaCEz3ewz6FgxQz
         5FNtI10+1dhx+2R0oarmAmQfpPn3HycWwkD6TMGlxziHVo5/aD8AV2QVnXkaWSPjOPfA
         EMfg==
X-Forwarded-Encrypted: i=1; AJvYcCX57hTOMSP2AJYmQvSea0dlOZOUuPgpFKZ68GLQFDAY6Y/qaC0axQz1l74KlEcwje0BfjKcxseZXPa4@vger.kernel.org
X-Gm-Message-State: AOJu0YyJM/jgkGs/B6ei4RxKc3L+UKclK+U9RaCer9mEgauZ8ysZgaZX
	eBIw3b2244ZBEtGKjd6fd+DjNhaYTTf16xJHypQibB98HViIrLomBZ9Myw3oM4IrY1/CIG2K8Gh
	dwVMRlzNHb8e+ESVXnXbYT4V1ZtUHn8r9GdHyM4EEK1cZBP3057YXZa01FakN/3Mq
X-Gm-Gg: ASbGncuntgbVE4I4b7rGHqbzRtZnm+Wy+JqQhMWsg3UgF0cV9z7hgaYG9sf3bMLvAUb
	RrSPSPQjBw+fMpAcFjimon5yFu0ZuBpAKsRfP5ckIJWbl/bAgg82gt06D2np0EVGTuR0MlnSKxT
	oxyY9f3Z/ziQtmmcFKsSwLZdVruQvfRhgBSQR3Piiq5Z3zHEaOi5A4EctLwtmqpkwVe5te2PMGt
	e9BKk0UfV0ayMHZC6Q2EA4F/L1ICon1Zqimb9prBUtJ96gNMXTBdpNJTxLrRaHlSpJQgjY/X7kp
	ZHHAHrzqjIWCoX3IixTSMcOSfBjonRwITB8SS2ic8an34Sm80T1acag2uCVuF0g2r/M90leX6yT
	E1eOargIk0GYQnmxj
X-Received: by 2002:a17:902:ebc6:b0:26c:4fa9:64d with SMTP id d9443c01a7336-27ed49c69e2mr21780855ad.5.1758767347716;
        Wed, 24 Sep 2025 19:29:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvMKdq/R1VOIoSCgX8QYg7ZQfJNKKkQRcAu0k1AT4ZkR8KlDibAwSZZsHxhiLM+nIZarqOfg==
X-Received: by 2002:a17:902:ebc6:b0:26c:4fa9:64d with SMTP id d9443c01a7336-27ed49c69e2mr21780475ad.5.1758767347265;
        Wed, 24 Sep 2025 19:29:07 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33471d711ecsm499881a91.4.2025.09.24.19.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:29:06 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v3 09/10] phy: qualcomm: m31-eusb2: Make clkref an optional resource
Date: Wed, 24 Sep 2025 19:28:49 -0700
Message-Id: <20250925022850.4133013-10-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 7kIIbahiSMfWRlzurvjy9p3IuwvGmVhE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX2uT1j1RCC3qw
 VCQnfvXnRxlEXj/7aIL8X/L7YHTv07sZble/9KgsZ3WScksDE1RRnBCBzg/XN39RDamb7O9bbPP
 bstf4VqpvMY/0cE1qZSkbJos/bae5kNnA17swrf5xxyI5HXpDTjnFEzxIBdw2BFkNXFyCSif2js
 qpdeO70L58FZjVplVJ3eCSo0XHqmwshDy21q3BBILReV8kJ+inulruHzauY+mDyGKqrbT+v+WmY
 I2vS8DkQN0JTm593g5En78lfFC0n3dyDtdw2d+gLm/q7xZxVhGSlGkZ4iuKIFXLuUbgSHza6HaI
 w5uikvPyu6G8tcqoc6x8+jZouov5ONZsgcn0Iqyq8c7TgFaWog6F6NN2kxZaUceG2rPAJwjGgyW
 ljRt8wPs
X-Proofpoint-ORIG-GUID: 7kIIbahiSMfWRlzurvjy9p3IuwvGmVhE
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d4a8f5 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8inbgvmG2iPteTk8MkMA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Some USB subsystems that utlize the M31 eUSB2 PHY doesn't require a clkref.
One example is the Glymur platform, which contains 4 USB controllers that
all utilize the M31 eUSB2 PHY.  However, PHYs associated to the primary
and secondary controllers do not require a clkref resource.  Due to this,
mark this as an optional clock.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 95cd3175926d..f8a00962f937 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -267,7 +267,7 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 	if (IS_ERR(phy->reset))
 		return PTR_ERR(phy->reset);
 
-	phy->clk = devm_clk_get(dev, NULL);
+	phy->clk = devm_clk_get_optional(dev, NULL);
 	if (IS_ERR(phy->clk))
 		return dev_err_probe(dev, PTR_ERR(phy->clk),
 				     "failed to get clk\n");

