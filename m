Return-Path: <devicetree+bounces-219375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 471A6B8A752
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:58:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54D053B9253
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:58:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA14831FED1;
	Fri, 19 Sep 2025 15:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eahhOQno"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DE731D73B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:58:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758297508; cv=none; b=frKCug7r7STbZcNXDWhz1pzzxBXBwHN7YsAZaPzjweOw3FTvfBie0YZ2V+GRyOCqnMHZ2ZmqJqwJp7LMrrPzAHvUOYIzb3u8O/M133yUPCj4Zy1dP8NQBqfbY90yn11CZURY+VA8o8l9QQi+5rS9eFkTsApEoTO9hnEc9SHyIhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758297508; c=relaxed/simple;
	bh=AQJN1sqWPKdNdfpRB8nChb7U4dPNPEMlgzYPiyse1lU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=u249lolX3ijlZUlXB9Wh88usdJyNuL0TGj/OMk4On1+F2GtlJV1eRW3eDBhofwF1eAd+/CK1HPdI7ZwcdcJ2M84Ya0+DCaI4fv7O+ibzPB12jpJp1T/jN0JjNhvyWn3hKDvNnfqhvjf1ekFElL3xBQgYQUzVO564f60lqUGJ5pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eahhOQno; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3ec4d6ba0cdso1634277f8f.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:58:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758297505; x=1758902305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vS7mvhF1JO4dUjEbpDOATr6HeFKK48b7nTeLMm/UrOY=;
        b=eahhOQnotv0IR8b5m7iNCG2W+eLoQsFHl7wmGex9MAmjImhQjA2hu4WvaVm6HBPEWV
         OtGbSKf1kacd0/Yv/HF2vVre4SqSvvN5xA6S3ofmaSeNpOdi2KD/kBa5J0tmRE3jGZm+
         XZa1oN2KqOClJOXrFtXUq1OdqRIud+ajw7MAr35Ejw3Xshy0P/+BbD2kFD8PAIiRkQDd
         SJWhxXqLJ+qRcvzIoFeBAl5t3WcbuqfLvORO7q0J2HtsjYUdZf7reOTmmUeMdkL9dKAz
         Ja957l30DsBfL3naqEMKi4WQaMk1E4D3hRqwKRXTTIW1M4+5DNmE42c3GtPzQNbXJXk8
         naSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758297505; x=1758902305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vS7mvhF1JO4dUjEbpDOATr6HeFKK48b7nTeLMm/UrOY=;
        b=aOyo8g6hbRE2xOb8e47rTEAsFv9T9d4g8laCTPjlzB0M3s6WWY5B0nqfxE1B+vdzCD
         KepxUHPr71ELM2uISADKNEz+3ZVHoBJlbEPxYD8HaHKvb/Db65+vR8uTy/6cjAo0+z0P
         JuY5pLlLMtG2jFab0qRzjIQvcrkML6utbc5phWwWfr9+H4ek+dxttQzV2C4DqaLlqx5p
         LOfxS3pBuulEvQHH7IjxxmLBc92UV/Lgq3XbGLF+ADxZ8DFMEFBrI2rih94Jkj0blq04
         ZIX4hOgV4ifKNZV1I1P/PXM3Zul8DG5HXhMOZ18rXIcsgbUg/lvoV46SZd98Hp2yGw67
         Tsug==
X-Forwarded-Encrypted: i=1; AJvYcCWc30a9KM+0w9BkSYL/ldvLnakNk8r577VABP+lLqEH2d0OfQsASRaouitcLMyS8VR38iPAvuYSGWY2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4vF4sU3QX1+6DH5YIZGL4/zQG62gzrIodbbv/NcKBy9i5SBhP
	aKiewW3mMCTb49rNBiuakQLrOSvKWzwNr2zeO7ljcalQv+QoyYJHKzWlGZGnibdhCsU=
X-Gm-Gg: ASbGncusjVV7LVHA68KiwMNKHP/YxcZP0AsUvgAMLw4FG+3JqGKohhQ/eH3v2y5VwKF
	/b6QXeKIHE6y1VD6A6q8lUPH0h3u/7macYFayAKQDOb9WsjwmcWE6ATIfGtKje9Iy0npzpn8uw/
	rXplI+z3VQd1isPty15NOnn3RyA0xWDUeHSw39pzNKal5QK4Hn/2YtKQ+7e/VF3/YPAwVna5w0l
	5hsRrJEZ6aCcuOMSD7ihzrni6MeMPE9Gj/Sj8qbD5C9EwG/KMgJq9yPOvmfEQIlg3e1mU5xcfMJ
	xUpYrih3PTDLcsjYTJmG+rdhOtWR6UZdhxP7ZQD4XRm1qQYwX7awRFUFQGxZYdEgnZgtaBEsv3h
	N/cHAQC4I9xLZxWcZ5ZemM6/eDv3WUefUGa5L8pQSDg==
X-Google-Smtp-Source: AGHT+IGHpr7IbIupTqCPhLagR2/pjjAWy2NRyzBJWRNwFS3zhzcdJAYgjTcIo3v6JaXEdhyc34PL2g==
X-Received: by 2002:a05:6000:4029:b0:3eb:5245:7c1f with SMTP id ffacd0b85a97d-3ee7da56fdemr3546022f8f.2.1758297504630;
        Fri, 19 Sep 2025 08:58:24 -0700 (PDT)
Received: from vingu-cube.. ([2a01:e0a:f:6020:9dd0:62bf:d369:14ce])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee07407fa3sm8367224f8f.21.2025.09.19.08.58.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:58:23 -0700 (PDT)
From: Vincent Guittot <vincent.guittot@linaro.org>
To: chester62515@gmail.com,
	mbrugger@suse.com,
	ghennadi.procopciuc@oss.nxp.com,
	s32@nxp.com,
	bhelgaas@google.com,
	jingoohan1@gmail.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Ionut.Vicovan@nxp.com,
	larisa.grigore@nxp.com,
	Ghennadi.Procopciuc@nxp.com,
	ciprianmarian.costea@nxp.com,
	bogdan.hamciuc@nxp.com,
	Frank.li@nxp.com,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev
Cc: cassel@kernel.org
Subject: [PATCH 1/3 v2] dt-bindings: PCI: s32g: Add NXP PCIe controller
Date: Fri, 19 Sep 2025 17:58:19 +0200
Message-ID: <20250919155821.95334-2-vincent.guittot@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250919155821.95334-1-vincent.guittot@linaro.org>
References: <20250919155821.95334-1-vincent.guittot@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Describe the PCIe controller available on the S32G platforms.

Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
Co-developed-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
Signed-off-by: Bogdan-Gabriel Roman <bogdan-gabriel.roman@nxp.com>
Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
Co-developed-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
Signed-off-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
Co-developed-by: Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
Signed-off-by: Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
---
 .../devicetree/bindings/pci/nxp,s32-pcie.yaml | 131 ++++++++++++++++++
 1 file changed, 131 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml

diff --git a/Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml b/Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
new file mode 100644
index 000000000000..cabb8b86c042
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/nxp,s32-pcie.yaml
@@ -0,0 +1,131 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/nxp,s32-pcie.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP S32G2xx/S32G3xx PCIe controller
+
+maintainers:
+  - Bogdan Hamciuc <bogdan.hamciuc@nxp.com>
+  - Ionut Vicovan <ionut.vicovan@nxp.com>
+
+description:
+  This PCIe controller is based on the Synopsys DesignWare PCIe IP.
+  The S32G SoC family has two PCIe controllers, which can be configured as
+  either Root Complex or Endpoint.
+
+properties:
+  compatible:
+    oneOf:
+      - enum:
+          - nxp,s32g2-pcie     # S32G2 SoCs RC mode
+      - items:
+          - const: nxp,s32g3-pcie
+          - const: nxp,s32g2-pcie
+
+  reg:
+    maxItems: 7
+
+  reg-names:
+    items:
+      - const: dbi
+      - const: dbi2
+      - const: atu
+      - const: dma
+      - const: ctrl
+      - const: config
+      - const: addr_space
+
+  interrupts:
+    maxItems: 8
+
+  interrupt-names:
+    items:
+      - const: link-req-stat
+      - const: dma
+      - const: msi
+      - const: phy-link-down
+      - const: phy-link-up
+      - const: misc
+      - const: pcs
+      - const: tlp-req-no-comp
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - interrupts
+  - interrupt-names
+  - ranges
+  - phys
+
+allOf:
+  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
+  - $ref: /schemas/pci/pci-bus.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/phy/phy.h>
+
+    bus {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@40400000 {
+            compatible = "nxp,s32g3-pcie",
+                         "nxp,s32g2-pcie";
+            reg = <0x00 0x40400000 0x0 0x00001000>,   /* dbi registers */
+                  <0x00 0x40420000 0x0 0x00001000>,   /* dbi2 registers */
+                  <0x00 0x40460000 0x0 0x00001000>,   /* atu registers */
+                  <0x00 0x40470000 0x0 0x00001000>,   /* dma registers */
+                  <0x00 0x40481000 0x0 0x000000f8>,   /* ctrl registers */
+                  /*
+                   * RC configuration space, 4KB each for cfg0 and cfg1
+                   * at the end of the outbound memory map
+                   */
+                  <0x5f 0xffffe000 0x0 0x00002000>,
+                  <0x58 0x00000000 0x0 0x40000000>; /* 1GB EP addr space */
+            reg-names = "dbi", "dbi2", "atu", "dma", "ctrl",
+                        "config", "addr_space";
+            dma-coherent;
+            #address-cells = <3>;
+            #size-cells = <2>;
+            device_type = "pci";
+            ranges =
+                  /*
+                   * downstream I/O, 64KB and aligned naturally just
+                   * before the config space to minimize fragmentation
+                   */
+                  <0x81000000 0x0 0x00000000 0x5f 0xfffe0000 0x0 0x00010000>,
+                  /*
+                   * non-prefetchable memory, with best case size and
+                   * alignment
+                   */
+                  <0x82000000 0x0 0x00000000 0x58 0x00000000 0x7 0xfffe0000>;
+
+            bus-range = <0x0 0xff>;
+            interrupts =  <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
+                          <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "link-req-stat", "dma", "msi",
+                              "phy-link-down", "phy-link-up", "misc",
+                              "pcs", "tlp-req-no-comp";
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 0x7>;
+            interrupt-map = <0 0 0 1 &gic 0 0 GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 2 &gic 0 0 GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 3 &gic 0 0 GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+                            <0 0 0 4 &gic 0 0 GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+
+            phys = <&serdes0 PHY_TYPE_PCIE 0 0>;
+        };
+    };
-- 
2.43.0


