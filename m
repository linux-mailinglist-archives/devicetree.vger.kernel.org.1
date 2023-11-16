Return-Path: <devicetree+bounces-16269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7D77EE280
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90B851F268DC
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C60D31A66;
	Thu, 16 Nov 2023 14:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from relmlie6.idc.renesas.com (relmlor2.renesas.com [210.160.252.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id C6723135;
	Thu, 16 Nov 2023 06:16:30 -0800 (PST)
X-IronPort-AV: E=Sophos;i="6.04,308,1695654000"; 
   d="scan'208";a="187030082"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
  by relmlie6.idc.renesas.com with ESMTP; 16 Nov 2023 23:16:30 +0900
Received: from localhost.localdomain (unknown [10.226.93.178])
	by relmlir6.idc.renesas.com (Postfix) with ESMTP id A114D426D11C;
	Thu, 16 Nov 2023 23:16:24 +0900 (JST)
From: Biju Das <biju.das.jz@bp.renesas.com>
To: Biju Das <biju.das.jz@bp.renesas.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	dri-devel@lists.freedesktop.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v14 2/4] dt-bindings: display: renesas,rzg2l-du: Document RZ/V2L DU bindings
Date: Thu, 16 Nov 2023 14:16:06 +0000
Message-Id: <20231116141608.252452-3-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231116141608.252452-1-biju.das.jz@bp.renesas.com>
References: <20231116141608.252452-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document DU found in RZ/V2L SoC. The DU block is identical to RZ/G2L
SoC and therefore use RZ/G2L fallback to avoid any driver changes.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v13->v14:
 * No change.
v12->v13:
 * No change.
v11->v12:
 * No change.
v10->v11:
 * No change.
v9->v10:
 * No change.
V8->v9:
 * Added Rb tag from Laurent and Geert.
v7->v8:
 * Fixed the typo vsp2->du
 * Added Rb tag from Rob as the change is trivial.
v7:
 * New patch.
---
 .../devicetree/bindings/display/renesas,rzg2l-du.yaml    | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
index c0ad194c538d..08e5b9478051 100644
--- a/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,rzg2l-du.yaml
@@ -16,8 +16,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - renesas,r9a07g044-du # RZ/G2{L,LC}
+    oneOf:
+      - enum:
+          - renesas,r9a07g044-du # RZ/G2{L,LC}
+      - items:
+          - enum:
+              - renesas,r9a07g054-du    # RZ/V2L
+          - const: renesas,r9a07g044-du # RZ/G2L fallback
 
   reg:
     maxItems: 1
-- 
2.25.1


