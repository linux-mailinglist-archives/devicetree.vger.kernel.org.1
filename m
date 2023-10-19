Return-Path: <devicetree+bounces-9863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A83677CEDFF
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 04:20:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2EF2DB2122B
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 02:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6782A7FD;
	Thu, 19 Oct 2023 02:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="ECe0jJ7w"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B0BA55
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 02:20:15 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D78F13E;
	Wed, 18 Oct 2023 19:20:11 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J2Ia91001191;
	Thu, 19 Oct 2023 02:19:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=693Rhk+lQnzIGwgGutNXFeZ2mkIq6DSTUDmC7J7Oplg=;
 b=ECe0jJ7wS+YXszLn+IvVPCcMFoxuSx2USOnJJ94rG6lLPAyUK64AYNlIAOACMXPDC2EF
 RAFkQZvck+tzVwwmW9VoiqVczvJiTkfuRq9ELcZdgp4cP5220P9Y8LUNA4GzhXVlk60X
 Cr5x3v9dcz1FjtWIbU4fdlOC0HmdUSPiZt3r9Yb2vSoPXc1HQRNkBUneiW0uqyjgOEb3
 WF+Fcqz5G45jHCrKf5GfHLNGfYuwGv8NgYdhvflB9oL8uGLDQ5FXHpXTLhTHytnZ7haW
 gm4URHHUx4rIisEWw/5hN4Lrcl6xvZQnNbfdgGplSZQjz95IC/4rFAN9MbTW55gWc5SL Ig== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tt5v82qy8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 02:19:42 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J2Jep2027375
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 02:19:40 GMT
Received: from hu-c-gdjako-lv.qualcomm.com (10.49.16.6) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 18 Oct 2023 19:19:40 -0700
From: Georgi Djakov <quic_c_gdjako@quicinc.com>
To: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <will@kernel.org>, <robin.murphy@arm.com>,
        <joro@8bytes.org>
CC: <devicetree@vger.kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <linux-arm-kernel@lists.infradead.org>,
        <iommu@lists.linux.dev>, <linux-kernel@vger.kernel.org>,
        <linux-arm-msm@vger.kernel.org>, <quic_cgoldswo@quicinc.com>,
        <quic_sukadev@quicinc.com>, <quic_pdaly@quicinc.com>,
        <quic_sudaraja@quicinc.com>, <djakov@kernel.org>
Subject: [PATCH 1/6] dt-bindings: iommu: Add Translation Buffer Unit bindings
Date: Wed, 18 Oct 2023 19:19:18 -0700
Message-ID: <20231019021923.13939-2-quic_c_gdjako@quicinc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231019021923.13939-1-quic_c_gdjako@quicinc.com>
References: <20231019021923.13939-1-quic_c_gdjako@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: Ajg6GGsAZFcHJohQqndeTSociNDKdG33
X-Proofpoint-ORIG-GUID: Ajg6GGsAZFcHJohQqndeTSociNDKdG33
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-19_02,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 impostorscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 spamscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310190017

The "apps_smmu" on the Qualcomm sdm845 platform is an implementation
of the ARM SMMU-500, that consists of a single TCU (Translation Control
Unit) and multiple TBUs (Translation Buffer Units). The TCU is already
being described in the ARM SMMU DT schema. Add also bindings for the
TBUs so that we can describe their properties.

In this DT schema, the TBUs are modelled as a child devices of the TCU
and each of them is described with it's own resources such as clocks,
power domains, interconnects etc.

Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
---
 .../devicetree/bindings/iommu/arm,smmu.yaml   | 13 ++++
 .../bindings/iommu/qcom,qsmmuv500-tbu.yaml    | 67 +++++++++++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index cf29ab10501c..afc323b4bbc5 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -230,6 +230,19 @@ properties:
       enabled for any given device.
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  '#address-cells':
+    const: 2
+
+  '#size-cells':
+    const: 2
+
+  ranges: true
+
+patternProperties:
+  "^tbu@[0-9a-f]+$":
+    $ref: qcom,qsmmuv500-tbu.yaml
+    description: The SMMU may include Translation Buffer Units (TBU) as subnodes
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml b/Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml
new file mode 100644
index 000000000000..4baba7397e90
--- /dev/null
+++ b/Documentation/devicetree/bindings/iommu/qcom,qsmmuv500-tbu.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/iommu/qcom,qsmmuv500-tbu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm TBU (Translation Buffer Unit)
+
+maintainers:
+  - Georgi Djakov <quic_c_gdjako@quicinc.com>
+
+description:
+  TBU nodes represent Translation Buffer Units in an ARM SMMU. Each TBU node
+  should be a child node of the SMMU in the device tree.
+
+properties:
+  compatible:
+    enum:
+      - qcom,qsmmuv500-tbu
+
+  reg:
+    items:
+      - description: Address and size of the TBU's register space.
+
+  reg-names:
+    items:
+      - const: base
+
+  clocks:
+    maxItems: 1
+
+  interconnects:
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  qcom,stream-id-range:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: Stream ID range (address and size) that is assigned by the TBU
+
+required:
+  - compatible
+  - reg
+  - interconnects
+  - qcom,stream-id-range
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
+    #include <dt-bindings/interconnect/qcom,sdm845.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+
+    tbu@150e1000 {
+        compatible = "qcom,qsmmuv500-tbu";
+        reg = <0x150e1000 0x1000>;
+        reg-names = "base";
+        clocks = <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>;
+        power-domains = <&gcc HLOS1_VOTE_AGGRE_NOC_MMU_PCIE_TBU_GDSC>;
+        interconnects = <&system_noc MASTER_GNOC_SNOC 0 &config_noc SLAVE_IMEM_CFG 0>;
+        qcom,stream-id-range = <0x1c00 0x400>;
+    };
+
+...

