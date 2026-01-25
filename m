Return-Path: <devicetree+bounces-259305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJ2+JIt3dmnqQwEAu9opvQ
	(envelope-from <devicetree+bounces-259305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:05:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A7382501
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:05:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D50E3029276
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 20:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00D0C30149F;
	Sun, 25 Jan 2026 20:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QTEfiv53"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA972FFF81
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 20:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769371391; cv=none; b=QVN+ojVkOxtf4hzk2p11T6prF0a2umbK6R/euSL0v062Hdat7bKqQxJi4xTlST9XCMV3ex1orl92IuwujnOEtQytyQyf7ju/WXLYM4CV+F2xsOUX3BAllZONu9zuJWtHwh+q7OCO1HnqY+nfDvzuyaYn96ahcBt+PLqBhJFJauY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769371391; c=relaxed/simple;
	bh=4ISCSbP1GHcNi8YVt/KPuKGZhNss45uvPh4/YQABkJ8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=k5m4i7BbrJ0O2MvhCxejHDpuCOAEfmKCJ+PvNv0vhFEcW1gz2qR3SzMcjpn6FhxjQCscYqkHGRtajLSxEo9wjZ7EYjlHmORzsyLwdvbUtFTc9xg9VehuGjF7ElUK/AS11iRp4OMVw1enIRMLJx6AIu8ZR+VvA8YiqvnvVuK97ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QTEfiv53; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48049955f7fso32362435e9.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 12:03:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769371388; x=1769976188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qdDdAuh4mZgLombsRYAsCKtJ/m83RDaQrk7CHsW3INE=;
        b=QTEfiv53ugakoksFFqjesYXCq8QBHTOI/yk55ezhhyvV2MGyjhgpJngzZNl35cxPuA
         CUyUGdjHjX4k0KRLBqmS2/oTumhX5tBZK/4KeOxiGERw2jEUwYSIe6qIFH1x1dYvnIdV
         85R62Bxo4Xcm1LcoZEt6EWFfsBWIwToC7UUQ9Pg7NsLV+rsZ6eMzPAUch71izBGztsfx
         CsWDJQcIrus83Z+FGtpgAcSR+LsQAsNNAFYUtHwzuBVoG9sp+akuEIGISwfusQSxeQvz
         yI/g9XSJkFUYv0SlwfwXN12vsEBdVBl1Wo3uNX43j7yvwvTU9grPOMTqasTBZa3nG4e4
         wvEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769371388; x=1769976188;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qdDdAuh4mZgLombsRYAsCKtJ/m83RDaQrk7CHsW3INE=;
        b=LYC4onqqZZzLdMLiE95qTjYk4DEErtj0TpsRYa6RRzrCrRATPz6PXc6Nusp0iNLGBr
         TmDtSiSs1xUXDvQlWR6hIWaXyr2hw2d/rmJAtVNZdWopP+ukwq6Aizq683c0o07//Rgw
         6rwrqozUcQEFa1FXAtEh3cRB2cxHeQjTr5/wY6CvuHXOUiZ8sEw455jjn9fK6iuVM3f0
         ekwF1gWjCDTdr0W6puwKey9/8FOFSZ2T30TTVJEIvCgougoZx1176oZ4GwA24U3amAJA
         Y23v18F+xwJIztr2i7y74lkq4SUMtntnPIAVH8/AWVu5qKyXVEHazZistgNByEcgZ5ya
         JAFg==
X-Forwarded-Encrypted: i=1; AJvYcCUlj4h5lGZ5gD1GSTdHbKoV5TTvATgBqeX2dWk5FRLEL0H5XRES0ayKpvxU39ZCei9xUZqDeUbVV54s@vger.kernel.org
X-Gm-Message-State: AOJu0YxqVM/qodFiKw1+5hxfTGRxrBfdPkYnFEBOLOmdXYgztpnNLiyB
	ktO6k6kNvlTmZXQwB7STDMO24NNI3ZYOUl7bW9CGCIdYFAkDrkUUF8Sw
X-Gm-Gg: AZuq6aIKCtwQUzkS+J8ImT3uEfk4zS42qkuxNNkbbUdRqp6d8jhdQtjd7l1/lfl48AA
	wKvdFYUgsm0+hHtfIDzd7ahNyHPZdevdboRqMu8oetqx/LTOH38kPiDyutVTabI42FcV+HMp6a9
	7DYI5EU+3NAbEEJNRXt0ftYNFG0iik9f11FlgKjqAHfNsqH5BgvLXHlDY6ImAaHAofmPcqJuaIx
	0QziIlu/wmbdMMySb3OO8bP91NLm9Qbcv25jvfE7bwW5xtzstWpOXsV0yT/srWfXMmuSJuTgv/z
	HTuPOYrBNX51bU2j/t4WlQgU4h7y3SYL0l9YxYt5JRbR1firPhD2VID+HtF25X2LjXhyoVuuXt2
	ZFFmOOHmQ4RQ/8bQgAhHdTyktcBzXPVhxm8DvuXSJWiU3uAo0cUgn1Y54vTyHYEm1zBREhP4oW7
	0XfkSPH0chq8o=
X-Received: by 2002:a05:600c:4f09:b0:47a:8154:33e3 with SMTP id 5b1f17b1804b1-4805cf66b06mr40577535e9.28.1769371388491;
        Sun, 25 Jan 2026 12:03:08 -0800 (PST)
Received: from nas.local ([2001:912:1ac0:1e00:c662:37ff:fe09:93df])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f7c269sm24418036f8f.43.2026.01.25.12.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 12:03:08 -0800 (PST)
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
Subject: [PATCH v3 4/4] net: phy: realtek: add RTL8224 polarity support
Date: Sun, 25 Jan 2026 21:02:59 +0100
Message-ID: <20260125200259.2903271-4-dam.dejean@gmail.com>
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
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-259305-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,google.com,davemloft.net,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[damdejean@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 33A7382501
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
index 9c149b05c767..f98431a8f0ba 100644
--- a/drivers/net/phy/realtek/realtek_main.c
+++ b/drivers/net/phy/realtek/realtek_main.c
@@ -164,6 +164,7 @@
 #define RTL8224_SRAM_RTCT_LEN(pair)		(0x8028 + (pair) * 4)
 
 #define RTL8224_VND1_MDI_PAIR_SWAP		0xa90
+#define RTL8224_VND1_MDI_POLARITY_SWAP		0xa94
 
 #define RTL8366RB_POWER_SAVE			0x15
 #define RTL8366RB_POWER_SAVE_ON			BIT(12)
@@ -1719,9 +1720,45 @@ static int rtl8224_mdi_config_order(struct phy_device *phydev)
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


