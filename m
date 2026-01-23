Return-Path: <devicetree+bounces-259042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yOAGD6qcc2nNxQAAu9opvQ
	(envelope-from <devicetree+bounces-259042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:07:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D4ED478279
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 17:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3DA23300750E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:07:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DA382DCBEC;
	Fri, 23 Jan 2026 16:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="V31Kh61S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963B4291864
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 16:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769184424; cv=none; b=SZ6YZOwyzrd9eVRd/AfeMEwNFflXbQ8hPi82ZPd/Q3kZbT9pJrR3ZicWL+4T2mbUxjd228uFCKVEEFQMgyxanXE8gt2kNwrj/xIQoA9Er4xh2EyZL4poBu/5tzveUXrVHJT3ggCWyMvn9PBLBnmJw8gxFntVDNrEDfo+kJAppLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769184424; c=relaxed/simple;
	bh=6YoCn7zSx60Z9ouH5G1Cgbqc9Q70APZisYU7CQSyeHo=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=LzxJ7yi++QFNoFsCk9djczqxXjCvvuvqRy6IPy+47IwshKcIbGFpULJp0FxY6AkA6xDKlHwg/8WymPUtR+yNd/Exvf2/GYh+pyPz3qaclB6iBNXn0E1FDbDn6tSnt00zFSHc8SGJnp4UX3S44YZn5q4ubWdT5YtOJnmJyUWT5NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=V31Kh61S; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 2B7EC4E42222;
	Fri, 23 Jan 2026 16:06:54 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id EF04B6070A;
	Fri, 23 Jan 2026 16:06:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E8585119A87D8;
	Fri, 23 Jan 2026 17:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769184412; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=vI3kzpZHjcjHFtL3p8Qx+S2TsVWIlODIqyNcUXdrzhU=;
	b=V31Kh61SiJ4UoGViGvd1QA6OuNo9J5Xldz9y000yE1WlWlYr3MvhI6MMiynQPIvr3K8uCo
	zFWne7arjeQjfTIwX7nzcL/m3a0te273RWNXGh4HGND5PgTCtX3XXzPx4vctvkt0elUwxG
	qID7HpSkALXkMmH8PZX6hU5OHSsmlsAdoIxKnUtFkxVEnW9JVjSk7VYNbgzbHU5Jy8XkSy
	txpjBNoDiZ0A2YHfd2PvqOpbf4m9kGiUPApCKhjHuBmCiIscq94G9mPT0ko2QIGX9RqJAb
	djDT///e9tFXC6373e6T9i+Qt+ViNTC/9qTFLOo3MCW23wHjDfI4IXPhHS3f6g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 23 Jan 2026 17:06:41 +0100
Message-Id: <DFW3J1ZV9CXE.2JJTGIA40MU5K@bootlin.com>
Subject: Re: [PATCH v4 18/25] drm/tilcdc: Convert to DRM managed resources
Cc: "Jyri Sarha" <jyri.sarha@iki.fi>, "Tomi Valkeinen"
 <tomi.valkeinen@ideasonboard.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Russell King" <linux@armlinux.org.uk>,
 "Bartosz Golaszewski" <brgl@bgdev.pl>, "Tony Lindgren" <tony@atomide.com>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Markus
 Schneider-Pargmann" <msp@baylibre.com>, "Bajjuri Praneeth"
 <praneeth@ti.com>, "Louis Chauvet" <louis.chauvet@bootlin.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>, "Miguel Gazquez"
 <miguel.gazquez@bootlin.com>, "Herve Codina" <herve.codina@bootlin.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>
To: "Kory Maincent" <kory.maincent@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260116-feature_tilcdc-v4-0-2c1c22143087@bootlin.com>
 <20260116-feature_tilcdc-v4-18-2c1c22143087@bootlin.com>
 <DFSVOBV5UY37.3HTQHOJT3A40N@bootlin.com>
 <20260122154840.5185671a@kmaincent-XPS-13-7390>
In-Reply-To: <20260122154840.5185671a@kmaincent-XPS-13-7390>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259042-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[iki.fi,ideasonboard.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,armlinux.org.uk,bgdev.pl,atomide.com,intel.com,linaro.org,kwiboo.se,baylibre.com,ti.com,bootlin.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[31];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid]
X-Rspamd-Queue-Id: D4ED478279
X-Rspamd-Action: no action

On Thu Jan 22, 2026 at 3:48 PM CET, Kory Maincent wrote:
> On Mon, 19 Jan 2026 22:19:26 +0100
> "Luca Ceresoli" <luca.ceresoli@bootlin.com> wrote:
>
>> On Fri Jan 16, 2026 at 6:02 PM CET, Kory Maincent (TI.com) wrote:
>> > Convert the tilcdc driver to use DRM managed resources (drmm_* APIs)
>> > to eliminate resource lifetime issues, particularly in probe deferral
>> > scenarios.
>> >
>> > This conversion addresses potential use-after-free bugs by ensuring
>> > proper cleanup ordering through the DRM managed resource framework.
>> > The changes include:
>> > - Replace drm_crtc_init_with_planes() with drmm_crtc_alloc_with_planes=
()
>> > - Replace drm_universal_plane_init() with drmm_universal_plane_alloc()
>> > - Replace drm_simple_encoder_init() with drmm_simple_encoder_alloc()
>> > - Remove manual cleanup in tilcdc_crtc_destroy() and error paths
>> > - Remove drm_encoder_cleanup() from encoder error handling paths
>> > - Use drmm_add_action_or_reset() for remaining cleanup operations
>> >
>> > This approach is recommended by the DRM subsystem for improved resourc=
e
>> > lifetime management and is particularly important for drivers that may
>> > experience probe deferral.
>> >
>> > Signed-off-by: Kory Maincent (TI.com) <kory.maincent@bootlin.com>
>> > ---
>> >
>> > Change in v4:
>> > - Newt patch.
>>
>> Why? Adding patches along the way does not help getting your series merg=
ed
>> timely. If there's a good reason for adding a new patch, please mention =
it
>> here.
>
> Thanks for your review.
>
> Sorry for that. The reason is that I faced a null pointer dereference koo=
ps if
> for example the panel module is not installed. Then the
> drm_of_find_panel_or_bridge() function return eprobe defer and something =
goes
> wrong with the DRM resources. Using DRM managed resources solves it.
> I will mention it for the v5.
>
>> > +	tilcdc_crtc =3D drmm_crtc_alloc_with_planes(dev, struct tilcdc_crtc,
>> > base,
>> > +						  &primary->base,
>> > +						  NULL,
>> > +						  &tilcdc_crtc_funcs,
>> > +						  "tilcdc crtc");
>> > +	if (IS_ERR(tilcdc_crtc)) {
>> > +		dev_err(dev->dev, "Failed to init CRTC: %pe\n",
>> > tilcdc_crtc);
>> > +		return PTR_ERR(tilcdc_crtc);
>> > +	}
>> > +
>> > +	tilcdc_crtc->primary =3D primary;
>>
>> (*) see below
>>
>> >
>> >  	init_completion(&tilcdc_crtc->palette_loaded);
>> >  	tilcdc_crtc->palette_base =3D dmam_alloc_coherent(dev->dev,
>> > @@ -978,10 +992,6 @@ int tilcdc_crtc_create(struct drm_device *dev)
>> >
>> >  	crtc =3D &tilcdc_crtc->base;
>> >
>> > -	ret =3D tilcdc_plane_init(dev, &tilcdc_crtc->primary);
>> > -	if (ret < 0)
>> > -		goto fail;
>> > -
>> >  	mutex_init(&tilcdc_crtc->enable_lock);
>> >
>> >  	init_waitqueue_head(&tilcdc_crtc->frame_done_wq);
>> > @@ -989,20 +999,12 @@ int tilcdc_crtc_create(struct drm_device *dev)
>> >  	spin_lock_init(&tilcdc_crtc->irq_lock);
>> >  	INIT_WORK(&tilcdc_crtc->recover_work, tilcdc_crtc_recover_work);
>> >
>> > -	ret =3D drm_crtc_init_with_planes(dev, crtc,
>> > -					&tilcdc_crtc->primary,
>> > -					NULL,
>> > -					&tilcdc_crtc_funcs,
>> > -					"tilcdc crtc");
>> > -	if (ret < 0)
>> > -		goto fail;
>> > -
>> >  	drm_crtc_helper_add(crtc, &tilcdc_crtc_helper_funcs);
>> >
>> > +	ret =3D drmm_add_action_or_reset(dev, tilcdc_crtc_destroy, priv);
>> > +	if (ret)
>> > +		return ret;
>>
>> Not related to your patch, but if the dmam_alloc_coherent() (not visible=
 in
>> the diff) fails, tilcdc_crtc_destroy() won't be called. Is this intended=
?
>> At first sight this drmm_add_action_or_reset() should be moved at (*), j=
ust
>> after the allocation.
>
> You are totally right.
>
>> However being not related to your patch I'd leave this for another serie=
s
>> anyway, to avoid making this series a moving target.
>
> I think it is related to this patch.
> Before this patch there was no need for cleanup as the only action before=
 the
> dmam_alloc_coherent() was a devm_kzalloc().
> Now the plane and the crtc are initialize before the dmam_alloc_coherent(=
) so
> the cleanup need to happen if it fails an error.
>
>> I find this patch hard to read and I think because it is converting
>> multiple things at once. Splitting it in small steps would have been nic=
e,
>> even thought I'm not 100% sure it would have been doable.
>
> Yes, it brought more error when not converting the whole to DRM Managed
> resources in one go.
>
>>
>> Nevertheless it looks correct, so:
>>
>> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>
> Thanks, but I will remove it due to the small change.
> Or maybe it is ok for you if I keep it with only the move of
> drmm_add_action_or_reset().

If you only move the drmm_add_action_or_reset() where I suggested you can
keep it.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

