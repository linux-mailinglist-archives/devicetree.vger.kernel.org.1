Return-Path: <devicetree+bounces-247560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C84CC8BBB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:20:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BEC4430349F7
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 609C334A3B1;
	Wed, 17 Dec 2025 16:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ObVlEkkb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dUq2E+o9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E17346AEF
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988373; cv=none; b=s5Cu9WrEKeyURvZ4NCjxwfQfDKIpBGGy95rN+M10IciRadyeDeYKFGQjvCltlU//SmwN9PTM3Ni7sht3rbN5PiQqSLe1rO8NOuGJRNdfuxiwOrOjwPUi5svnhMsCX/hgTMtA1nhOPwOX5o9Tok8Iaxz1PGUUn7T/MlHJfexLGMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988373; c=relaxed/simple;
	bh=+ywvQ6UE8qgjXbEALCJ55zx0bbhDYknnRwzjNjSA+4A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LDbJ+jnMGXilfAwbIizanvT/JWHKVGtgPiDgqj/R+RvgAboy9E7NbjFRrOx/XkLUvQjApJ23VoFZA9XpUtOJ2pK81CkeKDbPCtUiFUoeT2l3x99WHM0YG6oxPDrKK92/xdeRzOgqtrd63PbWLY9qlezn82pfwT/nHh0pzDT/FoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ObVlEkkb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dUq2E+o9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKo0Q3329733
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ErVXByWgYsC6G+h1ZBMhZhXjmV6jJvh6/CpFoB0hUms=; b=ObVlEkkb2KPh0GuZ
	1Jn5a/Ag+ZAXR+1zBHM3k10HMPyP+WKxo7K0fgG9pROxjOJPzVKLaWPQSnDZg2d4
	vghF73rwkkEd4YIY6hek4yJ0QstPeXy0uyVn/vk6oo1moX7dpEBpEGmaYyjI8i62
	01qRaMwY9ddj45iRLeGa9eq6lssgYeOhKf0v++2xfKNo1LMx2lbRbwY0fBm4G72S
	gFT/wDq5a5PnMXKhlskszBsCeOZ1K9Vjs2WKBJejhi2OXxgqCCazSzFKrODr3y88
	KEmY2oR4Yl8kzVnAnbFgaTKRp6BFLc337kniZU+gKI0nPeUfUNjyNsuYCbukP1ch
	BB5OMg==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkj7tw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:19:28 +0000 (GMT)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-787d4af9896so83599957b3.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765988368; x=1766593168; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ErVXByWgYsC6G+h1ZBMhZhXjmV6jJvh6/CpFoB0hUms=;
        b=dUq2E+o9isjLabyh9JvyJO0TbndmNepwbAjkKGXoTVa2uPxSGxDmsLpy6owlrjmhSA
         NU5uogcbJz5ULMrpe6g9Afc4NaesrI0QYRLdikRQSQPDB0r4EArLn9ERcQ+iTm/6UCbn
         DcUCLe2E9poBib50olkRM26MZzHTmLk9Fl/K9Fe0Fj6/KsoKBtCEs6oJqS0D1RwHXYcP
         l9YHA3gQVrPqx8bY6tj2mLAWIWyMZN9FnFIVbAXmR6+lHia3caHnbUHB+XlGSDTiMyzL
         K1T9X+kN5wNaGHEzwEkwMF36PnetldgEo+4DMIdasfXWehcs/wE0nmfhjm4WFRdVLEUR
         210A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988368; x=1766593168;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ErVXByWgYsC6G+h1ZBMhZhXjmV6jJvh6/CpFoB0hUms=;
        b=d8F/CCU/DE2Sw/m1+vel6IzIRRTNHYhfi/xGKlaC9Dywkm1nBl4cWkJRPhhM0a9DaD
         CqkU4AwQL5KrOK44G/sAK7cfjOiZc65sks0JkuABBW8o0vXGX13j02SXnlq1cnapal5y
         RHjkFmc90bL0cvFWgPSwppR285dvH2Me0rhVWt9UIYzv46YOisFIxVQ/RwCjMSHyapMN
         LNAsGyr+6/cXBDy1cqDIVbTB7J6eGrbSRupkSOcyyZQ/wvEEEebm0Fa2xFrKLpYfxSpw
         CD81AxpUDvnNbQyZvtOK+D9T2EXI/0aIg/n/nidZ2DRrZXdwhmBY225W2QYfPg336JDD
         gZlw==
X-Forwarded-Encrypted: i=1; AJvYcCU3wy5Siqz77jBG41TAtXUp/N1yd+la+4QunqqhTL2zYtg2Fzc9JMMOg2wGjjHdLFdo8R1x3pVpsNVI@vger.kernel.org
X-Gm-Message-State: AOJu0YygXfkv4D11UMxqNFUV4YawA+p6QMixLhXzJxxTV72227szP83F
	3pt3fHuSCmAIvQ934kUNv9gqhrxdWyFE7Ndhh9nASLvxUpPFPkFFYaBz3ohfhFl5pNz/wNas0Fk
	rk0d6tPgYhvbLe/MUwZnM9fm3sn0gpUoMsG65E9/U3VkyOdP5Xq5wk4eMyVQycv0l
X-Gm-Gg: AY/fxX7MfoH5oCYSTivq3dc9XGesXPLNqfp23vh+HyigdGvMXTT/QyzGdF7nTcnE6+G
	X4ZaNA5nZnMxuZNnVqoGQACJdElKk89iq+ilyGUPQGQhUj967YBsO4pZ3MX2xyvqILH3ccJafCI
	iv3TYpowpGSSj+opyM9zi3OuFu+MnKkBOVc6EUnaUsvwnMEze1E28IDtc3Cv9M2qUAeRdGGd+FS
	Q3l/FuM8Qt1mtwV3rGTmOgxrKFreZO+jZeRdStZEv5VewYvMqHTZByh5xDPxjjxy6FlKJ92FzRX
	EzMSVAmp/GgtlxRKmdOjbYFFZPRT7AkVpbOge9GCj5kCFCF22PU0y6ttnK3a6HJ7AlcTrwGYf8T
	+hUWL8llLbUEmbYaEgTHf5Qf+zSPztOTJ
X-Received: by 2002:a05:690c:c52e:b0:78f:858b:95d5 with SMTP id 00721157ae682-78f858b9ae4mr59487707b3.41.1765988367988;
        Wed, 17 Dec 2025 08:19:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtqdoFVkyuP4NtTZJQC+4ZXtaNIiADfhw0hhfgEUcVhDtciAaX5ZywwwsfY7FzgUwzal6sBQ==
X-Received: by 2002:a05:690c:c52e:b0:78f:858b:95d5 with SMTP id 00721157ae682-78f858b9ae4mr59487287b3.41.1765988367386;
        Wed, 17 Dec 2025 08:19:27 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa29be92sm1987868666b.10.2025.12.17.08.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:19:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 17:19:09 +0100
Subject: [PATCH v2 03/12] dt-bindings: PCI: qcom,pcie-sdm845: Move SDM845
 to dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-pci-qcom-v2-3-873721599754@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=9814;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+ywvQ6UE8qgjXbEALCJ55zx0bbhDYknnRwzjNjSA+4A=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtf+XtEzSRUxGoHGEmLqhHOTaTAt2TXmXZaht
 RvMfx6kni+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULX/gAKCRDBN2bmhouD
 1yZ2EACIXXW63dozcZjxvVPn5sG7XaZ5ttnKNvOQwW9tlGRiN1hBNIrw6Fg/lm8pKxIkbkYIcCZ
 g+OujZFd/+ZEC5LLBGcjiINReGo9bizClZYJKyiEwHJmc3PB17vS1fdou0dlACThzLfVPKgRo7s
 GJYBA26fmr8gTc04PMqns61AUtjH+W9sKtlRlvQK3OtoxgQO8Pfz+DAkkxVRLkWXJxm+Zk4MFwS
 17ekEGt2qoYKrl2Y7vOB87QRMbi+xI4sJk2vNskHPFY7HnjnR8yF7olLT3sHF53mGrMLHvM9Sn4
 RjwJQzw/prjCSD7NHOi2+oqJ+Tfq/1rkRYlmfcJiuxevc0ZP7S2Ir5ybA+XpwU9LOC728aGEpH2
 cUGRmZX2mixU6t6DMFfVjWcVmgdZy0AQtJwZ4PUFdxWuzsOw2RAJVaQpAwswXWpZvhn1X6JDFQ5
 DKSr+a2VxsWoG4vfOcNDRbtPJ18uW8mz9SK0bUgPT5w3GX40dKw/p2jZucy6HDN+39snC/BiQ9f
 xE4bsq0SkI2RN2sRWJAbpke1oEYR2/DEd7VbrLlz0XeqV3e9Ck8EupThnyyUGAHC6h4/sgqOIOH
 Jjx1zxH2ZbFxkqPKKuU8TR8/hhFjHyzs4LZMsdT6yZWH+iq14PEyjGcBkSVOjvCQFxRrQ5PUH8H
 pRmANu3wsQruPlg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: XPGLLlXqsWh1cOUtTm0gusHu6tqXsObL
X-Proofpoint-ORIG-GUID: XPGLLlXqsWh1cOUtTm0gusHu6tqXsObL
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=6942d810 cx=c_pps
 a=0mLRTIufkjop4KoA/9S1MA==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=d0cN-5R3_aeRheYbsGEA:9 a=QEXdDO2ut3YA:10 a=WgItmB6HBUc_1uVUp3mg:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyOCBTYWx0ZWRfX4/fHSCWrdky0
 V9+jt1OAR0+cyZyjPm+g910YBoI992WSBxcMtf0TQI7sAEmrfPXhNHmo3Jv01ieIknOHXXoAqvU
 QHYqRNFyuzcOOPTmd2RgqgtV1LXJkvm3ZYm17Nvw7LFvrVePWtee/Ogih1ISkXson4JdXx3x/0D
 DCXlVtXvwTcB/Ataj/Hghtmiu6ZNfFyOBYy8oqYii1Nb/bUgrJrbpf+GlxAycgvv+A5zdwUYN41
 b50st7QL7KKOUbD/cR7YgcneJgRZmhI6NNRAYOMVas6sqCqaYLcYLudBldgeOW0nl8pZ6qOPSfQ
 Dh79Qc5eHAsdemMeU02jUMSl5kmUKAP+kOU58xyif1aCjMU446zHdm+HMx+mYAeOr09UwmQZf8k
 NzrereuQlOtYI929IIpdmP3/Bqy3pg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170128

Move SDM845 PCIe devices from qcom,pcie.yaml binding to a dedicated file
to make reviewing and maintenance easier.

New schema is equivalent to the old one with few changes:
 - Adding a required compatible, which is actually redundant.
 - Drop the really obvious comments next to clock/reg/reset-names items.
 - Expecting eight MSI interrupts and one global, instead of only one,
   which was incomplete hardware description.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/pci/qcom,pcie-sdm845.yaml  | 190 +++++++++++++++++++++
 .../devicetree/bindings/pci/qcom,pcie.yaml         |  46 -----
 2 files changed, 190 insertions(+), 46 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sdm845.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sdm845.yaml
new file mode 100644
index 000000000000..1ec9e4f3ff57
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sdm845.yaml
@@ -0,0 +1,190 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/qcom,pcie-sdm845.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm SDM845 PCI Express Root Complex
+
+maintainers:
+  - Bjorn Andersson <andersson@kernel.org>
+  - Manivannan Sadhasivam <mani@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - qcom,pcie-sdm845
+
+  reg:
+    minItems: 4
+    maxItems: 5
+
+  reg-names:
+    minItems: 4
+    items:
+      - const: parf
+      - const: dbi
+      - const: elbi
+      - const: config
+      - const: mhi
+
+  clocks:
+    minItems: 7
+    maxItems: 8
+
+  clock-names:
+    minItems: 7
+    items:
+      - const: pipe
+      - const: aux
+      - const: cfg
+      - const: bus_master # Master AXI clock
+      - const: bus_slave # Slave AXI clock
+      - const: slave_q2a
+      - enum: [ ref, tbu ]
+      - const: tbu
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
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: pci
+
+required:
+  - power-domains
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
+    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
+    #include <dt-bindings/gpio/gpio.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@1c00000 {
+            compatible = "qcom,pcie-sdm845";
+            reg = <0x0 0x01c00000 0x0 0x2000>,
+                  <0x0 0x60000000 0x0 0xf1d>,
+                  <0x0 0x60000f20 0x0 0xa8>,
+                  <0x0 0x60100000 0x0 0x100000>,
+                  <0x0 0x01c07000 0x0 0x1000>;
+            reg-names = "parf", "dbi", "elbi", "config", "mhi";
+            ranges = <0x01000000 0x0 0x00000000 0x0 0x60200000 0x0 0x100000>,
+                     <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0xd00000>;
+
+            device_type = "pci";
+            linux,pci-domain = <0>;
+            bus-range = <0x00 0xff>;
+            num-lanes = <1>;
+
+            #address-cells = <3>;
+            #size-cells = <2>;
+
+            clocks = <&gcc GCC_PCIE_0_PIPE_CLK>,
+                     <&gcc GCC_PCIE_0_AUX_CLK>,
+                     <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
+                     <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
+                     <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
+                     <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>,
+                     <&gcc GCC_AGGRE_NOC_PCIE_TBU_CLK>;
+            clock-names = "pipe",
+                          "aux",
+                          "cfg",
+                          "bus_master",
+                          "bus_slave",
+                          "slave_q2a",
+                          "tbu";
+
+            interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
+                         <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "msi0",
+                              "msi1",
+                              "msi2",
+                              "msi3",
+                              "msi4",
+                              "msi5",
+                              "msi6",
+                              "msi7",
+                              "global";
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 0x7>;
+            interrupt-map = <0 0 0 1 &intc 0 0 GIC_SPI 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
+                            <0 0 0 2 &intc 0 0 GIC_SPI 150 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
+                            <0 0 0 3 &intc 0 0 GIC_SPI 151 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
+                            <0 0 0 4 &intc 0 0 GIC_SPI 152 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
+
+            iommu-map = <0x0 &apps_smmu 0x1c10 0x1>,
+                        <0x100 &apps_smmu 0x1c11 0x1>,
+                        <0x200 &apps_smmu 0x1c12 0x1>,
+                        <0x300 &apps_smmu 0x1c13 0x1>,
+                        <0x400 &apps_smmu 0x1c14 0x1>,
+                        <0x500 &apps_smmu 0x1c15 0x1>,
+                        <0x600 &apps_smmu 0x1c16 0x1>,
+                        <0x700 &apps_smmu 0x1c17 0x1>,
+                        <0x800 &apps_smmu 0x1c18 0x1>,
+                        <0x900 &apps_smmu 0x1c19 0x1>,
+                        <0xa00 &apps_smmu 0x1c1a 0x1>,
+                        <0xb00 &apps_smmu 0x1c1b 0x1>,
+                        <0xc00 &apps_smmu 0x1c1c 0x1>,
+                        <0xd00 &apps_smmu 0x1c1d 0x1>,
+                        <0xe00 &apps_smmu 0x1c1e 0x1>,
+                        <0xf00 &apps_smmu 0x1c1f 0x1>;
+
+            power-domains = <&gcc PCIE_0_GDSC>;
+
+            phys = <&pcie0_phy>;
+            phy-names = "pciephy";
+
+            resets = <&gcc GCC_PCIE_0_BCR>;
+            reset-names = "pci";
+
+            perst-gpios = <&tlmm 35 GPIO_ACTIVE_LOW>;
+            wake-gpios = <&tlmm 134 GPIO_ACTIVE_HIGH>;
+
+            vddpe-3v3-supply = <&pcie0_3p3v_dual>;
+
+            pcie@0 {
+                device_type = "pci";
+                reg = <0x0 0x0 0x0 0x0 0x0>;
+                bus-range = <0x01 0xff>;
+
+                #address-cells = <3>;
+                #size-cells = <2>;
+                ranges;
+            };
+        };
+    };
diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
index 0e6d11791eec..0a3ce5a46372 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
@@ -30,7 +30,6 @@ properties:
           - qcom,pcie-ipq9574
           - qcom,pcie-msm8996
           - qcom,pcie-qcs404
-          - qcom,pcie-sdm845
       - items:
           - enum:
               - qcom,pcie-ipq5332
@@ -194,7 +193,6 @@ allOf:
             enum:
               - qcom,pcie-apq8084
               - qcom,pcie-msm8996
-              - qcom,pcie-sdm845
     then:
       properties:
         reg:
@@ -514,49 +512,6 @@ allOf:
             - const: pwr # PWR reset
             - const: ahb # AHB reset
 
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,pcie-sdm845
-    then:
-      oneOf:
-          # Unfortunately the "optional" ref clock is used in the middle of the list
-        - properties:
-            clocks:
-              minItems: 8
-              maxItems: 8
-            clock-names:
-              items:
-                - const: pipe # PIPE clock
-                - const: aux # Auxiliary clock
-                - const: cfg # Configuration clock
-                - const: bus_master # Master AXI clock
-                - const: bus_slave # Slave AXI clock
-                - const: slave_q2a # Slave Q2A clock
-                - const: ref # REFERENCE clock
-                - const: tbu # PCIe TBU clock
-        - properties:
-            clocks:
-              minItems: 7
-              maxItems: 7
-            clock-names:
-              items:
-                - const: pipe # PIPE clock
-                - const: aux # Auxiliary clock
-                - const: cfg # Configuration clock
-                - const: bus_master # Master AXI clock
-                - const: bus_slave # Slave AXI clock
-                - const: slave_q2a # Slave Q2A clock
-                - const: tbu # PCIe TBU clock
-      properties:
-        resets:
-          maxItems: 1
-        reset-names:
-          items:
-            - const: pci # PCIe core reset
-
   - if:
       not:
         properties:
@@ -598,7 +553,6 @@ allOf:
               - qcom,pcie-ipq8074-gen3
               - qcom,pcie-msm8996
               - qcom,pcie-msm8998
-              - qcom,pcie-sdm845
     then:
       oneOf:
         - properties:

-- 
2.51.0


