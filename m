Return-Path: <devicetree+bounces-223959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA55BBFABA
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 00:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6BDA64F2681
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 22:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C0C2DF12A;
	Mon,  6 Oct 2025 22:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CClnthBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82D21EA7CE
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 22:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759789222; cv=none; b=Y4LUlW6InzlmhBQrfchz1i+Xunt4nJUkW7Hn/9tKXYXktQQ+HNISE+pH5CqQiG0rsmm+YxU9g8Qqvb964zxrBjh3nwNO0ud9m8rUARC5BVA+QTWNWKzYuhXumNghhGhlB2HlPTKPTvrgWrFQInkCXIOrnTz+FrkqMqd3nclegdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759789222; c=relaxed/simple;
	bh=MCbqnX73P4uJn/n4jiAlTVZO9e/LGJ1yW50aiT4ZX9Q=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Lsy7BZxL+ws9l0mVhZyBI/C9gfLHjKdqKo/BFTto9E3Y8gjN8A40BqGHJaOt3FqXm5ucEnNYJD1oiIWANcbTHLubL3wk82iePRAjrpsxUVmTsGtf0X1EZXDoK9MBfIh+N4ZNF/bzWA4Xcj6XHubFjQq50tQL3GWtIkDJiAXDKKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CClnthBI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 596F9lw2020690
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 22:20:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YYQJM1FZM3o
	3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=; b=CClnthBIO3iEJu2ARKji9JHH1mZ
	oYZrU5EOAG++sJKc75hxLdQoFQQybFbSMEDTxbrn1f7xdz0+o3/pAqWmmbjwx7/D
	fH9JtGQp2BRLB/y6qnFnV9FVqdv0k854dRr/2Ie50gOF7GAR+PA2yyumMvYOYPuB
	BXGtAe89GTUGxI2RWWGj4MZXi05BiNxLeanXdvZWPjT2TCV2mgnnHfmliN1f5Syf
	gZzT6YxVH/EvOTlMGKBLJ2Q6XBVq47rGFY1yQH7/06OTdF4TIBBf2B0rlAWHDKRF
	LRi8JioD+LSEIcgM/LYdgFkIPLiGrWLNG0q9+EfuYAV4bR+cl42hYV/Fkkg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6w926-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 22:20:19 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-78117fbda6eso4731374b3a.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 15:20:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759789210; x=1760394010;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YYQJM1FZM3o3DDgyVmJ5oX4Xtvn4+xxewRNc42qivew=;
        b=wa3NAawhgi3NlUxP9CVv9/wRiUomcIMdPc2Hl8Z+YNmVDDDvGrxIVnhkv5uoIWModi
         hR9d0lOfRLUcdwJPuO5NaBxCaPfBw6ngC3zec0VR5eim/RH9no16vKBFtBrYJicA1JkG
         yXBlJvDTCBk7ErcXi3iRHpqKxNZkFVyVPJT6wjAnv5w07+CMdYiRfGiuf+WpkCqAMP8D
         mRp/CQa6usTbSL8ymmYaBV3K0qc9eM3Aw8kmTCnDB9A8qL8QY32rnQhjtFnJGLw8aWgX
         I7pqg/43Bfl3vsegC6iUdbT6eutss87xSSpn35nJpHqQfT85fauBHM+LzRd931VjQu4Z
         meSA==
X-Forwarded-Encrypted: i=1; AJvYcCXGMgHVAUuPcotantcg4shV2QnVUwgkoHHPxLQnA59mNFiMIR/TktPIE4dVmGqWzpFV1LNwSTiMROcb@vger.kernel.org
X-Gm-Message-State: AOJu0YxLQeK2KOb6CPhYHbbINHJe5R0vOt8RBiwhObLSv4RJKSA51Z27
	uiF8XJMq+Md9DIPnKlhBuktWN6NVYzvv9ZpwJ0Z2BT+v9iJPMQyilbbzYBteC3yXZLRIaTrNm0G
	O4TbKn6+CAwR+4O7r1ihGQYV9OIcZpGvZqLb+ccl6Xw9L6dtfSmHEqG6PtkD2mNWG
X-Gm-Gg: ASbGncuEKbC01qVnQYlJmU1sqZSJWny044umLEZyUs1FGKMnK9mCJ3xMQJRXPsMkPVV
	g+67tM22YKXMJLSpjx5wAqwD/2FJAzoOU/MrgsKqyfI9rn/M8z2tsJHY7HHzCiQouXUMYC9A3X7
	wJ/T8CeqHq4tgT4ZTVfsRZVwHJe/BSeboMAqSURbCqpcxsn/fj+ZMYsIqNn/Lkmsem+00OQnVMW
	RX5/fVkjHctCcqBIyJADyyTc225xXlZozZGlJx5x8iN/KPEy5yzws5h7ZzqkSelpJ8g+og8CPGt
	ZDqr1+VMhhpNENKFxBlMY/aZd/09cssIAt8+uQiHifSWbAGa45+hC6DOVV4dRBgFGZTIegSqOew
	zFw4QAVuDOoWaYX2Warpvsg==
X-Received: by 2002:a05:6a00:17a7:b0:77f:2b7d:edf1 with SMTP id d2e1a72fcca58-78c98dc4de8mr14323534b3a.16.1759789209669;
        Mon, 06 Oct 2025 15:20:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHXaDx8BsYyj47bbtSutFI7Rk0z0Yzk+5Yo1y2hw0obgjXnbc1IezB2I/5mfA3p0GATJPUQIw==
X-Received: by 2002:a05:6a00:17a7:b0:77f:2b7d:edf1 with SMTP id d2e1a72fcca58-78c98dc4de8mr14323509b3a.16.1759789209163;
        Mon, 06 Oct 2025 15:20:09 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b01fb281bsm13734968b3a.37.2025.10.06.15.20.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 15:20:08 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v5 02/10] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Mon,  6 Oct 2025 15:19:54 -0700
Message-Id: <20251006222002.2182777-3-wesley.cheng@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e440a3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=e4LYGitkWRZSOGXTHbEA:9
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Mv2eFOsJmZNgUG1QnT2QRAvN5loY9R52
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfX8FdGTRr4XKtT
 rkQJ156IgsRaSJninmrYDGKbuMTVhVqndyj6JlGIssdraQKR5STSG/oWRMshrSwmlpaWq0ta7yN
 SmGNDE/1F1Bp4mguEddbWxDyhak4vDVn3b7IVzvdpwCm84S6RWncdwWv4UmoHOaZI+onhqlJsCA
 YeQGGXzCco+L+qLIXlK/Inxmz+ObXqlTqd60ASppwSA8wtPU3VWhl/hHCBmxxbWbin6fK5/OqxC
 BqIeoR1UcgZIDuMWcpohw59d1fiMNYZqGlSUUp9vAYl8+KFmIWY/W1ZYBOPNGTDdq67O7ECIC/N
 2usy2FoVluzjJCoQTVE/NpE+dmICchmKX4H2aUYwl5SOXV1jQ2HTW7RMHLad/lPiSUpq5i7dEtk
 gW9qv12Krqdu0UT9pkygT6pTcUB6QA==
X-Proofpoint-ORIG-GUID: Mv2eFOsJmZNgUG1QnT2QRAvN5loY9R52
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_06,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

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

