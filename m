Return-Path: <devicetree+bounces-192987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A02CAF8B9F
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:30:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8646763552
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B18A72FD876;
	Fri,  4 Jul 2025 08:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mVkdKptF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84C02FD86B
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616955; cv=none; b=QXeSJcfOlY+XhfHuIRnU4pbx0UWvKHxRiTrd5zlfcvircmpzleiQ/Xc8Bkuc20x53PSKWpIFqoPM45M4ckI30w6/aFjTWPiwliAqJGa5OTHnuIgNsksplBRSC2K4z3D/1l1XyoI1pGWK9u9FKONoDrAq8SG319zpSMmsHFIoUg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616955; c=relaxed/simple;
	bh=6+Bv44m2zitJH/KcDYM7n+Rvlzk/pbMTpTxGgTBc9wY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=En6bsZwEPEk5/3WzoZrDran0ObvYGOXJnV5pEoSNaTKIq+hyBNaa0DX9SsfUNPqIEAW2S6728CYy3bc158mZjZIdzqASTGapJA7EB7x4Q6Xi/0IJ0KvGMiUY8wVZhjkhQFKPCaKc/6eYn/P01qJ9ngXnInlWFDzkYbX+9IT5qZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mVkdKptF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56472PqI032116
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 08:15:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zvi7uAz9veu
	F8Vn0WyT7F+5vGidTX+FCZvsPrUoeiQk=; b=mVkdKptF4GNtWKT3qeb6YHpa/Y/
	IbeGYgOdn50xpIDmR8Iy3eXr7fm4MBXKoeF8xiilObmNUQdSoU/eKH9mpFSWxLso
	jkjp33EP+j7ilzvj1rDglv3bFasHxB8Nbd1ushIzVY4/I+3Y9a9e1+k0ounav5AA
	6OT0SJnH7rpLk1qiNAQ4KcT7ly7S3L9tvLuYNLbLbXchWTKZu8+DdOZVr13lrqOZ
	0vLxP7FuLVxgnUGbx+qzYcDFlDNlu2BIwsKrAiB8YOrzvUkPtmoqpUO2drXUlpRs
	dWHsdWE7TKv4ZtC4eZS4LtFEe2PcNzpJiPl6nfy7b/aHM8TacPR5DDT0TRw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j63kkdds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:15:53 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a58cd9b142so14009171cf.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:15:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751616952; x=1752221752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zvi7uAz9veuF8Vn0WyT7F+5vGidTX+FCZvsPrUoeiQk=;
        b=SuvSi9RiKzijleiyhJMSkh4zMxSTE5Y/lCdb9rb8sV82zk1DqNM4XZtSF3JlO7Jc9G
         YPXgc33dDLn65Ff7b54DaadNiX/vIVp3ni3uY7ahPQmwonIBLdTNhUwBURNYbUukrt8t
         8Bcm6ikwOvAQoe5qXgs8Jn0QEtY/RdK7RI/lRe4leWAEem162h76CE4m9eKxowQBrojO
         PLW+FM2Jzyi3J7tjJ5VKijBl6gvf+QPDmuYpQ263ARZcnj+EHWhejFU24t8lMHLCW4U5
         E/Es5Piq5OyQrYi4uTzv8jsbeTcN47Z925fkwoZ+iBS4Q89O3oKu22RjKLyxd8qZNoXG
         odfw==
X-Forwarded-Encrypted: i=1; AJvYcCXSyaHz+5QD3jtQCLQOAMatSrS+WKeEhlDcxZfd/iCXEJu/zeZSS3xaXp2sYNFEfjxQXvZ4qNzKFtEy@vger.kernel.org
X-Gm-Message-State: AOJu0YyeLx4K0JBJDORgG4i/IL9umUaQrAGCrnfkkxQNR1oEhdwecBdy
	XD9+B1t7sKQHK7K30GUS+gJ+LIWRHdjGdAvg4TM0G4o4u/yQFVvfVEJbyVD5+dIcgLRnD+xRHXV
	sapcvXX1qXH5+ZqRWOrYR8mZK9XLE8UhaujyAF03jkfn6LVlG/neBl/8aBZtmbfHG
X-Gm-Gg: ASbGnctWKqv0JwseQUIyF0uVflWIeXyaceW6XH7HHTXUes/p6+hEIogvf3C8eOKe+UC
	oN2C3JdPHe4/k3ohMTB3JN0XQV6RpQJxlJ/0tzzIP3Mxr/QGErLHSYN3lwKK9QyWmHfsYaXd1Md
	NyIeiKfU4IvcCOwyjoPE2zqGD6sztG1W7xZ5SAXRGkJF5Cy6Vw3LXMFtxp080GYoPFkDImd96hW
	6UAz5olVVZ8f1qM2q6TYsLI7g/nR0y0wj831m9TnVFg5V6PB3aXo49LWUjrjai8PUd+CzmxNLWS
	qi4EbY6qLFafsLr+cyi0DLoblx06VzlsGW9CW+zKiKzb7xeo0x9HS8Kxsg==
X-Received: by 2002:a05:620a:8c0c:b0:7d3:d732:8170 with SMTP id af79cd13be357-7d5ddc4b21fmr147035985a.26.1751616951545;
        Fri, 04 Jul 2025 01:15:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVO+1ZpPwjbt7q3JMXNRaZMMwhir4wgcs6KV2dHlf4t3VWEjF2yiLK+uimNUfNXz87++DaYg==
X-Received: by 2002:a05:620a:8c0c:b0:7d3:d732:8170 with SMTP id af79cd13be357-7d5ddc4b21fmr147033485a.26.1751616951050;
        Fri, 04 Jul 2025 01:15:51 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:e0ed:c3b0:c674:7c4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a9989fcesm47991835e9.16.2025.07.04.01.15.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 01:15:50 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v5 5/6] media: dt-bindings: Add qcom,qcm2290-camss
Date: Fri,  4 Jul 2025 10:15:36 +0200
Message-Id: <20250704081537.1716613-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
References: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZKfXmW7b c=1 sm=1 tr=0 ts=68678db9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=JlZtY4oE0OGdv2NQSfYA:9
 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA2NCBTYWx0ZWRfX526JnCruBF5o
 uc6uiP1nQ0En8IQ6QsOje7RYD9Y8zBejXks2rMZZHd91tuFEa49jd7gqEWJjCgcvXgV/2h3WtD8
 IxIyWhWDNYrVdkQ9kVDui//KVp9KRQRrCryenAUU9R46A9kKhivkTOzT/6bry3PZLyBs43ls2Ua
 SkfzMmSpXqyJBfYSEDS6K+T4xijeJn14D8XUFXsIZM/UWqN3OYkcdrzVSmFlZ/0/j3/gfBNz5JW
 GED2r7FQdREN54Lu8WRl6334PqD8gjcjCMakgcoxsYQnP7vwFZcFvG7SMizX1VpkVgPF9bNktZU
 Nz1f/bejHtXUyu4HCuvprRVm3iYJGfO8Wojb4dKQRQCj62QAhcEQ/uXmVQ1hBbS53ZNbdcpwGX5
 g5wCzlR+QccMgvd3ES2zdrtrZYX/SlFmTTIPLRPEMVnHLuwcc3J3UDtG8WXUthmnuRk9x8y4
X-Proofpoint-ORIG-GUID: gqmljAB5Szyy6AXnOpyY-APzB0QCImP6
X-Proofpoint-GUID: gqmljAB5Szyy6AXnOpyY-APzB0QCImP6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040064

Add bindings for qcom,qcm2290-camss in order to support the camera
subsystem found in the Qualcomm Robotics RB1 Platform (QRB2210).

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 .../bindings/media/qcom,qcm2290-camss.yaml    | 243 ++++++++++++++++++
 1 file changed, 243 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
new file mode 100644
index 000000000000..2824acd49d89
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
+  vdd-csiphy-1p2-supply:
+    description:
+      Phandle to a 1.2V regulator supply to CSI PHYs.
+
+  vdd-csiphy-1p8-supply:
+    description:
+      Phandle to 1.8V regulator supply to CSI PHYs pll block.
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
+  - vdd-csiphy-1p2-supply
+  - vdd-csiphy-1p8-supply
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
+            vdd-csiphy-1p2-supply = <&pm4125_l5>;
+            vdd-csiphy-1p8-supply = <&pm4125_l13>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+            };
+        };
+    };
-- 
2.34.1


