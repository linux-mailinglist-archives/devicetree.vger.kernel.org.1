Return-Path: <devicetree+bounces-287952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AOpAmz24GmInwAAu9opvQ
	(envelope-from <devicetree+bounces-287952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 16:47:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DC040FBE7
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 16:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D7503073D75
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 14:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37D8625A642;
	Thu, 16 Apr 2026 14:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="lIDoPXQe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557373E122D
	for <devicetree@vger.kernel.org>; Thu, 16 Apr 2026 14:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776350774; cv=none; b=qoBOPM05+J2DWSb9lVESsPE0eqvfcHqC/XDO/kkNogTM7Pk3vI9NQ6p3MExLeSJW5GlMbeEgyDvuuNCw7gk4jPPrpjilcy+yOxFvAKnPokKJuUjYrfUAEeB7g6grk7Wl0lJKSfe8pqvXR86mksjsraqNLdYows+pHBQ1XsuTY0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776350774; c=relaxed/simple;
	bh=MIi0isple/re7E2ZUPULW5f3WGWYby9NBpp/u86OcO4=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=LuVQbZj+LNH6EObmOH9ROQsRETsEBkRA/1DSAGPD2P6FWiJYvw6AKxAkIgOIXFwK7G4MrA1/8zQri3YipxrMMz+CNZEhLXusB+H6a2XllBkZjhKehhcsOWX6lxc3e3sbyPrFD2C6xUbnJ3vy5KKSJj5SX+HSsWil8PLTw8LUnsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=lIDoPXQe; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 14D87C5C3CA;
	Thu, 16 Apr 2026 14:46:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0382B60495;
	Thu, 16 Apr 2026 14:46:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B4440104608AA;
	Thu, 16 Apr 2026 16:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776350763; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MIi0isple/re7E2ZUPULW5f3WGWYby9NBpp/u86OcO4=;
	b=lIDoPXQeYVJn5ak4NMqbpAHszS6b4EIsEERpye90vwYoKP9w0bEaDXv0kfs9ZJbxEdLfcn
	SX2pd9w2Bnp/zmXqsrbOM8xJwL9g8nwSnnjDN75Nnx+JJs8skDPozymxD2TWF/xEhMw+x9
	zI3+MfEdAaDk2goADjkKOriBs1IrG+fhQyldzBI9OaSvOOvtityuwBBfbJVWRsTMb+VaWm
	203Q79Md/mpxmEtJxHG+mhmdXMOZiy87yr/V+XQv1MWiYHk2F9dgMFlnhhdn26s3KNUT0N
	chwDyeHqw43YQf0JdvXMjlWONBnHegLHmnG0wsRdVenD0yGM5cFL5i5D01Hemw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 16 Apr 2026 16:45:54 +0200
Message-Id: <DHUNSF4J77L3.4YXH069ZDGT0@bootlin.com>
Cc: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Jessica Zhang" <jesszhan0024@gmail.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Thierry Reding"
 <thierry.reding@gmail.com>, "Sam Ravnborg" <sam@ravnborg.org>, "Joseph Guo"
 <qijian.guo@nxp.com>, "Marek Vasut" <marek.vasut+renesas@mailbox.org>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Robert Foss"
 <rfoss@kernel.org>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
 "Jonas Karlman" <jonas@kwiboo.se>, "Jernej Skrabec"
 <jernej.skrabec@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 2/2] drm/bridge: waveshare-dsi: support DSI LCD kits
 with LVDS panels
X-Mailer: aerc 0.20.1
References: <20260412-ws-lcd-v3-0-db22c2631828@oss.qualcomm.com>
 <20260412-ws-lcd-v3-2-db22c2631828@oss.qualcomm.com>
In-Reply-To: <20260412-ws-lcd-v3-2-db22c2631828@oss.qualcomm.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-287952-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,linaro.org,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,ravnborg.org,nxp.com,mailbox.org,intel.com,ideasonboard.com,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,bootlin.com:mid,bootlin.com:email,bootlin.com:dkim,bootlin.com:url]
X-Rspamd-Queue-Id: 69DC040FBE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun Apr 12, 2026 at 7:32 PM CEST, Dmitry Baryshkov wrote:
> Several Waveshare DSI LCD kits use LVDS panels and the ICN6202 DSI2LVDS
> bridge. Support that setup by handling waveshare,dsi2lvds compatible.
> The only difference with the existing waveshare,dsi2dpi is the bridge's
> output type (LVDS vs DPI).
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

