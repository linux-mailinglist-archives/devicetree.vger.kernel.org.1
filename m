Return-Path: <devicetree+bounces-252868-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E1504D0377B
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:46:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E500A30142CB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB75C4F49D4;
	Thu,  8 Jan 2026 14:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="li5YM2FG"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27E94F49B3;
	Thu,  8 Jan 2026 14:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767883189; cv=none; b=Mpf3oSg8N6AE+oBE4z6EV/WD9L2pXBJdFLSbH50thN7++SZ5hSidTK6gjBPFxPsBzjjhtlJv6hJEsz8pQ3blv6JdzdZwIY3/oV6Ab4SqOeQwiyjzGNUqYOTv7CrU40XEwglLpTWlnnGWKDH6tGFX6pIvjbLuWmS1mnS5VQllsAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767883189; c=relaxed/simple;
	bh=agnSqIfYliSvLE9YUhD+lK5INFWHtuSZ4n6ap2I4S3M=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dKgq3qck0KWo45ZpMH6I12TxF7/SYFknuAigP/6Wq2lvAgQZzBc1VJ7SkXCKHS8dN0nxW2P8DS9E+jEBNWvbxSA+4xaQT+2RYeHkhHJH/4oP2NBwrHeh/glpf8sYzyy/IM4nIXmAS1v2YYXveOfe+w+KS9xKTxSYiee5p/2wBBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=li5YM2FG; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767883185;
	bh=agnSqIfYliSvLE9YUhD+lK5INFWHtuSZ4n6ap2I4S3M=;
	h=From:To:Cc:Subject:Date:From;
	b=li5YM2FGifvQsvcVelBQ5kIkEJRTeOZmzw1+u0rGvxNe89HEDa1QpSwVY+W6jGwJw
	 9ExY5C2jQn/0ubuxWqAsCaC+Tw37WisvspGuNu7u5nSwE1UB1y6Nmw6X7w4CbBgtcJ
	 rcF0LwbcKikPAXr9lVFtfyVOnZGDZUmubMmA86qbdJwo2oVszvdR/fFNg0y3WhxNyp
	 WwwaFbMmj4fVf2lMYKRiDBEO8kQtVZwb3hnoh+DYX5hidy5BybMJVsxGMIfL57EgM7
	 YLW+8YoEGjXQaYIh5WovfL1QMHqyt6WZbRjME7tCXK+f5D6hmhcz/p37p5CLwU4DxI
	 RA71I8bmskwEw==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 612A317E0FF0;
	Thu,  8 Jan 2026 15:39:45 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 1/3] dt-bindings: arm: mediatek: mmsys: Allow single vdo/mmsys endpoint
Date: Thu,  8 Jan 2026 15:39:32 +0100
Message-ID: <20260108143934.69634-1-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The hardware supports using just a single output while leaving all
of the others unconfigured (disabled), but the binding did not
really allow specifying a single endpoint@0, because in this case
one must either:
 - Call the subnode `endpoint` and not declare any address and/or
   size cells; or
 - Call the subnode `endpoint@0` and have at least one more other
   endpoint(@1 or @2), and declare address/size cells.

Allow specifying a single `endpoint` subnode, without the `@0`
implicit suffix to suppress warnings happening on this kind of
valid usecase.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../bindings/arm/mediatek/mediatek,mmsys.yaml        | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
index 3f4262e93c78..e3ef7540c24f 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
@@ -100,11 +100,12 @@ properties:
       the first component of one display pipeline, for example one of
       the available OVL or RDMA blocks.
       Some MediaTek SoCs support multiple display outputs per MMSYS.
-    properties:
-      endpoint@0:
+    patternProperties:
+      "^endpoint(@0)?$":
         $ref: /schemas/graph.yaml#/properties/endpoint
         description: Output to the primary display pipeline
 
+    properties:
       endpoint@1:
         $ref: /schemas/graph.yaml#/properties/endpoint
         description: Output to the secondary display pipeline
@@ -114,8 +115,11 @@ properties:
         description: Output to the tertiary display pipeline
 
     anyOf:
-      - required:
-          - endpoint@0
+      - oneOf:
+          - required:
+              - endpoint
+          - required:
+              - endpoint@0
       - required:
           - endpoint@1
       - required:
-- 
2.52.0


