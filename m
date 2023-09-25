Return-Path: <devicetree+bounces-3279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0070E7AE0B7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 23:26:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id AE07B1F24F6E
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 21:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C025241EA;
	Mon, 25 Sep 2023 21:26:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF12224F0
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 21:26:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67B5AC433C8;
	Mon, 25 Sep 2023 21:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677208;
	bh=g4nGXG8QAWMfBKVUemLO0mep12ZxcujBfi4nVu4PncA=;
	h=From:To:Cc:Subject:Date:From;
	b=NJRuA+EEHUomrwKIPyWxWiecsUNPIA7UZp+Dc70FnVEvRRPI6J5beVsVUgMlHb/uR
	 84UQePlVvDRrKEbEe1imREsdBWAm9GD0PjQ88z1SKu5OmZQtKRi3C62dgQMmqU5Aof
	 U1wtLAGuY9TH+Jb/vJ360DPQKFVeT91GZFOlI4T6L+nHBmDrZaRBPVetbNWp8RMPIq
	 wKfeGjuP9O5eVDcgo0xd+pZUnCDA/4Rk+HF0VAYF/JQ02721RVljREx5rQqH6d6J2Z
	 G5EYnXTzxHxPUbbKCe9P0QfP0bK4K4iDPfzMdSMCKiX2lM+Si2b9jWciTPXPy5oZOa
	 2OHxlEVpZjzDw==
Received: (nullmailer pid 1975277 invoked by uid 1000);
	Mon, 25 Sep 2023 21:26:46 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Liu Ying <victor.liu@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: bus: fsl,imx8qxp-pixel-link-msi-bus: Drop child 'reg' property
Date: Mon, 25 Sep 2023 16:26:34 -0500
Message-Id: <20230925212639.1975002-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A bus schema based on simple-pm-bus shouldn't define how may 'reg' entries
a child device has. That is a property of the device. Drop the 'reg' entry.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml           | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml b/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml
index b568d0ce438d..7e1ffc551046 100644
--- a/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml
+++ b/Documentation/devicetree/bindings/bus/fsl,imx8qxp-pixel-link-msi-bus.yaml
@@ -73,9 +73,6 @@ patternProperties:
   "^.*@[0-9a-f]+$":
     description: Devices attached to the bus
     type: object
-    properties:
-      reg:
-        maxItems: 1
 
     required:
       - reg
-- 
2.40.1


