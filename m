Return-Path: <devicetree+bounces-162318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A79A77DED
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:36:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 664A2167E44
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 14:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E4F8204C06;
	Tue,  1 Apr 2025 14:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AhcoGwok"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEE2204592
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 14:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743518197; cv=none; b=fQzCO+daRFE/xhvkiT5oFEWbAOO9LWX4IM4ePfC7DmLleSrWqbfIAUpQ7O72Qj4u22q1Gldk0bwVjh/QSRTpDaLrxFWNhUacw6/I0hYXf7Z/kYzCG57MPWssEMR6tRedXYDZxTovqwwRTsWt87qevsj4WlykjfmnFMmH3ltM5/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743518197; c=relaxed/simple;
	bh=uE4zTtSMR0UVFG17z41kGgDjdyhI6warBpT85TIPf/I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cDpTc6g9kLJv+XnC6YhhMbW9KzHeaGyAlUmU8QsXrRHEHGkKrRDanGjWn5tNtFe2fBpnRYPo+1YsOPqQOrjmf2zjcuL3tqw4GuMG0Q9PS/1un+f91jxOU8RsM2dYHP+ndQdKIKuevHLngWdoYsTocJzpUySMA1iN7YU/hdHDwq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AhcoGwok; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5318LDej008453
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 14:36:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NN2qZQpuywQ
	hWQEV1cgKj+jZhFYj7tdYJKCqPQ3mi2g=; b=AhcoGwokK91w1I3coYrGtdM6kaa
	FO+jZLtYEUBKRCcev7xxJ4UKLo4kbN/OT7gL1jD5jmfThudnZsn2pbTSdXHeLlFF
	2qZTkHpAMDoeENlIB3OjlG5x8jLur+Veq/JFPuEsMRNc8rKNEueXlEkVm/Ji5KvS
	k4okUtMRr6wRvFVLtP77OLtwLwidIzBl1/Qju6UuEXfUNf/R0xqSJAtUqsjwnYWa
	cFXNCggOsUtfLgD5L25TcxDM/IeHzOnXbU7atxcBk7VXcCEJfe0H+4XNwkuDHh0D
	oRwM9lEI4jiHoo28QU9YrzqaTn029oTLrpHffJtgU3Ii6rgVSTc8y0QYR/w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45r1xnjrfx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 14:36:34 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-22650077995so156239275ad.3
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 07:36:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743518193; x=1744122993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NN2qZQpuywQhWQEV1cgKj+jZhFYj7tdYJKCqPQ3mi2g=;
        b=cTo/DNK/LeQ6Ek6rNrKiXN6CFLs5L1jUYmLU1LPFQHMCujYXSUK9G8tBAB8k2YTPd+
         JT8zNfc/6hw/3R+wiUD3VEDA8deDJ88FD+FJtak44cRltzr+bmZiMlcENq2RW/GzEKnd
         MI6fwdJxArXs2Z9OyQEUgWKPMFzthaVSap2AHrmarB2wkE9WuczUBDb0/CsmeoYNZD8F
         H6FQQkDB6mdsf2eOWz0v6MqqgKBJXFqLGWUFCJm7uwVdx0FqJwi9Fi+Bru0GXW7at3F4
         ag8FvpTg6883762i+iUFMslCrPArPKgJRMCFVnwGzvCAbxc8bq+ppqbR0iP7bH9gyVdz
         sIJw==
X-Forwarded-Encrypted: i=1; AJvYcCXrvyymINX935+Jw4lxlzLEH1ZEBdhJ35BCC+WMvVIwSOeJtJrOEsCPx2BoMdd9um2Yfv1HYiM9DeZX@vger.kernel.org
X-Gm-Message-State: AOJu0YyRWSG1x/LbYQ2s2Kv7KfoPlDTv6jhxE6OO091ZgvRpkL6xnNHM
	DjaPfFHAEXPilA2SosLu3WQTHaAP7ZVXsZp6f1VV1tS8bssxq37b/CtoLFuDPwVgLNLVdaXWIpg
	RhvyPcdS69bRIb2QHy5udihkRvUscM+JYJjF1BumTtW7W8MWuvLZj3dtJS0dn
X-Gm-Gg: ASbGncu/1zDOMG3dnRnJwECRz3P6DymfiJh651447eKUvF9BBHZpbmsdr4dRz0g/xS4
	B/8xy2Clh6V1JmbTFSQYpUXdmxTwgamTeSIv2X7v5W6H/WpyiCKrBBBYsCo/bfCDnrEJ7ucYsmr
	7vkiWYQ6Qmvd1dZ7cbTa9l5zwcmqj2h946Vu5geh9I7rmvHj2YwvL7DdwCLTKebpVmPSiz9uZk3
	mnMQfZm+WalzuOUSvXvaWHSu7lvz3G2zPBvXbsNVo4wuTte1ErerUyNvi3w6dRT9cH5EObqW8H8
	2roAmttvrIqAkDojbTpPAESKxjo5eAq4YbDGmIhNc32DRR536Xg=
X-Received: by 2002:a17:902:da84:b0:21f:1549:a55a with SMTP id d9443c01a7336-2292f942cbfmr198958495ad.1.1743518192840;
        Tue, 01 Apr 2025 07:36:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBz8R8GJZLfBlpPfj8nyA/e7ohAgn1KyhnFv21Xo3mZWoNmPZC3NLJbyoEJruPzJW3MTFqhg==
X-Received: by 2002:a17:902:da84:b0:21f:1549:a55a with SMTP id d9443c01a7336-2292f942cbfmr198958135ad.1.1743518192464;
        Tue, 01 Apr 2025 07:36:32 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:74fa:12d3:5d67:6ddd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1dd292sm89006355ad.185.2025.04.01.07.36.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 07:36:32 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 2/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
Date: Tue,  1 Apr 2025 16:36:19 +0200
Message-Id: <20250401143619.2053739-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250401143619.2053739-1-loic.poulain@oss.qualcomm.com>
References: <y>
 <20250401143619.2053739-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: jkWCdp-GZWgxOzGK-hxwn7IhIWhn0GaH
X-Proofpoint-ORIG-GUID: jkWCdp-GZWgxOzGK-hxwn7IhIWhn0GaH
X-Authority-Analysis: v=2.4 cv=Qv1e3Uyd c=1 sm=1 tr=0 ts=67ebf9f2 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=NlPZ1nVzr820ScHG1asA:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_05,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 mlxscore=0 impostorscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 malwarescore=0 mlxlogscore=999 lowpriorityscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010091

The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
It requires only two clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 73144473b9b2..1632e3c01ed2 100644
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
@@ -119,6 +120,24 @@ allOf:
             - const: camss_top_ahb
             - const: cci_ahb
             - const: cci
+  - if:
+      properties:
+        compatible:
+          oneOf:
+            - contains:
+                enum:
+                  - qcom,qcm2290-cci
+
+            - const: qcom,msm8996-cci
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: camss_top_ahb
+            - const: cci
 
   - if:
       properties:
-- 
2.34.1


