Return-Path: <devicetree+bounces-318941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LPfyNpqlRWqoDQsAu9opvQ
	(envelope-from <devicetree+bounces-318941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:41:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E26B6F2651
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:41:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=p0C7OEj6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318941-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318941-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA29930CD8C3
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 23:37:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD91F42B33C;
	Wed,  1 Jul 2026 23:36:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80454266B1;
	Wed,  1 Jul 2026 23:35:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782948960; cv=none; b=YyEKtLMiYa0l8cSq/Jso/Inw4j06wD797OI5PtbJFessODaaXADYX7XpWQvY5OJnUqe5Q6oHTkCsZALbuRqltuuJSoFn6+bxBvTLtaL8udO2sW/GXFq0se7d0Qn2BPkziF3xxanJVmjjEHiSVJIFxfUW/6yYYf9/AQueiO8ZJc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782948960; c=relaxed/simple;
	bh=Qm7aWMY3dOu8xo8sytm7nElHniirDvpuNm7Jfdk51Ik=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IdHiSykQ5QN8vj3BN2hC6nUqFb7JHHfg9Zo+n8+nslm1YY2m7nzoPmRWVs3yS5IF/2Gkv1yMciRsM1QHaygiXNLGqVfWB1npvnwvn5+bu9WgV1U72qLdHyY8Eq73EjbX9n5f6KRdRPvrWvsImCGmGRt19494mmXwpzkhpKAy48I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=p0C7OEj6; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782948950;
	bh=Qm7aWMY3dOu8xo8sytm7nElHniirDvpuNm7Jfdk51Ik=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=p0C7OEj6rGJXFj57Fwuc+mAxErLj6xrBxTtza4Z/OXYlRDVaTrPPk/oP39DPnS9u0
	 uOMbJ7vvVRSDwoQVXogN/UQIymNkO/nxYXFm5k6bA1Spin5fNFGuprxYt+Zd4J3lqR
	 19B/9Hnrw2yM6BU5YF77feA/fHVZAM5MPY2riv21IEmKMXvbpBRQimmG7u6pg6Vfdo
	 uFMrhvp2R7FURY8JNuwFQ7kFvBLn+qwlnBVZ9LU+swkfHWrg44W5jQpmcpqDGF8A2v
	 cax1oE5J2Nf56Gi4Ih9Ji2odkmLxy57SmC3Wa4I74IjbjFodNbEQQhe1e/XwdfBT+x
	 MjAbDvpr398Kg==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F214817E35E4;
	Thu,  2 Jul 2026 01:35:49 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id D4B8F48006E; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:36:05 +0200
Subject: [PATCH v9 27/38] phy: rockchip: usbdp: Avoid xHCI SErrors
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-27-e31efbb62d2e@collabora.com>
References: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
In-Reply-To: <20260702-rockchip-usbdp-cleanup-v9-0-e31efbb62d2e@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1810;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Qm7aWMY3dOu8xo8sytm7nElHniirDvpuNm7Jfdk51Ik=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFSR/WoGN18TYKH2t7R13h3E8Ict54qM9
 Muxa2WWnwvisYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRUAAoJENju1/PI
 O/qaNz0P/0zMIGYr3oL3VrGWEMoNPDj37fWpW70NbNHQ15vTx9OwYD75BEKIBnRYPzxdoeN5RXt
 /uhiWC/IvMko+es76G4Zoa7CAlmdsQj4JlSLfkKX7Xv9dS716KCHACUEwKpc4ffNvDusD6Y+qlL
 mT0c1gpHUtm7oiHORuEpXFGjTJtxud5yIwvB+pl0Bnw2in9ZHDym2gEjIq89q1/6iDsiLJM5LG4
 kgbTfniIsuo7Q6Uh+L1DA2cGOZ9YOPyHIcBbi8dsG+Ncg6FSaXn0BFxY8sN0fRtErhggfY9gG+D
 UrvBrY5mg9t08nB2B8HdwiyAyPYKzQNU8fk44voLEL+wxyM5An9aAlJyNCZcnwv811lM0Rb7Y+K
 jcwsR1BimhZzyEQDK7JzPfvsbkX89SGVDHTNKDg0ilUF0vFISAAkI2Ezr84vUCuM0QbkCkm4pEf
 kG2FWtSbQecxo6qpddgRJlbVOeA5OIPGXsHGVgeGfy35tK99YR1vKfpTPbsSb56iILNUsSUWepP
 6fGXJkmnUytgYV0O0p8rSTkid+5Jy3q8gYl871jRR60SNE5XMej8GMUgrtB1EzJpL03p4409fTV
 FwVmagnyZvBxCFyn5VWCP5EBh/VBF5ShhXORsqt6NCLMcXpL9peFW2jqo8TNf0xx+Kx2Fzl6BSy
 IMzkMWX7S5LfQhfpdbnYqfQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-318941-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E26B6F2651

The USBDP PHY provides the PIPE clock to the USB3 controller, which
means the PHY must be fully running when anything tries to access
the xHCI registers.

When switching between USB3-only, USB3 + DP and DP-only mode, the
PHY must be re-initialized resulting in a short period of the PHY
being disabled. If the DWC3 driver decides to access the xHCI at
this point the system will fail with an SError.

This patch avoids the problems by disabling the USB3 port before
re-initializing it. This does a couple of things:

- forces phystatus to 0 from GRF (not from PHY)
- switches PIPE clock source from PHY to UTMI (safe fallback clock)
- num_u3_port=0

The last part will be ignored, as DWC3 already probed, but the
clock re-routing will avoid the SError. There is a small delay
afterwards to make sure the mux happened. The datasheet gives
no hints how long it takes, so delay time is a guess.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 6b0add354880..146edd35cf83 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1036,8 +1036,8 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 			rk_udphy_u3_port_disable(udphy, false);
 		udphy->phy_needs_reinit = false;
 	} else if (udphy->phy_needs_reinit) {
-		if (udphy->mode == UDPHY_MODE_DP)
-			rk_udphy_u3_port_disable(udphy, true);
+		rk_udphy_u3_port_disable(udphy, true);
+		udelay(10);
 
 		ret = rk_udphy_init(udphy);
 		if (ret)

-- 
2.53.0


