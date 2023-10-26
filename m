Return-Path: <devicetree+bounces-12055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B79537D7C06
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 07:11:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A001D1C20EFA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 05:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE5CC134;
	Thu, 26 Oct 2023 05:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B49BDC150
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 05:11:23 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FACE93
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 22:11:22 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvsdx-0004Y7-VD; Thu, 26 Oct 2023 07:10:53 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qvsdw-004L1P-KV; Thu, 26 Oct 2023 07:10:52 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qvsdw-009ikT-1p;
	Thu, 26 Oct 2023 07:10:52 +0200
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
Subject: [PATCH net-next v8 0/5] net: dsa: microchip: provide Wake on LAN support (part 2)
Date: Thu, 26 Oct 2023 07:10:46 +0200
Message-Id: <20231026051051.2316937-1-o.rempel@pengutronix.de>
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

changes v8:
- rebase on top of net-next and s/slave/user/

changes v7:
- move wakeup-source after reset-gpios
- update "Wake event on port.." debug message
- add and use ksz_is_port_mac_global_usable() instead of
  ksz_switch_macaddr_get/put.

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

Oleksij Rempel (5):
  net: dsa: microchip: ksz9477: Add Wake on Magic Packet support
  net: dsa: microchip: Refactor comment for ksz_switch_macaddr_get()
    function
  net: dsa: microchip: Add error handling for ksz_switch_macaddr_get()
  net: dsa: microchip: Refactor switch shutdown routine for WoL
    preparation
  net: dsa: microchip: Ensure Stable PME Pin State for Wake-on-LAN

 drivers/net/dsa/microchip/ksz9477.c     | 103 ++++++++++++++++++++++-
 drivers/net/dsa/microchip/ksz9477.h     |   1 +
 drivers/net/dsa/microchip/ksz9477_i2c.c |   5 +-
 drivers/net/dsa/microchip/ksz_common.c  | 104 +++++++++++++++++++++---
 drivers/net/dsa/microchip/ksz_common.h  |   6 ++
 drivers/net/dsa/microchip/ksz_spi.c     |   5 +-
 6 files changed, 200 insertions(+), 24 deletions(-)

-- 
2.39.2


