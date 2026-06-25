Return-Path: <devicetree+bounces-315806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mrCCNsdoPWoX2wgAu9opvQ
	(envelope-from <devicetree+bounces-315806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 19:43:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E8F6C7F5D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 19:43:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=YKaVUWCx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315806-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-315806-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D983C304232A
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 17:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C4093F0AB8;
	Thu, 25 Jun 2026 17:39:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F943EF665;
	Thu, 25 Jun 2026 17:39:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782409189; cv=none; b=jS0D5EAqfX1mvFmkjEgGtMW8A8UPedEQKhXb5TInbtCP2T1Z9iwhMj0QONcMTdeqx7Ni7bA/9DxEf9lDWKYAUFyk/IZfExgZ/c0pgTVemqJnkEHFatJEgZ4DyPyhfHuiGgs84X6vvvoUoN8DFozBRGsRIPhn+bpIAO+xUryCVqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782409189; c=relaxed/simple;
	bh=D8W7Aj5mp7BhG4KqQQHogMa/3oAHcKKllT3RyusEwlI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=P8WWtpb3lTWjVvlYzuAy63a+eCwYYAYy0q1eM3s7HZLHByAM8STS7+5XivhOdiEIXgYyM3zlti8wpiHZVNjfzlGL/GDZt3YGQ5kR2L2iq9sCNGqap56LQ2tPBWic0GfxffMew9kI6hiQEppMMTh0P2ZVC5IvObN1Ef8JQpF6Y48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=YKaVUWCx; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782409181;
	bh=D8W7Aj5mp7BhG4KqQQHogMa/3oAHcKKllT3RyusEwlI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=YKaVUWCxtXuOskHPq9H/j5lNIgr79L5EGI9dFkt60oTeeExl4hrvdjwqpQuGPb0Zd
	 e2EWoyhKLVQFLyCJl/7qRQPS9CU2NoshcRgAbDtKhJeodPTMtCnY1fofKapOJ2GbgQ
	 zGEzVnfZtbVnqOvF6bSi/ayKQxT8hL+Qgb8fa+/+QcW2xyMSUtKh2WZvPaWQ0Ltrh7
	 hwd6KUPu7q3n3p68TcYzX07grkuHF7KSm40sSv8lA6ay+2bM71sNv9pDn/OfD49Kv0
	 NStjAJDbbO3R1BUmNMChP0PJQNbrxqVS/qeag+Ys7CL/t/p8JixsZd47awWTw0f+k9
	 y0AX0eBieK6Ig==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0DFC417E1576;
	Thu, 25 Jun 2026 19:39:41 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 15078480064; Thu, 25 Jun 2026 19:39:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 25 Jun 2026 19:39:46 +0200
Subject: [PATCH v7 19/27] phy: rockchip: usbdp: Rename mode_change to
 phy_needs_reinit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260625-rockchip-usbdp-cleanup-v7-19-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1831;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=D8W7Aj5mp7BhG4KqQQHogMa/3oAHcKKllT3RyusEwlI=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGo9Z9s2/XywSIndN5aB9JAv3dfipBW8IhQZj
 y4TzxCVsbypzIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqPWfbAAoJENju1/PI
 O/qaGVsQAJHgc3BC5WqOt5V2OJM7WO7th+UtnzmimmzQxb+kTNIW3OXOZxAMU1lh7aMHD1AUo1s
 /LV8JdoyWdTUkoq5UZDtI/raLEPUncPBlZCPHjIysRUOz9w9EOTzIHrb7q7sKokkbzwhDu/J1/X
 RW7Jsjg4nd6xi2WS2MoGs/5Bucv29PQinE990aCemGiVC1y1R/Kg5BdijGngZPbBNamivG/v5Aa
 MdNGGSEcth30J5H5baoqlrlKeKspYpa7W9g/NOaoxqk9IUvJRGBqyjXdPz9Xdd6Sa288PnybS4L
 ntbeqIu6oSPm/i4sMkJTqkE8IMk1xSth5Ai9EEr5iop7KqEygM8u6Rdh3vDQCco8cAvxFl0jU1/
 voQivP3Z7fwoNnmzwhNb8ZHL0SImEcE5jLViaylg5wElBuWhNdxfeR2GPDlDzSNVShr3KegDMPR
 kn7nYg9DMJlwIXPhtMrmcrU1u8PZVA4qgwf0sahKqdxWB3nvbl4qB/LwPaVmOrq5yQj6tlTqEM+
 0QrZCu5SGU6fG0quUmQkzT5qiLCB/sv04BBy4XwTlCVZ8YCyEoIUs4Ozi/wEDpnK2WpMtyz5L6d
 gF/PygIbRqxb2Ip2lsdxziM6mvBF81Sv7q89pgLEEnM0tt3/kfAzAu2xATvzmQQMAywKp/2PFf+
 k32lvnl53gLP7PrguQpspdg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-315806-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61E8F6C7F5D

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
index 8b5b188fd121..b08f0c142b0d 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -171,7 +171,7 @@ struct rk_udphy {
 
 	/* PHY status management */
 	bool flip;
-	bool mode_change;
+	bool phy_needs_reinit;
 	u8 mode;
 	u8 status;
 
@@ -583,7 +583,7 @@ static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
 	if (udphy->mode == mode)
 		return;
 
-	udphy->mode_change = true;
+	udphy->phy_needs_reinit = true;
 	udphy->mode = mode;
 }
 
@@ -981,15 +981,15 @@ static int rk_udphy_power_on(struct rk_udphy *udphy, u8 mode)
 
 		if (udphy->mode & UDPHY_MODE_USB)
 			rk_udphy_u3_port_disable(udphy, false);
-		udphy->mode_change = false;
-	} else if (udphy->mode_change) {
+		udphy->phy_needs_reinit = false;
+	} else if (udphy->phy_needs_reinit) {
 		if (udphy->mode == UDPHY_MODE_DP)
 			rk_udphy_u3_port_disable(udphy, true);
 
 		ret = rk_udphy_init(udphy);
 		if (ret)
 			return ret;
-		udphy->mode_change = false;
+		udphy->phy_needs_reinit = false;
 	}
 
 	udphy->status |= mode;

-- 
2.53.0


