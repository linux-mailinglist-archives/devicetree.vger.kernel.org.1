Return-Path: <devicetree+bounces-275494-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJLjCSFRtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275494-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C5336288742
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 761A132E6FCE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21443D6CD3;
	Fri, 13 Mar 2026 17:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="oFXyBgYP"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C2D3D669E;
	Fri, 13 Mar 2026 17:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424647; cv=none; b=l/EKXxEj0KDlHXZwWoBUHwo8Gs9zjwu4czofbcYLm/A++UwBzi3ZymXg+NX8u5rY1jBAC/Zgc9k9pfCg3s/J3M6KU8jBUha0mfKJWM1ZmerSof8FWKXgwKE/dwzU0tu/1u9BJ3tNA38d/eItfGRS7d+UWbEitKEyOQIqsdKwL7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424647; c=relaxed/simple;
	bh=oqVjDoZa94zSu90rk9b/ENEd4dpixcUZCizM4KN3zCI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=feVYnKZKYwNEiNWwIdzc2zr3KNGqKLW1OKFjRIxliLSJSsnbSnpw5kIfevUYFDuOCOddHypFon5OqbiH33Pl+XJAc87rldBkBigGK/MdreExaIu7cNzdI0TYSfLf28sn0wwOs265qHXx3W+L3lNuHsqrfBmghbl9WA0sSDGCQyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=oFXyBgYP; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=oqVjDoZa94zSu90rk9b/ENEd4dpixcUZCizM4KN3zCI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oFXyBgYP+FDS7aaLeugsmGtsCiW/HnTWTBrRXpjnA0LIz0gt+3JCRV9UITtHJ0Gmk
	 rmHIOE9gAyBrdyayEAXQ6MPzGJl7wrhbXHhId2YqZcpvXDrEO3oAKixqUC0FPazig0
	 uQyFrgl2WRL7xEXbIZ9oMRzupjn7IeRyfLLpULu8ZO4D42DmDU/MPKGqG2QyDym4oE
	 OoQTEsjwjzg0XhUB8JFNAEatilTEcDbmo+JIk5lxLt8XN5EfWxI5WAu1JJCJJfdT4y
	 E3SDMZoXErJs8H1Pq2xiXSUzwAt0SL4wst1cOFGCLbJhd/xtzrzxpxgsIwUySzpuaZ
	 JnA/ezk5+O4FQ==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6C6FF17E05B5;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 26E1B480029; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:12 +0100
Subject: [PATCH v3 03/12] phy: rockchip: usbdp: Keep clocks running on PHY
 re-init
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-3-3e8fe89a35b5@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1079;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=oqVjDoZa94zSu90rk9b/ENEd4dpixcUZCizM4KN3zCI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAD6PHbw0tG/5ourLt9uGtRk64mEIdSNT
 oHKRnmp+NJHTokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaT8AQAJ6JK+6GTTvQWH+aIc3Z5FvcsOPP9AAjPLiMh5GjwajeigQVwogeZCgqpuGqHe069QW
 cHzxFeiB1yLA0pncuhpdBsr9ak+u8sug+1UX1sM6sxn5Tlv7RLCgK3PJacOWLFUzmDIK3oFkASW
 jpAdsro421VCoRuyxiimoLTDMcB8+ysJDDlrRa4rQ3F8frr2jRGzmQmjVdAldBEbPPcFhuE2EO/
 DWbiYhffPYarDscNRTZ7VL0LtARdykH7BrCikSXMxc0pN9SHU8ixQXaMZ51bW8GW5ONtoeCFqAV
 HIzmOJ9dSEW8VkzK6M75Le3W2eaZvf3YAmiude8MzEPc3/cbHJr3/jkswbi4D25qHekOfPmVP8E
 8M+ZcURDQ/EVojnkAK1b/lrWR0z7hTfUGuGdKctbQCUOUJuvRkMmVdRIma8q7O05NdEhKYKDuXH
 z5hdLhXMVz2ZJLdpEJsHtpBmYdB6fHTiTswgbr1qOv1ZNT7HQanPTXbXf4j+YxkB5JLBxt0RI1l
 2nxw22xh4lVO1xUXyXtaIS1rrLDILA+RPwyXIn8bBokW4wfv/JWNcIWwFYK3xstVR82X7rnmJHN
 0/05/uLvWnSxzJI0Ym0tabG6fVabGGid10fzNYz1NCFxZQYajXbUs3DU7W/6xS/cYiR6e4SjXBj
 EYkgYvJcxrdD4SEzEJV0vXA==
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
	TAGGED_FROM(0.00)[bounces-275494-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C5336288742
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

When a mode change is required rk_udphy_power_on() disables
the clocks and then calls rk_udphy_setup(), which then enables
all the clocks again before continuing with rk_udphy_init().

Considering that rk_udphy_init() does assert the reset lines,
re-enabling the clocks is just delaying things. Avoid it by
directly calling rk_udphy_init().

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 744cc7c642f4..98562a888b42 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1012,8 +1012,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
-		rk_udphy_disable(udphy);
-		ret = rk_udphy_setup(udphy);
+		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
 	}

-- 
2.51.0


