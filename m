Return-Path: <devicetree+bounces-300936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAGALqpEDmoM9gUAu9opvQ
	(envelope-from <devicetree+bounces-300936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 01:32:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDD759CCA2
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 01:32:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 95C61300D777
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 23:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE893A257C;
	Wed, 20 May 2026 23:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmiYNEcc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC9B35F610
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 23:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779319975; cv=none; b=aboR2aZ+QMdURbbKShpsKVDMconphobmNBWDHI1oaveSAgvllsZXVrcBWvh24b4ohz3GJiidSs76QBecCznt04sSIDYVW2OrUBdbp5xOkAT6KAsEBVezlLZRXC1ef8unMtP3JFM9sJgXvz7MAVlUQMm2GZzJaW5bcKW5J6e8sB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779319975; c=relaxed/simple;
	bh=7bqVQ+qteYD5vXSGk8/XvhDdMGCbs97yyju4KWi4ZC4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dWeZR4kyBflNwO1WB4YrxA2KMSJ2mEpWZSCgroZMvlAhPRcAYQo8XJRhV2qrF/0znoyoLShEX0Vx89Yu51gzCh+k9XywPsT3mooYAnLK048DzHdaQf0geh6f5GXPrtDjiSCGq6rSmd+cUh+mFY60o1OYp531kedUEMx1/7cXa58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmiYNEcc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 029D31F000E9;
	Wed, 20 May 2026 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779319974;
	bh=xZEIyl8416GQWahlwNlyRZ5Lj/CVECCC7lzV2HBiSog=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DmiYNEccGAg4KwoeADjnTwobnJ4S51ufv5GfD7aXTYujQSU2lCDT0s3V0W+BPN2E4
	 KNv0tULIJvrTpmqGKpDZOLvvComPdBcrJd7XVBTPTW9wOrv08GPLCTyz6Ev41wXSNO
	 sJAcveHRW59Cuq4AziVJyZyJ9ijtr43RFnswZ1atO7wgGa/TBa8cApm+91iDMq2Eiq
	 FnSWIIspHU3sasI5Bb9HXXW5ICujiR4qCcRCmQCklGBcDwnjrPuV2vitleQ5einXJn
	 KzViQzNQT+6Y1uYEmvan4waFD8ph31wLVN5QxzHCQMikuwIE19yJCKdcH/XPSgOM+1
	 6Jftjv2To5VVg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 12/28] media: rockchip: rga: avoid odd frame sizes
 for YUV formats
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3ZlbiBQw7xzY2hlbA==?= <s.pueschel@pengutronix.de>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260521-spu-rga3-v7-12-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-12-3f33e8c7145f@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 23:32:53 +0000
Message-Id: <20260520233254.029D31F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300936-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pengutronix.de:email]
X-Rspamd-Queue-Id: 5CDD759CCA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Crop rectangles in `vidioc_s_selection` lack alignment constraints=
, enabling users to bypass the frame size protection and trigger the hardwa=
re hang.
--

commit f1e6772c26f6e4894e7ba2cdfff4714d5507ebb4
Author: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

media: rockchip: rga: avoid odd frame sizes for YUV formats

The patch updates vidioc_try_fmt to enforce a 2-byte alignment on width and
height for YUV formats. This is intended to prevent undefined behavior and
hardware hangs, particularly on RGA3.

> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index f599c992829dd..77b8c7ab74274 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c

[ ... ]

> @@ -358,11 +371,7 @@ static int vidioc_try_fmt(struct file *file, void *p=
riv, struct v4l2_format *f)
>  	if (!fmt)
>  		fmt =3D &hw->formats[0];
> =20
> -	pix_fmt->width =3D clamp(pix_fmt->width,
> -			       hw->min_width, hw->max_width);
> -	pix_fmt->height =3D clamp(pix_fmt->height,
> -				hw->min_height, hw->max_height);
> -
> +	v4l2_apply_frmsize_constraints(&pix_fmt->width, &pix_fmt->height, &frms=
ize);

[Severity: High]
This is a pre-existing issue, but does enforcing alignment here fully
prevent the hardware hang?

The RGA hardware derives its processing dimensions from the crop rectangle.
While this patch ensures a valid even-sized format via VIDIOC_S_FMT, the
vidioc_s_selection handler directly accepts user-supplied coordinates witho=
ut
enforcing alignment checks for YUV formats.

A user could negotiate an even-sized format but subsequently use
VIDIOC_S_SELECTION to apply an odd crop size (e.g., 129x129). Since these
odd dimensions are programmed into the hardware registers when streaming
starts, could this bypass the frame size protection and still trigger
the exact hang vulnerability this patch aims to resolve?

>  	v4l2_fill_pixfmt_mp(pix_fmt, fmt->fourcc, pix_fmt->width, pix_fmt->heig=
ht);
>  	pix_fmt->field =3D V4L2_FIELD_NONE;
>

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-spu-rga3-v=
7-0-3f33e8c7145f@pengutronix.de?part=3D12

