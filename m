Return-Path: <devicetree+bounces-273505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCMiH7AGsGlregIAu9opvQ
	(envelope-from <devicetree+bounces-273505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:55:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D55F924BC31
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:55:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4446531685C2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37F438E135;
	Tue, 10 Mar 2026 11:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Z7BbISe7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D279838A713
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773143615; cv=none; b=u3PpjTm8ZqC5jvAlkwcB3vayrUm69XNRmbmtAPJ7u2zjIWqvnM+rZDBJLhfJ3kVnnffL7vCotFI4Hn5E5v5wvsNp8fM7KC5QouEBdgwQPYoP4hlkNBzPiUbICIS6rJ5LaysAt8w5AMlIFdawjvRabydXwPa0VOeseTiVC8rmIhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773143615; c=relaxed/simple;
	bh=9NQ8IQeN7TCQBSjsDDw3vu92CpoBz/RDigSuI/X3km8=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=f9uLzBSq4DoSRJ6MN6FSiyZWAjENO1H0tGUodafM3xk7VpWVIgOGrpN8lA+xWbTq8+VKIbwcf10sm8edGM0kOVTYycCTUwErN1HhtXxkFe3FUsWqlbSossyulRi8Jr4yzQnljRKuMWqgESkZhEL+bmksnxTH0z1jFwEaCCWXMSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Z7BbISe7; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 329124E4256E;
	Tue, 10 Mar 2026 11:53:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0613660002;
	Tue, 10 Mar 2026 11:53:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 6EDCD10369A98;
	Tue, 10 Mar 2026 12:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773143610; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=23B0sW7TLy2SsjrPyd+kkupKVDBS90ijKBBr+MbJjFA=;
	b=Z7BbISe7HT9N7v21Wm54gyJ2yfbxsNsWE8LqImb+BJAg92oi32vIe26wWUBb/tVjx9ggaL
	hx2mmCQ3eChBTkeRRU+VkFHUBnkRQ/VE86g0+kLTQeMWdplzeXSLPZMm4CYIvYjyOYrjjQ
	gQBOKfHunMd8tCuDBlo+7rm4jj+cawyiLGrZgXWKAI83d7lj5uQ8thUj463AUegMpo233h
	C030UHBSUNWMu5u/d/6UgGR8g7pSobUR9XzHqciYgKFhiNwKDW+OYoTO2EQ/4F2TZUt5D2
	f0zW+Lg7P4CERgYoe1H12rCsMBUQz1b/wHr/gjUqZaZRGGSN8/3m6c6P+776Qg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Mar 2026 12:53:07 +0100
Message-Id: <DGZ2XYTVUR28.16ITKRM9S2ACV@bootlin.com>
Subject: Re: [PATCH v11 2/3] drm/bridge: imx: Add i.MX93 parallel display
 format configuration support
Cc: <devicetree@vger.kernel.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>
To: "Liu Ying" <victor.liu@nxp.com>, "Marco Felsch"
 <m.felsch@pengutronix.de>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Shawn Guo" <shawnguo@kernel.org>, "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam"
 <festevam@gmail.com>, "Peng Fan" <peng.fan@nxp.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Frank Li"
 <Frank.Li@nxp.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260303-v6-18-topic-imx93-parallel-display-v11-0-1b03733c8461@pengutronix.de> <20260303-v6-18-topic-imx93-parallel-display-v11-2-1b03733c8461@pengutronix.de> <33e09cc9-69bd-468b-8361-b92a50686f74@nxp.com>
In-Reply-To: <33e09cc9-69bd-468b-8361-b92a50686f74@nxp.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: D55F924BC31
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273505-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,gmail.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:url,bootlin.com:mid]
X-Rspamd-Action: no action

Hi Liu, Marco,

On Tue Mar 10, 2026 at 3:57 AM CET, Liu Ying wrote:
> Hi Marco, Luca,
>
> On Tue, Mar 03, 2026 at 11:34:27AM +0100, Marco Felsch wrote:
>
> [...]
>
>> +	next_bridge =3D devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
>> +	if (IS_ERR(next_bridge))
>> +		return dev_err_probe(dev, PTR_ERR(next_bridge),
>> +				     "failed to get next bridge\n");
>> +	pdfc->dev =3D dev;
>> +	pdfc->bridge.of_node =3D dev->of_node;
>> +	pdfc->bridge.type =3D DRM_MODE_CONNECTOR_DPI;
>> +	pdfc->bridge.next_bridge =3D next_bridge;
>
> When I was reviewing another patch[1], I was aware of the necessity of
> calling drm_bridge_get() for next_bridge to balance the next bridge's
> refcount put from __drm_bridge_free() for this bridge.  I'd be good if
> Luca may confirm this is correct.  Sorry for bringing this up late.

Indeed you have a good point.

After re-checking devm_drm_of_get_bridge(), as I wrote on the other thread
you pointed to, you should call drm_bridge_get():

-	pdfc->bridge.next_bridge =3D next_bridge;
+	pdfc->bridge.next_bridge =3D drm_bridge_get(next_bridge);

Marco, you can keep my R-by if you resend with just this change.

Sorry about the confusion here.

As mention on the other thread, devm_drm_of_get_bridge() is unable to
support bridge hotplug. So it should be deprecated, but as of now there is
no alternative.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

