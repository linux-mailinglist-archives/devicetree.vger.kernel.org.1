Return-Path: <devicetree+bounces-229136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 111AEBF46CC
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 04:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA7DE421661
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 02:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289FE284B26;
	Tue, 21 Oct 2025 02:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IO/rxQkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4978F27A904
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761015573; cv=none; b=mpNZAMEec4ubdmm1LfId/CgxuF/LTpMddSe7CE1i6+pXiHIa0D6mEnuljLeBlXO2pKk/LSZdpWYJN1GE5h+lFjG53Bxr/64U9Aft08pB6eYS8j5vJE5GxcRgGyX5LJHXfRx37QUf1Jmcmlf+yb6uPrNiMqAG4i/4fxjj7eN02SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761015573; c=relaxed/simple;
	bh=QqJm6H+axsb7Sp+Fv3c7hv2LdUqbjAz0fIGMTf+ZcmA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m6PYSXA6exNhh5USlRfVXdjNv/CyAYzwj7Lfhll1IQQmPPgwTwiAtHEme0u+rLlL5e4DtQspMv7H84WGMRWe0x12enZ9zE05jUYYvzPcWFV+V7cMKIKx/giVtFd7xf7DTsRmk1SPpe6qePiqoRNhOPaUdEPH9E/xUnyKBMNMjC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IO/rxQkV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KL1aK7028420
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=7DXoW44CUEx
	XzSENB3F34QRGOi0zzg2uAwhUx9G16EY=; b=IO/rxQkVfjmf7LYwYAdSb7rPlEQ
	HxL4OEZPTN/l3dtgC9ixP5LEh2JCLtNrEAiAmtRMqEiJc1fXCmRigsQSXxyXCytx
	mXl2b5OAY64VmpVRaveuJEZJSJ13/2oEI26YBCAX2wELqoUDWR8RT+l3KaKhKDax
	XqWglr9Yy5X6+jAKqrg0DM99hi5ThviwvYl6WtVhTwJUr0CEf1S/6vFxx7q0xnir
	9+sXoms8kMx4gN8XKK38goiT0DjoSQgPdTU6Mh3+JsdkBSe3DqceAGPlDZmt8n+8
	XbyBU4Bhped+A2P0knS6ikECIO0/raaLitfzK7Wz30Lqs+KOYkhqm3Nu6Ig==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v08pf4gr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 02:59:30 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33bbbb41a84so10289340a91.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 19:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761015569; x=1761620369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7DXoW44CUExXzSENB3F34QRGOi0zzg2uAwhUx9G16EY=;
        b=LXSKaTJ4M/VG8Zop7K0H89+NsaE5Lh2RjMoNMD5oKqHehMujVihNQKHCTiaX3BVqkA
         vU09kcqphJ21o+sCga67RE8/Dm7uE7nFnjBozsdx7lOrCcLMa7cMmsINg0zSKiXYcRbn
         qzYvf3AvpW3nkJlRbpvmKjXZ7UDIbenFioFubOPmp2bEMI8Eluj+cCSleDFQ20ZmiP9e
         k+EiZspjHocHUirBy8N71oOf9wKN6jjd/KuN6gWlkmIvBJXXFJ3HiojhWIg4cJmHKiMG
         Abtux+EX6KYxJJPV1BpNdy9vGXlWhj72WONVOo/RzkldSpDEgrJAm++6emUdPtTOz9eh
         IGeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxFym1HJIKF5WwwgJ5uM5rf5YZi8toU6yP1TM7i9eVrxUhtYk5DhwVglMmubzZD5nv1x/opZIJOnoR@vger.kernel.org
X-Gm-Message-State: AOJu0YzkC8K9RyuY7OUfjV++oqpQEtEGPkGsUa6bgZntJT0f//nX2KeQ
	RkmbX0YoYA43c/w3djl1g5fHtN9uI8ikMlPyEctzHwOr5mgahU11JQ41onqguifLJAnD+FkhYtk
	ZAiFaxKZaMS1tekGxzo+I7TBAubvoC50oDQzrNdOKTrJE2REhm+zhBAdWvVSX0HSL
X-Gm-Gg: ASbGncvwEHHGMvVrn0BNTgp0AMD6dBTgVmYOvfP2bskqksMYAQ/vV1otu24Cc32bA16
	p4FHY0qFENdUucsLaINYB/NILBOKpD65uc4whbU3QJ1mbeH54sGtH9C5t+Qz2ZrgSHBXiHCd1UF
	SA92N/XVvuD6CyL1hvFVPa6O9WqSlDZAu19GVGF557fvRDq6nHPDyeF6LjBPIz0tHHSIDhx9Sxv
	TGkFJkiuZzQV000VXnSYrLIIR0O0vLUbHAIaeyuF1yhSXH1djH+3JB2R9XlUA4OgvvTTIlof7RQ
	heFh23Fm9TJl53oZpblZH2WNyZmbw2vOqh43jXZLS2jN28aAoAKuZvJ1BLmkv5k0PkFyZ7YF8H6
	lNtxMv2ongMy49wnH9t8q8fIj8/VHL66t/QIFhtKW9PrOtfGPml/X9A==
X-Received: by 2002:a17:90b:38c7:b0:332:793e:c2d1 with SMTP id 98e67ed59e1d1-33bcf91c603mr16981883a91.36.1761015568749;
        Mon, 20 Oct 2025 19:59:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfONH+YEJVS/DAl2NGHJErEJq0DNR3DpCG2ZRbsj1KhbAnDKeowuWFqEs7F895so9PNNgFGw==
X-Received: by 2002:a17:90b:38c7:b0:332:793e:c2d1 with SMTP id 98e67ed59e1d1-33bcf91c603mr16981865a91.36.1761015568234;
        Mon, 20 Oct 2025 19:59:28 -0700 (PDT)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76673a86sm8855787a12.10.2025.10.20.19.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 19:59:27 -0700 (PDT)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        kernel@oss.qualcomm.com, mike.leach@linaro.org, suzuki.poulose@arm.com
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org
Subject: [RESEND RFC PATCH 1/7] dt-bindings: arm: Add support for Qualcomm TGU trace
Date: Mon, 20 Oct 2025 19:59:03 -0700
Message-Id: <20251021025909.3627254-2-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251021025909.3627254-1-songwei.chai@oss.qualcomm.com>
References: <20251021025909.3627254-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAwMCBTYWx0ZWRfXxZG7f43iPBSm
 D+f7YSS3vkPZR7ll0fafzWfyw4szVUd+LY+c6vVgFHELlglw6hJ5rEqhpfTqiNGH5Z9UruhnIPy
 bcNB0NI0PNfADOndaVyZLcDrSkXZ4kRsYob1UrMEL3re8N13n0/sKEBp7c/tdIX2VIXOYJDpGO6
 KiciLxoHroLqdnq3ciZjQ6gjXquP1AEUkW/bSSjN7HRp2Xrvc+BKccL+gLBuwhVFb1Swr/PYNGF
 IL8Ao3qBnZC6l6dMeabDmkJ1NRI5DURw5RimBybdY64StQAAjpD5XyA/r1UC9lsGSnRQErV+DrR
 SwFbDdmK3IN1Hkp+RzzCfTpg419GyC+Q0SVDDgRNMgC4vg2744tWNAmQSfu0riJLHuobV/gYgQ/
 1QzI7fGi9UzsrqqN3raqAfhfNqt3wg==
X-Proofpoint-GUID: yMG60mZp1iC2zGoZILNzmoh5ffC-VFLp
X-Authority-Analysis: v=2.4 cv=Up1u9uwB c=1 sm=1 tr=0 ts=68f6f712 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=N3VNWiZ0WD7Ir0aJMQYA:9 a=uKXjsCUrEbL0IQVhDsJ9:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: yMG60mZp1iC2zGoZILNzmoh5ffC-VFLp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 clxscore=1011
 impostorscore=0 bulkscore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180000

The Trigger Generation Unit (TGU) is designed to detect patterns or
sequences within a specific region of the System on Chip (SoC). Once
configured and activated, it monitors sense inputs and can detect a
pre-programmed state or sequence across clock cycles, subsequently
producing a trigger.

   TGU configuration space
        offset table
 x-------------------------x
 |                         |
 |                         |
 |                         |                           Step configuration
 |                         |                             space layout
 |   coresight management  |                           x-------------x
 |        registers        |                     |---> |             |
 |                         |                     |     |  reserve    |
 |                         |                     |     |             |
 |-------------------------|                     |     |-------------|
 |                         |                     |     | priority[3] |
 |         step[7]         |<--                  |     |-------------|
 |-------------------------|   |                 |     | priority[2] |
 |                         |   |                 |     |-------------|
 |           ...           |   |Steps region     |     | priority[1] |
 |                         |   |                 |     |-------------|
 |-------------------------|   |                 |     | priority[0] |
 |                         |<--                  |     |-------------|
 |         step[0]         |-------------------->      |             |
 |-------------------------|                           |  condition  |
 |                         |                           |             |
 |     control and status  |                           x-------------x
 |           space         |                           |             |
 x-------------------------x                           |Timer/Counter|
                                                       |             |
						       x-------------x
TGU Configuration in Hardware

The TGU provides a step region for user configuration, similar
to a flow chart. Each step region consists of three register clusters:

1.Priority Region: Sets the required signals with priority.
2.Condition Region: Defines specific requirements (e.g., signal A
reaches three times) and the subsequent action once the requirement is
met.
3.Timer/Counter (Optional): Provides timing or counting functionality.

Add a new tgu.yaml file to describe the bindings required to
define the TGU in the device trees.

Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,tgu.yaml     | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/qcom,tgu.yaml

diff --git a/Documentation/devicetree/bindings/arm/qcom,tgu.yaml b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
new file mode 100644
index 000000000000..557bc16b422b
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+# Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/qcom,tgu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Trigger Generation Unit - TGU
+
+description: |
+  The Trigger Generation Unit (TGU) is a Data Engine which can be utilized
+  to sense a plurality of signals and create a trigger into the CTI or
+  generate interrupts to processors. The TGU is like the trigger circuit
+  of a Logic Analyzer. The corresponding trigger logic can be realized by
+  configuring the conditions for each step after sensing the signal.
+  Once setup and enabled, it will observe sense inputs and based upon
+  the activity of those inputs, even over clock cycles, may detect a
+  preprogrammed state/sequence and then produce a trigger or interrupt.
+
+  The primary use case of the TGU is to detect patterns or sequences on a
+  given set of signals within some region to identify the issue in time
+  once there is abnormal behavior in the subsystem.
+
+maintainers:
+  - Mao Jinlong <jinlong.mao@oss.qualcomm.com>
+  - Songwei Chai <songwei.chai@oss.qualcomm.com>
+
+properties:
+  compatible:
+    items:
+      - const: qcom,tgu
+      - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: apb_pclk
+
+  in-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
+
+    properties:
+      port:
+        description:
+          The port mechanism here ensures the relationship between TGU and
+          TPDM, as TPDM is one of the inputs for TGU. It will allow TGU to
+          function as TPDM's helper and enable TGU when the connected
+          TPDM is enabled.
+        $ref: /schemas/graph.yaml#/properties/port
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    tgu@10b0e000 {
+        compatible = "qcom,tgu", "arm,primecell";
+        reg = <0x10b0e000 0x1000>;
+
+        clocks = <&aoss_qmp>;
+        clock-names = "apb_pclk";
+
+        in-ports {
+            port {
+                tgu_in_tpdm_swao: endpoint{
+                    remote-endpoint = <&tpdm_swao_out_tgu>;
+                };
+            };
+        };
+    };
+...


