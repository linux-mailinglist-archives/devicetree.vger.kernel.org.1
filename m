Return-Path: <devicetree+bounces-74131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E88569020E5
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 13:57:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C1561F22F8D
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 11:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCDD80055;
	Mon, 10 Jun 2024 11:55:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [91.198.224.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C807E761;
	Mon, 10 Jun 2024 11:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.198.224.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718020526; cv=none; b=DSCfGgCdFZ7kgZ9owg/zeMbo6ZF+V3wC6pLJjP32iA1qCJefUxe6oata2rU47xoxklaMYDqLHsjyhdx/10Fot+of8IdWq4TTI5SCzrSVeONTHgRQhMi4OXqwJAZqWHCf02gIY4A//6bDZt+hUZ2qtVbUraAMsgKpF9mQZdiCV0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718020526; c=relaxed/simple;
	bh=Oe1C14REjUV5FmAICUhEV/p+9JlC/IzuBW2iMBW3xWg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CdKt/8/kOQEg9GEMiu2GCH7gdQaZzUzygAPk1YcvRL28j/2BhjXVscFjbhgfsQoyK9iJ8FJeFMUIMc35/u0NqCT9zRVnf4J3v5f3SUqAWwDSD9BZJETLtPnbKTVqYJmjDBhgSYUAqkMuaL9qZgykB2hYxNb28Wdo9JSEmx8j3gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; arc=none smtp.client-ip=91.198.224.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [127.0.0.1] (helo=localhost)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=9905c7c8d6=ms@dev.tdt.de>)
	id 1sGdcR-00AE5m-7W; Mon, 10 Jun 2024 13:55:23 +0200
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ms@dev.tdt.de>)
	id 1sGdcQ-005YyM-Lb; Mon, 10 Jun 2024 13:55:22 +0200
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id 5EDC5240053;
	Mon, 10 Jun 2024 13:55:22 +0200 (CEST)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id E7C27240050;
	Mon, 10 Jun 2024 13:55:21 +0200 (CEST)
Received: from mschiller1.dev.tdt.de (unknown [10.2.3.20])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id 9BE9A26128;
	Mon, 10 Jun 2024 13:55:21 +0200 (CEST)
From: Martin Schiller <ms@dev.tdt.de>
To: martin.blumenstingl@googlemail.com,
	hauke@hauke-m.de,
	andrew@lunn.ch,
	f.fainelli@gmail.com,
	olteanv@gmail.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	ms@dev.tdt.de
Subject: [PATCH net-next v2 09/12] net: dsa: lantiq_gswip: Consistently use macros for the mac bridge table
Date: Mon, 10 Jun 2024 13:53:57 +0200
Message-ID: <20240610115400.2759500-10-ms@dev.tdt.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240610115400.2759500-1-ms@dev.tdt.de>
References: <20240610115400.2759500-1-ms@dev.tdt.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-purgate: clean
X-purgate-type: clean
X-purgate-ID: 151534::1718020523-294A562D-A5105E02/0/0

From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Only bits [5:0] in mac_bridge.key[3] are reserved for the FID.
Also, for dynamic (learned) entries, bits [7:4] in mac_bridge.val[0]
represents the port.

Introduce new macros GSWIP_TABLE_MAC_BRIDGE_KEY3_FID and
GSWIP_TABLE_MAC_BRIDGE_VAL0_PORT macro and use it throughout the driver.
Also rename and update GSWIP_TABLE_MAC_BRIDGE_VAL1_STATIC to use the
BIT() macro. This makes the driver code easier to understand.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Martin Schiller <ms@dev.tdt.de>
---
 drivers/net/dsa/lantiq_gswip.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/dsa/lantiq_gswip.c b/drivers/net/dsa/lantiq_gswi=
p.c
index 525a62a21601..cd88b00cfdc1 100644
--- a/drivers/net/dsa/lantiq_gswip.c
+++ b/drivers/net/dsa/lantiq_gswip.c
@@ -236,7 +236,9 @@
 #define GSWIP_TABLE_ACTIVE_VLAN		0x01
 #define GSWIP_TABLE_VLAN_MAPPING	0x02
 #define GSWIP_TABLE_MAC_BRIDGE		0x0b
-#define  GSWIP_TABLE_MAC_BRIDGE_STATIC	0x01	/* Static not, aging entry *=
/
+#define  GSWIP_TABLE_MAC_BRIDGE_KEY3_FID	GENMASK(5, 0)	/* Filtering iden=
tifier */
+#define  GSWIP_TABLE_MAC_BRIDGE_VAL0_PORT	GENMASK(7, 4)	/* Port on learn=
ed entries */
+#define  GSWIP_TABLE_MAC_BRIDGE_VAL1_STATIC	BIT(0)		/* Static, non-aging=
 entry */
=20
 #define XRX200_GPHY_FW_ALIGN	(16 * 1024)
=20
@@ -1304,10 +1306,11 @@ static void gswip_port_fast_age(struct dsa_switch=
 *ds, int port)
 		if (!mac_bridge.valid)
 			continue;
=20
-		if (mac_bridge.val[1] & GSWIP_TABLE_MAC_BRIDGE_STATIC)
+		if (mac_bridge.val[1] & GSWIP_TABLE_MAC_BRIDGE_VAL1_STATIC)
 			continue;
=20
-		if (((mac_bridge.val[0] & GENMASK(7, 4)) >> 4) !=3D port)
+		if (port !=3D FIELD_GET(GSWIP_TABLE_MAC_BRIDGE_VAL0_PORT,
+				      mac_bridge.val[0]))
 			continue;
=20
 		mac_bridge.valid =3D false;
@@ -1382,9 +1385,9 @@ static int gswip_port_fdb(struct dsa_switch *ds, in=
t port,
 	mac_bridge.key[0] =3D addr[5] | (addr[4] << 8);
 	mac_bridge.key[1] =3D addr[3] | (addr[2] << 8);
 	mac_bridge.key[2] =3D addr[1] | (addr[0] << 8);
-	mac_bridge.key[3] =3D fid;
+	mac_bridge.key[3] =3D FIELD_PREP(GSWIP_TABLE_MAC_BRIDGE_KEY3_FID, fid);
 	mac_bridge.val[0] =3D add ? BIT(port) : 0; /* port map */
-	mac_bridge.val[1] =3D GSWIP_TABLE_MAC_BRIDGE_STATIC;
+	mac_bridge.val[1] =3D GSWIP_TABLE_MAC_BRIDGE_VAL1_STATIC;
 	mac_bridge.valid =3D add;
=20
 	err =3D gswip_pce_table_entry_write(priv, &mac_bridge);
@@ -1438,14 +1441,15 @@ static int gswip_port_fdb_dump(struct dsa_switch =
*ds, int port,
 		addr[2] =3D (mac_bridge.key[1] >> 8) & 0xff;
 		addr[1] =3D mac_bridge.key[2] & 0xff;
 		addr[0] =3D (mac_bridge.key[2] >> 8) & 0xff;
-		if (mac_bridge.val[1] & GSWIP_TABLE_MAC_BRIDGE_STATIC) {
+		if (mac_bridge.val[1] & GSWIP_TABLE_MAC_BRIDGE_VAL1_STATIC) {
 			if (mac_bridge.val[0] & BIT(port)) {
 				err =3D cb(addr, 0, true, data);
 				if (err)
 					return err;
 			}
 		} else {
-			if (((mac_bridge.val[0] & GENMASK(7, 4)) >> 4) =3D=3D port) {
+			if (port =3D=3D FIELD_GET(GSWIP_TABLE_MAC_BRIDGE_VAL0_PORT,
+					      mac_bridge.val[0])) {
 				err =3D cb(addr, 0, false, data);
 				if (err)
 					return err;
--=20
2.39.2


