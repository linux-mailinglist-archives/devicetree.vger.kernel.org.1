Return-Path: <devicetree+bounces-246210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E83CB9F2D
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 23:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5C8F31478B9
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 22:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85B45313E0F;
	Fri, 12 Dec 2025 22:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b="TwctT3SW"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-65-228.siemens.flowmailer.net (mta-65-228.siemens.flowmailer.net [185.136.65.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E16530E0C2
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 22:26:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.65.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765578397; cv=none; b=eOGIEtVmd1wQAK9cw7RtCKq8OebEqyxVvbEgXQfyVGbTTgA64S6K1fEmxnBdVwAdeWiJy/iaLFKiOV+zU6UQayTrQG7K/rtOTuwnzT5AU1dNorLKsK61ISJJ/5YNYhfGIiCC5+LB+tSUL9Dm4FFSW4RBrlVtvZIJ0CER4+dLjCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765578397; c=relaxed/simple;
	bh=/5UozvfqSU9wxK6uZX3Jo//zqxq5cYOZQGwNvzsXGts=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q6SEJ8jATGT3SuXxmMteFoigwxgOa+6R5Z5UjOGcZpT6+eK1RcrMwNuABYoUwn8majTHDCrzfnPKAfFW99Fp84tgqHi2zbeLoUx0+hP5AXYZXH4S+gpvyJRauDIHVHo2HKfURq3PBucozdq9Wcf/VprrwKirbFMUcmqhfnY9ar8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (2048-bit key) header.d=siemens.com header.i=alexander.sverdlin@siemens.com header.b=TwctT3SW; arc=none smtp.client-ip=185.136.65.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-65-228.siemens.flowmailer.net with ESMTPSA id 20251212204604cce2ed389c00020751
        for <devicetree@vger.kernel.org>;
        Fri, 12 Dec 2025 21:46:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm2;
 d=siemens.com; i=alexander.sverdlin@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=ZzH9MtmPw2ify2tzinnSDdNB5/uf7QY4ZHGdLC7/I0o=;
 b=TwctT3SWpeRDKOu7Bm0inAQhMeo+uCHowyDGnH5eHkNnih2xD7uNnuZ3oUGRq+VpIJmNQh
 RYNLjyBlrHkxn3w17czyYb1wyCyjHyyZMK3njvoS06g2rtLMK4SvZsGT8GBAl+BQVn8UIOCX
 p3nI5JPItw6UOGKfd1zWvtA/nITt8q0RPP8fxXQFZz9C7pt/t7Lt+TSVfxDPIgKZE91q3/Ct
 CT2Fz+vK9dkrJ+EiW9GTdUHiH5JzsnzEsmPUA+cQFWFo9O/mNuqEOOvmXT/lh8dC1XEWrv6+
 Ch+pdBvkkrhT5/mvcFu3iyqrY5e9YB7uMO0EAPK57jFEkOqtPK8g62Gw==;
From: "A. Sverdlin" <alexander.sverdlin@siemens.com>
To: netdev@vger.kernel.org
Cc: Alexander Sverdlin <alexander.sverdlin@siemens.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Golle <daniel@makrotopia.org>
Subject: [PATCH net-next 2/2] net: dsa: mxl-gsw1xx: Support R(G)MII slew rate configuration
Date: Fri, 12 Dec 2025 21:45:53 +0100
Message-ID: <20251212204557.2082890-3-alexander.sverdlin@siemens.com>
In-Reply-To: <20251212204557.2082890-1-alexander.sverdlin@siemens.com>
References: <20251212204557.2082890-1-alexander.sverdlin@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-456497:519-21489:flowmailer

From: Alexander Sverdlin <alexander.sverdlin@siemens.com>

Support newly introduced maxlinear,mii-slew-rate-slow device tree property
to configure R(G)MII interface pins slew rate into "slow" mode. It might be
used to reduce the radiated emissions.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
---
 drivers/net/dsa/lantiq/mxl-gsw1xx.c | 6 ++++++
 drivers/net/dsa/lantiq/mxl-gsw1xx.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/net/dsa/lantiq/mxl-gsw1xx.c b/drivers/net/dsa/lantiq/mxl-gsw1xx.c
index 0816c61a47f12..ec7b92f62dcb5 100644
--- a/drivers/net/dsa/lantiq/mxl-gsw1xx.c
+++ b/drivers/net/dsa/lantiq/mxl-gsw1xx.c
@@ -526,6 +526,12 @@ static struct phylink_pcs *gsw1xx_phylink_mac_select_pcs(struct phylink_config *
 	switch (dp->index) {
 	case GSW1XX_SGMII_PORT:
 		return &gsw1xx_priv->pcs;
+	case GSW1XX_MII_PORT:
+		if (of_property_read_bool(dp->dn, "maxlinear,mii-slew-rate-slow"))
+			regmap_set_bits(gsw1xx_priv->shell,
+					RGMII_SLEW_CFG_DRV_TXD | RGMII_SLEW_CFG_DRV_TXC,
+					GSW1XX_SHELL_RGMII_SLEW_CFG);
+		return NULL;
 	default:
 		return NULL;
 	}
diff --git a/drivers/net/dsa/lantiq/mxl-gsw1xx.h b/drivers/net/dsa/lantiq/mxl-gsw1xx.h
index 38e03c048a26c..8c0298b2b7663 100644
--- a/drivers/net/dsa/lantiq/mxl-gsw1xx.h
+++ b/drivers/net/dsa/lantiq/mxl-gsw1xx.h
@@ -110,6 +110,8 @@
 #define   GSW1XX_RST_REQ_SGMII_SHELL		BIT(5)
 /* RGMII PAD Slew Control Register */
 #define  GSW1XX_SHELL_RGMII_SLEW_CFG		0x78
+#define   RGMII_SLEW_CFG_DRV_TXC		BIT(2)
+#define   RGMII_SLEW_CFG_DRV_TXD		BIT(3)
 #define   RGMII_SLEW_CFG_RX_2_5_V		BIT(4)
 #define   RGMII_SLEW_CFG_TX_2_5_V		BIT(5)
 
-- 
2.52.0


