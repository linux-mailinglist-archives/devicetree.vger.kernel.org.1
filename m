Return-Path: <devicetree+bounces-259303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOTrByZ3dmnqQwEAu9opvQ
	(envelope-from <devicetree+bounces-259303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:03:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78379824DC
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:03:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F53F300E3AA
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 20:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47EE42FFFB2;
	Sun, 25 Jan 2026 20:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hljpeDQI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8642F1FEC
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 20:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769371388; cv=none; b=XFy2B/ivoUu61IzbrUlpJDSt+jn4LVovWZWbTzhYaQTcSQkNckp+g07lyJokxv0+t8wHoR80KXeC9b3rbUiens7gOA3bGCGBTaeq9JvFSQAR7ORxt7ws2fi4xgb8nkfXDu5xPCVuy1mP2wXysrf0gh/Yzz2qb0C+pW0IeHN8zHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769371388; c=relaxed/simple;
	bh=zX0hvxkuGDXQOHT/dO0h+VlGuaLocZjx0MrL6MxaSPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rYnH2mbij3NwA3IJCTfxfPRGUgpqpy1BShwLhULcNkYaVqjHq3s6w/4fhzcVQOQXxGnIexmh7T95MtPC0w5ilnYgpK77RkgVCiWOBGOCtA4FRXIGtM9/1mUeB1JKq0KEF49zA8ikNOskyvc/U1AfhQ7RNurPkWbcfQbNifiTomU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hljpeDQI; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-435a11957f6so3226993f8f.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 12:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769371385; x=1769976185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V4+ulA35JyJCbjFvyxZuNovtvFtG6lbRB2yZddCZVz8=;
        b=hljpeDQIk5u/vWjCpOzGGQp0w0D8vSxPefZEAZZQ/WNnLuksqyRXOWsPu6i+0KxfUm
         IV7arwFsP02P0rAK7omYPzeK8jxE+59AsU9MVwWevPXjyOT/1TYUjZaRtsyjCsUt26j4
         DfMCZ9dSvdnfV1cp3ISf1RXRguiJbtlIidbW2Dszj7kSXxuXht5FEKH00jV/nD4tvo/o
         nOPmFhgY/gL1yTW/RU+qWMvPcQjfmUHCgZIoR4xWWZ6sb/6Pl2efUGo8IfU79DteGtE/
         UjC3QEGQrSnIqopxVnzbcQ/wjFgQsE1K6/+M45t6rx9erCrxGSELo6OrRXHczyb08XpH
         YuCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769371385; x=1769976185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=V4+ulA35JyJCbjFvyxZuNovtvFtG6lbRB2yZddCZVz8=;
        b=NI6lmJxjPSo/hzzEPVO9crX8fkXn2R9RUDH1fF3RVl7Syc32+uA3mN0DEqYUXocbhG
         7l3y2n5TnEcHKOc5T8RVE/HmadGENKcCksyZ85SCSEv2TH0z/ViKEcHKqhbbpK+bcUXq
         8Ey6jL2xAv+m8YttzdAWF8gRVWg00XxOQX8d7BT5m4mbuJ6KsAzXAVe1+EIuyMIKStrh
         EzuQGSKsHGH17a/J2dJH038FElsalSCdagdf0xBk2qAOraAXXiqn3ZWjLW51wTb1ImcS
         nywtlrHKIDxEeu9480wWhqhYN+3AjztmMvig05zclg9jSu56Phm0a0J8FNqn+Jn/a1gU
         eBkg==
X-Forwarded-Encrypted: i=1; AJvYcCVvS7YAlPo/wqylC566cfeDJwLjCK0NkX4xZkuJW26gWoLnfD2R8gMFeIbiFH3sk2DHv3qcs4WTc13o@vger.kernel.org
X-Gm-Message-State: AOJu0YyC6apzMRWEsZYpohMv1mW988ZtOPliQCJlN3qBlmtNjWRK00CH
	k98HSvxG04AkPHnIlq7FQ0z6W4/Csh4eo385+1Vq8p2WcsxtN6TTotGD
X-Gm-Gg: AZuq6aI5sCO2lERJ/1XTPhDAPpt9kW6XYJxyKHgfL4g28ucjkZY/CcR3mRz6pgpQrJw
	gXmFP4uD8kj2Ql/PrRk/LFOHlDNkjqAcGNgvi6vK9WgRFho+L8dloSIGJ3/6l8E19USqvMirp/Q
	ol5ziW5fskXHPURwWqF5S3xo93lwyKuS+CuILP8O4DGarfeqYlwDN4CrnT9u/DY/5X+yrgFYSXO
	OgcHYlYnFTqoRr9fpTgt+HbI1tEXNf7jBgOjcW8uvcazlr8n0J4Yu9hX9lJgTeMloXm57Tnst2d
	ygPhk8UOrDTr3kHzHMADUcGVltc/ISrUHt8wc7+/1LVbJcB+DaMB1UNl5IPj+CR5lpq7HzvuirG
	1kbiYOf9E+D01r/dHUpJjuxeMXmvO7wXkTHUr0MhBuZa3ffjNk6wdI0/4TN5OWUE+DqHsH/cEr7
	MEgkQNx3aj+/D9beO8+jYTgQ==
X-Received: by 2002:a05:6000:4025:b0:431:c60:c600 with SMTP id ffacd0b85a97d-435ca193b14mr3988486f8f.35.1769371384555;
        Sun, 25 Jan 2026 12:03:04 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f7c269sm24418036f8f.43.2026.01.25.12.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 12:03:04 -0800 (PST)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	kuba@kernel.org,
	pabeni@redhat.com,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH v3 2/4] net: phy: realtek: add RTL8224 pair order support
Date: Sun, 25 Jan 2026 21:02:57 +0100
Message-ID: <20260125200259.2903271-2-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260125200259.2903271-1-dam.dejean@gmail.com>
References: <20260125200259.2903271-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259303-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 78379824DC
X-Rspamd-Action: no action

The RTL8224 has a register to configure a pair swap (from ABCD order to
DCBA) providing PCB designers more flexbility when wiring the chip. The
swap parameter has to be set correctly for each of the 4 ports before
the chip can detect a link.

After a reset, this register is (unfortunately) left in a random state,
thus it has to be initialized. On most of the devices the bootloader
does it once for all and we can rely on the value set, on some other it
is not and the kernel has to do it.

The MDI pair swap can be set in the device tree using the property
enet-phy-lane-order. The property is set to 0 to keep the default order
(ABCD), or 1 to reverse the pairs (DCBA).

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 drivers/net/phy/realtek/Kconfig        |  1 +
 drivers/net/phy/realtek/realtek_main.c | 50 ++++++++++++++++++++++++++
 2 files changed, 51 insertions(+)

diff --git a/drivers/net/phy/realtek/Kconfig b/drivers/net/phy/realtek/Kconfig
index b05c2a1e9024..a741b34d193e 100644
--- a/drivers/net/phy/realtek/Kconfig
+++ b/drivers/net/phy/realtek/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config REALTEK_PHY
 	tristate "Realtek PHYs"
+	select PHY_PACKAGE
 	help
 	  Currently supports RTL821x/RTL822x and fast ethernet PHYs
 
diff --git a/drivers/net/phy/realtek/realtek_main.c b/drivers/net/phy/realtek/realtek_main.c
index 6ff0385201a5..9c149b05c767 100644
--- a/drivers/net/phy/realtek/realtek_main.c
+++ b/drivers/net/phy/realtek/realtek_main.c
@@ -18,6 +18,7 @@
 #include <linux/clk.h>
 #include <linux/string_choices.h>
 
+#include "../phylib.h"
 #include "realtek.h"
 
 #define RTL8201F_IER				0x13
@@ -162,6 +163,8 @@
 
 #define RTL8224_SRAM_RTCT_LEN(pair)		(0x8028 + (pair) * 4)
 
+#define RTL8224_VND1_MDI_PAIR_SWAP		0xa90
+
 #define RTL8366RB_POWER_SAVE			0x15
 #define RTL8366RB_POWER_SAVE_ON			BIT(12)
 
@@ -1683,6 +1686,51 @@ static int rtl8224_cable_test_get_status(struct phy_device *phydev, bool *finish
 	return rtl8224_cable_test_report(phydev, finished);
 }
 
+static int rtl8224_mdi_config_order(struct phy_device *phydev)
+{
+	struct device_node *np = phydev->mdio.dev.of_node;
+	u8 port_offset = phydev->mdio.addr & 3;
+	u32 order = 0;
+	int ret, val;
+
+	ret = of_property_read_u32(np, "enet-phy-lane-order", &order);
+
+	/* Do nothing in case the property is not present */
+	if (ret == -EINVAL)
+		return 0;
+
+	if (ret)
+		return ret;
+
+	if (order & ~1)
+		return -EINVAL;
+
+	val = __phy_package_read_mmd(phydev, 0, MDIO_MMD_VEND1,
+				     RTL8224_VND1_MDI_PAIR_SWAP);
+	if (val < 0)
+		return val;
+
+	if (order)
+		val |= (1 << port_offset);
+	else
+		val &= ~(1 << port_offset);
+
+	return __phy_package_write_mmd(phydev, 0, MDIO_MMD_VEND1,
+				       RTL8224_VND1_MDI_PAIR_SWAP, val);
+}
+
+static int rtl8224_config_init(struct phy_device *phydev)
+{
+	return rtl8224_mdi_config_order(phydev);
+}
+
+static int rtl8224_probe(struct phy_device *phydev)
+{
+	/* Chip exposes 4 ports, join all of them in the same package */
+	return devm_phy_package_join(&phydev->mdio.dev, phydev,
+				     phydev->mdio.addr & ~3, 0);
+}
+
 static bool rtlgen_supports_2_5gbps(struct phy_device *phydev)
 {
 	int val;
@@ -2212,6 +2260,8 @@ static struct phy_driver realtek_drvs[] = {
 		PHY_ID_MATCH_EXACT(0x001ccad0),
 		.name		= "RTL8224 2.5Gbps PHY",
 		.flags		= PHY_POLL_CABLE_TEST,
+		.probe		= rtl8224_probe,
+		.config_init	= rtl8224_config_init,
 		.get_features   = rtl822x_c45_get_features,
 		.config_aneg    = rtl822x_c45_config_aneg,
 		.read_status    = rtl822x_c45_read_status,
-- 
2.47.3


