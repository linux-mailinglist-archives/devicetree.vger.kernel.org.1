Return-Path: <devicetree+bounces-260811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIWlORA0e2lJCQIAu9opvQ
	(envelope-from <devicetree+bounces-260811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 577E2AE80D
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 11:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4BFE03049EEA
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A38340290;
	Thu, 29 Jan 2026 10:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fn1LsHnT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D1A338592
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769681786; cv=none; b=t9NEdm8x7KQzRWOLkqP4RwJP7wMgRXgwuLMnXvGxehKMdT/VYHFbK7uqELkq+fbWQxXLf3RFMeYRm48GWFfSXYbvl5vLX/kMa+qXHp26U9CdeIAClsEH86W47r5RS2g7iLO5yp2cqf2FoaygQArsaGekXLzG0bzUuEFGNWP1Z6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769681786; c=relaxed/simple;
	bh=J/SoU3MkP2MY74o7Q2lAtkpaITboiBABKZxNYr/6I5g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZWF8eyaQwvqKuoJzn338fUFfijRfBeB3hBfErCUKQulxEhxie7emjVZLoYvKcdC9xfy0p9+vkX3ic1WqdD1Rg0LBV7wHPSHlOH9BEBnMXvOSZxAQ7HD3jXIXR4pK5wl9uvXvO2+jX+1E5UpcA0EuO0TIvyfJPmvmljWGP3mJHLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fn1LsHnT; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-480706554beso8143125e9.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769681783; x=1770286583; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=scwnG4+Nck1/cLGODsLX+wXP9q98UaUDMSFVIL+kckU=;
        b=Fn1LsHnTZZuhO9s7j0iy8OLAOxLuTxc4NaiAm8OWogllw+3qIdTsjIrrLkumJZbYQP
         uc10GKVQX042Q1nfopJ6X9cSZcBnejfFHwB8RIMfhpoasVq/AuhiHbyT7313Dm7d+mCl
         yKh/OaIlCahvOQXlhSXCqlqBfnQ0s7nioVwho/6zDIScwqqLx784TtCgbsmJZRBwjUeL
         0o0oXosFizz4ZI/ArNkSyG+c1PSBQLdX5LL4SsjsO9RZbj1S6lbbWw5F4cx9V1+WHg53
         7nbZWohnXrE2Eic2UAozRFm8dcYA6xG69ScnwGNrquj4kzIHCNNCFq/Zuh8i8GOWZlqA
         ajig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769681783; x=1770286583;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=scwnG4+Nck1/cLGODsLX+wXP9q98UaUDMSFVIL+kckU=;
        b=mZmUHpQmCsKQpKQga7q42oUg4PiH2vvzHzkx4y0El6WchlrHka3v29PrdC/oe0C81m
         739/yJZcI/nv+bYrUjA9nu6NRHG5l0SNxq2D7P4bLb9RHOmeEL1UkzgiVEOhSGa50qmf
         Ok0yLNjOIaQlT9dhCi+AGB+8m1wY7rDvLW55yjZGhFlee4j94WQHMpYfcl5Fg+ELkKrO
         ZjqY0/GixtwXVMyCdWxkb3gbAnxOK1W+rgaEkX/qiyex5P2Zp2tegh4fzEGXfT9WJe0Y
         ji++P8Jsek1ILBEKN8sXd/Uhn/LDqEaXX6FUc9QsFFF5S/dKg+5fpPA9baM0OMQuaNZG
         7/Rw==
X-Forwarded-Encrypted: i=1; AJvYcCWULU+MUe0DITqUsJFFPDd7L2N+F7RjUt9YyJRy8EbKZblQ2TUH0lwR6JfC0V2JfnsWuwUzRaBgEzce@vger.kernel.org
X-Gm-Message-State: AOJu0YxOj0gdtu5d8CRGbLRjuDbPaED56diAz4etEEja+TflnF2sX8+m
	9AvHB59KHpwmmd8QoGR87qRmfguv6tGZ06kSIEPsO9nMwLvuwukqbGOb
X-Gm-Gg: AZuq6aJCfxxdS7k96cr/Xo56Tg8gV6NS+IjgqoUkKtYsGI7FDyQaKMUvVYutfbaSMkP
	i8TsqThuLYz/jPUO/Niv0Ofxg3oajq51ZkgyTQL150y0qN3AG/DFbbYR2yaHd/SKTfAqKpa+NK7
	4SOHYiToW3Y6BJe4g3uosPAKUcQI4JvYlRgWPcWINzvuU/+flhlFwyW3ur2jLB1nocuMqIF4M8S
	BsVDBjO2+6ztUvvK3b7Z0CK8vpU335QsfmcmNcGOeTxJqkl17odi4QWHsxeQhQ25EVWiCsGQvo7
	mQYNQ6uOOyIQx6kmyGog332YJt76sFiGiSY2nkz2mGmA2/ysyyqrGI58CDqGWSQaGFkfNUTK7MG
	nDeoJ41YjXcoGYUmm6GFICmWaz/EVcKTvGqLoBVGDOS8BgiBNtMZOoL32GJP6ocMVp4g7FcLRqv
	+icMFPlnkytIU=
X-Received: by 2002:a05:600c:8b84:b0:47e:e78a:c832 with SMTP id 5b1f17b1804b1-48069c82494mr90663755e9.37.1769681783205;
        Thu, 29 Jan 2026 02:16:23 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e132303fsm13413662f8f.36.2026.01.29.02.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:16:22 -0800 (PST)
From: Damien Dejean <dam.dejean@gmail.com>
To: andrew@lunn.ch,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kuba@kernel.org
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	edumazet@google.com,
	davem@davemloft.net,
	pabeni@redhat.com,
	hkallweit1@gmail.com,
	Damien Dejean <dam.dejean@gmail.com>
Subject: [PATCH v4 4/4] net: phy: realtek: add RTL8224 polarity support
Date: Thu, 29 Jan 2026 11:16:06 +0100
Message-ID: <20260129101606.33972-4-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260129101606.33972-1-dam.dejean@gmail.com>
References: <20260129101606.33972-1-dam.dejean@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260811-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 577E2AE80D
X-Rspamd-Action: no action

The RTL8224 has a register to configure the polarity of every pair of
each port. It provides device designers more flexbility when wiring the
chip.

Unfortunately, the register is left in an unknown state after a reset.
Thus on devices where the bootloader don't initialize it, the driver has
to do it to detect and use a link.

The MDI polarity swap can be set in the device tree using the property
enet-phy-lane-polarity. The u32 value is a bitfield where bit[0..3]
control the polarity of pairs A..D.

Signed-off-by: Damien Dejean <dam.dejean@gmail.com>
---
 drivers/net/phy/realtek/realtek_main.c | 39 +++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/realtek/realtek_main.c b/drivers/net/phy/realtek/realtek_main.c
index 79c2762b610e..8013ba453f05 100644
--- a/drivers/net/phy/realtek/realtek_main.c
+++ b/drivers/net/phy/realtek/realtek_main.c
@@ -172,6 +172,7 @@
 #define RTL8224_SRAM_RTCT_LEN(pair)		(0x8028 + (pair) * 4)
 
 #define RTL8224_VND1_MDI_PAIR_SWAP		0xa90
+#define RTL8224_VND1_MDI_POLARITY_SWAP		0xa94
 
 #define RTL8366RB_POWER_SAVE			0x15
 #define RTL8366RB_POWER_SAVE_ON			BIT(12)
@@ -1855,9 +1856,45 @@ static int rtl8224_mdi_config_order(struct phy_device *phydev)
 				       RTL8224_VND1_MDI_PAIR_SWAP, val);
 }
 
+static int rtl8224_mdi_config_polarity(struct phy_device *phydev)
+{
+	struct device_node *np = phydev->mdio.dev.of_node;
+	u8 port_offset = phydev->mdio.addr & 3;
+	u32 polarity = 0;
+	int ret, val;
+
+	ret = of_property_read_u32(np, "enet-phy-lane-polarity", &polarity);
+
+	/* Do nothing if the property is not present */
+	if (ret == -EINVAL)
+		return 0;
+
+	if (ret)
+		return ret;
+
+	if (polarity & ~0xf)
+		return -EINVAL;
+
+	val = __phy_package_read_mmd(phydev, 0, MDIO_MMD_VEND1,
+				     RTL8224_VND1_MDI_POLARITY_SWAP);
+	if (val < 0)
+		return val;
+
+	val &= ~(0xf << port_offset);
+	val |= polarity << port_offset;
+	return __phy_package_write_mmd(phydev, 0, MDIO_MMD_VEND1,
+				       RTL8224_VND1_MDI_POLARITY_SWAP, val);
+}
+
 static int rtl8224_config_init(struct phy_device *phydev)
 {
-	return rtl8224_mdi_config_order(phydev);
+	int ret;
+
+	ret = rtl8224_mdi_config_order(phydev);
+	if (ret)
+		return ret;
+
+	return rtl8224_mdi_config_polarity(phydev);
 }
 
 static int rtl8224_probe(struct phy_device *phydev)
-- 
2.47.3


