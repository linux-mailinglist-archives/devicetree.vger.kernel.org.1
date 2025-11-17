Return-Path: <devicetree+bounces-239464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D66B4C652CA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B6E234F2489
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C69852C3251;
	Mon, 17 Nov 2025 16:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8OhFVgT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECB5248869;
	Mon, 17 Nov 2025 16:29:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763396997; cv=none; b=RSetsG5FkhTtG3ZZvMCXBf3tTqTpjKWpjfETXgSp55qX7mSy9/sCwEuavOnaxyMU6VZWykC/QTD4YosZXmSeJDOM6fs6JKYBP8DojoTmzboa4ZeZUmZX4+v7kQOmWWwuWUtWE6Niceho6umDPHj7p7zq1/S9UJ2eWpI7HT7kLq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763396997; c=relaxed/simple;
	bh=shKUSuameh3muiG58RfWSoS4te9QniHU0E6tvBpOmy4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WlALkp9wywYU69zR3fzTK9iITKn2hltdAu6liWYmXaxSIm+RfWbUIuO1Jlk+qa6ogHigOe4TrUvAio3h9fFbZWNpTRQW+VNYkCqXBgEbyBwWAdcMNXvOCBIJznDcv8vwKm3ESzFfTereoY7ZUZXjdJzxfKaiYnNxBVP0iYZZYc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8OhFVgT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C715DC113D0;
	Mon, 17 Nov 2025 16:29:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763396997;
	bh=shKUSuameh3muiG58RfWSoS4te9QniHU0E6tvBpOmy4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n8OhFVgTQbXQGWiK/eFE+B9CIFBxX9reOAUaY4QyzmxVw6HarFqfgbcNZxIFq8sry
	 F/bo5eJVc0/UJUI7mEMYPZgmBUs7cGh6YIsc50M8yOs/D7GB3kBozMtS6v2OQLT9J6
	 rr/BtwMvgePFIRE4vJcNG2P17VujqLhCR6FLAiILOadUFNyhvXZ5+T57JuR1aM0s9y
	 naWQyyYa7w9meyX2KZxbg8K58gVzuVlRGm/Fv0QUnUJ/bCeDvGXrMBmC6FS9f88kd5
	 Sehs9Fpnu9uRiSW0gVICYfy6ZkhaV44B3JrFZTt/9xtD+Hm1PehE2a8K5Toc3faJ+j
	 CZJvU8yjUdYsw==
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: conor@kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: mfd: document syscons falling back to atmel,sama5d2-sfrbu
Date: Mon, 17 Nov 2025 16:29:31 +0000
Message-ID: <20251117-marlin-mustang-5ffda4d211c7@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251117-aeration-smock-5e7ac06e2942@spud>
References: <20251117-aeration-smock-5e7ac06e2942@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1597; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=jLzb0xlUC6jw2ZwWlMmejU8czQGd9N0/QrEHHV0k8/c=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJnSvhnLTUXOhxjVq2S6rUx292j2fMCiPUe+1mEX92cdJ tmNV+Z3lLIwiHExyIopsiTe7muRWv/HZYdzz1uYOaxMIEMYuDgFYCLarIwMXTIi6dkxC2b8+N8z vZxHmF+KwyXB4TzvjIUPHAz2x306ysjwv4JxyQbG7c197Se9XvyaV3dU8suvqzPSX8+yrpgep/e KDQA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

The sfrbu on both sama7g5 and sama6d65 both fall back to sama5d2 in
devicetrees, but the former two compatibles were undocumented. Now that
syscon.yaml has easy support for multiple soc-specific compatibles, add
both of these undocumented devices.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
CC: Nicolas Ferre <nicolas.ferre@microchip.com>
CC: Alexandre Belloni <alexandre.belloni@bootlin.com>
CC: Claudiu Beznea <claudiu.beznea@tuxon.dev>
CC: Lee Jones <lee@kernel.org>
CC: Rob Herring <robh@kernel.org>
CC: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: Conor Dooley <conor+dt@kernel.org>
CC: devicetree@vger.kernel.org
CC: linux-kernel@vger.kernel.org
CC: linux-arm-kernel@lists.infradead.org
CC: linux-mediatek@lists.infradead.org
 Documentation/devicetree/bindings/mfd/syscon.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 50f0012f4ebe..64829ecbb0b0 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -239,6 +239,12 @@ properties:
               - ti,j784s4-pcie-ctrl
               - ti,keystone-pllctrl
           - const: syscon
+      - items:
+          - enum:
+              - microchip,sama7g5-sfrbu
+              - microchip,sama7d65-sfrbu
+          - const: atmel,sama5d2-sfrbu
+          - const: syscon
       - items:
           - const: microchip,pic64gx-control-scb
           - const: microchip,mpfs-control-scb
-- 
2.51.0


