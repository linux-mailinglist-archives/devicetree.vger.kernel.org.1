Return-Path: <devicetree+bounces-166710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EB6A8813B
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 15:11:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 862CC1751BC
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258012D1F43;
	Mon, 14 Apr 2025 13:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SEkpCEj1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 997C829C344
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744636285; cv=none; b=dn9ptB42zL2VaS5RX9svdZ6FU4T66U8fkcLXB4IRODDEQKgsmmkLNwymNyW8C6U4NgTmzqF5rZpBZb/P8ur32clkgS4NGLwhRJumwkx6xjT1TTGDEwzZ4d9RAeg9dZ8Ns1lM+tem1oDDAK+OhA9g9goSASJiDYWtgSzssVRKqLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744636285; c=relaxed/simple;
	bh=UmbP4wp+Oma3vrXIEVUZhv6OrvqorApn7ysegG0UWU4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iW/HQNHStI32KcYfZoxFj3/esq1qlJt9O7FjclenWZzicrzTL4tPuMTsFeZBC4Zp0a99RGy4SWwiVKXES/8zhIP/c1F3CvSyYkdtzoP1L0w49UKaYj5a2/o87KxbhT9fv8bjlV+ozUQ4Xa/wINlJnUShKTCfxU+F0whtFyVaKcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SEkpCEj1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99nZx017633
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:11:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=qY7gfOjasEp41TDXI1+FzfRevMJlQIF5bTl
	mRUcv0HE=; b=SEkpCEj1BvVog6DqS0sqbvj3ScGc6366lQIQaBhYgueKo2mRZCQ
	m/fsg3rflKDFIsoKvt1ac+ZH2b0DQWNoNKhw4XxmwY+Rcy1gZ2LbkqusPybr5YhV
	EQ+lI4WQK1oRhaIkAjGDIPD7c0FMBLOKmtfOURS2yx7AcMg2yqsmULcmB8Ksu751
	AzHJOcbrl4KCA61sEKwDef3LT+0IuVTectdJe116AVK/wxnK8LFGMG/L7xQ+b0+Z
	EzkLsst9/0kCya+D+xaynjEkSqA3C42LFYQAIT2kFzVIEHvEQCGPYftu6oOjFcA+
	CtoJvGAddteKku9qlh1pYDYYil/AoeOTb2g==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf4vcq1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:11:22 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-72b831a73d8so3924576a34.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 06:11:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744636281; x=1745241081;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qY7gfOjasEp41TDXI1+FzfRevMJlQIF5bTlmRUcv0HE=;
        b=MESPhGWCHOYwwV2RLy7+Eu9ZqyscoYX9chFm8EeoGm0d7sFJWjkvGwtmoe9JCvHlvV
         8K7QJHfIXEM0Ggl0S5RYAxEEul6KEVdp0ou5krYAlDqqAPasZef4Y6o6h3509IIH3ROB
         PlG7ioqnWmLTni53nNqWfh+W9UtcFMytIVdZdxMFGriF9k1ei90UOmLQ+XszX9abvHwP
         vDXkb9TorLU3K0nOJ2vyAsYc2tXIi0KcWfyADTxLwcjyw6ICocVLE9DzEyrYcINMvlnV
         ElSr5RloCb5jUHDQiO//PAyOafvqDoXUpEdZMt2kUD/DeHFAv3tn3Lqq2ZW4VmSb6/0r
         oYSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhdSBbvsgmwA+lvh+pgVdmbakrkUvMNvfIPP9I7nlh43kQSoP+8kpglLpQ/QvTb9NtGDTsnnRHoDst@vger.kernel.org
X-Gm-Message-State: AOJu0YwbcLOGwFUHEh52mQ/a/kxjdUVGdNG9JjF+XgggO6JWNbWdOMeB
	oKVYndXMctP8FRRV5ZlK771lQgq2Uqj4ow4kCBX58H1tjQNBVo0EAy/QLhZx5O/vCWjRuVtbxoY
	TVdYQIdf3t7Ap2gu+WTH4N3yRs3Oht2aKOinEkRJugsrdJbQlnPViK0tv/Ot8
X-Gm-Gg: ASbGncud7ZckHpJv7D1AzutS3qyH/Dg2WyIyNPvrJq0KV1kmc+eSIe2BHCflC2knnxz
	ndSoOOtn8nmTkujATJSHU/M//OH8FLU3wCA4zE9brmhCASkJV9Nem1PJIO2wJLZk3hOYkv+AgeY
	uxvnIdeHBQg4apqgOdNn05ZD64aSAtEr3wxfo1RkK2rDh23eacjfPijcwxs35ftl/y6QadB1V/9
	zve5Pygq+WD+fQP/qbhzW6orr0QTotkoSo1DUuTzoW1TQeW+iMdmXFp5mIhs2W+p1W8saJPF5Vg
	H6sWK1zUY6Y6D+l57U68W6oBl3M5NgAaCOIRlukLauJCR9M8vErkd7PEbHeyhsJrdTVMNjrHexr
	f
X-Received: by 2002:a05:6830:6405:b0:72a:1494:481e with SMTP id 46e09a7af769-72e8616c478mr7820275a34.0.1744636281301;
        Mon, 14 Apr 2025 06:11:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGXgfXq8mSGXy4BvFvnwneWAFeueikAudN2aGSLDGwPKM9/oASxUL676cF1xryK0AvIz0ZIA==
X-Received: by 2002:a05:6830:6405:b0:72a:1494:481e with SMTP id 46e09a7af769-72e8616c478mr7820251a34.0.1744636280837;
        Mon, 14 Apr 2025 06:11:20 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com (82-64-236-198.subs.proxad.net. [82.64.236.198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f206264a1sm181921375e9.9.2025.04.14.06.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 06:11:20 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
Date: Mon, 14 Apr 2025 15:11:14 +0200
Message-Id: <20250414131115.2968232-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: O2dre1UHfaqeLxUV_bA6YYH63J3X1oWT
X-Authority-Analysis: v=2.4 cv=IZ6HWXqa c=1 sm=1 tr=0 ts=67fd097a cx=c_pps a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=MDeckJw97qnk8wCBExTehA==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=NlPZ1nVzr820ScHG1asA:9 a=EXS-LbY8YePsIyqnH6vw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: O2dre1UHfaqeLxUV_bA6YYH63J3X1oWT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 spamscore=0 adultscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140097

The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
It requires only two clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 v2: Reorder commits and Fix binding testing syntax
 v3: Add clocks minItems for msm8974 as top-level minItems changed
 v4: change AHB clock name from camss_top_ahb to ahb 

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 73144473b9b2..83b13370ff6c 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -25,6 +25,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,qcm2290-cci
               - qcom,sc7280-cci
               - qcom,sc8280xp-cci
               - qcom,sdm670-cci
@@ -44,11 +45,11 @@ properties:
     const: 0
 
   clocks:
-    minItems: 3
+    minItems: 2
     maxItems: 6
 
   clock-names:
-    minItems: 3
+    minItems: 2
     maxItems: 6
 
   interrupts:
@@ -113,6 +114,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 3
           maxItems: 3
         clock-names:
           items:
@@ -120,6 +122,22 @@ allOf:
             - const: cci_ahb
             - const: cci
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-cci
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: ahb
+            - const: cci
+
   - if:
       properties:
         compatible:
-- 
2.34.1


