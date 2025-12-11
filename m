Return-Path: <devicetree+bounces-245788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 52200CB549C
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:03:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4A292300CAED
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 09:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2707A2F5A32;
	Thu, 11 Dec 2025 09:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fDsnWTD1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fsH5ypwb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5C92F6169
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765443778; cv=none; b=GXCQQR0qwEHAVWhHcsjuXOFDBQlBF3nKWse7kwheyFvXOIDPqkobbLTnU19zEHRxidPKaTEhQcRamFiJt1jm5S/M24Ib58FSPKMp5tGMPcFir9di+hPcrJKOjVf18IGnm6SvXpSMy4W++EfFG4oALyTpTF+vlV5DhxtoTl5hsxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765443778; c=relaxed/simple;
	bh=qxAW6oQscBMfQtm8NdQP+0QHSpF2gOPIWMormT9TEBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y9AIsTkrR98msuFKdag4UhDQH6BgYkNhJQmMSo03/AU+OGDtOUrO46/pDGvE09tyEqrEmKWYmCQcOQ786YDre0XCjDSLz8hv5WTcP15HhVkaSBAB126zUkhVsb9nmyAahXo50YSLmntkPlt8X8STfVohyDvaRHLpD+tNF8KTGO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fDsnWTD1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fsH5ypwb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB8gV4d1528628
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:02:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BHAYZYgCEBJomFxYYuNuHzjFxbu3btZJSkUa3sxsEBU=; b=fDsnWTD1Frjf3lHh
	Yks7nm0H/HVKjVGvYeIO+snnf/t+Y0kLrrNv5OuHLu9nXSqqCHacPhoztxKAb5M8
	E6zlzxL6oskKP+vJZGH+3eOlElju/zW5Xho+tH2Y2bkr+685rrDAp4J7eNJ9gUjF
	16FINyzZZvRpGH1tXqkFH++OPa1egifzQhsdCVNrlMw4HOCT5YOSsLAhuN+h0uA7
	wEC4aveIRFw1tHHX5y2DN2XmHBS0twljUrx/H0dtcK4eQV6g8jpXypxRh9zqTABZ
	7riX8Jup3AfpQicWsW3CSioaZ/3yDk5dUvQw9N9+iZwSLMkCga0ec2/Qi+8i+lxf
	/s6tdQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ayt70858r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 09:02:54 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-343daf0f38aso963792a91.3
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765443774; x=1766048574; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BHAYZYgCEBJomFxYYuNuHzjFxbu3btZJSkUa3sxsEBU=;
        b=fsH5ypwbfG/WEV8EWaXnBGYWV8f61wXCKa2QQNgZYPkWINxmoc2bFwfiLCSR9G+7Yj
         rTgiFUYo1+uVZQXTcJBf340/9QqS6FeU51loRYDgU7ySeUk5TULzlNYL+z/Rf75ZGcQo
         mhBd38IOgGmwTbFVAdwBdxOWL//4WZBMbumRveoapdq/ZvzRso9unGKFrj+yW3bI9gKX
         v/p1O3JvTo3wBpBapRSwZ+/b2XfpgdwNtBqr5CcAvsnBu3lTYCCwrRFt8vms+Y1BIlrw
         M+xTDgIhhebe9njFQbAxCg0RTk6hP6dPATlgtMQ6DnbKSjRD0VePPDENjS9j/QC/gTpI
         OJhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765443774; x=1766048574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BHAYZYgCEBJomFxYYuNuHzjFxbu3btZJSkUa3sxsEBU=;
        b=R0eeKb4SF99LQAzdcvkBOVkri+H7LxtsDq0Yjnr8psjDZ5Lo4nRvxacYx/7Y/7+dXH
         L1ckBaeEsXFUlo0GMTeOt4EEm4iZ6xDedJVxgDi8uRCGzlF6C1jrdhqVdbOzeZQNIQTZ
         LEczKEBtgxu8/oNlK7cF8wW9BQgOI5mZ+zXDE1F65XgY6RTBBz1wRZCJU5E9iJy1E7PK
         rc4rxgUeV4sXUr82um7GdwazxeLQjPiKfBZdevShbc/6wU05mxOD365tk8t3vpLCgbuw
         0f3BlVY9xqemN91FavKzzsPnjP7ShkNyEMQaFo4lzwQLlN61a9S+pif9G7bSVaywVGDJ
         GoIQ==
X-Forwarded-Encrypted: i=1; AJvYcCWD/d3TzWv1470Xp4K+641fpMFLyutd4uRiaSXAA/kWOCw7WslsrHgRYHTzT5jVqytuIiUjgC8qTbG5@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1ebTL1LrfCNNfb1kQ+UGhShDSMmi3Dbu7DP70VoP6mEN178E9
	TcLLDlWVx5vpv6jaE0rV8x/O0ORl2rmj/JewBGqgdNJ3YU2JKRUZ9O/ZNrcCBoiXn+1i+lHTVvZ
	eT4+t2JySEEGF90kulf9m+9hGz9KHHImNZ/hEMCuOvN2QRhMn1qMreriifmVZHzuR
X-Gm-Gg: AY/fxX7ZBdVDEZn8p0imTsAZVqwFnYjYbh5VQn+q9t2kbaIXQE1SSXXXTSXjYpUOGNi
	34cqTQarne56JgpSJYT+pG1MLqYAvZbI4dOB2w+Hxx5BiLebPuIeQOdNIi6HhR2SmHvuk1C/nRZ
	+qG/a0kLTmNzweE+oV7H9z6tasUWH3Y4mQ/faw1wasqcpbnO09e0V/qFQl3y3LDNQZ3q1WAU0G0
	c7EuVbkaNuR/q8yuj4rsD98T9J8Mn6MF79ti5h+XdWGXx3AudDSKawfpy1M0tBpspkc8DVM158r
	L9LwA5Jc/WEZ5d4GzVRJs99R6dJgiZOl3QVcjJBfAT8TIUpmfldkYFPVZycsjGDxMKQf/L3bz5/
	jHFwB9t87Sd57eiDUUc69O5frLxVcN+liofllOMLVPXtBbcONDW/8n2kFh09MXpd4U12L5n/X9B
	8RlOpNk8mbvSgaCi3QADOiivKZukGvzw==
X-Received: by 2002:a17:90b:2f84:b0:340:a19f:c25b with SMTP id 98e67ed59e1d1-34a72874773mr5722905a91.24.1765443773918;
        Thu, 11 Dec 2025 01:02:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEL/QFpZybf+jFwe4H89R3Up/hwJ8hmhEqnk/f8/0uJ1zDZIYyDwZGY7Z0YpSvwAcOPI3Mx2Q==
X-Received: by 2002:a17:90b:2f84:b0:340:a19f:c25b with SMTP id 98e67ed59e1d1-34a72874773mr5722871a91.24.1765443773414;
        Thu, 11 Dec 2025 01:02:53 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a92860032sm1273780a91.11.2025.12.11.01.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 01:02:52 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:32:35 +0530
Subject: [PATCH v3 1/2] dt-bindings: cache: qcom,llcc: Document Glymur LLCC
 block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-glymur_llcc_enablement-v3-1-43457b354b0d@oss.qualcomm.com>
References: <20251211-glymur_llcc_enablement-v3-0-43457b354b0d@oss.qualcomm.com>
In-Reply-To: <20251211-glymur_llcc_enablement-v3-0-43457b354b0d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765443765; l=2932;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=qxAW6oQscBMfQtm8NdQP+0QHSpF2gOPIWMormT9TEBg=;
 b=7s061glpqPe218C4iakHDMGZo7t7n16ly4S7nONnV8PfWPLVV4XOat06zWeORBxdvKyKZQWzs
 Nr6f2PvF8VmA59IpeQo8Ferl+2KLxA/RAFuPfOYuy2lWfXr4RecYutB
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA2NyBTYWx0ZWRfX8Hrd09peYJoI
 a66hGwhUocSQkUcfww7AAFT2zslI65wZuD2pcwRHCcu9PhoT369D/E6P45rOx1j7fE24IkTiOaU
 DQMTxp+q29whqVSOJe6jTgdgtA/YsSSAZn+YQ9mTz2AOvxtX+/IZuJUHBWDcKHryowGqqsTcpV1
 lXSttRxyPXU2Hy6rPrKf6JxbOVqrS7DtJ5rQEJfFKSE8FxJ+c1BK5o7DMbB17uZg84o4jD/qYIS
 gy+Xhdif32EI5otB+5gN/8VUUBr/kwQLYa0EFdK6wvKALXXIuhu+IIzMiRauapalKNtURbJLlpl
 2FJR/x9mVsWi7U0n/k7vHG9TrKLfOQShxuA+EdHLCwqrqzIo23wEEwv2G2zgCu7FRlrXfk9IYxi
 2ogLW/RqKgWnrHJQxw6uK1P+ckfBOQ==
X-Authority-Analysis: v=2.4 cv=WYIBqkhX c=1 sm=1 tr=0 ts=693a88be cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PUoVtFHm2Id53UaNtWkA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: Yo-Wn6o9yugw5XpdMC-QQwyft-0ofm8J
X-Proofpoint-ORIG-GUID: Yo-Wn6o9yugw5XpdMC-QQwyft-0ofm8J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 spamscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110067

Document the Last Level Cache Controller on Glymur SoC
Glymur LLCC has 12 base register regions and an additional AND, OR
broadcast region, total 14 register regions
Increase maxItems for reg and reg-names to allow 14 entries for Glymur

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 .../devicetree/bindings/cache/qcom,llcc.yaml       | 47 +++++++++++++++++++++-
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
index a620a2ff5c56..4e99c405aea3 100644
--- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
+++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
@@ -20,6 +20,7 @@ description: |
 properties:
   compatible:
     enum:
+      - qcom,glymur-llcc
       - qcom,ipq5424-llcc
       - qcom,kaanapali-llcc
       - qcom,qcs615-llcc
@@ -46,11 +47,11 @@ properties:
 
   reg:
     minItems: 1
-    maxItems: 10
+    maxItems: 14
 
   reg-names:
     minItems: 1
-    maxItems: 10
+    maxItems: 14
 
   interrupts:
     maxItems: 1
@@ -84,6 +85,48 @@ allOf:
           items:
             - const: llcc0_base
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-llcc
+    then:
+      properties:
+        reg:
+          items:
+            - description: LLCC0 base register region
+            - description: LLCC1 base register region
+            - description: LLCC2 base register region
+            - description: LLCC3 base register region
+            - description: LLCC4 base register region
+            - description: LLCC5 base register region
+            - description: LLCC6 base register region
+            - description: LLCC7 base register region
+            - description: LLCC8 base register region
+            - description: LLCC9 base register region
+            - description: LLCC10 base register region
+            - description: LLCC11 base register region
+            - description: LLCC broadcast base register region
+            - description: LLCC broadcast AND register region
+        reg-names:
+          items:
+            - const: llcc0_base
+            - const: llcc1_base
+            - const: llcc2_base
+            - const: llcc3_base
+            - const: llcc4_base
+            - const: llcc5_base
+            - const: llcc6_base
+            - const: llcc7_base
+            - const: llcc7_base
+            - const: llcc8_base
+            - const: llcc9_base
+            - const: llcc10_base
+            - const: llcc11_base
+            - const: llcc_broadcast_base
+            - const: llcc_broadcast_and_base
+
   - if:
       properties:
         compatible:

-- 
2.34.1


