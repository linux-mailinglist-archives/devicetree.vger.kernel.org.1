Return-Path: <devicetree+bounces-3278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE4E7AE0B4
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:26:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 10D83281683
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9073241E9;
	Mon, 25 Sep 2023 21:26:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9B3B224F0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:26:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3975FC433C7;
	Mon, 25 Sep 2023 21:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677193;
	bh=9Nh14aFUGUsaxHvq/E7g7v9+31uftoSiCiNR23fyrLI=;
	h=From:To:Cc:Subject:Date:From;
	b=rEFVSaMxl4PTBk3T8GgUZ6WMUDwFU3LdVPn4KA0JATvSAGLQNXzpUZkVFqabj8EWq
	 ZEgmaHOCMXABi54Z1izv8dctSripSzBkwKDwpFBHR0rLEedNoWt21qeKMND6X+XOfN
	 Sm1sR4sPG1Qcz1opK8WdWMDUfTc9OmuxgtsekqF6LHV50Gp1Ta7JrPpM6uPMFSvF61
	 OMqeNJe+aF9M+3iPhf3x7CNzeGsWwiHwO3oP5MN3982EjlMK1YkeXHb8349ch2wMFS
	 DyXL8dwCRHNt4uP2+aEcAT4jQS7AxjX1nUOqBRrjWAnf/jmC9FsAE5Qhz/8dXrb/wP
	 hwRdAAguGqKeg==
Received: (nullmailer pid 1974921 invoked by uid 1000);
	Mon, 25 Sep 2023 21:26:30 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Paul Cercueil <paul@crapouillou.net>, Sergei Shtylyov <sergei.shtylyov@gmail.com>, Tony Lindgren <tony@atomide.com>, Roger Quadros <rogerq@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: memory-controllers: Make "additionalProperties: true" explicit
Date: Mon, 25 Sep 2023 16:26:21 -0500
Message-Id: <20230925212626.1974676-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make it explicit that child nodes have additional properties and the
child node schema is not complete. The complete schemas are applied
separately based the compatible strings.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/memory-controllers/ingenic,nemc.yaml    | 1 +
 .../devicetree/bindings/memory-controllers/renesas,rpc-if.yaml  | 2 ++
 .../devicetree/bindings/memory-controllers/ti,gpmc.yaml         | 2 +-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/ingenic,nemc.yaml b/Documentation/devicetree/bindings/memory-controllers/ingenic,nemc.yaml
index b40cec0eb651..ee74a362f4ca 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ingenic,nemc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ingenic,nemc.yaml
@@ -40,6 +40,7 @@ patternProperties:
   ".*@[0-9]+$":
     type: object
     $ref: mc-peripheral-props.yaml#
+    additionalProperties: true
 
 required:
   - compatible
diff --git a/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml b/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
index 56e62cd0b36a..25f3bb9890ae 100644
--- a/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/renesas,rpc-if.yaml
@@ -80,6 +80,8 @@ properties:
 patternProperties:
   "flash@[0-9a-f]+$":
     type: object
+    additionalProperties: true
+
     properties:
       compatible:
         contains:
diff --git a/Documentation/devicetree/bindings/memory-controllers/ti,gpmc.yaml b/Documentation/devicetree/bindings/memory-controllers/ti,gpmc.yaml
index b049837ee669..c7a8a041da50 100644
--- a/Documentation/devicetree/bindings/memory-controllers/ti,gpmc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/ti,gpmc.yaml
@@ -130,7 +130,7 @@ patternProperties:
       bus. The device can be a NAND chip, SRAM device, NOR device
       or an ASIC.
     $ref: ti,gpmc-child.yaml
-
+    additionalProperties: true
 
 required:
   - compatible
-- 
2.40.1


