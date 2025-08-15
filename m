Return-Path: <devicetree+bounces-205122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED9EB28078
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 15:18:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34AE71BC87A9
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 13:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D98C302761;
	Fri, 15 Aug 2025 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a8vGIPbU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9C9285C9A
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 13:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755263913; cv=none; b=ClJbfSrMJfXN5QHt/Nkde7bGC2qTy6nSwq5CvZirYjwjIzK5Nc7+jn3mj6Fmibz2ld8Hi+BRJhc+JbedZYJYHIej/BUJN/8WdXX+TcIDLlarsl2+YOpzXcItf8ALqawL7qUxKF0ynkw6uoPvIWIDT6nuZdXvkEg/xVloJwynpxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755263913; c=relaxed/simple;
	bh=iFGrvpCpH4OzqPsKWLDwUClOVbka/29o5GG8qAczHik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qxIR7nJJX6/46Yo6dF84RS0JsY81KELGsA2cI2JOHIBIHPgHifJRFOTeQKf+Cy97poKIxeNa82grrLXwje/RYzh+F30iulSwO3/Olmvp+bI5skqbstrGjUhr6HbVj/ml6sZDngghPHcCMDWdOBpZzSrA7X0DiOOvECKpsN3QHDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a8vGIPbU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57F9m4xQ028164
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 13:18:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BNTmoIT+3QSEdOQTRVOgb+e3bVVubsrbyt1Z7+uuZKE=; b=a8vGIPbUhBbv7WyP
	cXShsEKMilHW1xOWWDfq/frwKaFouOlgq+znPSdndqnMeXEqf2oOZi0YizC5mtli
	pApWXRJLOdBDybEi5HmgzJU7tAuees+ThcwE9xR4312mYu4Db0OyjzTf607ZaW8C
	nXw1bF31pBZ48fxY7ofO6QMaKIjsjx6kT+tsRuRc4OSVA3bChwxgGwcpUocanaGJ
	FDeWCq/dqiABK96S47nWAFM5VGnxPfFuQPcPQ7om8Cvf8EsSo4IPR8tehzGh3i5M
	IWzex0WH9zOBS8tBHc6wIPauDRRM8d3bQi/jgXBKegUTq+FM4L4lPH6snQMWCdWI
	3JDFaw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48gr9rys78-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 13:18:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76e1fc66de5so2583727b3a.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 06:18:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755263910; x=1755868710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BNTmoIT+3QSEdOQTRVOgb+e3bVVubsrbyt1Z7+uuZKE=;
        b=MKs5K/foUSgAb74ZWZnciH9vUXtc/C83PQD3dQ8SQzYRv+LfA67g4dZLkhLUOsOsFp
         atKnkPOG6aghO6MdtPRp1ZmiCr6nc52XtJ01d7caj3OrcATRpgbezqYYmwp77uQLrYMR
         fLBOdkeb5yLnWZqhp+LY7YPKUe5wQ/GqELeNC8EIQ1dcmGayDn0TGoqMZ4p2Wq2anQ6H
         cJHXE6O5shWM+EchohHeFO+YBFTuHCkU+boSaxJJHlVYiCDFSRmYwzHyVxZahNCK9nwl
         7LEDDFXc11syNSTwBrQ25czGmBU+Xm1+2Q0/51bMl+QjIx9+ySbvxVBJF3wFj27tTHJY
         hCRw==
X-Forwarded-Encrypted: i=1; AJvYcCUxUsCjbKbisPU8v9OEf8PQrfRDEGO2Zbj1c2+BMKdDpphdpR9UmmxbEjBP8IJM1nrHK9kOMiI6Kibh@vger.kernel.org
X-Gm-Message-State: AOJu0YwrK5eBmKn5eYhRDnm7b7GjHD4QpguLnWR7c2K7rYyVGI3legQx
	t9mCNjYT7fxvSfV4VyQAmOyLp03GqP3W17dZjPdavzDkmtYW+eP7a2RhGgEoNp1FhZxCtCod2zV
	zcg25Z1U8ZfIOmffBG+MVXwp5Vw+vWyMV6VDrc+BprhVyZoVtoDYG1JViQAbQqPCg
X-Gm-Gg: ASbGnct80LyLH6Q4Q/do5GfRjTDCVZ8Q84MMj9TdAmDt1BgkWQSnKmYAVcqaufKAI1v
	mvTe36wJJpSRAjb/c582RHAmajIAT8I6XS47VIRRF9tjO2nvdvDVYtZRtARBVDTV9Ipi01SgDcC
	iH1lei9msmloyqGrseo7NvBCl5aLU6LBcopnxRi4sJlbEINQsOHjC74pzUsZQ9ygz3URAPl1BDq
	UY/+hCTL46MiGWQcRj5pE8//CO8Ghs7Zb0Jfl2Ja8oC5FI7qjI8GZuzFuHRAuTqdQhO5Odwb+QT
	PtfmrCY+eP1/P9MZyPPWOLEOoVsJ5zaC2GOXKvXbS+r0v/eYjWcGCCwKI04A7ySy7STLmvwJwhz
	SDJkTOLPdxqALh6E2KnvvQg==
X-Received: by 2002:a05:6a20:a105:b0:235:2395:9b79 with SMTP id adf61e73a8af0-240bdbed996mr11657818637.20.1755263909698;
        Fri, 15 Aug 2025 06:18:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVgtlGuHI3R5UTZppK/I92pbWdnaCgqxM5po9lFPqc8ruSdgnzkjF7GUIatpizm+XOrJCpEg==
X-Received: by 2002:a05:6a20:a105:b0:235:2395:9b79 with SMTP id adf61e73a8af0-240bdbed996mr11657761637.20.1755263909236;
        Fri, 15 Aug 2025 06:18:29 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d7944e6sm1256386a12.54.2025.08.15.06.18.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 06:18:28 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 06:18:12 -0700
Subject: [PATCH 1/3] dt-bindings: arm: qcom: Add Coresight Interconnect
 TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-itnoc-v1-1-62c8e4f7ad32@oss.qualcomm.com>
References: <20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com>
In-Reply-To: <20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755263906; l=3400;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=iFGrvpCpH4OzqPsKWLDwUClOVbka/29o5GG8qAczHik=;
 b=qyemCdR3P2VMmp7XSc+HQGGmjYmMzyTQG+snL1xiWIJZY/XORmtMi4kBRE3qJEpQsRwMvRJDo
 3CPb/IldSn1BjS12mEqgCgJiZjyfgJan0lEIGyUKjWy9sFlDUSulzWF
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEzMDA5NCBTYWx0ZWRfX3Oms+zgrcbor
 /8Cemvfyta56IRq5B/W09hP9ByME7xcAY4brOHo4Hmpr1mvqVwgtgRyo4+usYk9e/LTUhCWngi4
 w9RRYCoEcY9Dns45pkbi/TNLR7k/BQvmQMLuoo8mFkfUEFVyhhLPMLN6zJSJAbxIOuO6HVrqW5O
 Ovp3cv1sgXSvnHfqoIOUeoVLN+U4JM6xFYWTWbt4+fzayH0pLYyVQDui4LCPKiqfRPltxlSIQSE
 6bhpU+TypxS7Qjzp2Hk3CL1HfPa6/jLUg6u/CMgQmbFe94PWFDZSN4LtCTZ9tkMxs70RR40Laot
 /xcguyF7NkwfiuNZvEuntmp8rwHtZQrmXJBZakdtsEVyBdZ1+J2xUAhYZYzWR7oypEheUawGMFG
 qhQ8N24R
X-Authority-Analysis: v=2.4 cv=NIrV+16g c=1 sm=1 tr=0 ts=689f33a6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=v7KY3twRVyNl3kJcRO4A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: teXXdfiFUxoDNmTicwqCtQgPv1JVL0G8
X-Proofpoint-GUID: teXXdfiFUxoDNmTicwqCtQgPv1JVL0G8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 impostorscore=0 adultscore=0 suspectscore=0
 spamscore=0 malwarescore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508130094

Add device tree binding for Qualcomm Coresight Interconnect Trace
Netwrok On Chip (ITNOC). This TNOC acts as a CoreSight
graph link that forwards trace data from a subsystem to the
Aggregator TNOC, without aggregation or ATID functionality.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 .../bindings/arm/qcom,coresight-itnoc.yaml         | 108 +++++++++++++++++++++
 1 file changed, 108 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..fd224e07ce68918b453210763aacda585d5a5ca2
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml
@@ -0,0 +1,108 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/qcom,coresight-itnoc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Interconnect Trace Network On Chip - ITNOC
+
+maintainers:
+  - Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
+
+description: |
+  The Interconnect TNOC is a CoreSight graph link that forwards trace data
+  from a subsystem to the Aggregator TNOC. Compared to Aggregator TNOC, it
+  does not have aggregation and ATID functionality.
+
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - qcom,coresight-itnoc
+  required:
+    - compatible
+
+properties:
+  $nodename:
+    pattern: "^tnoc(@[0-9a-f]+)?$"
+
+  compatible:
+    items:
+      - const: qcom,coresight-itnoc
+
+  reg:
+    maxItems: 1
+    description: Base address and size of the ITNOC registers.
+
+  clock-names:
+    items:
+      - const: apb
+
+  clocks:
+    maxItems: 1
+
+  in-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      '#address-cells':
+        const: 1
+      '#size-cells':
+        const: 0
+
+    patternProperties:
+      '^port(@[0-9a-f]{1,2})?$':
+        description: Input connections from CoreSight Trace Bus
+        $ref: /schemas/graph.yaml#/properties/port
+    additionalProperties: false
+
+  out-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port:
+        description: out connections to aggregator TNOC
+        $ref: /schemas/graph.yaml#/properties/port
+    additionalProperties: false
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - in-ports
+  - out-ports
+
+additionalProperties: false
+
+examples:
+  - |
+    tnoc@109ac000 {
+        compatible = "qcom,coresight-itnoc";
+        reg = <0x109ac000 0x1000>;
+
+        clocks = <&aoss_qmp>;
+        clock-names = "apb";
+
+        in-ports {
+            #address-cells = <1>;
+            #size-cells = <0>;
+            port@0 {
+                reg = <0>;
+                tn_ic_in_tpdm_dcc: endpoint {
+                    remote-endpoint = <&tpdm_dcc_out_tn_ic>;
+                };
+            };
+        };
+
+        out-ports {
+            port {
+                tn_ic_out_tnoc_aggr: endpoint {
+                    /* to Aggregator TNOC input */
+                    remote-endpoint = <&tn_ag_in_tn_ic>;
+                };
+            };
+        };
+    };
+...

-- 
2.34.1


