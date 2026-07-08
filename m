Return-Path: <devicetree+bounces-322988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PugrIlNpTmq0MAIAu9opvQ
	(envelope-from <devicetree+bounces-322988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:14:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1CA727D53
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:14:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=M5Tiz2Q0;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322988-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322988-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 024E630AE0D8
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F7C6439329;
	Wed,  8 Jul 2026 15:08:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111BF43932B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:08:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783523325; cv=none; b=FgZ1L7UwHfzgB7ovNGG882B80o3tmHQn3Pxxga9MqQg0YckKuM2DhuDNNYDJxFgthN+5cCO46awP2eXpcKPTbLRZMKye5cNk6mohpkd/u0atm0T50y537jrR+CaKhGp1e7pHMgubMvQpYckZG2egfZENcCfgSv48YjUVclTj7Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783523325; c=relaxed/simple;
	bh=gzdUnbirfD1ic+i7KeVSCwI0oDY0efvV1fi9UeKTp8A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lXfQVa7KFsWTfDGxml03AcpAyfpxuLCaDFkK0ADbsu6W69TnGti+cO+t3JZFeJCrM9rTYmebmnOYGYmVsUXNUOjdEkIAQvb3LtoKvDXEurScGdpnibJA8XpDbGvvDvcQGoS01+bI1Fw9g9c25lt4aAydey6XtryqyZncz0ioy2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5Tiz2Q0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6C22C1F00A3A;
	Wed,  8 Jul 2026 15:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783523323;
	bh=CSUY+DcJFv/TVH7azOySxTVVhLEqq0djmY0f47HoM2s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M5Tiz2Q08MMjkwOaXJh83MqkpX2XXYSl0BEvI2n94J5fIjHYf2XZrPd8XL/IWanlE
	 obkk7844AltUnGAhRlGok2RsNZpYC/h7/rUFTxoQmqKLCj/5rTd4QKmZivQn2WgjO6
	 tmllUvqutzgMxY7ehQWtt8B626YqFzUxomSXjRbQPvn5CeeuBY/vLFfzrMdBEGfAez
	 EagT6FE7rpLdR59s//Xw+DVbHBgrNubNYrGl40blLw0P02k4iXqOqpG704HHp8pJBz
	 DjHvg7QbPGhZQTRBEQOF02l2A1L7M3uTpepHt2/YEG+YPNuG8TykYE+eSfQNJ5VCyf
	 a3my/ZIXUrd3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 13/20] media: imx355: Convert to new CCI register
 access helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dave Stevenson" <dave.stevenson@raspberrypi.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260708-media-imx355-v3-13-9df386a623d7@raspberrypi.com>
References: <20260708-media-imx355-v3-0-9df386a623d7@raspberrypi.com>
 <20260708-media-imx355-v3-13-9df386a623d7@raspberrypi.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:08:42 +0000
Message-Id: <20260708150843.6C22C1F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322988-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dave.stevenson@raspberrypi.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,raspberrypi.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C1CA727D53

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Missing lock when calling `__v4l2_ctrl_grab` in `imx355_set_stream=
` leading to data race
--

--- Patch [13]: [PATCH v3 13/20] media: imx355: Convert to new CCI register=
 access helpers ---
commit fe9b8fcf594a4a8149bc0b6b2e99148353f94fe2
Author: Dave Stevenson <dave.stevenson@raspberrypi.com>

media: imx355: Convert to new CCI register access helpers

This commit replaces the private register access helpers in the imx355 driv=
er
with the new common CCI register access helpers.

> diff --git a/drivers/media/i2c/imx355.c b/drivers/media/i2c/imx355.c
> index f01a1a5ae7c9a..b27329143e481 100644
> --- a/drivers/media/i2c/imx355.c
> +++ b/drivers/media/i2c/imx355.c
[ ... ]
> @@ -1096,14 +981,14 @@ static int imx355_set_stream(struct v4l2_subdev *s=
d, int enable)

[Severity: High]
Does this code now lack a lock when calling __v4l2_ctrl_grab() in
imx355_set_stream()?

Since the outer mutex_lock(&imx355->mutex) was removed in this series in
favor of localized locking via v4l2_subdev_lock_and_get_active_state(sd),
the __v4l2_ctrl_grab() calls appear to be left unprotected:

    if (enable) {
        ...
        state =3D v4l2_subdev_lock_and_get_active_state(sd);
        ret =3D imx355_start_streaming(imx355);
        v4l2_subdev_unlock_state(state);
        ...
    } else {
        imx355_stop_streaming(imx355);
        ...
    }

    /* vflip and hflip cannot change during streaming */
    __v4l2_ctrl_grab(imx355->vflip, enable);
    __v4l2_ctrl_grab(imx355->hflip, enable);

__v4l2_ctrl_grab() modifies control flags and invokes send_event(), which
iterates over the event subscription list (ctrl->ev_subs).

If userspace concurrently calls VIDIOC_SUBSCRIBE_EVENT or
VIDIOC_UNSUBSCRIBE_EVENT on the flip controls while another thread starts or
stops streaming (VIDIOC_STREAMON / VIDIOC_STREAMOFF), could this cause list
corruption and a kernel panic?

Additionally, __v4l2_ctrl_grab() asserts lockdep_assert_held(), which would
trigger a lockdep splat if the control handler's lock is not held.

>  static int imx355_identify_module(struct imx355 *imx355)
>  {
>  	int ret;
> -	u32 val;
> +	u64 val;
> =20
> -	ret =3D imx355_read_reg(imx355, IMX355_REG_CHIP_ID, 2, &val);
> +	ret =3D cci_read(imx355->regmap, IMX355_REG_CHIP_ID, &val, NULL);
>  	if (ret)
>  		return ret;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-media-imx3=
55-v3-0-9df386a623d7@raspberrypi.com?part=3D13

