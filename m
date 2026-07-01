Return-Path: <devicetree+bounces-318499-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4xgoDqAKRWqv5goAu9opvQ
	(envelope-from <devicetree+bounces-318499-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:40:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 816626ED73D
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:39:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=mail header.b=neMY8j8N;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318499-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318499-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53E17317A2B2
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9FDC64C901E;
	Wed,  1 Jul 2026 12:21:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A2A4C9002;
	Wed,  1 Jul 2026 12:21:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908480; cv=none; b=PuvqjGG9ij2KdeJpu21ZNsK2B3bTIUzxf6ozBwcl3HVbyv5QlccFbEn5o0L+VMrizERESme30cxVpbqkk2uYN4qt4KCXwFFXfHhvAL/vLlwRrQfTFqd2KdA8HZMiDopj36BqnPNx02A6QvcQthJlgzLnz875JUjbUFwFb+IiE54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908480; c=relaxed/simple;
	bh=zDQHO31YQESRyD5xPDjrqaWl4NdzeVv2+s5rGc4p7JU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pM+cT6PXkoGPkIKqCwH/AGbfMZMCVhpS/MLGPa1/6FsakzULR2HdHWNL8ZUxhqXnAA7LvmJjCxNkjHL+KdZf7vlG9atewIDPfXT7BPcpBbmbjpz2/GAR89d3k/gONugHKGMPG5icTz/Fw8bSa6HlwLUYbpT6VqXWxRPnT4PhZT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=neMY8j8N; arc=none smtp.client-ip=148.251.105.195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782908477;
	bh=zDQHO31YQESRyD5xPDjrqaWl4NdzeVv2+s5rGc4p7JU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=neMY8j8NzNnXKb+pceojq+utU1dk5ofiAfq5UidcKHaFDRTjA/Ppw2caW6YpeuufE
	 2tTtstzje1E0v95Ylp9iXUn8+SCKSuB4q6tN8zt5+MD2MjEvsfIq+vNUpaUj6d2aJC
	 mxyISD9SBGOLQ8w74kqtwSIvPKsYAiBse5pSiV7Hr+ihJdCyNYShL2zduS0ao7D4rc
	 nZws0dI0DMUqaHjSQJM8NyNfh4FNDz9aqF5XR8RrSfkmjwyKOmeU1QmkzjL4w3Xf9d
	 Yx9rHH+n0aRGoJ1/vfLDYB3omAJiYqdFPPjPC/09p9zIhu2g/oH0rz2evdXhpa5gQL
	 TQnIAekgR3GXw==
Received: from IcarusMOD.eternityproject.eu (unknown [100.64.1.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id BE01717E0CA2;
	Wed,  1 Jul 2026 14:21:16 +0200 (CEST)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: chunkuang.hu@kernel.org
Cc: p.zabel@pengutronix.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	justin.yeh@mediatek.com,
	jason-jh.lin@mediatek.com,
	kernel@collabora.com
Subject: [PATCH 13/42] drm/mediatek: mtk_hdmi_v2: Don't warn on RPM active during detach
Date: Wed,  1 Jul 2026 14:20:28 +0200
Message-ID: <20260701122057.19648-14-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
References: <20260701122057.19648-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,collabora.com,lists.freedesktop.org,lists.infradead.org,vger.kernel.org,mediatek.com];
	TAGGED_FROM(0.00)[bounces-318499-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:chunkuang.hu@kernel.org,m:p.zabel@pengutronix.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:linux-mediatek@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:justin.yeh@mediatek.com,m:jason-jh.lin@mediatek.com,m:kernel@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,collabora.com:dkim,collabora.com:email,collabora.com:mid,collabora.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 816626ED73D

The Runtime PM may be active during bridge .detach() and this
happens especially at boot, when probe deferrals in the display
controller driver happen.

Even though it looks safe to assume that RPM has to be inactive
at that time, this happens to be true only if the DDC was to be
handled internally (like before .hpd_{en,dis}able() existed).

At this point in time, this driver uses HPD callbacks, and for
HPD to actually work it is necessary to raise the RPM refcount
to wake up the entire HDMI IP: since it's not granted that the
HPD or other children of the HDMI node are disabled during the
display controller probe sequence, the WARN at bridge .detach()
time may trigger (and will do that when mediatek-drm defers),
unnecessarily bloating the kernel log, as the RPM refcount will
be decreased anyway when removing the driver.

This is why the WARN(pm_runtime_active()) check during detach
is simply a development stage leftover: remove it!

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi_v2.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
index 7bbf463056c9..0cc80e80ae26 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi_v2.c
@@ -995,8 +995,6 @@ static void mtk_hdmi_v2_bridge_detach(struct drm_bridge *bridge)
 {
 	struct mtk_hdmi *hdmi = hdmi_ctx_from_bridge(bridge);
 
-	WARN_ON(pm_runtime_active(hdmi->dev));
-
 	/* The controller is already powered off, just disable irq here */
 	disable_irq(hdmi->irq);
 }
-- 
2.54.0


