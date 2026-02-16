Return-Path: <devicetree+bounces-265892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGG3CWRMk2mi3AEAu9opvQ
	(envelope-from <devicetree+bounces-265892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:57:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C9B14682A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 17:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 03050302FE9A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 16:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 316092E6CC8;
	Mon, 16 Feb 2026 16:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="qmr6d71r"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D3E2D94AF;
	Mon, 16 Feb 2026 16:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771260984; cv=none; b=TD4infZMPmuzvfc//Vt5oewj5MSgJ8S54GhVOgWNY0X+coESKPeb83KRs4y8Y8gTcZQYYKse1RMzilYQT4qV88Si5OBLiCLOwNZ9sbA2+Gds4yc/kx7Wy9tIOqfu5Qz0ByMTUDkwhW46ioU1tgfzB8Pb0xbeWa9/51kK2lVJN/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771260984; c=relaxed/simple;
	bh=KvDcxgQOGxXNPiXQXr4H/3NYQ86RCeNfnAV1y0IUW00=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C4G55DgGT3Rf+XMe7Vv2M6gLg05+Eaqk+u/4r8q9w/mS/V/P5RK5KMv2m6UZxdvFbnVAQq6qNZ3M0gLAeXkcVAbAahEOHLSaCVLdq1iIB5qsCnnqmYkIyRGyhZ5MJbAANvFpvUjjYzzJDTg4j4LuxmecvKv6J9rK6UtJErZ12uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=qmr6d71r; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id B2AFA1A0FEC;
	Mon, 16 Feb 2026 16:56:21 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 88F53606CF;
	Mon, 16 Feb 2026 16:56:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A9DD81036801F;
	Mon, 16 Feb 2026 17:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1771260980; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=4shwJoUO9d8ENJW9So15wjmkKwrv/QiVKV353yfZbgw=;
	b=qmr6d71rz7cTuX+y2vRmcDRxpftFaq1BgbIP7ynUjJpWj98UbxpxEamY6BGizYqvM3ZNPZ
	Wxxta5Ux9iT6zSMTMMSUlMUHDSROL7/5Ab2PCpIF08SGMoAOGdi/5j7O+V6QCv9wzvs4GH
	gfWX9ddi69G+6Y1QKeFTUcVckY7Bw4HdWBwl8OknHJ0F8dg9h7dXdZBqMdo8+2IPdbnAN4
	LqdRd67fTvZ1W1358c+szPqM7F6Ya17rlzE1IV/GVtqQk9miV6YPJoqELnGN4hyxmEpU/g
	zPxtw/aOj8UxSI4IdFcAaZjjVxlNtHbO36zPJBKpZlDwyYhyDgwTfNZL9/PYew==
From: "Kory Maincent (TI)" <kory.maincent@bootlin.com>
Date: Mon, 16 Feb 2026 17:55:53 +0100
Subject: [PATCH v2 2/3] ARM: multi_v7_defconfig: omap2plus_defconfig:
 Enable ITE IT66121 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-feature_bbge-v2-2-22805cfdbf62@bootlin.com>
References: <20260216-feature_bbge-v2-0-22805cfdbf62@bootlin.com>
In-Reply-To: <20260216-feature_bbge-v2-0-22805cfdbf62@bootlin.com>
To: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-omap@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 dri-devel@lists.freedesktop.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Bajjuri Praneeth <praneeth@ti.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 "Kory Maincent (TI)" <kory.maincent@bootlin.com>
X-Mailer: b4 0.14-dev-d4707
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265892-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: B2C9B14682A
X-Rspamd-Action: no action

Enable the ITE IT66121 HDMI bridge driver to support HDMI output on
the BeagleBone Green with the Seeed Studio HDMI cape.

Enable CONFIG_DRM_TILCDC as a module on multi_v7_defconfig to provide
display support for TI AM335x-based SoCs in this kernel configuration.

Signed-off-by: Kory Maincent (TI) <kory.maincent@bootlin.com>
---

Changes in v2:
- Squash defconfig changes in one patch.
---
 arch/arm/configs/multi_v7_defconfig  | 2 ++
 arch/arm/configs/omap2plus_defconfig | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 7f1fa9dd88c92..2c9587855f044 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -735,6 +735,7 @@ CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_SUN4I=m
 CONFIG_DRM_OMAP=m
 CONFIG_OMAP5_DSS_HDMI=y
+CONFIG_DRM_TILCDC=m
 CONFIG_DRM_MSM=m
 CONFIG_DRM_FSL_DCU=m
 CONFIG_DRM_TEGRA=y
@@ -750,6 +751,7 @@ CONFIG_DRM_PANEL_SAMSUNG_S6E63J0X03=m
 CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0=m
 CONFIG_DRM_PANEL_SHARP_LQ101R1SX01=m
 CONFIG_DRM_DISPLAY_CONNECTOR=m
+CONFIG_DRM_ITE_IT66121=m
 CONFIG_DRM_LVDS_CODEC=m
 CONFIG_DRM_NXP_PTN3460=m
 CONFIG_DRM_PARADE_PS8622=m
diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
index 4e53c331cd841..cdf69ac2e5126 100644
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -486,6 +486,7 @@ CONFIG_VIDEO_OMAP3=m
 CONFIG_VIDEO_MT9P031=m
 CONFIG_VIDEO_TVP5150=m
 CONFIG_DRM=m
+CONFIG_DRM_ITE_IT66121=m
 CONFIG_DRM_OMAP=m
 CONFIG_OMAP5_DSS_HDMI=y
 CONFIG_OMAP2_DSS_SDI=y

-- 
2.43.0


