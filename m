Return-Path: <devicetree+bounces-77884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 423E491039B
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 14:02:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5333F1C2132E
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:02:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B43C01AC767;
	Thu, 20 Jun 2024 12:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="NyLNy7mt"
X-Original-To: devicetree@vger.kernel.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6958C1AB34A;
	Thu, 20 Jun 2024 12:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.178.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718884914; cv=none; b=R9H+ECzciIzHcF5JR9m1GbRlmM6A/Nng/AcRA4qsjtZtor/OzRsNVfkzE20WSDvgQrFkYNI3dpmHLlOhpF7IreBb7TXyoKxb/vEQe0z6GbG0UZBiFGAYdMYpOiX7uFn37XcEYvpi83GJy5MUm+F91kMBhqdIpqZuI1SHJIIRDJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718884914; c=relaxed/simple;
	bh=OIowDhxypt9LiGcjqB5Z6dc7u0vM3OGs3dWxFFkhkhw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rE91QUYNmWT2F4lEFMw2bwL8IS16fvIOVp1Ju5r8dVKzXM62DqL8dFdFSZtGDRiJaRSKgPTpxxPcAWonf1aZhiXnv8H3Nan02sboGzxjOqbC54k9Ej8pr6Q5dfNFENaLABVsCD8QOmvKchW1yQHcuhlACsrFMqt/2eyRxsidPPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=NyLNy7mt; arc=none smtp.client-ip=217.70.178.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from relay5-d.mail.gandi.net (unknown [IPv6:2001:4b98:dc4:8::225])
	by mslow1.mail.gandi.net (Postfix) with ESMTP id DB586C4F11;
	Thu, 20 Jun 2024 12:01:44 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPA id D38741C0002;
	Thu, 20 Jun 2024 12:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1718884896;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BYS+7QPQSgVSHOoyqLuN1/ixRCRmt3jQrcCLIrMclVw=;
	b=NyLNy7mtXCX9yHK25pv6QLDgok963iRfzUWLO8APoUkvhZTbIopCj5/LL0aawj58fhp6GP
	1tUvmZiKIQQQxWThnlPyH9s+oo8VmMHdrN2HJaWQP7hExGxcNX+bjGRPBxlWKLBvM2xwKn
	pomhqxi8x8s+dk4wf4j7LKGXntoXXmwxUKZ6lJp6OBlNFcWoN5b8sKIww634IMi3PHophZ
	zwPnju3f1UvVza6o4I9T7+XfPXY/e8PR926CXIBN6ChZiFmmhJ+nlerERo4RSWU+2z4Z/9
	7VkegLAkUBeJBfY80g8uQ5Jwg+9SOl4HaQmtarSoBCBJOhGzzjL8KzxcA0Wpmw==
From: Herve Codina <herve.codina@bootlin.com>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH net-next v3 2/2] net: mdio: mscc-miim: Handle the switch reset
Date: Thu, 20 Jun 2024 14:01:25 +0200
Message-ID: <20240620120126.412323-3-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240620120126.412323-1-herve.codina@bootlin.com>
References: <20240620120126.412323-1-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

The mscc-miim device can be impacted by the switch reset, at least when
this device is part of the LAN966x PCI device.

Handle this newly added (optional) resets property.

Signed-off-by: Herve Codina <herve.codina@bootlin.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 drivers/net/mdio/mdio-mscc-miim.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/mdio/mdio-mscc-miim.c b/drivers/net/mdio/mdio-mscc-miim.c
index c29377c85307..62c47e0dd142 100644
--- a/drivers/net/mdio/mdio-mscc-miim.c
+++ b/drivers/net/mdio/mdio-mscc-miim.c
@@ -19,6 +19,7 @@
 #include <linux/platform_device.h>
 #include <linux/property.h>
 #include <linux/regmap.h>
+#include <linux/reset.h>
 
 #define MSCC_MIIM_REG_STATUS		0x0
 #define		MSCC_MIIM_STATUS_STAT_PENDING	BIT(2)
@@ -271,10 +272,17 @@ static int mscc_miim_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct regmap *mii_regmap, *phy_regmap;
 	struct device *dev = &pdev->dev;
+	struct reset_control *reset;
 	struct mscc_miim_dev *miim;
 	struct mii_bus *bus;
 	int ret;
 
+	reset = devm_reset_control_get_optional_shared(dev, "switch");
+	if (IS_ERR(reset))
+		return dev_err_probe(dev, PTR_ERR(reset), "Failed to get reset\n");
+
+	reset_control_reset(reset);
+
 	mii_regmap = ocelot_regmap_from_resource(pdev, 0,
 						 &mscc_miim_regmap_config);
 	if (IS_ERR(mii_regmap))
-- 
2.45.0


