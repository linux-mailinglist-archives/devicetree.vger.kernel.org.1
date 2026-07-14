Return-Path: <devicetree+bounces-326444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pUHzLsSNVmoO9AAAu9opvQ
	(envelope-from <devicetree+bounces-326444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:28:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F37D7583E5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:28:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=XFGgt2J5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326444-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326444-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BCD5F30473CF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40B7442BE8A;
	Tue, 14 Jul 2026 19:26:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AF9424D41;
	Tue, 14 Jul 2026 19:26:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784057181; cv=none; b=hLnq6hqvhzTJpz45p8kk3pliYMKnthAtjdpSxwNvDh5nIUyl5u3aQ+Bfs63MLXA7BmfX2E7z2XS+rZytFpVQmwpg+0VhUjb6/WS+fGfe30KzxY/1GguQbFWYtqygSHsOFNCjOmkz0vFFcuQbwW0XL2WLHrY3ly1j6kbPaauXFyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784057181; c=relaxed/simple;
	bh=M0nFL5Ec9a+nAx7KM5MPvRfwUmrPlBv56rRN9JqMFu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z/8H1waIngl37LdWG2eov2rD++3FByIsVg5+HL1V8ruL96cVCVmcExVUMRrqsKsI9NBWCR0ouc1Zd2Niq61spdjwnxZvL9DrWwYvPBtaVaDDfhfTZB+JZlNK4QwHdcps2V/7EAF68JDT/I5QqT1wYxzFASurZvOfpWRiJXzwJEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=XFGgt2J5; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784057169;
	bh=M0nFL5Ec9a+nAx7KM5MPvRfwUmrPlBv56rRN9JqMFu4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XFGgt2J5SohmbJ+w5BT9dbUSny6KnYsQt29Gd/Av4cOA730GfIo68n2BxUIL27/pH
	 YmuIZvMQFdNepjIpCsjOvq+2UzAUSZqWeDOT6fegQEQIuEZoEcTonHB5b3r6GDSttN
	 VZ6K0u5zWSRy4UtIoKyjrzF0tPM+JgAAJHwJfy8/hD6oYiAssgenSPvynAvu6k0xSg
	 FjmGgXv1tKZDygzcH9Ut/1J/kEJMCZFq+/s2n7S9Re5/1srpr5IM5W3o/s9rl62Omo
	 ROiJSFrKfP0X+4FrKQzZmbwrPMng1Qdp8MMdXvgg8rwC0SuLt49a8vyoa4htEv6yAY
	 12vooh8a3NkfA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BFA9617E1011;
	Tue, 14 Jul 2026 21:26:09 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E42AB480055; Tue, 14 Jul 2026 21:26:08 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 14 Jul 2026 21:26:16 +0200
Subject: [PATCH v13 15/35] phy: rockchip: usbdp: Cleanup DP lane selection
 function
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260714-rockchip-usbdp-cleanup-v13-15-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1889;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=M0nFL5Ec9a+nAx7KM5MPvRfwUmrPlBv56rRN9JqMFu4=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGpWjU+OG362uZYuD3Onxc6MOF/dJNcYX4B6+
 FYWrS6E8zQwiYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqVo1PAAoJENju1/PI
 O/qaecsQAIXdLNXpIqQ2BwwmHG2/KGRkgviDcR1/6iw+grzpz8LmHA/kQel0X+LVtc++Ll/LC6h
 NxRxlxa5pYVuVZaQ3zNPW5rxtvzdbsSJMA+7/AuLAl9UUcbsHepHP2dI4LbLMKoncw+B7fo2JAK
 v7fKRoyVLr8JCkj3HApl9bgdr8Lb099OaHGn5r36VYRk/IWJiaFhgCJciF8bEnX9pusB1MHJssZ
 XNE8R61LxLJBDaCJkELSCZKF88kbTPBWALBuOindpENq72OfH++kz2StY+h/MQV6EzDF3oGMfg7
 ZzMdDnBHA1NtvxMcx+cSY/SYOTVqSSNJL6FYdjWlRyumk22nWjayGAUQm3p34tkN08c6YbOoGYd
 ydWSGZkwwfb+YUum9U29bxWZSC/jR6PfE9xwXJc7GM+09s9KrIpWbnaOjX2KmNVwkxdfpNhFWO4
 xsRGmLSmmr/WPTMJkicGMBBMuHDFnVsNbXrHhTcL1fqQSfDc0EUQh9+6zKk0NIZw67ESeF/uLGb
 82xXfhIDHautC122V71E6oRKYEK4sFcrZ7PfD8b0wQY/IzK0swISNHAvNTZBPsGj807SmBLQn3K
 u1Xhas8PREuQfqgvPMeIA6ysibw/Cj6FcCiH8FTZFnrLJZGGCwUsYsF2o8iN/GLhhQESufnrLiB
 ouIaXDvZYUVdPxH6O2ccmZQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326444-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_RECIPIENTS(0.00)[m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:heiko@sntech.de,m:frank.wang@rock-chips.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Thinh.Nguyen@synopsys.com,m:gregkh@linuxfoundation.org,m:p.zabel@pengutronix.de,m:andy.yan@rock-chips.com,m:lumag@kernel.org,m:yubing.zhang@rock-chips.com,m:alchark@flipper.net,m:linux-phy@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@collabora.com,m:devicetree@vger.kernel.org,m:linux-usb@vger.kernel.org,m:sebastian.reichel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:from_mime,collabora.com:mid,collabora.com:email,collabora.com:dkim,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3F37D7583E5

Use FIELD_PREP_WM16() helpers to simplify the DP lane selection
logic.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 28 +++++++---------------------
 1 file changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 05593e98c16d..eda3f7a1e267 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -548,30 +548,16 @@ static void rk_udphy_usb_bvalid_enable(struct rk_udphy *udphy, u8 enable)
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
2.53.0


