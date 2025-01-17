Return-Path: <devicetree+bounces-139291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E5883A15006
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 14:04:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F0E5163EF4
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 13:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94B531FF608;
	Fri, 17 Jan 2025 13:04:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [195.130.137.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A9D1FECBA
	for <devicetree@vger.kernel.org>; Fri, 17 Jan 2025 13:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.137.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737119090; cv=none; b=DfYbv1FIEY20hFX2Z7ivY0teZGpYUqNPT4er3vJ80uHmsmiKSKk3ImRhLYb93kGx+nqB3mntdyIez2ijvaCcuMQgPM0kGnbDn784+x3OeY3P9DbPr+vW1v/9kYv/R75mWMB/PqX7Zc7BoudMX0WCL1EMZKgXr4AKJBCXEIY+240=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737119090; c=relaxed/simple;
	bh=cUocZw5SW7jwrYAuaWxNWuG7yuQ1UVsZ5W2GEvCIzM4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VAPi77lNGB8M1hxH0ngz7jAbOlED3OpwUrHLAIbMukxr46OV7bfjlDa78l7qm9aAzIof48WVq4jvug1Bkoo7ynSIPihTphEB3d9S1IKIK17uge231Egp5oJvUM1acMl27dV5JJ8YrXfh8+MVst9Gp763XtQc6hV623VX0O567Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.137.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:e8f3:e87e:7352:b33b])
	by laurent.telenet-ops.be with cmsmtp
	id 2D4g2E00627fVKr01D4gmC; Fri, 17 Jan 2025 14:04:40 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1a-0000000DPU3-35Ex;
	Fri, 17 Jan 2025 14:04:40 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tYm1f-00000004wB7-3R4I;
	Fri, 17 Jan 2025 14:04:39 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Herve Codina <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 1/3] dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify endpoint use
Date: Fri, 17 Jan 2025 14:04:36 +0100
Message-ID: <0f2d1bcb431827b65b2c0ba6619d9126ec97da72.1737118595.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737118595.git.geert+renesas@glider.be>
References: <cover.1737118595.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reword the description, to make it clear that the LAN966x Outbound
Interrupt Controller is used only in PCI endpoint mode.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 .../bindings/interrupt-controller/microchip,lan966x-oic.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml b/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml
index b2adc71741770940..dca16e202da992cd 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/microchip,lan966x-oic.yaml
@@ -14,9 +14,8 @@ allOf:
 
 description: |
   The Microchip LAN966x outband interrupt controller (OIC) maps the internal
-  interrupt sources of the LAN966x device to an external interrupt.
-  When the LAN966x device is used as a PCI device, the external interrupt is
-  routed to the PCI interrupt.
+  interrupt sources of the LAN966x device to a PCI interrupt when the LAN966x
+  device is used as a PCI device.
 
 properties:
   compatible:
-- 
2.43.0


