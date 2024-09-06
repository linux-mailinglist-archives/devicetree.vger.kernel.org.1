Return-Path: <devicetree+bounces-100910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7095096F764
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 16:50:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 281481F23D01
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 14:50:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0828D1D2787;
	Fri,  6 Sep 2024 14:49:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0711D1F70
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 14:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725634174; cv=none; b=ZrfcEGwFX9LKyPuyfIzM76EpAANOz5iQ2e23SuVA0JhpVWkQMDPF3ZLw0Vg3MyvfsGoFX2zClleB+IqXWot6BSYRjExR8OkLncR876ecIgro79CmFXLPEYLAsCdvoI/FxQ3vpBFdPkI61a1fISKEyoq6t4USK1P8BqGpeOOnHy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725634174; c=relaxed/simple;
	bh=xVVgbrWIXaB/p99YJfW21mbOGrXIDGuVDt7LUSL8C2A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=rLgrCgDEYGFOAITJiUGPnkql+0KZMwfrxZIVAJOSwCCWYQoMxkvlopYV6fishQazOML6ZE7woNeGqt/yb7+5u7b54Dw8AQajx86WiB9/d/Z4kISazpKwBISXaDmT040o+6/Zzdae3m6Y/df0XVj2Bu91q6VSRELBVscykv9sNp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1smaGq-0003cv-In; Fri, 06 Sep 2024 16:49:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1smaGo-005y8E-Qv; Fri, 06 Sep 2024 16:49:06 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1smaGo-002Tt0-2Q;
	Fri, 06 Sep 2024 16:49:06 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: [PATCH v1] dt-bindings: net: ethernet-phy: Add forced-master/slave properties for SPE PHYs
Date: Fri,  6 Sep 2024 16:49:05 +0200
Message-Id: <20240906144905.591508-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Add two new properties, `forced-master` and `forced-slave`, to the
ethernet-phy binding. These properties are intended for Single Pair
Ethernet (1000/100/10Base-T1) PHYs, where each PHY and product may have
a predefined link role (master or slave). Typically, these roles are set
by hardware strap pins, but in some cases, device tree configuration is
necessary.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 .../devicetree/bindings/net/ethernet-phy.yaml | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index d9b62741a2259..af7a1eb6ceff6 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -158,6 +158,28 @@ properties:
       Mark the corresponding energy efficient ethernet mode as
       broken and request the ethernet to stop advertising it.

+  forced-master:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      If set, forces the PHY to operate as a master. This is used in Single Pair
+      Ethernet (1000/100/10Base-T1) where each PHY and product has a predefined
+      link role (master or slave). This property is board-specific, as the role
+      is usually configured by strap pins but can be set through the device tree
+      if needed.
+      This property is mutually exclusive with 'forced-slave'; only one of them
+      should be used.
+
+  forced-slave:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      If set, forces the PHY to operate as a slave. This is used in Single Pair
+      Ethernet (1000/100/10Base-T1) where each PHY and product has a predefined
+      link role (master or slave). This property is board-specific, as the role
+      is usually configured by strap pins but can be set through the device tree
+      if needed.
+      This property is mutually exclusive with 'forced-master'; only one of them
+      should be used.
+
   pses:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
--
2.39.2


