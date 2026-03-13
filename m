Return-Path: <devicetree+bounces-275497-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPWkFFhRtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275497-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:03:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E32AD288765
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:03:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E29C9318AC44
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E293D6CD7;
	Fri, 13 Mar 2026 17:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="D5z3xK/p"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A133D6470;
	Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424656; cv=none; b=rI2hqwGeslX4z7mbeX51sjosuC404HhbfvzaSToKeJ336rHINGrhC3CXPbOi49VikMG+nTCWIlc6Xctpkx2zKuf4E6nn97O+vVMYmAoby14yyUMGN4HOFbpALVkqD4vttDfKKRozWO9ojwwcJ5Lu2nSuBKQnyvtOVNOsGUp/D+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424656; c=relaxed/simple;
	bh=+wZrIxHRM51w2Jk9G3m2sX8kdyjjY8ZoXrf0WYlfaG8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CJpk2Wlngark4ZE2gu0sE9FTh37E1yd34HdPytTCuf4N0gS+G3alzT/cfHjvtWIMMsQGqx2KYUKD8VnB3xaYt6qEHr4eNYQ/QsLu1aVAH0hsL6ndHFvuZeveIbbx/939bBpDSilllpsfUK2yzaWkm40xj3Ftfc2iJbQ5loNbaWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=D5z3xK/p; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424642;
	bh=+wZrIxHRM51w2Jk9G3m2sX8kdyjjY8ZoXrf0WYlfaG8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=D5z3xK/pAfTbFd4+RkCsJlfWX+IMag8LdBZo6y5h/fHXXHEjr3CVEqiSCoYfY+TDY
	 CbNQgEOozTv8phr4wOTyY0FCYM6QJYR/j31HMMBtboKeSVh3bIk4Ec+No6brKhRA7Q
	 hUsHqf+ctGXwb4leNSDIpHGxBlOkWPgpcm4wzyJDNRBUD7zYEVQnlX/oj0QSdO1SRf
	 p5HZ72iTk8D0xRZBPlPH9c1ezOdeSoXmQvbmXt7EJdLdPlRfYjtKvbi8R/K9jIplLG
	 CKYW1A6e6polsAjbPc1Xb0U51XzJ43gQOs/j5tsgYx/ZAa39qQdIggCBOWLFnFySbh
	 ChFYlaSJ2k3Bw==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DFECE17E13C1;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2D9CA48002E; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:17 +0100
Subject: [PATCH v3 08/12] phy: rockchip: usbdp: Rename DP lane functions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-8-3e8fe89a35b5@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1950;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=+wZrIxHRM51w2Jk9G3m2sX8kdyjjY8ZoXrf0WYlfaG8=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAAo2MGabitNLXg94LYI+JfHoCCYtVQli
 MKgSB2bIFcV9YkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaB98P/RhR47lI6UlH9usJmsHarZSMizviSCO9JmVtl6CYtc8rF/8/h9WiFNXnOsvjohSSw+S
 cHUzeJsIvo36VrhHLwzE7/XPW3RIkgiMaJnyqpy5by3RlhzlhUkaqd2yEDM4iX/4Q/PBCAIcYvX
 KW/ham0Cp9HG/MLI0a1+DZ5dB3JPcB8F1cQ7TJHdxhh98798CZteRK6R88LHcKtMUBhpZ0nA2/E
 xDPa35QHlv3D147TpGOBlQU8mSfKlaI01rN9BuIbFvEhErBMS3tzR4wm69m6KukY+mZmV40Dzu+
 ws+am/4UdJfkMcmmsFaeLGF0SN9n4Cwh+0lm08WVnkDdxrYfJK7YMKdYC13SIZhR+YkEYEzctwo
 ccdcPRjf06wL+iRM2K6aHE27cG461jAnfYtYcXLrj/ekkIobvkAjPiTzYMsBVXXd00GDBkitSOo
 8TvlyjXDzdPpVbuc3SdCSddopYs/FAkpRP9keE3okuz1h3h4xZriZmbehv80G7kOpX0ofJz+GxW
 bgvKyu8++BDNef5TRf3yc67esHBKBAMovTzzcJym/Lod+mofOby4ynnfd8q4zZUi2E1BxaQwau3
 TqSkxhvjeiSqb5yo3U+ls6rpyh62Vtfzz3i077R8u29CZqLkVTFd30Huex5uSq9k1L8/X940ziT
 0YMj4oPYPI2cBuFLOpAI3Fg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	TAGGED_FROM(0.00)[bounces-275497-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
X-Rspamd-Queue-Id: E32AD288765
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The common prefix for DisplayPort related functions is rk_udphy_dp_
(with a final _), so update the two DP lane functions to follow that
scheme.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index bf8394174294..6d7ca11b308e 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -547,7 +547,7 @@ static void rk_udphy_usb_bvalid_enable(struct rk_udphy *udphy, u8 enable)
  * ---------------------------------------------------------------------------
  */
 
-static void rk_udphy_dplane_select(struct rk_udphy *udphy)
+static void rk_udphy_dp_lane_select(struct rk_udphy *udphy)
 {
 	const struct rk_udphy_cfg *cfg = udphy->cfgs;
 	u32 value = 0;
@@ -576,7 +576,7 @@ static void rk_udphy_dplane_select(struct rk_udphy *udphy)
 		     FIELD_PREP(DP_AUX_DOUT_SEL, udphy->dp_aux_dout_sel) | value);
 }
 
-static void rk_udphy_dplane_enable(struct rk_udphy *udphy, int dp_lanes)
+static void rk_udphy_dp_lane_enable(struct rk_udphy *udphy, int dp_lanes)
 {
 	u32 val = 0;
 	int i;
@@ -1072,9 +1072,9 @@ static int rk_udphy_dp_phy_power_on(struct phy *phy)
 	if (ret)
 		goto unlock;
 
-	rk_udphy_dplane_enable(udphy, udphy->dp_lanes);
+	rk_udphy_dp_lane_enable(udphy, udphy->dp_lanes);
 
-	rk_udphy_dplane_select(udphy);
+	rk_udphy_dp_lane_select(udphy);
 
 unlock:
 	mutex_unlock(&udphy->mutex);
@@ -1092,7 +1092,7 @@ static int rk_udphy_dp_phy_power_off(struct phy *phy)
 	struct rk_udphy *udphy = phy_get_drvdata(phy);
 
 	mutex_lock(&udphy->mutex);
-	rk_udphy_dplane_enable(udphy, 0);
+	rk_udphy_dp_lane_enable(udphy, 0);
 	rk_udphy_power_off(udphy, UDPHY_MODE_DP);
 	mutex_unlock(&udphy->mutex);
 

-- 
2.51.0


