Return-Path: <devicetree+bounces-118997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB289BC8BF
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:11:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F4E02841FD
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D86791D31A9;
	Tue,  5 Nov 2024 09:10:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D51E1D0F50
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 09:10:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730797813; cv=none; b=gJLjMFk9Yey5VIZyCURqdaG05+aeCYHeh9qhTcUIG0r2azV+Rajxsj/NHdYVGGDlc9peIcYb3Kq08m3PWZbRRJv2wy8M0uf/6wdzo96KvlTB15y+69ttd/kljUN6M8CgCTK645FCkRtuGusvPEwwCbFBnn7ebdgkA7SAfscKSRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730797813; c=relaxed/simple;
	bh=qNTRoQF5G+AVxjUEitU9u/c7zu7hVdJSZwMOoY40uU8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=N+MU9wheqW4vwEUZ7EJpSgO4XtRW64gOvqtyMLpKS1QxJx+mKv2Ja6237+vjbENBZAckHB6tpuNLsj4qWVxt612rtxKsk6Q9s2OESBIgqqsY/SlTmeBFtS2nxR43XDmkJWQMPWaPc/8wiZmXU9T5ouu9p0SDwgMC+CmyiH07fQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1t8FZL-0003oP-Rq; Tue, 05 Nov 2024 10:09:47 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t8FZK-0027YX-1a;
	Tue, 05 Nov 2024 10:09:46 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1t8FZK-002og5-1E;
	Tue, 05 Nov 2024 10:09:46 +0100
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
Subject: [PATCH net-next v3 4/6] net: dsa: microchip: cleanup error handling in ksz_mdio_register
Date: Tue,  5 Nov 2024 10:09:42 +0100
Message-Id: <20241105090944.671379-5-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241105090944.671379-1-o.rempel@pengutronix.de>
References: <20241105090944.671379-1-o.rempel@pengutronix.de>
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

Replace repeated cleanup code with a single error path using a label.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/dsa/microchip/ksz_common.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/net/dsa/microchip/ksz_common.c b/drivers/net/dsa/microchip/ksz_common.c
index 89134e7fde93b..f9e45bba2d293 100644
--- a/drivers/net/dsa/microchip/ksz_common.c
+++ b/drivers/net/dsa/microchip/ksz_common.c
@@ -2411,8 +2411,8 @@ static int ksz_mdio_register(struct ksz_device *dev)
 
 	bus = devm_mdiobus_alloc(ds->dev);
 	if (!bus) {
-		of_node_put(mdio_np);
-		return -ENOMEM;
+		ret = -ENOMEM;
+		goto put_mdio_node;
 	}
 
 	if (dev->dev_ops->mdio_bus_preinit) {
@@ -2457,10 +2457,8 @@ static int ksz_mdio_register(struct ksz_device *dev)
 
 	if (dev->irq > 0) {
 		ret = ksz_irq_phy_setup(dev);
-		if (ret) {
-			of_node_put(mdio_np);
-			return ret;
-		}
+		if (ret)
+			goto put_mdio_node;
 	}
 
 	ret = devm_of_mdiobus_register(ds->dev, bus, mdio_np);
-- 
2.39.5


