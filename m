Return-Path: <devicetree+bounces-127906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF2F9E6A3D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 10:33:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68A6A16A463
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:33:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E8541F5417;
	Fri,  6 Dec 2024 09:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="SwGQM1/U"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993521F03E4;
	Fri,  6 Dec 2024 09:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733477613; cv=none; b=aPKCk19wBsejh8Yk9CxOKeRZkLqbZp4mIvp6MMVYjg/SrRIKkXIa8yUp/TOXo1uimeY1esn3szsAeBh33K3V+ZzXD2eVRxAmtck+uS9cbXpSvcE1R2NGPvO3OLOzrxBxEDTBNkNfSaeLkClHmtYFH9rl1RrITcSShQO8AR1LsTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733477613; c=relaxed/simple;
	bh=Cj2VeJ8uFjY3w3v+Ynbvv8L6oauOfCaE6Fq+A8xrCKE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oEhOavLftwZs8GI3ZUO3gIdmxqLerTUV9/eS/5TqhKp6tX9/pbXbOYEZMencWIL9umbeRqDAuj4FElIfTKkhGJ9g1O/DAG5vMK0nFpI+m3dvnfyxsFmg/ImcIWuqFPgD8jMG0eN7+QAJklYdFT0SMCFZn08Y1tif7uJtMZ4tEog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=SwGQM1/U; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from [127.0.1.1] (91-157-155-49.elisa-laajakaista.fi [91.157.155.49])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1471916D7;
	Fri,  6 Dec 2024 10:32:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1733477576;
	bh=Cj2VeJ8uFjY3w3v+Ynbvv8L6oauOfCaE6Fq+A8xrCKE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=SwGQM1/UEuLpowiaq9r5Yfobnq0ArKybwR1BqdLJGsRXQTwXMWTGaXrx9IzFbnUCb
	 dAT9yPn/oxL6DCQNXMKMwkyHzmPOVyYkvRMiUGu4gNkr7n5hQjzUT2+9Ll3kvJ6Ssl
	 MFivztd1oJV0umUiQYHzy6oVmA6rlmhszPwKP9yE=
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Date: Fri, 06 Dec 2024 11:32:37 +0200
Subject: [PATCH v3 04/10] dt-bindings: display: renesas,du: Add r8a779h0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-rcar-gh-dsi-v3-4-d74c2166fa15@ideasonboard.com>
References: <20241206-rcar-gh-dsi-v3-0-d74c2166fa15@ideasonboard.com>
In-Reply-To: <20241206-rcar-gh-dsi-v3-0-d74c2166fa15@ideasonboard.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, LUU HOAI <hoai.luu.ub@renesas.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Biju Das <biju.das.jz@bp.renesas.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
 linux-clk@vger.kernel.org, 
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2543;
 i=tomi.valkeinen@ideasonboard.com; h=from:subject:message-id;
 bh=+C1FPFSno+ZBvGJfrkZWI9g3QFl0y7ZqagIAzaX59o8=;
 b=owEBbQKS/ZANAwAIAfo9qoy8lh71AcsmYgBnUsTadeh5WjxAaL61az4+5BnS3a8/1kvzKNFP9
 9t2a163+8CJAjMEAAEIAB0WIQTEOAw+ll79gQef86f6PaqMvJYe9QUCZ1LE2gAKCRD6PaqMvJYe
 9fxpD/93kRIWLCInEfV/Fc53w47/ILSL/dcP2IyJGeFQvtGaSVJtLkPbwUyjHC4hHbvGzuw5Jvc
 hmOVMKSlWq/9UnJUf1oxME/o8+xpN4Q4tSbr7eGObenJ7KwL5cM9aScfMgz/aEFv1Stko+Lulhl
 72Xow6nLVi5vHUF82N+kBFe48a2EriwsO+oGU1OUR2AYVnz0b5JeVfgj7dLFR8BH9x9V3OtrrEF
 StmPS4TRsndWnfA91iS3zR+VOBI1DvdKLnsxiUv+K+TTx6Mi8ArtRb3TvcWbQQ1o0tbR8Y+KNpb
 5Z7bWHKKgq7MJ91N0T84YIua3EKe/qqgb7IAX+PIgRt2J8kVp74yBVkaOgMrhfE5niGi3bgPzrW
 UShK1SGJFXGIG3SAK/HGPfH6B+y+meJ5AFbxXQsFt/utXhxGoPVrHReWzFQKgY7bPWYCq7VgG/y
 wvF7jL+lp193zcTFh7Isdcuw9hI3TsXzLv5tmZm/AbHTbzfI9HPNwPSrdWsdysPWU6WGsz9x3i6
 eTbO5NaqVzVoQ/UdkvkEi07pj/KQAZHmVJixJ9zXrz0V+2jym4tOmjVhEGfCIjKNEQlvgVkrdZk
 KYbapxpiktD4jOJogj0ZU+k2McQGcEn/5TBasFMK+yeBbTblCiFTp0FysKinczn1TxuLAKn4pat
 T2rt+XAdrW6Mjyw==
X-Developer-Key: i=tomi.valkeinen@ideasonboard.com; a=openpgp;
 fpr=C4380C3E965EFD81079FF3A7FA3DAA8CBC961EF5

From: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>

Extend the Renesas DU display bindings to support the r8a779h0 V4M.

Note that we remove the requirement for two ports from the global part
of the bindings, as each conditional part defines the number of required
ports already. This came up with r8a779h0 as it's the first one that has
only one port.

Signed-off-by: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
Tested-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 .../devicetree/bindings/display/renesas,du.yaml    | 52 ++++++++++++++++++++--
 1 file changed, 48 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/renesas,du.yaml b/Documentation/devicetree/bindings/display/renesas,du.yaml
index c5b9e6812bce..7dec47aea052 100644
--- a/Documentation/devicetree/bindings/display/renesas,du.yaml
+++ b/Documentation/devicetree/bindings/display/renesas,du.yaml
@@ -41,6 +41,7 @@ properties:
       - renesas,du-r8a77995 # for R-Car D3 compatible DU
       - renesas,du-r8a779a0 # for R-Car V3U compatible DU
       - renesas,du-r8a779g0 # for R-Car V4H compatible DU
+      - renesas,du-r8a779h0 # for R-Car V4M compatible DU
 
   reg:
     maxItems: 1
@@ -69,10 +70,6 @@ properties:
         $ref: /schemas/graph.yaml#/properties/port
         unevaluatedProperties: false
 
-    required:
-      - port@0
-      - port@1
-
     unevaluatedProperties: false
 
   renesas,cmms:
@@ -807,6 +804,53 @@ allOf:
         - reset-names
         - renesas,vsps
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - renesas,du-r8a779h0
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Functional clock
+
+        clock-names:
+          items:
+            - const: du.0
+
+        interrupts:
+          maxItems: 1
+
+        resets:
+          maxItems: 1
+
+        reset-names:
+          items:
+            - const: du.0
+
+        ports:
+          properties:
+            port@0:
+              description: DSI 0
+            port@1: false
+            port@2: false
+            port@3: false
+
+          required:
+            - port@0
+
+        renesas,vsps:
+          minItems: 1
+
+      required:
+        - clock-names
+        - interrupts
+        - resets
+        - reset-names
+        - renesas,vsps
+
 additionalProperties: false
 
 examples:

-- 
2.43.0


