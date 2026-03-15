Return-Path: <devicetree+bounces-275843-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UP/YBL4at2lGMgEAu9opvQ
	(envelope-from <devicetree+bounces-275843-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:46:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A86E9292702
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 21:46:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48AD630774D5
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 20:45:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD30737C11D;
	Sun, 15 Mar 2026 20:45:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QRrh9DDT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4CC37C0FC
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 20:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773607514; cv=none; b=siQbUtn+RqJHgFchj3yHej7wPkPWAvKzz/z4VdtZN3sgWZiGA/v6bchIkBj7+38bdUQHQa4+GgrX0Du5ospe/5OLI93IvAvnhrJwiQCSrmN8jWHnaVElf5aOBJ5cggekfXCzTKHgy/1xXSAU9cDo4RhZhVE6NXHPH4Xk6Lr9DWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773607514; c=relaxed/simple;
	bh=i3rqLKdW4X981tq74BmlDms1zluf/0nTFeXIK2Gd290=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GVAaoaWNAVqBglhUuEVn4VgH4VBjDYhZnwB1oiCqpoMmtISo2xoyU8QDyzxPCYwkgTUM/zfxoB2DUZQB4dRH+wf4LTzLV7N+X6/P4Cq87F2UhQ3iviuC/UwyJ4zz7VRDRCKlTSuzCTbzHX6fk4fPlU9CcwSEy8VO4RCCEQ/WtDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QRrh9DDT; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-48558d6ef83so22563445e9.3
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 13:45:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773607512; x=1774212312; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/kdtEx1zDJNFkhoUaR6eWj1/yENGBliRBLy50L54Rj8=;
        b=QRrh9DDTqfyJmGWKpw/+2V9Ah1M70JB2SDQoeBQ7J8vaKNvSORcl2G9AW7MjtiEmXk
         BPSxrc55Fg+jZuVVEa19Mqh27fr8xH8oz6cs0d7K60EH52a7dG7nts4aRTXi9d70nUVr
         7FfLwFuoMp+OK8S+rsoKb/iziG+wpnZXU3cm2qpjkqzrEtNVkdpq1Diu99mBy9lIlmwV
         eKsapnXQybqTLlFhCogUDLDAMqwQTQPZdq+KpAPULePrPAFuw3Dljh6V5I2vuitdAGhO
         aJywBZhZqjfy7mG1oL5dGtey/M/P4Oan/5hOwzlpUwLs7vulqEENfoQl1Hl3oj6yiU2t
         sSgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773607512; x=1774212312;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/kdtEx1zDJNFkhoUaR6eWj1/yENGBliRBLy50L54Rj8=;
        b=Whl9ulUUupCUHSDcf7IsNsmmxLmdAUD8TK2VsCeJmOcVRrW31s4X4oy9hJbWIV5AH1
         GgATO4Ui4bKGlMx5UeUnOfhfPLQqBWvqNn7pHlaq0e8Xdh9XoycngBxHyr5pY7xfHfHf
         eDmBsnis8s2uEOTRdAYfxqgGv7d5j5Vc8XlYH0K8BZRX40yaUD1obX8tFtCIgrfscJQw
         CuQD5awRV2BiAGb4HEbwck+HQOSgYteZBw1bfaoC2bwaXUGjc4Si9ft2c9BH+Mkz5Qsi
         7s6sJfmunbfK4URgypAOb7xvCWN9oEDB029CVMnSxLfyOPJJBxaAD+fIM53cBnbwnGmM
         WnbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUexIrez08PQ1FWtffzCc0pkPzgJamIH6rpgmV76vgJA70/WECvE982COXNDdbEMCbi+kpmYSRmyy5S@vger.kernel.org
X-Gm-Message-State: AOJu0YxHxaBmuelDkeKZGLETBCq9fZ3LFVAjlqZZXL6xgX7mV30inF/0
	IEfVvC8DDKNRVGj6ZUNklF2U4A0k0VAZoNzUXIPjtP/jDCWanx4OAiYr
X-Gm-Gg: ATEYQzw3+iuxW2utIC/Og4Ffp0CriUsCFjnI8pC+NYfwCsspclQleaX3J0pUMc/iqRj
	m9NxABZvfnnTCsdQSzqlD+0M877evQniX+nj8EnfJXCOhO0F3u0IMyd3nvr15S0AgnV1PSXvsF0
	xyTJVfA6dU1IdYrw2hTAOxdbWiahJWR+xABS97a/9VpLnnkdgapRs6RMzaYPsqnos+qU3HiefcT
	DxCRBOl3iGZpzb9AIaPzlQBxzIKVrLVu4IlvzX3ae5QOe/MagDcs9PfycCPt+iOJliwxSQy8Kxj
	RFS5LqSgjyjZZ2pvUN/VAqkngbUQpPqiqlXkPJHGx+dT3dy4N79vD081nu5lcTDaGB7Cuy3KVaW
	6Bk2lKBD47XCnRSKmFA3t4YTQcvdUI4zJ7r4MjjeHui/mlzk6k8y6dQwsJBPu7cr7eqn91qlKf9
	NYtQWApJiN2gg6bo03ZVQncO0=
X-Received: by 2002:a05:600c:4fc6:b0:485:3f1c:d8a1 with SMTP id 5b1f17b1804b1-485566d2004mr175424705e9.9.1773607511256;
        Sun, 15 Mar 2026 13:45:11 -0700 (PDT)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485563f8c23sm132043885e9.1.2026.03.15.13.45.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 13:45:10 -0700 (PDT)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org,
	maxime.chevallier@bootlin.com,
	pabeni@redhat.com
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH net-next v8 2/4] net: phy: realtek: add RTL8224 pair order support
Date: Sun, 15 Mar 2026 21:44:52 +0100
Message-ID: <20260315204454.124544-3-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260315204454.124544-1-dam.dejean@gmail.com>
References: <20260315204454.124544-1-dam.dejean@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275843-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: A86E9292702
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The RTL8224 has a register to configure a pair swap (from ABCD order to
DCBA) providing PCB designers more flexbility when wiring the chip. The
swap parameter has to be set correctly for each of the 4 ports before
the chip can detect a link.

After a reset, this register is (unfortunately) left in a random state,
thus it has to be initialized. On most of the devices the bootloader
does it once for all and we can rely on the value set, on some other it
is not and the kernel has to do it.

The MDI pair swap can be set in the device tree using the property
enet-phy-pair-order. The property is set to 0 to keep the default order
(ABCD), or 1 to reverse the pairs (DCBA).

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 drivers/net/phy/realtek/Kconfig        |  1 +
 drivers/net/phy/realtek/realtek_main.c | 64 ++++++++++++++++++++++++++
 2 files changed, 65 insertions(+)

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
index 530b4e26d16e..2feb085f5c9e 100644
--- a/drivers/net/phy/realtek/realtek_main.c
+++ b/drivers/net/phy/realtek/realtek_main.c
@@ -171,6 +171,8 @@
 
 #define RTL8224_SRAM_RTCT_LEN(pair)		(0x8028 + (pair) * 4)
 
+#define RTL8224_VND1_MDI_PAIR_SWAP		0xa90
+
 #define RTL8366RB_POWER_SAVE			0x15
 #define RTL8366RB_POWER_SAVE_ON			BIT(12)
 
@@ -1820,6 +1822,66 @@ static int rtl8224_cable_test_get_status(struct phy_device *phydev, bool *finish
 	return rtl8224_cable_test_report(phydev, finished);
 }
 
+static int rtl8224_package_modify_mmd(struct phy_device *phydev, int devad,
+				      u32 regnum, u16 mask, u16 set)
+{
+	int val, ret;
+
+	phy_lock_mdio_bus(phydev);
+
+	val = __phy_package_read_mmd(phydev, 0, devad, regnum);
+	if (val < 0) {
+		ret = val;
+		goto exit;
+	}
+
+	val &= ~mask;
+	val |= set;
+
+	ret = __phy_package_write_mmd(phydev, 0, devad, regnum, val);
+
+exit:
+	phy_unlock_mdio_bus(phydev);
+	return ret;
+}
+
+static int rtl8224_mdi_config_order(struct phy_device *phydev)
+{
+	struct device_node *np = phydev->mdio.dev.of_node;
+	u8 port_offset = phydev->mdio.addr & 3;
+	u32 order = 0;
+	int ret;
+
+	ret = of_property_read_u32(np, "enet-phy-pair-order", &order);
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
+	return rtl8224_package_modify_mmd(phydev, MDIO_MMD_VEND1,
+					  RTL8224_VND1_MDI_PAIR_SWAP,
+					  BIT(port_offset),
+					  order ? BIT(port_offset) : 0);
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
@@ -2395,6 +2457,8 @@ static struct phy_driver realtek_drvs[] = {
 		PHY_ID_MATCH_EXACT(0x001ccad0),
 		.name		= "RTL8224 2.5Gbps PHY",
 		.flags		= PHY_POLL_CABLE_TEST,
+		.probe		= rtl8224_probe,
+		.config_init	= rtl8224_config_init,
 		.get_features	= rtl822x_c45_get_features,
 		.config_aneg	= rtl822x_c45_config_aneg,
 		.read_status	= rtl822x_c45_read_status,
-- 
2.47.3


