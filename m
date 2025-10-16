Return-Path: <devicetree+bounces-227415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BC70DBE1903
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1B511351495
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB06E2417E0;
	Thu, 16 Oct 2025 05:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yd67VGBI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B77323AE62
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760593780; cv=none; b=Xm3mzdurXCxcTmRUlw6N/mkV41aVZzQXimv/2eflBtUsMk/BoF5+TuL69+XNhXDpx4/sN/+1ugPlaCcCM8wGEwGwqzTCf8TgE3L5CDxoumcmdR2KHiYIAmZYuO5eFDSFtrPCnaguOxNn7rrdzktBAWsXv8A/6SNe5UhizTKCxIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760593780; c=relaxed/simple;
	bh=Y867aF4IBjLOR2gpmZC8PqfLpe9/4Juk6DhmSLbLZ8U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SU9pY7zFsQkUiJ8jl6yC/3dHRhekTWS83f3NkmR4qp8RaUEqwoKaNyI21E9hXdJj1DFe97VOcjJBQIhJQm0z8HvPj4qoPLMHpLCMSXNiiDlVFsETiq3ynEH1YPQs7ddWRm73HTdxEyo/gTmm9z44mTrsFchhFShqoGXnh9xHOQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yd67VGBI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FK8gYR004964
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R2ZenOczyNRPh+gBJvOKUiI+2zJ13iDNHmu85jEHTew=; b=Yd67VGBI58dErsGh
	isd/1zx7yOpKb3m7HkpVF+9HJkwanhUQqM3yBcXDQV/LrkBkq7jZk0l/KCjKCzh3
	kKjRccqkbEk3KgXbrEqIxDXWn4d2Lsi2gKhkIBbyHfR3hJRwYKtNdFC3griq9xbw
	oM8gLtFl+vfCQDahH37taNmXBIUdHlWP98Ty8bhlbGeaLPoOXd9/W2WR324LYwDs
	61Q2yuQfGEbjzxaMDxY4iYsr0Qdlf+8adhxqBjtpr7AII56dASlgx+8JlP7oQ2zf
	qnZj6+sQjJY5XbYr+4WiocmcZM/F9ib73WDke9TrtOKjXwt41yQ8gQ3CrJssQXc5
	zfqbHg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49rw1akcpe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:38 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b56ae0c8226so235025a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 22:49:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760593777; x=1761198577;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R2ZenOczyNRPh+gBJvOKUiI+2zJ13iDNHmu85jEHTew=;
        b=Eshb5Bonaco6Y9AS+jd+Ry4+Qxq8RSF9KD4ND7Vu+5+Z0IQHSRlnaQVBbX3MzjSZZK
         +yTweax2V4klUCakPG4InnU50aW3y1R0T5ntOnuGGfgYDWiRhrrpZF3l/N0dIFTddxNN
         SuKLmLRfoUfBY+ZtgKmPY58kWLuVpG7gOWAEOsF8EhrEBhnA/UAdX272BiE5VJKQNP5u
         pnGSXvNcmxpqYkl/eReIIjKO0BkWYLBy/gUzo7r/MV6r4oDrBBy229SViBEN5vrYXPNz
         FciY7v9h3GPdEIzBZCMu84BihDkiYwuoQwAWP1m/J9/ZBWgFhvISLeywnK1M9nSdfNc6
         3fcQ==
X-Forwarded-Encrypted: i=1; AJvYcCXI4t6/bGGixg1JIioC1KeTkNLVtvEwKPsTVo4ltF6CRzSV81GIjEnzADvQ6cv7kDXUQtIoPaxJXVZJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwX27LYYmauUI0G7XY1CLo8l86bJNYiY953gWUodlWDbA8fxOoR
	AdQWonhFQ3hMrK0I4tbzb5OKdai+Pg+f7YWf4Qz6Qdu9UXpyxiZ7vbG3lO/d/Wvwo8WAZnfZtbe
	LMUodwl15sroGYcrKhWqAqXJV2K/ddpL5NPpoqo1e4gBd9K4dWRKJLHyF8Sct0fia
X-Gm-Gg: ASbGnctnO4wSLdo/FQTZYJqnK3SeTjcKmt1MO9DbmRP0HB1ls/ikewua+oDREN6APK3
	6EGZYQbf+o+1Uha7NC9oXjIsnlzorxx/WMI/XslTdK3MccuKobRmk4JV81x6n7VqOlk/1qtZNLc
	MVpD/VNhs579PLViW65DjwFs2LCRp9qPmQ9TZzpRp22WH0RVAiUCN1A82/12NN80F0+VvTcWDZF
	/dW3y59UeS7bJJZdSd5mbLBw6qMD+xMKpF4pMrdNW0QZ86XJvkg6p2PvKqALwFTeCDOzePBQiWG
	BQzztvFwQxQwGuUuJEcrHySpXcrvNRhc6bc5AmWDF8n5eb6u6DN0heZ/5Jlj4keZu15COY1poe0
	AVeG2B4Vciqg8auNPkqHabIgZrI7RMM7kcGpvJlHX+Czall8w4/P/uP7V
X-Received: by 2002:a05:6a20:918d:b0:334:a261:862f with SMTP id adf61e73a8af0-334a26186b3mr150097637.26.1760593777490;
        Wed, 15 Oct 2025 22:49:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGRjYvscNvn4E0vQBfwvASCV4Pqf0m+pOtdqzRYlI5lGMnrf4heuypJ8w8YWbvPn9A6D3ZaOA==
X-Received: by 2002:a05:6a20:918d:b0:334:a261:862f with SMTP id adf61e73a8af0-334a26186b3mr150055637.26.1760593777038;
        Wed, 15 Oct 2025 22:49:37 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm20657931b3a.59.2025.10.15.22.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 22:49:36 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 22:49:30 -0700
Subject: [PATCH v5 1/3] dt-bindings: arm: qcom: Add Coresight Interconnect
 TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-itnoc-v5-1-d7ca2b1cc6df@oss.qualcomm.com>
References: <20251015-itnoc-v5-0-d7ca2b1cc6df@oss.qualcomm.com>
In-Reply-To: <20251015-itnoc-v5-0-d7ca2b1cc6df@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760593774; l=3075;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=Y867aF4IBjLOR2gpmZC8PqfLpe9/4Juk6DhmSLbLZ8U=;
 b=cliWJQ3cCm/Fg7j1zfG3GF1la0aaPjQALYORA+TGbWnntK956NJJ0g8VbCrYQRc+v5A9cc4jL
 zoeEtsiuSbLAXyvjitBHF6kaYuoH4vz3sV7bCFgyhDTdYSQhvw9uak6
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Authority-Analysis: v=2.4 cv=K88v3iWI c=1 sm=1 tr=0 ts=68f08772 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=-QmmxQN2S_yWG1-YAlkA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: aNSoIHWBMwIgVnDDnM7dwJravFJF6Eyq
X-Proofpoint-ORIG-GUID: aNSoIHWBMwIgVnDDnM7dwJravFJF6Eyq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDAzNSBTYWx0ZWRfX97GI/ubJRY5k
 gdwTr539uXyTAEAxHwXnOo8qXxO2MyB73cGZmrsFmuajVq1gMLfXSciPVXIYHAVhlhdbH0z9Qtk
 wLvFnUwo9Xtdwx9KNbnlwEu89DLoaJCaSjgChfz1J50WrKarEWWfFdhS89kybPcB9JSVekfIRB9
 A5szQkHf3ldrcWBjXDyH1u6MpLLzphIZIAQBEFEK25tnUFx9mKX4tskqwlSeRd/PE5mgNWR9iSe
 S9Z5sZ5EFWe2RUQ2ml5TifoRB/WgWiTSxLtsOfPS4+54ktkglpyj+fPKKI9PteDh4lCwPbOrWCT
 9mWuahAA10cvVvuznvTGdFogPSiakfU2T/lwpXPkMWnYA0ZXYZ/jkC9L7vAZENGtTxxVVRbJK4o
 kpsZ8clRkN9yriQW5mEBdk79bdl8rA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 adultscore=0 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130035

Add device tree binding for Qualcomm Coresight Interconnect Trace
Network On Chip (ITNOC). This TNOC acts as a CoreSight
graph link that forwards trace data from a subsystem to the
Aggregator TNOC, without aggregation or ATID functionality.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/arm/qcom,coresight-itnoc.yaml         | 90 ++++++++++++++++++++++
 1 file changed, 90 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..8936bb7c3e8ea267ca66e0cc3fc4dac33ba6de30
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml
@@ -0,0 +1,90 @@
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
+description:
+  The Interconnect TNOC is a CoreSight graph link that forwards trace data
+  from a subsystem to the Aggregator TNOC. Compared to Aggregator TNOC, it
+  does not have aggregation and ATID functionality.
+
+properties:
+  $nodename:
+    pattern: "^itnoc(@[0-9a-f]+)?$"
+
+  compatible:
+    const: qcom,coresight-itnoc
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: apb
+
+  in-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    patternProperties:
+      '^port(@[0-9a-f]{1,2})?$':
+        description: Input connections from CoreSight Trace Bus
+        $ref: /schemas/graph.yaml#/properties/port
+
+  out-ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
+
+    properties:
+      port:
+        description: out connections to aggregator TNOC
+        $ref: /schemas/graph.yaml#/properties/port
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
+    itnoc@109ac000 {
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


