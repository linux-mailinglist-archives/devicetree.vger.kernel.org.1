Return-Path: <devicetree+bounces-265116-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qK6nJELyjWlw8wAAu9opvQ
	(envelope-from <devicetree+bounces-265116-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:31:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 025BD12EF47
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12AF63164BBB
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:28:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BCD426B76A;
	Thu, 12 Feb 2026 15:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oS49II96"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B9CA22D795;
	Thu, 12 Feb 2026 15:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770910093; cv=none; b=UtlUZ4NAEKWgThXBpAnvoTqLGCm7A7nm6X5KfmcONlno0Xwb4ruWvLMCLOVNU+oDGZqpDFX27vcj3aMOlfOJTaBdQYJP/qfugANu9Zv91UjXAGOUxfCTXh1u2NSfTirfI/CwTxT+R75Ghkb+/1Ag1+DP+91NaHcv8QwFNK7K2I8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770910093; c=relaxed/simple;
	bh=MyyRHojGRma43VjXeoLzWXv15/PR675SirS+LQARxfw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AeY6dqzVzqto7Woj1Okyx6JcM1wHF2PXpd0+9REqa1Y2O6kcVIRdvSo9Qylmw0u3ug3RShPJ24GZ/32XFOmFhaglnJz/8cJcNzxfQh9q3nEI790LTqxn+vVLnqt74zvaSrWnQ1rZJ1WbMvYmv/yRCI8V2Y/qD6wJi97O/xpyhOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=oS49II96; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 22E9F1A0E5D;
	Thu, 12 Feb 2026 15:28:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EE4DD606CA;
	Thu, 12 Feb 2026 15:28:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CE86811971B29;
	Thu, 12 Feb 2026 16:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770910067; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=xZgZh/Rl+E/fs1x1zIL5h9Jc88D7SbPt0exYEgqnWeE=;
	b=oS49II96l26TrTW/awl+bmSz1iSh5Kq1IJOgFVETiBGM548rLYNTnjFGr7Ghz1C4wEESo3
	/Z4Ys57xQAz6fRA4xUtser19qWpinCg3XguSpxyJkwmkb9MbP19Tgk89g4Mif8qxa/kfDX
	wHgAsITVUj8uKc9rzXBcMfBf/WTfQx1r6yTf+A1Oajmj0IUsuHZxtBXp96VTI6BLY9HOaa
	PQDu8TVxu1dOWSWDqLqBeOXq4Ej4H1b6OpO8vkONu3wPQdfdmwu7p/x1++D8E8wz1bb2Gc
	fLheCV/KfqUpsZQo4znSLXJzTMP5KBVEJJjZwgqGYslWSflA+WxMY2u5DtXK4g==
From: "Kory Maincent (TI)" <kory.maincent@bootlin.com>
Date: Thu, 12 Feb 2026 16:26:15 +0100
Subject: [PATCH 1/5] ARM: dts: ti: Enable overlays for all DTB files
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-feature_bbge-v1-1-29014a212f35@bootlin.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265116-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: 025BD12EF47
X-Rspamd-Action: no action

Allow overlays to be applied to any DTB. This adds around ~40% to the
total size of the DTB files on average.

Signed-off-by: Kory Maincent (TI) <kory.maincent@bootlin.com>
--

Enable overlays for all dtb similarly to what has been done for arch64
TI boards, but we could only enable overlays for Beagle Bone and
variant boards if required.
---
 arch/arm/boot/dts/ti/omap/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/Makefile b/arch/arm/boot/dts/ti/omap/Makefile
index 14e500846875e..52df04328aff2 100644
--- a/arch/arm/boot/dts/ti/omap/Makefile
+++ b/arch/arm/boot/dts/ti/omap/Makefile
@@ -175,3 +175,6 @@ dtb-$(CONFIG_SOC_TI81XX) += \
 	dm8148-t410.dtb \
 	dm8168-evm.dtb \
 	dra62x-j5eco-evm.dtb
+
+# Enable support for device-tree overlays
+DTC_FLAGS := -@

-- 
2.43.0


