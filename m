Return-Path: <devicetree+bounces-324024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hGdbKi7xT2p/qwIAu9opvQ
	(envelope-from <devicetree+bounces-324024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:06:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2706734BCB
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 21:06:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=VqAUVyvm;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324024-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324024-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7ED1B30A4EEA
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 19:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 909AE3BFAE2;
	Thu,  9 Jul 2026 19:02:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17643B42D6;
	Thu,  9 Jul 2026 19:02:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783623757; cv=none; b=GpKPDXwlNvpYbxjlG4C6RtRINckTFalyJgbdiejtIdsl8KfjBZwqeUZxlbkyBo4MyKRj2P7ldNhXIwLLY68quAxwoN0N/kfTfNcu5p4B5ZzpVfBfHEhP1bGgxTjsH24L4BpjttxKY4k4kESI4TkLZglh/UkJ0tlnhEPSnsql7MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783623757; c=relaxed/simple;
	bh=gjt94yB7OMQ1kbenpTWsg4rbaygeNwSXNZrsMwALuYQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XHCwP+Sbr7sQZVTxsGwpiI666782t2YaFJUoUUYwV3GG9RzBet3114aiSgAFUJ3JGhhSXkONTgJT/VF/GswmKMwGdic9MPvUjWk/Bm2Jmal9c5vbf2zV/Vh/Vy4ESxrIb6zlUzIq7aQR28Z/PkpmoMKxbCouiE38lnqzFQ5xsIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=VqAUVyvm; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783623750;
	bh=gjt94yB7OMQ1kbenpTWsg4rbaygeNwSXNZrsMwALuYQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=VqAUVyvmvsl07uGuZ6z0UxoulTmOXoCwkCgEMeGoEw5s8Ps2oDKXbTgzns0Qmvg/a
	 2ZkqOMKiz97doJebIdtxPRoU6stPUSZ/G96twsBntveOqQ74xL/PDVDDhedvl9Qbgv
	 OBEoj2SUN9DJ3yRi95/2NrtHKpmqHAihohpJIaPVv+ie7Q/3Wsbx89ia+TWCr6ubXR
	 EwdTjMjXa0tkcEUoGBoSlrAb7V5dElHuQ+hytu6BSdUHy3PX9qfQEDIOMC3NYcig3k
	 2Nt1Gf3vSviOXi/jfob/AVQoLJsBWSqJQadUrlw27iZnoVqYsThdgSOJPB+ud+ZqGc
	 m0dWT33HC2RXQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 49BCC17E0EA6;
	Thu, 09 Jul 2026 21:02:30 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A88BE480031; Thu, 09 Jul 2026 21:02:29 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 09 Jul 2026 21:02:28 +0200
Subject: [PATCH v11 05/36] phy: rockchip: usbdp: Handle missing clock-names
 DT property gracefully
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-rockchip-usbdp-cleanup-v11-5-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@flipper.net>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1302;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=gjt94yB7OMQ1kbenpTWsg4rbaygeNwSXNZrsMwALuYQ=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpP8ERXD13e+3wWjN5ra/CC2OI2wy2cthVKz
 FW2X8w3iwKnN4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqT/BEAAoJENju1/PI
 O/qaTtYQAJUT7J7thLchtcq5HeZpILbot/OSUFrnz62sIu5FbiWvBSGTzSxdT96b2dM4QMLuMjS
 INMh5FM00F44IOE7kPpq1qWvHGNfIwoXvML1wrAO6MIx86Xd4zROiVULc3HmtjN5lfEx0fd7Ccy
 K8zMyQGAb/5sUYp39wKwI7S6pkw6bVDKRfym55cbeI5UmgHdqkMEtgcF/dJIw6BpIDuVJunBTle
 FvgU9NynJwBULiFTJX+/r5fAuhW63dFI5KARLBGa2E4QXj1W0Xv+aSHJ4DkS3Vsi6fY2+pXsFL+
 p18i/7488vDbieZ24oejfVbPAn33G9hnsS2BsiVp8KtAdoWWAwlOUb75nXrqR06NDBtWFbV9PN7
 lw2ePo8d/A4XKZQApkBSJN8cfPe6D0qmNr4CemXOVptgPv4aT846pqY1Wc9SzGxK3GOjmwrIaL7
 l3fJv0va9SgMumDEWXRgTLDGeFnvybhSZYvN4M+fNvs7rrQAgPChkgwPr4nOUZCYtUpZlBpqBXi
 85TACt7UoQMFo71hq1LhTLIpo1QkqAJbX+TRaEvpvdcXzY7i2Gs5oc2fQ267+wLdsuNNXyu5hx5
 nDSIfWkyBRf3lLEEpgc38zz0A0U+eExfrpM4JyYDj6JapwFSwSeyYB/mN0ZYVEaZ5EAWqNJyKxA
 Vs93FLW6bpKK49ghpVZkuPw==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324024-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2706734BCB

The rk_udphy_clk_init() function would currently try to do a strncmp for
a NULL pointer, if DT specifies 'clocks' property, but no 'clock-names'
property. Fix this by making sure the clock has an id string set.

Note that DT binding requires setting clock-names, so this is only a
problem when booting a non-compliant device tree.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260619154349.071321F000E9%40smtp.kernel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 2845a012eafc..3fc8222fcaec 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -432,6 +432,9 @@ static int rk_udphy_clk_init(struct rk_udphy *udphy, struct device *dev)
 
 	/* used for configure phy reference clock frequency */
 	for (i = 0; i < udphy->num_clks; i++) {
+		if (!udphy->clks[i].id)
+			continue;
+
 		if (!strncmp(udphy->clks[i].id, "refclk", 6)) {
 			udphy->refclk = udphy->clks[i].clk;
 			break;

-- 
2.53.0


