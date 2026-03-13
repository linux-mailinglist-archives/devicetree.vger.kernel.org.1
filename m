Return-Path: <devicetree+bounces-275493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8AY9Oh9RtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E27F28873A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 537F832E6B08
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17EA3D6CD2;
	Fri, 13 Mar 2026 17:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ieLBvGr+"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA93D669C;
	Fri, 13 Mar 2026 17:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424647; cv=none; b=D2/t7y507sd7LFedA179Ac9pYenHkA2SaL4Pjz2eoEvf7qL+62GhohR5aY0JCd1v8M8xt2HenbZfGy0HFxS1/1d1MbVbf3A3zEuXTQCt0duJcylo0bL9tG3PvlnrGtKcFzG2MGVW5KzU/JDBZTwSfYkJlUSCVRho9LsQN7Y2bMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424647; c=relaxed/simple;
	bh=7erG1vSntiZYfDvD9BPxDXJhjGY+cucRfQBaEqe1HlY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZKjYnLnDXS8b37rNw7LPmTd5ALZlnJ12GoQ0qn8+6PvArjCqoq8jlW3ano6QTM/P4W1VcaJDfJUgKowpS6qQ/VEImkfyG8uYSTkEI5MPgkoA2rMdzkmLtprxfUyr4Y94JOaeLZzNXsGpKbSB1Wd+CxujKfv9PFcl6Ec7wTeS89w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ieLBvGr+; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=7erG1vSntiZYfDvD9BPxDXJhjGY+cucRfQBaEqe1HlY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ieLBvGr+yVicWy/eXV2T4tHKZZs7vEsi2DA+COe02Sv8188BReGoSdqnp/Ftf5Eds
	 c1hayddhGwN6gX8x4a0Lzx9tBoFWkZYfJSOcMW+91cNHHs++LAyYXFq037t9SD+W+U
	 Dv3qVBg3bLVwecpDexIyDypoTF3GgFJiTkfvbRpi/wK5VPw4bfcgHAUfA6MKaSjQYj
	 M57FIlkPQz6N/9jeZcvL3Rf1HkmnC8Pj2NUAwkqz29y8zspjgH98/Ok//L9NN6hVD/
	 NW+LksSSagaep6BqdCfDw3wmrpRUvNvy8OqznBoPgQMdq0rbWB0eBQRiCoj4ZoNOov
	 ff+owCO5N6zzg==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6F17417E0EB4;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 283F548002A; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:13 +0100
Subject: [PATCH v3 04/12] phy: rockchip: usbdp: Amend SSC modulation
 deviation
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-4-3e8fe89a35b5@collabora.com>
References: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
In-Reply-To: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1708;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=DmJGqquNgLK3sA4UZxU1kvwePYoRCEplGjQQLTvjtuw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAD4zFEFy+De1oL5KQyUrINHyjejz91ck
 WMnwecOweACFIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaijcP+gPgApeWWe7B/YUbIe/y383lh+xKjKfOsVjayjBxlstwoxHaQOTXSZmb3vyf8OCPzUe
 nlWQm8OQ7Pr2w5fjdSvJlgoY+sVoBLevGdon7LIKdQcOYidKKWFKF+ddlvZuSqHOO1Z9LbL5HBA
 ByznkxrY6ITcb/+KD/WPzLYIeuzUK/BnYvwFvKzuKBXR4AZ64VKUUrVmaZqEzze4bORHXCFwDNI
 q+EwnxViNT0+tIQktfPiBd6PFtblDVtFw5EmTdjay9Q35EH6UvU6sKfscR0x3aIJGSt5g1TDUby
 gs3LyPNEs6ez/jmunADZ3ngcb4NRXb2jGXnsZa10VXHpFJlRgFETPl+/cImvFkr2EWhe/fhgahi
 Dk3VX+fFt2JSKSPrtcdo2CPEy+rvFMSxOsqnsUWgP1bFyfaLgSc/Z7pgCn9slPomT9n+Z93yLM2
 SFhtiW4E/4B15m9UrCKkJvaRY41qO6FemTlSB6IkoxvuCFaRgxr0mYZi3FSUfeu8JtRsB02b2G7
 /Nk9U3rwxQSbIVKH1EzDAT9IkNqnkD2MLw9M41zrjyMR0IpMnnWtMgpqjm/R+aNHcC4bjQAN1E8
 gcQDZ/oDxzA5Yka0MgLdrkUTlSTrB+TZKbJrai0VnKZCqUHXbvB7XxOE/+6GAsSuoAZLStuyb92
 9bueVVC2V+ErEEqCnPx84hQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275493-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,collabora.com:dkim,collabora.com:email,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4E27F28873A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Frank Wang <frank.wang@rock-chips.com>

Move SSC modulation deviation into private config of clock

 - 24M: 0x00d4[5:0] = 0x30
 - 26M: 0x00d4[5:0] = 0x33

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
[Taken over from rockchip's kernel tree; register 0x00d4 is not
described in the TRM]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 98562a888b42..1f686844c337 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -350,7 +350,8 @@ static const struct reg_sequence rk_udphy_24m_refclk_cfg[] = {
 	{0x0a64, 0xa8}, {0x1a3c, 0xd0},
 	{0x1a44, 0xd0}, {0x1a48, 0x01},
 	{0x1a4c, 0x0d}, {0x1a54, 0xe0},
-	{0x1a5c, 0xe0}, {0x1a64, 0xa8}
+	{0x1a5c, 0xe0}, {0x1a64, 0xa8},
+	{0x00d4, 0x30}
 };
 
 static const struct reg_sequence rk_udphy_26m_refclk_cfg[] = {
@@ -377,7 +378,7 @@ static const struct reg_sequence rk_udphy_26m_refclk_cfg[] = {
 	{0x0c30, 0x0e}, {0x0c48, 0x06},
 	{0x1c30, 0x0e}, {0x1c48, 0x06},
 	{0x028c, 0x18}, {0x0af0, 0x00},
-	{0x1af0, 0x00}
+	{0x1af0, 0x00}, {0x00d4, 0x33}
 };
 
 static const struct reg_sequence rk_udphy_init_sequence[] = {
@@ -412,8 +413,7 @@ static const struct reg_sequence rk_udphy_init_sequence[] = {
 	{0x0070, 0x7d}, {0x0074, 0x68},
 	{0x0af4, 0x1a}, {0x1af4, 0x1a},
 	{0x0440, 0x3f}, {0x10d4, 0x08},
-	{0x20d4, 0x08}, {0x00d4, 0x30},
-	{0x0024, 0x6e},
+	{0x20d4, 0x08}, {0x0024, 0x6e}
 };
 
 static inline int rk_udphy_grfreg_write(struct regmap *base,

-- 
2.51.0


