Return-Path: <devicetree+bounces-162600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C55D8A78EBB
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:40:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C8BC13A2871
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 12:36:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190B12356DB;
	Wed,  2 Apr 2025 12:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LNixFCdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89271E50B
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 12:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743597425; cv=none; b=MTJ4UMEMKRFiZ4fzy8f41+hoPSOBi8l19h/g8pyRtHBYg8NFjMWquBUWBihnMULsYjvOqnFz+xaewPCjhTiGbO9/ablzUz6p9MdV+HSjoln9NmqGk9cdtz4ka3GVq4wPDUQlvjXKLZA96cNxRvpCLq6covkB2AzmC+tWDediMvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743597425; c=relaxed/simple;
	bh=HYoZeqSfw++RDcNbs1tzSN1QkyZWrPi8g+RCYcxstuw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Rg60+dl+qrlVyDoECRvkElyfrkamMmzLepqZdG/EeuiAPnYuWjzZxdDG7WLxyMk40fwZMVz6MtjY1Oh3butFflb0PyDS2fzcKbIsdzDEIZ4ot9s4in4rgCW8gNnh+Nnh5YFajJqYBISzyJ0O9S4D5oCMv6xiPBZZQUuMJSg6ebk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LNixFCdG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5329W8hw030908
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 12:37:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=84RmlULweGmzhoJMYd+O9blNnHu0JoCPO/Z
	XsF+WdVo=; b=LNixFCdGkbA8JQvsUvJIe1MNlIJ9VxlsaqMKn6IadJH0WG6zffp
	HPuSP+soE78SJKedU097catU0YJHaxHiQaTjlSqhRQ6qWE+EAauEpuwsGLw/KRw1
	s5Vk1pR2mJ6qT2GdrdxcCmI5EmoptdrYOwdcBZHvgSNY+QYyETBl20OFgeh6BnaQ
	OVPOLFap0tW5dmV43UyN0Pjc2LYWbreqVNb3rGiPL7+UgmTXCvp+QdfyZ/xOM0CZ
	1BRyi8ApVlsM27BpPYc7JtBUbARZBrBTIMg7X1n7kKcKfbEvaktLxskqc9JKwdqX
	54DydCqjDAcBHcmI9ekxuZD3j7UR8Ptzm2A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45recpkrgw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 12:37:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2a31f75so313724785a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 05:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743597385; x=1744202185;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=84RmlULweGmzhoJMYd+O9blNnHu0JoCPO/ZXsF+WdVo=;
        b=eaWhnJYdJee/RWDt1YXYYsLbodbm4zqPwpRGPOV7NP2Ce9cfQqMSBpol1rHKO+7XZk
         yomo8GVrQgR+VY8HtD98/rqhg7jdY2NE6b2L18JBOa0mG2oyRsy0+mUjzUqeRfVQ7Pu6
         4mYwad8D9YB+QeaJt4HopY4A+Mu4rCszte38dD2hfCKOnnLnJALCmonBVAYyFjyoMLxK
         2Z8grsPU5eRErrccEiOwv0cmoFzn0E4SyQ1copuIxrmSieW3dPshCaxJEJWqMFjKc6el
         9s3hy8MfnI/5v3fvHuXVso7xHzkRiU9Ocv3RXAJpK2yaZjVdsZunmtmPP8UAojxE/se4
         g7/g==
X-Forwarded-Encrypted: i=1; AJvYcCXpnm4LeItpwZtDtFZYy+UWE8B3Y3IMM2xWqd99fqbaSTbaY7rq9XPtcBmDMNGnwZZYm14OCdNOelhZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzRrsvGogeupeP+uqgeffITJ+9OxqsfcGgXcyJlIsU6ip3PX9iP
	5VI9S0e7c/Lu1OljhQDrXs5kLXwLD6A3wKrn2eT9T3H/oBDGZ5uUAgCfjOhKY+anwAJdU6MtCzT
	XyKzgQbN6IR8XSEr3Ne1EITjpLoGl3fHdVg9cTjxz23Ol2VrfnVR0gtfO3mTh
X-Gm-Gg: ASbGnctUgaAAszz3P4ST5/X+0/CxxlfMCAMOpvT2W+WtuE3mw/TPGwz3ISaz2wkFL5q
	B+Ltlz64RMeRfHrJLvvH2DCmUaAfnubSbe2rWJ7e0MxJtXvnOZk5s4BLWbxJcXfHDhyH38mbXA8
	DTo1RA21m37jnNkzpMZRkrBIyC4bE7YS1NX9zcsFMoVXLZSUTt3rwlX6mhfDLzWAfvAePwo4fRC
	ZbI4PYPjwTaKusLiKH6vD/ozFNkrSq+DfJ2qGmJIzImV4OoMESommO1x/gujVtntEAV/BalFNNZ
	DCi78M+/XR7VhVHOdWZaLI8GxgAEU3a/19/x1LlFRw62WCfesg==
X-Received: by 2002:a05:620a:4544:b0:7c5:53ab:a722 with SMTP id af79cd13be357-7c6862ec00cmr2530990885a.5.1743597384817;
        Wed, 02 Apr 2025 05:36:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvQhJy6rozpF/vuTHm7CWCJh4/6BurnDLY9ayJwyt2OLjg4pRrUoSaweyFTyLhCap9N6vr8Q==
X-Received: by 2002:a05:620a:4544:b0:7c5:53ab:a722 with SMTP id af79cd13be357-7c6862ec00cmr2530987785a.5.1743597384375;
        Wed, 02 Apr 2025 05:36:24 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:3450:ba3:21fc:7d2b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac719221034sm916438266b.32.2025.04.02.05.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 05:36:23 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
Date: Wed,  2 Apr 2025 14:36:21 +0200
Message-Id: <20250402123622.11984-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: mK03oAYSAWoSeaY652MMcSD-IwY4h-yq
X-Proofpoint-ORIG-GUID: mK03oAYSAWoSeaY652MMcSD-IwY4h-yq
X-Authority-Analysis: v=2.4 cv=J4Sq7BnS c=1 sm=1 tr=0 ts=67ed2f6e cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=NlPZ1nVzr820ScHG1asA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_05,2025-04-02_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxlogscore=999 malwarescore=0 mlxscore=0
 spamscore=0 phishscore=0 suspectscore=0 impostorscore=0 lowpriorityscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020080

The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
It requires only two clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 v2: Reorder commits and Fix binding testing syntax

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml | 21 +++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 73144473b9b2..55ec65df4f7a 100644
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
@@ -120,6 +121,22 @@ allOf:
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


