Return-Path: <devicetree+bounces-223952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8800CBBFA80
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:20:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 41A7A3BB4D4
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2FD31CAA85;
	Mon,  6 Oct 2025 22:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BPSHGI4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED717C220
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789211; cv=none; b=oTgagJb/NVT9Gdndmy1L8q3RlEF6BUbEkbUtjXTbI3AQYV2Fb6WJB6PI9JbuQ7udydRf8LzJjo88/+AdSjFc68bQ+COO7pFwrMeTcyx5Wf1U/O19+FgRhzQ5S+un/Eor8l15tQthgtj89We8Ixa2KOhU2bIg4Hc4tUYIL+wclsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789211; c=relaxed/simple;
	bh=WfcBDR9DIRDJLIXrzb9ShDflaFdoNyv5c5lXHKgErm8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y/BbQ1MfZo6m8K0Y72Lzf5xYiHHTIt7q89ImLCLgkARNLzjQ+IDPlFToDlezsq8bdRrkPotbThOAccfZk5bdLLGfzPk4yII2Gg89jswg7jziOuaVO6rrInywHjti2ZHaJM052VfumEwVWBJzCLMs3/bwGbpEOBWAtg7vDsiwyzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BPSHGI4n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596Esht7008732
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=kwVAXCKZYFJ
	vmBevVk49WwQx9cQq3YCpTTCCiPQjazY=; b=BPSHGI4nNgZYIza6e2xmMVNUpKh
	AgFkqW9hMAneI4jZIFgIcS7cEooZYKTK637AE/muzQkBEC84tZ6pe11M07C5HWTI
	2xrMwQWOP+FQ9mxK1fQdpzuwOaB+frF84SHXDxZQvi2evIVsqYhuXWAPZ3kUNp7w
	HX2likY0LEshp2HRmJMklrty+/QQBw+sntnrTwYG/ZJQFRufrPEgoD4FXj9oavO0
	2lkV/nYw3vrwvzntqXTwOUuMGh9IWBk0U5wJJ5H3vXplWuTjgy36rcfm+DpSrkEV
	ZNFULx97kOltnHz19G97iv/XhZD+SFaLrk1jfA/BvtkSmkMA0SrJ2IrEBcQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jvrhn5ed-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:09 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f5e6a324fso8485868b3a.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789208; x=1760394008;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kwVAXCKZYFJvmBevVk49WwQx9cQq3YCpTTCCiPQjazY=;
        b=UThIlyd6dhdl1kPrYuohH5xAmk4acRpDlWac+CmYqxDJPABF0AQs8ADllQ1NYsvndk
         NCwwkeh5JP7JepEAgvJ3qUJWLFXW0YHP3UJTMVZSaLB3m3ycLYyvxIDNHdLjkbkKHLcY
         rySOqaZmKHuWzecJI4cQn+82Z6kGG2yLAeh1czePCOd3gC4TpSbgb1Fxf9a/CAQI3Wkr
         9DyW8vTAV9Zto+r7MDKCDBEQctJ2Sn13au8BX0CgZtHRkNZy+iYnq6T7cAXegHcThcKi
         iyooIIBGCZgLhq12Lo233Jrt8JohAQPqCtuM2oqMv+a9hj8dkuGEv4zGrUVTNsAwuTRr
         d7lQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqBGaTRQaoSehoq24FMzDUcz3L782QsCVsNX/gjDmYu9404yTwFoqW2goynpc7HT//1o5H+Dk/6bIy@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj2TPUuO2vcEK+Jl2leJHK65wpRsylYwyPg/L2vh/DXtFL0MGo
	zjX9/qtp3A0qloAOOeB1UqpArf+wODp2lCZPgpM7VQiDYoHuz8+houJb7jh+MnumoZ/iRddCRzc
	bgDGyvYDD++WkFRpDDCyLszbRwdi3iy2UHJ5aJjHP4J2oyMi3elXcin99f9RLcsC1
X-Gm-Gg: ASbGncsc1up+NgiFk16vDqDrGBHpdU/GZe5tx4Y62FB5ZDYJYqucTLTB2GkjGy3GmuL
	b9PzHUW3JsgmRNhbMSnsIqf9eR2w5qj/thRu0qaIkoLCKFeZg7YY+xqkMHs67/ky1SdW9WwAxUy
	zaOayPvHdfiHviV1Xmp5mqUHTWMxGKvBhEkDtKPZ7y16RZti+j8kqPjXjpLCjbWVvhq4652io9h
	f/12MPrs9b3vjgMbSeEaUr0M2zoqG3dZH7UuWK9rEfEFEiIA+JBTCh68pErTmWtPZ8tFgS5IMKa
	ffqU7O6AaDM9OpVN2NIYL62ZxQZsyphgtlERQ3pBolIdeXYtR+QUOI9n2uCU6uGmAaici5WDYBd
	wMOpoDGVKu2ob+6jY361Hig==
X-Received: by 2002:a05:6a00:2305:b0:781:1bf7:8c5a with SMTP id d2e1a72fcca58-78c98a40a3bmr18785128b3a.1.1759789208242;
        Mon, 06 Oct 2025 15:20:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5R1SLObP0kiPoqDNLoC1YWFmO7iQQWvlu+1UAlluy50qQoqzliZ7CViBxbPnbk0mDKuzpGg==
X-Received: by 2002:a05:6a00:2305:b0:781:1bf7:8c5a with SMTP id d2e1a72fcca58-78c98a40a3bmr18785097b3a.1.1759789207808;
        Mon, 06 Oct 2025 15:20:07 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:07 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 01/10] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
Date: Mon,  6 Oct 2025 15:19:53 -0700
Message-Id: <20251006222002.2182777-2-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
References: <20251006222002.2182777-1-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAzNiBTYWx0ZWRfX5ExU9Zo90L+t
 qCf0cvBdQUwJxTStWEN9Lb49ApAvXEHFTo09EKK+M+fBU21I8yapjDjk1/xmjjNlg+iqgFqmaML
 QWQfZhuRJs/dCk7akfa5FBKugA7F/TEE2gvbhGTAkJG++m74H9hHqhKN3HlviQuD/D5NKC7rEWB
 eeIiLFsqiOcRRnB0/D8LzNsYdcP7IQNznrPIUppVczJm9QDcR+LjF+FGpb21qkpOaQPGIL+vfb8
 dclhpxZFvNzjLPhexEvSMYp+roRILK6dAL7yZxWTaJ/pWmIZJTVEn9uq+QdxSGKY0KGMCTzZH3a
 IYAJv2iZqmY2iMJ3uFIe6KkSMAID+apZZz5YKnbh/20Ceg7OZa6vxpq4QoDL02FsYQt8EC+/llT
 Bhld3J1jVx0it64Y29feHHsdrEDWFA==
X-Proofpoint-GUID: hiDB1SxDDcwXkzwf6VmAhUYcz-Yj9UCA
X-Authority-Analysis: v=2.4 cv=XIQ9iAhE c=1 sm=1 tr=0 ts=68e44099 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=7IGZojk4TMugEFbIs7wA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: hiDB1SxDDcwXkzwf6VmAhUYcz-Yj9UCA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040036

Define a Glymur compatible string for the QMP PHY combo driver, along with
resource requirements.  Add a different identifier for the primary QMP PHY
instance as it does not require a clkref entry.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 72 +++++++++++++++++--
 1 file changed, 65 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b..315723a87f4e 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-dp-phy
       - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
@@ -41,12 +42,7 @@ properties:
 
   clock-names:
     minItems: 4
-    items:
-      - const: aux
-      - const: ref
-      - const: com_aux
-      - const: usb3_pipe
-      - const: cfg_ahb
+    maxItems: 5
 
   power-domains:
     maxItems: 1
@@ -63,6 +59,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 1
     description:
@@ -105,6 +103,24 @@ required:
 
 allOf:
   - $ref: /schemas/usb/usb-switch.yaml#
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+        clock-names:
+          maxItems: 5
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+            - const: clkref
+
   - if:
       properties:
         compatible:
@@ -117,17 +133,47 @@ allOf:
           maxItems: 5
         clock-names:
           maxItems: 5
-    else:
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
+            - const: cfg_ahb
+
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,sar2130p-qmp-usb3-dp-phy
+            - qcom,sc7280-qmp-usb3-dp-phy
+            - qcom,sc8180x-qmp-usb3-dp-phy
+            - qcom,sc8280xp-qmp-usb43dp-phy
+            - qcom,sm6350-qmp-usb3-dp-phy
+            - qcom,sm8150-qmp-usb3-dp-phy
+            - qcom,sm8250-qmp-usb3-dp-phy
+            - qcom,sm8350-qmp-usb3-dp-phy
+            - qcom,sm8450-qmp-usb3-dp-phy
+            - qcom,sm8550-qmp-usb3-dp-phy
+            - qcom,sm8650-qmp-usb3-dp-phy
+            - qcom,sm8750-qmp-usb3-dp-phy
+            - qcom,x1e80100-qmp-usb3-dp-phy
+    then:
       properties:
         clocks:
           maxItems: 4
         clock-names:
           maxItems: 4
+          items:
+            - const: aux
+            - const: ref
+            - const: com_aux
+            - const: usb3_pipe
 
   - if:
       properties:
         compatible:
           enum:
+            - qcom,glymur-qmp-usb3-dp-phy
             - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
@@ -142,6 +188,18 @@ allOf:
       properties:
         power-domains: false
 
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,glymur-qmp-usb3-dp-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

