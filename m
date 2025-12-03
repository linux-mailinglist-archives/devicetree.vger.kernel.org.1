Return-Path: <devicetree+bounces-244025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE83C9F200
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 14:27:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 07A6F3441B3
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 13:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD322F83C1;
	Wed,  3 Dec 2025 13:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YP+XQAqv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GJ6wWlCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF092F83B5
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 13:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764768429; cv=none; b=cL6z7F+KT8n4iZCFvnhJhxfroy+SAtX7qv0/mC8Uhg94CYhGYsw0O2m9AJ0FyF9jAYHmUC5OGA+/+c+SrxhXP4dcNbGd1h26tQCUkTS29TZQroi9fyvvhCSSG9z8S21Ue8FwgeCfF8fZFRxSxByciYECNlXvcCV47cZZEmGQ2No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764768429; c=relaxed/simple;
	bh=NNc36LsdP5Sf/Sh+P4pWzTOufULJNwh9nH+aJTkV9xI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R21zH/YrGJUsU9c5Gif1rerAedexQHEKVswQfwjPEliVGKYcaVylgVL3TavbnwdaaxjQQm9Q9drysunQokgt2ftaKuUtrzYQctm79K4JCnotXfZjDY2jbhQKobLdH1VwjG8kFZtOHcFeL/aIUD4KM9x9aks2OB5bhKK5/fsVZ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YP+XQAqv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GJ6wWlCW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B3B8LeA385577
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 13:27:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uDy47w3xn9wW2ymSLV4Sfp6HrTahu+PFDgo9mndL1mY=; b=YP+XQAqvXEA1rH+j
	emM22xJOI4e56QeP6OcxQ50pf3fZCs9bw/4bbS2uQde+DcaMsOzz3lrTlDBBORu+
	AA9/hlsjvlkWwgzAJeZWdMAh/ZtMOmuCco2SP/M0qaVoRkuMDhjAy1aM2Pq1cbbF
	7XeBjBpIDnEonF4hermbf1+EhtrbGJuB4As5XuqBR88cMaracqMb1wfZyhsqrv1x
	QtaGzKr1cAjAXkPATbq1FUxjOJl81K9dmEUZg6DC9CWot8vXfLmsu+Wn3cD+kez8
	yvfedu06X4QQEOjXAIeqr6prF72Pr2G61W1AcxJ8g8gJJs5DwjbRNMU53Uj86xLh
	z888fw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at5db335p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:27:04 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7aa9f595688so9683815b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 05:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764768423; x=1765373223; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uDy47w3xn9wW2ymSLV4Sfp6HrTahu+PFDgo9mndL1mY=;
        b=GJ6wWlCWjJ5mvPwVRCWofDMHJKC+o6eef2XJSv0BJH/JLLv9JApo+IIaFg3i53Sj+9
         ETGk9NUpIxYzmrzI3v/AleP55T7010hV8iN1DrvpZY9yxvW1vMExHPrwQhZzu7Ql+DGs
         hXwW2saadCze8Se9BTm3gFZUC2glKRNCPFx+3D9WnJVFZq2wzNU3wRFameh8yRNTvDE7
         Dd04NWXpGbMOwO8yOU4Kf1er8KrOcrcCcfjQHGtiq3YgSgBSbjSpvsZJ8ca56u4hX7QU
         4KPUam7qUiPRnCCC7URNOrUQDxBgsZVTr+KZiFma2M7Pm26ravOQw3eICOHpTCZPMw8v
         XZCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764768423; x=1765373223;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uDy47w3xn9wW2ymSLV4Sfp6HrTahu+PFDgo9mndL1mY=;
        b=MQwBC2RYgKd2gYnLeaogELm0mrkvv9BrUFnAdfgwAmcx0sZyW+cBBrZJAYIs7J9ZEL
         Z5sYyKFlwqtBYRKitepKZvK2tbPsoPROQ+Trrbomo/YPQZBfdoPLp34C2o9sVteZExjH
         PifZoNOJWxL1RqSIT4S4C7GkVyAGX4bsMZ1DDY+03gdU9xRf0USbawz09w7YIsEo+ocv
         KJRfuPhh1D8LKO1YZY8ic84nTKzeom4PRCY1HtgvkGMAFo7WeUO36XTwGVxWuu+ml1PJ
         SI0p4FVbJ6kxGg64yUq1V51XfDvuAU7m/6oTS3jY0f3CakZj9bs+LX8RBO5xfOCohuyz
         iDbg==
X-Forwarded-Encrypted: i=1; AJvYcCWxdtXKRj5MTq9FyLfYzSF/Q4ntQmmRJseRpTJY3HGPox+vCl+tPqcmvsAzxyR6GECXIPDBUxNqg219@vger.kernel.org
X-Gm-Message-State: AOJu0YzUgKIO84wfj/NUwI2Ydkd87rr9z82BWRvjMfCfestLuYxkVeMJ
	iBnoIT+xe0YIDGDYFYhciuyQQAelMT4IQkdW37HoMnQyh8rkam1gp32bozTT86BiCTAmk/2GVYT
	9B+pLOH2p1AzesnG/K9N7712PvLbyD44OgkTlkba69tYunukv7vhJhlalFSMLvmOE
X-Gm-Gg: ASbGnctC6PpsfkC4Bx6pGCOGsQTIXESdCPw8RxR70qan5T7hM2NqcztqxsZmrQ+o0Q7
	MHzte1c90lyYa80E6ddemSeKiLzVA+yaFE4DuOMbciWEKePOEvr1xFYOL8ORJS3QG4Bbj/YGacw
	S9Tut+lXXMULJR7x3qaAq7GFeMhKUFLENUQWMinEViMs8kTZgEV4x7Ms7TRs1IuzwowmAaJbp0W
	L1jbzkVRWe5tZF2zKHV6w7k1niAyChoBXyA9CQFKAkfwgTJykCbuJkrnBSkZj+ollXCkYOxiiK6
	NcVI6FdmAIuSOScQuSaPbeyFJoXjP8QJPsjZhGuy9++ojnb0HQSpjqiunMbse8gDm3GTo8TZ8tY
	hw1VabJ1yRrCZHhS80m0sOmAxn6lF3WL99ErWqsK2ySE=
X-Received: by 2002:a05:6a00:3997:b0:7ae:fea:e928 with SMTP id d2e1a72fcca58-7e00d9f1159mr2905632b3a.18.1764768423087;
        Wed, 03 Dec 2025 05:27:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3XWwRERuATrIUZCSdcB+/sIIpWZxxTyj2tL66l6kLmoEFxK0f5zm0a6z6wxREpXe72xyS6Q==
X-Received: by 2002:a05:6a00:3997:b0:7ae:fea:e928 with SMTP id d2e1a72fcca58-7e00d9f1159mr2905595b3a.18.1764768422586;
        Wed, 03 Dec 2025 05:27:02 -0800 (PST)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7d15e6e6e06sm20287524b3a.43.2025.12.03.05.26.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 05:27:02 -0800 (PST)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Wed, 03 Dec 2025 18:56:47 +0530
Subject: [PATCH 1/2] dt-bindings: PCI: qcom,pcie-ep-sa8255p: Document
 firmware managed PCIe endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-firmware_managed_ep-v1-1-295977600fa5@oss.qualcomm.com>
References: <20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com>
In-Reply-To: <20251203-firmware_managed_ep-v1-0-295977600fa5@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        quic_vbadigan@quicinc.com, quic_shazhuss@quicinc.com,
        konrad.dybcio@oss.qualcomm.com,
        Mrinmay sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Rama Krishna <quic_ramkri@quicinc.com>,
        Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>,
        Nitesh Gupta <quic_nitegupt@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764768410; l=3940;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=NNc36LsdP5Sf/Sh+P4pWzTOufULJNwh9nH+aJTkV9xI=;
 b=HiCJ3Fl8IFEM+UrqtTkUmEmPs9kOd1R/nCNE9OLGPFWL3jjEBxeLf5lQThy+R7ZRcRJF+nfon
 Dor8rwhGev1D/1cg2Z0p/PMG6QGxvOxQM8ZnIoqY0Z0HpVEDRyZursA
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: 5TnKVrOZh843wVGx1-hnUcoUrhg-oFUb
X-Proofpoint-GUID: 5TnKVrOZh843wVGx1-hnUcoUrhg-oFUb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDEwNyBTYWx0ZWRfX+NO5xq9RJWRF
 aRMf/wZAxt11PLNSUaKljLvQd9WPluCq/XM9+zvYQi8EVCA8UDwtAtsIcNZt2JLDz4LeYdVuiMp
 Thafkbi76YwdHAEtIPQ1JyhubSwTBJqHgHCSTJf33EuNjzvr/ruGHZSIk2Y3JJgbvB47sZLyLwd
 xfBoyxVsdGP/y7JqmxFSVUpuPQ03AJ/BqPhH3Nwswuz06PFznguqjnMiNI1J8olyEZkCEC9FhoI
 OTgRHglDY/Ih49R4PjDVT3Upm9GXQfSh16zlHfCPA+d3gk2PWJB6RTbLXdwaNnw3YgR4cOdWNNV
 BCHDYtkkGhZFwAT5I6AoEef33djdcCpFHLt88r9xRA3x4StbVvt5M874xujjFlPuPzPAshKdBDQ
 q+xUEQznD39YLKwduKcRmlXcBTSN/A==
X-Authority-Analysis: v=2.4 cv=VoMuwu2n c=1 sm=1 tr=0 ts=69303aa8 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=avnAaoOVoNrTWVjlPhgA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-03_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1011 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030107

Document the required configuration to enable the PCIe Endpoint controller
on SA8255p which is managed by firmware using power-domain based handling.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 .../bindings/pci/qcom,pcie-ep-sa8255p.yaml         | 114 +++++++++++++++++++++
 1 file changed, 114 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..970f65d46c8e2fa4c44665cb7a346dea1dc9e06a
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml
@@ -0,0 +1,114 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-ep-sa8255p.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm firmware managed PCIe Endpoint Controller
+
+description:
+  Qualcomm SA8255p SoC PCIe endpoint controller is based on the Synopsys
+  DesignWare PCIe IP which is managed by firmware.
+
+maintainers:
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    const: qcom,sa8255p-pcie-ep
+
+  reg:
+    minItems: 6
+    items:
+      - description: Qualcomm-specific PARF configuration registers
+      - description: DesignWare PCIe registers
+      - description: External local bus interface registers
+      - description: Address Translation Unit (ATU) registers
+      - description: Memory region used to map remote RC address space
+      - description: BAR memory region
+      - description: DMA register space
+
+  reg-names:
+    minItems: 6
+    items:
+      - const: parf
+      - const: dbi
+      - const: elbi
+      - const: atu
+      - const: addr_space
+      - const: mmio
+      - const: dma
+
+  interrupts:
+    minItems: 2
+    items:
+      - description: PCIe Global interrupt
+      - description: PCIe Doorbell interrupt
+      - description: DMA interrupt
+
+  interrupt-names:
+    minItems: 2
+    items:
+      - const: global
+      - const: doorbell
+      - const: dma
+
+  iommus:
+    maxItems: 1
+
+  reset-gpios:
+    description: GPIO used as PERST# input signal
+    maxItems: 1
+
+  wake-gpios:
+    description: GPIO used as WAKE# output signal
+    maxItems: 1
+
+  power-domains:
+    maxItems: 1
+
+  dma-coherent: true
+
+  num-lanes:
+    default: 2
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - reset-gpios
+  - power-domains
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        pcie1_ep: pcie-ep@1c10000 {
+            compatible = "qcom,sa8255p-pcie-ep";
+            reg = <0x0 0x01c10000 0x0 0x3000>,
+                  <0x0 0x60000000 0x0 0xf20>,
+                  <0x0 0x60000f20 0x0 0xa8>,
+                  <0x0 0x60001000 0x0 0x4000>,
+                  <0x0 0x60200000 0x0 0x100000>,
+                  <0x0 0x01c13000 0x0 0x1000>,
+                  <0x0 0x60005000 0x0 0x2000>;
+            reg-names = "parf", "dbi", "elbi", "atu", "addr_space", "mmio", "dma";
+            interrupts = <GIC_SPI 518 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "global", "doorbell", "dma";
+            reset-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
+            wake-gpios = <&tlmm 5 GPIO_ACTIVE_LOW>;
+            dma-coherent;
+            iommus = <&pcie_smmu 0x80 0x7f>;
+            power-domains = <&scmi6_pd 1>;
+            num-lanes = <4>;
+        };
+    };

-- 
2.25.1


