Return-Path: <devicetree+bounces-10072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D34D7CF8C9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25F321C20A97
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 392BD225B5;
	Thu, 19 Oct 2023 12:29:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91863225AD
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:29:17 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11367136
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 05:29:16 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qtS8y-0006Kr-D7; Thu, 19 Oct 2023 14:28:52 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qtS8x-002mri-Ea; Thu, 19 Oct 2023 14:28:51 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qtS8x-00528Y-1F;
	Thu, 19 Oct 2023 14:28:51 +0200
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
Subject: [PATCH net-next v6 0/9] net: dsa: microchip: provide Wake on LAN support
Date: Thu, 19 Oct 2023 14:28:41 +0200
Message-Id: <20231019122850.1199821-1-o.rempel@pengutronix.de>
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

This patch series introduces extensive Wake on LAN (WoL) support for the
Microchip KSZ9477 family of switches, coupled with some code refactoring
and error handling enhancements. The principal aim is to enable and
manage Wake on Magic Packet and other PHY event triggers for waking up
the system, whilst ensuring that the switch isn't reset during a
shutdown if WoL is active.

The Wake on LAN functionality is optional and is particularly beneficial
if the PME pins are connected to the SoC as a wake source or to a PMIC
that can enable or wake the SoC.

changes v6:
- add variables magic_switched_off and magic_switched_on for readability
- EXPORT_SYMBOL(ksz_switch_shutdown); to fix build as module 

changes v5:
- rework Wake on Magic Packet support.
- Make sure we show more or less realistic information on get_wol by
  comparing refcounted mac address against the ports address
- fix mac address refcounting on set_wol()
- rework shutdown sequence by to handle PMIC related issues. Make sure
  PME pin is net frequently toggled.
- use wakeup_source variable instead of reading PME pin register.

changes v4:
- add ksz_switch_shutdown() and do not skip dsa_switch_shutdown() and
  etc.
- try to configure MAC address on WAKE_MAGIC. If not possible, prevent
  WAKE_MAGIC configuration
- use ksz_switch_macaddr_get() for WAKE_MAGIC.
- prevent ksz_port_set_mac_address if WAKE_MAGIC is active
- do some more refactoring and patch reordering

changes v3:
- use ethernet address of DSA master instead from devicetree
- use dev_ops->wol* instead of list of supported switch
- don't shutdown the switch if WoL is enabled
- rework on top of latest HSR changes

changes v2:
- rebase against latest next

Oleksij Rempel (9):
  net: dsa: microchip: Add missing MAC address register offset for
    ksz8863
  dt-bindings: net: dsa: microchip: add wakeup-source property
  net: dsa: microchip: use wakeup-source DT property to enable PME
    output
  net: dsa: microchip: ksz9477: add Wake on LAN support
  net: dsa: microchip: ksz9477: Add Wake on Magic Packet support
  net: dsa: microchip: Refactor comment for ksz_switch_macaddr_get()
    function
  net: dsa: microchip: Add error handling for ksz_switch_macaddr_get()
  net: dsa: microchip: Refactor switch shutdown routine for WoL
    preparation
  net: dsa: microchip: Ensure Stable PME Pin State for Wake-on-LAN

 .../bindings/net/dsa/microchip,ksz.yaml       |   2 +
 drivers/net/dsa/microchip/ksz9477.c           | 198 ++++++++++++++++++
 drivers/net/dsa/microchip/ksz9477.h           |   5 +
 drivers/net/dsa/microchip/ksz9477_i2c.c       |   5 +-
 drivers/net/dsa/microchip/ksz_common.c        |  97 +++++++--
 drivers/net/dsa/microchip/ksz_common.h        |  10 +
 drivers/net/dsa/microchip/ksz_spi.c           |   5 +-
 7 files changed, 302 insertions(+), 20 deletions(-)

-- 
2.39.2


