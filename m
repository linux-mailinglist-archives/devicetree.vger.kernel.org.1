Return-Path: <devicetree+bounces-295000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIoEGZKu/2mu9AAAu9opvQ
	(envelope-from <devicetree+bounces-295000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 00:00:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CCA5019E7
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 00:00:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DFFE63003817
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 22:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B06163D34BB;
	Sat,  9 May 2026 22:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCMU7mIZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F90739D6DA
	for <devicetree@vger.kernel.org>; Sat,  9 May 2026 22:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778364046; cv=none; b=h/bfJmpQ/mblO7Zz5AU3DcKVjNO/X3WDAufiKwRcNRQAJqIdX/F8tNLWuJdFQ/maebzZCcIn+H6n+y6oj0p7bhu/IpwfxfC0gq0JZkjnbA7KZ5NJWBblUjx1Szjl8oFFzq3dxdCflr6OyvTXiatRlgd/VWPsr9pVdMduwRUk43k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778364046; c=relaxed/simple;
	bh=C6PzPyGhvEaRPukUNJO0JB11CUrNctA4pebLgnQYMsE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FMqLFlsWDAZTWgktwRkLoJfNraDaonArWzSybTgTDMpxtoLY93QV/MVSzB4yiOsnmLPbIoYKPFte/pTODHddTDhL6KCKysjdjWJwGP8nsPbh51/VT708IszNQHdImSnT7TuYUzjFzGWJfPbxhr/mflBDogFmU1u6rPZ+s3DHU2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCMU7mIZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9044CC2BCB2;
	Sat,  9 May 2026 22:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778364045;
	bh=C6PzPyGhvEaRPukUNJO0JB11CUrNctA4pebLgnQYMsE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=cCMU7mIZwucb07YO5O5OXofnenYGn1jAJo0iXg51FtRSSus9w+eDTkV9aUY0mSfsA
	 bjm13mL67p1hjmcCMcI1l8gV5EhweKfRC0t9wT+u18gheVADJS5jRexeGd8tB3iHwg
	 0ll5JHPQTgdNGCtoFHlMq/5Hv4XPmxz2WqP/NBurOGH7Xj+sSfK9a77/CBA7shca2o
	 E4mQ26d/Qi8H9fm9K58zqiGKWw3o/GVe3lOtIlcVtNtCqDJC7hvrSILWlsBOddui49
	 8J6B3ckGYmLF/ba07ROS77Dch8QjQhmUmYsvWJea8OQtnILksM+brU6CpEHA2r0cs5
	 0AIwlnXhFbsOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 8/8] drm/sun4i: switch DE33 to new bindings
Reply-To: sashiko@lists.linux.dev
To: "Jernej Skrabec" <jernej.skrabec@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260509190015.79086-9-jernej.skrabec@siol.net>
References: <20260509190015.79086-9-jernej.skrabec@siol.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 09 May 2026 22:00:44 +0000
Message-Id: <20260509220045.9044CC2BCB2@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 00CCA5019E7
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295000-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Uninitialized blender mode registers for DE33 due to zero plane_cn=
t.
- [High] Missing device link to the planes device creates a Use-After-Free =
vulnerability.
--

commit c691a21629b6216c482f2beb09752658d71b6425
Author: Jernej Skrabec <jernej.skrabec@gmail.com>

drm/sun4i: switch DE33 to new bindings

Now that everything is in place, switch DE33 to new bindings.

> diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/=
sun8i_mixer.c
> index 4071ab38b4ae5..957db09384552 100644
> --- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
> +++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
[ ... ]
> @@ -638,6 +624,34 @@ static int sun8i_mixer_bind(struct device *dev, stru=
ct device *master,
> =20
>  	clk_prepare_enable(mixer->mod_clk);
> =20
> +	if (mixer->cfg->de_type =3D=3D SUN8I_MIXER_DE33) {
> +		struct platform_device *pdev;
> +		struct device_node *np;
> +		void *data;
> +
> +		np =3D of_parse_phandle(dev->of_node, "allwinner,planes", 0);
> +		if (!np) {
> +			ret =3D -ENODEV;
> +			goto err_disable_mod_clk;
> +		}
> +
> +		pdev =3D of_find_device_by_node(np);
> +		of_node_put(np);
> +		if (!pdev) {
> +			ret =3D -EPROBE_DEFER;
> +			goto err_disable_mod_clk;
> +		}
> +
> +		data =3D platform_get_drvdata(pdev);
> +		if (!data) {
> +			put_device(&pdev->dev);
> +			ret =3D -EPROBE_DEFER;
> +			goto err_disable_mod_clk;
> +		}
> +
> +		mixer->planes_dev =3D &pdev->dev;

Does this code need a device link (e.g., using device_link_add()) to the
planes device?

Without a device link, unbinding the planes driver via sysfs could free
its devres-managed memory.

Later, sun50i_planes_setup() extracts the planes driver's regmap
(planes->regs) and stores it directly in the DRM layer structures.

If the planes driver is unbound, wouldn't subsequent atomic commits
dereference the dangling layer->regs pointer and cause a use-after-free
regression?

> +	}
> +
>  	list_add_tail(&mixer->engine.list, &drv->engine_list);
> =20
>  	/* Reset registers and disable unused sub-engines */
[ ... ]
> @@ -867,16 +886,8 @@ static const struct sun8i_mixer_cfg sun50i_h6_mixer0=
_cfg =3D {
>  };
> =20
>  static const struct sun8i_mixer_cfg sun50i_h616_mixer0_cfg =3D {
> -	.lay_cfg =3D {
> -		.de_type	=3D SUN8I_MIXER_DE33,
> -		.scaler_mask	=3D 0xf,
> -		.scanline_yuv	=3D 4096,
> -	},
>  	.de_type	=3D SUN8I_MIXER_DE33,
>  	.mod_rate	=3D 600000000,
> -	.ui_num		=3D 3,
> -	.vi_num		=3D 1,

With ui_num and vi_num removed, they will default to 0.

In sun8i_mixer_init(), we compute the total planes:

    plane_cnt =3D mixer->cfg->vi_num + mixer->cfg->ui_num;

And then initialize the blending modes:

    for (i =3D 0; i < plane_cnt; i++)
        regmap_write(mixer->engine.regs,
                     SUN8I_MIXER_BLEND_MODE(base, i),
                     SUN8I_MIXER_BLEND_MODE_DEF);

Because plane_cnt will be 0, wouldn't this skip the blender initialization
loop entirely for DE33 hardware?

Could this regression break display composition and alpha blending by leavi=
ng
the blender pipes without their default modes?

> -	.map		=3D {0, 6, 7, 8},
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260509190015.7908=
6-1-jernej.skrabec@siol.net?part=3D8

