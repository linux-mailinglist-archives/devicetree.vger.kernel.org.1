Return-Path: <devicetree+bounces-227585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C89FDBE2BDC
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:23:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 083F01A632B8
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464632DA769;
	Thu, 16 Oct 2025 10:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UbSxGH6m"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E412328632
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760610184; cv=none; b=gyyTciSuaomAfxZGZB3FOKRh4aJ9RAekBNngAGGgkJ9njQmtd+KfGTiwL+W/qft93312Fp+wg8fYHHzokeyoAuCKod9dLvm2h2Nv7CYTWLsuYbPukb6bAb/KKalpIDyjFmNofJdGjo1OxDtTQNLi+1JHkcQsSgFxVqYsxI6+P5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760610184; c=relaxed/simple;
	bh=t8SkmXH3lJo+ni74v36LQ9XY40qzsj2VHsidxT389ME=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F2us88DYujfQ4zPjyQUS0s0o968+Cy1eNcQA6x3sg0sutWz1ZVfSvocdzhwATBPsNEWb8q08bF64FTd2zNxmcHquoG9T/COrp1WQWNZNvR6yoNnfPWWFPr2EgdDfApGVnRgteC+fu2I4H3zaRHNzbdcpB/6SAboI3pZaXLoWMCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UbSxGH6m; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GAAkjO023169
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:23:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fr+9AOuTNKxaIbCovkQFx70qXyt9H3plo/nHbPj91/Y=; b=UbSxGH6mWWLW3LM8
	5n4PycqbAEcmIDYql/6dDon6S2U4VAfBrfjPL1oDRAGZVYTQ1RsZ9yDiSiSe0RE2
	ao8uUq9YlSBY62MXK9aPNA+NUNG7ZjLSO+eeYVwEwOwmjeCRXJLckY5FaHV9U0Q0
	jiEOFqrOru616HYZZjXhFaZ8PAK0ALCVki/Iw4yGLKzxbuYiHBCtSNk9K6zvvTa0
	qRWN2mO7mRxgDNjtyb7BgBvKausiBxZtRNwPOAqPaM3Sjv7fuT6vz5cGpEj8nPvP
	X/4mblvEo2xMvZI7TFHY+yc5OCt6H30+yQRqpKtBEd/DDC6uEVvoLPbWxZSEsYPN
	OaOO4A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49tqvph9gp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:23:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c08308d26so19947046d6.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760610180; x=1761214980;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fr+9AOuTNKxaIbCovkQFx70qXyt9H3plo/nHbPj91/Y=;
        b=TOrQ9vsr0nqftRqngiUfwkcb7vWKEmQNHPAy0xaJW5WqSK91CKGHx39OV6kdZBN4dg
         gHsuK/w3YRLJOeetD1uZeX8cHDR6iaMf3oEEjt7MlyVrI46BKfHhkshoq/eI2GB5U2rR
         4CwjngGBavJLFRyihuXy0HYXMdr/uJotDlNiFhoO+N0V0kOJJhh3EwXjbI6bUFRBUE5U
         JHIV2XtQIqPiLfEndsIjFlEDefM3YJVpqA2VKxvABSzgY50psKfYoiVbx/uHyZGQQO60
         SpJFVxwlyVQKVmRGtKGYdpkZmwMLbkthqqrzdHsVwyJ8PoKyXikdHZECzPQ0fF/Qtwxq
         qlpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXDHydbTNgvbeIr24Ky0O44DpDvXkWZJMqGm+400OPyfx8DIe/V+N9uuy48orkdvLbUUpiKjRIQvGnA@vger.kernel.org
X-Gm-Message-State: AOJu0YxCFCHCBxdJlOHjcENRjzIZjukREWe/Lsbw27jwUcPhVINTYDZ1
	j1RfatuvFSrWL3dVxHGT2oDPW//UN04ae+R43qVNf87AB9y0ccl0JLwUs2/MJvQXIYUmfR7X9vm
	+h+EZuRvfsceREnDGxf7iZ9Wl8qIWKXDU+rv/edfq+qRzm1ZmIRq9XZvROcNhwM/t
X-Gm-Gg: ASbGncvKHexu9xrOX/YNP3UaKvAbvLRSRdZWRdTv+6nNNXMy1LIg4pB2UG8sLyu0zxD
	Tw9U+2Pye+IdB6uKk5nB7OsAF+4rGYn72rqChaeIEYqtDPLPExpeEHLB2SBd0MW5VOXkTforFzQ
	Go6gtb4iEZaAPmxnYxWB1MeTLPD+rtUPTzrnpePmztYSKMcNW2ygG0cagoE0X16NcdKyPCZ29CG
	oawrhyzDdrJAZ+6WYaxMC3v+zID7jLfxqFyZ+Zp1xK1a0+e3N2ULDOjA/K3wZcfvTHzoa0RMClY
	WARDMk2plAxmDKTjpI7vuCS/+fVX/UeRrMQivbBT5JWLMPonTdnH7WgB9gsYifQs8KVaLws++ax
	Dnq7/y3DK9oWtiGmAZAV31RLQefhWyKnU2hM0b6RY3MJjQPchUgIgfoEdhRO5dL5OOQ==
X-Received: by 2002:ad4:5bef:0:b0:78f:62ef:5a50 with SMTP id 6a1803df08f44-87b2efb9402mr413344716d6.42.1760610180009;
        Thu, 16 Oct 2025 03:23:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPwNaeYCpA/qeR6cOMb7AIFv3ONbG7kbuKKRqFfarfsYDwpzl09+fERtmSfYS6R9m6SHjSOA==
X-Received: by 2002:ad4:5bef:0:b0:78f:62ef:5a50 with SMTP id 6a1803df08f44-87b2efb9402mr413344466d6.42.1760610179537;
        Thu, 16 Oct 2025 03:22:59 -0700 (PDT)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87c012b3ff9sm36777576d6.56.2025.10.16.03.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 03:22:59 -0700 (PDT)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 18:22:43 +0800
Subject: [PATCH 1/3] media: dt-bindings: Add qcom,sm6150-camss
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251016-sm6150-camss-v1-1-e7f64ac32370@oss.qualcomm.com>
References: <20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com>
In-Reply-To: <20251016-sm6150-camss-v1-0-e7f64ac32370@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760610168; l=9680;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=t8SkmXH3lJo+ni74v36LQ9XY40qzsj2VHsidxT389ME=;
 b=kdL2zuQ6qIo2C/QHMQH5FQLcQ0STfGT2K0AMtnSMS5rOvattrUTzUYzHRZ9R0yd+u5Up/akMc
 ezBZA9HPvp4CajBpR+zs0z2tqImdF5r6uzwKpUkHLVHQG+4i+dOz0Be
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=aPD9aL9m c=1 sm=1 tr=0 ts=68f0c785 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=nzTIdK0Ps9Aro55Xt-wA:9
 a=lo4tUBR1ain2x7nY:21 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE2MDAxNyBTYWx0ZWRfX6dS4yXrcCevR
 buMOFXWg/UNcDop6zmHmCL6vuJUWf/b6jKNlUPMUjRL7IlYdEHOqDs802iKC7cDH2jwRV5U3PsS
 1WloqpVJC8Y8qz5TGq1fn3+GsXf3jn8VSDIx41CvnOQ+6SpMKWl5QrJcUU50xWFN7T3OzF9g1Sb
 JGFdvYFyHYJQdxKoPzVx7ifmXe4shPPYbMr2sSWOdIfWsZ5UgGkGa5PwQp/Uxsras5ohVWgrW68
 pHFSTJnmAtrh99PTZ3eRqjU2igTZas9fJGEUSrOaTKQP9+s1X+sWSF5wqpm93f+1orlrmF6bwLp
 7crtz3yvfIIQo3CXh9pYkVZr8FY/han17dHcXZnE3A8q3N2aJ5wMaG5ABe6rbylvuC3oUNWhV+S
 uaOCkHnpPclNZf3udze9Y9zY5AG5oQ==
X-Proofpoint-ORIG-GUID: 21196BdMNFGLYyVzG0TPcGaoEV-T5pVo
X-Proofpoint-GUID: 21196BdMNFGLYyVzG0TPcGaoEV-T5pVo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-16_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510160017

Add bindings for qcom,sm6150-camss in order to support the camera
subsystem found in Qualcomm Talos EVK board.

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm6150-camss.yaml          | 283 +++++++++++++++++++++
 1 file changed, 283 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm6150-camss.yaml b/Documentation/devicetree/bindings/media/qcom,sm6150-camss.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..758bed0970f2ceee7df30b579a0f60d583a9230c
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/qcom,sm6150-camss.yaml
@@ -0,0 +1,283 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/qcom,sm6150-camss.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SM6150 Camera Subsystem (CAMSS)
+
+maintainers:
+  - Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
+
+description:
+  The CAMSS IP is a CSI decoder and ISP present on Qualcomm platforms.
+
+properties:
+  compatible:
+    const: qcom,sm6150-camss
+
+  reg:
+    maxItems: 9
+
+  reg-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid_lite
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe_lite
+
+  clocks:
+    maxItems: 21
+
+  clock-names:
+    items:
+      - const: camnoc_axi
+      - const: cpas_ahb
+      - const: csiphy0
+      - const: csiphy0_timer
+      - const: csiphy1
+      - const: csiphy1_timer
+      - const: csiphy2
+      - const: csiphy2_timer
+      - const: gcc_axi_hf
+      - const: soc_ahb
+      - const: vfe0
+      - const: vfe0_axi
+      - const: vfe0_cphy_rx
+      - const: vfe0_csid
+      - const: vfe1
+      - const: vfe1_axi
+      - const: vfe1_cphy_rx
+      - const: vfe1_csid
+      - const: vfe_lite
+      - const: vfe_lite_cphy_rx
+      - const: vfe_lite_csid
+
+  interrupts:
+    maxItems: 9
+
+  interrupt-names:
+    items:
+      - const: csid0
+      - const: csid1
+      - const: csid_lite
+      - const: csiphy0
+      - const: csiphy1
+      - const: csiphy2
+      - const: vfe0
+      - const: vfe1
+      - const: vfe_lite
+
+  interconnects:
+    maxItems: 2
+
+  interconnect-names:
+    items:
+      - const: ahb
+      - const: hf_mnoc
+
+  iommus:
+    maxItems: 1
+
+  power-domains:
+    items:
+      - description: IFE0 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: IFE1 GDSC - Image Front End, Global Distributed Switch Controller.
+      - description: Titan GDSC - Titan ISP Block, Global Distributed Switch Controller.
+
+  power-domain-names:
+    items:
+      - const: ife0
+      - const: ife1
+      - const: top
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
+      "^port@[0-2]+$":
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
+  - power-domain-names
+  - vdd-csiphy-1p2-supply
+  - vdd-csiphy-1p8-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,rpmh.h>
+    #include <dt-bindings/clock/qcom,qcs615-camcc.h>
+    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
+    #include <dt-bindings/interconnect/qcom,icc.h>
+    #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/qcom-rpmpd.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        camss: isp@acb3000 {
+            compatible = "qcom,sm6150-camss";
+
+            reg = <0x0 0x0acb3000 0x0 0x1000>,
+                  <0x0 0x0acba000 0x0 0x1000>,
+                  <0x0 0x0acc8000 0x0 0x1000>,
+                  <0x0 0x0ac65000 0x0 0x1000>,
+                  <0x0 0x0ac66000 0x0 0x1000>,
+                  <0x0 0x0ac67000 0x0 0x1000>,
+                  <0x0 0x0acaf000 0x0 0x4000>,
+                  <0x0 0x0acb6000 0x0 0x4000>,
+                  <0x0 0x0acc4000 0x0 0x4000>;
+            reg-names = "csid0",
+                        "csid1",
+                        "csid_lite",
+                        "csiphy0",
+                        "csiphy1",
+                        "csiphy2",
+                        "vfe0",
+                        "vfe1",
+                        "vfe_lite";
+
+            clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
+                     <&camcc CAM_CC_CPAS_AHB_CLK>,
+                     <&camcc CAM_CC_CSIPHY0_CLK>,
+                     <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY1_CLK>,
+                     <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
+                     <&camcc CAM_CC_CSIPHY2_CLK>,
+                     <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
+                     <&gcc GCC_CAMERA_HF_AXI_CLK>,
+                     <&camcc CAM_CC_SOC_AHB_CLK>,
+                     <&camcc CAM_CC_IFE_0_CLK>,
+                     <&camcc CAM_CC_IFE_0_AXI_CLK>,
+                     <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_0_CSID_CLK>,
+                     <&camcc CAM_CC_IFE_1_CLK>,
+                     <&camcc CAM_CC_IFE_1_AXI_CLK>,
+                     <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_1_CSID_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
+                     <&camcc CAM_CC_IFE_LITE_CSID_CLK>;
+
+            clock-names = "camnoc_axi",
+                          "cpas_ahb",
+                          "csiphy0",
+                          "csiphy0_timer",
+                          "csiphy1",
+                          "csiphy1_timer",
+                          "csiphy2",
+                          "csiphy2_timer",
+                          "gcc_axi_hf",
+                          "soc_ahb",
+                          "vfe0",
+                          "vfe0_axi",
+                          "vfe0_cphy_rx",
+                          "vfe0_csid",
+                          "vfe1",
+                          "vfe1_axi",
+                          "vfe1_cphy_rx",
+                          "vfe1_csid",
+                          "vfe_lite",
+                          "vfe_lite_cphy_rx",
+                          "vfe_lite_csid";
+
+            interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+                             &config_noc SLAVE_CAMERA_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+                            <&mmss_noc MASTER_CAMNOC_HF0 QCOM_ICC_TAG_ALWAYS
+                             &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+            interconnect-names = "ahb",
+                                 "hf_mnoc";
+
+            interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
+                         <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>;
+            interrupt-names = "csid0",
+                              "csid1",
+                              "csid_lite",
+                              "csiphy0",
+                              "csiphy1",
+                              "csiphy2",
+                              "vfe0",
+                              "vfe1",
+                              "vfe_lite";
+
+            iommus = <&apps_smmu 0x820 0x40>;
+
+            power-domains = <&camcc IFE_0_GDSC>,
+                            <&camcc IFE_1_GDSC>,
+                            <&camcc TITAN_TOP_GDSC>;
+            power-domain-names = "ife0",
+                                 "ife1",
+                                 "top";
+
+            vdd-csiphy-1p2-supply = <&vreg_l11a_1p2>;
+            vdd-csiphy-1p8-supply = <&vreg_l12a_1p8>;
+
+            ports {
+                #address-cells = <1>;
+                #size-cells = <0>;
+
+                port@0 {
+                    reg = <0>;
+                    csiphy_ep0: endpoint {
+                        data-lanes = <0 1>;
+                        remote-endpoint = <&sensor_ep>;
+                    };
+                };
+            };
+        };
+    };

-- 
2.34.1


