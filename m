Return-Path: <devicetree+bounces-275498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH0ZMZFQtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:59:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4267F2886A0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 44E1630A2CB9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5C353D6CDA;
	Fri, 13 Mar 2026 17:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="QrYeTACi"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B113D6480;
	Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424656; cv=none; b=V2IqhUWNE+l5fQf6oDY8g/0At64Ch/3lQCVhtEr7tMQww2EmGaYjnGd31/DRfjthKnVvJWeP8W8b1IECBK+tUmV2QE9W3zmStKqMeUAlays7U74xENJfYCvzbEL7BvLDrobu5mPhprR5ZmH1+A6M7HNMMqbNw9TB29EDuoJq9gM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424656; c=relaxed/simple;
	bh=KzWYZJRx7rQzuj7r18U7pjbg7yHx7AbFbAxlSXP9BPY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aoteyDk0FC3/J2B93xQtSi79uAasJLV1+wiE9+OZG9HflT/LABMtOa9RyCAhmCHZQBDrrCLEY8XLoLmFcf/C3H35TuZfHsa9b8IbIscYDV0/c7/nr0jdinjM3wcUq4tny2HvjHkW+LXihzPODAtBre5fHlDuFp310j29bSZFTKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=QrYeTACi; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424642;
	bh=KzWYZJRx7rQzuj7r18U7pjbg7yHx7AbFbAxlSXP9BPY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=QrYeTACiJxKKlI/r2ldYTzpOaqXhLSBONGa1zXclVkZjccBCSnaLEhFx2uTvacsgt
	 vVqjFXI+7LxwshL9nuzRd2WIxwP/RTP7q5YkXI5eyFaxUuf7IB7Cg1D57FWd2kWKgC
	 vkDhp/TLaaPjZB8e6LjCRZSUqE0FQlQJHxUSLI69Yz/ZyxkoZ6TwJ9Nwoiu/LzR/ZR
	 sDHpH+NMDvhkjHUSy62cuJDnvS8vhLicZkNLsx3Z2N2rSGF/nq44DacLRNZ4fa1QQw
	 6LKGoQkEJKymvZ6NX/fViWeCwLO+JRRG2pG83Pt4bO87hLdGds3EblueFRFs752K9o
	 W73XwmmobWszA==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E935817E1428;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 302CF480030; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:19 +0100
Subject: [PATCH v3 10/12] phy: rockchip: usbdp: Cleanup DP lane selection
 function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-10-3e8fe89a35b5@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1832;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=KzWYZJRx7rQzuj7r18U7pjbg7yHx7AbFbAxlSXP9BPY=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAE3fAsaU6bZH0Ajn7fx4V4/KbQDPIw/z
 7gGNUMfKL3pr4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFABAAoJENju1/PI
 O/qayukP/09EhJbhE8xRGJs8u6Eha6NASzcgtWC6dwGU6hWb/jXgQeRzZ/KLkt+dX5DIGD+iRwk
 g8SXObY2xdjlR7G5fmXkH0Qw6iH9DcAXID4L7XXse5JJcplXtSmaTXoIhrFCnWZj+FVtyeRC7fs
 SBkMLwwUScpyRmrP1XCZYQIoNFXCVFWaDanFYaCi3d8vMF7CjbiXTUQE2pzun411ozdckvW3D+2
 Ta5zCxUghOnmerCvBlfoAad3j99bl/RB29Wkaj06h2s2INt0lAlgVRlZkHJjCzZNFrTbNTJoPL7
 FCIyM/z9GxAAXUzO7BBoa/1akUprT1T7BhhLf3IAiCGcS5gAabegNWqPUB9nMPi5i5RPKyRvh9k
 IW5c7ZGysGV9iRJllQa7iLOvO9QEIigpxMXj0gLlPD8x71v25oZ2P/dMhxm5+oS4UsXfZW9yIqm
 37mlcHvLgOgIsG7cVZXOrwI/gyG3onUdp/FQc1GIylanZ7ToqIfP6DeVIjt8ZRsPvftFOZPSatn
 8rjsHI+yonFzM4MmpclqDtzGTsiCXTXGPv5WsmlaoFd7AvZcd+pmtemDn9g2u7j4dyG9Rj20MwK
 vkobrRbHAC5Kog5aDoNg9fEmU+Hi/acvlyIJJw9XlxygBFs8fqmVBHGLzDi++FwIXSxX/ZWgtm/
 K/EpAkY7CETFNE+ZveI0mew==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275498-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4267F2886A0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Use FIELD_PREP_WM16() helpers to simplify the DP lane selection
logic.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 28 +++++++---------------------
 1 file changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 1bfc365e2b2c..beab20e4c512 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -550,30 +550,16 @@ static void rk_udphy_usb_bvalid_enable(struct rk_udphy *udphy, u8 enable)
 static void rk_udphy_dp_lane_select(struct rk_udphy *udphy)
 {
 	const struct rk_udphy_cfg *cfg = udphy->cfgs;
-	u32 value = 0;
-
-	switch (udphy->dp_lanes) {
-	case 4:
-		value |= 3 << udphy->dp_lane_sel[3] * 2;
-		value |= 2 << udphy->dp_lane_sel[2] * 2;
-		fallthrough;
-
-	case 2:
-		value |= 1 << udphy->dp_lane_sel[1] * 2;
-		fallthrough;
+	u32 value = FIELD_PREP_WM16(DP_LANE_SEL_ALL, 0);
+	int i;
 
-	case 1:
-		value |= 0 << udphy->dp_lane_sel[0] * 2;
-		break;
+	for (i = 0; i < udphy->dp_lanes; i++)
+		value |= field_prep(DP_LANE_SEL_N(udphy->dp_lane_sel[i]), i);
 
-	default:
-		break;
-	}
+	value |= FIELD_PREP_WM16(DP_AUX_DIN_SEL, udphy->dp_aux_din_sel);
+	value |= FIELD_PREP_WM16(DP_AUX_DOUT_SEL, udphy->dp_aux_dout_sel);
 
-	regmap_write(udphy->vogrf, cfg->vogrfcfg[udphy->id].dp_lane_reg,
-		     ((DP_AUX_DIN_SEL | DP_AUX_DOUT_SEL | DP_LANE_SEL_ALL) << 16) |
-		     FIELD_PREP(DP_AUX_DIN_SEL, udphy->dp_aux_din_sel) |
-		     FIELD_PREP(DP_AUX_DOUT_SEL, udphy->dp_aux_dout_sel) | value);
+	regmap_write(udphy->vogrf, cfg->vogrfcfg[udphy->id].dp_lane_reg, value);
 }
 
 static void rk_udphy_dp_lane_enable(struct rk_udphy *udphy, int dp_lanes)

-- 
2.51.0


