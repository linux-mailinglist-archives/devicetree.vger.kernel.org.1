Return-Path: <devicetree+bounces-265545-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eH5oN+lqkGmAZQEAu9opvQ
	(envelope-from <devicetree+bounces-265545-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 13:30:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DF313BDD4
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 13:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5A323021E97
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 12:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40FED30BBA6;
	Sat, 14 Feb 2026 12:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOCosvLO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D80C23AB9D;
	Sat, 14 Feb 2026 12:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771072187; cv=none; b=UZ1U6EBke9ON4A6fPeaYrXR1mAVsTyJW6daFi/k05D8npBjLgaOaM6MYVLjLWBFR+2GmBfxCothc6az8z1TTQJk0m/xZlKWz3wA2Sq2pQD9YIbz8Hb7mIAOrb/Ft/EmfccpOa/BxgCzT+3/KJGtD8CInWCIrAns74rI105AwSXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771072187; c=relaxed/simple;
	bh=R/+dzl78ImcyJC3ajMsl4sx1pTb167EmQ3u/ZqNDDqo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pMzYWp49aBptKXPORUUhGjFMmtMPNUVsfWgWHjUkSPTj7PLFgGXYwlrFOoC0LcNCSgy0JRrfx+uwn0OKW42/JGY/M0V1b5ZyLaOC3rMlQgZJRZFUfCJUxRGroNIl1t6k7vGG4KMLB6on3Mi9//n+HNZD1qdOojuIlVq3beWKH1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOCosvLO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39AD0C19424;
	Sat, 14 Feb 2026 12:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771072186;
	bh=R/+dzl78ImcyJC3ajMsl4sx1pTb167EmQ3u/ZqNDDqo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TOCosvLOUkpUvSy3Cd6K0bENEMRdr8eqgsnwRfG++apQa4xCbrOYaxOAEQOkmnegl
	 hiFU6jdGKrk1m1yS2mcaN1XFCPVRGZ4ni4B+b2ORa/KNuV3XL0AlnNPoeDTVSiBJMD
	 xhC9kSInq2I+Cf7g6LYE4386PIJKpvGgYsR6FKMc35dFzcVQtN2VaqyjMXUn6nrdTN
	 5VAIrnz7m3DwhTLZygeaSRMGI4UAzTb2PCBgbtVkADLgr5RpttEmrNzHSziWEU+ZTQ
	 OsGXWcvXXWCqS67f5OSWyG0n2oNqrlZ/LswPcYlrsqVTduHFEsm7faDMxmLGHrcd+G
	 XeMynLklz0U2w==
From: Yixun Lan <dlan@kernel.org>
Date: Sat, 14 Feb 2026 20:29:15 +0800
Subject: [PATCH v2 2/3] phy: k1-usb: add disconnect function support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260214-11-k3-usb2-phy-v2-2-6ed31e031ab4@kernel.org>
References: <20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org>
In-Reply-To: <20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1552; i=dlan@kernel.org;
 h=from:subject:message-id; bh=R/+dzl78ImcyJC3ajMsl4sx1pTb167EmQ3u/ZqNDDqo=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpkGqncnS5ukAYLLDhRo+37cDaebjFw+ClkAS/U
 +HXtIFVj+OJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaZBqpxsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+2LYw/9GmtDDMqAa3Y1Jed10EBIq4pzQY4v9WhRDJ3j+Ip7ZrWx+RSyemVLO
 sk/PefMncMZU2B5mUQ4JVWzwG3u2RruugSo0H5IYBWz44316Z7zXz8m2S/v1hCu4tTIAIZ3mk+h
 bspF9ZZeuXmWgeWabUcFouHZe7FVd3pDCbyyuwtsVAy9elAtrPGHy5t5E/8STNa1VEQ4WXeDIZ9
 HJqUHqvFqrjtB4hrWof1wgmG0q5UW5v2wMdthSkt3XYN8zxkGC81rKCF6KiHGeFhB4HLQLTObz9
 e6QjNG8Kers/pIbWA1JXZ1y0bZYyO5CE1QTrCeavUwrhdEBOtwuRmGtByQbZ5Wtyu/KgN2WEzSJ
 jT8amA6uDy8BY86D6cJ1pGU1UxuTcKTvGDFs6kRpAEyFMMU2uyBFpT9dHP23iW5aLKrvuytRFLq
 pn06wxWNEDVeTdlwBIdnhRkpLv5ZMCjr7+5daUC2eniz3Ebz4VH/kiq7D7vMz4/YpdFp51pWK/y
 7UvOPWJjUtYIR/78n8L6zs/TeOt1ht+q12qfrXn/cjV7cegrJynZkSj0bJtMWtW93p+v3CBmiAF
 aeZoVG67e8EebdjXKBc/q8GGrM/jCj6a8LYsJeqRm5+Cw9FgQyWJOBX1yOcKk2MAiJt17iLN6x9
 c8eGwaJWOfmMQfdlwsQOycPHEN0Mn0=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265545-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 46DF313BDD4
X-Rspamd-Action: no action

A disconnect status BIT of USB2 PHY need to be cleared, otherwise
it will fail to work properly during next connection when devices
connect to roothub directly.

Fixes: fe4bc1a08638 ("phy: spacemit: support K1 USB2.0 PHY controller")
Signed-off-by: Yixun Lan <dlan@kernel.org>
---
 drivers/phy/spacemit/phy-k1-usb2.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/spacemit/phy-k1-usb2.c b/drivers/phy/spacemit/phy-k1-usb2.c
index 342061380012..959bf79c7a72 100644
--- a/drivers/phy/spacemit/phy-k1-usb2.c
+++ b/drivers/phy/spacemit/phy-k1-usb2.c
@@ -48,6 +48,9 @@
 #define  PHY_CLK_HSTXP_EN		BIT(3)		/* clock hstxp enable */
 #define  PHY_HSTXP_MODE			BIT(4)		/* 0: force en_txp to be 1; 1: no force */
 
+#define PHY_K1_HS_HOST_DISC		0x40
+#define  PHY_K1_HS_HOST_DISC_CLR		BIT(0)
+
 #define PHY_PLL_DIV_CFG			0x98
 #define  PHY_FDIV_FRACT_8_15		GENMASK(7, 0)
 #define  PHY_FDIV_FRACT_16_19		GENMASK(11, 8)
@@ -142,9 +145,20 @@ static int spacemit_usb2phy_exit(struct phy *phy)
 	return 0;
 }
 
+static int spacemit_usb2phy_disconnect(struct phy *phy, int port)
+{
+	struct spacemit_usb2phy *sphy = phy_get_drvdata(phy);
+
+	regmap_update_bits(sphy->regmap_base, PHY_K1_HS_HOST_DISC,
+					   PHY_K1_HS_HOST_DISC_CLR, PHY_K1_HS_HOST_DISC_CLR);
+
+	return 0;
+}
+
 static const struct phy_ops spacemit_usb2phy_ops = {
 	.init = spacemit_usb2phy_init,
 	.exit = spacemit_usb2phy_exit,
+	.disconnect = spacemit_usb2phy_disconnect,
 	.owner = THIS_MODULE,
 };
 

-- 
2.52.0


