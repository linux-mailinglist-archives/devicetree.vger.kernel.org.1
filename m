Return-Path: <devicetree+bounces-313054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aP++KOiyMmr/3gUAu9opvQ
	(envelope-from <devicetree+bounces-313054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:44:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA2169AA14
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 16:44:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cQAH80HU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313054-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313054-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8AA2E3010F38
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 14:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257162E737C;
	Wed, 17 Jun 2026 14:44:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1119D1D5ADE
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 14:44:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781707491; cv=none; b=m8sNlSil8azfWcTi+ugOyWklAPNaJ7wFgqcNmI9qPV/YTcSx+HecaAJ8oHpdhldIlylURD1aYEEc+r26UmDjG7k1DmFnqa5thI4DzLb1EFSeOa23Ttkci/mCY56uMSyWu9kRHywG7pJNIJn6zk6w3YpZqDsVNTwfujUILD7DQ1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781707491; c=relaxed/simple;
	bh=dAokVFbN9rgGN/75w1j8dXU6wTD6OflrF2XAsHb3tNc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Smciu27IFiDd4glvFtfvkU7yBoMLcwhGlIMyaZ97x6UgEDzZhT7JEEvx2KrqM6vAmT4OJzogiohqpK8rTIK0xYJrcGqODGgHoUcrrjIyZtSDWJnjrhjFZD+9IJdC7y/0UrjeX/xqlQ5TmQR5F60Kxnsd77QhemySzpX2hrDF/6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQAH80HU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 773351F000E9;
	Wed, 17 Jun 2026 14:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781707489;
	bh=i1QGyEzd9SfN/JmsrXIU4CHzDaY9YbgegFFRVptvylk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cQAH80HUwiVGrVPmzepK4Op6xb5F22tZcmyd7P9EN/7kBbFlyxOkfERMZT9tUl2iG
	 YPd08/22Zs1HCuWwZ1cw3JUyhuz26R489EKZTJj63Qs3KUH8PIPiYvapMbCu3y1F6P
	 pn58+IjdgUTYIYV8GjnFtQZvJ57KNNdeOeWTbWp6HHtezls6NPWzBd7XoMR/feq7Ba
	 ZakwJZQB6EFADLntjBaks/J0EkKt6jLgoChKFvHrOFKsywmr8pviPMNNDAkjVcA6+t
	 q2TRm8MSU8XpS76aU9Stom7nmlY88vCnuFxzXVgRy4GKAZA7Cc+b731xDL2WFWQAPw
	 AcO0YKvE+5Ilg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 2/2] drm/panel: Add Ilitek ILI9488 controller driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Igor Reznichenko" <igor@reznichenko.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260617143245.372182-3-igor@reznichenko.net>
References: <20260617143245.372182-1-igor@reznichenko.net>
 <20260617143245.372182-3-igor@reznichenko.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 14:44:49 +0000
Message-Id: <20260617144449.773351F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-313054-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[reznichenko.net:email,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:igor@reznichenko.net,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9BA2169AA14

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing NULL check for the result of device_get_match_data() leads=
 to a kernel oops.
- [High] Undefined function call and missing DRM panel unregistration leadi=
ng to Use-After-Free.
--

commit c22f05cd630ecc7dace66102729e2ea4cdfd93fc
Author: Igor Reznichenko <igor@reznichenko.net>

drm/panel: Add Ilitek ILI9488 controller driver

This commit adds support for the Ilitek ILI9488 DSI controller.
It introduces power sequencing and DSI initialization tailored
for the FocusLCDs E35GH-I-MW800-CB panel.

> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9488.c b/drivers/gpu/d=
rm/panel/panel-ilitek-ili9488.c
> new file mode 100644
> index 0000000000000..7302766034fc9
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9488.c
[ ... ]
> +static int ili9488_dsi_probe(struct mipi_dsi_device *dsi)
> +{
> +	struct device *dev =3D &dsi->dev;
> +	struct ili9488 *ili;
> +	int i, ret;
> +
> +	ili =3D devm_drm_panel_alloc(dev, struct ili9488, panel, &ili9488_funcs,
> +				   DRM_MODE_CONNECTOR_DSI);
> +	if (IS_ERR(ili))
> +		return PTR_ERR(ili);
> +
> +	ili->desc =3D device_get_match_data(dev);
> +	ili->dsi =3D dsi;
> +
> +	dsi->mode_flags =3D ili->desc->mode_flags;

[Severity: High]
Can this dereference a NULL pointer if the device is instantiated without
matching firmware data?

The function device_get_match_data() can return NULL, for example via sysfs
or string-based matching. Verifying the return value before accessing
ili->desc->mode_flags would prevent a potential NULL pointer dereference.

[ ... ]
> +	ret =3D drm_panel_of_backlight(&ili->panel);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "failed to get backlight\n");
> +
> +	ili->panel.prepare_prev_first =3D true;
> +
> +	ret =3D devm_drm_panel_add(dev, &ili->panel);

[Severity: High]
Does the devm_drm_panel_add() function exist in the kernel, or will this
cause a build failure?

Additionally, if this call is replaced with drm_panel_add(), the driver
lacks a corresponding .remove() callback or a devres action to unregister
the panel with drm_panel_remove(). Since the panel structure is allocated
with devm_drm_panel_alloc() and freed on driver unbind, failing to unregist=
er
the panel will leave it on the DRM core's global panel list, leading to a
Use-After-Free when the list is later accessed.

> +	if (ret)
> +		return ret;
> +
> +	ret =3D devm_mipi_dsi_attach(dev, dsi);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to attach to DSI host\n");
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617143245.3721=
82-1-igor@reznichenko.net?part=3D2

