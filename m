Return-Path: <devicetree+bounces-265119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIoJH3zyjWlw8wAAu9opvQ
	(envelope-from <devicetree+bounces-265119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:32:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1385A12EF83
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4853B31903B2
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:28:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AF8423C4FF;
	Thu, 12 Feb 2026 15:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="v9+M6EXS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E66F201113
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 15:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770910102; cv=none; b=spLGnNqmZI3sD7RZI1d3TqwwiweKjb7MMCz2xF+V9qavNoqGv+XK7YJwmRDbn8N6vFsLLaP5s7KFwRUmtvbuRpSB++LKNXtxa19Uwngn5MOyNwBqNGrdsFafWWvtoLmZhU3LIEKG07NdrKMuZqsjtaUUvCVIPVJPeUjiE4eEdhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770910102; c=relaxed/simple;
	bh=kAg7GnuZyI5ZzTuZI204r7cRM7u3uXOT4+LAvG87HQA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h5WdAFKWrtioeE4snsfGMM/UrkLxiajANbLVSprxXihUxbOxX2uI6oMNzhdVv9da3m5FfFpELe/c5IEFGXI1mnd8mAl8QwrzPQzqm97ntzb1OyJ1M+rLUHrlZy2/mD8CVQo4jOaphqkOMw6iqz8HzxJLXKCIhqib9ZaJd7fJsHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=v9+M6EXS; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (unknown [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 53BA7C23DA8;
	Thu, 12 Feb 2026 15:28:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1799D606CA;
	Thu, 12 Feb 2026 15:28:07 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3788111971B05;
	Thu, 12 Feb 2026 16:28:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770910084; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=thbPNnRijTLf9gzZkZqQPZn2GPekIDtSoeywreYAt34=;
	b=v9+M6EXS3+KSQIsQQmNwLg6DbjW0+wRqi7o6sBQLkugxgmlxHiRjyjMZnQfsGKVFsch8gq
	xrsyBnl3hIiRFDhaffNj48tX7Zn13JLAWPhGwpOKZOLz9F5qk5RAmDzJZ9fEYbaR867j/Y
	CTgGtnfUXfNvy0H/CXjRqFKiIufEzQeQAoGdyz1kJBvEP7C/BaDm1PPStw5g2P6+Qbx+m0
	1j7tT8+XaZ8QlaETs6XZtAu96wivAvVy5dxnHAZCxPgRujZ+GPYiBqTwgwYsf/Z0j6fH6y
	hsn6povRGcFrpw0/oR9y1IMsO5xBeNQOEpDwL/QR3ViSXx9yNlxc+dDvslrXSg==
From: "Kory Maincent (TI)" <kory.maincent@bootlin.com>
Date: Thu, 12 Feb 2026 16:26:16 +0100
Subject: [PATCH 2/5] ARM: multi_v7_defconfig: Enable TILCDC DRM driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-feature_bbge-v1-2-29014a212f35@bootlin.com>
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
	TAGGED_FROM(0.00)[bounces-265119-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 1385A12EF83
X-Rspamd-Action: no action

Enable CONFIG_DRM_TILCDC as a module to provide display support for
TI AM335x-based SoCs in the multi_v7 kernel configuration.

Signed-off-by: Kory Maincent (TI) <kory.maincent@bootlin.com>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 7f1fa9dd88c92..196b6872ca463 100644
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

-- 
2.43.0


