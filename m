Return-Path: <devicetree+bounces-3288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A722D7AE18A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 00:10:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 0DF6B1F2505C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 22:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1980125114;
	Mon, 25 Sep 2023 22:09:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076201376
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 22:09:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04C8AC433C7;
	Mon, 25 Sep 2023 22:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695679798;
	bh=wrZGhwKs0rxrVrvNQeQFjjkktFc24Ckyd2CV5SBPQrA=;
	h=From:To:Cc:Subject:Date:From;
	b=HKJjdNu7I9LITZhQdye8D0M0nnFZYNtbr48LOBgybs4ESmzZ1jinSTTG0X5I3ipM2
	 amIUnjlHqMhCLW2TaN7r84iAgQKrw2MLIkSyYAj7WOTwnMPsFzSV9ga2tWRAR4/+/i
	 svBCPoG48zk80LZfpx3zR9nCSFCnk850xTx2sor61/oeNn0IDUFHmI6n6kffFX91cO
	 fuADG8CXuh/85ckjurBU2qnIrSLr8eZUh2zyH+c1H01fe+/QrMfHKGuyQWqc9jtQ5z
	 wmOccTN4V+AkEuxjeRsOel1AM5GLLTRoKaaAHXpkT3wnhU1vIqFX2/RV91W9WoIzq0
	 XdRGDIkjlYfhg==
Received: (nullmailer pid 2032130 invoked by uid 1000);
	Mon, 25 Sep 2023 22:09:56 -0000
From: Rob Herring <robh@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Herve Codina <herve.codina@bootlin.com>, Shenghao Ding <shenghao-ding@ti.com>, Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>, David Rau <David.Rau.opensource@dm.renesas.com>, Damien Horsley <Damien.Horsley@imgtec.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCH] ASoC: dt-bindings: Add missing (unevaluated|additional)Properties on child node schemas
Date: Mon, 25 Sep 2023 17:09:28 -0500
Message-Id: <20230925220947.2031536-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node.

Add unevaluatedProperties or additionalProperties as appropriate.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/dialog,da7219.yaml | 1 +
 Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml | 1 +
 Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml   | 1 +
 3 files changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
index eb7d219e2c86..19137abdba3e 100644
--- a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
+++ b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
@@ -89,6 +89,7 @@ properties:
 
   da7219_aad:
     type: object
+    additionalProperties: false
     description:
       Configuration of advanced accessory detection.
     properties:
diff --git a/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml b/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml
index ff5cd9241941..b522ed7dcc51 100644
--- a/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,qmc-audio.yaml
@@ -33,6 +33,7 @@ patternProperties:
     description:
       A DAI managed by this controller
     type: object
+    additionalProperties: false
 
     properties:
       reg:
diff --git a/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml b/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
index b6a4360ab845..0b4f003989a4 100644
--- a/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
+++ b/Documentation/devicetree/bindings/sound/ti,pcm3168a.yaml
@@ -60,6 +60,7 @@ properties:
 
   ports:
     $ref: audio-graph-port.yaml#/definitions/port-base
+    unevaluatedProperties: false
     properties:
       port@0:
         $ref: audio-graph-port.yaml#
-- 
2.40.1


