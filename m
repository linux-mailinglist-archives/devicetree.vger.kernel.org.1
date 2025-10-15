Return-Path: <devicetree+bounces-227311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3575DBE06BD
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 55C544F4B37
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E76230FC1A;
	Wed, 15 Oct 2025 19:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kKlkRS8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7774C30FC19
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760556436; cv=none; b=o2GO61rpZBHZ40s1an9ihUmxSG16KyHnqmto4JDOGDc2HB7+TLWg78OgVsvtgbh058/Z+gjQ42viDHqw+Dxw1WB6k4TFraBBai2z9OkGu8U3A5oCJUzKsYPgLTJdCS9gklWkHRwSKH5XpkMJPDcmE1eiTNO4qZoIaJihm1y0LZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760556436; c=relaxed/simple;
	bh=RTqcRA9Wm9Ehn4pJC+oPp3/yQh3Us97qd4vkt5bR6ts=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jEaDblUjf328UlIaMuMiVoMEpYqi7hM44AE8uOO5ZejAPq/VCteNDuiVBFCW/IJP2JkAi57lkh8xmhwB0gde6nWjwojL6KNgIytvBfUi6AgYPC67UBw7KG1v83rgqy5CNLxyLrjyjcCJyYbWvM6xx+KuC/y2vx2ZXJkGO7SAKuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kKlkRS8q; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-27ee41e0798so108539985ad.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760556434; x=1761161234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aCB83fna0UrFuRZ7ssCh3d7w5oMcQfF2kPoFGBoLlaM=;
        b=kKlkRS8qm8M6VIxxWIS4OBE1/MwVDvAPtFO7Qv/nf60rV2yf2Bhm2/vNfX/vizSWJN
         Z0cDq+GVPz6Lb+ABj6iLMUTYDLdEjSvixldBHiZQNK99+cfpRCspFua0HQWhffg60EyZ
         Mz8euKfYzv5cTlWrjT9kQR6jQSPVcTiqfyLVPq9b+OxTTsDgURmbJEzN+wzBwQaIK0W7
         Y3O0Cl9o5DonjaeJZnCPMhQqm2HRgbBdOylNGihDJ7FtEj8W6rQvPNQu72YtALeukfW8
         IyMDos02v1NVY8StqafRznQVQKLOjLPEw4K+AMuKVhoh1+x1dgICWsXvEmPcccNehsUr
         pnNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760556434; x=1761161234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aCB83fna0UrFuRZ7ssCh3d7w5oMcQfF2kPoFGBoLlaM=;
        b=FO6geAZgxXyu7xsmxggeE7K7lpI6ptUHfcUFyXSvWy8qAPGAjDMHspgenaOdf409jA
         8DQqAGOryCpuVeJ1hmEIWv/e8K4X6VHkb1RtUgVKIqRJTCjVlpzZKK/rKRi4xqBcBgM3
         noQrgltotzMfGtAgOzi4f5ddjrQ7ZDQCu/yzD32LqnYqDJ61Qx5irpZbmwoX/aDIC1/q
         +d0VPyVYvHlyU2fGqV22c165U9ZOyaueC/IV4rZR7leVlneebgPZS1wnyGQaECl1KRgF
         urg2zJ1EARsW3Ngqi0lb8kvDe6GrU37pR+zrga+lwf76L5vtM9vaVfmM4d4v4ISS69Ir
         948Q==
X-Forwarded-Encrypted: i=1; AJvYcCVTTSnDkfJPnssjGFQJGSlQXyZsmd4IC7QLmcXiLduJgsNjucJfDT8WrJIsdCPjGS7BV0KvC2/jbvhh@vger.kernel.org
X-Gm-Message-State: AOJu0Yzf716lPCLOLFvrq9mTUB9OVMnei+7Lzd/72JSLyo0Ll2vQ+5W1
	2g0Q6hJA0S/5GOBK/4gBByyTfdg2kZhOdJv+B2nLVWAzx6g42cggx620
X-Gm-Gg: ASbGncslUxrM3JqpjM4nQwKmJbFGb74b9RdeNp/mzoReeTcLIdCvdLKBFKrwIVYLYXu
	43WJ7GEJQf3Q9LomxvqCsxzO9Uh5eohtQPLNgoQVV7vbVzmDtcogq9WLNxnyBe1UianjzUCW+IZ
	BgOcvsraBAIWsaRgY7pNu0v8ykRvvW4rd0ruXBfzV9zm9Mw0ZA8KzDgyn75grXeMEznXzs8U8ma
	SGn1QGAPG3142Zo+xc9CFspKScAUpOSC9dZSIbJWHdiQ1Sh72ZhlpN+eIViIUc686VRmdXycUFY
	H8a1x1g65F60uw7ndH/RMYpUYeMUnIIoz7CCfCh84ULzeu+sqqgRtzTZ/yUQUPNxlXDK9Lc4gKb
	Pwkcc2kY0dvprKb5Gh6T8cRqGSSpwzLB5MYRtIirvkHab3KYBCcMlt2cEYIu28QupLnwfWhMXyl
	6VlVc5qaujd4xqhAMUI45lbm/9p6gnqIpF
X-Google-Smtp-Source: AGHT+IFBgcljKCUXYZa2r8bWo1W2hIkTIBOP8HAHsSx3FOmKt9OEFyrfwCEZRDkEtZrlv6h4/llC3A==
X-Received: by 2002:a17:903:1b2e:b0:27b:472e:3a22 with SMTP id d9443c01a7336-2902741cd22mr376111055ad.56.1760556433713;
        Wed, 15 Oct 2025 12:27:13 -0700 (PDT)
Received: from iku.. ([2401:4900:1c07:c7d3:f449:63fb:7005:808e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-290993102c9sm4427005ad.24.2025.10.15.12.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 12:27:12 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
Subject: [PATCH v11 5/7] dt-bindings: display: bridge: renesas,dsi: Document RZ/V2H(P) and RZ/V2N
Date: Wed, 15 Oct 2025 20:26:09 +0100
Message-ID: <20251015192611.241920-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251015192611.241920-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251015192611.241920-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Add the compatible string "renesas,r9a09g057-mipi-dsi" for the Renesas
RZ/V2H(P) (R9A09G057) SoC. While the MIPI DSI LINK registers are shared
with the RZ/G2L SoC, the D-PHY register layout differs. Additionally, the
RZ/V2H(P) uses only two resets compared to three on RZ/G2L, and requires
five clocks instead of six.

To reflect these hardware differences, update the binding schema to
support the reduced clock and reset requirements for RZ/V2H(P).

Since the RZ/V2N (R9A09G056) SoC integrates an identical DSI IP to
RZ/V2H(P), the same "renesas,r9a09g057-mipi-dsi" compatible string is
reused for RZ/V2N.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
---
v10->v11:
- No changes.

v9->v10:
- No changes.

v8->v9:
- No changes

v7->v8:
- Added reviewed-by tags from Geert and Tomi

v6->v7:
- Renamed pllclk to pllrefclk
- Preserved the reviewed by tag from Geert and Krzysztof

v5->v6:
- Preserved the sort order (by part number).
- Added reviewed tag from Geert.

v4->v5:
- No changes

v3->v4:
- No changes

v2->v3:
- Collected reviewed tag from Krzysztof

v1->v2:
- Kept the sort order for schema validation
- Added  `port@1: false` for RZ/V2H(P) SoC
---
 .../bindings/display/bridge/renesas,dsi.yaml  | 120 +++++++++++++-----
 1 file changed, 91 insertions(+), 29 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
index 5a99d9b9635e..c20625b8425e 100644
--- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml
@@ -14,16 +14,21 @@ description: |
   RZ/G2L alike family of SoC's. The encoder can operate in DSI mode, with
   up to four data lanes.
 
-allOf:
-  - $ref: /schemas/display/dsi-controller.yaml#
-
 properties:
   compatible:
-    items:
+    oneOf:
+      - items:
+          - enum:
+              - renesas,r9a07g044-mipi-dsi # RZ/G2{L,LC}
+              - renesas,r9a07g054-mipi-dsi # RZ/V2L
+          - const: renesas,rzg2l-mipi-dsi
+
+      - items:
+          - const: renesas,r9a09g056-mipi-dsi # RZ/V2N
+          - const: renesas,r9a09g057-mipi-dsi
+
       - enum:
-          - renesas,r9a07g044-mipi-dsi # RZ/G2{L,LC}
-          - renesas,r9a07g054-mipi-dsi # RZ/V2L
-      - const: renesas,rzg2l-mipi-dsi
+          - renesas,r9a09g057-mipi-dsi # RZ/V2H(P)
 
   reg:
     maxItems: 1
@@ -49,34 +54,56 @@ properties:
       - const: debug
 
   clocks:
-    items:
-      - description: DSI D-PHY PLL multiplied clock
-      - description: DSI D-PHY system clock
-      - description: DSI AXI bus clock
-      - description: DSI Register access clock
-      - description: DSI Video clock
-      - description: DSI D-PHY Escape mode transmit clock
+    oneOf:
+      - items:
+          - description: DSI D-PHY PLL multiplied clock
+          - description: DSI D-PHY system clock
+          - description: DSI AXI bus clock
+          - description: DSI Register access clock
+          - description: DSI Video clock
+          - description: DSI D-PHY Escape mode transmit clock
+      - items:
+          - description: DSI D-PHY PLL reference clock
+          - description: DSI AXI bus clock
+          - description: DSI Register access clock
+          - description: DSI Video clock
+          - description: DSI D-PHY Escape mode transmit clock
 
   clock-names:
-    items:
-      - const: pllclk
-      - const: sysclk
-      - const: aclk
-      - const: pclk
-      - const: vclk
-      - const: lpclk
+    oneOf:
+      - items:
+          - const: pllclk
+          - const: sysclk
+          - const: aclk
+          - const: pclk
+          - const: vclk
+          - const: lpclk
+      - items:
+          - const: pllrefclk
+          - const: aclk
+          - const: pclk
+          - const: vclk
+          - const: lpclk
 
   resets:
-    items:
-      - description: MIPI_DSI_CMN_RSTB
-      - description: MIPI_DSI_ARESET_N
-      - description: MIPI_DSI_PRESET_N
+    oneOf:
+      - items:
+          - description: MIPI_DSI_CMN_RSTB
+          - description: MIPI_DSI_ARESET_N
+          - description: MIPI_DSI_PRESET_N
+      - items:
+          - description: MIPI_DSI_ARESET_N
+          - description: MIPI_DSI_PRESET_N
 
   reset-names:
-    items:
-      - const: rst
-      - const: arst
-      - const: prst
+    oneOf:
+      - items:
+          - const: rst
+          - const: arst
+          - const: prst
+      - items:
+          - const: arst
+          - const: prst
 
   power-domains:
     maxItems: 1
@@ -130,6 +157,41 @@ required:
 
 unevaluatedProperties: false
 
+allOf:
+  - $ref: ../dsi-controller.yaml#
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,r9a09g057-mipi-dsi
+    then:
+      properties:
+        clocks:
+          maxItems: 5
+
+        clock-names:
+          maxItems: 5
+
+        resets:
+          maxItems: 2
+
+        reset-names:
+          maxItems: 2
+    else:
+      properties:
+        clocks:
+          minItems: 6
+
+        clock-names:
+          minItems: 6
+
+        resets:
+          minItems: 3
+
+        reset-names:
+          minItems: 3
+
 examples:
   - |
     #include <dt-bindings/clock/r9a07g044-cpg.h>
-- 
2.43.0


