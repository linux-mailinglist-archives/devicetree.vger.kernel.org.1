Return-Path: <devicetree+bounces-209919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3A2B39837
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 11:27:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 780D21C263B8
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 09:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596472EBDC2;
	Thu, 28 Aug 2025 09:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LMiOlCT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B1C2E0910
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:27:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756373252; cv=none; b=fE/k1Js+kVMFMiBT3sJGJLmOlg6zFgcoQm7L/qsyNf5f0AAjMfUDzfQysfDYNoPcUz4lE9mkeYa37TRBAq1Y3nNmDnkjE9yuQ12WuAJyxylZDAURIuY7Ag65oj9fqEFYkuL1rKRCF9PFtK9TJzM9BwBqalY4t2pDk33LsV8UBuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756373252; c=relaxed/simple;
	bh=ubXxXSq3HRpwyGgZB9pVBtD7LlF/Et+jBwYXGMM3AgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uQVnN8+jHPaJAExZ12dr8yWnD9Gpq61G3JJQ0nCLYg+2DjqyKBUjiZ6UYnsystG6F8osuAz9vvgbhTyzdwvecgXIQc7sWf99D3mz3BsbQozALlUwj4FLyNt0tBkfE9alMLi8OdZ4ytZ0Nzf14teM21BVWqobSMzMSOtpFCagB7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LMiOlCT0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S68gdx014817
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:27:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5RBCQZAQQ3qbcPWi42TsUywUHN03HVpohWHspiY+9TU=; b=LMiOlCT0S04iqj/M
	7w+l3wHyTY3M9Te/rVK14U4cUyYxVR0uN+cAgQzCb3pAcABaK3fZ52hKSLqLyb0V
	3gy+MtcermJl5oqY+A5Xrvbcms3M43cogbmOKvpjfzeTpOxzHdO+0u+P+arChA8T
	D6fDq/4a3E+jbvJUzHMQzzzd311QgmtA8VYBjY+3VUgi/ML8IrBF+w7zIA6T9Ci6
	WXW8Vm/5ydGCyE51HKa9SoSIcwVCuD98WpTqdQW23nJsva9kwiqCPb4qiU6bCr0V
	LCSeLS+k+Wearw1FKPxyjVxONSzynfdLVkFgn28M/7/8vs+pD1sLP4SfUHDh1TZT
	5oo6Bw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5we7dxe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:27:29 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24457f59889so8728955ad.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 02:27:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756373248; x=1756978048;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5RBCQZAQQ3qbcPWi42TsUywUHN03HVpohWHspiY+9TU=;
        b=Lh7KmlvalgiqRz/2OlqlLtbBHJIhS/d8FD/m39tPxqGhgLMcW794SJvxnr20Usiom/
         5OFTjS0Z+cwNzq9f66re+NY6uN/KmMucMQ2vBSoacY4AzvhhvIRK4YAUohbrlKyAt3Jh
         LsAS+rFoGlsT7sO32sUO5nPySPslNvk3FjmErg6K4ufFfqeZZVj70Q5NT3FT3tZ573ap
         knlud4249ZlCpqt6N8G5XKoQPz0vQamLxxH88lW8rRoaGDBFspLIDXrW4EGQGXTECnJ+
         fJ0N9OPPmrXVzoUX222Yfjs4nl4hTUADn+kH0M/vBNQd5ihB/5tmLsD4IO0GCKoMIhVS
         /XJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgcSl8Iq0XJX0SNGHW6wv1ChrscahiI9uUSqHY0kqu2lhHnIXCcTiLNYodXcSzKW0o5JkDvX5JqN60@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz9zPDiuUnrA/dXmoG/XV0c+sAil+p052vr5sFDgaiosUN2cV0
	BOzzv3dlbU2P8bZiGNefrVEBcGcYXIzj/ec698bffALnwiyjj9zBVNXnlGIjiOARxTpCSMqJTdj
	uR1tsedWh+bWG5LcLwMkKoA5MATI2Gvfxt756SgOE4y2jZtzY+cq+efMML9upEqcx
X-Gm-Gg: ASbGncvd+WOMbSaO03xpQYDw5ETilgKJ8ZOQW0BDdWHBZT4tc4hmA49GmtI1i3CgeJf
	44q3fC5f5nT9flpLacsKlqdpp1cXxxto7PY1ZGq/G+75wzbnAvvesVLEiNTGcqxqgZsMrB0iFaQ
	cdPdFHl0kNtyOUHP0dnEncaU21Ye+5Ij/114Xf96ZEmPY6jyeghEKeuxh30PuydiqQWchPYCPLU
	jTs7yNY0JzWbt2JwFvpPptvzxA/9CObBoC6u0b9AXehqdCKBMlS4OEk8TzIuP78+/pmkzM56DQs
	G5QKqtXOXXMoaIvzDdl51g+Lr187f9ey/lAfzwv4D5W0xwW7m0NQ1URNxAzhJnjTEf4FNYcW4Ad
	PFy46V8E8kVC3l/sXrQVa9A==
X-Received: by 2002:a17:902:ecc6:b0:243:12d5:db43 with SMTP id d9443c01a7336-2462eb44c45mr315240795ad.0.1756373248080;
        Thu, 28 Aug 2025 02:27:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhgSpOuOEMqNem7SfvViYQxUPC2kynQsuvn/YrvRYMejOOvFbxYueIAMEDlNDix/TQ6ccBgQ==
X-Received: by 2002:a17:902:ecc6:b0:243:12d5:db43 with SMTP id d9443c01a7336-2462eb44c45mr315240355ad.0.1756373247541;
        Thu, 28 Aug 2025 02:27:27 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246ed91ee20sm92497015ad.136.2025.08.28.02.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 02:27:27 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 02:27:22 -0700
Subject: [PATCH v3 1/3] dt-bindings: arm: qcom: Add Coresight Interconnect
 TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250828-itnoc-v3-1-f1b55dea7a27@oss.qualcomm.com>
References: <20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com>
In-Reply-To: <20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756373245; l=3025;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=ubXxXSq3HRpwyGgZB9pVBtD7LlF/Et+jBwYXGMM3AgA=;
 b=Zgwlt3jRD02lL12U66KU4jhzO1e2GLLqoZX5wl63ys0VNVc0JVoilJq8ycPw8K9YZrM2ChWM9
 6TEHNPVDzgxDr88uDQC8FjEDBveI9a2wEv/4o604J5gJoL0jiXMHGkV
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: TdRy3E2-a9dM2QrbWy5zPO9OcZPqZR_V
X-Proofpoint-ORIG-GUID: TdRy3E2-a9dM2QrbWy5zPO9OcZPqZR_V
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX/M3ML7FqrhtI
 wuYczuz+6p1FDRkEM7YnwM8Df4m5lpmR1eUT7HTwnF49HemzgfmCB9TklLYHevH/ULr6iW0M0Mf
 /5kPjpps6W2LyoezFZpUb6hqcZiVlNtgMgDN1fegsspiwohrAZyZ+DpvHS+gXGYXv9JTG8YlMWx
 0q+8SankcQZJ0lFOF6/ZTYAMrJQn/4r15c5snS4zxrhVdR8ZVasP8npm55gM0fCkYEdHWc5RTId
 yNIVH7b7fv2XFHlEhp+1ns6YhyL7SjhbQnhBlnVyfgKW5y9oHvITJZYob+TqEUKoWQZSslXdHJj
 TV+eDy+qhJloQ/W9U4jDWTRAD1Kyj7YJW/EmuCb/2OYGnPo2iVUG/nXotwlG8cA5zhU+TTmO8p9
 hUgN35Hs
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68b02101 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=-QmmxQN2S_yWG1-YAlkA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033

Add device tree binding for Qualcomm Coresight Interconnect Trace
Network On Chip (ITNOC). This TNOC acts as a CoreSight
graph link that forwards trace data from a subsystem to the
Aggregator TNOC, without aggregation or ATID functionality.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
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


