Return-Path: <devicetree+bounces-323203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JgP8IZDJTmqHUAIAu9opvQ
	(envelope-from <devicetree+bounces-323203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:05:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0D572AC50
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:05:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b="EY3F/0Sf";
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323203-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323203-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4C8830C4EB7
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E0A403E8D;
	Wed,  8 Jul 2026 21:58:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEA93FFAD3;
	Wed,  8 Jul 2026 21:58:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547882; cv=none; b=m5abDZ5rODyG4FyEPUwH+GeFmGhWQq82Tc8FQd+eEvF9YhUvDRcMMqtwdqvJVbDcOEddIY5Pm4HEjNors40nUmOiDfEak2q4RPtOOuWVfayK9+e5ULJwceeA7t9m3EugSdSK2Ix5MlmMx2nX+fOPtGHqB8S8eJVRAbeEZwhE+fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547882; c=relaxed/simple;
	bh=G1dUqD72q2FY05PHYY6caECaecWtFD0swmYnsw623Ug=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XniXEvZF9AN3JvOOBeBcpukqdoBeWMe0U34Zuw4SjbqDdd4mxdZMs7V7W3p/2371KaXyyF43RqsLhsmh1orFhIJ7Yq+4kxZeZTo8xtpcHaRbOBhtiZJUS9FUY9jKOyRkBH+zk9FHYmBH5BwXnF6xz1KocmliwYa9GiiyyEgCwjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=EY3F/0Sf; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783547879;
	bh=G1dUqD72q2FY05PHYY6caECaecWtFD0swmYnsw623Ug=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EY3F/0SffBmY/EUdDkAIJ/hCRrd6EvOC9GyRaueK+/hKk6Zxoz5kD8Fnr3usXtnfa
	 0C3sEITJwYpqyuSng2gn2UjVVpFQvJysqOJ8sLr+DimTaK6meeT/XZPegRwah/jQEO
	 /mx2iG2M+XmbcA6hyekgADiY0X6HoVdMQwwftWAoZKvWpWOue8xujkFdYGeLHbKmEd
	 B0mTSyvjCsPXy27NamfXbjXU3eU0cxhuDOgGhN3mUyCvzVXHtUvxFOLqzExElugJ3A
	 s+npcXrBSOmmc5ROLEmZPXBp3uMTEi1+Lz1Dvg7IQNLTX7Tyk8/fE2i7F7Ny3uWBr3
	 jtO5saTrGlGLg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8946117E0D33;
	Wed, 08 Jul 2026 23:57:59 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 09 Jul 2026 00:57:34 +0300
Subject: [PATCH v3 12/14] drm/rockchip: dw_hdmi_qp: Support 10-bit YUV422
 output format
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-dw-hdmi-qp-yuv-v3-12-a4a982a9f2e7@collabora.com>
References: <20260709-dw-hdmi-qp-yuv-v3-0-a4a982a9f2e7@collabora.com>
In-Reply-To: <20260709-dw-hdmi-qp-yuv-v3-0-a4a982a9f2e7@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	TAGGED_FROM(0.00)[bounces-323203-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[26];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cristian.ciocaltea@collabora.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0C0D572AC50

Rockchip DW HDMI QP encoder supports YUV 4:2:2 output through
ROCKCHIP_OUT_MODE_YUV422, but was limited to 8-bit depth via
MEDIA_BUS_FMT_UYVY8_1X16.  Add support for its 10-bit counterpart
MEDIA_BUS_FMT_UYVY10_1X20, which carries two 10-bit components per clock
cycle on a 20-bit wide bus.

YUV 4:2:2 always transmits two 12-bit components per pixel, regardless
of the color depth.  From a clock-rate perspective this is equivalent to
three 8-bit RGB components, so configure the HDMI PHY with 8 bpc when
YUV 4:2:2 is in use to keep its output clock aligned with the TMDS
character rate.  Otherwise the PHY PLL output would be scaled by bpc/8
for higher color depths, producing a clock rate that confuses downstream
consumers such as the VOP2 display controller.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
index 9c4cf68d79d5..78473f9a0fce 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
@@ -215,6 +215,7 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 		s->output_mode = ROCKCHIP_OUT_MODE_AAAA;
 		break;
 	case MEDIA_BUS_FMT_UYVY8_1X16:
+	case MEDIA_BUS_FMT_UYVY10_1X20:
 		s->output_mode = ROCKCHIP_OUT_MODE_YUV422;
 		break;
 	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
@@ -226,7 +227,14 @@ dw_hdmi_qp_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 	}
 
 	phy_cfg.hdmi.tmds_char_rate = conn_state->hdmi.tmds_char_rate;
-	phy_cfg.hdmi.bpc = conn_state->hdmi.output_bpc;
+	/*
+	 * YUV422 always transmits two 12-bit components per clock cycle,
+	 * regardless of the color depth, which from a rate perspective is
+	 * equivalent to three 8-bit RGB components.  Force 8 bpc here to
+	 * keep the PHY PLL output aligned with the TMDS character rate.
+	 */
+	phy_cfg.hdmi.bpc = (s->output_mode == ROCKCHIP_OUT_MODE_YUV422 ?
+				8 : conn_state->hdmi.output_bpc);
 
 	ret = phy_configure(hdmi->phy, &phy_cfg);
 	if (!ret) {

-- 
2.54.0


