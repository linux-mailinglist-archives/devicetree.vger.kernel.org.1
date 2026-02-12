Return-Path: <devicetree+bounces-265156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDpoMHsHjmkT+wAAu9opvQ
	(envelope-from <devicetree+bounces-265156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:01:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 526A112FC31
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:01:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C3B3B303850E
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4DE35DD11;
	Thu, 12 Feb 2026 16:58:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gCSGMQvz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62D4357716
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915517; cv=none; b=XNnxA3hUixk6FoeihvOk4DvlpDniMo20CTkwIR3IYb5a/rtdMrRYz3uEvUcR4fsoJHzSijPBon7/YFPkx8ZyR7nIrazKRyaWHyZbzbE1D20ZPZ/66nD3fQhLnKWUJsVsOPVJHVMKRdt0rLImNLgfJflVI6X32G4ElcixtpDDRLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915517; c=relaxed/simple;
	bh=arbeKzskpaZ6m1Z7FnnQ5xEvGj02M4ftvyLatuv7G9I=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=WMeUpaUoGipNv7SGb4TEHHzJ04sozQOu28L7BRDL38QTHBCuk1JKH/xZs+/4V9RK2Gd30vZAQ87yYu/IMVH04I6udbJ+if+c4fDC/eGHOFlvbbLCh/IGDRtT0cwaxp0JzXg1M2BZJqzc0BQ95FjZozwB3X8BPvDB3XMrD0Fioro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gCSGMQvz; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 4FCB4C23DA8;
	Thu, 12 Feb 2026 16:58:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 022FF606B8;
	Thu, 12 Feb 2026 16:58:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6ADAF1036888C;
	Thu, 12 Feb 2026 17:58:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770915513; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=arbeKzskpaZ6m1Z7FnnQ5xEvGj02M4ftvyLatuv7G9I=;
	b=gCSGMQvztYNe3eC6uQzYgHoD6EATkzqZfYyeAU/f3/I9mXJ8PbJkqMKFssqdEWLygsQCMS
	dYrt25axvM/8/jIlSwmcqnULBvPi4rAISiPrVLkxj+YNEZTVWSY3gcy3odJN18qPrYzf8n
	GUEK3R/XDWveteemwNH9tm5rP1yNIdo/25iGkr3yTQ1epIZ6Aa21mha9pU11JMO2E5suI3
	o8ATdKYJ79w2ge2A/kv3XrBmj0T8KdxtMVnj65EQecDiqS3moyAdyGMWghXgRt6RQyOit5
	iOr13cSb6aZ8i2HZk9yS4D076cyXKJiePiNrSYjOCrMokOGShyEW1/xObA/TJQ==
Date: Thu, 12 Feb 2026 17:58:28 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade
 <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, Roger Quadros
 <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Russell King <linux@armlinux.org.uk>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, Bajjuri Praneeth <praneeth@ti.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Louis
 Chauvet <louis.chauvet@bootlin.com>
Subject: Re: [PATCH 4/5] ARM: multi_v7_defconfig: Enable ITE IT66121 driver
Message-ID: <20260212175828.380fa3ff@kmaincent-XPS-13-7390>
In-Reply-To: <d786d817-e97d-4270-a3be-4778730df35e@kernel.org>
References: <20260212-feature_bbge-v1-0-29014a212f35@bootlin.com>
	<20260212-feature_bbge-v1-4-29014a212f35@bootlin.com>
	<d786d817-e97d-4270-a3be-4778730df35e@kernel.org>
Organization: bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-265156-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kory.maincent@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:url,bootlin.com:dkim]
X-Rspamd-Queue-Id: 526A112FC31
X-Rspamd-Action: no action

On Thu, 12 Feb 2026 16:40:14 +0100
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 12/02/2026 16:26, Kory Maincent (TI) wrote:
> > Enable the ITE IT66121 HDMI bridge driver to support HDMI output on
> > the BeagleBone Green with the Seeed Studio HDMI cape. =20
>=20
> This is not one option per patch. All three patches should be squashed,
> because are logically one change.

Ok, as you prefer.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

