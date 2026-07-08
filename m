Return-Path: <devicetree+bounces-323198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YI0/IG3JTmp7UAIAu9opvQ
	(envelope-from <devicetree+bounces-323198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:04:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B34172AC44
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:04:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=ZFp075Gf;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323198-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323198-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAAE93194FE2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:58:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5226E400DFA;
	Wed,  8 Jul 2026 21:58:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD393FDBFE;
	Wed,  8 Jul 2026 21:57:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547881; cv=none; b=iD6jlv1p0927ubwfAeVYPrHEjHymMDzCa5+SpfhT6lLnrZg4chIqo9gvFyg8MWM4BIgsn6AyDG1+e1/cIHyk5iNxmZlGH7RPUWz7wwPN0D0iPlr60qbCgAn0+bo36GYQ85zOFL5gekvMBkS41uaoSHc6xavtBCmoCwvBVxxNWhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547881; c=relaxed/simple;
	bh=3nRFDQlKOP6ZG+eGUXeQmggd6GXikaD+VZE3rmeWFfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bZ0rh/APxg3RRZmKUmOATIe6Cnvoox3Nvs+vJjf8KbrwoszsK2pWiKQEWVlxL06KR3eH303k8BIpQIZddYaIadXwepWpSUwUXk6Nk5je7J5Fx0EgNsjYORZ/Z/Yq6e0skCMrqwyic1UVN2dbFy8r+nFiDZOn26oun9azjS5GmZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=ZFp075Gf; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783547877;
	bh=3nRFDQlKOP6ZG+eGUXeQmggd6GXikaD+VZE3rmeWFfA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=ZFp075GfS7phgXxgTOt/KV5/XuoLR545W73kH+cgoibmGNOvRv6qmBw4gNaf3FdEa
	 20V1mH5Pi/VyCcOyAvFE7IWtoScFZAbKFJTB/qpdrb65qQQmJkIT/fOkc7NKM3vGjJ
	 zdEp8zxMhmnp17ByLHijoHvmf3j3aebiFmCGQd1EFe3a/0rhxFXUBrfaK1DYhnYmZ5
	 O7ekxYuv7BDvM6gVIvC1zu0qyQUUNiD2pv0Lu0k4GmAqHwuVNvU0P9FhMWfpDe61yR
	 Xd3wNru8CzeeCCM3GfDqd2hOQS9c/a6Sb4DYYbl3IVcAcRHkQ9nMzYqNwsaGFFQbat
	 1E68ETTxM1Exw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 72D1417E0E04;
	Wed, 08 Jul 2026 23:57:57 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 09 Jul 2026 00:57:31 +0300
Subject: [PATCH v3 09/14] drm/rockchip: vop2: Consolidate HDMI PHY PLL
 clock parent switch
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-dw-hdmi-qp-yuv-v3-9-a4a982a9f2e7@collabora.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	TAGGED_FROM(0.00)[bounces-323198-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B34172AC44

The DCLK parent switch logic for HDMI0 and HDMI1 PHY PLLs was
duplicated, with each endpoint repeating the same clk_get_parent(),
clk_set_parent() and error handling calls.

Refactor this by first selecting the appropriate PHY PLL clock handle
based on the active HDMI endpoint, then performing the parent switch in
a single shared code path.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 36 +++++++++++-----------------
 1 file changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index aa81b3b01fbd..65902db7f7c0 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1964,42 +1964,34 @@ static void vop2_crtc_atomic_enable(struct drm_crtc *crtc,
 		unsigned int bpc = vcstate->output_mode == ROCKCHIP_OUT_MODE_YUV422 ?
 					8 : (vcstate->output_bpc ?: 8);
 		unsigned long max_dclk = DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * 8, bpc);
+		struct clk *pll_hdmiphy = NULL;
 
 		if (clock <= max_dclk) {
 			drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mask) {
 				struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
 
 				if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI0) {
-					if (!vop2->pll_hdmiphy0)
-						break;
-
-					if (!vp->dclk_src)
-						vp->dclk_src = clk_get_parent(vp->dclk);
-
-					ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy0);
-					if (ret < 0)
-						drm_warn(vop2->drm,
-							 "Could not switch to HDMI0 PHY PLL: %d\n",
-							 ret);
+					pll_hdmiphy = vop2->pll_hdmiphy0;
 					break;
 				}
 
 				if (rkencoder->crtc_endpoint_id == ROCKCHIP_VOP2_EP_HDMI1) {
-					if (!vop2->pll_hdmiphy1)
-						break;
-
-					if (!vp->dclk_src)
-						vp->dclk_src = clk_get_parent(vp->dclk);
-
-					ret = clk_set_parent(vp->dclk, vop2->pll_hdmiphy1);
-					if (ret < 0)
-						drm_warn(vop2->drm,
-							 "Could not switch to HDMI1 PHY PLL: %d\n",
-							 ret);
+					pll_hdmiphy = vop2->pll_hdmiphy1;
 					break;
 				}
 			}
 		}
+
+		if (pll_hdmiphy) {
+			if (!vp->dclk_src)
+				vp->dclk_src = clk_get_parent(vp->dclk);
+
+			ret = clk_set_parent(vp->dclk, pll_hdmiphy);
+			if (ret < 0)
+				drm_warn(vop2->drm,
+					 "Failed to switch DCLK to HDMI PHY PLL: %d\n",
+					 ret);
+		}
 	}
 
 	clk_set_rate(vp->dclk, clock);

-- 
2.54.0


