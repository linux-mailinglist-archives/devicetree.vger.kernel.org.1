Return-Path: <devicetree+bounces-211140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5A3B3DA6A
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 08:58:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3FFFA166636
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 06:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7F925C809;
	Mon,  1 Sep 2025 06:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WDUyUbYg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEF925A2B5
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 06:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756709904; cv=none; b=iHHdrXkeDqkewDIa0UNWqPjdWTVfHK31vq7QHtOQ1tlKZcKKFOTleTeBuRimB1Y1CsXutSr2mYKRIBnZ/0hseXNnMIDUHgYfRW//KbVwERxfP+JYv4PGmxdHWBQDcZH4gkeDQRYhTQHagITPqPiqY9EwOKa6lzHqfuc4aLpWx2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756709904; c=relaxed/simple;
	bh=Y867aF4IBjLOR2gpmZC8PqfLpe9/4Juk6DhmSLbLZ8U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W73iOe0rKiUzysTE+pkv7UeL9h9MTDgsHYDj3TjRWQoFaOmC61AajtbGV3lSe/cUiuoRoi+IPVvI680rZzSEHqyUo/+0FfdokgsxwEM5fNPzaUdKisEnCVDA0IR9qKXOxp6CVWmIyU/UM+R7gnO+esGMNg5UjFxIprq+14DIBeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WDUyUbYg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57VNiZ9s021178
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 06:58:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R2ZenOczyNRPh+gBJvOKUiI+2zJ13iDNHmu85jEHTew=; b=WDUyUbYgRLl7jdI7
	Kof+UedANVrgMe07x+uNpGBTUGIZeOIClybm8bgH+915O0qHldXZwwmRI4PA2diy
	7halh5sos5IXlC1CQdE6LFySw+LPnZgcXv76WAS6XIFXIdfIVULP42iSCFZWCIMp
	XTZ/MN/+u6TLFOVD3Ug7eMnqYmSno9Iq2GvGRTEM8x0/3MvIwH6Z5YnSAhCnb/U6
	iA89cqIJBkbJkpihO5Z/V+oGtKuxC50DNs/h/XoZkvI+oqMMgCW6K5wvUXd6+z2i
	ZQ+w/3Bv9kCzeKx0oIVilh0BF4pmFJqD6jic8ubRKqAyiiIrXv+n+7Q32sNU1E5A
	uCoDdw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48usp7ujf4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:58:21 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4c1aefa8b7so3328324a12.0
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 23:58:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756709900; x=1757314700;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R2ZenOczyNRPh+gBJvOKUiI+2zJ13iDNHmu85jEHTew=;
        b=W54svX2nDS3MlhQC+d7MwRgZT8hweCSF5js9e1Os0p45EulT3BfghDryvS35PKEfzg
         4cG246Fiset2wwNDEk+AeAF8enP0jP9f7qrIb36+2GlVoOez2qh/SUPv3NoJDzMRTKZe
         Qp2pJq/k9a36sYl6BNGdRDn/UAmJyI7TKYygyHzqN4qwa/nJmWU5Tu0QQne7/XUi/2oj
         ehqqpqsaqEHlQvk6Uh3Qx/BpQDd94ZFP/ldZbi40Fe2pUjnwqyKPDx/VB8JlNjryPH/M
         vCRiDDkWPepJm5BWLxqEboD1orRtx8KMoWecjLni5sEYLCYMB9LXqqEh+X2m5LJvdghb
         kDMg==
X-Forwarded-Encrypted: i=1; AJvYcCW7v0LXSoi/7S6SB/9I57qOUtifksKdDdQGdawsfUagkWLFGRpmXcwRhbsGQIiXaZaCTIE4cRY1N4iY@vger.kernel.org
X-Gm-Message-State: AOJu0YyVgfvDS+wbR1GUeKJM59wPEU8UCmDMsH+j4a/Wy3AVehvFfkgi
	gulqDYV4paEhOdwKnBgPRwQ7FvYQLhxNotZVMPIUBEOqXH1CEK1WU+mCMvtyXgJL+h6IRbITdXU
	hFksQN6EdmKU1ZWnHIppp1nihsJuX40LqDyulnzY5FECo0k7eYhnv8S2WslVYY37i
X-Gm-Gg: ASbGncvuhbpxCtQ5XKPFbJFEO5fssPbQLIjXSmKmXnQK5aFJJMEIORELOI8IPCpZH0+
	4J9FwZYzL0jWdUGJp2E7a7iZbJzZRw0AdDagM7TSsm1iCPDDAC3mVzfhEyr/GXRtshQgzF/17RC
	ujrRY0D+CPN3aF/AL5hvVgEbkgGA4I5VzzXn7TZNp1AoYAfeDObBhC6O5KfzlVR7gZWrY6Zkdf+
	E3zKaFXFBpXUo8DQkUtw+b72jCa8pf7JmwZlMHV9b3B2qoSAe+iqucKmgi9Ry5FxOv8hoHv3lo2
	aTEp5sXfB0gwoj0Nu6AjInnloyFw/33sOEKDt+QRqj1ENn79c/yrHqK2TZw6/g27d3ySPz37Ac6
	x8SgxsBQadHVJHP5Mi5/3Sg==
X-Received: by 2002:a05:6a20:3949:b0:243:25b0:2321 with SMTP id adf61e73a8af0-243d6f7e6d2mr10335749637.52.1756709900288;
        Sun, 31 Aug 2025 23:58:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBrdSMOV835ZSodM/ToG95GYGlvM5rcn6Xyqn5yubD8Vrxqydn7Qb9jXXaPnNnhXEEII5VfQ==
X-Received: by 2002:a05:6a20:3949:b0:243:25b0:2321 with SMTP id adf61e73a8af0-243d6f7e6d2mr10335712637.52.1756709899850;
        Sun, 31 Aug 2025 23:58:19 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4cd366f95asm8559358a12.51.2025.08.31.23.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 23:58:19 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Sun, 31 Aug 2025 23:58:13 -0700
Subject: [PATCH v4 1/3] dt-bindings: arm: qcom: Add Coresight Interconnect
 TNOC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250831-itnoc-v4-1-f0fb0ef822a5@oss.qualcomm.com>
References: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
In-Reply-To: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756709897; l=3075;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=Y867aF4IBjLOR2gpmZC8PqfLpe9/4Juk6DhmSLbLZ8U=;
 b=2EFvjtdW0aDYQylD4PeK2l7hUEXE+8EE2A/CHNTTApxMR4JJgxpAITja7UdmxovLQuemCM2f7
 vkq81UZFpmkBtY40PzRN6vSsQT2Uuha1jQw9G1gNBiAYZXLQiXJ90kB
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzNCBTYWx0ZWRfX1GXiuKEDJuPX
 1xrjzmq7dYqe4Rbnt0jtn8dj/w858wGJdN2iTSL4pk58l2eD0IRmTPfL5sV+Z9b8V58wlZXqc+c
 aACNOrTk3mbvXyrCyn15Q2w6/t1hpZksczWpfajBEde9cIEHsqdi6CFnpXvf+ypWB1uGadSrjDj
 2VkCyk8PugH48S4w9E5j4KqAyKL71Fq+w+XFDycgtctYlffhQMfLf/STya6pj59X8vOwZ5wzT8k
 3jB1NGWah8yxOIjLbPtmkmGZinUtOy2mhpzvR4wVX+Xox7NlrQfIcfzj3/1CMEC/uJE02kA8yzk
 rk30hUD0N8ZZZk2xDeIhcBcNmsJ0CNcGrdFoH5fHpW5yAqket+Ngth/HY8jaTw8Zg8CLqgZ2hG1
 1lTk4ivn
X-Authority-Analysis: v=2.4 cv=e6wGSbp/ c=1 sm=1 tr=0 ts=68b5440d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=-QmmxQN2S_yWG1-YAlkA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: AKdodvZ_PMhIg5pt0AEIINKTLiUd-FAM
X-Proofpoint-ORIG-GUID: AKdodvZ_PMhIg5pt0AEIINKTLiUd-FAM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 clxscore=1015 phishscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300034

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


