Return-Path: <devicetree+bounces-323202-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9vu2MCPITmrbTwIAu9opvQ
	(envelope-from <devicetree+bounces-323202-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:58:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6ECC72ABC4
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 23:58:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=E6iiilLa;
	dmarc=pass (policy=none) header.from=collabora.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323202-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323202-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B5A03028B1F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 21:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90C9403AFF;
	Wed,  8 Jul 2026 21:58:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CDE3FB7E9;
	Wed,  8 Jul 2026 21:57:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783547882; cv=none; b=WflczQ75RXncp/L+EaPvS0JsQHZnyH/44+ISQMvjewaN9rW8gbcMWNoCcGxtrTCOsTnw4KPR6dpH1W+Yyw2BlevzFYO8nZ2vaI2Kuovuh5+OPQyAtoZmk+Wy8eDEdPc0ndxUSaVeA4gwNiHeGVRD6EnmfuaR+KNpujG12PeU9OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783547882; c=relaxed/simple;
	bh=nPxcOdRn21XnWu17709PZumF07cqdMqnnR09iLzgE0o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E07b+EcNelYBKyUOYLVCsvSqyQJkqSR3XM1AUYTkBztoODeMn3g/dJs1tvdWUbnHmzbjeh6ld8ZQH7a/kXB3yTVgbHMD/WGVWM2Rae8fZIbeWCqHQs2iXwy7cUclg4xmLIWAsjss3z8YKvAkSKmWRjtMeijx8H7xmsoLpLmoxtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=E6iiilLa; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783547875;
	bh=nPxcOdRn21XnWu17709PZumF07cqdMqnnR09iLzgE0o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=E6iiilLafc1Tovp/wo7G45aJ8ptMlKjgEseg+TWV89yhybItjvORSKurf2UaVSJsk
	 9wpU1v8q5GlWaXo670u+sc4WhOSEoBj94xY0tP2IGfc+xU31HP7L4BYubSYCMpEndQ
	 D7nQOU4pG1xQHfoZm+IKBqMzv+o0YPx8svKlrJnnv32yChoDyXWawXdu2+ezx+MGZJ
	 th9GaUXbSBopI2TdEy6UinCEKFRlneOBP/Am8nGpx1xDS8AIOF0LMz7aR55f0l6Y5B
	 VydErsXKpnUimjYQ0Pe5Jsn3bkSm9aszVsAZ3o36XS8H9moakaQIVYkUQprighc1iE
	 FEfkkEgvrc1fg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4DB6517E0D4A;
	Wed, 08 Jul 2026 23:57:55 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 09 Jul 2026 00:57:28 +0300
Subject: [PATCH v3 06/14] drm/rockchip: vop2: Fix VOP2_MAX_DCLK_RATE
 overflow on 32-bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-dw-hdmi-qp-yuv-v3-6-a4a982a9f2e7@collabora.com>
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
 linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.15.2
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:kernel@collabora.com,m:andyshrk@163.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[rock-chips.com,sntech.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se,bootlin.com];
	TAGGED_FROM(0.00)[bounces-323202-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
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
	FREEMAIL_CC(0.00)[collabora.com,163.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:from_mime,collabora.com:email,collabora.com:mid,collabora.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A6ECC72ABC4

VOP2_MAX_DCLK_RATE is defined as an unsigned long and is used scaled by
the color-depth ratio when computing the maximum DCLK the HDMI PHY PLL
can source.

On architectures where unsigned long is 32-bit, VOP2_MAX_DCLK_RATE * 8
is evaluated in 32-bit arithmetic and overflows: 4800000000 wraps to
505032704 before it is promoted to the 64-bit argument of
DIV_ROUND_CLOSEST_ULL().  At 8 bpc this collapses max_dclk from the
intended 600 MHz down to roughly 63 MHz.

As a result, low-resolution modes (e.g. 640x480 or 720x480, whose pixel
clocks are well under 30 MHz) still pass the clock <= max_dclk check and
are reparented to the HDMI PHY PLL as expected, but higher-resolution
modes such as 1280x720 (~74 MHz), 1920x1080 (~148 MHz) and above are
wrongly rejected and fall back to the system CRU as the DCLK source.

Define the constant as unsigned long long so that every expression using
it is evaluated in 64-bit arithmetic, independent of the width of
unsigned long.  This future-proofs any additional users of the macro as
well.

Fixes: b0362c45c401 ("drm/rockchip: vop2: Check bpc before switching DCLK source")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://lore.kernel.org/all/20260623203310.9F8C81F000E9@smtp.kernel.org/
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index e9f5d015b645..2cd04bedaa2c 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -102,7 +102,7 @@ enum vop2_afbc_format {
 	VOP2_AFBC_FMT_INVALID = -1,
 };
 
-#define VOP2_MAX_DCLK_RATE		600000000UL
+#define VOP2_MAX_DCLK_RATE		600000000ULL
 
 /*
  * bus-format types.

-- 
2.54.0


