Return-Path: <devicetree+bounces-167968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B60F3A90F5C
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 01:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CFBB19077EA
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 23:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E9D24C074;
	Wed, 16 Apr 2025 23:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ypmt7D8H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAAF24BC18
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744845405; cv=none; b=I2wSQsqD/xBALo33F9DXDSehCyhYH+/svb1w47wV1UhTP1JRormVbvaOFxhBHLikcs9kPoc1kOzDrT1rnyxY3EJJ8WFZYF098nF729fie2rVXX2WZS05wJSnjfaWCXJiSxMU56uy3n9zll4OXYrzc47IwTyLEtpE3esUmScbWH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744845405; c=relaxed/simple;
	bh=RGg6LqJQHNLz/YdyIPSyHxFlnkDpez0kLY/KCeMZs7M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uWkVsIpmB6XyFmWN/a5V7OC5acNb9FaLxSdOoZ2NkY0bb3mk/3lFuO30TDMCZSqVPvDvoMBIlRmDxl4QM0XHPEIoJWHk8qCtdNCsLpKRU5jNXV528Puj7ditUQjqHAc3iGNeEUArlRHWqeVxZ9qi70yr0ffrW9U4w/ap8Yx0FdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ypmt7D8H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mjtH027221
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:16:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/QbvJSKxnfDapkwl00/Ate2tQHcvUoOl5cDQeaEM+xs=; b=Ypmt7D8HkfGahof3
	uLHNUAbjnYGzyfK9/AP5egc4Ntryyv4nlUMLwZtyigudYw1x6Zdd2kxp/l37TNUS
	cwmKftw5nfrpm4qTs3LK+JTz6DgfZVwRQlkDLNOG6H1mz/AGBs0arbLvfTTebJrp
	SsGI6LlKzUmZOTrW4dlxUfMfD+oMobw5UEKhmkgcXZ+3EDHwTLCBXiBujVfmKhbu
	K+lGBO7Ir5bjF025AydkFLtm1d192V5fHdHsOgpT3jQAeYT2UxGaM4GE4f5GxRwy
	no7sXaeNErQxjSBycevi0oNqEjpSDttSK4YPsxe8l95pURHF8ek8uzsbUysjDQ8J
	iJDtkQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs1cxq1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:16:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e917965e3eso3150686d6.3
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:16:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744845401; x=1745450201;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/QbvJSKxnfDapkwl00/Ate2tQHcvUoOl5cDQeaEM+xs=;
        b=Pu3az2CYD6Texu1LQKha4HZLga/lkHEjUDgas3AoU+qpfo76axUave7O0xlB33G3YV
         CJKiGXwTMyW9R8DTIkHnsHSRTWa7nDGCKJ5TgVj69bRbOFODSFxQZYqTRV5LsOd1fNU3
         ZSH0qhn6B9quSSwIuBz0/VUA4twO0l06j0HvtiEQ+pBrmdspOH3vACo0KgAn6EOAy/e/
         VY4TC7okMoO4YDVthLlILzLKDV0DmDhTsnqJaafkAfhIL9mNP1rzR3Ll1idCwuyM4Es+
         1iO+ieO4KRXChcn98G+4Rj82LyzcaOFOtIqjTxbAu6qDc9SQ7urLzjP7visz6H8Ucv/t
         S6DA==
X-Forwarded-Encrypted: i=1; AJvYcCVe84NawRWBNnylu2mgXRD/3/MWscWRd3ZnHPtUxhMlzw9LwYvwQvxGnGz7vmf3YpVTF55MJBmnX1sB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7cdknFLN5L+LUy+mrQa0qj1ZRlDTN513bDlRe6Ed2xxoWw5RR
	xPjqQph3vFKyRLPBA0ya5cEh0rEzqd9Tm1j1RQaEB6K6qaHnikf2zHtM86j/ZA45VXC0064Mab7
	zpkftPZJ45dlobeFieriTgZ9JOo+tzBC2C8cogC2xYsxh7vHzHKTJgFjQ2k99
X-Gm-Gg: ASbGnctJdPD8t2JBxQTywXb5DapYj9ciKeng6hrDwE7eS5lvDJ6u8b3C+lREC4DGaMy
	Xewg2CgBWh2GcCFZxBPUXlR2qFerPqdYJto6z9cPdKrpM0y/IDJes3Wit1YcEiToq1HPaCMhX8i
	kgS9ARxxMkUKYVNTN2+GtcarS0ixpNY8V3bHLpw4FT/OqYz6ZUcvH1R6yvYjunftVHfiOwpqbPq
	0WQ5bUpSwnz8ARjn+9ipm+fGdvE9FG+LldpBO2YUuL5gepn6Gs1aqTL3oCqACUmU5RWGoISqL9k
	JsTFF5MqNBAiy5x0iWMX/RyVKFDk0lc1JEOcjjZ17lZH5hlmJTs1Eai4qNtbhGLzhs3iFElUrVJ
	KzKuEm8kzrl8q4XHk694jasdk
X-Received: by 2002:a05:6214:21eb:b0:6e8:fe16:4d44 with SMTP id 6a1803df08f44-6f2b304b384mr65724006d6.31.1744845401555;
        Wed, 16 Apr 2025 16:16:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFodq3zesjzB5AD8ZHwYudSr6HtnwZ1FwskPTmT7ERKcUtRooBLKijOcL1qw2PrbhGDKECqzw==
X-Received: by 2002:a05:6214:21eb:b0:6e8:fe16:4d44 with SMTP id 6a1803df08f44-6f2b304b384mr65723356d6.31.1744845401109;
        Wed, 16 Apr 2025 16:16:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f4649d79esm26062181fa.15.2025.04.16.16.16.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 16:16:39 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 17 Apr 2025 02:16:33 +0300
Subject: [PATCH v4 03/10] dt-bindings: display/msm: dsi-phy-7nm: describe
 SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-sar2130p-display-v4-3-b91dd8a21b1a@oss.qualcomm.com>
References: <20250417-sar2130p-display-v4-0-b91dd8a21b1a@oss.qualcomm.com>
In-Reply-To: <20250417-sar2130p-display-v4-0-b91dd8a21b1a@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=939;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=azlck2n2u+qrgsVJ0BAEOEuqH2At8nKdcftYTsEljlc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoADpRqFeCbsoSliYom6fgv+FNrJxUdOL9SE2pO
 L35U8RUUXeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaAA6UQAKCRCLPIo+Aiko
 1aCzB/90xZfYQtLjQ4Gcp/7a+/k3O6aBnT1+SEVNnkCFB7B2SpWZzM4FKoNNzTmPAdlxNAQ6pV7
 uwyyP6e5IW24Rz0J0GVCzdPCyhdxL3OHl9yko0VdElC4+W2RkCUXDKL94GyolrRmU0GG8WtTNGX
 Zp0jcL+mKLfRDmJk7u3kTpsVYiaWr0iSYhZLOQa0e/yoTMlXZ24HgA4NpbP9k5si6mJeXpxQV5B
 gwkNc8wbu8flZkg93wMvWjvX0kYwPbTZfY/Q2jXkJGFWsk5e9E013W65zVfCRoa2McSCsXmVSL5
 /W1ToGzJRdarfdz17vfvONGPGWfUMZZ92wPwjQkStZYyWLU9
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=68003a5a cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=5g6dqdCWcepBQtZB-T0A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: kTftEN3RO_YgHi4lysxCXhd7h2xmFo9-
X-Proofpoint-ORIG-GUID: kTftEN3RO_YgHi4lysxCXhd7h2xmFo9-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_09,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=901 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160186

From: Dmitry Baryshkov <lumag@kernel.org>

Describe MIPI DSI PHY present on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
index 321470435e654f1d569fc54f6a810e3f70fb168c..f79be422b8892484216b407f7385789764c2de1b 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
@@ -17,6 +17,7 @@ properties:
     enum:
       - qcom,dsi-phy-7nm
       - qcom,dsi-phy-7nm-8150
+      - qcom,sar2130p-dsi-phy-5nm
       - qcom,sc7280-dsi-phy-7nm
       - qcom,sm6375-dsi-phy-7nm
       - qcom,sm8350-dsi-phy-5nm

-- 
2.39.5


