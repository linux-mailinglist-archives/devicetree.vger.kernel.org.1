Return-Path: <devicetree+bounces-116965-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F359B47E6
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 12:09:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E31541C252C4
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 11:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CED7206954;
	Tue, 29 Oct 2024 11:08:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA751EE031
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 11:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730200080; cv=none; b=PjkJddcL3fSrKbo0LjijNI14qJNyN7CR6n07H7zOJ0G0h8WC+oaSz3HPB+J8srxXfrE95C0eDP7x4Or4AQqEKzGFI/tP/mfHvZ3HxCYyz/ipg+DfLiu0//9i7B78baLcyqPWOQx8usXMe9vOdJ/jxpaHNKMQC7nAkvNABbrLBXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730200080; c=relaxed/simple;
	bh=mv2/SEFrlPC3p6OnzI+7NQhDPVvHM/AyOdIW9TzUXwc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=eRkhn69yxlng3mPdHFPzoKs+sIiuDEwcPeRGSoxADdJVX1M1SW6Rm5+3kTf92y3jjJboaZ6QkWJ0Y6PWc86uFNaY2vnHYpEc0XyEx53z04mULAcDuoa5dBxA35xz4A4+Z1zmgzciWKFsvYOqiLpQClgBYybi11q0ddNOEmnBHJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1t5k4V-0008Es-BW; Tue, 29 Oct 2024 12:07:35 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t5k4T-0010yq-2I;
	Tue, 29 Oct 2024 12:07:33 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t5k4T-008IL0-22;
	Tue, 29 Oct 2024 12:07:33 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: "David S. Miller" <davem@davemloft.net>,
	Andrew Lunn <andrew@lunn.ch>,
	Eric Dumazet <edumazet@google.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Vladimir Oltean <olteanv@gmail.com>,
	Woojung Huh <woojung.huh@microchip.com>,
	Arun Ramadoss <arun.ramadoss@microchip.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	Marek Vasut <marex@denx.de>
Subject: [PATCH net-next v2 2/5] dt-bindings: net: dsa: ksz: add mdio-parent-bus property for internal MDIO
Date: Tue, 29 Oct 2024 12:07:29 +0100
Message-Id: <20241029110732.1977064-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241029110732.1977064-1-o.rempel@pengutronix.de>
References: <20241029110732.1977064-1-o.rempel@pengutronix.de>
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

Introduce `mdio-parent-bus` property in the ksz DSA bindings to
reference the parent MDIO bus when the internal MDIO bus is attached to
it, bypassing the main management interface.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 .../devicetree/bindings/net/dsa/microchip,ksz.yaml       | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
index a4e463819d4d7..121a4bbd147be 100644
--- a/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
+++ b/Documentation/devicetree/bindings/net/dsa/microchip,ksz.yaml
@@ -84,6 +84,15 @@ properties:
   mdio:
     $ref: /schemas/net/mdio.yaml#
     unevaluatedProperties: false
+    properties:
+      mdio-parent-bus:
+        $ref: /schemas/types.yaml#/definitions/phandle
+        description:
+          Phandle pointing to the MDIO bus controller connected to the
+          secondary MDIO interface. This property should be used when
+          the internal MDIO bus is accessed via a secondary MDIO
+          interface rather than the primary management interface.
+
     patternProperties:
       "^ethernet-phy@[0-9a-f]$":
         type: object
-- 
2.39.5


