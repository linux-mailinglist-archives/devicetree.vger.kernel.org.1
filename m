Return-Path: <devicetree+bounces-76168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B50A8909DA8
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 15:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8151BB21311
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 13:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B0E18FC7F;
	Sun, 16 Jun 2024 13:19:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UXX0GhaP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5605F18F2EB
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 13:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718543986; cv=none; b=f2cOF/PAofiP6Vdt5OlkU1DFVrvg06moDhU5f1VhDTg2ayaqVSY31YGLYCbQfH5vAC9XBxj2eUEMrA0hChgJNRfsIqqKhnsdDkSgXDimTfM+0XUjz66X4y8YoQnVBohNvDJuvkYF3N3jR9YkK3JxcwCcXel19qJeUmQM1sF52Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718543986; c=relaxed/simple;
	bh=dA2BvNuDdbIFKkStpUlyQC5zc7XFrh1545e/AvgMWBA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DagQNiGQYNTIHgKk07+40qkcdoxWRDv8VGHwfsV2NRH+dS08raDMiHkMEghkpJSEhv6v1DNqADMWDhaqMtqBrqZkKvYpVIirDKRfEgYKoslbfNBbhSQEGAKTYs+5Y9glxrEODRJBC2nPG5pJ2kmzUmCTtQxfGcQeCopUpcBZUVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UXX0GhaP; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-57c75464e77so4223458a12.0
        for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 06:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718543982; x=1719148782; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zrd8K+qyBfVetpIrLm6qlKeNQKmHjz4ob0FFgn8jaII=;
        b=UXX0GhaPDgc1uBceNGT1uF4XTKHZihPdK6ubHgCSlRlRIxi1xlC0L09j1e5rpujHkK
         lziLRRjRDgfUnLnCh5l7d5sCqnt08pEISJRS9aI66zj5XQALtfAtEfHs8prcw28AZnbp
         jCWXhBUgRCGYWJhbUuoXwKYDHleD4EzdLDTxg4M/jacNkgkI/I5G9T2MNen+5i0O/3Jq
         4iEtg5F92Wue3NKFyLdRvuWFJ4f+GjbWObyJ64pO0uJg1FF08wzZP8PLyD9avDNjiryi
         dOKSJCQoprF8xqhpdr+/XqT2K3+ptG/NuiFUxomcKs3+x3PGh8qSODcADlHoxKV3HeEZ
         5ITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718543982; x=1719148782;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zrd8K+qyBfVetpIrLm6qlKeNQKmHjz4ob0FFgn8jaII=;
        b=NUK1AKKHYEbbGBl87CR7x58nBS8EEsdS8vNTAoj05v1xICAJh6lC3kOql2UQiAfFe8
         j4WNJ6aFW73Rk8YkVm7KqwApGVKzszD6n1TYN7wAyj+M/S2pIyIOy2IAqMqFuTuiEObt
         RNGBdUG/3Mc/lArzIBvghnwidznP2amTL9ahjbQDOhMypl+UjUdgu+dU68LtQzTh7W53
         lrqBc4oxdXODDH8BApAv1z9xp3AJkkGnEbFUWoIoikFhY1mU0UScnkKujp3W1mrfw2CZ
         25Z5LACSvLAoiCp5EH3uOHB3mwzpZqCB8eeY0POKbJKCCHhxjzYf+wJ5H0lPWe34qm+7
         pw4w==
X-Forwarded-Encrypted: i=1; AJvYcCU7EfZ466liZPMZszoyUTyOHrBCrVxlOYrpv3HwBInUj5Mx3nWiUp338ySpdDRchi2Rzd3R6mVfL1/+1ou5rBq6ruBTZ/3hnsziDg==
X-Gm-Message-State: AOJu0YzUDGfNTAXqXnc/lGV+KTBPqwEkffbYsW6mA0Rzs1GRaEsaXA8b
	zwdiyvFhMT4ugZu8YvjC9VOj4W3uFa/rEEXMB5XyGCH+pFEdCRs5mFWIxUG2sKs=
X-Google-Smtp-Source: AGHT+IG1AznA+Lz8oKbRyPDepmptaEHOWEWQisNJz6RK9g8E/VHYfQMB1p5/XhswdG1VwZfzoBzPbA==
X-Received: by 2002:a50:d742:0:b0:57c:75a1:2a14 with SMTP id 4fb4d7f45d1cf-57cbd681bbamr5002360a12.12.1718543982620;
        Sun, 16 Jun 2024 06:19:42 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb7438815sm5099603a12.80.2024.06.16.06.19.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 06:19:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 16 Jun 2024 15:19:25 +0200
Subject: [PATCH v2 5/7] dt-bindings: soc: ti: am654-serdes-ctrl: Move to
 dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240616-dt-bindings-mfd-syscon-split-v2-5-571b5850174a@linaro.org>
References: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
In-Reply-To: <20240616-dt-bindings-mfd-syscon-split-v2-0-571b5850174a@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2452;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=dA2BvNuDdbIFKkStpUlyQC5zc7XFrh1545e/AvgMWBA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbuZhdw2OJqKWPIez7Bw4c+bpBIlOWqahFa6N3
 vt1eSNm7wCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZm7mYQAKCRDBN2bmhouD
 17EoD/94eOpZAXKoTf2ia7EdDFmk+pBWWwdfyOpIq7Ksp9V4d/pv7Di+qlNkb0wzLNuUQaEy9Jf
 8Wxyaw9fXUuFVQMzoWdzGo+Og3ShTXhXZrLO1SGQHNKZzJnZM3ddfNRxLXkUBDKJw3d1S5z3kDB
 UcyIPeE+/O1JW3+GLJzjUyMK54R9oYMg5khXUqHfVAusjzWlw5CvND4FIy9zH02FxN9HEOVCGSR
 MlleH3QxqZn9eI4HwwfwiO3Wqpf6PKy63HbglbvAt6LvrBGZAjmuIRRJgbz3AMo7dq6xDMj63e+
 CarQdQv6dn+FjXjM9aqLJymAqTmNKroi/eX4qBQ2Mn0t/t+9n+FO9qjnFp+0r/QBffYNQqmIAKH
 JnWWakdxz6UEltnAqADc0XFQd4Hm6RSM+Mq9WsrVIcTRGMW7+nEAMQVonhxKEhT4ydv7Oyye0bm
 cvNU4CtmWlZuM3onCm0q61ypX3115EnlOVJMIv1UfCx6pfL1RPxP1fZjTX8RcSR14Fha0ZaVlSY
 IiYAYMPa8BTrJfUOOYGVGsfEvu7kfJR04H9w5JoAwIQudTPsNbW6hOS2/6etb2gVcy9bBWb3np3
 nzN0QIx9OsjmU7oM56jv4UUqp1/My72/sbBtb9FqVv+sZHre/B+VF1alm0BlhuC0UBS5b3nUF/R
 +UoL/+AQ81t75cw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

ti,am654-serdes-ctrl is not a simple syscon device - it has children -
thus it should be fully documented in its own binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Context might depend on patch in Lee's MFD tree:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/
and also further patches here depend on this one.
---
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  1 -
 .../bindings/soc/ti/ti,am654-serdes-ctrl.yaml      | 42 ++++++++++++++++++++++
 2 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index abd3debe5faf..d6fa58c9e4de 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -117,7 +117,6 @@ properties:
               - ti,am625-dss-oldi-io-ctrl
               - ti,am62p-cpsw-mac-efuse
               - ti,am654-dss-oldi-io-ctrl
-              - ti,am654-serdes-ctrl
               - ti,j784s4-pcie-ctrl
               - ti,keystone-pllctrl
 
diff --git a/Documentation/devicetree/bindings/soc/ti/ti,am654-serdes-ctrl.yaml b/Documentation/devicetree/bindings/soc/ti/ti,am654-serdes-ctrl.yaml
new file mode 100644
index 000000000000..a10a3b89ae05
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/ti/ti,am654-serdes-ctrl.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/ti/ti,am654-serdes-ctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Texas Instruments AM654 Serdes Control Syscon
+
+maintainers:
+  - Nishanth Menon <nm@ti.com>
+
+properties:
+  compatible:
+    items:
+      - const: ti,am654-serdes-ctrl
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  mux-controller:
+    $ref: /schemas/mux/reg-mux.yaml#
+
+required:
+  - compatible
+  - reg
+  - mux-controller
+
+additionalProperties: false
+
+examples:
+  - |
+    clock@4080 {
+        compatible = "ti,am654-serdes-ctrl", "syscon";
+        reg = <0x4080 0x4>;
+
+        mux-controller {
+            compatible = "mmio-mux";
+            #mux-control-cells = <1>;
+            mux-reg-masks = <0x0 0x3>; /* lane select */
+        };
+    };

-- 
2.43.0


