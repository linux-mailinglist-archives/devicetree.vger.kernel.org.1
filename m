Return-Path: <devicetree+bounces-162877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA81BA7A0ED
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 12:23:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1F5B188C085
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:23:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B30B242928;
	Thu,  3 Apr 2025 10:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M2Saqoty"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6AB221D8E
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743675785; cv=none; b=h5FVGOVki9Ps/jIpaLvIaxScd+mPMMqjDRE1A+cXZAlGbH+55ld3DxSI7z0DRI89sLXY9ILpLh2TApCqj7ueS9zqk0kLNDR4Gb7oS7b2mxFoN2nbCqqdhc7ElbK5E5wFEJ+KubJxkvQiqPLqPXIR0/PnOUKclod/z6KGkKm1LE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743675785; c=relaxed/simple;
	bh=WOZx1oh/XmGQx6hQtAzMP9+B5QcPcd4T42zyWRvFk3s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nxbDaoxAy4PCThwgDpSJ7Kx16ruZiJYXo4yjeSdBg6omtRXBm5kw6U3QYXZeDV7MJnD4iLT+ZP3QEqtojVfLAxbT4AjvE4HD6R2JXtA3jJ8mDfJPZw8CdaeGLZ17++IQMXDvUx30dTyhpoHfHcIZnhaEhWcUYrzOw7ZH3/bP3Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M2Saqoty; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5339sKeL008681
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 10:23:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Y/o/iLMTOZoo21hU2Wli8O+99n2B8VWbFzn
	jVy/8RoY=; b=M2SaqotyeHmAVFxLocASoa/1LTHwVI/bxX5PaawJlK8XlfZdZRq
	qE3qxlY018bNcl2NnctMOzYuDWXyVkPJ+A4PrGJjOxNoO9l4t4H+M7scweg/N1Zm
	neyMeajBvqw9w4dCXjsSwRyb1OpFj52a6m7DV3XpFI1AD70aa6FZ+yMkS2scBgU5
	dSMEXr9nbyudvCbA8e4s2duIWuIQd4ZD85DnyMm+Qb+zoNwGdztc3Jh62wrr44cU
	IdLPGdtVWL/4RfErXJf5Lg1K2XNZgJHrGIPT6+1ulB0uj07lyFuuTgLws4/3yOy9
	N9m+7p3SA0Ps7ly0Iw0MY/rERdyaUvdCOHg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rxbf494t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 10:23:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c57f80d258so227903285a.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 03:23:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743675782; x=1744280582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y/o/iLMTOZoo21hU2Wli8O+99n2B8VWbFznjVy/8RoY=;
        b=vZfLzsowfryLQb1rq9LuqcAj1MJotKopOoPFXvRbKpLxoi1WRTM1i1go5I3soX/FeP
         qhMSMGZ+8dh0Vz/wb5zJMFMAvQSUOyZiPExevnKLHU6hula80ZAReGiiXHM3BBZGbSO1
         L9BF1YuBjgZpaZBWKX7S3DJ+JnsHfi3FVGaaa9WYg5YjDdLHz7OqL/2xDVJ8vn2/4B6J
         nMK1jMagDwnifYU1W4lLO5EIAl9wyAujW7DdUzdqOKve7C95HZVQQgkh0qfiFzlQleiS
         ZQjmn+VHtNqo2CgHulI0/Q2EzAOzhgqwkupUQ1yIqsEfIy+GLnXgVUIKfp0Ziq5bqYUE
         ZxPw==
X-Forwarded-Encrypted: i=1; AJvYcCVtORAwk4j+hRjLuEQwb8saRk8cPIW2lCIn/0Z0XXTEWHDxoJCp3e1DEzn6+9oOvDRrDQ7Tsm7uhQYS@vger.kernel.org
X-Gm-Message-State: AOJu0YwjduAK9kpFcirfEyw6HBXY+G4uSD0wot2lY/pfljwAGYRnaere
	PunDiFTY1eSZufZC0Xb1ASyY4Jy8BGKd/GbfmVjRxocSZpou6fUz+bv5HQQ9PXfoyKU2ZXLOhrV
	L7sX1k+fawpypdxwvjGkZVUEbVjlOEByEgHaVsfDqZ5yhScYHIt2w0wRnYi6c
X-Gm-Gg: ASbGncsScxJgXGyrwi9z6ih52WCPSc8FvlRljo5cz/tgmdWCP3qfNa7D6n9U5+dCdm0
	Hr3io/lxh7HRrbpB23facTdcaNewrRoZ9WjeAhs4P/J2ZCFvWnOqBJr7REs8Qm01Z61Lhq/7Fsw
	u4NJVqLLq+ak0OS7tZ6nyEcfkXbN7ZbWzcSD4kcdrT1+8u2h6YsvXbi7XbQERxWeDdsq48Al4UZ
	KmfldmlwTQkbe2YCQUhD1MoimnX31mGD0MnKhFC+faGjPIM4JMLKHe/fVNHlOBDsqpxk1b1h25X
	D/a+IABfZN8DtQI/n5JdI2WKCTgoz4RN0L6099xOCMkserKFKg==
X-Received: by 2002:a05:620a:25d1:b0:7c5:44d0:7dbb with SMTP id af79cd13be357-7c76df78075mr196834585a.28.1743675782324;
        Thu, 03 Apr 2025 03:23:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVz115vUkLcoWLtOF/ZKfGrtULTjRX5q/fBWWZ4mkgEcv2nYbyW5ZY2XonDXXbxdm6KUkGrg==
X-Received: by 2002:a05:620a:25d1:b0:7c5:44d0:7dbb with SMTP id af79cd13be357-7c76df78075mr196833085a.28.1743675782000;
        Thu, 03 Apr 2025 03:23:02 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:3450:ba3:21fc:7d2b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c0186566sm69201166b.131.2025.04.03.03.23.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 03:23:01 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
Date: Thu,  3 Apr 2025 12:22:55 +0200
Message-Id: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Mv_CH1K_jgwaIIfD1C0K60TBD2nYK_vw
X-Proofpoint-ORIG-GUID: Mv_CH1K_jgwaIIfD1C0K60TBD2nYK_vw
X-Authority-Analysis: v=2.4 cv=F/5XdrhN c=1 sm=1 tr=0 ts=67ee6187 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=NlPZ1nVzr820ScHG1asA:9 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_04,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 mlxlogscore=999 phishscore=0 priorityscore=1501
 mlxscore=0 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030037

The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
It requires only two clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 v2: Reorder commits and Fix binding testing syntax
 v3: Add clocks minItems for msm8974 as top-level minItems changed

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 73144473b9b2..5d117c8e238c 100644
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
+            - const: camss_top_ahb
+            - const: cci
+
   - if:
       properties:
         compatible:
-- 
2.34.1


