Return-Path: <devicetree+bounces-80126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86963917D58
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 12:10:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AB59284CD5
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 10:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9141C17D356;
	Wed, 26 Jun 2024 10:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aN2jDpj2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB8317D364
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 10:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719396599; cv=none; b=XXYVIpG/2cF7bU9nFqe2D2IXHJYs13f0b9gDcCMgob6/YpyFY+7QsY0qFILG92dPCtBq74m8MQcuxZ+PbEMDC92WJFvWAYoDYGF2TyMqZ1i5JNRXE4jeDIL93llN32iEY4a3zMyj2Nf3k2rwqDy3VR1gvPs+n7AxXswP2p5UzVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719396599; c=relaxed/simple;
	bh=2G0rLi4cLmhzl8ZJMSFvOy5W9L4JVSO3sWW9FraSLfY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RYqtrwABZgmIf3oi5bCJ1SamlOMUono1lkTX0OTqTPWrkGmI+FcUG5N3jtolZa3g4sQySJudJtWBqmkzvfwNKG5nPJbRbEMA9W20VvGRbW5wxzKJIiOePj+EPi9YMxPtKTWhrtGXa3ruEJI3esHpBb0PmiyPb96ikM0JTPSofwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aN2jDpj2; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7ebde93bf79so245972439f.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 03:09:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719396597; x=1720001397; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LDxj3dPqBsikHw3COW9fzyU/UFgyyuz6MU/96w6Q9SQ=;
        b=aN2jDpj2931sDPnkhD6vQY/5IWyjlOh2KfS5l08upHv5Wrfv2Rqn2JxM1Vz40+iux/
         PwFCQngDGVr3UU72O1EEO3J0vZILKqWvocisLjSQ2FDMNt4a5hfG5chVLSkXE5fYudUj
         TXwFiwSqjycnRdhEXRdMAT2e7JXtaGqLMAtQD9Fsjc9wXD96CqPWWduez6WA0tILIAIv
         dKWx+IgQilnzXFvjAyD3aP+0/E49ZdcA3hI93YXaaBos+msJB4XsC3B7bm7gc/9Emosj
         IPWVsVT+6y1VQ8A/DihttcUTDW3jB1ouhYQo8eR565E5iumuCGHCjOvpTUJ0Jqmr0Xwu
         FicQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719396597; x=1720001397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LDxj3dPqBsikHw3COW9fzyU/UFgyyuz6MU/96w6Q9SQ=;
        b=jGyPQLa/2qTfLfrFIAsOlankwbfbJYVaQRooHnS3ZxCY8dRi4hITzHQS52/PVmHEqE
         bxxzsIN9bUpB76DCB6++IazZ/1Tl4HxHugeuXawh18tCyhANCUY+55/by8wLy1dzHUXA
         MPO2uJxb7aghw5z0embVLw3sjyNhfku+89bNtq2JpYXpm2pgUI88AfobSGxrwrvjk9kZ
         8iG3EFdeSS8f65NH+lZyInCUsM78/8CXAcTYo9QIr4E5IR6VT2ZNNSppk3GjvmjRhsK/
         6N8AXXfaBzPDXRB/NY660/WvOgeQn2Q/9ho3pTie21I0ve8AWqWs2YJj8Mh8x1J1hIzi
         Q2XQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdFsvaVacEIDW/OM2rAu2udtF2VOQEhyRqyja/n58PwA45ei/n+/EhuiTvilk6eeYfw2Ccxa4UHkdoho/Fo61bw38Bj3FX2BoSDw==
X-Gm-Message-State: AOJu0YzU/vNPt7WD3LiEQrEEBx3RfZxXiZj644mj9x8k82tbQYERvIMv
	Qk2OMdpxbX/rf284ideEUx2pI7nSBscSuscbt1sUy+ee2o8PDS4dnaSahy3J168=
X-Google-Smtp-Source: AGHT+IHI1wtegxgP3+6Da94JrIe1ZxojFMEUdsp5T+ZGQfCNxN4Ar0Gf4u6U3yfHQ3/tOnqVb8Y03g==
X-Received: by 2002:a05:6602:6b10:b0:7f1:3ad1:234e with SMTP id ca18e2360f4ac-7f3a4e62794mr1343333539f.18.1719396596988;
        Wed, 26 Jun 2024 03:09:56 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4b9d121859csm3079108173.137.2024.06.26.03.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jun 2024 03:09:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 26 Jun 2024 12:09:13 +0200
Subject: [PATCH v3 4/7] dt-bindings: soc: microchip: sparx5-cpu-syscon:
 Move to dedicated schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240626-dt-bindings-mfd-syscon-split-v3-4-3409903bb99b@linaro.org>
References: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
In-Reply-To: <20240626-dt-bindings-mfd-syscon-split-v3-0-3409903bb99b@linaro.org>
To: Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Jacky Huang <ychuang3@nuvoton.com>, 
 Shan-Chun Hung <schung@nuvoton.com>, 
 Khuong Dinh <khuong@os.amperecomputing.com>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chuanhua Lei <lchuanhua@maxlinear.com>, 
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Lars Povlsen <lars.povlsen@microchip.com>, 
 Steen Hegelund <Steen.Hegelund@microchip.com>, 
 Daniel Machon <daniel.machon@microchip.com>, UNGLinuxDriver@microchip.com, 
 Nishanth Menon <nm@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Jiaxun Yang <jiaxun.yang@flygoat.com>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2802;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=2G0rLi4cLmhzl8ZJMSFvOy5W9L4JVSO3sWW9FraSLfY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBme+jQVYvtx7mGIQPlwytJrS9d+PkZFNMW+2/a7
 XEXUUXPRFOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZnvo0AAKCRDBN2bmhouD
 18d7D/9XW67fIBG54/dKruUXgjoUk97WDQY9GDGuvYHIdqvuAjQ9Pc12XOHfTt0vlJ5UphWrM2o
 NkIedVjvzsEkI8ncuFSfD1GvwypTgtYly9duJ6HOP+RC6QORcaPTlxfdFLEl3g23uio164nY65c
 vFDduNYvKbF/8WbwckF9aKGnvMq5K5jsIM3Sa8mVJT+L6sP5kLFXJX2xUFP3deBXqGEtYSrvru9
 NTgJKckLWd+3vpuX+xy3tQ5b4qV/zm49RrmHepjUbPI1eR4+HnB+rWEtXMejx2fNBAAHRYUrEC8
 OHbzg31wDfLAjOxdE4yiRqG+u46J+ASS+v6Q9Xt8gqYpC/Nxf1T0vLnoIQevZsDD4dvKNoG1F1n
 bLuXZqhp39cGJKoCUMcUd0pmePatEZK2w88cS1SMgWc1KTnI4lJrPkTPJaiL3zGGAtCeg4a/6AT
 ea4r98wjcLSWbZVv3agdaF27ioRsvZm1uAjLFGRRbPCI1BxPzPU/V0LXChNWEmPH4K7t7f1xHgZ
 3n9qZ0C5+iicCfd3dIFklyFNjvBhIiwb59JJJqUC/0nRjqZB33lAGyKi0AYu3sFH1HhDOHWrZ/4
 UjfSLHejQZVoc6B8o3LxEQkk9vI2IqfvQSQf5KpUSpRUK99JdVZXpIqaPPW5U9ZBmPSDkGQPtzA
 U5IRE1lCVUdhxbQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

microchip,sparx5-cpu-syscon is not a simple syscon device - it has
children and implements simple-mfd compatible - thus it should be fully
documented in its own binding.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Context might depend on patch in Lee's MFD tree:
https://lore.kernel.org/all/171828959006.2643902.8308227314531523435.b4-ty@kernel.org/
and also further patches here depend on this one.
---
 Documentation/devicetree/bindings/mfd/syscon.yaml  |  1 -
 .../soc/microchip/microchip,sparx5-cpu-syscon.yaml | 49 ++++++++++++++++++++++
 2 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index b9bf5bc05e92..abd3debe5faf 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -95,7 +95,6 @@ properties:
               - microchip,lan966x-cpu-syscon
               - microchip,sam9x60-sfr
               - microchip,sama7g5-ddr3phy
-              - microchip,sparx5-cpu-syscon
               - mscc,ocelot-cpu-syscon
               - mstar,msc313-pmsleep
               - nuvoton,ma35d1-sys
diff --git a/Documentation/devicetree/bindings/soc/microchip/microchip,sparx5-cpu-syscon.yaml b/Documentation/devicetree/bindings/soc/microchip/microchip,sparx5-cpu-syscon.yaml
new file mode 100644
index 000000000000..1f0b542d2296
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/microchip/microchip,sparx5-cpu-syscon.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/microchip/microchip,sparx5-cpu-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 CPU Syscon
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+properties:
+  compatible:
+    items:
+      - const: microchip,sparx5-cpu-syscon
+      - const: syscon
+      - const: simple-mfd
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
+    soc {
+        #address-cells = <2>;
+        #size-cells = <1>;
+
+        syscon@600000000 {
+            compatible = "microchip,sparx5-cpu-syscon", "syscon",
+                         "simple-mfd";
+            reg = <0x6 0x00000000 0xd0>;
+
+            mux: mux-controller {
+                compatible = "mmio-mux";
+                #mux-control-cells = <1>;
+                mux-reg-masks = <0x88 0xf0>;
+            };
+        };
+    };

-- 
2.43.0


