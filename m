Return-Path: <devicetree+bounces-313855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r5YhL8BgNWoRugYAu9opvQ
	(envelope-from <devicetree+bounces-313855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:31:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 625CA6A6B3C
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 17:31:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ovSqgWUA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313855-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313855-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4410030AE3FC
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A28C73B47CC;
	Fri, 19 Jun 2026 15:29:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A0073B3BF2;
	Fri, 19 Jun 2026 15:29:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781882944; cv=none; b=fWQKkHdlgPIWfQeySCU79fyIG+CrsaFlgmrAJKr/Ujf3oSzCTaqF6BkbhUX3zEN9upxMpZpo1O+ZT0eIg3Tu57HMJclySiGtVwF6KhXDvuXMfMfk8HzO4FVVRKKQzaMTTR+14qILKFUMuX14xl+NwNZyvDjVCILkHcjs/htpOCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781882944; c=relaxed/simple;
	bh=CT7u7E77U7zQr5kR3FDQAqLkvmw2hnmp6IofvsnGVfE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F/DKE6uB1R3WCmptGACY7pBIA9r/f1LMVtdNrf7UhlhndeoIxk0yWmT2zMzhx1C1elcCA3y/KVP4CGn+fOVT+IlSjB7YQtWJ5TEcYLIr/spRfmZyyV6KdIurb0/QsODapNPlGfTmcGKCP1FhDwvSPJB3nIxWsG5iGZAKc5IQ3Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ovSqgWUA; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781882938;
	bh=CT7u7E77U7zQr5kR3FDQAqLkvmw2hnmp6IofvsnGVfE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ovSqgWUAmqufq0Ithx1kJogO2JTHWlrBZwgaymkZwIx2f0NKbRktMiJ/9S31ShQ4j
	 TuJHzgZ/rQVfKiY/E+TmNZmE/70zviksO2S1TAMLY7o3SQQb3W640iq5zAt+/xXSFv
	 +9FsNUkKrBx6jOwY8U5y0lGJMHVoZuiKABKIuwdRJLFH4mNEniHuT7dJUoLBidtVbW
	 +EtxkxfOUWGOUmEEW3nrbUSyimRUpDieAYzZDZ8BfZzANLGXAk1UF28NGkpDrXoHne
	 66Fy2di8FzdtQIdGcfh+hbm3SrmXu3agMUR9g+39W4aebQmzy4l3+EJuedSuRxIMVj
	 J+n7Nw4Mq5T0A==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2F18917E1024;
	Fri, 19 Jun 2026 17:28:58 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8FEA5480031; Fri, 19 Jun 2026 17:28:57 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 19 Jun 2026 17:28:57 +0200
Subject: [PATCH v6 06/23] phy: rockchip: usbdp: Limit DP lane count to
 muxed lanes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260619-rockchip-usbdp-cleanup-v6-6-3bb1f54b3f35@collabora.com>
References: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
In-Reply-To: <20260619-rockchip-usbdp-cleanup-v6-0-3bb1f54b3f35@collabora.com>
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
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1284;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=CT7u7E77U7zQr5kR3FDQAqLkvmw2hnmp6IofvsnGVfE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGo1YDgY6JgXUN4hevis9mLAzA6i9pfOugLV4
 GbCGYjlmcnkb4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqNWA4AAoJENju1/PI
 O/qazOoP+gPIDglRhRA9dbFA9WFquwF0e2esJ2neU5Q3g3XeMYfvTqmpVOQPYCZZMfB3L2SvrR/
 9OmJct4u2toKHmQpe0uAlohKsuNKtsxt8BX7NTLOkrW+pCci4fxSlZ+uWhujMMcohf9WJbM4LsX
 kEsTGwue3tvgtBbMGN4K1774ML7f4PFiLkGpSCQCk13vAUZrs14xZkhSKK2LCdE5JAba1GoRjWE
 HyrqNqFoFCb8wpWcbYtkFZYX8ZgAaawHWNmlNZ6r6Cd5IF3/nXSFJ8AndQKUvaFxWoZKD3j7dyL
 Gv+v6koDwSls1S71t3T6v9DKX4RBZMWL+Sg2WpcySL8rAfTAHb7zmLUURExKIECEzAxGXqlruWO
 XadkQuavG9jQplj+XhfeWcdKQQkCdxnbzS2BevT0gTOCaIvvIsX8w8MlnGmbQJAVDi/GbpaM/7Q
 FcRhLjlPffHjVLuJ3UmP76v1m/dwQbmMqWuaz7oAEivKVeWxJycB5hgxz+MAuvmnjInqopDNAG0
 knFDcSQ2k1GuboE805tSdfruYLJCOY07XLKzQ/DqF+SPVCxHfwVY/WxlhAVYKfJ/SgceiuPD7vM
 C4b5NrCHvZY+R86PAZIFi0EGgf7Ln62AVR1SlZ9iloZwMCykuEwQcXAJ13sHegQVd1g94A7R0+B
 QSzUJSywuMx1o8R36WqMtMA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	TAGGED_FROM(0.00)[bounces-313855-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:sebastian.reichel@collabora.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: 625CA6A6B3C

In theory the DP controller could request 4 lanes when the PHY is
restricted to 2 lanes as the other half is used by USB3.

With the current user (DW-DP) this cannot happen, but as the check is
cheap and users might change in the future protect things accordingly.
Not doing so would corrupt USB3 usage by the following code configuring
the voltages.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/linux-phy/20260612165546.98E1F1F000E9@smtp.kernel.org/
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index ffe39c968c70..6dff4dfc9363 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1126,6 +1126,9 @@ static int rk_udphy_dp_phy_verify_link_rate(struct rk_udphy *udphy,
 static int rk_udphy_dp_phy_verify_lanes(struct rk_udphy *udphy,
 					struct phy_configure_opts_dp *dp)
 {
+	if (dp->lanes > udphy->dp_lanes)
+		return -EINVAL;
+
 	switch (dp->lanes) {
 	case 1:
 	case 2:

-- 
2.53.0


