Return-Path: <devicetree+bounces-324574-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rEFeLkkiUWoM/wIAu9opvQ
	(envelope-from <devicetree+bounces-324574-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:48:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9CC73CB26
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:48:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=M+yyFOes;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324574-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324574-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D630C301F482
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B9F43FD05;
	Fri, 10 Jul 2026 16:46:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5AB43CEC0;
	Fri, 10 Jul 2026 16:46:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701990; cv=none; b=BvwPAS075esY//Cf8tTjULdRVJmCS/gkB8bqcTwy+C7TIxfo4R9BdMcXcv7wmBxoicMHQHKLtCNoBMEDAXwAtRLIo/qaZizuCFc2CrT9fppQNNqf2F11NqIjM4nzDX1oz6QQi70AFAMUAPxdGHnnOcSq+O2Qmw6TGxPkpv14quk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701990; c=relaxed/simple;
	bh=8x+V9jjStkv7ipsHaKsRN2SwbLF1FQFj7nt1kWMYqkE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MrCIiJoOrcrv706KXbtR0n2x3J0Mckx/qYacepyxRM7yaQ+Fnn+to2xugW/mNX+WaqBFmDl0H3OPWDc78qn9vdoL/s2ko9kp919QmEytzE548JbWwCTHJLMRVq09Fe8uirBbH192TaNZ2kbYOGRCcztpr0nPO/t8YI64KxOkivY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=M+yyFOes; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783701978;
	bh=8x+V9jjStkv7ipsHaKsRN2SwbLF1FQFj7nt1kWMYqkE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=M+yyFOesIJuTg5LN8lmyNa1UeukZ3bQcPmyuqQwEupm5dORucIrNpOGZOZFpXpTFE
	 GJrM/GbNMGttIOHxnzLgLZBKv7ruS1ToUw9peuugLZV+QmuwRTkHxK3vsvFqdVr2hQ
	 UhVC03wgICVS/Xc79oUufL7eq0A7beVrTVXjXRnSd8JKXk7w025c8l5We5O0tq2krw
	 Rp4/31KM2otUapY0mRTVWbtazpdau6K0S4pI4mkkCFht9zhaYmqv74VmQS4WwhJjJH
	 syUmv8R/tl2YJXAvVmjoyg/LQ+EqzVI41U8fCKg7tJlfW0bp/1W0gCncmDS7jct7ez
	 R7UR+6Y8QAaRw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9288517E0FAC;
	Fri, 10 Jul 2026 18:46:18 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id EA99C480047; Fri, 10 Jul 2026 18:46:17 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 10 Jul 2026 18:44:48 +0200
Subject: [PATCH v12 10/36] phy: rockchip: usbdp: Add missing mode_change
 update
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-rockchip-usbdp-cleanup-v12-10-8b41a9a9bef0@collabora.com>
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
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2006;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=8x+V9jjStkv7ipsHaKsRN2SwbLF1FQFj7nt1kWMYqkE=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpRIdjWfsU3j+/kpXmTSJa/LAr/ZCc0tRP+u
 g80fA7J+CsmnYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqUSHYAAoJENju1/PI
 O/qav5cQAIDXlutx8s8SmRu8Aj9GBw6EEei6Nb+mDvuEuL412p7h/4zXAStSQVbPVfxFrs1DVnV
 iVUutWzPt2vTwgiQJ09JmCMECN9/2JdsVWaw3tMRnGPHQ0dTJ/PRlXmmn5D2Qq34kbr85lW8TTd
 c7uLOKzlNOV8s+fPg0GA9odVc9PNrB05WHIGVv7aL8nqJZm80Zenqq6lGA1kBSAbtXlWGeHa1+H
 QeHHBRNlQt735WCm+u6OdbeJuMKocFuVCuuqzE8pVG58ZLykZLazMujShihJzsy0t0t4Y/yU0bz
 ioUR2NQsGxG05hHTl0rbJmi3yEHtrUuL+uBNED2dkNamVoTzcjlUDPVcWwNmoGUGYxVVAEkKHTl
 hiOpnIqCpunZeQT/ke2jFCGe1V5pLQFg8Jk1lRPU3HU/EGLlD6gfRgapCxKtZmskyEfXfRRtASb
 6gSAuwCFIuTMa5W0/XI6CHn61nxEu/FhWNeyRNiiFK4Jt85Hr82MRH2orIctywt+igK2Ehk3oYp
 y+Gq9dHybyZisXqdo40JyUbrfPoimwHpLZgsxV58PaZ0iDUjCVu0oJqxQSDJwX4kcEb19gyfmXa
 sjz/6Xq86ct9HTuSFXudR4cfKhq2h7tELjGiAMtCuS82MuGh+YzdA9C0PQH40i96b/LuLKDVNkq
 Gxw3JV16qGWsA9HGTpoIsiA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324574-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7A9CC73CB26

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
index 982315535caf..7540c897dde1 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -617,6 +617,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_udphy *udphy, bool hpd)
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
@@ -647,7 +656,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
 	}
 
-	udphy->mode = UDPHY_MODE_DP_USB;
+	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
 }
 
 static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
@@ -1361,10 +1370,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
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


