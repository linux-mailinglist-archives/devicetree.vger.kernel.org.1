Return-Path: <devicetree+bounces-247565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0552BCC8C9C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:32:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97B5C310C917
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0ED934D3BD;
	Wed, 17 Dec 2025 16:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dYGWCkDv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T3ITJc0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF80433F8A4
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988383; cv=none; b=N1W0fFrHOrB6vC56F2HVGh8ETqQ9hnOlJGKFKNau2RLFOxXh5HOtMvnP59h7SLOGxQy1A51GbEZkK20AL0VCvyWr5jBVf8iVGPapj5oA2n9ShrCiJLMqxqzLVIAFYIYKejq+kPgayz0OZ1wdtQoubXb2rfxRTQoAvwZo5fNvaKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988383; c=relaxed/simple;
	bh=fwwvTAHHN2lNGk849hvRPwFvied04vmzzOv5gjzHx/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HTDVR4aHj1gMHzNS1EjXJXWha2TzZstkaZJHJ3oTA2AboYPYvXmKZPP5D6B+W7NdQTwXp8viBucDq1/OZg3M6a8UG1jCHbc9DTOBGIKkt9UG7DVxBPKydVENkXADaEfQOn9pr5nV2i2yO4/gYXSOF36D6/FRjcYN3p7pZhkiSuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dYGWCkDv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T3ITJc0H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHEvofa2721112
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YNmS/S8KWoU4BRwA6oCB8rj8oljkhocnlAvoPMHAqqA=; b=dYGWCkDvn2MGzUcO
	TC+9rpO/TQIiIlgX3DwE0IGwrE7Ldk0a+WyBtbi+vtesiBrfERBcOYd0UIlaheyS
	AKDpyb37t+04KZE29HGE82QsPrqUQApRKTXRE/kxUrtQiL4LTSkqwzH+ACnmdM+J
	o3qoZ7CKHhmmPR7puVIOMZmIqnZBBRSUga0jZyWc+stGM1zLjW5VvgGhd50jpIv8
	w8DSoKh08TA2b1TCv/UWQtKI2y62KUnLUfGxolznTUken+Lzf8cJ5gwDJAaoOra2
	daGgAWjaknwD1n8vz6ENT+GILAgaUPBzOzCeq63p+nnOeExJrl3dJDo5S3wrAHyM
	BdwNNQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3xr58b6p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed79dd4a47so135411341cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765988380; x=1766593180; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YNmS/S8KWoU4BRwA6oCB8rj8oljkhocnlAvoPMHAqqA=;
        b=T3ITJc0HM1fvblUiCsf5p8To1HP8QX2d05mEc2F+e5m7pQ1q5vD3bHeeoK3o2erJFk
         bEL26aP37mAEjkI6pm150CrqLJpYrgZHAOYfruoNZAxmA8KUaLDg3S9Hs9IWxIY9kwFs
         A+0A1P4ut35NcEfAgzFJau/JfDbYxB7FNgz8yL3sm72mYknwHHYi7kvB2c4qoLSrlsgm
         Le3cFU4Ad76T5RHmAffgWJCUlPdCW00zFR724TmbQpA7q6M9BoGfQ7OrcnWrG4VhLcoP
         A7hpDtWcJHi092F3ujEb0D1dmTtPMITJZ3Oul7GDsx9mzsFmNlUahBViHlhYA0UoGiVV
         posg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988380; x=1766593180;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YNmS/S8KWoU4BRwA6oCB8rj8oljkhocnlAvoPMHAqqA=;
        b=V1THfCrsnwFm7oQtGBx3U3qwXAGmVRDQ782yKRGugZeKyrseEANTTa5Y17qrJ0H9ML
         OrXRIglAhdowXOIhrFtkw88EiSCmCPnkwRkh6trUkqwxRzYYRFLJDfltkd2pZfV+geYd
         naQpP4JyGuE/7SdQGDXuUvdHmU+klJaJ0BEfNVHY9Unb4SYNzIMMxKDAmk6Y+h971WRR
         msy7UJUIXMws78vXHZaJjcvpGkGonLR8f0Ugd35nX/mfYR7xqrScIifNb+QlBEbi+dXU
         DDfogSsdHv1da8dnPxVahDfuykI4lPzu1cVMqf/E5pD9yCn3zyiHmd4M1fWwLAUZQKgC
         oSTA==
X-Forwarded-Encrypted: i=1; AJvYcCVHLwL9PMzf3laGag5DrgN6fCXtWVrAx3IETYn+eSBGWSOtt3cIu0o0D+iRAuRkmgZ5n86e7kT2iKqA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc44tpp02ZsDxAr/5Ezk5+hNmY5+dsejL5CfNiSvuU31yFac+b
	lMbhx1yzwRj5rHG7ZmLTQhs7RnDFvbrVaHEejVTWpmGEF87210tlrG9/MJhnxCZxxHVXAFxUVFn
	EsPlXb4Zq84WDomZ6x8I4JDP1EeGa1m2bhR0V3yJDQKTjAgSs+OVy4DIIJqQon+UJ
X-Gm-Gg: AY/fxX7UXngQaOxINcEmu8mBUps5zCHuGGFTddX8G3f3uXdFify7c4YrQvMwFXxNKBH
	saS9k6fobHIf9VrbvxpuuWRtjifGj18Ly3gF//BYBLrV+IWunhlnMLI0/iSYCCc62OFPPW4fdFO
	XY+A0Cij8tq3qVWy5ZOzUKcxK12djule+o1rZTnnEatjk/V+7Cz7ppA3L692C7fMQluciFErDmc
	BWw0TerS6PiMk1oun3EWa9E5TJ+BuU6mZXILI7jKnbO7uYKOHPCgWWb6jCuHkdYluueL6M0Z5DF
	A4+FWoUYAOaZ0IwT+nrNIjxGTLYAdSppRG/uROsHg0LuB0Xdby4QVUQvbI4mVwz6dse0bbFnWVA
	zSoNxQ45MvoDpvMSwmvfwwSrjC45C1I3N
X-Received: by 2002:ac8:5794:0:b0:4f1:c6c4:dbcf with SMTP id d75a77b69052e-4f1d05e1994mr216191371cf.41.1765988379725;
        Wed, 17 Dec 2025 08:19:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmuhCzE56zD6F+UM7xZpcGi6NIsSaX7ktklAxR6sjzyi/NBlIhCg3jK0eilwEQaZAVgCMf7A==
X-Received: by 2002:ac8:5794:0:b0:4f1:c6c4:dbcf with SMTP id d75a77b69052e-4f1d05e1994mr216190911cf.41.1765988379176;
        Wed, 17 Dec 2025 08:19:39 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29be92sm1987868666b.10.2025.12.17.08.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:19:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 17:19:14 +0100
Subject: [PATCH v2 08/12] dt-bindings: PCI: qcom,pcie-ipq4019: Move IPQ4019
 to dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-pci-qcom-v2-8-873721599754@oss.qualcomm.com>
References: <20251217-dt-bindings-pci-qcom-v2-0-873721599754@oss.qualcomm.com>
In-Reply-To: <20251217-dt-bindings-pci-qcom-v2-0-873721599754@oss.qualcomm.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=7671;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=fwwvTAHHN2lNGk849hvRPwFvied04vmzzOv5gjzHx/0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtgD1rVCcA6OKgbqLBy0X5JKj9KUGzSd6qjMH
 3GC9U5wna6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULYAwAKCRDBN2bmhouD
 15lwD/940NaUDyFttaPpJu37DYkQrGhbkICy3HtzUFk/FiCfHaGYiqqhVa4OewvthKwL4ycqzFB
 3hl+BKkGD8cLzJl2MxitEashYHLcuRyFePjA8ItEIWLQm3xe/B7flzAH80vD8gPb1mZbmu39zSw
 Z37n2yxvhAxoqZoQTxwr/NjiSbdtaYb/qAqkS2fcnpuCqLKLmbcx7mol5qAQ/SpyhyQ9RkjeTEK
 7WnpBsuNVWfrFcTRhP6tcfDEA/b0mvjE+CGwF8r/H6zH4pVUQsYgVpuwcuPwXXo5/5qnd8jIg1/
 r6hR0Xp4a/BliBEsKunUG0kHwWxFySE/zwt/iK8SbymaXFFU+7OuM4eCMGkmfTqHeuPfgGjpY0w
 USoU/Fo4Is4DuLIala13H7cvzqCG0nm4DuwejpSVhiujzOdKSSQD6HOCaxsWyqZ+BnvXkvKDWGH
 gDxfWnA8WcPnbFcV67f50IvfXmcNwds80GSxAV1+lPWIleJZTKDPL0k8UPxBtFvXZfekk0TPc4q
 lRg8+vYbhw/Aq/fQhhUUSsmpVgRWNOIm6/78Vjj0CVdyC5JVbsavXLjkeCGIR6YZsitsCnCGWr3
 aY4oBGJfGBAPScLaTKrMVZIBwTUK9m39tDEC8lBeZ4e1MMX5FHr5WUHXle3vIJBI+bXyD6gSFyZ
 E3qY79YgFbCHnjA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: 2Z0H8njJJHhCE5AOZbWGYIUfYayk69e9
X-Authority-Analysis: v=2.4 cv=DsBbOW/+ c=1 sm=1 tr=0 ts=6942d81c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=klm9TE13DJW_JFRMJakA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyOCBTYWx0ZWRfX0+bVVs1eNcUS
 SDNGP2CuQnFyQ0ptlUQkzXG68UXFz1NHNp0XVeIG4lZde9OG/tCQbP9dC7I1ZbbGDNu+f0nsFkt
 m7FCa1F1n9VD/KS43Rl9QRRAbRJejgO++CJr5xVI7FOBiChqnVcDI/VMYBziYIOQVhJoN+ynqKy
 PFAGDO+j5qsqn4gNmsTZ0tUJs8gKP1wB2pGG0THVrgcVSIUP0TQtGlLOOimnJt9CphbjP31MM8d
 zNNRVHAQ6GcmWpDX/qZLoD9bFuOsXyC9VP43ZofGhshTjvAe9zIFlx8Ea8i9MLR4Z1ajmmXJFo7
 fyiTKtD2HBVq6eYaiDNdo3/6hbr/G3ZIubYbkAlPFwcSiUEtLfxsupsaLbNXtT5zPe+dClq7Jim
 9iHXI6WuU5K/zjitbH8WP87PCd8u0w==
X-Proofpoint-ORIG-GUID: 2Z0H8njJJHhCE5AOZbWGYIUfYayk69e9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170128

Move IPQ4019 PCIe devices from qcom,pcie.yaml binding to a dedicated
file to make reviewing and maintenance easier.

New schema is equivalent to the old one with few changes:
 - Adding a required compatible, which is actually redundant.
 - Drop the really obvious comments next to clock/reg/reset-names items.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-ipq4019.yaml | 146 +++++++++++++++++++++
 .../devicetree/bindings/pci/qcom,pcie.yaml         |  38 ------
 2 files changed, 146 insertions(+), 38 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ipq4019.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq4019.yaml
new file mode 100644
index 000000000000..fd6ecd1c43a1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq4019.yaml
@@ -0,0 +1,146 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-ipq4019.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ4019 PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - qcom,pcie-ipq4019
+
+  reg:
+    maxItems: 4
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: elbi
+      - const: parf
+      - const: config
+
+  clocks:
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: aux
+      - const: master_bus # Master AXI clock
+      - const: slave_bus # Slave AXI clock
+
+  interrupts:
+    maxItems: 1
+
+  interrupt-names:
+    items:
+      - const: msi
+
+  resets:
+    maxItems: 12
+
+  reset-names:
+    items:
+      - const: axi_m # AXI master reset
+      - const: axi_s # AXI slave reset
+      - const: pipe
+      - const: axi_m_vmid
+      - const: axi_s_xpu
+      - const: parf
+      - const: phy
+      - const: axi_m_sticky # AXI master sticky reset
+      - const: pipe_sticky
+      - const: pwr
+      - const: ahb
+      - const: phy_ahb
+
+required:
+  - resets
+  - reset-names
+
+allOf:
+  - $ref: qcom,pcie-common.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,gcc-ipq4019.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    pcie@40000000 {
+        compatible = "qcom,pcie-ipq4019";
+        reg = <0x40000000 0xf1d>,
+              <0x40000f20 0xa8>,
+              <0x80000 0x2000>,
+              <0x40100000 0x1000>;
+        reg-names = "dbi", "elbi", "parf", "config";
+        ranges = <0x81000000 0x0 0x00000000 0x40200000 0x0 0x00100000>,
+                 <0x82000000 0x0 0x40300000 0x40300000 0x0 0x00d00000>;
+
+        device_type = "pci";
+        linux,pci-domain = <0>;
+        bus-range = <0x00 0xff>;
+        num-lanes = <1>;
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        clocks = <&gcc GCC_PCIE_AHB_CLK>,
+                 <&gcc GCC_PCIE_AXI_M_CLK>,
+                 <&gcc GCC_PCIE_AXI_S_CLK>;
+        clock-names = "aux",
+                      "master_bus",
+                      "slave_bus";
+
+        interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "msi";
+        #interrupt-cells = <1>;
+        interrupt-map-mask = <0 0 0 0x7>;
+        interrupt-map = <0 0 0 1 &intc GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+                        <0 0 0 2 &intc GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+                        <0 0 0 3 &intc GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+                        <0 0 0 4 &intc GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+        resets = <&gcc PCIE_AXI_M_ARES>,
+                 <&gcc PCIE_AXI_S_ARES>,
+                 <&gcc PCIE_PIPE_ARES>,
+                 <&gcc PCIE_AXI_M_VMIDMT_ARES>,
+                 <&gcc PCIE_AXI_S_XPU_ARES>,
+                 <&gcc PCIE_PARF_XPU_ARES>,
+                 <&gcc PCIE_PHY_ARES>,
+                 <&gcc PCIE_AXI_M_STICKY_ARES>,
+                 <&gcc PCIE_PIPE_STICKY_ARES>,
+                 <&gcc PCIE_PWR_ARES>,
+                 <&gcc PCIE_AHB_ARES>,
+                 <&gcc PCIE_PHY_AHB_ARES>;
+        reset-names = "axi_m",
+                      "axi_s",
+                      "pipe",
+                      "axi_m_vmid",
+                      "axi_s_xpu",
+                      "parf",
+                      "phy",
+                      "axi_m_sticky",
+                      "pipe_sticky",
+                      "pwr",
+                      "ahb",
+                      "phy_ahb";
+
+        perst-gpios = <&tlmm 38 GPIO_ACTIVE_LOW>;
+
+        pcie@0 {
+            device_type = "pci";
+            reg = <0x0 0x0 0x0 0x0 0x0>;
+            bus-range = <0x01 0xff>;
+
+            #address-cells = <3>;
+            #size-cells = <2>;
+            ranges;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 8ff4c16b31c8..1ff63d7e772a 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -20,7 +20,6 @@ properties:
       - enum:
           - qcom,pcie-apq8064
           - qcom,pcie-apq8084
-          - qcom,pcie-ipq4019
           - qcom,pcie-ipq8064
           - qcom,pcie-ipq8064-v2
           - qcom,pcie-ipq9574
@@ -140,7 +139,6 @@ allOf:
           contains:
             enum:
               - qcom,pcie-apq8064
-              - qcom,pcie-ipq4019
               - qcom,pcie-ipq8064
               - qcom,pcie-ipq8064v2
     then:
@@ -258,40 +256,6 @@ allOf:
           items:
             - const: core # Core reset
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-ipq4019
-    then:
-      properties:
-        clocks:
-          minItems: 3
-          maxItems: 3
-        clock-names:
-          items:
-            - const: aux # Auxiliary (AUX) clock
-            - const: master_bus # Master AXI clock
-            - const: slave_bus # Slave AXI clock
-        resets:
-          minItems: 12
-          maxItems: 12
-        reset-names:
-          items:
-            - const: axi_m # AXI master reset
-            - const: axi_s # AXI slave reset
-            - const: pipe # PIPE reset
-            - const: axi_m_vmid # VMID reset
-            - const: axi_s_xpu # XPU reset
-            - const: parf # PARF reset
-            - const: phy # PHY reset
-            - const: axi_m_sticky # AXI sticky reset
-            - const: pipe_sticky # PIPE sticky reset
-            - const: pwr # PWR reset
-            - const: ahb # AHB reset
-            - const: phy_ahb # PHY AHB reset
-
   - if:
       properties:
         compatible:
@@ -369,7 +333,6 @@ allOf:
             contains:
               enum:
                 - qcom,pcie-apq8064
-                - qcom,pcie-ipq4019
                 - qcom,pcie-ipq8064
                 - qcom,pcie-ipq8064v2
                 - qcom,pcie-ipq9574
@@ -428,7 +391,6 @@ allOf:
             enum:
               - qcom,pcie-apq8064
               - qcom,pcie-apq8084
-              - qcom,pcie-ipq4019
               - qcom,pcie-ipq8064
               - qcom,pcie-ipq8064-v2
     then:

-- 
2.51.0


