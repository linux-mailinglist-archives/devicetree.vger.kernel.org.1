Return-Path: <devicetree+bounces-8935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 103857CAB0E
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 16:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A550FB20DB2
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 14:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3CA28E10;
	Mon, 16 Oct 2023 14:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5456728DB7
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:13:24 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A54C9B
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 07:13:23 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qsOL4-0002pB-HV; Mon, 16 Oct 2023 16:12:58 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qsOL3-0026aC-8g; Mon, 16 Oct 2023 16:12:57 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qsOL3-008RNy-0e;
	Mon, 16 Oct 2023 16:12:57 +0200
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
Subject: [PATCH net-next v4 0/9] net: dsa: microchip: provide Wake on LAN support
Date: Mon, 16 Oct 2023 16:12:47 +0200
Message-Id: <20231016141256.2011861-1-o.rempel@pengutronix.de>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This patch series introduces extensive Wake on LAN (WoL) support for the
Microchip KSZ9477 family of switches, coupled with some code refactoring
and error handling enhancements. The principal aim is to enable and
manage Wake on Magic Packet and other PHY event triggers for waking up
the system, whilst ensuring that the switch isn't reset during a
shutdown if WoL is active.

The Wake on LAN functionality is optional and is particularly beneficial
if the PME pins are connected to the SoC as a wake source or to a PMIC
that can enable or wake the SoC.

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
- don't shotdown the switch if WoL is enabled
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
  net: dsa: microchip: do not reset the switch on shutdown if WoL is
    active

 .../bindings/net/dsa/microchip,ksz.yaml       |   2 +
 drivers/net/dsa/microchip/ksz9477.c           | 122 ++++++++++++++++++
 drivers/net/dsa/microchip/ksz9477.h           |   4 +
 drivers/net/dsa/microchip/ksz9477_i2c.c       |   5 +-
 drivers/net/dsa/microchip/ksz_common.c        | 115 +++++++++++++++--
 drivers/net/dsa/microchip/ksz_common.h        |   8 ++
 drivers/net/dsa/microchip/ksz_spi.c           |   5 +-
 7 files changed, 242 insertions(+), 19 deletions(-)

-- 
2.39.2


