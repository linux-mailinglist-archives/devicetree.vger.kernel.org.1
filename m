Return-Path: <devicetree+bounces-308424-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EwxhHZ7zJmpmogIAu9opvQ
	(envelope-from <devicetree+bounces-308424-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:53:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E1657658F47
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 18:53:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308424-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308424-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AF336310BB5F
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 16:26:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F32983AC0CD;
	Mon,  8 Jun 2026 16:26:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp25.cstnet.cn [159.226.251.25])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A50293769EB;
	Mon,  8 Jun 2026 16:26:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780936000; cv=none; b=L+cRfL2UW4w7uFJgvCSzHKUh3Eyi0oaJySUxXVDXSC/3W/Jud55hVS4bF6XNd0A7OTmuKq8CMTGLbLN2ehJwi//eoDDKOWIk6gPgSNPFyiOkloXIQratBeH4yB7JCrWAZlp8/4cLTvtY3GaszSmtwVAHNzMInP804DJDyZRTwhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780936000; c=relaxed/simple;
	bh=YjxjMKDj/d7ZV7oEqfC7CsYLQ+VcLLjD3/e4F9BRriU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Yj/aMBkQnaNCWq3Phpn0poCL3zsd7xZ3FoAq4UhPBmJ24lPc9ZXcdXEboeceU8W66Ace7q55/3Klb0YC1h+8Els9P4kJ997gl7YocT3rLJZeowpHgRT2ThipVRsc8BeKrRby4UrSpHz4VHppDalyK2dw3+DG9cScdh3/HBBeoqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=iscas.ac.cn; spf=pass smtp.mailfrom=iscas.ac.cn; arc=none smtp.client-ip=159.226.251.25
Received: from edelgard.fodlan.icenowy.me (unknown [112.94.101.15])
	by APP-05 (Coremail) with SMTP id zQCowAAXbhEy7SZqx5m4Eg--.4904S4;
	Tue, 09 Jun 2026 00:26:30 +0800 (CST)
From: Icenowy Zheng <zhengxingda@iscas.ac.cn>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jesszhan0024@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengyu Luo <mitltlatltl@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Icenowy Zheng <zhengxingda@iscas.ac.cn>
Subject: [PATCH 3/3] drm/panel: himax-hx83121a: add backlight regulator support
Date: Tue,  9 Jun 2026 00:26:22 +0800
Message-ID: <20260608162622.403713-3-zhengxingda@iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
References: <20260608162622.403713-1-zhengxingda@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:zQCowAAXbhEy7SZqx5m4Eg--.4904S4
X-Coremail-Antispam: 1UD129KBjvJXoW7Cw4UWryxAw4fGFW3ury8Krg_yoW8tF15pF
	4vk343t3yrZr1Iqa9IyFnrW3Wa9w48tFyxJF97GanakwnFqF4YyrykJryYvFW7Xry8WF1a
	yrsFyFW3ua1Ik3DanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUmY14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jryl82xGYIkIc2
	x26xkF7I0E14v26ryj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
	Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UM2
	8EF7xvwVC2z280aVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r4UJwAS
	0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2
	IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0
	Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628vn2kIc2
	xKxwCY1x0262kKe7AKxVW8ZVWrXwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWU
	JVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67
	kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY
	6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42
	IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIev
	Ja73UjIFyTuYvjTRNiSHDUUUU
X-CM-SenderInfo: x2kh0wp0lqwv3d6l2u1dvotugofq/
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:mitltlatltl@gmail.com,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:zhengxingda@iscas.ac.cn,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	DMARC_NA(0.00)[iscas.ac.cn];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[zhengxingda@iscas.ac.cn,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch];
	TAGGED_FROM(0.00)[bounces-308424-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhengxingda@iscas.ac.cn,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.freedesktop.org,vger.kernel.org,iscas.ac.cn];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[iscas.ac.cn:email,iscas.ac.cn:mid,iscas.ac.cn:from_mime,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1657658F47

The backlight, when managed by the panel controller, could be powered by
an external regulator, and shutting down the regulator could power off
the backlight.

Add support for such a regulator. It's powered off when the backlight is
0 (either by setting brightness to 0 or setting bl_power), and powered
on when the backlight should be operating.

Signed-off-by: Icenowy Zheng <zhengxingda@iscas.ac.cn>
---
 drivers/gpu/drm/panel/panel-himax-hx83121a.c | 26 ++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx83121a.c b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
index 1a7e0125bced8..e31e2fba0a787 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx83121a.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx83121a.c
@@ -34,7 +34,9 @@ struct himax {
 	struct drm_dsc_config dsc;
 	struct gpio_desc *reset_gpio;
 	struct regulator_bulk_data *supplies;
+	struct regulator *bl_supply;
 	struct backlight_device *backlight;
+	bool backlight_enabled;
 };
 
 struct panel_desc {
@@ -195,7 +197,27 @@ static int himax_bl_update_status(struct backlight_device *bl)
 {
 	struct himax *ctx = bl_get_data(bl);
 	u16 brightness = backlight_get_brightness(bl);
+	int ret = 0;
+
+	if (!brightness) {
+		if (ctx->backlight_enabled)
+			ret = regulator_disable(ctx->bl_supply);
+		if (ret)
+			return ret;
+
+		ctx->backlight_enabled = false;
+
+		return 0;
+	}
+
 	/* TODO: brightness to raw map table */
+	if (!ctx->backlight_enabled)
+		ret = regulator_enable(ctx->bl_supply);
+	if (ret)
+		return ret;
+
+	ctx->backlight_enabled = true;
+
 	return mipi_dsi_dcs_set_display_brightness_large(to_primary_dsi(ctx),
 							 brightness);
 }
@@ -647,6 +669,10 @@ static int himax_probe(struct mipi_dsi_device *dsi)
 	ctx->panel.prepare_prev_first = true;
 
 	if (desc->has_dcs_backlight) {
+		ctx->bl_supply = devm_regulator_get_optional(dev, "bl");
+		if (IS_ERR(ctx->bl_supply))
+			return dev_err_probe(dev, PTR_ERR(ctx->bl_supply),
+					     "Failed to get backlight supply\n");
 		ctx->backlight = himax_create_backlight(ctx);
 		if (IS_ERR(ctx->backlight))
 			return dev_err_probe(dev, PTR_ERR(ctx->backlight),
-- 
2.52.0


