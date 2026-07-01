Return-Path: <devicetree+bounces-318925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dFjnM32kRWo+DQsAu9opvQ
	(envelope-from <devicetree+bounces-318925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:36:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 727ED6F2561
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 01:36:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=fJmVD3i0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318925-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318925-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7075230461E3
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 23:36:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A034229B8;
	Wed,  1 Jul 2026 23:35:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98136420E79;
	Wed,  1 Jul 2026 23:35:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782948955; cv=none; b=GZrrfin7adc1y+vh9aZGScMEo0Cd0GdwvGePVFVMXLvRbthHncrllXL/LA3B5oySYN6QoeJ+tpUF2QkmuTSWYsTCOKBB4PqLPbJ24V3tqNlnIM/rrErm7aNvb1s1RpcD29xxStjpANtCQqdPiTxUDB4yOBGi8PDTgwVsOy4OosM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782948955; c=relaxed/simple;
	bh=XnItvzgC6BhyoIOgvg5cwmULp2Ra4K6S2OcJ7rS//do=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QumVxE9h4JmnNdMMPuWfHAOabKLE1h6x4Od1qMTcM3ssyOosqcc5vyzp7i1462l+AhfbWb4lPIaw9ZYHhGgqzyXrkjVUNYqlR13dv5MVoUZ65hzwmxGW48peSA3+ERk9j4/sgHT6LqASci2wkHJJID0RKk0IahsfrovDkMgL1DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=fJmVD3i0; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782948949;
	bh=XnItvzgC6BhyoIOgvg5cwmULp2Ra4K6S2OcJ7rS//do=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fJmVD3i0rODkltHYcFrShd+r9punSQnFCf53+lFVN/dXJI97Z8JYDZzk2O8MBx0js
	 gE4Od/i/lFzrhOo82VUoRC6oBZx1+4Jw3y4M7euGzYEZhmjEun0ksqRmYRqVN2HBcJ
	 ZnRhSse5iwyaGyTVpJDggMdv3ZKH7+XUTJ3NRI4swXLqc8a1aH9e4UOcZJ6ni/OzRB
	 bv0PSmMGhNC+lriRZ6ZctcksofGc6rBOeSAcQ3Dzl9i+hYoR97lsLeSZRci6T1p8KN
	 il7xRlDllM26f5w6fb0EGWlWEunYlD0IKuv38KwG8hE8GMtZI3tqUqeKnXIw/Sp+BI
	 nLR1cr1F3nmBQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 754BA17E15D0;
	Thu,  2 Jul 2026 01:35:49 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id BCAEF480048; Thu, 02 Jul 2026 01:35:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 02 Jul 2026 01:35:49 +0200
Subject: [PATCH v9 11/38] phy: rockchip: usbdp: Add missing mode_change
 update
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260702-rockchip-usbdp-cleanup-v9-11-e31efbb62d2e@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2006;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=XnItvzgC6BhyoIOgvg5cwmULp2Ra4K6S2OcJ7rS//do=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpFpFNVQMY7McYSaD9BPup5APlcc9Rr7hN3s
 UbieS163DieaYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqRaRTAAoJENju1/PI
 O/qaTuAP/Ri1ot5hObPtouOKAuUcQUkTAwGuComT3sKP70enDWwkDxE2PZj2Evc++/YW3bsrgwE
 2qP8KfNhxBu8BpAz9ltDyq5kznQLqYy3KYka0O4+uYjhG0X8FCOmkFynR7BQogpNCB6mXX32H4C
 F9HTaJJvHW1lBj6vzdIyJcDl5CjTxQAyLX/zKoBv++HQ+auziEyxnmKNHb2BJHMShkYiznDveQr
 CnppoBuVF0hJkCFKNU4/qN37mc3qLdlaTJcz5M9SLmODYW2Lrdt2ZeJix4QocsxUDNNkc9NZQsM
 k0EJKP8u8isatd3qHh7IHaZDVu8S3zfRAQuUFSn/sKtTZBgM6Zkxd+bP0ZjVofmDJAKS5i80afv
 mQeMRw9kH1ra/pUWtnTsQ7u8FDiAErr1m5VDrQhxauV6WtKfWukLpai8CXy1qeMiKWw9Gm6X2WB
 l31DmPN4AMRK3KmFAMqpufKO8kcbwYbXiPsGFLeswpo8C2gl1Gv8hjZUx3ATRxAeB5i5gq2hmGp
 OJW3YByKu1NyRygByZ2v6DENBd+OpyTJJhgXVZhZ1CO1w75dypPMSSHbh6zRKNpjvbjn642ZQle
 vcRrthcDFIiPpp5gzvxqjabpirqG1rM+3FW7OsF21+bshEs8ROMEr8xYBujc4P036XuQhGvLrkC
 Bp0RZqBjP1iA3LYZO/VAh5g==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	TAGGED_FROM(0.00)[bounces-318925-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@gmail.com,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[rock-chips.com,kernel.org,gmail.com,lists.infradead.org,vger.kernel.org,collabora.com];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 727ED6F2561

rk_udphy_set_typec_default_mapping() updates the available modes,
but does not set the mode_change as required. This results in
missing re-initialization and thus non-working DisplayPort.

Fix this issue by introducing a new helper to update the available
modes.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 8202abab4274..6333b5cc7151 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -622,6 +622,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_udphy *udphy, bool hpd)
 	rk_udphy_grfreg_write(udphy->vogrf, &cfg->vogrfcfg[udphy->id].hpd_trigger, hpd);
 }
 
+static void rk_udphy_mode_set(struct rk_udphy *udphy, u8 mode)
+{
+	if (udphy->mode == mode)
+		return;
+
+	udphy->mode_change = true;
+	udphy->mode = mode;
+}
+
 static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 {
 	if (udphy->flip) {
@@ -652,7 +661,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
 	}
 
-	udphy->mode = UDPHY_MODE_DP_USB;
+	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
 }
 
 static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
@@ -1396,10 +1405,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
 			usleep_range(750, 800);
 			rk_udphy_dp_hpd_event_trigger(udphy, true);
 		} else if (data->status & DP_STATUS_HPD_STATE) {
-			if (udphy->mode != mode) {
-				udphy->mode = mode;
-				udphy->mode_change = true;
-			}
+			rk_udphy_mode_set(udphy, mode);
 			rk_udphy_dp_hpd_event_trigger(udphy, true);
 		} else {
 			rk_udphy_dp_hpd_event_trigger(udphy, false);

-- 
2.53.0


