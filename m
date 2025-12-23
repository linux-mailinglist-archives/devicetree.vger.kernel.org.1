Return-Path: <devicetree+bounces-249025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EE895CD88AD
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:16:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2DB98301D318
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E385317711;
	Tue, 23 Dec 2025 09:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G60oct1E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jDW73+n5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6119A31D362
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481399; cv=none; b=nh2wHHDq4JZbh7rFAOtJkH7flKlpn3kA+jBj+mU3bZD/2jNL8Xy+WO09GoXcz04KGB2KL16t2/l4aXhG//pjcli/pnRi1JoINhq6mIsh4x3ZsMDoUO1qHAEuvU283VxsxLGBHYPwWynfzW6T6lS9t+PQM+Ssb5shGR3U/cLmCtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481399; c=relaxed/simple;
	bh=5KumP20fDI2ZbJDHb4/tO7FSR6emNSPBnijP7UxKCAE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XsGzD9dAKTkfUH4TPuJSelkjIYKenbzlU/sjFnZo2MrAiaOwKqcbDTvl0V1REkNCHONnOC8D84yVd3mtKC9OO7K+kDByndbFmq0EEdALBtqLkzkxTuGqictCbMar/RFyDv+6Mv82lGlFmtp+VRwnO0q0MRgmfKth6Ell6aO9MMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G60oct1E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jDW73+n5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN2DmkU2041230
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:16:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZNuj5fMI4Xpxt6s2cvQVzAdTguidM5KXUybpFV8NeYA=; b=G60oct1E5AKiarxt
	Zn0QJc8C+DvbXtCiFNVeTJW+Ggx3p2tSxg7eN2PczS3ZhRh2cahDP3jo/uyJ/cZQ
	Lh3FfhI6MKjja9Y10h1oaO3AU5f/KM9Cy4NEGkHMqmuwmuSVTlxdPheW0I3cXNw2
	xGYUI31WNFrzmAmLH1zO6nh2a7sHfbr4Mt5MwMOT4kfNFfp2PEAL/4HejFaixFvy
	uOK5noBcFu3w8UZJ04LrktzUCpFHyDVSFvLJLwifcV4LUShRONJzWNzs1VmztlX8
	Bktmg5v8PuQe7hp8Cmpg2ij+VZn1vc+XhAxJmU6W5919kUsj/RJVNBIwZb6B7G14
	yoyh2Q==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b763pk56e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:16:36 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a08cbeb87eso75967955ad.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766481395; x=1767086195; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZNuj5fMI4Xpxt6s2cvQVzAdTguidM5KXUybpFV8NeYA=;
        b=jDW73+n5WvQKxEgQb1+Gax0NzqPYM0CpRX+HyECvVL3NmdjCBVwUk+0LiHoAdXdPTu
         xZztMfY7T2aHzotZeADUKyaM+hmNxEa0BAW7QHEHT3/yLlvOTQcQtf0VsybWInyuxsOm
         p+wLfxvKiVZPAv+lUAMXNBUr3riN5NAH4l+fWmO1zwFM2/5lcV9Jfw+zB+cGh8QtUYLF
         03IB8oQZYTkFCblqHhIO7uXv1etag68YQsvLzcxihXEmeZ7PDxhLErarQ2Bxqr4CUvON
         jeU5tlKuLNlyT8Ey/BYG/7n0ZRoM57Ged4xXu9Kk3ox3qEN3qahDD3BrJ8dEetkqka9N
         bIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766481395; x=1767086195;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZNuj5fMI4Xpxt6s2cvQVzAdTguidM5KXUybpFV8NeYA=;
        b=ssc1IN6UQ94SANdrNjcIMZ8IcMN+Oykt7PYeSYukxQG8eVxjPKNli0qiqVQOtJflMY
         J/9xjXV1lOigMbINxs1YPGkyEl/23eLWt4fukCRnPbKjaqIotgIN7P65s4ptxOAKGGQF
         wJjzubtWKaEHVqoy2Sq4MYsYDwyp300HvtKnNoaZTBI9tPgBHMpcqv0jqmoDZuccxAFI
         XHcJ2n2CmvSRptlVebmeIYab8trJLv2JQl0KmrNrgtjLjxSyHkQz94bOB3Fx2nd/82Fv
         73lBaFBMX5uqWMDMl+XbngdCbkN7+BE/5NWdqF0IA0Z+ApgFsYH9oCxoEZ0KybvXEEPJ
         dTvg==
X-Forwarded-Encrypted: i=1; AJvYcCUXatiJ5WavxgW1DQt0CmWL8wBzYpgytBdojTa6vQmb9wlqAfhvk5tN2yLjkiXoIQpdt6/L4/4xbW7R@vger.kernel.org
X-Gm-Message-State: AOJu0YzQkAeQXqU8+e30xelXApRIxfXL4jixhVcOdAIo+1/ncrvTp4n8
	yKUk+N1exyHq97hELZHwRtpXIVtiOtBbhqco/HitUEh0V2JnsNyN9HlcFq81ViRsDi6DkBWU3an
	KXOCE7Q91JJ03IAYSc1V9teyzYM+OBpHWpxfN69FYUWCgkK1OCuf8RRlm1rXS6G5h
X-Gm-Gg: AY/fxX7G93L2GBdB9OM7gIr4vf6DQ4fSJ3ygMjzKbq7ULXMxAp6pNs331TnzzfGEdno
	yNdC1YF5ecYLnDCge3NqvMgchC97LdJZ3oNYmD/HOMybPHd7I+1CE2353i0irU5bSesIdyJZAaM
	BwAyK6b6rsQkAf1tYrOLFI0R4fBzynCdTvXTEqxXhZtiP1QMcYrnFmsKcvLzZ79hQ9lKmY6HnMu
	J1mR3gCTz2Om8f2a3eUYxmxLAKcDV5rHia+8/gYcxJpTw1vuGzdthoUbHZ59cEYUDHD5O1xjfTP
	u9y1AR3gzNiyEUz8K5nEhR7J8itCHdB9E1tOfqk8Y6ZXREfRiAfjy6WvU3W5EV3XYlDSB1OgyfU
	fdzuTnJJ8sBqNSQbME7TbQfm5yCXDz/ppCvbaayewp9A=
X-Received: by 2002:a17:902:ef0a:b0:295:ceaf:8d76 with SMTP id d9443c01a7336-2a2f2840085mr125555275ad.47.1766481395150;
        Tue, 23 Dec 2025 01:16:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHvV0SECnt5qr2+m+UX+cGQTWDSVIgi6rAUtFKfd1ZisA+JQJTtq4hEzNrXUMisbHRIUEJB8A==
X-Received: by 2002:a17:902:ef0a:b0:295:ceaf:8d76 with SMTP id d9443c01a7336-2a2f2840085mr125554935ad.47.1766481394647;
        Tue, 23 Dec 2025 01:16:34 -0800 (PST)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d76ceesm122507585ad.91.2025.12.23.01.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:16:34 -0800 (PST)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 14:46:20 +0530
Subject: [PATCH v4 1/2] dt-bindings: PCI: qcom,sa8255p-pcie-ep: Document
 firmware managed PCIe endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-firmware_managed_ep-v4-1-7f7c1b83d679@oss.qualcomm.com>
References: <20251223-firmware_managed_ep-v4-0-7f7c1b83d679@oss.qualcomm.com>
In-Reply-To: <20251223-firmware_managed_ep-v4-0-7f7c1b83d679@oss.qualcomm.com>
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
        Nitesh Gupta <quic_nitegupt@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766481382; l=3868;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=5KumP20fDI2ZbJDHb4/tO7FSR6emNSPBnijP7UxKCAE=;
 b=y8UTo8ea7bkyRTK9lgNPiEvbBGa2FlFKJn362J0hRNhJbymyNLIk097LtE0fO5lGxDEuW1x2c
 DWEVHqC8ZVvCFJo4T7sAyz+ng5womvaok85sMqlEUfWl8nudU+jR7CA
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA3NCBTYWx0ZWRfXyfNW/d18PoXQ
 RIpBFCzisbLJM4lOknQ4a+4eZ8bf1nCp3kUNTQpklVbp3zCAIDJW4l0XJcoDtR/lSgtnLGAzr5O
 0i9PE9ZIGUxn5QcXINCAl1NnNLgUEFta0FUGiKm5sZ2+yiMSSbmZv3wnKVPCCy8T21IlrBIQEK6
 oVLd82MGKW5YQla4cPoYCGah1RZoQ6J5x6k/DPw1q42eZbOLdNAy2jFxQor+o+0cG58mQhoCEu5
 LbIBO6CeUaawV/HSLnZr9ZSsU24jycw8cNk+JUbXbUO+B3cstyN2alGq1NX+Qx89GeHM7MtDIC3
 QmBZjth69OcXUHt7ytFvUQb7eYYMm6+8mTD1U7iVaHlw6X8Aq7Snl99dnpz6yOBksKPt/6IvS7+
 7ntfZGCNP4R4MQz3R0jqt859/FWZLUEjQEAaSnu84QOT5TKsxoLS1DT7VN1YxxG0xfHkpvwQr9P
 XRs4tZG6AqTO2SDWTog==
X-Proofpoint-ORIG-GUID: QsuYlZ8vwSCMRAxF5ODetx_1e-E_wMYm
X-Proofpoint-GUID: QsuYlZ8vwSCMRAxF5ODetx_1e-E_wMYm
X-Authority-Analysis: v=2.4 cv=H6TWAuYi c=1 sm=1 tr=0 ts=694a5df4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=avnAaoOVoNrTWVjlPhgA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230074

Document the required configuration to enable the PCIe Endpoint controller
on SA8255p which is managed by firmware using power-domain based handling.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
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


