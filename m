Return-Path: <devicetree+bounces-223181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6D3BB1EA6
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:06:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE8141C1E9D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD4E3126A8;
	Wed,  1 Oct 2025 22:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hj4ciPud"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3032627F010
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356343; cv=none; b=GbT0paMnaZwAXhfJFG1ZwTgeYIj9d/tyyfEGL3ovBX22lyky2YTTvQopdKQIG9fZYZ/H0y1FwVHGDdP5hSyU2Kf6H7g4K1WXVzQA3ArmtQs+bE3pG3YBK+0cb2D4ICPoAe3opWOPb0hUVg7f8qkxCpZQ20QDpohnICPSUg5maoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356343; c=relaxed/simple;
	bh=MCbqnX73P4uJn/n4jiAlTVZO9e/LGJ1yW50aiT4ZX9Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EFssuzuBWmFBNPbvNvGm9qEY9STU18U1J4ME2XZVlfzmh3yTdkZSeeQJJkPg03TBk1E/a1oKxKxRr72F5oLJARjecofYCGRhm2HSE9pLqQppq5CyW01o35R0MTqjshE1rBlAu/Gs/m6U+HG7xbvInraVrAJclWC3b37nzTT4mzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hj4ciPud; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591Ic865019969
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YYQJM1FZM3o
	3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=; b=hj4ciPudSQPTU+U1pI5THoE1fAN
	0Fc3bwT1gTOt3MkyH6+BVYF+ABdncobayX/s5qw6WDfRtpJx76XsqkVgZOxP/PB/
	3pZRr6YfOiy2Xtn/Q5jkGEmL1jfE1uryTv7JUMJ3Byc+S6DUZu6gpiZzzFpakjFS
	3YITEzDydigo3lz9IpMeexwko8f7p5jMBfIfIAN0GQ6SYMQW6oKjTdIIlipG3/ze
	jtz8mWQqYIeAiOJyAaGLWwzZQjC4zZHOjOQXx29uSOfEaySQsD7O/l5+mrZ+orh4
	AZ+GQX9NWSusmaWdV2rC3Mx9YbaW+ZQlMd1TVD8XZS09dKJOmLeNT+KODWg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49gyu1a9wa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:41 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-32eb18b5500so525892a91.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356340; x=1759961140;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYQJM1FZM3o3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=;
        b=rXi+FU3lRnBcHBzMsKtvw4NeEgMYbCwVq2etqWaJLdr8BevDV/nDBQ1sUxgVHrJ1Ho
         37RceZsZYibVozyvvbm6TXWdhAXRaBiHwDmXVrX5aE9aeBwvLcM66ZnRS1AnobuT2wNc
         xsQrqaSYP7BZQSDbsQCUm3bKtWD/wOqVeSNx6DClhuUr5iB5SCgw9d8Oz6nW6UdnSOsY
         OOt3pSoC3bh1mehHoCKnrzkCPcgCbXJzF4Z9+3Yfb3xUv7z8BGIO/D1j4fd1c7zHLyN9
         Pt5K9vpc6DSMmEZqFC9U+aNapfZz1CQ0Ojq0n05HFobPBWGyuTePaZC/Y6lVCyhYkQCK
         7oLA==
X-Forwarded-Encrypted: i=1; AJvYcCXzs1Z2TThjDUIOUOkL1ATfDodGPcaqkPnkanPZzSzKXqItyFzVxop8xshxLSF9IHNQ2d2fMN4v4mTP@vger.kernel.org
X-Gm-Message-State: AOJu0YwR3YQNtzsgw95mW7IV+Yi24avgaDJnTC9TowiepsTl07540F7b
	bkSXEpdxAwPs0E/gryJzOw6mo1zquh2hqFn5t/WkDqYnZoDLjMIcPC6hL18o1oRZB1g7BFUYJ7R
	WmaT1Sjyq08EdtukgQp+eAP9tAPE4nYt4NuRybbBFxEzWqMXOVrg1l+LUkxQWMuch
X-Gm-Gg: ASbGncs2veczvp7HYTM8Ei9Gi+0r7W5KXGhIOKBIxYL7lEiPN4rVmLWK6bduv7vxljM
	RvuumPae3bhvB+DB64YwxRjP7Z2Ma2rq9yt2l9Do4BOy/kdhuSjZE6APxpDc7AnnJt/dTWkv1RP
	E6X8D/i2cwIoYGxSuojHIZ6Tz4dUGYUMVOV6MSp5G86MMp2GDibH5lK1XI3cLLdW8GQhkLGg9lo
	wHVdtdw+9Yy8PEeCHwfzMiYrWwXPA6hn5e6O/dLKyHZUfvJcITZmRWVmy8pneJMYomvZyY6BAob
	noptqXJrRMueuQTv1lG0XCXRb4t1EbQ6MfG0mHQ89i72G4aD0wkKGxII0P3SchHMV9HybBgXFRr
	q+6ZCPWgMVCuON9xl7+Q1jg==
X-Received: by 2002:a17:90b:1b0d:b0:335:28ee:eeaf with SMTP id 98e67ed59e1d1-339a6f6b08dmr6125789a91.29.1759356340446;
        Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFnpFbmIm/22XzKrvgj3DpJIIWDvuNtoI8e9ISV9nBUIC51KNVUubMK51OjfPXVbhfl8vYXjw==
X-Received: by 2002:a17:90b:1b0d:b0:335:28ee:eeaf with SMTP id 98e67ed59e1d1-339a6f6b08dmr6125752a91.29.1759356340029;
        Wed, 01 Oct 2025 15:05:40 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:39 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Wed,  1 Oct 2025 15:05:26 -0700
Message-Id: <20251001220534.3166401-3-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=RfGdyltv c=1 sm=1 tr=0 ts=68dda5b5 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: zYUAZhhEv5Zw5Zlz17xYoj-l8IjPBQNE
X-Proofpoint-GUID: zYUAZhhEv5Zw5Zlz17xYoj-l8IjPBQNE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDAxMDA1OCBTYWx0ZWRfXxO4PZzQZyMtq
 XBXut7VuRpshiC2VLNKahm7X1zsYY13bXrf473Mu4qd1GiyQsA+9vSvWHlnV8cSz9Igw3iVbbGc
 pZG/p5DC+MTiNjE0iK3c7CKNITivyItd4lkLZZX+26Ixf0hdGo/aHdMRINxLkWI5iwtvuhKhW+U
 FHt359ee2+lBAR7zssTaVvz0UCCheiwLI1GASnyH9yeTBe5b6DsCOC+PFIBYW6oaSmRcb6GAXGj
 yG+0286rr51ymscvF2pqzm1kJZNBfUwj1DDAepUw5wq+5KuI7FH9GP+5+QQKBza657YB0yX7PR3
 VHFqmYlVX9Yg0nct2ymEYHmAArg2AvomLYAEdXo4phPPwZ9Qx38a95qdvytQDMiSIRaoimOqj12
 twuecIKQcOAlaF08cQpA+5SeZ+yMRw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510010058

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index a1b55168e050..b0ce803d2b49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -62,6 +63,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -157,6 +160,25 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          items:
+            - const: aux
+            - const: clkref
+            - const: ref
+            - const: com_aux
+            - const: pipe
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -165,6 +187,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

