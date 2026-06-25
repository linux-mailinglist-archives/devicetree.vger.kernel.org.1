Return-Path: <devicetree+bounces-315603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oGbrBVUBPWqzvggAu9opvQ
	(envelope-from <devicetree+bounces-315603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:22:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 783086C49E7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:22:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mZES0BhR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315603-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315603-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 610D5301373B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 10:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 692BC3CF973;
	Thu, 25 Jun 2026 10:22:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B573CF97E
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 10:22:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782382930; cv=none; b=kWjYdBkp25IJyuf5lgZdnIVEb+shNLJN6I//rqqGH9O17j7xkIknYabOMfMDi/SV7dGuA/bDOnSCiEKMROqPo1SwoLne9ob2l+Q2cHKBOGgdl6yNV+oUO9yqlBZRLqCJ7O6ovKsjDxSm2dY36AkOjgKMOtM0oqMQhS4byNj7CnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782382930; c=relaxed/simple;
	bh=PIU+5szg/8QDj3G+W5iTVNgHfjbui9/ZNOkPdVCaMBI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=P6VHPHiUJwtM+7bnzs26dqF+CzE7jkbCEMeC8rQs8UVOFp1cbxu0x2ZFPaW5tlAPx1QMMm5xerBmnWfcPRLV06ixWNusQEPopCiMiQ6H8ooydA8tKrlzW24RT/Y7m9vz9Nf1ioDA92rc2enBH1qlonq4NkRhJNEv6YA0xnU/aw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZES0BhR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 777AD1F00A3A;
	Thu, 25 Jun 2026 10:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782382928;
	bh=yLJeep5IuhycEZg2kBNl+sQC2H+Q7PjuP10Kajolifo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mZES0BhRVJ/NFHUuTyRSLjFfL5lLOUgMveGEwBV+UFZ+up0UkSjtfAcIje3wk4LCN
	 FvjNZA1GFX4jNPS5Z7zrRobU0LNUAZ8s+vsG/IopbALvWh3j7hQvdvzEr/TvtAVCdw
	 mrPfQovHlTYjbLG9SRTpcDrQa7D2uXfMvzuO2eG0OKqJEkHFWZHyngDFQL4TkYRAgd
	 3rJVoj2JvLn9fweotQDq8qOkzSQ8OdmDaWq+4gY/brOc4wdcQH7mmWRMsoKLaUdSSs
	 bvTGf8tbx5Rv9XyBxHcXBENV3rFNMzjOPeuMfYYBtiiHuhFmIBpPYY7DTKFgCiVw3x
	 jXkfqdcV+u9HQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 6/7] drm/verisilicon: add DCUltraLite chip identity
 to HWDB
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260625094449.708386-7-a0987203069@gmail.com>
References: <20260625094449.708386-1-a0987203069@gmail.com>
 <20260625094449.708386-7-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 10:22:07 +0000
Message-Id: <20260625102208.777AD1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315603-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 783086C49E7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The newly added DCUltraLite chip restricts the max cursor size to =
32x32, but the driver does not configure `drm->mode_config.cursor_width` or=
 `cursor_height`. DRM core defaults to 64x64 when these fields are 0. This =
incorrectly exposes a `DRM_CAP_CURSOR_WIDTH` of 64 to userspace, causing at=
omic commits with 64x64 hardware cursors to be rejected with `-EINVAL`, bre=
aking display compositors.
--

commit a3c0d8a714c977c54ec25009535f44e9ded7c881
Author: Joey Lu <a0987203069@gmail.com>

drm/verisilicon: add DCUltraLite chip identity to HWDB

The Nuvoton MA35D1 chip contains a DCUltraLite display controller with
model number 0x0 (sic, the model name contains no number either),
revision 0x5560 and customer ID 0x305.  It has a similar register map
with DC8000, only one display output and only 32x32 cursor supported.

> diff --git a/drivers/gpu/drm/verisilicon/vs_hwdb.c b/drivers/gpu/drm/veri=
silicon/vs_hwdb.c
> index 91524d16f7785..7d630a667a3f0 100644
> --- a/drivers/gpu/drm/verisilicon/vs_hwdb.c
> +++ b/drivers/gpu/drm/verisilicon/vs_hwdb.c
> @@ -129,6 +129,16 @@ static struct vs_chip_identity vs_chip_identities[] =
=3D {
>  		.max_cursor_size =3D 64,
>  		.formats =3D &vs_formats_no_yuv444,
>  	},
> +	{
> +		.model =3D 0x0,		/* DCUltraLite */
> +		.revision =3D 0x5560,
> +		.customer_id =3D 0x305,
> +
> +		.generation =3D VSDC_GEN_DC8000,
> +		.display_count =3D 1,
> +		.max_cursor_size =3D 32,

[Severity: High]
Does this code expose an incorrect DRM_CAP_CURSOR_WIDTH to userspace?

Looking at vs_mode_config_init() in drivers/gpu/drm/verisilicon/vs_drm.c,
the driver does not seem to configure drm->mode_config.cursor_width or
cursor_height:

drivers/gpu/drm/verisilicon/vs_drm.c:vs_mode_config_init() {
    ...
    drm->mode_config.helper_private =3D &vs_mode_config_helper_funcs;
}

When these fields are 0, the DRM core defaults to 64x64. This means userspa=
ce
compositors might query the capability, receive 64x64, and attempt to commit
a 64x64 hardware cursor.

If this new chip restricts the max cursor size to 32x32, will the driver's
atomic check reject the 64x64 state and break display compositors?

> +		.formats =3D &vs_formats_no_yuv444,
> +	},
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625094449.7083=
86-1-a0987203069@gmail.com?part=3D6

