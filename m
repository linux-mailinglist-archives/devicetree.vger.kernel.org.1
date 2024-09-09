Return-Path: <devicetree+bounces-101413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 246C59719C1
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 14:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4F6E61C23177
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 12:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D9E1B9B36;
	Mon,  9 Sep 2024 12:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C1F1B9859
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 12:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725885847; cv=none; b=hUBBtcT0ZsQvbX8m1ERHvSszKJmpgKAcbS2TZFH8oE2gZ7SDZpoXpraFKY3BxSjg48Y/BR8FkjMTy5gYflM64VnmNlJoMdVghjfEtKY+1bQWTdbJ2/OtV4/YNQk+t8XM6sZrYHrbpPGTtv0ymAQsamDlrAhOVzGtjeaDPX6ubd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725885847; c=relaxed/simple;
	bh=W9kxmgMcKPthsWdSz/7ZRmw+fFncj22NIKjuqa8yPM8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kIpdiqhjRC4k/8O3rCWM1y8tFSEUZAXDXw09nL9V766cd+3uxaRiJwGnX9si7EW5VDMvCPSnp81MQe8Lk2gevsHDngTe+xQDxXebDKR2KZb3Tgo82jvtmdyoA+UsdbdzaR1wf6OarVTHmnlO5wwaDVzNYEXdrFUOOiO2yGFJ7oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sndk8-0001rE-Jx; Mon, 09 Sep 2024 14:43:44 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sndk6-006elM-QU; Mon, 09 Sep 2024 14:43:42 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sndk6-00BuMy-2N;
	Mon, 09 Sep 2024 14:43:42 +0200
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
Subject: [PATCH net-next v2 1/2] dt-bindings: net: ethernet-phy: Add master-slave role property for SPE PHYs
Date: Mon,  9 Sep 2024 14:43:40 +0200
Message-Id: <20240909124342.2838263-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240909124342.2838263-1-o.rempel@pengutronix.de>
References: <20240909124342.2838263-1-o.rempel@pengutronix.de>
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

Introduce a new `master-slave` string property in the ethernet-phy
binding to specify the link role for Single Pair Ethernet
(1000/100/10Base-T1) PHYs. This property supports the values
`forced-master` and `forced-slave`, which allow the PHY to operate in a
predefined role, necessary when hardware strap pins are unavailable or
wrongly set.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
changes v2:
- use string property instead of multiple flags
---
 .../devicetree/bindings/net/ethernet-phy.yaml      | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index d9b62741a2259..025e59f6be6f3 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -158,6 +158,20 @@ properties:
       Mark the corresponding energy efficient ethernet mode as
       broken and request the ethernet to stop advertising it.
 
+  master-slave:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum:
+      - forced-master
+      - forced-slave
+    description: |
+      Specifies the predefined link role for the PHY in Single Pair Ethernet
+      (1000/100/10Base-T1).  This property is required for setups where the link
+      role must be assigned by the device tree due to limitations in using
+      hardware strap pins.
+
+      - 'forced-master': The PHY is forced to operate as a master.
+      - 'forced-slave': The PHY is forced to operate as a slave.
+
   pses:
     $ref: /schemas/types.yaml#/definitions/phandle-array
     maxItems: 1
-- 
2.39.2


