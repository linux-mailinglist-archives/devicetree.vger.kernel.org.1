Return-Path: <devicetree+bounces-219537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 709C0B8C6D5
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 13:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26D297C8305
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 11:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BF82FCBF1;
	Sat, 20 Sep 2025 11:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HsZNkR+H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85BF2FC88C
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 11:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758368478; cv=none; b=jDoT/2bTj3Z/Su6XDuQyruoErD2vEUsry0OkxgXvZzyUcXmpbGc4zH0smGOYEDBlXzVVDte1s89Qeo2mf8N6ap1hKwLqck8WeX+kw8CA9q7vYOMBuvafq6F0d0vAd/hGtzQ0UyAF5dPyYchr3lQ8P8Ccq0wWOfRQ+GivStjmthE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758368478; c=relaxed/simple;
	bh=GnjVrruu4NIpmKkRh3M9LGcKhe9OvXD78CG7RJp9kiw=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=b/UChU5f1z7XlukRf+v5pBp3avf383anOKFb2KaaXFK6myaoYv6IKqFQuNcfIbZCdmO3PgJNRmH0gNCYphrdqfhmLCKE3o36KeW+gmskVOQ/nHj3SNtdzMi1xwEltgABh+PQA+pXtMoqi7e17oLoW/ycutixbEeyT0gB9TXFrww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HsZNkR+H; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-468973c184bso7711345e9.3
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 04:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758368475; x=1758973275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hlte/xdFQ20rDApChCw7zZxPwoZLjNm49RujG5Uk/QU=;
        b=HsZNkR+HnTPRNf4MnqANiu57jcWbSxaMpAkIUTBZrSG1iYLmo+aORSPejbs+C3U5dt
         KiPDYPbRYA80GBpJJIlQKg0egPDv8Z+KfVpZB/H7xsuqNeMgCrZ0tw87Qb/02fGP4Bt0
         TEVnyFhL9dOhW+y5+duoWyg5uH64W606vAnVgIySio5gq5EDcL8LCcYNpPuYK5sCC+Za
         SyVCgabCqfB0QnZDW8ruEMVKTue7hnhNVfqxmGUDo8ZwiDeKGndnMtuWhq57YIlXLoUC
         NtoRj5EfS3dES4BJczP2U3isBiKXXjZDBccjwRjZ3SK9E6u3716jqyCf9hYaKKQ7Yau/
         WCzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758368475; x=1758973275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hlte/xdFQ20rDApChCw7zZxPwoZLjNm49RujG5Uk/QU=;
        b=rv2NhgdCtEgNnSPGyUOy/LBnjb0C4hHd5DHp5cjBKOnrQm5OjdlvSZjI99JjFum2hb
         emsJdl1Y08F5rD9IGCrVyjPRQrRjKSOT/KZny9yoyvDN2eR4K7SEpA/RP4RcZWgJAPMV
         pUy0ZpcjjR4ERden5DyFzXJ1aW+CCXgC8RMV+HgcOe0bSiYjsY1Yil4Ke4tCASUC+ABE
         KLeiPxdhDGW4Vwh42a/85EaJKNZ7+ipyCA8zSOr+bZDl9NorcFPA1DngTGD65QN3By6/
         4bwgu1qbF4/WECethQN/KuLBxcUiE3onbsfTXKW6R3F034I1EB4UxicKAjCuri+/kfEH
         gTvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpuiouMUe8twyXTLRee0eXInaMvHLlFlxwAP8Hc88qqSY5UF+F34OA0g/pWzjAYIVbBVkF3KaVOv1/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywkp1cJ3x7txm+3clpIbrGjEnOcnzDzMsOvPvLjpDy8pbj7qRG+
	+ZMRGbRKEJ4gtuoZAQwkcfXeQzWDD8ZUIyHWF0cLsFgfBMHgAfi5BH2E
X-Gm-Gg: ASbGncsfvFd3+5Z0G/YE1WNztvwsu5HBPgFpp3vVUlNtIsViOyErQrs+zj6lyb0CZKT
	C8jM7Zyd7l5JFmpIMPCzHflqplYOUnvITJvoyXaVWOnQUc06xKq9rNs/zWOL7kkZs+QMXSJ5X9P
	1AZTi7N8USqhns4RwQJvBTgJjOE7EWER+9kTJCzKnMB9GdRir+I08IA/wtvPFWoyohgEXGzk9Zt
	Lwvxr30ayhT2bLheMBpntko1envuQMXBLYK2MbKXQnDWf7Q1FvQyr3aDvdhnYtTfrJ7Xz/aUUxf
	0nDwpmHIMZhE7uf9vZUsyJtdSWutWBD8zbHW+c0g4RSY+ZY3N/I0uA59nV0T/beNFj4efkfI+L2
	3cJvDd5BvjUWsHhDStOH7+WpgwUsSARfu96Q5eAlTuZ3o8CvvjRKa3AFdGpTJK5w8HMu654c=
X-Google-Smtp-Source: AGHT+IH5kAD2sV8JqATkM/kJOCATJRBHmfxFLBLVdZOvAKJbVuLOXp5+JmIJiclyzZmzO6hm9RRH8w==
X-Received: by 2002:a05:600c:c162:b0:45d:e110:e673 with SMTP id 5b1f17b1804b1-467e63be4d0mr58650795e9.4.1758368474689;
        Sat, 20 Sep 2025 04:41:14 -0700 (PDT)
Received: from Ansuel-XPS24 (host-95-249-236-54.retail.telecomitalia.it. [95.249.236.54])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4613e754140sm161724365e9.21.2025.09.20.04.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 04:41:14 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: PCI: mediatek: Add support for Airoha AN7583
Date: Sat, 20 Sep 2025 13:41:02 +0200
Message-ID: <20250920114103.16964-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250920114103.16964-1-ansuelsmth@gmail.com>
References: <20250920114103.16964-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Introduce Airoha AN7583 SoC compatible in mediatek PCIe controller
binding.

Similar to GEN3, the Airoha AN7583 GEN2 PCIe controller require the
PBUS csr property to permit the correct functionality of the PCIe
controller.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 .../bindings/pci/mediatek-pcie.yaml           | 113 ++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
index f6c391c4add2..77fd4907b134 100644
--- a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
@@ -20,6 +20,7 @@ properties:
       - items:
           - const: airoha,en7523-pcie
           - const: mediatek,mt7622-pcie
+      - const: airoha,an7583-pcie
 
   reg:
     minItems: 1
@@ -62,6 +63,17 @@ properties:
   power-domains:
     maxItems: 1
 
+  mediatek,pbus-csr:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: phandle to pbus-csr syscon
+          - description: offset of pbus-csr base address register
+          - description: offset of pbus-csr base address mask register
+    description:
+      Phandle with two arguments to the syscon node used to detect if
+      a given address is accessible on PCIe controller.
+
   '#interrupt-cells':
     const: 1
 
@@ -146,6 +158,8 @@ allOf:
             - const: pcie-phy1
             - const: pcie-phy2
 
+        mediatek,pbus-csr: false
+
       required:
         - resets
         - reset-names
@@ -186,6 +200,8 @@ allOf:
           items:
             - enum: [ pcie-phy0, pcie-phy1 ]
 
+        mediatek,pbus-csr: false
+
       required:
         - interrupts
         - interrupt-names
@@ -228,6 +244,8 @@ allOf:
 
         phy-names: false
 
+        mediatek,pbus-csr: false
+
       required:
         - interrupts
         - interrupt-names
@@ -271,6 +289,8 @@ allOf:
           items:
             - enum: [ pcie-phy0, pcie-phy1 ]
 
+        mediatek,pbus-csr: false
+
       required:
         - interrupts
         - interrupt-names
@@ -308,10 +328,50 @@ allOf:
 
         power-domain: false
 
+        mediatek,pbus-csr: false
+
+      required:
+        - interrupts
+        - interrupt-names
+        - interrupt-controller
+
+  - if:
+      properties:
+        compatible:
+          const: airoha,an7583-pcie
+    then:
+      properties:
+        reg:
+          maxItems: 1
+
+        reg-names:
+          const: port1
+
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          const: sys_ck1
+
+        reset:
+          maxItems: 1
+
+        reset-names:
+          const: pcie-rst1
+
+        phys:
+          maxItems: 1
+
+        phy-names:
+          const: pcie-phy1
+
+        power-domain: false
+
       required:
         - interrupts
         - interrupt-names
         - interrupt-controller
+        - mediatek,pbus-csr
 
 unevaluatedProperties: false
 
@@ -562,3 +622,56 @@ examples:
             };
         };
     };
+
+  # AN7583
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/en7523-clk.h>
+
+    soc_3 {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        pcie@1fa92000 {
+            compatible = "airoha,an7583-pcie";
+            device_type = "pci";
+            linux,pci-domain = <1>;
+            #address-cells = <3>;
+            #size-cells = <2>;
+
+            reg = <0x0 0x1fa92000 0x0 0x1670>;
+            reg-names = "port1";
+
+            clocks = <&scuclk EN7523_CLK_PCIE>;
+            clock-names = "sys_ck1";
+
+            phys = <&pciephy>;
+            phy-names = "pcie-phy1";
+
+            ranges = <0x02000000 0 0x24000000 0x0 0x24000000 0 0x4000000>;
+
+            resets = <&scuclk>; /* AN7583_PCIE1_RST */
+            reset-names = "pcie-rst1";
+
+            mediatek,pbus-csr = <&pbus_csr 0x8 0xc>;
+
+            interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+            interrupt-names = "pcie_irq";
+            bus-range = <0x00 0xff>;
+            #interrupt-cells = <1>;
+            interrupt-map-mask = <0 0 0 7>;
+            interrupt-map = <0 0 0 1 &pcie_intc1 0>,
+                            <0 0 0 2 &pcie_intc1 1>,
+                            <0 0 0 3 &pcie_intc1 2>,
+                            <0 0 0 4 &pcie_intc1 3>;
+
+            status = "disabled";
+
+            pcie_intc1_4: interrupt-controller {
+                interrupt-controller;
+                #address-cells = <0>;
+                #interrupt-cells = <1>;
+            };
+        };
+    };
-- 
2.51.0


