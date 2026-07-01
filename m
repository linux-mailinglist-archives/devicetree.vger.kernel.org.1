Return-Path: <devicetree+bounces-318956-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O1MMOCSnRWoJDgsAu9opvQ
	(envelope-from <devicetree+bounces-318956-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:47:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7891B6F277C
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:47:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=agikFq4o;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318956-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-318956-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 030483058507
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 23:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3237941C2F8;
	Wed,  1 Jul 2026 23:44:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AC24218B9;
	Wed,  1 Jul 2026 23:44:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782949494; cv=none; b=WNEgm/7jq9pKPDRVBqzP+n+pmxaLmrrSMsZB8/5qHxqYRSad3oFmSo1eXXnxOtJfp150okxq3UHm1TbQ4Q7weQT3yiz8kbZpTS7oBSqKQBkrJMTpwqh1SDKNpSLgmMnTq+ABu/ZSZMUCRqKjNlt5vspdFMQ6scPnfa7U3v/S2F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782949494; c=relaxed/simple;
	bh=4Msz8sGDoKNM7oLrBuPjItajKMD3i6RymHRBLbBlU2k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Fme8tepgIuoMPSsbvTvbVNiuRqjNyOUYFoxDM3Poipor8Oz/FDmpwl/PyJgv0EAfsZEnsWVRaq8Qqh6xuV0h41Q5aFy+Bq+QQy8/UqNu38xymDpOzNpdBDlh3ym4RLzF9Fn6TW3uR8covSYzXAfrTZ75guRBzYS1S1BjUYtyRMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=agikFq4o; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782949486;
	bh=4Msz8sGDoKNM7oLrBuPjItajKMD3i6RymHRBLbBlU2k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=agikFq4oLJmGTs85omH95Nm4o1ldR7iZKMaqUQyWc335pMruPmOz1CS8U+Yk/AHdK
	 YvKCXsLKJoALHYNXqEYBuW7RZtnTBE+GtdUARWg3npsSJm+9hMkxlhCWc6at/JovKc
	 VKtisKLn6RoK8woi8YGPIxPOfvrVB2vw6nxAD4YKmxKH60EJnvgatP4EpiBkgL6SUY
	 8cBbTqSlEzhDgN0otqyvy7b+ky9h4lAhiyvy59G7dXcBuMdEOh5z+XSXzNNs+ngVao
	 vkPXdyG4K697PvU2Hi3gNDtnTnh32akoyndmueUwY5ZJcWYX+f40IUWf0CPnFf8QHZ
	 y9SDduFh6cLZw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 234B317E1411;
	Thu,  2 Jul 2026 01:44:46 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E1F8848007B; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:36:14 +0200
Subject: [PATCH v9 36/38] phy: rockchip: usbdp: Rename phy_needs_reinit to
 orientation_changed
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-36-e31efbb62d2e@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1814;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=4Msz8sGDoKNM7oLrBuPjItajKMD3i6RymHRBLbBlU2k=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFRg4JktR8FOSiU0zl21I7iKtC9Cdloz7
 UuioioUyjTEOYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRUAAoJENju1/PI
 O/qain4QAKiyjB0N6qKNjr0oqpQ3fFnL7FV3faHGQ+2Pa8hAtXLY9AHi7/X6KE0SxR2DabcN+xe
 nFE/s1NnFceme+K/Io0CjzZ6jHveTnfAbBLc1eTrF92JbYXO6lkM/JRHKe7aLTHaLn5cHRrFtde
 OKeB7aKccKcXJB72wFH4246PsEWKHqdDGLquQF7TtphuE/UUOgACnHJAOlC7O57h7TN74wNv6nT
 cGV3Kg2Lpl9isEM7mcaOU6dJqFBgfjqsljWkKXBfHgYYougfje4YKUOFbVKqwtfd9blA33K+5Z3
 sD90DCdXsNgilsr2dSyvq/jRPgmvEeAXNFIAm2R+/IqThqntL2Pu9HBoch6Ncqg+PMna+x9rnIG
 c6wbZhv1WO3umOm28bCWyFTebH6US73osQhDvOGOX0SQ5ic/sitM1ZV91bfuCCxEnYPa1RIJ7sy
 Xnhl8yQjALv7lDyMEBKLKRjgHqzxz4SNM78nOMdCK5dtLkQmmA86D4pxWELVRNxEfUToFxvlNy/
 XyDf0mQiZcL0LmBUxXXRmql8MSxNYZzGiMuYQobIby0ClDkVZwr19Yk0CAVfd+5Fp4899juJBf4
 fr4yzA9llX1Rz+5YdmuXaaE8To6wYSktkRF3s2bQYs9ecpzMaELMVzMoI6iWjtLOY1rYyJ4gRBw
 taN/JwrQd3i/9BIkE3RQqzg==
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
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-318956-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 7891B6F277C

phy_needs_reinit used to signal mode or cable orientation changes,
but mode changes are now tracked separately. Thus it makes sense
to rename the variable to show what it actually signals.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 51aac07ef9fe..735ce1bfac7a 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -174,7 +174,7 @@ struct rk_udphy {
 
 	/* PHY status management */
 	bool flip;
-	bool phy_needs_reinit;
+	bool orientation_changed;
 	u8 hw_mode; /* modes currently supported by hardware */
 	u8 sw_mode; /* modes currently requested */
 	u8 status; /* current PHY power state */
@@ -667,7 +667,7 @@ static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
 
 	if (udphy->flip != flipped) {
 		dev_dbg(udphy->dev, "cable orientation changed, PHY re-init required.\n");
-		udphy->phy_needs_reinit = true;
+		udphy->orientation_changed = true;
 	}
 
 	udphy->flip = flipped;
@@ -1020,7 +1020,7 @@ static int rk_udphy_update_power_state(struct rk_udphy *udphy)
 	u8 target_mode = udphy->hw_mode & udphy->sw_mode;
 	int ret;
 
-	if (!udphy->phy_needs_reinit && udphy->status == target_mode)
+	if (!udphy->orientation_changed && udphy->status == target_mode)
 		return 0;
 
 	/*
@@ -1067,7 +1067,7 @@ static int rk_udphy_update_power_state(struct rk_udphy *udphy)
 	phy_notify_reset(udphy->phy_u3, PHY_NOTIFY_POST_RESET);
 
 	udphy->status = target_mode;
-	udphy->phy_needs_reinit = false;
+	udphy->orientation_changed = false;
 
 	return 0;
 }

-- 
2.53.0


