Return-Path: <devicetree+bounces-119319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2909BDFE4
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:01:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 932D01F24772
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:01:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465461D7E26;
	Wed,  6 Nov 2024 08:00:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4ED1D3653
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730880009; cv=none; b=idzM0F9nR9cbWCnfCSmWWoXGbadDDAzOQgOtYT4j6CvWCESd7xPZjBqQZXUV9T9rov+S650LbCoQtVCnT8txPbulP1QsTv10/WdytKX5svWquCu8xmns70QVWmoGHSRCSyOGISkMsqsTycrCdG4OsRU/pO+VukSiPWaYOzp3Ync=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730880009; c=relaxed/simple;
	bh=T+xjX/vgtVXnHzmuPyF39usEEvfozMcN13imG475yKo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gBb0oCa3VSRtNzmNQyniFOxQ+h1ysav2CuQ24MSd2AWYwhWjN5hXUOS1hWSdQY1dRV4ljP7+qhhC4V3Brkw9pYuVk6FhOkfdEo4ZTfqXdkVXDk/uCkgE6ZbnBSnujYbqPE/a0XAO+lXE2N8zr6R/QyPAHwayFo4q9otM0NtvC2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1t8ax6-0000nd-AW; Wed, 06 Nov 2024 08:59:44 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t8ax4-002Gde-2u;
	Wed, 06 Nov 2024 08:59:42 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t8ax4-006rrh-2e;
	Wed, 06 Nov 2024 08:59:42 +0100
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
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	UNGLinuxDriver@microchip.com,
	"Russell King (Oracle)" <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	Marek Vasut <marex@denx.de>
Subject: [PATCH net-next v4 0/6] Side MDIO Support for LAN937x Switches
Date: Wed,  6 Nov 2024 08:59:35 +0100
Message-Id: <20241106075942.1636998-1-o.rempel@pengutronix.de>
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

changes v3:
- add "net: dsa: microchip: parse PHY config from device tree" patch

other changelogs are added to separate patches.

Oleksij Rempel (6):
  dt-bindings: net: dsa: microchip: add internal MDIO bus description
  dt-bindings: net: dsa: microchip: add mdio-parent-bus property for
    internal MDIO
  net: dsa: microchip: Refactor MDIO handling for side MDIO access
  net: dsa: microchip: cleanup error handling in ksz_mdio_register
  net: dsa: microchip: add support for side MDIO interface in LAN937x
  net: dsa: microchip: parse PHY config from device tree

 .../bindings/net/dsa/microchip,ksz.yaml       |  20 ++
 drivers/net/dsa/microchip/ksz_common.c        | 259 ++++++++++++++++--
 drivers/net/dsa/microchip/ksz_common.h        |  59 ++++
 drivers/net/dsa/microchip/lan937x.h           |   2 +
 drivers/net/dsa/microchip/lan937x_main.c      | 226 +++++++++++++--
 drivers/net/dsa/microchip/lan937x_reg.h       |   4 +
 6 files changed, 538 insertions(+), 32 deletions(-)



