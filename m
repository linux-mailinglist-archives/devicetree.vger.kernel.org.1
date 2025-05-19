Return-Path: <devicetree+bounces-178383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2D4ABBA3B
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:53:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56F953B413E
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 09:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EBA926FD85;
	Mon, 19 May 2025 09:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IEaZjUp1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3B2826C39C
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747648073; cv=none; b=TYANcu3OwS7rrEGZusOGXHJhV/xPxCpBVv+wRlXSCT0YCRqTOSHZXDmRQiel8Gp7z3ogOYOaxG1gfNdbXij7ePLw63liTCMhA5kv06y2CuqsmLxhSXoDkYcc+CvbP1d4oRJ/llo0adwo1x0e+MwIGAYE/GmoLKTmhqaPlS859ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747648073; c=relaxed/simple;
	bh=bTMRlUg8gGDU4gh+pkb3AegCsq7QQeq9LoiypQRoc/U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=O9I4jxpA/OT7Hf3ZiaNNIm1GbX0fWqW6StQtZwqkHz5PR46eZqeOTkGlDml2BCIg1LCE3Mir6UOJbPHF1ZpiC+saGCdXNtMZk2GVjxJ4E6Cl9dtHfwvhjNBs9v/oCQY7pyEZasGmG2vhWM7SHObq+n2v9vOy/cxos9IFjeR/6Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IEaZjUp1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54J9PoIo019020
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:47:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5wZN4QwiiDh7CZQZWtWHLOO5pZhg4NU9nBM
	vPrkxGUI=; b=IEaZjUp11f6tzylWGMQ+CB7zq8oh3q23XSz3NifgkMa7ohIrU75
	BuTEnNdxUCW8uVIf1lXMtAXH1MUKYO/uaoux3h/pE4rBuxi7PXJTTg1/VHxHXf8x
	T9XPh8dZFg+oNMaCi07whmJAAUePGDfpmazQaPdbCARRHrIUY4+Afj9jkeweEv+D
	u9/JJHkLXh47jlkttgGA3/d3YM8flwRykrOVle6MKzAghDk5f+OTH8nkw2GnQ4i/
	yhNYUlEZtVEZmpoxmc9/e6cQuwTPHYe1P1h/YZ+HIkF9KM6HycWQ1AAtX08kQKbK
	FBG+QOiSwsSsVekxcnsbNAUF+4KIFTIu95g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjm4uwh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 09:47:49 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f8b14d49a4so36122816d6.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 02:47:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747648068; x=1748252868;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wZN4QwiiDh7CZQZWtWHLOO5pZhg4NU9nBMvPrkxGUI=;
        b=vGPaabQ/Q6ZxdD8b0ZzEHEki3IEuTiorYqIuM8TPOxwCS1KB8mAEUECbk4j6Ty63eF
         3zT3b2uFW11EPyxMsN1rVlkw5pIHAd57YYO3dIlNtEYRCPzVrRR/CBLnXEAbnl9SqtdB
         Uzfkg1ifXqKCnteB3a/DJWUAMsUxnywX+WYyBObehuv+ApYcOoiJmqi4tRIr+QLJwrfC
         aQ5t6J7cBjzqEDjUdYkRCCNmhcR2hdLtpnG6OklljHBcZRxQmKThIb5FOqCHVZA32IjA
         UkRXTZCiNn5jxs9rYlJBwfN1S05LwiX/mo7rAezpWtn6Vz7dqX9hHDotB/Hmd2KBCExy
         yFWg==
X-Forwarded-Encrypted: i=1; AJvYcCWwX4rvLxcj4AwRnUQtt0EzbFbYxN57peiC1X/o4Qpddv1ZsnGCmBiWUbQlajVsQjfGPmndRMltK8tg@vger.kernel.org
X-Gm-Message-State: AOJu0YwDA71rpe5kHCZeGw+k4whuAhLFQUaW93H4VtcRmC71Thi2oHYH
	mi/FJ6ywnx5tAU+1w1j1l8onNl9d+qalianjQtqkxrJtuCIMHhyW/Cqbn2AFyNasJ6N/KpmJse4
	stBXqVIXqHHaOjRKcvLEAg/qvigW5QkjGGH7mUdSUdzLe9RA5U9WxQSyrNeH13QpI
X-Gm-Gg: ASbGncun7ZjD3H/zpcG1Axbbia5JJsg4tSYMBliyeFPvpu4t2UAjo8CIQBOOR07xJK0
	rP/SED0s5VY2iFVcDEDEqMg/D5106lz63XAOPtpkPrgvmHmdZ0MF4kSlV6Nd9OZ+iTee0pp9pTE
	WhqIva4JTW0oHNZj1STLYNd9/zQt7Lmkv3Se1pMaU9anX0xziFkGh0TPb3iO2GNFRwo1zvtkcJU
	lCdwSDtjQ9yMpl1r9KjCC6oquyd6jsp1U/4LRfMCE8RECWJDHyc1+F6IhQx0VR59q49UaL5kYbW
	PEkcvnfASsqaRz3ID/1uxpIO2AX5LQUczzA0vlJ4+7os0zE=
X-Received: by 2002:a05:6214:528b:b0:6f8:c23c:5278 with SMTP id 6a1803df08f44-6f8c23c8524mr138859306d6.12.1747648068387;
        Mon, 19 May 2025 02:47:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFsNDW7YAAg+IYbOh6WTNXEz8eXGB3AYdSOPplc6+3gHrYcspZExavw8no8LzsHgeCqcfXMRQ==
X-Received: by 2002:a05:6214:528b:b0:6f8:c23c:5278 with SMTP id 6a1803df08f44-6f8c23c8524mr138859036d6.12.1747648067830;
        Mon, 19 May 2025 02:47:47 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:e5bc:5c94:e4b3:3c4e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d498d05sm572185166b.149.2025.05.19.02.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 02:47:47 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: rfoss@kernel.org, andi.shyti@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
Date: Mon, 19 May 2025 11:47:44 +0200
Message-Id: <20250519094745.32511-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dIimmPZb c=1 sm=1 tr=0 ts=682afe45 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=dt9VzEwgFbYA:10
 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=NlPZ1nVzr820ScHG1asA:9
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: DF8KzSX8mIOG_SkmpwsWHUfl7gTTAo1O
X-Proofpoint-GUID: DF8KzSX8mIOG_SkmpwsWHUfl7gTTAo1O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE5MDA5MiBTYWx0ZWRfX6Y8+WgoC18hg
 dcBE71/yWFWAlsMAYsClmr+glVcDUtoNLstnbNJHMEJyWEn0ONTQKal/J2jr/KemJx0qsy/7ZNJ
 qZ8n79NV0AdQX0qM4k+aMXp5wW4SXos9o+e2rx+DrLSsJxMww6Efqfj4KHD2RFqedAgGED/26sb
 7wWX4arQrBy8ONk8MbJITJp0T8qmRFHW2E2eq2CC+DcSpcy14yEHsYwbwNnMdw019OFtrArIReb
 nKYBqECfZiR+oKKl7cxFUSTf8EbRIvQJNDC7pcBSNmYu33N8dIc7XSFolIqHDxViQaSdEr3FLQj
 l4FYbX2HgFt9TETzYJyl982mChZ254owC1IRzqWvyiCKmjGZutWwf95j/tUvxvvB/0Y0DaiimXe
 kYfNeexptoSRvRN/r6ahT1PeppzI+Iq8/3NEIwIjasphKld6KlE/Z6ONCduozz+6++DqyQ8c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-19_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505190092

The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
It requires only two clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 v2: Reorder commits and Fix binding testing syntax
 v3: Add clocks minItems for msm8974 as top-level minItems changed
 v4: change AHB clock name from camss_top_ahb to ahb
 v5: No change; Resent with missing recipients

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


