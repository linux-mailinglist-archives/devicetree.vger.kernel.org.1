Return-Path: <devicetree+bounces-324648-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CK87C+dcUWqsDAMAu9opvQ
	(envelope-from <devicetree+bounces-324648-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 22:58:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973473E89E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 22:58:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=YThiVFIy;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324648-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-324648-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE94C301CD1B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:56:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644B03B71A1;
	Fri, 10 Jul 2026 20:56:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26A33B4E8B;
	Fri, 10 Jul 2026 20:56:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783716979; cv=none; b=Kl5DJmP608te5u2dlWkU8x20q5ZbxQ017M/HFV4EpjLQfWQqwrO8K0dzqQtAw71rNaBCdsOFIw0LKuGRqWdGecYzq5Mb6my0bQpEt2evSpzXXCou6GVnZARBjv3jTOLFHqFwBfJmOn26zg+GiUCI0J23Lm8wTkP9N9IRsk2nDoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783716979; c=relaxed/simple;
	bh=7NtyUqb33FG+jkcWAqQCofPeXAbNDYLMWt9ICp4xwmw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Oy0aZpy12TDSgKORc7phxpk0bU4jga7L5+AdA9lsjm1u5sCAbP9dyoLDFDQyb/xxYEkucnTk+H7u6eo9LwS1fZbJqAF4QC8SuVM/S38SzsRtTIusAqH7vJqV8tMGVbMxa+HQvMsRpyzYOl7Vv7wK8QIvvspNiuKb/smhJTdFgQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YThiVFIy; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783716973;
	bh=7NtyUqb33FG+jkcWAqQCofPeXAbNDYLMWt9ICp4xwmw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YThiVFIyt0IgNFvU0IQr41k9Gg/WLRP8RV2Z14q6voul1y4OA2aplhommirHeN3jB
	 0oFurEkKUcsfWlnOsu4Kt9fnG+DFPKEKGwF02xERzTtVeU6nfRc7wqNsyTMyYDftMk
	 3Vl2C9tx8pP3585eaAZRX1rrTBhmlTw5c75DWveb79CQRQff0n9Ce7lMbohDRQckMD
	 ZxOQitQBhAwb9GckW+P0jUksvBRFK7qzNXqXy8I4PXaK6sNziFxL0DTwZG1o2/dGtm
	 AM0a1JXkpMI9ZkGQJdRtDSg42QJlHo7j8OfQ04Tr4s1z7UXnuBa8D2Voi5gp5q4hgu
	 pSgYTf3gKwReA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6865D17E0EFE;
	Fri, 10 Jul 2026 22:56:13 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 11EAE48006F; Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:45:06 +0200
Subject: [PATCH v12 28/36] phy: rockchip: usbdp: Only enable USB3 when not
 in high-speed mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-28-8b41a9a9bef0@collabora.com>
References: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
In-Reply-To: <20260710-rockchip-usbdp-cleanup-v12-0-8b41a9a9bef0@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1088;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=7NtyUqb33FG+jkcWAqQCofPeXAbNDYLMWt9ICp4xwmw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdlbn+M9eq5d3Pp3V5venzSpbHpzXmNha
 4MXNngift5ED4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHZAAoJENju1/PI
 O/qanOsP/j4S/f4b1JA34NmA00oNvDQA5E96BpL83ATgbDY7iHcHLxWlaXDm5FuHAiIqkqKrlF+
 NYTV20CXb3HuLS4VjAbYetXdTtuoqCpGJkxFLcjN6f9QQBD2B+bzI3+qfVZVdkXIWAuDkc3RCqR
 J6eUj4IZU4J+bqU09nKFLRjjGUmBr5SGVLod2i4GDLpVZS7it2ahBarLCZYBFNDY5eJp+pX72Zp
 X49y2caBlRd3PDeBzX5ib1Xag1KUBTlJpCGxE9T0icTv6PfQp9csFU2SkBGA7Lp9bjXTqrDXhoo
 gvIRTXp5dkpQjCgZuwdVG5Irq/tTiQyJaolle4cnu3pPRTeeVDE1EhRB7B7WvxtfBnZkxnMrE1T
 fznnlQrST5q0A4fb8irDSWhdmxgkBu8veQXYkY5H8fSm70DTJ9UXuEYqqtULSOXZ5kH8/VK/mgo
 DjxBYtvqB/8Ir8iaTJtV091urQmwiRUFKRAhXMqrCtElkYqSWIZ3dh+BYUSzi5jy5aP3wH8zJWb
 VPfTFoSttYgn1NSc4GVy57O2HZAbOYVpvfsV4OY+Tgff0qLhAjuCSyiJ3kYr64XhLnTGZdBjQQ+
 RiapJtku00T5xyFuzqH4b/IpbDtcV9EktVRy9Axd9Zk9zMYb7jutXRlt5TriMQr9I1mc0m5R0Aa
 2sK1nWSer/WpDFG47muchpQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324648-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2973473E89E

Ensure that USB3 mode is not accidently enabled during PHY re-init
for systems that are configured as high-speed only via DT.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260626212424.C215E1F000E9%40smtp.kernel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 2099ae2e51d1..af915cc37727 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -1009,7 +1009,7 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 		if (ret)
 			return ret;
 
-		if (udphy->mode & UDPHY_MODE_USB)
+		if (!udphy->hs && udphy->mode & UDPHY_MODE_USB)
 			rk_udphy_u3_port_disable(udphy, false);
 		udphy->phy_needs_reinit = false;
 	} else if (udphy->phy_needs_reinit) {

-- 
2.53.0


