Return-Path: <devicetree+bounces-193964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4024FAFC5C4
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:33:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BF76D1653A4
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A20D2BE7BB;
	Tue,  8 Jul 2025 08:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NsDS93f/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8A362BE7D6
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 08:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751963560; cv=none; b=XeSks30dOLPMcmlDRDB2KfwjUEv/B9LSjYyNMogwJuowynqNSOhKsVMCYz6yVQtI3dBdx6MOPWeKosG/ZhaQ2xdrojqc1YXdKDuTkXfTAPFCYh7FbIY4nqr/lEiSJ8vv2/jFtEiZVDJRMQdYhE2+IutbrxiDVj2pPwsHNfluaic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751963560; c=relaxed/simple;
	bh=1wWdWQSOjPNK+SuoIAGtLW2+wfxJL2jM0FeagMEcwvs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WKiOW57H9FlbDAnFuB6RTVlCVaWXi82hKZHkUycFEyozKy7kLiNgGVvBOnBto6bycq9RK7vaj0NIaLyF2r1I5MZvC8k0VZBKC7KhkOxK+ZtU/i4rgrz3Jukm0uJiuwMcX4j7ToA/KiSE1jLUQd4FjpR1GkWNNgdoVRJcUaYYbSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NsDS93f/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5680fWn3020749
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 08:32:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=sTBHHEVxdFn
	xaQanGips7Ut9Ra8pP1LsaHToR9Dj4Jw=; b=NsDS93f/LsNQ/k7knJSP2ViEptX
	syTjf4zsmpVpxQTVoUSbIXFhPq5cYeFL+HUw8kjLQm9iXd+kmreiOVsw2khgwQzG
	EeSXMgIM23DkGd+2cKDbIkSlHcEEgZo8hdYPsNX5yhmxMV7hfLBeV9ek1dM9EJNn
	y69UuyYwJka9CWhsaIuJu3a/YK1drG91xfPsD/e2/UkoFP8FbcvsAEDt1f+pUpLi
	jej12u78UluEEjVdDhirTBgpsDRjdK25HLmEg1TgC8OnWYZoR/UB+UztnGHLtrmy
	xHEEu2jLefjkjuG0nHCEbW5LHnifzT8BGPtT4OOMJCFQUF5hjdr9DLHhd0A==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pv4xvc7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 08:32:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5bb68b386so1147913685a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 01:32:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751963557; x=1752568357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sTBHHEVxdFnxaQanGips7Ut9Ra8pP1LsaHToR9Dj4Jw=;
        b=snZ3iINkXXD5PuTWj61QALir8ss7MgKjVjmuNWO16/T7/lkoXG1BScJwA3wcZlYGoR
         MPa+3Il0SAUB/IP0mjiU5GP3NMtZT9Cv76nsttKAiKGO1Eszr0MQOUY4w4RuQrB71Bc1
         wjRUkhzsTDwco1T0tNXUUuqFINHEc39JeAb7e0bsHLQWWbh07oK0r8zv4bs5wTwF9HLa
         WRlI2EwvvoNFbcBx83WTPgggBV/Cp7I7i9cwoVcQ1wc188L1q4852kh+0AYHyRt0/n9k
         WdVYv/EzfaksVwXH2V2LelIp19oG6+ECIse0O7pTMz32Q/EUyMkbP1ScDcg2yYFopiuc
         x+dw==
X-Forwarded-Encrypted: i=1; AJvYcCU+LbCZ4dsPXnASIuPyTNLsv8h3yR/p6SSkwdEb7Ur4zjemf/qdefQ82Uc/7BaNA/Rc4xsMsSF2tnN2@vger.kernel.org
X-Gm-Message-State: AOJu0YzRtyTyE/tQLiFVyCh1aAdwTK45Exze1KeI+0Ww+S8CVIrAOegZ
	nBIlrAJN+vHND6YMpejLx3OexzfntpD+TyLfXmP9wuSmCvSjPQYbE6R6z/kBs9YHGACJGyBxfJB
	X+G7HO2d7UCFQTsneMjVSWglhn1oAR9Y46oUM1+I4iUVhMIJNKjEeduN2vGJ4U/0l
X-Gm-Gg: ASbGncs0iOEM7tHsmjB6zkr4TbrRJeOQXJYplrgSy+O2uklH6QeuLxOg7qS3efYnt80
	Irj8zudLakPi7loM9Iq/Yac8anii/A9oWIq1rcTmX6JdWXM4T5pF3EixG0cCzvLxQYrfBktzmq6
	66laa9JHcaB5pyJGMo1oCylxBfY6NuXXehY+eazK3j1eEaC1xRtT86HX276JRccaT5s2ZMI3DqU
	5aHhZ09mQASNmsbRwG72mp6YeBX8ScNN9TlYhJinZpoulNU10A4PSpCdYTP02ylFk0vCCN7A72P
	aPTc/ObEkBtSxYmhuLtNdAKJQt0ZX6vERYmiys1qcNzqpGp004q8CBS4aQ==
X-Received: by 2002:a05:620a:171e:b0:7d7:22:25b4 with SMTP id af79cd13be357-7d9e9f8a12emr403963185a.13.1751963556762;
        Tue, 08 Jul 2025 01:32:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4BQRN+GHJOZlMhyHf6Tf7ESLERrIXNRbLj2NBVYDR4tXCHJjnSW/j+xPgNY8cMvxBThnMzA==
X-Received: by 2002:a05:620a:171e:b0:7d7:22:25b4 with SMTP id af79cd13be357-7d9e9f8a12emr403958985a.13.1751963556272;
        Tue, 08 Jul 2025 01:32:36 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:953b:906f:73bc:cc41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0959sm12315812f8f.27.2025.07.08.01.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 01:32:35 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v6 5/6] media: dt-bindings: Add qcom,qcm2290-camss
Date: Tue,  8 Jul 2025 10:32:21 +0200
Message-Id: <20250708083222.1020-6-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250708083222.1020-1-loic.poulain@oss.qualcomm.com>
References: <20250708083222.1020-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA2OCBTYWx0ZWRfX68ysGGxR77en
 4TZNUgz7EJ0snGGr5shTvjyN8TkJuUIL+X2X/Qzr6JqBhqdeXosSRrAoVjXqmQVDNNjNytNswQV
 fjUJjI48n52dsuPnUp3rQ33PPIMUmA+B0FDMl6iDST/Qkim0tuGK1GNPsX+2FQjLZbTN//ppeGH
 3aLJXXdHU7Cz93jfIcE+uvy/gnGgu3aOrMVg0HI8+gI9PHnpx6rF0x+UArjkuRlge6AjfBDZ046
 nhZsqxfLvmB8ZZK8c24r9Nuytu7gRMxKdJuigxKxuop/6KOzOMLXO6oszjMSaGrXjdcLZAc51m4
 3oSGtz4Zm+M6cqlwb5Et9ilgWuWa+HlYS/4EzwVgMqTWZNvufNetlBYlthPWGlyJDnwiw9hZTeC
 5mjw2kNt/owIW7owryCFzpALYZavWDfssO2Bdw1gHgnoVgjFmTlrIlSrucrsf0gCEs+wy8En
X-Proofpoint-ORIG-GUID: N39W7DiVK8TBW17J1Kg51XAvSuedx0SB
X-Authority-Analysis: v=2.4 cv=DNCP4zNb c=1 sm=1 tr=0 ts=686cd7a5 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=JlZtY4oE0OGdv2NQSfYA:9
 a=PEH46H7Ffwr30OY-TuGO:22 a=sptkURWiP4Gy88Gu7hUp:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: N39W7DiVK8TBW17J1Kg51XAvSuedx0SB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_02,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 spamscore=0 clxscore=1015 phishscore=0
 malwarescore=0 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507080068

Add bindings for qcom,qcm2290-camss in order to support the camera
subsystem found in the Qualcomm Robotics RB1 Platform (QRB2210).

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/media/qcom,qcm2290-camss.yaml    | 243 ++++++++++++++++++
 1 file changed, 243 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml

diff --git a/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml b/Documentation/devicetree/bindings/media/qcom,qcm2290-camss.yaml
new file mode 100644
index 000000000000..391d0f6f67ef
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
+      - const: top
+      - const: csid0
+      - const: csid1
+      - const: csiphy0
+      - const: csiphy1
+      - const: csitpg0
+      - const: csitpg1
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
+            reg = <0x0 0x5c11000 0x0 0x1000>,
+                  <0x0 0x5c6e000 0x0 0x1000>,
+                  <0x0 0x5c75000 0x0 0x1000>,
+                  <0x0 0x5c52000 0x0 0x1000>,
+                  <0x0 0x5c53000 0x0 0x1000>,
+                  <0x0 0x5c66000 0x0 0x400>,
+                  <0x0 0x5c68000 0x0 0x400>,
+                  <0x0 0x5c6f000 0x0 0x4000>,
+                  <0x0 0x5c76000 0x0 0x4000>;
+            reg-names = "top",
+                        "csid0",
+                        "csid1",
+                        "csiphy0",
+                        "csiphy1",
+                        "csitpg0",
+                        "csitpg1",
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


