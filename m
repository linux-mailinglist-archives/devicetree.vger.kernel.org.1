Return-Path: <devicetree+bounces-139795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 40D4DA16E7C
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 15:35:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A8FA7A2924
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEDE61E378C;
	Mon, 20 Jan 2025 14:35:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [195.130.132.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED761E0E08
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 14:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737383716; cv=none; b=lLLHSZsd093NOyC7Tq2mZQxgX+bfyrDHxV9Ricreu5wfgTfdLuErxrbs8HclPJQ1Sb2DivuWx8R9IUYHK/E53zuYyew8wvXqjyfG6msviQTS0cmECI5je7FzDXwoA6e/oAtOBjVWyqKclmEgpaKHXFRbDaUTnTxq6oly/uRIK9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737383716; c=relaxed/simple;
	bh=/ksfzCJh1YLk8Ftu01ILRurWr7VgKSbMi4w+U4eFDRs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MN6H6Fif6bKWwM5Bz5kA5norF+1A1simvoUEoYkDxf3jH18pJEpZbJv6AmS7H4P7j+QDmqHvxrsyuAMasTAhGMOTjU97ejE8DtE1sJ6+oWHP75uoB2A52sY29rhv/A3nXFVjig71SIZlzD+Eo73VJWJiWzqp+H2/y331/uYDHRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:30c9:4dcf:fe21:4b10])
	by xavier.telenet-ops.be with cmsmtp
	id 3Sb42E00D0raqVW01Sb4Zg; Mon, 20 Jan 2025 15:35:06 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsrh-0000000DhTT-3Lpi;
	Mon, 20 Jan 2025 15:35:04 +0100
Received: from geert by rox.of.borg with local (Exim 4.97)
	(envelope-from <geert@linux-m68k.org>)
	id 1tZsro-0000000DTZR-1JIG;
	Mon, 20 Jan 2025 15:35:04 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: =?UTF-8?q?Herv=C3=A9=20Codina?= <herve.codina@bootlin.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: interrupt-controller: microchip,lan966x-oic: Clarify endpoint use
Date: Mon, 20 Jan 2025 15:35:01 +0100
Message-ID: <247b1185c93610100f3f8c9e0ab2c1506e53e1f4.1737383314.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1737383314.git.geert+renesas@glider.be>
References: <cover.1737383314.git.geert+renesas@glider.be>
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
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Herve Codina <herve.codina@bootlin.com>
---
v3:
  - Add Acked-by,

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


