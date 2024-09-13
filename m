Return-Path: <devicetree+bounces-102620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BECD6977B5E
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 10:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74C3928A5CE
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 08:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E78551D7991;
	Fri, 13 Sep 2024 08:41:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5FB1D7980
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 08:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726216860; cv=none; b=X2mUSRVmbWG8u+wfNtW5qBqLn5xwvkTy8wDtJJ/Tk3GxITH8VVZ3JDOJPfBH8mu0tdAEMxsw3IniaRkoxHkjfOyV1ZB5XlFrCyvBNV8IyGFVvvRGuBsVMVnSI6OSbeTxuqb1P8SvnCA/LG5Rk9N61Vx86WSqMeN8ofbIL//7rE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726216860; c=relaxed/simple;
	bh=0LlbElMcGAJz6GpSr9Y04Kxy9f5hmCMrBiOpV1YLOBg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=UzXCAYIYjI4mpeiwjCTL1CdHJWDtBHJewNNP7Bp8XQ4BoFRxRAjW4KAOv+wUt0W8+kDKjhypZ7XDT4zYtB8irTNpktsZstYg+SUikpSQP5NJeZE6x7fpasF925CbekKnYHE8DvULGjx+b/5kotD2omDm/x+iPVjf9e+Ij4xEjq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1sp1qr-0005n7-L3; Fri, 13 Sep 2024 10:40:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1sp1qp-007a7X-RY; Fri, 13 Sep 2024 10:40:23 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1sp1qp-00E1uI-2V;
	Fri, 13 Sep 2024 10:40:23 +0200
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
Subject: [PATCH net-next v3 0/2] net: phy: Support master-slave config via device tree
Date: Fri, 13 Sep 2024 10:40:20 +0200
Message-Id: <20240913084022.3343903-1-o.rempel@pengutronix.de>
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

This patch series adds support for configuring the master/slave role of
PHYs via the device tree. A new `master-slave` property is introduced in
the device tree bindings, allowing PHYs to be forced into either master
or slave mode. This is particularly necessary for Single Pair Ethernet
(SPE) PHYs (1000/100/10Base-T1), where hardware strap pins may not be
available or correctly configured, but it is applicable to all PHY
types.

changes v3:
- rename  master-slave to timing-role
- add prefer-master/slave support

Oleksij Rempel (2):
  dt-bindings: net: ethernet-phy: Add timing-role role property for
    ethernet PHYs
  net: phy: Add support for PHY timing-role configuration via device
    tree

 .../devicetree/bindings/net/ethernet-phy.yaml | 21 ++++++++++++
 drivers/net/phy/phy-core.c                    | 33 +++++++++++++++++++
 drivers/net/phy/phy_device.c                  |  3 ++
 include/linux/phy.h                           |  1 +
 4 files changed, 58 insertions(+)

--
2.39.2


