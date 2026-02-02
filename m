Return-Path: <devicetree+bounces-261948-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIDqKIIEgWnZDgMAu9opvQ
	(envelope-from <devicetree+bounces-261948-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:09:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31156D0F47
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 21:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80C9F30A7FA8
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 20:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 289F836AB76;
	Mon,  2 Feb 2026 20:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lo5nHW2n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A60C30BF70
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 20:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770062671; cv=none; b=idWFg3ChgQevQoGolIj78dtzCsagkJfGcf6mbYY2R3Ic3ZOmWhzvBYfyzSeBPuGMfCUmLL2zorpHh/NFSNnlJw0TJxL5EigtO8+1OhE4ODdXCdy2g1qDsIw00GFKwNrkEektTXUw1jFCj7xjxDUaQ85Ieou/TNzA5RQKfgIHA/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770062671; c=relaxed/simple;
	bh=YwpGtXsVOooGRLfc1Rtzs1Qm+0ZUA3CssyiOSg+grvw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GZGfjlP3RXgcCE7zXc1ajl6+4vaW4kFukFD5Q8MVSa7nzUFh6nK6fzoO/1XI7+ZN49khw9JoR3AglgkKb4c/zMaCITh8OdW6I4FP4rt0TKqgAeUVK2JYrl3YlagR/5G97iKMaRcyCFHstc+b4N+0vUt/EfXMC47tb1JnZ3xznd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lo5nHW2n; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso49800025e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770062668; x=1770667468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aa/bJX/vq1r2SyF6orBcmNNhb6Yq/BQBvk6y6TJ7kn0=;
        b=Lo5nHW2nsWjAEv0DhNZwPUYyyNNqpzdiVlpIZutDMxMQZ/XH5QkHUcbM3/WGYsH6gi
         utGTXrs5Lx3Quoj2tyXwEZ5K3dYzhVJv+a9EVgwIaY2wGhVJ+ZDM2Gp69/tuivIy6tQu
         Kq8K6Fxr5YPZFr8GQ6JGWAXkxQxE25XGhh+A4/yDIS39rjv1oHtGH4p1+Ev85qsyGREt
         tti6J/1BVMfBsVZ0kflMGQ6Qs5yMaqViKBpac1x4p15coVgHOgx3I+O1BX01MPAMT0zK
         +Nuy5LvhH67m+jYe7oWCZOV0T+69WvlUDJEv55u4Y0O/QtIuyUip8sQQN+OVP5xUiW6+
         28uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770062668; x=1770667468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Aa/bJX/vq1r2SyF6orBcmNNhb6Yq/BQBvk6y6TJ7kn0=;
        b=iqmKICvy64iC5hQgFg/74sNxvLg7lkdBPW/60Jv3OzTaedQIIymC0p+20Q9nVnSHFJ
         C57WuTtkB31ONK6cJ0zzh6FM7DgtNTwoDF9eQMEoY48gu3h5oBDAD6dAZ72mEZx2olbV
         HZohsGZykSL92IH3BvAJHOAzJqWU04exiwvrrjzMEYQq9AU/FbLqt06vPPAm1EUX9spS
         OjoTPUZEulDDf4Sp45gkCMJL19SmkKsKlVOOxMDI/VMpdDlQLl0eusjqpewyoU5n9EUd
         dWk7QIawTv7QiMMggesYFqK21Ha0kAux0yB83VjDB45PyZaXGwZL4uRUARDeXF6IKuE1
         Mvrg==
X-Forwarded-Encrypted: i=1; AJvYcCVuZodYpaFgPHrYN5YqCx4e1x+QwXdHp3PBFhghwmJNL0QsGohP02dOPL8dwAy08tzJJUO6RII+2H1y@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ0TgQg45fXk4lK6Fn0i0Rfawjb1IJkEubdaKfDrvhJH5I/C3b
	KXPbXGe8L9F7yrSSs6GSWBuj0UBBL23EnhJtb/LSIHdl2tRa2W57eS9e
X-Gm-Gg: AZuq6aJBhVhuf9XfJ3IqqC0qEe8vTeUKTSnUKjTlmUE3Y9MmEysvNARbW18j83rT2fP
	C6bzOrSUk+Kuc3yznNcxw1ee6U22gwR/kJaWWZmq1GW3WEnp8k6Qy9D3jK4xmK9OtIcVcwslz3c
	9FvgEPk1F1BHIK7cxe+8zhZ53DFdsN3PHadG6dF9Segd8aliPyFqdD3u4eVZeyouzizqWjEmoHB
	RnfoKnb53/cuEfbVff09NKn4CUErWazxd/g+PYoTKOsspZGAKZlwKL2Xg0KLB5elJIa1yZzjrC2
	LNKjdS3cZZ7fIMjIa9+5gOwHQaOLJLBNnpf28J9kvUpojJXv+30Zj/qVYNNW4Vug+9b8PXPbEnR
	eVOn7qWTmAMdOceHmdxdjZokBSTz++vSc2SUDDPRyIwDk02lqZU7mWtMt01XOylbJkdXCwzSwWC
	NBt55ZgNWlHn8=
X-Received: by 2002:a05:600c:a08c:b0:47a:975b:e3e6 with SMTP id 5b1f17b1804b1-482db493a7cmr155592385e9.18.1770062667742;
        Mon, 02 Feb 2026 12:04:27 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dbd3953esm120842955e9.4.2026.02.02.12.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 12:04:27 -0800 (PST)
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
Subject: [PATCH v5 4/4] net: phy: realtek: add RTL8224 polarity support
Date: Mon,  2 Feb 2026 21:04:11 +0100
Message-ID: <20260202200411.373161-4-dam.dejean@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260202200411.373161-1-dam.dejean@gmail.com>
References: <20260202200411.373161-1-dam.dejean@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-261948-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 31156D0F47
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
 drivers/net/phy/realtek/realtek_main.c | 45 +++++++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/drivers/net/phy/realtek/realtek_main.c b/drivers/net/phy/realtek/realtek_main.c
index 85e928a0d3dc..d23672e33432 100644
--- a/drivers/net/phy/realtek/realtek_main.c
+++ b/drivers/net/phy/realtek/realtek_main.c
@@ -172,6 +172,7 @@
 #define RTL8224_SRAM_RTCT_LEN(pair)		(0x8028 + (pair) * 4)
 
 #define RTL8224_VND1_MDI_PAIR_SWAP		0xa90
+#define RTL8224_VND1_MDI_POLARITY_SWAP		0xa94
 
 #define RTL8366RB_POWER_SAVE			0x15
 #define RTL8366RB_POWER_SAVE_ON			BIT(12)
@@ -1861,9 +1862,51 @@ static int rtl8224_mdi_config_order(struct phy_device *phydev)
 	return ret;
 }
 
+static int rtl8224_mdi_config_polarity(struct phy_device *phydev)
+{
+	struct device_node *np = phydev->mdio.dev.of_node;
+	u8 offset = (phydev->mdio.addr & 3) * 4;
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
+	phy_lock_mdio_bus(phydev);
+	val = __phy_package_read_mmd(phydev, 0, MDIO_MMD_VEND1,
+				     RTL8224_VND1_MDI_POLARITY_SWAP);
+	if (val < 0) {
+		ret = val;
+		goto exit;
+	}
+
+	val &= ~(0xf << offset);
+	val |= polarity << offset;
+	ret = __phy_package_write_mmd(phydev, 0, MDIO_MMD_VEND1,
+				      RTL8224_VND1_MDI_POLARITY_SWAP, val);
+exit:
+	phy_unlock_mdio_bus(phydev);
+	return ret;
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


