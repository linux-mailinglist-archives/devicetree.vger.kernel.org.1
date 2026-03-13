Return-Path: <devicetree+bounces-275496-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gG3jBlNRtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275496-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 724B428875E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 19:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E900317C4A0
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1B273CFF7B;
	Fri, 13 Mar 2026 17:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="XMqFpRcl"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6E3D6CB5;
	Fri, 13 Mar 2026 17:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424654; cv=none; b=LzmJ5Rf5DwTVcU80EKbI75h2jhOc7F1WX7w3oK4iqybQrEKi5P4abSQ1H1fYJ0YklRr3TkJVl+UeEB274laWnYuIhC4yf5lAQZ40M57xL8vmHL8l/VnsO+sN7dSKNuxL+IZGiXLWCZEWQjqKIZ2aCI35I+0Mh77ToF2mVRSemJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424654; c=relaxed/simple;
	bh=dUOuRcSdmkPT5OJpNxAO8iMCG2oRg7tjpzo/g+O1Qks=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jFIzncvSXF7wlwqcI9WwElHbOHv9rNDND5cVG4dzJA/zEVSGBiSPXQVKXIdi4UvWXTMKM3MNWp+JPvhzhcEDUaWMKJK64Jen2S5rXfdBDL/Cy5L9d34S+PBlRka2bmo1r/PfdGjqXseTKyQvlmxq48hyhTejF2ywYTbGPPIqrdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XMqFpRcl; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773424641;
	bh=dUOuRcSdmkPT5OJpNxAO8iMCG2oRg7tjpzo/g+O1Qks=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XMqFpRclhrcMeBZAcLeuRp8MHH2eceTJDReKnizd96ZOK3OfkY+aJaLUwhOcL2DPM
	 Wrns7aTiMAnTq02qF2IEfPfE6g1GgHxNQ3Vd0QZUxxB8nakoO/Q1OFEsGaPWz+TwfT
	 KOomxTThEPzMOKwrsN0+P5HNdN4tnFZFKxhFFHZtZtC7Ye76v6pjcAJ/oOXS3lNq/0
	 ZK3AwdTkXGWyjp6xW+zz5I8LvcgpKf1Kgy0TqB/MjtNx1y5qjr279rV3JuM1qux67w
	 QjmxlX2VmjuI1xe7pUbcrmIs4TmRvjrDXR2/Y/Z4L5M9iitaERejwAWNVlkzqDNWZu
	 X0rfAJCBbnvGw==
Received: from jupiter.universe (dyndsl-091-248-210-078.ewe-ip-backbone.de [91.248.210.78])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C347A17E1380;
	Fri, 13 Mar 2026 18:57:21 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2AFEB48002C; Fri, 13 Mar 2026 18:57:21 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 13 Mar 2026 18:57:15 +0100
Subject: [PATCH v3 06/12] phy: rockchip: usbdp: Add missing mode_change
 update
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260313-rockchip-usbdp-cleanup-v3-6-3e8fe89a35b5@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1949;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=dUOuRcSdmkPT5OJpNxAO8iMCG2oRg7tjpzo/g+O1Qks=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGm0UAAjzWVTyiaU43Tu76Ye4dA1ydrje8x7h
 N7BxGXby+c9AIkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJptFAAAAoJENju1/PI
 O/qaASIP/0oQWcQqq8bP2zhl5IIVUCMot9dWgfM01QJr3/wL195cHYgE899te2/Sag9kx/a+bYm
 T9FmAyGQ0X+hl5S5yMAprYE1PQGs1xftTBxXDgmBMeMWM53R3CcSGMGkHKg1C3JBPKB1felbZjv
 0DbuBHA9hfabEz4VNzT6iwauvrdgcXV/6iQ+rwL4SzXV6BgmDnzsQ8a3zNmtsUqXPcDr6CCriY5
 3aiPbWLQ0VOzA70fulqP3QYeBf0AHkqcFXzBjjEPoTeNG0i+O38FGwGUQk8TrRdvPfeqoNpjCd7
 L4kqVsDs1bEciR9AelkSibLVbOhkfVOKwico4pP17An2muq3wHdVUeCR+c23QVcT9//qiW4YBgj
 C9jsewvaqubqf3d+tf1GrlAFihqdHVJzxS1uygigMA4j1NcINU49dX4DfGw+M8aWlYO6iMRniIN
 lu/TMqMV+3rX0t5TBpieowhda3LBCIP5YBjCj2SjmGszpd31uThFf9vmwUcOG4uB1RUD5cEmF6T
 5ZhotQxYcCec0hJxScxGrV8Z5viNKuWSPYv9bDMxNy2V4aoHMmiPJgJEHQK/W91kstR0PjKamnJ
 4cgtkE288rc7aJ4PKuFRaVzvDrA3LNCCwv0+C153GxMtwsgM2jrhyEYdo8z79RO+lBZpgWO2R+G
 WNrueUkb2Md6FQNCDCxovZQ==
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
	TAGGED_FROM(0.00)[bounces-275496-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 724B428875E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

rk_udphy_set_typec_default_mapping() updates the available modes,
but does not set the mode_change as required. This results in
missing re-initialization and thus non-working DisplayPort.

Fix this issue by introducing a new helper to update the available
modes.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 97e53b933225..febc148a754e 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -619,6 +619,15 @@ static void rk_udphy_dp_hpd_event_trigger(struct rk_udphy *udphy, bool hpd)
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
@@ -649,7 +658,7 @@ static void rk_udphy_set_typec_default_mapping(struct rk_udphy *udphy)
 		gpiod_set_value_cansleep(udphy->sbu2_dc_gpio, 1);
 	}
 
-	udphy->mode = UDPHY_MODE_DP_USB;
+	rk_udphy_mode_set(udphy, UDPHY_MODE_DP_USB);
 }
 
 static int rk_udphy_orien_sw_set(struct typec_switch_dev *sw,
@@ -1385,10 +1394,7 @@ static int rk_udphy_typec_mux_set(struct typec_mux_dev *mux,
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
2.51.0


