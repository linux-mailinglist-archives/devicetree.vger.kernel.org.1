Return-Path: <devicetree+bounces-253054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E9FD06CE5
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 03:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2183830042B6
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 02:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC72926B77D;
	Fri,  9 Jan 2026 02:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L7AIir4P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a3UHkiqm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBAC18FDBE
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 02:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767924729; cv=none; b=AnycOpQHzQlJpxifmd0TAQ+bteGUGchRJfbJXwaTyrHCvofroucWfFW5Z8tyqOlWJa0UW2JmYn+KlMxFAsaZPx8VHNdUYiHjofTjYd+8oioXtobmSnWN8UqFVoPefuk9PxeN7LSahLl+w5IrrUXVsbcHKQWtqtDDSZY8yXidVZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767924729; c=relaxed/simple;
	bh=6VY87t9VghiDLhppTTyGc/EGkt+kVJvSCivK71N+61o=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=YdTTP5Qyrjg7RqrLLSWGAksw3Wfy3cuDHEpQoW4xeMprMeJKmqWzbTtxHUMo3hMq0GgdQEkPpb3jDUFHMmuwCWsqe0OTjHOQi3aiT/UANcHqq+VfkUs6vXfQcyjRRTbk/EA6B5mDkHmAbztMY2fyLC0RKPdpHKHwiJ+EnqNBED0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L7AIir4P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a3UHkiqm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608IUSns2986370
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 02:12:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+nWc4h1iM5D
	mFVSbqSbzqsFj4rfaS5ymL17azyq0Eek=; b=L7AIir4POjTyxQCYaktvTprAb2n
	aN6m50RPWJ1AHDfXQTZ9rLkBwVX78uejRA5LSdTgxNJ7JjDxrehmLoqHfR1FMEBH
	r8zMv+MGJJeHrDfEiv8MCnTORPFMdYq7rWW+ocwh0i4DDlTSeFqDMEwhglRBGDpA
	mYWmNyx75TxOn01MKDZqbJEaQtoHGbSjL4UNuqcyv4W+xTRbneS5GMq+D+b9+OMU
	iOaveqW9n5myQ7pn1bJTGbC4GifULfU6ECSqg4MRUOFr2cnWs6cvYEM8KsZ4bIg9
	8+glFFFTAtsp+Zky9B9czk0ndOJ3zmONgpyb2itMw5/VwnOlXag8J3tf/CQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjhwx11s5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 02:12:07 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2b0751d8de7so4743223eec.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 18:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767924726; x=1768529526; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+nWc4h1iM5DmFVSbqSbzqsFj4rfaS5ymL17azyq0Eek=;
        b=a3UHkiqmSlJ5m6raNf0Yme6qkRSRzp9uD7bO6EMExFmo85uyKmXZPJStGSXE2TIJA3
         sffkXgKK3v5tV1WcI0OYjdTP14R1zykFSNTtQke9yu3+ZbDOXM1sOzPlTuYqpLplCVQh
         fBn2yubmKLCRzlfMKt5dKD7RBaarBmj9ZBn23LEUC1Z/7vKvBUvTEn5ywmcuewfqB/C2
         HfQRWHvmnhqVs9ygcW0iCQ0WJJOipcDFH0U+LlwjCq4RQlxjW6pArYuLgmlg2yJjrc9i
         mJ3c8PwfHbKsg0Q9obano8NpaWW8QOSNYIeaaoca4r3X4s605or1qf0agIaWdXmGCXyZ
         XWWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767924726; x=1768529526;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+nWc4h1iM5DmFVSbqSbzqsFj4rfaS5ymL17azyq0Eek=;
        b=COJGEMr3lFnz8JTK8m4tC9WevwpxW0dR/MpR/fAB1HplJ9oNSmb2wVMmb/DCQHJlyB
         hVas+BO3yorZs8Y3JI/oSWclSmRwTiiwVR7/HZD0B5mVVZ3lG6kyiTyz7naDzOD0Ns76
         D+hRF/bHx6zhof2nCvtrJxepzmlZuXyRNWThOzu3OCakwyU7UhYGo/QDtlZ0jerLGhEV
         VawVGp8t4+DY5NIPYFWK7aZiujkf+dYIM+e75sO+7wJXEMC9H4RhpqFAdJWg4F75CyYh
         1ONT2gMtdxXZgPnPt516031ITpx9N3HOjFtXnZyLyX88soONr0GzNqX1iaT7eJB0KGX/
         sb9A==
X-Forwarded-Encrypted: i=1; AJvYcCWm/xoeSOyyx76UX6mkoLwMvYgVyBNrRGua3zAO3s1JGEzXQoV+EJnB067Shu3LW0NwX/NLEqNySw/9@vger.kernel.org
X-Gm-Message-State: AOJu0YySupBfMEMZ2ghncjUyRplowtZMcnhEvftd1IaEDl1zW7s8JzWs
	o5cMiDPNIj7eIQOEt4Xp7lLhX9BO0t7jXPRx+u3Z+0LDI8g4gGebcw1iEVr+z68vcEnuqZ/I99d
	SOvTec0Y8AO2vAkHlZYCtvgFV9q1OWgqBh/70TySFlwP0uXtEjcBcJzLH97ucmXpf
X-Gm-Gg: AY/fxX7N20UIoQh95ojRMdPTrikeD2lYC/OUkKv4XDRIHRmrDNMS/8k0QIYeA3/5/rQ
	hz9OYBt/zumYoUp7WOr7u/+X4ofMyyyfX9F3nz/gktRGGfQoO7/jy0aO4Y0A6IvQgOW9QU6edXG
	swuULu2FzFN1Mlyy9+QVJvug1uUHSvpOBCjLtIRapMLEa0jATsiFJQq6AOTVnBZ6y5dM0/uXoZs
	UKky4rH5gauJMu3mjbD9EPLC1mnoSlOzIAnZf+XYmZBG0AXjUBsazAzuuf/6UtAUCyhhrkwz6Q1
	RreDuRp5PHc3BWkgpUlpnDkDmjg1kn2V5vVmD1DkYK7O9vFjnYxbrFYgqmnYvvUKnw+oW236lX6
	qPbhTCcfLRyjUcdWazXJdhTYGJLCWfp1Cqsl2KHAEtbRQTWDbN5gMiGtPgX+ZXUnu
X-Received: by 2002:a05:7300:8aa4:b0:2a4:3592:c612 with SMTP id 5a478bee46e88-2b17d2d6606mr4790669eec.35.1767924726016;
        Thu, 08 Jan 2026 18:12:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgy6sYHhmXV0R+HsajFHl/JVX2fDprTnrm3I/yjxtsb+PByjDHZjVHQYgqLNx+6k5UNumKGw==
X-Received: by 2002:a05:7300:8aa4:b0:2a4:3592:c612 with SMTP id 5a478bee46e88-2b17d2d6606mr4790641eec.35.1767924725322;
        Thu, 08 Jan 2026 18:12:05 -0800 (PST)
Received: from hu-songchai-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d76aasm9459111eec.33.2026.01.08.18.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 18:12:04 -0800 (PST)
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
To: andersson@kernel.org, alexander.shishkin@linux.intel.com,
        mike.leach@linaro.org, suzuki.poulose@arm.com, james.clark@arm.com,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: Songwei Chai <songwei.chai@oss.qualcomm.com>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, devicetree@vger.kernel.org,
        gregkh@linuxfoundation.org, Rob Herring <robh@kernel.org>
Subject: [PATCH v10 1/7] dt-bindings: arm: Add support for Qualcomm TGU trace
Date: Thu,  8 Jan 2026 18:11:35 -0800
Message-Id: <20260109021141.3778421-2-songwei.chai@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDAxMiBTYWx0ZWRfX4pM3qjiPmaxg
 keES0pj8uwv7Yv0RM2xu5BJmDOXHftYu2GrJRUbS6aLpNO4YH3j1BmY5Zt8Ns1YcY+omBjikYcx
 V9XlgOjbm90GF0FU2Q2wRj4+OjXofv+Ew7WnAqeek56s6AVdOlCsloLCxH5N3ztzXsJU3bZnlKB
 /A8txjE55zouYuNL2FC3oKGjFPmLHkYPcK6WPpJfvjUv1YHeo87p3aEFoN5kXFSXtOCnof0SRHm
 M2rn914psIG6JYaVe/bV3zcgLyZaI4MlP/f2lSP+Uv6x+91sWXcydi3wSV6WUNSDe4fTIZ93mX6
 QNI52stg3TeO0rOHevJQceez4TiHbRGMi1Z6uf0LCS6A/QX0NGEVNIy9AkWt8dY6c63hWN3tNcA
 7VFkY8s8gP03PT2D5wEj2ui2myw8D+n7n9Bk5CmBoLEAOHcWxqJIVsyfSPxnbUl4ca27LFn+mHn
 h8b7wDCESePbrBCspVA==
X-Proofpoint-ORIG-GUID: gAWvcPDjBB8PMkjTqqFJAURROLlBtW5e
X-Authority-Analysis: v=2.4 cv=ENILElZC c=1 sm=1 tr=0 ts=696063f7 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=N3VNWiZ0WD7Ir0aJMQYA:9
 a=scEy_gLbYbu1JhEsrz4S:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: gAWvcPDjBB8PMkjTqqFJAURROLlBtW5e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_01,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090012

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

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
---
 .../devicetree/bindings/arm/qcom,tgu.yaml     | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/qcom,tgu.yaml

diff --git a/Documentation/devicetree/bindings/arm/qcom,tgu.yaml b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
new file mode 100644
index 000000000000..5b6a58ebe691
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom,tgu.yaml
@@ -0,0 +1,92 @@
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
+# Need a custom select here or 'arm,primecell' will match on lots of nodes
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - qcom,tgu
+  required:
+    - compatible
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
-- 
2.34.1


