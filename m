Return-Path: <devicetree+bounces-242219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E60EC881ED
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E11E3B2291
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 05:13:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC9E9311940;
	Wed, 26 Nov 2025 05:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YBJsmSVj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PbuUKpUV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D2F27E7F0
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764134013; cv=none; b=H1idCnwEmfjFwZmoJv2JS1VHHmEWVkdKLO1PX+ceoiyas6r/Y9OGxYrDMsYRqhQDuhgoSQIg2oy7AYsCqfT/yEtcSiVSphwDJsb4aYMJ5b3PspIghhR0ni30NL2rXrZKkGALMY4DlQTBxGgV4g55DJGj266Wa4hT9BP3JvX3Nw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764134013; c=relaxed/simple;
	bh=6vXLBAdNnQs6XK2/kBB51qbuJfb3m5+9fYGBSdIIrP8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SMyw4rqvWbTvy/g70ucdgzc+VIwNDGGbEyLiBnlLcGUdDF/iOCzqTt/wMEb2X/1HV0rLJ9PUdHw3qpsVoi8T2jLh6ednBlIqkZ1WZguuHQiqhtTgCvhHipNCg1Yuw91pUFavzn6Wt8U8ZEnhufr6gIIvgOtFEZt7qpZTjcXuVEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YBJsmSVj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PbuUKpUV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APGgKVf3587464
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:13:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bcJIkYTMqA6r4Axp7R45E+Pedh3qwOHwhj3tSvKpYsk=; b=YBJsmSVjP3rxrvdR
	mwuS3e4blDUbe8OY+FI/Zq5VJiCZYuWujVF5WwGyprv72nNvayWspYhflUz5adoX
	MarAvJ3ULc34MCYoi9R6ifSNcZopPNOaRT7kuchDQo+42yK97ipN6b5Mnvxs7VIZ
	nX2CvSW8rORhQ0cEYHLrZbZ0lEePEQ6rDeRrHrc4kMU3qNh/m1B08VEup0vp4Q7v
	07Z/TMhdMP4apadTQA3QEMsgUXbZb1pA1t9iPHsyyT9MINSaujtMN8duo5IfaEdC
	T/xoqEBFB5hhMMyLmNyZRxo9U6FJ1GxONBmkyxExQb3xRtM3ALPutpnoHQ/dAqfL
	R+WttQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ang791nu8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 05:13:28 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29b760316a8so53439135ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 21:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764134008; x=1764738808; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bcJIkYTMqA6r4Axp7R45E+Pedh3qwOHwhj3tSvKpYsk=;
        b=PbuUKpUVLSFw2PskEARtXVJavS7X0hV0ZatzS9uCkmMoO/TJL6maFoVDls0ZEJFGmn
         S6w4Mp4l4LJNd00TBHzpJgnCrd+c3mgUGayzy4+830gDvoKy92bHSaFlpmgeOb6PvI5U
         GTm6o+w0j9DV0Ub5js/tgCxbNl5b/OQvEKPjZn6HTEk3cSsxu3Of4fkU6UlIecaOzIjD
         AGjQoFcnsK/zv74tF4wYb1ClYwWbYWW3AmumlqBEMpkfNf3DLgepC3PrY8rZym5BV9H3
         BvUS0MFoYGmSBh6wiKZpECJqiiFYKHcMsw61rz7iWCxa38s1C/ATyfXRLVhl5JTXmdyI
         i+Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764134008; x=1764738808;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bcJIkYTMqA6r4Axp7R45E+Pedh3qwOHwhj3tSvKpYsk=;
        b=bZ05TsWvNLg7apOUytNoFCzOKosxtQCskHXEssg/gtQwbG7wJjqFoCngPn1ZA4zy6f
         McEyYcz72hgoQvpn0Nw8abaTGhEe8BtqXTBovdLrC1RyL+quonj33lhTBlmRNp00JYh8
         Q1tt3bs747IC/4hdCJSH9VQqlchZAqM2eTPjcLlpI1xRQeCsefEdCurn6D+CYcSUeeYG
         MWdhjLTDR7UZX71JHvj7a60TO40SjaOT6orGTLmTPQbayvPBDyxBJiIWfNJo1mX9R1hD
         pv8KS0B22VnNdtcI5EDJsc7lUOURgI5ZvFwPleJ7MrDj9KLYEytFGH98Wwkfn6N6L3aw
         EsaA==
X-Forwarded-Encrypted: i=1; AJvYcCXBl8eKXgWZSL7BWJkhI51csCQ6fw+aYGfZgqOgqfMyfLn3vNVFA0pXPyZ3MNUbXvCs1MmmOvE/pefm@vger.kernel.org
X-Gm-Message-State: AOJu0YzlpRiz7lbmHDf4oO4UmKXEfPOjW81th+4fEZH1GpCJ4qhWwr9m
	nalDEx8FGCs+kcg5Fq7whbBnwumXzR/8QHYynQMC/uiyIL3M9ZVPgaKH0qGrhuvY3x5f2W8LUhu
	x7eIVQb/FDfd4k1UZu4Q3gB/H+vIwa5ZLsug3dt74vceOll3BXkJ9ug4nhfz6FuZi
X-Gm-Gg: ASbGncuZfEJyUEyYhaMe2EYwLiE2tRJYsd51IMpx4wFoDsHoz768S0iE4vJzxfDAzEJ
	wvWulQhhZoCmLkEe0ERWoZUrznWgc6NKPgupyQ9wxGnAEu8QSGgIcMbYdQciQAeNJhuwVWyxkfv
	4bxKhUP5s1VVIvQwSclphFA+gl94uf3IlSfqGezw164H/aUfcL2Anqf3HZJHOKw2/W6c/5fnrLh
	q1uOcN06M2TqK8xd/IMCNf/5hJX1Vyu47EDrZKzm88VKz2E1z1LYwxNM8fy9Js57rqFouEZS4Ra
	iB3K05nVQODTr8vlkjJeNtJExuB55P0wYlvjdDT1jbYvJiZTqGu6heSmBR6JiUIklNKnEc30l8h
	PmBkI8UiCbLCqGlO/a49cZlDW18gmmN30/RTPkvrrdB9H
X-Received: by 2002:a17:903:1b43:b0:294:cc1d:e28d with SMTP id d9443c01a7336-29b6c50c704mr193538525ad.25.1764134008238;
        Tue, 25 Nov 2025 21:13:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElTl2YZ41VmLAlMXKrNNPyQKf4Uve+sSiOat+319X+O7iwiX6u4YuRUoSiI9E0o/+X9eaxlQ==
X-Received: by 2002:a17:903:1b43:b0:294:cc1d:e28d with SMTP id d9443c01a7336-29b6c50c704mr193538115ad.25.1764134007790;
        Tue, 25 Nov 2025 21:13:27 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13a870sm183591315ad.34.2025.11.25.21.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 21:13:27 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Date: Wed, 26 Nov 2025 10:42:53 +0530
Subject: [PATCH v5 1/3] dt-bindings: spmi: split out common QCOM SPMI PMIC
 arbiter properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251126-pmic_arb_v8-v5-1-4dd8dc5dc5a1@oss.qualcomm.com>
References: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
In-Reply-To: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
To: Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764133999; l=4414;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=6vXLBAdNnQs6XK2/kBB51qbuJfb3m5+9fYGBSdIIrP8=;
 b=kS34kKybVaCghp98yK5TsuLJKAawhmABKPgLt7NRxdjFfG8laN8Oo2OoQIhQzep6s5EdqOxIb
 zgE0WQlQ0CGCCM/asn4ldC5rh4kOp4JHfGr8bocdSl8XKEXegPTOlSr
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Authority-Analysis: v=2.4 cv=P9Q3RyAu c=1 sm=1 tr=0 ts=69268c78 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=w24Q35eUI-_Cj95TU7gA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: I9RMCx8WLHZpY1rQUamiryMnhzJRjbJI
X-Proofpoint-ORIG-GUID: I9RMCx8WLHZpY1rQUamiryMnhzJRjbJI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDA0MCBTYWx0ZWRfX26SJTsnLzeEF
 XxMmKkaGbdyd/SB2DUlpdEyT4WFQqrzJCJVYy34saMxIwkTmEt9r1Lh7eDpJmEian1wNDmVs3uJ
 Kx4W1phig8KwtQnCqvYfpilZkA3JenOHWvy5JD6LtFaYu+KkAGoc2YjWvAARYdfSaX/hgMcMtRi
 ypdqc6gJ/bOR31Au3h73AQFolTHxbL/ITMH8+mpWPOsMS2WGmMGkTUsVj8yJg/qhgBjLvvUOfFs
 D07L0Qr6unx1AZ7YUEYWAQ0HEzV28Wvst7vmz49DMKzMU7ykABiRBunPLRg/oBR0uq1Tz0w+HnF
 g2zegBx27TtWLQgKQGdcaIekf+tvyrciECyXwR8EvChK+oVuTaO5MdLffAxAR4ok74GEUZbfrnC
 EiB8IpzZ/0+9YmewRbFnsySjigDXew==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 lowpriorityscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511260040

Split out the common SPMI PMIC arbiter properties for QCOM devices into a
separate file so that it can be included as a reference for devices
using them. This will be needed for the upcoming PMIC v8 arbiter
support patch, as the v8 arbiter also uses these common properties.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
 .../bindings/spmi/qcom,spmi-pmic-arb-common.yaml   | 35 ++++++++++++++++++++++
 .../bindings/spmi/qcom,spmi-pmic-arb.yaml          | 17 +----------
 .../bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml | 21 +++----------
 3 files changed, 40 insertions(+), 33 deletions(-)

diff --git a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb-common.yaml b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb-common.yaml
new file mode 100644
index 000000000000..8c38ed145e74
--- /dev/null
+++ b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb-common.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spmi/qcom,spmi-pmic-arb-common.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Technologies, Inc. SPMI Controller (common)
+
+maintainers:
+  - David Collins <david.collins@oss.qualcomm.com>
+
+description: |
+  This defines some common properties used to define Qualcomm SPMI controllers
+  for PMIC arbiter.
+
+properties:
+  qcom,ee:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 5
+    description:
+      indicates the active Execution Environment identifier
+
+  qcom,channel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 5
+    description:
+      which of the PMIC Arb provided channels to use for accesses
+
+required:
+  - qcom,ee
+  - qcom,channel
+
+additionalProperties: true
diff --git a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
index 51daf1b847a9..d0c683dd5284 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,spmi-pmic-arb.yaml
@@ -19,6 +19,7 @@ description: |
 
 allOf:
   - $ref: spmi.yaml
+  - $ref: qcom,spmi-pmic-arb-common.yaml
 
 properties:
   compatible:
@@ -71,20 +72,6 @@ properties:
 
   '#size-cells': true
 
-  qcom,ee:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 0
-    maximum: 5
-    description: >
-      indicates the active Execution Environment identifier
-
-  qcom,channel:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 0
-    maximum: 5
-    description: >
-      which of the PMIC Arb provided channels to use for accesses
-
   qcom,bus-id:
     $ref: /schemas/types.yaml#/definitions/uint32
     minimum: 0
@@ -97,8 +84,6 @@ properties:
 required:
   - compatible
   - reg-names
-  - qcom,ee
-  - qcom,channel
 
 unevaluatedProperties: false
 
diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
index 7c3cc20a80d6..08369fdd2161 100644
--- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
+++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
@@ -17,6 +17,9 @@ description: |
   The PMIC Arbiter can also act as an interrupt controller, providing interrupts
   to slave devices.
 
+allOf:
+  - $ref: qcom,spmi-pmic-arb-common.yaml
+
 properties:
   compatible:
     oneOf:
@@ -45,20 +48,6 @@ properties:
   '#size-cells':
     const: 2
 
-  qcom,ee:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 0
-    maximum: 5
-    description: >
-      indicates the active Execution Environment identifier
-
-  qcom,channel:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    minimum: 0
-    maximum: 5
-    description: >
-      which of the PMIC Arb provided channels to use for accesses
-
 patternProperties:
   "^spmi@[a-f0-9]+$":
     type: object
@@ -96,10 +85,8 @@ patternProperties:
 required:
   - compatible
   - reg-names
-  - qcom,ee
-  - qcom,channel
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.25.1


