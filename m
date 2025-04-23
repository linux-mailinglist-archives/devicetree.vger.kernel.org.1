Return-Path: <devicetree+bounces-169722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A49DDA9807D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:21:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A2B5194127F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 07:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6806B268684;
	Wed, 23 Apr 2025 07:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OMICrN8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90EB25F96F
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745392865; cv=none; b=uZPvOVVRb+Zb54YwYW+ycIcFGEHDFQAS76rbeq2m18ZwDhC/yNCqUN9UvQc+tohJyeFNhDcyJkXlEuElCJqUTQ1A+rbY5b8Dabaqzu394EXTNlg2uvGa3OaS7A8fVkWrA7EAfyag2OV3FSYmuroISRVcHPYTIGDsAnKIZegrzUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745392865; c=relaxed/simple;
	bh=RU6F16UzUltqBZThb1ZaQaj8sKEF5oUODiHbmE6L394=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XNdXOgzFqVn1a6agyP0P3n6nHlndtPbPPUfK+W72GDK8S8s//W/X5tCZR5+sjdVHblnEwMG/Nlj7fdtF1kn7+7QA0qJ4/MY2hC5yBJ2prSybTIwTP7daKXxs1uFFB/kvolYDmL9CIhgKuXiaG4e+Pi6bVsSvE8zgLe4v5QYzTxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OMICrN8J; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53N0iZfe024369
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:21:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=auiZ1TdX+vA
	WT8qcUzAplyGZZLdhSByER51XQxabkFU=; b=OMICrN8Ja1vL4+HiKygUdhWRITq
	7hcHKEoUVYZ5Dqi7Zvvi6FAY3lZSdLCIpF6AoFyK0IIlPENHnleM2RGAx5lAMEu0
	omwQy5RNjClJmAzzEZOlUerU+RivLF4oEeiDFMhdvhN1Az9+Pg3DKVvRsyoYDhoB
	Eczdm4Avmsbg/TJfg0FsrwwEHJqN0CMMUsHPG+OqrPTTGWQlaqIiQ+NIoKTs/eoH
	yaiqvgDceoM+RP9SlWZ+ptQOCKcVALcgO3PRkm62/Vqmb+j7MbxY1AL6Gs38JcE0
	e+xDKqexVq+9vlCuz8zNwQ8s+QpHe7k7pO8G5J8XjXPdcn1UmjMVsvPS1tQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh397m6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:21:02 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5c77aff55so1107205985a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 00:21:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745392861; x=1745997661;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=auiZ1TdX+vAWT8qcUzAplyGZZLdhSByER51XQxabkFU=;
        b=GoRJImH6+RhjVRVIZyTt29blJzx+cSpm7DfKbhumnxj3nqzfg1Mq4z3ocFp/OxB6Py
         MnAh1/ii1LSwxUzE5xxiyCboGi5yIzGuOQovBb7TvHggMgGgeh4LLW1u3kFpzBls6AUt
         JuqImOqfNAJD/nRFCzcQfqjtIdMR3L8HzBJuZVTe0d4nqDUx/87R5h17rwu+1lF37Wje
         F74uXYaa+R7M4B8CE5a7ibuWWmBFl9J4p2MgPp7o3CHZzEGHn9rpMgDCmkmZHTfEz947
         VGt9fs9oECatXDTERVQ7IYY/oq7Wxw/g6LIzzLhZL3QFj91oKFEdC2BZpT0M25Eylm0a
         LkDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY90QA2Fg332mempVS45TE4T51Jcj1tTKfZFdeRWjidy/ze0ZDS7YIKIrCg4zIC7ZKTG90u3pxivdw@vger.kernel.org
X-Gm-Message-State: AOJu0YwikQcpw5bj0URDmibpUKp9NOwleVDovvnq8dB+vVVWCKlDNnbS
	MYaBmHjyvlAYTSe95ddWtCVZMvmCVhJ1iHQ6ohwMIsBgNV5Gr99wb5dE5aIVdzEuqXrjPlSbM7H
	/qyLI8AhjT1QiQCRMOTO/Wyp4EJLTqbVunv06WWnloYEh5VTMGNhGUK0edM52
X-Gm-Gg: ASbGnctOfYJivn68M9CdqQM5MDButRSC2aL5wZYWf6lA/qXuGQju2s9fPcPyELDVSQi
	siTI9PRCiiev5RbCyITEtXUZ7mIWftOB38K2feN8VNaBcLhUU4hkw3JH4O8IBxwJFJsMtGI1aXD
	+1slwyIrmYEq6dKHvwIWk3Bc+XE4r035Y7heRliYU8l0LYlUgpmVfLtdctux1veIrBLN+NxJHUM
	ozilq7Be9xERaNVa+JpWwOwPzSPX6NW17ZwBl7K1I7cniQQrMbzUbPz+AEvfpmT9Di+QzQGw4dj
	YOTuGrYU2mf/nTULygZUbtY2DDk7S7slWcAs7UUnAJnVQlE=
X-Received: by 2002:a05:620a:1aa4:b0:7c3:d711:6ffb with SMTP id af79cd13be357-7c928015e35mr2752948185a.41.1745392861405;
        Wed, 23 Apr 2025 00:21:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4FFJHlSKVeR1xsuRxh1VkScuReF7tiKmbUivJjTZoisCTfZIeYyjYYdshNpcOokXdccBpzw==
X-Received: by 2002:a05:620a:1aa4:b0:7c3:d711:6ffb with SMTP id af79cd13be357-7c928015e35mr2752946185a.41.1745392860981;
        Wed, 23 Apr 2025 00:21:00 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:10e3:ecaa:2fb2:d23a])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec42af6sm757138366b.43.2025.04.23.00.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 00:21:00 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v4 5/6] media: dt-bindings: Add qcom,qcm2290-camss
Date: Wed, 23 Apr 2025 09:20:43 +0200
Message-Id: <20250423072044.234024-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
References: <20250423072044.234024-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: MH8RrGSKIWrbduBi5xcxO4b6Koz5x9Ba
X-Proofpoint-GUID: MH8RrGSKIWrbduBi5xcxO4b6Koz5x9Ba
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA0OCBTYWx0ZWRfXx3qUR9ZZgr5M PpK2hD/FeZhZrsFSG/VNQ1xO28MfYYWSfnbht9kZXw8nGa5TDl5EX9n/njAVRf21nlRATd5p5WC v7L92QJ4CWgPPVqaVr4fDVSjzTGdfi6IZRVRVBbWes0NguGpKNvdV+uvD04msQ+0gplUtLl2zhI
 yVCv5q0mC+SN7Rp7XCydW3RRntX1gdpFHilsqtpp2ewaGrirckHVkW7KYKgSEhGkXBPndol3etk d0s517ZX+PzkpTZQnnoKm3IhiZBLxNfw/EvVjB31QVU5I+6/EPWOMkEGSy/4Q53efA3M3MdbPHl AlMdefSBHn4eFzv/lx7Rca+RdCuZ2YgudoOgCiaRU89Dk7BN6I4mPgDSDl08UDR7YGBVcvbKl7B
 LjPTOD+8n3DZuTPV8dFcB+ZUF5DDyyfjoQDO8VkGN34oK5FziwYitPpPZWj9TFE/7/A0pgQi
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=680894de cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=JlZtY4oE0OGdv2NQSfYA:9 a=PEH46H7Ffwr30OY-TuGO:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-23_05,2025-04-22_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230048

Add bindings for qcom,qcm2290-camss in order to support the camera
subsystem found in the Qualcomm Robotics RB1 Platform (QRB2210).

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 .../bindings/media/qcom,qcm2290-camss.yaml    | 243 ++++++++++++++++++
 1 file changed, 243 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
new file mode 100644
index 000000000000..fa870872f80b
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
@@ -0,0 +1,243 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,qcm2290-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCM2290 Camera Subsystem (CAMSS)
+
+maintainers:
+  - Loic Poulain <loic.poulain@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,qcm2290-camss
+
+  reg:
+    maxItems: 9
+
+  reg-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csitpg0
+      - const: csitpg1
+      - const: top
+      - const: vfe0
+      - const: vfe1
+
+  clocks:
+    maxItems: 15
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: axi
+      - const: camnoc_nrt_axi
+      - const: camnoc_rt_axi
+      - const: csi0
+      - const: csi1
+      - const: csiphy0
+      - const: csiphy0_timer
+      - const: csiphy1
+      - const: csiphy1_timer
+      - const: top_ahb
+      - const: vfe0
+      - const: vfe0_cphy_rx
+      - const: vfe1
+      - const: vfe1_cphy_rx
+
+  interrupts:
+    maxItems: 8
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csitpg0
+      - const: csitpg1
+      - const: vfe0
+      - const: vfe1
+
+  interconnects:
+    maxItems: 3
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+      - const: sf_mnoc
+
+  iommus:
+    maxItems: 4
+
+  power-domains:
+    items:
+      - description: GDSC CAMSS Block, Global Distributed Switch Controller.
+
+  vdda-csiphy-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSI PHYs.
+
+  vdda-pll-1p8-supply:
+    description:
+      Phandle to 1.8V regulator supply to CAMSS refclk pll block.
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    description:
+      CSI input ports.
+
+    patternProperties:
+      "^port@[0-3]+$":
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
+
+        description:
+          Input port for receiving CSI data from a CSIPHY.
+
+        properties:
+          endpoint:
+            $ref: video-interfaces.yaml#
+            unevaluatedProperties: false
+
+            properties:
+              data-lanes:
+                minItems: 1
+                maxItems: 4
+
+            required:
+              - data-lanes
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - interconnects
+  - interconnect-names
+  - iommus
+  - power-domains
+  - vdda-csiphy-1p2-supply
+  - vdda-pll-1p8-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+    #include <dt-bindings/interconnect/qcom,rpm-icc.h>
+    #include <dt-bindings/interconnect/qcom,qcm2290.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        camss: camss@5c6e000 {
+            compatible = "qcom,qcm2290-camss";
+
+            reg = <0x0 0x5c6e000 0x0 0x1000>,
+                  <0x0 0x5c75000 0x0 0x1000>,
+                  <0x0 0x5c52000 0x0 0x1000>,
+                  <0x0 0x5c53000 0x0 0x1000>,
+                  <0x0 0x5c66000 0x0 0x400>,
+                  <0x0 0x5c68000 0x0 0x400>,
+                  <0x0 0x5c11000 0x0 0x1000>,
+                  <0x0 0x5c6f000 0x0 0x4000>,
+                  <0x0 0x5c76000 0x0 0x4000>;
+            reg-names = "csid0",
+                        "csid1",
+                        "csiphy0",
+                        "csiphy1",
+                        "csitpg0",
+                        "csitpg1",
+                        "top",
+                        "vfe0",
+                        "vfe1";
+
+            clocks = <&gcc GCC_CAMERA_AHB_CLK>,
+                     <&gcc GCC_CAMSS_AXI_CLK>,
+                     <&gcc GCC_CAMSS_NRT_AXI_CLK>,
+                     <&gcc GCC_CAMSS_RT_AXI_CLK>,
+                     <&gcc GCC_CAMSS_TFE_0_CSID_CLK>,
+                     <&gcc GCC_CAMSS_TFE_1_CSID_CLK>,
+                     <&gcc GCC_CAMSS_CPHY_0_CLK>,
+                     <&gcc GCC_CAMSS_CSI0PHYTIMER_CLK>,
+                     <&gcc GCC_CAMSS_CPHY_1_CLK>,
+                     <&gcc GCC_CAMSS_CSI1PHYTIMER_CLK>,
+                     <&gcc GCC_CAMSS_TOP_AHB_CLK>,
+                     <&gcc GCC_CAMSS_TFE_0_CLK>,
+                     <&gcc GCC_CAMSS_TFE_0_CPHY_RX_CLK>,
+                     <&gcc GCC_CAMSS_TFE_1_CLK>,
+                     <&gcc GCC_CAMSS_TFE_1_CPHY_RX_CLK>;
+            clock-names = "ahb",
+                          "axi",
+                          "camnoc_nrt_axi",
+                          "camnoc_rt_axi",
+                          "csi0",
+                          "csi1",
+                          "csiphy0",
+                          "csiphy0_timer",
+                          "csiphy1",
+                          "csiphy1_timer",
+                          "top_ahb",
+                          "vfe0",
+                          "vfe0_cphy_rx",
+                          "vfe1",
+                          "vfe1_cphy_rx";
+
+            interrupts = <GIC_SPI 210 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 212 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 72 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 73 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 309 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 310 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 211 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 213 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csiphy0",
+                              "csiphy1",
+                              "csitpg0",
+                              "csitpg1",
+                              "vfe0",
+                              "vfe1";
+
+            interconnects = <&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
+                             &config_noc SLAVE_CAMERA_CFG RPM_ACTIVE_TAG>,
+                            <&mmrt_virt MASTER_CAMNOC_HF RPM_ALWAYS_TAG
+                             &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
+                            <&mmnrt_virt MASTER_CAMNOC_SF RPM_ALWAYS_TAG
+                             &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc",
+                                 "sf_mnoc";
+
+            iommus = <&apps_smmu 0x400 0x0>,
+                     <&apps_smmu 0x800 0x0>,
+                     <&apps_smmu 0x820 0x0>,
+                     <&apps_smmu 0x840 0x0>;
+
+            power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+
+            vdda-csiphy-1p2-supply = <&pm4125_l5>;
+            vdda-pll-1p8-supply = <&pm4125_l13>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+            };
+        };
+    };
-- 
2.34.1


