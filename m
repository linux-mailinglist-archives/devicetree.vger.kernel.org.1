Return-Path: <devicetree+bounces-261337-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKp0JhsHfWmpPwIAu9opvQ
	(envelope-from <devicetree+bounces-261337-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 20:31:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1884BE29E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 20:31:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C9E73300B538
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 19:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C109B2DAFBA;
	Fri, 30 Jan 2026 19:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RagN86tK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1717128DC4;
	Fri, 30 Jan 2026 19:31:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769801493; cv=none; b=MqRPQ8vbEZb3H7w+Dzt6aIWL5eOLD5ReHlL/6+i39P0BkFo2hw8hmZFAV3TBboUIuFNAV7LxfZcslPMydJnWer9s7gqKIVGeBF3k0EFXzfzW4KmO3SPiJFy5gyHrJuIFeSfiPgV2vHtosCqbEdZFOtOKMYNVH6ekDx672j8+OMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769801493; c=relaxed/simple;
	bh=m5mV3WkJdrCRbCCQKLr3h0zmZ/9pLd75jYGrT83DiZQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:To:From:Subject:
	 References:In-Reply-To; b=LOA5NOLR4y9rUH3iuKZV48E7ViLVLwgjsj7RWFd8TAeUK44XiiuTrNgFnR3ulnr9UovGls6VPvKAnoNKSGcsQiH4j0BOJrpsRp9Ud55KFdsibtBB9j0rEtdeDxxZ2xQ94YkYYk9sNcw9M3NlN6qvpp+MJ4XyWm0+1wX4c2K8Ngo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RagN86tK; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 8CA91C22F63;
	Fri, 30 Jan 2026 19:31:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id CB8EF6075A;
	Fri, 30 Jan 2026 19:31:28 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8D4BE119A8855;
	Fri, 30 Jan 2026 20:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769801487; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ZLGyw2o+DLXAyrrWouaf03BW3C9KjQLxvXzg8AfGBkc=;
	b=RagN86tKQ/gbF5s6lgXDNrwDwkAtcfIcyWKBZ/427DEGvTml7qFCOGlm7qU9H3xeccpd9a
	fbMUyPOkF1UckSQH7EPlH7WpBElj8VSUIwK5tImGGeeTe8wObzfBiA+GWQADzvU/EJeuio
	Tn9NpGBZ+Xr1EwsIfShumDydhik97QxJFPW10mUjhLJQmroNE9Vg9/gDAXf4ySEOYO+f0K
	JiFu/HOf6YPSrXkxQuKMHVPE0lKtUc+qJs0sQPfNNJEK4Dj4NCfK0+zxJndYU5XBOljfRP
	jGl+/mIyAK2jmTBzOKyheM/VCANoLuyq3PerhlB05Gd6xma6Lnh1eRm6pQ1fIA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 30 Jan 2026 20:31:11 +0100
Message-Id: <DG269FV5MZ8I.2VFNJXA0N2Y26@bootlin.com>
Cc: "Markus Schneider-Pargmann" <msp@baylibre.com>, "Bajjuri Praneeth"
 <praneeth@ti.com>, "Louis Chauvet" <louis.chauvet@bootlin.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>, "Miguel Gazquez"
 <miguel.gazquez@bootlin.com>, "Herve Codina" <herve.codina@bootlin.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>
To: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>, "Jyri Sarha"
 <jyri.sarha@iki.fi>, "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>,
 "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Russell King"
 <linux@armlinux.org.uk>, "Bartosz Golaszewski" <brgl@bgdev.pl>, "Tony
 Lindgren" <tony@atomide.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>,
 "Neil Armstrong" <neil.armstrong@linaro.org>, "Robert Foss"
 <rfoss@kernel.org>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
 "Jonas Karlman" <jonas@kwiboo.se>, "Jernej Skrabec"
 <jernej.skrabec@gmail.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v5 20/25] drm/tilcdc: Use devm_drm_of_get_bridge()
 helper
X-Mailer: aerc 0.20.1
References: <20260123-feature_tilcdc-v5-0-5a44d2aa3f6f@bootlin.com>
 <20260123-feature_tilcdc-v5-20-5a44d2aa3f6f@bootlin.com>
In-Reply-To: <20260123-feature_tilcdc-v5-20-5a44d2aa3f6f@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261337-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[bootlin.com,iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,armlinux.org.uk,bgdev.pl,atomide.com,intel.com,linaro.org,kwiboo.se];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid,ti.com:url]
X-Rspamd-Queue-Id: C1884BE29E
X-Rspamd-Action: no action

Hi Kory,

On Fri Jan 23, 2026 at 5:12 PM CET, Kory Maincent (TI.com) wrote:
> Replace drm_of_find_panel_or_bridge() with the newer
> devm_drm_of_get_bridge() helper which simplifies the code by:
> - Automatically handling both panel and bridge cases internally
> - Managing the panel-to-bridge conversion when needed
> - Using devres for resource management, eliminating manual cleanup
>
> This removes the need for explicit panel-to-bridge conversion via
> devm_drm_panel_bridge_add_typed() and the associated error handling path.
>
> Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>

I'm OK with this patch, based on the v4 discussion. I have a question
however, see below.

> --- a/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
> +++ b/drivers/gpu/drm/tilcdc/tilcdc_encoder.c
> @@ -55,15 +55,12 @@ int tilcdc_encoder_create(struct drm_device *ddev)
>  	struct tilcdc_drm_private *priv =3D ddev_to_tilcdc_priv(ddev);
>  	struct tilcdc_encoder *encoder;
>  	struct drm_bridge *bridge;
> -	struct drm_panel *panel;
> -	int ret;
>
> -	ret =3D drm_of_find_panel_or_bridge(ddev->dev->of_node, 0, 0,
> -					  &panel, &bridge);
> -	if (ret =3D=3D -ENODEV)
> +	bridge =3D devm_drm_of_get_bridge(ddev->dev, ddev->dev->of_node, 0, 0);
> +	if (PTR_ERR(bridge) =3D=3D -ENODEV)
>  		return 0;
> -	else if (ret)
> -		return ret;
> +	else if (IS_ERR(bridge))
> +		return PTR_ERR(bridge);
>
>  	encoder =3D drmm_simple_encoder_alloc(ddev, struct tilcdc_encoder,
>  					    base, DRM_MODE_ENCODER_NONE);
> @@ -73,12 +70,5 @@ int tilcdc_encoder_create(struct drm_device *ddev)
>  	}
>  	priv->encoder =3D encoder;
>
> -	if (panel) {
> -		bridge =3D devm_drm_panel_bridge_add_typed(ddev->dev, panel,
> -							 DRM_MODE_CONNECTOR_DPI);

You are introducing a subtle difference here: while you pass the connector
type to devm_drm_panel_bridge_add_typed(), devm_drm_of_get_bridge() does
not take it and expects it to ahve been set previously and errors out if it
hasn't.

Can you ensure the connector type is alway set before this
devm_drm_of_get_bridge() call?

All the changes to the driver in the previous patches of this series make
it hard to find that out from here.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

