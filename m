Return-Path: <devicetree+bounces-106692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A5498B5D2
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 09:38:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D0DC282D3E
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 07:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7598C1BE864;
	Tue,  1 Oct 2024 07:37:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94691BDAAD
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 07:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727768249; cv=none; b=Lc49Tc7F5IV2/dqOAukgzfKzhja1XEyyrq4179nTrLMUovspFXcHA5fhAS0SBUUdHVJtPouWazUSZdQAjyS5iRTMTbBr1zYSX13g2ral5PWBjztvNSDAZo4pLfuIpkKchejXTeWAq/oKMdfjFhFAgD7ZCufBwxsvMvvXQjgTgBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727768249; c=relaxed/simple;
	bh=m4YvWmrwbeRBPg8q4WNjtX2529jGyPX7Sty7J8YI0nc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bWkdFDGBTMw4fsxoO2VvCjtv02p/lbczwFpxJlESgbyrfXPSRQ5goowmVsPk2OM6gEPdlfZL7pzutNYJ8Pwl7nKBc969JDXbzfVGvW2A9NEpCqkE4QyiR3wk8chgxjWjc4vGnVxRLaB1thfYFZJAnokpsbfq/1JTMtU3zpsVYUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1svXRT-0006X1-73; Tue, 01 Oct 2024 09:37:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1svXRR-002p9r-JZ; Tue, 01 Oct 2024 09:37:05 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1svXRR-005pbC-1j;
	Tue, 01 Oct 2024 09:37:05 +0200
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
Subject: [PATCH net-next v4 1/2] dt-bindings: net: ethernet-phy: Add timing-role role property for ethernet PHYs
Date: Tue,  1 Oct 2024 09:37:03 +0200
Message-Id: <20241001073704.1389952-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241001073704.1389952-1-o.rempel@pengutronix.de>
References: <20241001073704.1389952-1-o.rempel@pengutronix.de>
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

This patch introduces a new `timing-role` property in the device tree
bindings for configuring the master/slave role of PHYs. This is
essential for scenarios where hardware strap pins are unavailable or
incorrectly configured.

The `timing-role` property supports the following values:
- `force-master`: Forces the PHY to operate as a master (clock source).
- `force-slave`: Forces the PHY to operate as a slave (clock receiver).
- `prefer-master`: Prefers the PHY to be master but allows negotiation.
- `prefer-slave`: Prefers the PHY to be slave but allows negotiation.

The terms "master" and "slave" are retained in this context to align
with the IEEE 802.3 standards, where they are used to describe the roles
of PHY devices in managing clock signals for data transmission. In
particular, the terms are used in specifications for 1000Base-T and
MultiGBASE-T PHYs, among others. Although there is an effort to adopt
more inclusive terminology, replacing these terms could create
discrepancies between the Linux kernel and the established standards,
documentation, and existing hardware interfaces.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
changes v4:
- add "Reviewed-by: Rob Herring (Arm) <robh@kernel.org>"
changes v3:
- rename "master-slave" to "timing-role"
changes v2:
- use string property instead of multiple flags
---
 .../devicetree/bindings/net/ethernet-phy.yaml | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index d9b62741a2259..da9eaa811d70f 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -158,6 +158,27 @@ properties:
       Mark the corresponding energy efficient ethernet mode as
       broken and request the ethernet to stop advertising it.
 
+  timing-role:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - force-master
+      - force-slave
+      - prefer-master
+      - prefer-slave
+    description: |
+      Specifies the timing role of the PHY in the network link. This property is
+      required for setups where the role must be explicitly assigned via the
+      device tree due to limitations in hardware strapping or incorrect strap
+      configurations.
+      It is applicable to Single Pair Ethernet (1000/100/10Base-T1) and other
+      PHY types, including 1000Base-T, where it controls whether the PHY should
+      be a master (clock source) or a slave (clock receiver).
+
+      - 'force-master': The PHY is forced to operate as a master.
+      - 'force-slave': The PHY is forced to operate as a slave.
+      - 'prefer-master': Prefer the PHY to be master but allow negotiation.
+      - 'prefer-slave': Prefer the PHY to be slave but allow negotiation.
+
   pses:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
-- 
2.39.5


