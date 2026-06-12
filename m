Return-Path: <devicetree+bounces-311062-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XlsTI48zLGpLNgQAu9opvQ
	(envelope-from <devicetree+bounces-311062-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:27:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 352C467AE9B
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:27:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=pBHDTHR5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311062-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311062-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F720305B4A5
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 813903D79F9;
	Fri, 12 Jun 2026 16:22:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A963E4C88;
	Fri, 12 Jun 2026 16:22:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281328; cv=none; b=Lk9f8gAOkAstGIDbVCVyLQo8Fwh55RoNFKP01+6+GaIQCTOzzfjYUuixqD+rHWqh2eoc4iCaK715UqF/xiYhwrW7PimSnEr6VwRFJdpUILklJiUl6TWxFp8EL/Spaf1cePmhZJ4o3huvSHpoHeWHNfzQNl0rjVBWJo82Kfm2SnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281328; c=relaxed/simple;
	bh=e+X7quj6f3rwPOTFsKJxXaQIoHZdjdmli0YuE2QSEew=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bc5YEzuLAcPcMPvXkcIwHqwDyuOkMjpkwMnO8gVyRVEwycCqYnqV80gfePPzOtQf+vo4+LSZ06E4mWZST6ZrZMdf61ITegNJY54nfs+VQEebp7bnEmvAi3Aa4CR9JUBmgW911fVdd4qDTWNk0KNn+NNfSWkpDHy9oT/fc9XJF8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=pBHDTHR5; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781281315;
	bh=e+X7quj6f3rwPOTFsKJxXaQIoHZdjdmli0YuE2QSEew=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pBHDTHR5h+JwNslciPAkO1CdyWdDm+LxG90FUrFF9uDXyVvTp2Hytdgbwfc2nZcdP
	 k+j4veUH50En+9k4pef78+Uew8j7u0H2nP61hbkD9gyg643QAsuOdULTxESPs8GlLU
	 AeobgJaiFJ1us9odY4skLhRX9CM8BroDP27L2x5Hg4u0xokk/JAm063++PxNZ5MrJx
	 RLGxXdjgf0+CjOxjVLq20Kpc69AzrUJMh2Pp1Itu9XnqBH5MsS1L8LMFqBdQJGYjJV
	 L7Pyb4AXXUsCGtHuJyvBBs0eRzlUPmW2XQphojHstTmtwPb7b/3miLFKvPa4v67r4x
	 txz8+x+x+19gA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A33EB17E14FA;
	Fri, 12 Jun 2026 18:21:54 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id D7A3D48004C; Fri, 12 Jun 2026 18:21:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 12 Jun 2026 18:21:51 +0200
Subject: [PATCH v5 13/18] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260612-rockchip-usbdp-cleanup-v5-13-efc83069869f@collabora.com>
References: <20260612-rockchip-usbdp-cleanup-v5-0-efc83069869f@collabora.com>
In-Reply-To: <20260612-rockchip-usbdp-cleanup-v5-0-efc83069869f@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1849;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=e+X7quj6f3rwPOTFsKJxXaQIoHZdjdmli0YuE2QSEew=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGosMiF9vvEsZaiOmkYhh/VPq3iFHuFDU87FX
 uMK4PCvJQoabokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqLDIhAAoJENju1/PI
 O/qaisYQAI5Avcdg2sfvSFFiSTvWoE3HNrEmq8Pyd0ORW6CTQEu5c2i3Ndu2rzZTnyUsvapTMqd
 sF+cABFMoL5l/0s+d0mCIjnP3vOQs7+8U/8rCcvXnRKz+6poFfSjZzkWWyFtpazIS3I9+av2SUR
 sXsB9sQoVG/HPsXMdcUOwHlFkcBvmLzHUz+WwMI6DbUE/rK7HqMGCjdNBHZNp74U/ndbbjbLNUO
 Yma44IjJLTk4MdAf1ewvPt/RSmOGILkIZDG7MuEKVdmIpZzV3E8KsPcZgIY3NUPahxCSB3WOVhQ
 K4vNT2bLlwC3Ommf2rXNZxvTENL9hO19Dc0aNucaq23PeLXFKB9u4zrTLZLIhxp9um9+YSuUpRg
 SsJ0fvmh264dd7sDYW6SriwfUbeQyXHqQAP9TQ2vDWL+O/rv73HQnxdNbBf8TMUwqMJyNAyooA/
 LfrPLYklhmasW9fWTShanRYlnm3W9omh70NBrl17IefSyPTaDfxPUGS0+Gwr26J7lZ6Kqv+ctWf
 MeiDI22QDIlVS0EFr5dvYDjnIztgv/mVDQa+WTiy0RqHGacSxKjPY24gzaAVK7nT9vfGeffyugr
 t5re+fFOGjkL/wx9XDMTpKG05ZgneVFYQKDQv2P7ORXycRlYX8NlQ+bOekpU5jP4eOZXwIlglow
 MYZs2VX2q/Am8h68AdpAy5g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-311062-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 352C467AE9B

Right now the mode_change property is set whenever the mode changes
between USB-only, DP-only and USB-DP. It is needed, because on any
mode change the PHY needs to be re-initialized. Apparently at least
DP also requires a re-init when the cable orientation is changed,
which is currently not being done (except when the orientation switch
also involves a mode change). Prepare for this by renaming mode_change
to phy_needs_reinit.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 7255c80e0fe2..a3b4e2e0f578 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -171,7 +171,7 @@ struct rk_udphy {
 
 	/* PHY status management */
 	bool flip;
-	bool mode_change;
+	bool phy_needs_reinit;
 	u8 mode;
 	u8 status;
 
@@ -580,7 +580,7 @@ static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
 	if (udphy->mode == mode)
 		return;
 
-	udphy->mode_change = true;
+	udphy->phy_needs_reinit = true;
 	udphy->mode = mode;
 }
 
@@ -968,15 +968,15 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 	}
 
 	if (udphy->status == UDPHY_MODE_NONE) {
-		udphy->mode_change = false;
+		udphy->phy_needs_reinit = false;
 		ret = rk_udphy_setup(udphy);
 		if (ret)
 			return ret;
 
 		if (udphy->mode & UDPHY_MODE_USB)
 			rk_udphy_u3_port_disable(udphy, false);
-	} else if (udphy->mode_change) {
-		udphy->mode_change = false;
+	} else if (udphy->phy_needs_reinit) {
+		udphy->phy_needs_reinit = false;
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 

-- 
2.53.0


