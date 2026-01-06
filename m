Return-Path: <devicetree+bounces-251922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185FCF8557
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 13:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 775DB300E611
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 12:35:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A7D030DEA4;
	Tue,  6 Jan 2026 12:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e/W1YzTl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="esC/h1T0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4483332BF3A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 12:35:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767702913; cv=none; b=RM1Ho9vYwYFcIWKu87KWxmM8aaWvH+qN491UHWxaju/90ySPfxE0mAx3kZHmk/qY8jRvSQtd9PU12cE5hsztAvrKxltH9ZCxdrlAKn96XqMKPqPBIBvLdzobcj6MzTNQIHBGDfZQopt2i/ZvAGCud2I8EG6tUNMHdqd17HIFDFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767702913; c=relaxed/simple;
	bh=zUnjg5STwT2JcN7sapEyt9FKEu5Sav3x2pxp2wVNl+8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lcZytPzP6FDJAi5ZAUMU211UqVoRTcx0pmFhqFLTladKQMFDDyoAyptEYRX/R1LFvwDhmbP3qQH7qUnyNuqKANAfJFg2eaFTA0QTXg30NEokbFU/qR2V3A+ugBeM1HgVIXWTsn/7FomQQPhBJoInY5uXsTtBf2Kf5dDw77S37ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e/W1YzTl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=esC/h1T0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AdEjX3214062
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 12:35:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yii7HJwaI90HAG/Tr2RZQ4/4GgSOzXggxzDrx1pXU7I=; b=e/W1YzTlmBX2mnVQ
	bv8cMkcRXyjRMFDS7UBW9Qf+kKPE7u1+EHAsN6XJC8UAjHTcRS5uTHiMNF1niGjX
	/Je8yATI6Fve7nKlyZwP4z8vugHBpaewXg1KMnM6Y1iQ36UfgH0ERp6COxArQcQI
	w7XS91naTI0MvYqAhoH8dlvpK6sTRHHLMPpfDf0d0NM47mYZIMVf9334PmoPEo32
	T0C30iRls7h1LoxMh8vmLLrsHY4U0vKsg3uvVp4HWUmFyX4j/HX6mQA0NoVx8PJk
	pSYH4XpvSCyVq7ENIUsq57F1TEq4JLX6cS568ZCDKQJzLdaohKbrItshGaLze3nC
	+McfPA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpnda1qc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 12:35:11 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso1203014b3a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 04:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767702910; x=1768307710; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yii7HJwaI90HAG/Tr2RZQ4/4GgSOzXggxzDrx1pXU7I=;
        b=esC/h1T0EAWtDE366Nd8Un/+Wh1H9d1qR+8Ug1mAL7wWom2mUQ3pMRjMU7+hrdiM81
         jFVp+T7OYt1BCqKcG4UBWzW2QwJGnEJQehFMyJ2R/MxVSY3rzrv8nTBhZvnoGjdCJmX1
         5HilmTu8TYTO0PJq+AMBNQLbuQZtZWbWgf02mWq6KSq7RHYFyfusixHcrOk908ffbINM
         p8F4khk4Qb4hRLQa3u5LFZWk1acHipmUzwnbyM7/NBGlxivxuP0UgVUMTZZj6xVXqcjp
         p9lzoOBTKNei8LPEF+hwF0d6e7zCXuL8OdEhn8tEtMH7gqkLYNQN1v9n6hBTHmaLU9s0
         1l/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767702910; x=1768307710;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yii7HJwaI90HAG/Tr2RZQ4/4GgSOzXggxzDrx1pXU7I=;
        b=PWufYv0JSmICmnDam+kbvislwlu1xzBFcv/Jty7refqCazK5lBllg9bCvPg90z6tOq
         yiUMAi79XozRr09NIjVNth3/j3NVSA5NkuM+g2QsVFJ2OWjWDF8R67iD7mJ6E6TwE37d
         LCgc3KX+bZdJqy65fgUN7BT2U5Hnl+Fp7YQuxFezGiR8HD1jTKT5Ds3Yh5cvn30d93MV
         wzBJ7XQnYHovOiguIrWLrihkXNaMKR5C79E8Br8HHA0Di0eOyhMRDNKlD+rtEOlNNC8h
         j4Tixp+slirzQgQj2boRx7H1ryl41lnUKpzNpkYqhKLmnoTCiEMJnUjUz49L5fEcqy4B
         Q1YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUcgrlff7rBBaBqB3uwu06sjuoHbRBlHFhlQmGV1ZFbtoGR6d5nuNJ9k4UaktG28ZUf3/ongTfankbB@vger.kernel.org
X-Gm-Message-State: AOJu0YwRdJqSw93xYVbkuhvOdsw9Nx4VVBlV9gvWvCyVf+uoV4LlvGWR
	ynNY9beB7jjiSqbUEUnfmLX2BeIWp/wV4wuNq4lrzSLPsWpiD7mjnxzEI3wLgAYW+DctTlJ9jT8
	p+vOBANlhbh/OK4Pw1b6zjlp2YGazAnYc9pRkjVOEj11pf2J/l3XgGpCqEtjnyTAV
X-Gm-Gg: AY/fxX45nvWZuLvs2nkfq3/h9GzwRF66NOBJzk82qHgA22cd4a2g21f9EcEf7dVnMnu
	AfOmX2psgFghBvbsxZicsOac87jcdFp0HpAUXSQRFKLdxJZcxeEdDlb6FRZedx1vq5mYlko8ZA5
	HF5QiC1uSA1h4yktl0g/vZF93kX6yBeJ6CFbZmkNdRhSHZLyYfaYNzQXm9z6CFXP8Zq5YcfEPWS
	WsQJtaswJy8cBOaLkKlqzdg8nXOA+Mc4bfKvDynMHbdxkn7uBLHK/PFmwfQpqA4R8UZxVjX+jjD
	eh2/tra/xqn7DlgxzhAzURCwmGbZGUMp//5dK8iAgbOo++CiF5feuzgXPR8ixxm3Od8LLbBZ3st
	vVEropclTEWOtj9/ltFirBTCGz5BoYhyrbgt4T4kTc18=
X-Received: by 2002:a05:6a00:288a:b0:7f6:2e6e:5289 with SMTP id d2e1a72fcca58-8187fd7a783mr2519524b3a.49.1767702909936;
        Tue, 06 Jan 2026 04:35:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFz42Qofmrfiv1X0ozcVb2AMYtMVNQ33zWXO61I2220TjQ7Pyu2v1SgprAjnJpWs4sLmO6UgQ==
X-Received: by 2002:a05:6a00:288a:b0:7f6:2e6e:5289 with SMTP id d2e1a72fcca58-8187fd7a783mr2519495b3a.49.1767702909406;
        Tue, 06 Jan 2026 04:35:09 -0800 (PST)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c59e83bcsm2161583b3a.56.2026.01.06.04.35.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 04:35:08 -0800 (PST)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Tue, 06 Jan 2026 18:04:45 +0530
Subject: [PATCH v5 1/2] dt-bindings: PCI: qcom,sa8255p-pcie-ep: Document
 firmware managed PCIe endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260106-firmware_managed_ep-v5-1-1933432127ec@oss.qualcomm.com>
References: <20260106-firmware_managed_ep-v5-0-1933432127ec@oss.qualcomm.com>
In-Reply-To: <20260106-firmware_managed_ep-v5-0-1933432127ec@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        quic_vbadigan@quicinc.com, quic_shazhuss@quicinc.com,
        konrad.dybcio@oss.qualcomm.com,
        Mrinmay sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Rama Krishna <quic_ramkri@quicinc.com>,
        Ayiluri Naga Rashmi <quic_nayiluri@quicinc.com>,
        Nitesh Gupta <quic_nitegupt@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767702896; l=3941;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=zUnjg5STwT2JcN7sapEyt9FKEu5Sav3x2pxp2wVNl+8=;
 b=QSEE7qmRpM7Gu0Mt4F7bFfUXbtjAQo29ZDWpFjXTEdvMxo52IHpKZB+LfPBKtaGZ8Q4Y4XPGb
 eKquey+bKEWCF68VO65zCYbv/abEW8sxEoiJvZe1F5lm4jnbg4pRQxJ
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: eCwyCpkPkZP0QPbVPMjQwYeA_rkmWGI9
X-Proofpoint-GUID: eCwyCpkPkZP0QPbVPMjQwYeA_rkmWGI9
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDEwOCBTYWx0ZWRfX7qPP3mSfStMh
 WJeG4KBmNsjgsLEpR2eQsnOde+I/phrR6z5vJKaud6/74pfTHjLNlbjbjZqTyav44bZwNWKVWR7
 b2lZZMhXJQ1GXYVWem02RMJiMxZT7B68W1RxUdwKx9RWmDuhZi8Z+F2K79FiXkV1aTnMW5gSVhG
 4rNgUClpES453+jduo48mQWu8RZjl4QBSSNjfdHCf1dj0+MeVHZLeP6IOt1Y0MNcjJppc6EHISe
 8dYwBK4wgpkhqABXTu8avaJHvQSBAdZXVtAOOuCB3ZZ40h4tHa5lklyGblzasm1fJB44NKQmNx8
 RRS2l7Rfc+jyKy6OeH9QtZZm0ifAZGTLV0jOo2ggwFTtgX8hRP9WPwCqR5TMIJHoKRu4I4lyqaz
 lkoFTl11KS6W8lD03GIXWp0UIwxOJlmGjy6kCYBbVMyBkcO8J0acI0AkaoHP7jUrDD6Yi5/OcgU
 6jOViAmIR4BMpK4pO2g==
X-Authority-Analysis: v=2.4 cv=Jpz8bc4C c=1 sm=1 tr=0 ts=695d017f cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=avnAaoOVoNrTWVjlPhgA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 phishscore=0 suspectscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060108

Document the required configuration to enable the PCIe Endpoint controller
on SA8255p which is managed by firmware using power-domain based handling.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/pci/qcom,sa8255p-pcie-ep.yaml         | 110 +++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,sa8255p-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/qcom,sa8255p-pcie-ep.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..e338797d5dc2f68e2ad658e7f2c073023c4aea75
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,sa8255p-pcie-ep.yaml
@@ -0,0 +1,110 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,sa8255p-pcie-ep.yaml#
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
+    items:
+      - description: PCIe Global interrupt
+      - description: PCIe Doorbell interrupt
+      - description: DMA interrupt
+
+  interrupt-names:
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


