Return-Path: <devicetree+bounces-326306-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RKAIAkRDVmqy2QAAu9opvQ
	(envelope-from <devicetree+bounces-326306-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:10:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 598937558DB
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:10:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l057zPmA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326306-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326306-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 362CF300E719
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 14:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC3A261B70;
	Tue, 14 Jul 2026 14:04:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB72A43F4B5;
	Tue, 14 Jul 2026 14:04:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784037845; cv=none; b=LArqBOES336vGc4q824gcY8Dy2Ots3MrtaEXBDYXV960Phjiohom2szBIT1SCjUC7VRB3aY/LkKzr2Q6G0NPtTxJYymWUfRjW3bekzRy66lwQOjQ5LN0k/53Und8GpxO9fZFlFaEaF4fDM+vk1ayVp0Fn4ZkTZxsU1hdMU161js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784037845; c=relaxed/simple;
	bh=rmm9DE3itcfBcUVGLYDs+ypSzWD2oK86r/79baoRmgU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UVAmuOitvVohy3/4b1KgObjK/VrxAy8Kb6pAXuEvv6O5INTTS4rpMZdIbK6A+nWImMXvQTtunSi6G0v1mO3gyiHGzi1RjvU6/iNUbEpMhENKFWNUGi4hD60KiTC8UMVEpK+PhzyXsgNx6clGIEADCL/vYt4aMJBC41EgdQYliUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l057zPmA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E3D41F000E9;
	Tue, 14 Jul 2026 14:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784037844;
	bh=Psz2s/QJ0wuSbKBdRa87DaG1zgzj65QUqPJVExOKTB0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l057zPmAKzBrNgvhCMY0aConPhwtSiKxK9IyeFo0RRKOJuArM2IbCt6T95ogJ18sm
	 SEQOotsv2v/O2qkWaayfWvIx7slfHLf1jM3XjXRKLi8xKufiGvCfK6o9Trcz4fXx6z
	 SmZOJ3l+SWp5Hvx2GoTRgkzzRqaNpYlPGbSmkCf0h/t1ekieEyK4Cj2TqSjbunfqEQ
	 8JtRTO+lhZ3qxscXSmxhTPK5MdBZQco3j2+om/5OY16pJeWoHQQD4roaY/ISDhD8Hy
	 U8WY3w5Jd3n2MAGz4aZZey6PuwbZ8OynD98fJBkUtNShPDa2+LhYV95OZthIHSNNqi
	 5VcnE9Ga9frXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/6] drm/panel: simple: Add waiken WKS101WX001-WCT
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260714-dxl_lcdif-v1-3-6761a8a6592b@nxp.com>
References: <20260714-dxl_lcdif-v1-0-6761a8a6592b@nxp.com>
 <20260714-dxl_lcdif-v1-3-6761a8a6592b@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 14:04:03 +0000
Message-Id: <20260714140404.2E3D41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326306-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 598937558DB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Mismatch in physical height specification between the display mode =
and the panel description.
--

--- Patch [3]: [PATCH 3/6] drm/panel: simple: Add waiken WKS101WX001-WCT su=
pport ---
commit 3308303d1b9690b2cd880fcdaaf60adb3ce4cea7
Author: Frank Li <Frank.Li@nxp.com>

drm/panel: simple: Add waiken WKS101WX001-WCT support

This commit adds support for the waiken WKS101WX001-WCT panel, which is an
industrial-grade 10.1-inch IPS TFT LCD capacitive touch screen display
module.

> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> index c09bf3db5e78a..26fd150aa4454 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c

[ ... ]

> +static const struct drm_display_mode waiken_101wx001_mode =3D {
> +	.clock =3D 71100,
> +	.hdisplay =3D 1280,
> +	.hsync_start =3D 1280 + 70,
> +	.hsync_end =3D 1280 + 70 + 10,
> +	.htotal =3D 1280 + 70 + 10 + 80,
> +	.vdisplay =3D 800,
> +	.vsync_start =3D 800 + 10,
> +	.vsync_end =3D 800 + 10 + 3,
> +	.vtotal =3D 800 + 10 + 3 + 10,
> +	.width_mm =3D 217,
> +	.height_mm =3D 135,
> +	.flags =3D DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +};
> +
> +static const struct panel_desc waiken_101wx001_panel =3D {
> +	.modes =3D &waiken_101wx001_mode,
> +	.num_modes =3D 1,
> +	.bpc =3D 6,
> +	.size =3D {
> +		.width =3D 217,
> +		.height =3D 136,

[Severity: Low]
Is there a reason the physical height differs between the display mode and =
the
panel descriptor?

In waiken_101wx001_mode, height_mm is set to 135, but here in
waiken_101wx001_panel the size.height is set to 136. This mismatch will
cause userspace applications querying DRM properties to receive inconsistent
dimension values depending on whether they read connector or mode propertie=
s.

> +	},
> +	.bus_format =3D MEDIA_BUS_FMT_RGB666_1X18,
> +	.connector_type =3D DRM_MODE_CONNECTOR_DPI,
> +	.bus_flags =3D DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDG=
E,
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-dxl_lcdif-=
v1-0-6761a8a6592b@nxp.com?part=3D3

