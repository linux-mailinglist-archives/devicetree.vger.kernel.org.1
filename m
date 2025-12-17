Return-Path: <devicetree+bounces-247566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87983CC8C2D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23A5A3058FBD
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:21:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7181434D4EA;
	Wed, 17 Dec 2025 16:19:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bwiV23b2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R9vuH8jZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD9D34CFB8
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988385; cv=none; b=SbH8vlo9j5w53E/IHVnByx4Yscke1Y2+VO3jIncpNOCPkNz9Hm1ofOGFWAtg384RNX4W7M2e0zAABHHeNh9SpEjgg02jK0+SkzifhC80ZUgYOpvRRELNrxtUSQFl21wZT4JhPStgB2bPcqbUmdhE+r9x16EhABarrR5mYirMKAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988385; c=relaxed/simple;
	bh=2yHNq+A8EbEEwQw6b4BOZaAByKFV8pbwjkYxT+gl/j4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gpVchRg/j2n5qa/FTG/JOKeaeCDV0WGVgnGfwbLnKitlukbxa+CAuDb+WEDSzk9HFrPKcfv97TJqnpZ2mZfxI7AUUaOjulnt4VSHPTtpA4HSzxr+9Ar0eaRpu71fp1s0sS4A/M693I7kSeLMgM0nSbi2c9DdB2MgvUsp4hFcVWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bwiV23b2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R9vuH8jZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL4Tj3049376
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KdMqkp7j+UNmZFoGwgZFjxLirfOk2yTnZ7OFrV0YjIc=; b=bwiV23b2NPPwUezj
	V7etyRblY/Fq4RjD3ldj1Qlsrq503BBOEVazKpNpgA0W+Ax7qluL/fxjAcQUurvf
	dJjayGFR2QhqB3fwVTdmRx7fkiPHBgDNtV6Atq7hcEMQP3kQggAsZB9bY4YbUYP2
	/dY02zLrRWlTbLLYq0goshdh7omSMfxOI95+0VzhwxIHS6bAk2dvSEzS0JitnDIB
	VC+2KkPeSyoK125i/jO/iMP2Jy4PtvG5jqVL6hv4eHZTCY9IO/+TBbbOcZpUanG0
	FjDstJwQw58slvng0mU79b4ZdIlnqC8GfdQnDCjBkNf3rFnuQE0VvQzVfaJMRHHE
	SpdYaA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3jgqaprd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee0193a239so61036231cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:19:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765988382; x=1766593182; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KdMqkp7j+UNmZFoGwgZFjxLirfOk2yTnZ7OFrV0YjIc=;
        b=R9vuH8jZJJ9ztw+5eXeHYm+/zs2qr3FxJRgqaFyMSptACcC2AiXZu3Apd65r7FB7jA
         XiOTVE/msywgWLVEhV4+cEyYAokqP6Y1NL4mOjn8VJePEVclyia0DcXKGeXl6QsuY3n3
         44d7z99isgJNLqA3hj7LJUL1w9fMktZKq86MYqXjcL7qP5stOynP+WIT3KkbxY3wxhdD
         rCR6jtsoRqpeFAQEUJuxKbN9Hjzw7zFLJB26lhXkB0Dkg93pteTFhZ75Zlq5EYgMqeB5
         LT6XublG7/cvVw81UVJNjRxciFbjxAm5GgnwIRC3fHXpGeuCZpj14bMMz9ongWURWBZD
         pKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988382; x=1766593182;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KdMqkp7j+UNmZFoGwgZFjxLirfOk2yTnZ7OFrV0YjIc=;
        b=adbtj+Pvz5Sei3hJUb7Dl9PDcSa2Ilczmhrm60nb4y6z8RKE1jY98vCmsKPGL4lzor
         i1LLKdKDyVs0QiRfchM/LdrwqhlNwYMyNw5hGO4C3yerKO38fifQGFs6eHmEFI64YLcL
         GU7jGbSiizubw1Bf0pJvg9BdDM2Tite3fiPQArUD8krgABgDvrXisEbEgyhF5ACFOtG0
         ONWQ1BTytMrrJKprCadGlXY8bgJW/mycygJFsPoly0fNsu2NvYXMWGyWRuddrsp6fFVm
         BNmclhiitOdlUWomW3SEKZFbE74ue8m0vm9xB/lPlgoNmmBnlV7rb0HbHkwhUTrMcY+x
         ApNg==
X-Forwarded-Encrypted: i=1; AJvYcCX2VIzjrd8qQz9DNJEDTQcTAxJXCEx97F6Fosned9jNWfLEIabcjntE0FYz384xXTBqJCPti/qb47/B@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/ykhEu5vmyAsJ32tkdjTKey8F9G5dd+F9JiRcwqRidogB9dOz
	m9xFIWDLdSkWTZj4XpjJ+EyBsEUjET9BS0uzV3t/JGxWicbgz47GkaclcHVrrVE6JMjnv+kMRii
	dYPv3+/hNGGigy3ZJwtV61zFBwkS+wx1y30ic+q3G5rqE3YrPzlYpd7MVlqrEOXLh
X-Gm-Gg: AY/fxX4riO4LkvPNtQv0R8Wcrm3CyekevJWKan1KHHX9e2lQ8GVN6fHDv6lGxHWExp3
	zBfE32wJgPr9iObrXJmXBMicsY6Zt33G9uEcsWXEMyn7Zry+eC1Dkzqw92+ruM6QM3uMWPLl6OA
	vo41uAiSnXDdPQ1csOt/FnpYalMB82UMXitUMPUfaG0RDSkw3pKChC69Zsp6uEsZIK9/y8MTDtZ
	wJdAmJq0E8oDRxT1m0TTcc8mzZxg6SrvEZDCclTcPVIbXXJsVy6BhdslziIQ0Wo0ncaCEUVwq0d
	8tS7A8/ja7ZO4E+P7VXqg8ZBxkeB1lDyqOVN64NGZ1lxeOHbKrHBVvKBrcNNtd0jJnqwFQ3EwsP
	cPRw2M5tCNKMVQqkbJr8gQXtb4/t9+jQe
X-Received: by 2002:ac8:7f03:0:b0:4ed:e337:2e68 with SMTP id d75a77b69052e-4f1d066fd5bmr232308111cf.81.1765988381766;
        Wed, 17 Dec 2025 08:19:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZggKhCF+fCoATF9m3KZ7X2nrflQRDVmVQmmPVOo4IuApG9g8GPhZ8z6hd1r5bxclop4dkwg==
X-Received: by 2002:ac8:7f03:0:b0:4ed:e337:2e68 with SMTP id d75a77b69052e-4f1d066fd5bmr232307671cf.81.1765988381245;
        Wed, 17 Dec 2025 08:19:41 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29be92sm1987868666b.10.2025.12.17.08.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:19:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 17:19:15 +0100
Subject: [PATCH v2 09/12] dt-bindings: PCI: qcom,pcie-ipq9574: Move IPQ9574
 to dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-pci-qcom-v2-9-873721599754@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9948;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=2yHNq+A8EbEEwQw6b4BOZaAByKFV8pbwjkYxT+gl/j4=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtgEpWwoONQMmmr4QLBb31eFmw0CEb3T/qjhC
 MYFWL+KjWyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULYBAAKCRDBN2bmhouD
 12cRD/94ty5auu057eYabeIUTwK6A/pyY8k3KnX27YS15spf+DlYRh87xkQEuI4VkYSdJkNgWkg
 YdYpPub9bh8fDJK0k8h0XFa8+yHMsTWdki71K0sa7nbQZAk7IaSdgpd6wLrf86RT8Qo8lAyr198
 yBLkQOC4C6gpkjwxSANeqAa1I9JjZzmx5d+96MGjaUqLX5vkL/p+hd5648ENKt7Xw2J75uSz0cw
 R3qjjyBahTKYShTeyOvqTzgSPcHXt5Ky/DWJG2e3X4flzryXewJMRF7fi2sdRo2IT1U6NfFBwYI
 nDc73Q4HfvT8tnxuiKvK4HltiZHA6vaCjbzYJrijpbEYVC47xnUMH51+F1uDKQK74RohWIcIXJ/
 rEWTHrfRcoseylsyePnYCuCBNEvewvkFOciKNHScEux8JStIn2PFzNBwB4bQRqQhPtf5S+auXEE
 mJG2/YBulRk/0v+pRnBlyQ6hhPQ3ms9VWHbNOgYh+RLBD1AKfYJfCHZ1C4RHwUSEOYV/FGwhYC+
 iLUr1OhVngakSwpw4dgpkMJZPd3noJp4kpVOBKd/mlixg8CUSxzO5HS66SpJ46WKPL1nsAxFXvP
 xBKyLn4DIUaIyLSOy7eYfP/u33cNaGkTHKmhf1sXFd3A5FoHDCT5UmM3vbwSB6JWCUITO9xs1rP
 J3EafGnzZO1UCZQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=VLjQXtPX c=1 sm=1 tr=0 ts=6942d81e cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=d0cN-5R3_aeRheYbsGEA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyOCBTYWx0ZWRfXyWo/ATLTLamL
 4TpqPhmOMykwTakMLIgJn9ZCXVADC7EnbcpGtob5YY39bu0iq4FBUSWT1BiFqR0ocCjb2S2oel2
 zELGJ/NX36lBp2/EJRPAkaE05B7PCaxibFZIKkPTxNupt8Jy1aOAO86tb/t73t7zjRx32b1sgSq
 2kCC2GvCVQxABHNbS4FPb1oWRW06PSgwCirDJBw688rORvYprFRyzdHOqgUQ2doIIWswDa0E9X3
 cbksLsiZQ6azTT7Cqe59YcrHAzQ1kaGBqTggEiI9qFaRu1Ko1CQQs2oAIn9bBo1Itx4r6U7jGYE
 rrowe7pgNjLuy+oEohtcAD4MW41f27cEoQ3UM/Ya3PiG1AXArvt3vWiUDFjvCjYCpl8teiSNfLW
 +OdlP3zR3v4ad3/XGzGhqDmRBIc48w==
X-Proofpoint-ORIG-GUID: JrBb6mOtM9gH2tlW2LCv8VpcXSIkJXsz
X-Proofpoint-GUID: JrBb6mOtM9gH2tlW2LCv8VpcXSIkJXsz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170128

Move IPQ9574 and compatible PCIe devices from qcom,pcie.yaml binding to
a dedicated file to make reviewing and maintenance easier.

New schema is equivalent to the old one with few changes:
 - Adding a required compatible, which is actually redundant.
 - Drop the really obvious comments next to clock/reg/reset-names items.
 - Make last "reg" entry "mhi" a required one, because all in-tree DTS
   were updated to include it.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-ipq9574.yaml | 183 +++++++++++++++++++++
 .../devicetree/bindings/pci/qcom,pcie.yaml         |  77 ---------
 2 files changed, 183 insertions(+), 77 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
new file mode 100644
index 000000000000..4be342cc04e1
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
@@ -0,0 +1,183 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-ipq9574.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm IPQ9574 PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - qcom,pcie-ipq9574
+      - items:
+          - enum:
+              - qcom,pcie-ipq5332
+              - qcom,pcie-ipq5424
+          - const: qcom,pcie-ipq9574
+
+  reg:
+    maxItems: 6
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: elbi
+      - const: atu
+      - const: parf
+      - const: config
+      - const: mhi
+
+  clocks:
+    maxItems: 6
+
+  clock-names:
+    items:
+      - const: axi_m # AXI Master clock
+      - const: axi_s # AXI Slave clock
+      - const: axi_bridge
+      - const: rchng
+      - const: ahb
+      - const: aux
+
+  interrupts:
+    minItems: 8
+    maxItems: 9
+
+  interrupt-names:
+    minItems: 8
+    items:
+      - const: msi0
+      - const: msi1
+      - const: msi2
+      - const: msi3
+      - const: msi4
+      - const: msi5
+      - const: msi6
+      - const: msi7
+      - const: global
+
+  resets:
+    maxItems: 8
+
+  reset-names:
+    items:
+      - const: pipe
+      - const: sticky # Core sticky reset
+      - const: axi_s_sticky # AXI Slave Sticky reset
+      - const: axi_s # AXI slave reset
+      - const: axi_m_sticky # AXI Master Sticky reset
+      - const: axi_m # AXI master reset
+      - const: aux
+      - const: ahb
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
+    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interconnect/qcom,ipq9574.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
+
+    pcie@10000000 {
+        compatible = "qcom,pcie-ipq9574";
+        reg = <0x10000000 0xf1d>,
+              <0x10000f20 0xa8>,
+              <0x10001000 0x1000>,
+              <0x000f8000 0x4000>,
+              <0x10100000 0x1000>,
+              <0x000fe000 0x1000>;
+        reg-names = "dbi",
+                "elbi",
+                "atu",
+                "parf",
+                "config",
+                "mhi";
+        ranges = <0x01000000 0x0 0x00000000 0x10200000 0x0 0x100000>,
+                 <0x02000000 0x0 0x10300000 0x10300000 0x0 0x7d00000>;
+
+        device_type = "pci";
+        linux,pci-domain = <1>;
+        bus-range = <0x00 0xff>;
+        num-lanes = <1>;
+        #address-cells = <3>;
+        #size-cells = <2>;
+
+        clocks = <&gcc GCC_PCIE1_AXI_M_CLK>,
+                 <&gcc GCC_PCIE1_AXI_S_CLK>,
+                 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>,
+                 <&gcc GCC_PCIE1_RCHNG_CLK>,
+                 <&gcc GCC_PCIE1_AHB_CLK>,
+                 <&gcc GCC_PCIE1_AUX_CLK>;
+        clock-names = "axi_m",
+                      "axi_s",
+                      "axi_bridge",
+                      "rchng",
+                      "ahb",
+                      "aux";
+
+        interconnects = <&gcc MASTER_ANOC_PCIE1 &gcc SLAVE_ANOC_PCIE1>,
+                        <&gcc MASTER_SNOC_PCIE1 &gcc SLAVE_SNOC_PCIE1>;
+        interconnect-names = "pcie-mem", "cpu-pcie";
+
+        interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 28 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
+                     <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "msi0",
+                          "msi1",
+                          "msi2",
+                          "msi3",
+                          "msi4",
+                          "msi5",
+                          "msi6",
+                          "msi7";
+
+        #interrupt-cells = <1>;
+        interrupt-map-mask = <0 0 0 0x7>;
+        interrupt-map = <0 0 0 1 &intc 0 GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>,
+                        <0 0 0 2 &intc 0 GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
+                        <0 0 0 3 &intc 0 GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>,
+                        <0 0 0 4 &intc 0 GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+
+        resets = <&gcc GCC_PCIE1_PIPE_ARES>,
+                 <&gcc GCC_PCIE1_CORE_STICKY_ARES>,
+                 <&gcc GCC_PCIE1_AXI_S_STICKY_ARES>,
+                 <&gcc GCC_PCIE1_AXI_S_ARES>,
+                 <&gcc GCC_PCIE1_AXI_M_STICKY_ARES>,
+                 <&gcc GCC_PCIE1_AXI_M_ARES>,
+                 <&gcc GCC_PCIE1_AUX_ARES>,
+                 <&gcc GCC_PCIE1_AHB_ARES>;
+        reset-names = "pipe",
+                      "sticky",
+                      "axi_s_sticky",
+                      "axi_s",
+                      "axi_m_sticky",
+                      "axi_m",
+                      "aux",
+                      "ahb";
+
+        phys = <&pcie1_phy>;
+        phy-names = "pciephy";
+
+        perst-gpios = <&tlmm 26 GPIO_ACTIVE_LOW>;
+        wake-gpios = <&tlmm 27 GPIO_ACTIVE_LOW>;
+    };
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 1ff63d7e772a..5af56911d204 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -22,13 +22,7 @@ properties:
           - qcom,pcie-apq8084
           - qcom,pcie-ipq8064
           - qcom,pcie-ipq8064-v2
-          - qcom,pcie-ipq9574
           - qcom,pcie-msm8996
-      - items:
-          - enum:
-              - qcom,pcie-ipq5332
-              - qcom,pcie-ipq5424
-          - const: qcom,pcie-ipq9574
       - items:
           - const: qcom,pcie-msm8998
           - const: qcom,pcie-msm8996
@@ -153,27 +147,6 @@ allOf:
             - const: parf # Qualcomm specific registers
             - const: config # PCIe configuration space
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-ipq9574
-    then:
-      properties:
-        reg:
-          minItems: 5
-          maxItems: 6
-        reg-names:
-          minItems: 5
-          items:
-            - const: dbi # DesignWare PCIe registers
-            - const: elbi # External local bus interface registers
-            - const: atu # ATU address space
-            - const: parf # Qualcomm specific registers
-            - const: config # PCIe configuration space
-            - const: mhi # MHI registers
-
   - if:
       properties:
         compatible:
@@ -277,55 +250,6 @@ allOf:
         resets: false
         reset-names: false
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-ipq9574
-    then:
-      properties:
-        clocks:
-          minItems: 6
-          maxItems: 6
-        clock-names:
-          items:
-            - const: axi_m # AXI Master clock
-            - const: axi_s # AXI Slave clock
-            - const: axi_bridge
-            - const: rchng
-            - const: ahb
-            - const: aux
-
-        resets:
-          minItems: 8
-          maxItems: 8
-        reset-names:
-          items:
-            - const: pipe # PIPE reset
-            - const: sticky # Core Sticky reset
-            - const: axi_s_sticky # AXI Slave Sticky reset
-            - const: axi_s # AXI Slave reset
-            - const: axi_m_sticky # AXI Master Sticky reset
-            - const: axi_m # AXI Master reset
-            - const: aux # AUX Reset
-            - const: ahb # AHB Reset
-
-        interrupts:
-          minItems: 8
-        interrupt-names:
-          minItems: 8
-          items:
-            - const: msi0
-            - const: msi1
-            - const: msi2
-            - const: msi3
-            - const: msi4
-            - const: msi5
-            - const: msi6
-            - const: msi7
-            - const: global
-
   - if:
       not:
         properties:
@@ -335,7 +259,6 @@ allOf:
                 - qcom,pcie-apq8064
                 - qcom,pcie-ipq8064
                 - qcom,pcie-ipq8064v2
-                - qcom,pcie-ipq9574
     then:
       required:
         - power-domains

-- 
2.51.0


