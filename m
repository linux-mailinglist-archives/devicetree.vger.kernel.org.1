Return-Path: <devicetree+bounces-115913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE059B1575
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 08:37:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9638D1F230EC
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 06:37:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24411C2315;
	Sat, 26 Oct 2024 06:36:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F061A19308E
	for <devicetree@vger.kernel.org>; Sat, 26 Oct 2024 06:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729924565; cv=none; b=tGJzlbnO5wsjC1tpb0C56uTEuQSzQAmI6GsprbpH8wUEGNgSzCiAY7cDqP4JsdjgVippieFToouUw0OiMXFbgrvKFkNa3EvvYbsaxgHoure8MmvOA94qNfxgQ0DnHgfD50wzAUw+RZ5LhDtQj/cUOQRMERYH+jkYRGOSRy7NyeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729924565; c=relaxed/simple;
	bh=Ci51WC2Qiy2QKzywPrIvx2AV3tqDCfKcFsQ3CIeOwR8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=O0IQOw7AMIqpPnFaGTmraiA7madBcmTcOAAz9iZgTp4ggag2dPhtwLsi89Qno7ahaGroSHffP+rVFBvbb7cympZE3onb9hkyJl24P1/GcLfuC8bKr9VwxfUy7QB1CTDA+PMBpsVGWPekDdKNxWJW9uWJQhcGb+piqOWX4/vmI0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1t4aOj-0006k9-1n; Sat, 26 Oct 2024 08:35:41 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t4aOh-000UfK-0B;
	Sat, 26 Oct 2024 08:35:39 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t4aOg-00AVy9-39;
	Sat, 26 Oct 2024 08:35:38 +0200
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
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org
Subject: [PATCH net-next v1 0/5] Side MDIO Support for LAN937x Switches
Date: Sat, 26 Oct 2024 08:35:33 +0200
Message-Id: <20241026063538.2506143-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
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

This patch set introduces support for an internal MDIO bus in LAN937x
switches, enabling the use of a side MDIO channel for PHY management
while keeping SPI as the main interface for switch configuration.

Oleksij Rempel (5):
  dt-bindings: net: dsa: ksz: add internal MDIO bus description
  dt-bindings: net: dsa: ksz: add mdio-parent-bus property for internal
    MDIO
  net: dsa: microchip: Refactor MDIO handling for side MDIO access
  net: dsa: microchip: cleanup error handling in ksz_mdio_register
  net: dsa: microchip: add support for side MDIO interface in LAN937x

 .../bindings/net/dsa/microchip,ksz.yaml       |  20 +++
 drivers/net/dsa/microchip/ksz_common.c        | 119 +++++++++++++--
 drivers/net/dsa/microchip/ksz_common.h        |   7 +
 drivers/net/dsa/microchip/lan937x.h           |   2 +
 drivers/net/dsa/microchip/lan937x_main.c      | 139 ++++++++++++++++--
 drivers/net/dsa/microchip/lan937x_reg.h       |   4 +
 6 files changed, 259 insertions(+), 32 deletions(-)

--
2.39.5


