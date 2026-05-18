Return-Path: <devicetree+bounces-299182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN03FivFCmqa7wQAu9opvQ
	(envelope-from <devicetree+bounces-299182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 09:52:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D05568236
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 09:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 866EF302BCC7
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 07:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55F913C6A2B;
	Mon, 18 May 2026 07:48:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437103815E9
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 07:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779090481; cv=none; b=G+Vlbx2vru77oz5AHum1Pq+B5ABwL5j4aDlK7cwiSmXqemfbnPbwNA5aWxueuXRL6nCBOtEIUaVgQDZSylnKiNRSRkIQx1JVY84yVkaQmTb1QqmEuRSn/C5F66qvpUpObcaaipNHsQPA3qg2GNoVYt42cqPvPInnoG5Kv/rTXbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779090481; c=relaxed/simple;
	bh=PXlPK/z/WiNO414FMLo6oHl5jn6KF92WVH5j+46oWDo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tLIl9kV5HnxCZ2QN6demW5BTusqgj0ksTjSVGWwyc2gvajpfLTheha3LQWNP4Yc+zLpMWiLmm1uDczQeWMg1oiX+QWCWI0w1CFYhjuZcODrZ8YmtC3HsKqSZERsDRR0aKXpdru9sjbcKcNG10OHippeds9nQ5yoJLBfPLG4vUJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1wOshb-0001Wi-91; Mon, 18 May 2026 09:47:51 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 May 2026 09:47:46 +0200
Subject: [PATCH v3 2/2] drm/panel: simple: add NEC NL6448BC33-70C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-v7-1-topic-panel-simple-nl6448bc33-v3-2-21ea14a6e835@pengutronix.de>
References: <20260518-v7-1-topic-panel-simple-nl6448bc33-v3-0-21ea14a6e835@pengutronix.de>
In-Reply-To: <20260518-v7-1-topic-panel-simple-nl6448bc33-v3-0-21ea14a6e835@pengutronix.de>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1734;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=PXlPK/z/WiNO414FMLo6oHl5jn6KF92WVH5j+46oWDo=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQxbXERXmbwqP0niuTuc7rnh1wVtfB7YrD5xNj345teanT
 ZdCt+zujlIWBjEuBlkxRRaVhRV8oh4fPCOniXDBzGFlAhnCwMUpABOZFsbIcMzbf/aEK46/ygML
 PhdKzWa9k9pbbTR5ltmMwPKuOw3hlgz/DL5lC0XJpk/fmb87OE4/6nH97gLOljPm1ooxT3+J/u9
 gAgA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: C0D05568236
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,ravnborg.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299182-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:email,pengutronix.de:mid]
X-Rspamd-Action: no action

Add NEC NL6448BC33-70C 10.4" 640x480 LCD module support.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/gpu/drm/panel/panel-simple.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index 236bd56208ccf..0bf50b1ed69e6 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -3659,6 +3659,32 @@ static const struct panel_desc nec_nl4827hc19_05b = {
 	.bus_flags = DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE,
 };
 
+static const struct drm_display_mode nec_nl6448bc33_70c_mode = {
+	.clock = 25175,
+	.hdisplay = 640,
+	.hsync_start = 640 + 16,
+	.hsync_end = 640 + 16 + 48,
+	.htotal = 640 + 16 + 48 + 96,
+	.vdisplay = 480,
+	.vsync_start = 480 + 2,
+	.vsync_end = 480 + 2 + 31,
+	.vtotal = 480 + 2 + 31 + 31,
+	.flags = DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_PHSYNC,
+};
+
+static const struct panel_desc nec_nl6448bc33_70c = {
+	.modes = &nec_nl6448bc33_70c_mode,
+	.num_modes = 1,
+	.bpc = 6,
+	.size = {
+		.width = 211,
+		.height = 158,
+	},
+	.bus_format = MEDIA_BUS_FMT_RGB666_1X7X3_SPWG,
+	.bus_flags = DRM_BUS_FLAG_DE_HIGH,
+	.connector_type = DRM_MODE_CONNECTOR_LVDS,
+};
+
 static const struct drm_display_mode netron_dy_e231732_mode = {
 	.clock = 66000,
 	.hdisplay = 1024,
@@ -5520,6 +5546,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "nec,nl4827hc19-05b",
 		.data = &nec_nl4827hc19_05b,
+	}, {
+		.compatible = "nec,nl6448bc33-70c",
+		.data = &nec_nl6448bc33_70c,
 	}, {
 		.compatible = "netron-dy,e231732",
 		.data = &netron_dy_e231732,

-- 
2.53.0


