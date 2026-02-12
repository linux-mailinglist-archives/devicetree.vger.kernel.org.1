Return-Path: <devicetree+bounces-265117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2PBUFHbyjWlw8wAAu9opvQ
	(envelope-from <devicetree+bounces-265117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:32:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CB612EF73
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 473113187DA5
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E348721B9E2;
	Thu, 12 Feb 2026 15:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="aVG3NlYR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2190D2C178D
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:28:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770910101; cv=none; b=DeyNcQQr/QmTUYfJNdeerUArIHlIwZX49kchOQqsO6rlSWiEYhW7FKILj+2qxrFDC9vYLh4wPxHinrHtUqdwIOuTkP+hQE0fZgPEFhpD8E2SuC1k67yS3szCj/LX9KrDgJz1/VU4Nl2X3EafmS7Ke7uOKfTPI+q79/XRdXwOjak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770910101; c=relaxed/simple;
	bh=lZwX1MQ89Zic7bb9qtCCxBRAn1AF48HZWuSNigfSQHE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NLiRoMZDiRofVY80UFaLV+lsir78oBFc/Dik2aqIFNh92/6mxM7vcemlZuPsZi7iLZZ/gvniFOk5FNLRFuvCu+1rIsoLEpL0eDnkEqvvp4tXtIZvvESuaXv1lGcx1T9nTKPCAdqe5lxsPKfmWWYi5F1Xy/0kUC6Z1+ZL8sNZVkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=aVG3NlYR; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id A20BA4E40CEE;
	Thu, 12 Feb 2026 15:28:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 78636606CE;
	Thu, 12 Feb 2026 15:28:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2378411971B05;
	Thu, 12 Feb 2026 16:28:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770910091; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=UYzg7H8r28NuknnaHMhGKeY25Sfx8KUmF5qRI7gC69A=;
	b=aVG3NlYRlV0UEBW+qN0P3U0+aqIMVCKcvcl/zWf7zV+6RUAhKpJujdxe88CtuvANV++96n
	O4fU4uQ85lmrNh72DjeDDMOezvMjpGr18OZ+cACRGiwirFwViEnULg/WSyNXxIxywEahM3
	uRe2WQLZRmkfP8C3v504Zz+1WlHRLvtKoHo/RSHpchq+pQl4icJBoZcXR8x+xg6qwpsVI3
	BhhcVprWBxyWNJclEBKU+tAyD61OanHsAD6x7//XhqfcjhQinUCivuuPGRA9Ea2XBfn9dk
	vuiFIrCOI23s0lXiBbyeJ/5h7rrw2S4FMVPiTCY2Rwx+UHDCEWnDcXuTD4zuSg==
From: "Kory Maincent (TI)" <kory.maincent@bootlin.com>
Date: Thu, 12 Feb 2026 16:26:18 +0100
Subject: [PATCH 4/5] ARM: multi_v7_defconfig: Enable ITE IT66121 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-feature_bbge-v1-4-29014a212f35@bootlin.com>
References: <20260212-feature_bbge-v1-0-29014a212f35@bootlin.com>
In-Reply-To: <20260212-feature_bbge-v1-0-29014a212f35@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265117-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[23];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E5CB612EF73
X-Rspamd-Action: no action

Enable the ITE IT66121 HDMI bridge driver to support HDMI output on
the BeagleBone Green with the Seeed Studio HDMI cape.

Signed-off-by: Kory Maincent (TI) <kory.maincent@bootlin.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 196b6872ca463..2c9587855f044 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -751,6 +751,7 @@ CONFIG_DRM_PANEL_SAMSUNG_S6E63J0X03=m
 CONFIG_DRM_PANEL_SAMSUNG_S6E8AA0=m
 CONFIG_DRM_PANEL_SHARP_LQ101R1SX01=m
 CONFIG_DRM_DISPLAY_CONNECTOR=m
+CONFIG_DRM_ITE_IT66121=m
 CONFIG_DRM_LVDS_CODEC=m
 CONFIG_DRM_NXP_PTN3460=m
 CONFIG_DRM_PARADE_PS8622=m

-- 
2.43.0


