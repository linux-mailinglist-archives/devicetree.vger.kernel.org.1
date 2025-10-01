Return-Path: <devicetree+bounces-223183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7C8BB1EC1
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:07:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37BBF19C384B
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8D1B31327A;
	Wed,  1 Oct 2025 22:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DueehUeZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1353128A0
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356347; cv=none; b=MpsXHoDyYeKqOLYXDfFOaJ3Yhho5LhzSlhh26EmaQ1ZrtjNNin4tUU5fNsxjDb/bnKA9OemP6bp1ViWbPbTKcUNJziYS3xg2tHUS2sJqoGoNeMava1JreVXSmOqJa1JCFrOsmpQ/NDXgzwDqRcxgAGYEhD/WTzbe+cvi3ClYbkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356347; c=relaxed/simple;
	bh=y84fa6fvuCZpJxjEsWR6XfroWoXIZOXTyVARiLBoUh8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SEZuAXRZ7AzqYEMcc4QXjuzMYRnBc+SXT53accg7JJCRaz3ocSteHLyFuZdoQJ6GKiPo+tGw3vLXEWnwBSKlpV54E4KLgRnb91NbrHCSELmHbX39kDHlqgb/sHDzjsIo4KXzOGSxSuPZXRIlsjAYjPFWkGMMaKjdC+0YST6M4CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DueehUeZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcANO022694
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 22:05:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=g6hGIMMv3wb
	uPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=; b=DueehUeZ+4geCNy8yp8SwdJiyHg
	Hz6h6cptSo4H/sSW4inm8OTiTt3cCWtnX7UpCJEJPk2scrUTJYOipJpUSH3tvbGM
	aZxZXI1Ozk1V4+EwGrkJ2mpkcgOgYfAl8n/Vz+yT64fJuOQEs946BY38DEFkyV3z
	8hrxMYo/0K0m9z/GejFvm/Aw4TNSZj6XllFb4Xiyr3UUPr+VhiDP1REzDPqeuxCH
	KmXzTOWqMjdeJKHvMaDV1bT5EhOAeUCu9aOYsi9jo2fZYFvz2Gkfm9umx9awLsTp
	lWKhRuvacWb60rmdLCeWOMd/G86OVUBS2y6HXRK7i3ELrlbRACyi/lIbj2A==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n6bqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 22:05:44 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-32eaa47c7c8so283527a91.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:05:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759356343; x=1759961143;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g6hGIMMv3wbuPomMpx8H8k/GiKEKmx7JPEl9gfJaIng=;
        b=muHff4o4u0qpc1JrttuWb5qMiqwNrY4cBS/yfAevDNhDv+ffdlQ+fDrzhNww/jeJAH
         RHbP/ufTkCJneQdX7je2ngfXquez+Enp5ZHWxlJqjOEa9de/Lmifgm9RZdYift0UubOX
         2S+j8rROpNDvq13XN+PRh0wILukoaJ71EEoGL+1ii5Ii7IMUmbs5nf3NDxw3kT+hd8Gw
         CP8ipMKVhH7xmMOt/9e4paQ8gCD14rCK3Ka2BqkgpPYDvfSevFEmjduhwmz0leeFQDf7
         iXFdjaWquaWUPCWWB6Zatv88m3l8YF0bi6aH3Ul9yAxDt0Ky53zD3uEfJlf8tX0sQMjM
         HxWw==
X-Forwarded-Encrypted: i=1; AJvYcCX2bk4OlhCVSQhwCu5xQynuwQD2BkXPceQMHgLqNA1TADfWCpy+9qLXLdvmdDKAJzWczu8igk/iqYKN@vger.kernel.org
X-Gm-Message-State: AOJu0YyNx1j8j7fRJXk1k7p+mLViM9OS74xA2LlastKFZSmV8kyvsVYm
	Spxkqd8nftlKg+B7t/0WM2tWcfYGU3d1umgJWa8Z0/wiGan19T8NUcEmSyxI9NYHh0zYHHkrClX
	vUgtebWeOPEi14cycOSiZrvEt9mQtbuK22PMzZx2wkxl7BbRdiVQ9KG9qcbEMc3bL
X-Gm-Gg: ASbGnctbE9PpvymLJiVq0ygNBxI3JDs5nLk005ud6iJxHlIdgpLjZ2to35OL3BUUr2v
	DrYEK8lJe8jToo1fhr4fwVU2fAtrR/NtIEKwxPZCg9SO2ZzS/eL4Pn3wo12T1XJ6VvM52WQxKuR
	+TZFlE3GdKkS5lRPs3riIJVKAGgJu7xUQpgwakiZNOuOiJOvwYKkhTBu3101cT5jIEB6NmIcLD6
	UoNvD+q5JXW2GYqn47l9Rw4GGS+ZWTKb6Ij97SbjYk12L/kPDjX2Kincd5FcxbD2h73DoiIpf3T
	oE2uWFpppqJl1/LgWy+v2ZvSt/eu55qt8B1/opeAAKgZ2GFNu8PKBbcGkqrursZSaImXZg2vG7D
	97OUBc3NFQ0UO9GAc7yxotA==
X-Received: by 2002:a17:90b:1b0f:b0:32e:a10b:ce33 with SMTP id 98e67ed59e1d1-339a6f3cde1mr5653507a91.21.1759356343301;
        Wed, 01 Oct 2025 15:05:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMYMlMROsnj4h+It/s+6vj6sTVkjqirS+NPrscbKY0wqq9o3/qEeNlWw+iTriGWj/gWEZ7vg==
X-Received: by 2002:a17:90b:1b0f:b0:32e:a10b:ce33 with SMTP id 98e67ed59e1d1-339a6f3cde1mr5653469a91.21.1759356342817;
        Wed, 01 Oct 2025 15:05:42 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339b4ea3c3dsm702085a91.5.2025.10.01.15.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 15:05:42 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com, kishon@kernel.org, vkoul@kernel.org,
        gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v4 04/10] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Wed,  1 Oct 2025 15:05:28 -0700
Message-Id: <20251001220534.3166401-5-wesley.cheng@oss.qualcomm.com>
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
X-Proofpoint-GUID: F5Oanswldh-WG88eMviBklcKq-6lDICd
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dda5b8 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=JYTQWVwI1XGucIoeipMA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: F5Oanswldh-WG88eMviBklcKq-6lDICd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX219zo1yMffy9
 WmQSyjN4TRHiyyUtupJ3HRoGEnjGcKCw99kQkEBy+qJ/80oAVXb6mHYum9GM1AGJ/bXGpRkt3OD
 hLvqFHj3SOX6oMXDpaadc8USBYuJ3LXsN2wQX0lSnAMXYvu9OGC3I0x9yMHg47G7Cxb0duB95jH
 wKKfVROhX7o72/ps1l7s9kTuXG40ghpVfFM3CGE/HYvm4VSoQpDuaPdIgXiWsJMZmmn8FTHYqNV
 Y/j+pcqnBmqFENwa2XzVF/9jv5oROop1L+fApSDnvgg/2rdDylRxIo7A4qTOXKQKhfy0+h8Z9BH
 cTukExRP3fTgz5XSO5KmKsrGVYfscLZwC7DzUYC/Q/ee84caNGY9zaQ1JmsqX1/kNak0feg/Tke
 GVKyRyPlwFWrbcOrPyb8IkumAss/1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_06,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/usb/qcom,snps-dwc3.yaml          | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

