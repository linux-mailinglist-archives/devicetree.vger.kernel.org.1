Return-Path: <devicetree+bounces-168577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03694A93862
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A2641B643CC
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:12:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45B3A15CD74;
	Fri, 18 Apr 2025 14:12:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CSsUAksa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79313189915
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744985529; cv=none; b=dfleI5stXOJDjoIIEQuJaGyYhR0RWn3z+WoVPCg+KT/UcNOY++n/WK+hVhRKBukn5mvAgqaAjDFE3XVsK4lw4HkqMJ+lAsPirsZHzI1AUBECWX+tZy238Yat1hzw37hMCoX8FQiNe0m9U8qEP+pEAE5HyEwhwyKPWN9Y6Y4L/Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744985529; c=relaxed/simple;
	bh=RU6F16UzUltqBZThb1ZaQaj8sKEF5oUODiHbmE6L394=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nqZWIEbBoWeOTqU3gDViqXN1OF6UHpL2nTEwSvtV8560tDMuexT5Z8dV6KdEShd1121KVQDqn6e81E/yfS2K00hDpS7/ohf2StjbmOvheXdMhBmWhPclg15T6Zy7lhOv3/hE7A0kGlKGiab7R1zeD1vadhwUierKNivqzLLJlqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CSsUAksa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53I2WkeU029071
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=auiZ1TdX+vA
	WT8qcUzAplyGZZLdhSByER51XQxabkFU=; b=CSsUAksarEkakFY4zqoLs+6DpcM
	1GhAWiSD6qvmCb0361giwEl2FseQgI089/iGj3fwq9Daw4i32GKa7W8A596YnH2K
	yVXi27YOSj2AQ+mlKH+tMKAcnu4hPkxAw6HiOCj0HxCF3Li711Jf8J3e2j+fcdXA
	JaOwYmi+1NEjCuVfxgWzViBQVxtrFl2lKigZpRyd9IpBLBfORXAwp9AswBJNEkte
	Ih8W2C1cK6Q3q+7DLTAuq9y/vllPDYkKFuvg4VT5p00dU59Pu0yGpR6Tyxmy8W2U
	RdNqejUBPDmnSwOXZ00QJ+BGNjdnVsOIZybzZHo9U7ifT4Oy3RcHI7EtCZQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj9j3jw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:12:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0b0cf53f3so270301985a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:12:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744985525; x=1745590325;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=auiZ1TdX+vAWT8qcUzAplyGZZLdhSByER51XQxabkFU=;
        b=YtyrF5nu1OrVYbii7afjBNTu3Svo37esVWo9CTf00ltNiHf4DdG7DihgOjPbccl/VM
         rYETwy3/7aAcyyb1DntuXkbbNkeS/HoMfMVpG8nOLjSU26XXDyykw9RuRuxKkVn40QRP
         zp90m43AYcjX+jTZMTMa7A9J2gmi7kcUNroGwhYC6rRZADVrwF143oxP5Pxe4hvTnFJW
         Jk/FLp5EVHznfFip3PmbMPiHv5GpAHstLdxHbHMQfVq4khf92wz0ommfX93+GYfOm8RO
         ooBlTS8yjS6/Cz3FUU2LEQwGF6riNd3YLoT/EI3XQvHDQ0vlIHPvXJuy+Wux7Dgp0apu
         ODSA==
X-Forwarded-Encrypted: i=1; AJvYcCXC8MK8EDGOqBmy5NcsnkbECTxZ+fL7dUHQ48aY07pTGniqb1tfyBbKpv8XbTLsiyqQK9lsF9gJeehU@vger.kernel.org
X-Gm-Message-State: AOJu0YzDWeimu3MMHNwAU8XDnfbckSHUL4C1Jbn4obsbsnRM+2+6JsZW
	BB0Hrw+Jwfk1AfN+2DGHpRuPIOXytISfkNFls3E8sU/VD9wOjfYWRIUYlY0wPNtTh+bWVQWWtEK
	ZOhVVWQ4Kk41PMMZy9XeH5a3l2VVbvhAcEfpLtV00Zf+2ypw8ialMQZhAXTZ0
X-Gm-Gg: ASbGnctouiNrAUuBkb3zWeo2436yg2T+ULc0c5h74TAbKdC3i+keSC+pE4YFNdSgjT2
	eXxNJ78KGP7bPKAGx9T4BN1MghD43thzLWlfEv98/maHBfB0iENCKSZuyNvs8B2eVmzWHpzaDbL
	QZrThcTOlzBLElK8yNccT4UFkKCIL7W6pQ3F9/Z0calOiajUx5PA1JS0yjVJ/4Bwf4etqHg5953
	3VdukOwHo5QwRt1sNxykNTJqWvyi61dxCE8peo0/9B/JWqukIv6ZCTuokScuQbsRg/hQRcnDm5s
	MpFmw06EOcSq5iqVQ7jKMVU0vateYlmdVsuyXhhEIt+2ooU=
X-Received: by 2002:a05:620a:4444:b0:7c5:4eee:5409 with SMTP id af79cd13be357-7c92804d1b1mr432716385a.48.1744985525343;
        Fri, 18 Apr 2025 07:12:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmHK4539lotKEkp6aw4gcaJOY+X4dT+OcYeGMcfUwZF62FpD4y6QIG6qGr75Ze4bVXYhxAJw==
X-Received: by 2002:a05:620a:4444:b0:7c5:4eee:5409 with SMTP id af79cd13be357-7c92804d1b1mr432711985a.48.1744985524870;
        Fri, 18 Apr 2025 07:12:04 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:2dd5:219d:5008:1bec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4404352a5f0sm81172835e9.1.2025.04.18.07.12.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:12:04 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 5/6] media: dt-bindings: media: camss: Add qcom,qcm2290-camss binding
Date: Fri, 18 Apr 2025 16:11:46 +0200
Message-Id: <20250418141147.205179-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
References: <20250418141147.205179-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: wFnDDzLLmHFLU9UTJpu-3V5RP40NG0TJ
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=68025db6 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=JlZtY4oE0OGdv2NQSfYA:9 a=NFOGd7dJGGMPyQGDc5-O:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: wFnDDzLLmHFLU9UTJpu-3V5RP40NG0TJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-18_05,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504180105

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


