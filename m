Return-Path: <devicetree+bounces-297347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLM5NeJzBWocXQIAu9opvQ
	(envelope-from <devicetree+bounces-297347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 09:04:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4DC53EA73
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 09:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DF789301642E
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 07:04:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFE602EB84E;
	Thu, 14 May 2026 07:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzfXa+2u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CEAA3F4110
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 07:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778742239; cv=none; b=eA6DGJYA2opIjxdjFn/w/5WuXVNa0qQEIKZzjPLkMzZLDyjwcqsdpicR2b+bzIpDHwT6HoOdcTfbX5EyWQ/KwTm1vWUO/y43MNqt0b+f/1yIGNxBQlbdybKYXRYDxXavJyJlD1iCZ/W5hoT43ngXmp3/qJOrpV82nHVIz2+n2rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778742239; c=relaxed/simple;
	bh=kFGQn+YxBdztLkVGTBrC2xLslKtos7Jv48cz2/TwxFI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gXnhlfa3AWPODUcpXcZX2ZS+KWjJElrhHaYpZcWmX/3BQCnzQjhAPwXM0tRjrgEoMr9/0Bn7B2x0eWlg07GlWXv40u3Udb0/jcafmFkaysb3VAfw64cSVZrW7FUL60eW0f2s59P3csMMYrGMD5mB7WPVnK0FmryR16a71Ggi1Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzfXa+2u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3F76C2BCB7;
	Thu, 14 May 2026 07:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778742238;
	bh=kFGQn+YxBdztLkVGTBrC2xLslKtos7Jv48cz2/TwxFI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BzfXa+2u+CEDxAX1Fkuyt+DWbw5YQsqieXLIs+3XgDEDSik15nVVWXQJpTrdypAgQ
	 xCaJZ/KQXKV2NskjtMC99ZI79Xc3Htzm3TAWyxQPXTe6R+FW2C56dWrSFrKaLz94ei
	 NP1vdjHRyuD1EOHn2X2aT0AISr0SGQIFt/gxQrWDWhmgN3iYcnk4O5usKpJxeBepkM
	 8irb3Voekr9eJHn+87yeTX/H6igwyMm+flaj7i/VANj6mfdjruIkj9aaf0lgXY1h/e
	 kGXqwaFnPldSEuhkgfBDfZjSOGHKAX9ajAFXPijBmO5sLZAUlVuCS018F5vNNY9s/m
	 IvzvO2DQnfGSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] drm/panel: simple: add NEC NL6448BC33-70C
Reply-To: sashiko-reviews@lists.linux.dev
To: "Steffen Trumtrar" <s.trumtrar@pengutronix.de>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-v7-1-topic-panel-simple-nl6448bc33-v1-2-9bd4b7d0eac0@pengutronix.de>
References: <20260513-v7-1-topic-panel-simple-nl6448bc33-v1-2-9bd4b7d0eac0@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 07:03:58 +0000
Message-Id: <20260514070358.A3F76C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7A4DC53EA73
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297347-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `size` field in `panel_desc` is incorrectly populated with t=
he physical outline dimensions of the module rather than the active display=
 area, which will cause incorrect DPI calculations in userspace.
- [Low] The `connector_type` field is uninitialized in the `nec_nl6448bc33_=
70c` panel descriptor, which will trigger a kernel warning during probe.
--

commit d2a2636831b20ec008ea25a3fcc3144f386ad581
Author: Steffen Trumtrar <s.trumtrar@pengutronix.de>

drm/panel: simple: add NEC NL6448BC33-70C

This commit adds support for the NEC NL6448BC33-70C 10.4" 640x480 LCD module
to the panel-simple driver.

> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> index 236bd56208ccf..bbbbdd399d1c3 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c

[ ... ]

> +static const struct panel_desc nec_nl6448bc33_70c =3D {
> +	.modes =3D &nec_nl6448bc33_70c_mode,
> +	.num_modes =3D 1,
> +	.bpc =3D 6,
> +	.size =3D {
> +		.width =3D 243,
> +		.height =3D 185,
> +	},

The commit message specifies this is a 10.4" panel, but these dimensions
(243x185 mm) yield a diagonal of approximately 12.0 inches. Are these the
physical module outline dimensions instead of the active display area?

The DRM subsystem propagates width_mm and height_mm to
connector->display_info for userspace DPI scaling calculations. Using the
mechanical outline instead of the active area (which is typically around
211x158 mm for a 10.4" 4:3 panel) might result in incorrect UI scaling.

> +	.bus_format =3D MEDIA_BUS_FMT_RGB666_1X18,
> +	.bus_flags =3D DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE,
> +};

Is it intentional to omit the connector_type field here?

When this field is omitted, panel_simple_probe() will emit a kernel
warning saying "Specify missing connector_type" before falling back to
DRM_MODE_CONNECTOR_DPI. Specifying the correct connector type explicitly
prevents this warning during boot.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-v7-1-topic=
-panel-simple-nl6448bc33-v1-0-9bd4b7d0eac0@pengutronix.de?part=3D2

