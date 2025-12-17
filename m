Return-Path: <devicetree+bounces-247334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4AACC7542
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:28:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BD9FC3076A30
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87C7834CFAA;
	Wed, 17 Dec 2025 10:13:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OSWqEKgK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kzk+bn4s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E400634B416
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765966383; cv=none; b=mAjMFj3Njt0OpmDzXUO7xp4t0f6Rfx1bQ8D6YiBH6pNUBsXNEzM+9rJs5QwO1pP63RJdFac0R1N3nlEzvQ8MDgJIyyfAUDVvuT/WVfICkI0ygPQyC4utr4Kw5SjcwAEgPesoVGh2e78ushWwt+lSwp2y/cFG48+xsw8gqodGi2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765966383; c=relaxed/simple;
	bh=Gd8++hP+sEHWvYF85wgfzJz3jZqyJIvpMUapV4m5Pxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CgYjbhVlnVQK5STUgDNjcOFOv0XCyIMtTkCJJK3D6y+T0mFgUIGy22HnQAiz0KJznDrzuKFI9djoMn8Jf394rT6fjk2blBNxkHi7hXK5YOk0K0d7Fai1+wqJhZgBbi6heDi+tM609lrwarhdCrHwgkrUyPCC1fEcCbblRqa+Nrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OSWqEKgK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kzk+bn4s; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3ousM1565156
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:13:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DbI9CShYiZaHO+aG40g0unn1VlYN2gjoOtFy3f+ystI=; b=OSWqEKgKxWq67rT/
	eZO9/sUXTg04FpMYXivSoo9oCoDEdM1C+OeEd+W1+rR3M3LBuWOopN+UsX222jd+
	fNx/qavfCaixCj1/7GjzCfO3eVovnML/48PJGZ0VgrhJHpaQzftkK/+b90hCoZPa
	nFd+ztJ7ZhKtg2lnFD4x4gYoNUiYb+2AO/l74s1C4RjDTBVQ3vYdskYvYf7PmkQp
	jncrr4QjN2G+uPx5ULQTefqFZAwF5nzg7spFzl2frQEOc7C7eYPcYj/BNrrUOIZs
	j0rvXC7ODJaRp4mPqoY/lZpYT5/dEnPt3mB+i4U6TzgDP9/cc96V2qI+AbRY9W2C
	WFavLw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3myj16r4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:13:01 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7f66686710fso15494642b3a.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765966380; x=1766571180; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DbI9CShYiZaHO+aG40g0unn1VlYN2gjoOtFy3f+ystI=;
        b=Kzk+bn4slAds7OURaHronG63MWr6WkJ33TbBqB/TH2m0R6v1CFmCj2zJeK7BITBY1+
         8380pMdRGLaxcRTZ2joWJf6iE+hpe8+i7DFu9Skit/9KPYOzp5HSW/jrDCSqo2DR7srT
         V5+S3QF7GjPVITMsHNqTTKmigyEdIr2Qhtr89osXyKp5QxM3qz6EtLjPlZc1QgPvQNcr
         Cq+NUMKHDB7qxXu0WRBYrYic/gnbE/+OunHd3C1Fbd/DBACH7smj3lyxXYmwdG8iLXKh
         APav3FMwKvm+cd4paFv+fBNWoUQlytF1zWDZ9BhUUdf0U3Ji82Dd6f5hKTGuvOhTNeGW
         fMJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765966380; x=1766571180;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DbI9CShYiZaHO+aG40g0unn1VlYN2gjoOtFy3f+ystI=;
        b=xOqnPdT+yYsKBiimbMdc36eE4rlszdSb7KBNGOYEuUZspmMCvCZcOtxaTWKpPdD0Zf
         tp6DEjO080HE4xboMa7hxWPqVMcWNO3wEprRbvExP8XBgzPLK2GYNWbCKeG6T8biE0ZM
         pF6io/m/gr33UOOWvP/4eV24Xw3/XDFYUxQNt3vwZtgaYGUAJof+5oSPGirTS7wvo5wC
         FewA2qYlNOdedrBAf9/uf8WMq6w7Z7HuQM7LUO/AkF6r5cjmUDg7uE6IhZWw2LNI74Q6
         5My3MAmHo2SJKeR3nIXzThnNo/iz4f3jdFhPAhiVoNyaoXX5C0Gb/TgWcibhYVQ6AK4k
         DmQQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+5zvk7vh6/Ry2p7oli/ZBiZlfGdGOhLYUZ1+J5xXR8wokvdhoN/eRXmxXAFDklQmBKBIV31CBHub6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+GlG8+x6wFZElsc4EpsHTP9DwOdkXJ/XePy0g3HgUPkvDOhoX
	Dqo0NFmqMZOLtKRUOTqgiSE+34vFt6C5HP7SGKqyM3N/+gZOMb08WJ/y2UZX3PHip/dphaV9jQm
	KbrhW+5xyKp1O6KCvPq+NP+HIdNRkaispaDrZ6VOlLAir8VqKm3JJWlQmTBLQ0JC4dtjK0As6
X-Gm-Gg: AY/fxX4BLFxkafbfHRKY6u7ocJhCpgLoMvppD8+XyDsoS3RQExxAEOg3oN/a0XqO1CB
	3XZ8/2QB8Sy3IUL9HcOW+TDqymfTPEHx5fyr+FUlrxT5MrrgUuxYw+Zpl34SkYVwhro3Qxohjto
	pJY4Ahh3oc+Lx+utfHcXI3NjFG6Aa4v8STQD4wtCB4IsiRQ/k89wlB8MOP5onR4K/I6if5kUCVp
	06etaXlacGyyJRlTgNEFgJdtft8/RyHFOWxrIT5uQDqypbAKIvaefTIVOQV8oxTjQYCKQlD3FMO
	TKfaX+PjpPbHHWLs4wH0d87VvD8ALdj7FV7dsJAbNYCnzcLQNxFWTJAvrxzoS3UxlXkIt2LfuVR
	IeHSr40375HwsrE2iZo1zk8vlT2h9HdllRnUyZp2lfYQ=
X-Received: by 2002:a05:6a00:b904:b0:7b9:d7c2:fdf6 with SMTP id d2e1a72fcca58-7f6679326b4mr17691565b3a.24.1765966380420;
        Wed, 17 Dec 2025 02:13:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGOJPvpJakMrPYx2IILb+C4dmNXB0wX4wECr0TslOuJe0fepiMCqz38r++WcJOhF11beVnBhQ==
X-Received: by 2002:a05:6a00:b904:b0:7b9:d7c2:fdf6 with SMTP id d2e1a72fcca58-7f6679326b4mr17691541b3a.24.1765966379974;
        Wed, 17 Dec 2025 02:12:59 -0800 (PST)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7fcbb11ee42sm2290347b3a.43.2025.12.17.02.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 02:12:59 -0800 (PST)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 15:42:45 +0530
Subject: [PATCH v3 1/2] dt-bindings: PCI: qcom,pcie-ep-sa8255p: Document
 firmware managed PCIe endpoint
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-firmware_managed_ep-v3-1-ff871ba688fb@oss.qualcomm.com>
References: <20251217-firmware_managed_ep-v3-0-ff871ba688fb@oss.qualcomm.com>
In-Reply-To: <20251217-firmware_managed_ep-v3-0-ff871ba688fb@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765966367; l=3868;
 i=mrinmay.sarkar@oss.qualcomm.com; s=20250423; h=from:subject:message-id;
 bh=Gd8++hP+sEHWvYF85wgfzJz3jZqyJIvpMUapV4m5Pxo=;
 b=16hMd/OgLFc5yC/RDd40+Kanmwb7nY0dMrvfkKkHnIa3sa0fbZqjWPRYMqCq60yhc9r6aAch/
 PDcC3wol11vDPpq2pd58hbeI8lPfYOTvxCLiyTC6YKsJ/9Bu3ZkaTJx
X-Developer-Key: i=mrinmay.sarkar@oss.qualcomm.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4MSBTYWx0ZWRfX8DZVVEIcPnwB
 8PfDAnSu0vVyEj0cgAh8voksfDS/RD66LiCGuEpm2MrUdn1Y5ecKaCCCT4VEUcOBxqBrWnigiWR
 biRA0GfyDuzbNVbVjd6zPUgpTlGQybcMBJry7Lmt82fZfCuYdgQkxXZ++c0mgrIWG9k7X+KRebJ
 IBY904+520no8aQMu7A2pIvArUnDiYDX+yenQC83Gx4R2t5L0ZM8D/ZvvrB+yKK2orF3zXTV0fF
 HPQMvGADU8K9aP9QcJHaRzj5jpUseZM2MEQnlNrdle+Bi1B6L3izprhwvWfU64aoXCvblntq/aY
 qKEqixrJua/DFFTVBPipoJ8NfWT8fwxqEyozmt2zO78osIoNWl4gL1U4RcJN7zdZvIiZ0tmGYSf
 L4W+1xA6SN+/MtVXoaXcw1oGLinsiQ==
X-Proofpoint-ORIG-GUID: 2Kq-vNUS5XDGBKIiZzewzUe7MgjXP3KE
X-Authority-Analysis: v=2.4 cv=CtOys34D c=1 sm=1 tr=0 ts=6942822d cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=avnAaoOVoNrTWVjlPhgA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: 2Kq-vNUS5XDGBKIiZzewzUe7MgjXP3KE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170081

Document the required configuration to enable the PCIe Endpoint controller
on SA8255p which is managed by firmware using power-domain based handling.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
---
 .../bindings/pci/qcom,pcie-ep-sa8255p.yaml         | 110 +++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml
new file mode 100644
index 0000000000000000000000000000000000000000..395cd23861ec26c00d51299829f1c60116293cae
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ep-sa8255p.yaml
@@ -0,0 +1,110 @@
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
+    const: qcom,pcie-ep-sa8255p
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
+            compatible = "qcom,pcie-ep-sa8255p";
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


