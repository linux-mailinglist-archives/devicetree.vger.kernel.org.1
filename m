Return-Path: <devicetree+bounces-315123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UzxuBrqdO2qxaQgAu9opvQ
	(envelope-from <devicetree+bounces-315123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:04:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A77846BCCCA
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 11:04:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="UdsFFTp/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315123-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315123-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D438D3029AF2
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 09:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09AA63019AA;
	Wed, 24 Jun 2026 09:04:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88F83932FF
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 09:04:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782291891; cv=none; b=ZJO22M6o6Q2jW4d+kbz785RIdF0Q5Og/zjDvK0tOJDPuHIgP2Y8yw8oOZa28wbXtNKqtCqtMzSgxF6VHrXZRNGB+U8b6XSMvjN6ggvE+KK3WH62C0stJBK8qXqfH+67q66fXj8B2w+i87vQ3oApeS1mf9hmuBs5rH/QoOJIsdT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782291891; c=relaxed/simple;
	bh=3IBXieE6nSiPVvEaUlYCgUt5JohOj0H1wDEnxWROQTQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lmMpM0Lo5yE7oZZoW5Stn/XBW8+EL3Gfiz6h12juzcpd8/eVrUtg33wYiBBy+DDFSHeV+imW7r38yyUO0XqPXxfFs4lQ4pYES4oqe3FAfYhukMCbgfKGLcpHVwUMY2eB3gaChfA/atMySnnlmL83vJB5RD3MOXwY/U8FoaEBb3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdsFFTp/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 423F21F000E9;
	Wed, 24 Jun 2026 09:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782291890;
	bh=ltcEPjzV94rgUWdiJZzsLfZop8HCYB8ZSPfZjlC2Fa4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UdsFFTp/DWKDvZzGBG6yqQcjqwWjAxobDbHaxgj2Rz/X1cMOfN1SvSFL/O5aaWTEi
	 S15my4JwYmGURLVkICszZ3YOGXdd4X+pYBvoW2Gm9M3sh3P0ZB2Muwp2OhMnNdNvDi
	 gWZY8MwPHlp66KjdaOlhSVHxjofT1ZCo6nDMW5/3Pbsd14KkwPQscwE9Bp9YqpwOgf
	 3ALk+ty8Vvb1a5jnYPq3CwtxT6V9AIMmdLty37VaQq4ilqII9Nhqiamwo+Dhjot6Gl
	 8AWHOoitSCo+3VMGH2QncyBUlHEXvHFp7525/TlBa/eRCA+cDnh0/lRRGCnlAJFwYE
	 I2SCOwOhWTxOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] drm/panel: add Ilitek ILI7807S panel driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Arpit Saini" <arpit.saini@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260624-ili7807s-v3-2-ddf37052a289@oss.qualcomm.com>
References: <20260624-ili7807s-v3-0-ddf37052a289@oss.qualcomm.com>
 <20260624-ili7807s-v3-2-ddf37052a289@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 09:04:49 +0000
Message-Id: <20260624090450.423F21F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-315123-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,qualcomm.com:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:arpit.saini@oss.qualcomm.com,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A77846BCCCA

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Incorrect and non-atomic modification of `dsi->mode_flags` permane=
ntly enables Low Power Mode and introduces a data race.
- [High] Backlight `update_status` sends DSI commands without verifying tha=
t the panel is powered on, risking DSI host timeouts.
--

commit 2f966f15c21adb82ce5699cdffad22cac6628b98
Author: Arpit Saini <arpit.saini@oss.qualcomm.com>

drm/panel: add Ilitek ILI7807S panel driver
   =20
Add a DRM panel driver for the DLC DLC0697 1080x1920@60Hz MIPI DSI
panel based on the Ilitek ILI7807S display controller.

> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili7807s.c b/drivers/gpu/=
drm/panel/panel-ilitek-ili7807s.c
> new file mode 100644
> index 0000000000000..8ddfab2693ec8
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili7807s.c

[ ... ]

> +static int ili7807s_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi =3D bl_get_data(bl);
> +	u16 brightness =3D backlight_get_brightness(bl);
> +	int ret;
> +

[Severity: High]
Does this code send DSI commands without verifying if the panel is powered =
on?

If the panel regulators are disabled and reset is asserted via
ili7807s_unprepare(), attempting to communicate with it here during a sysfs
backlight update could result in DSI host bus timeouts or hardware lockups.

Should there be a check against a power state tracking flag before
sending the DCS command?

> +	dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
> +
> +	ret =3D mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +
> +	dsi->mode_flags |=3D MIPI_DSI_MODE_LPM;

[Severity: High]
Does unconditionally setting MIPI_DSI_MODE_LPM here permanently alter the
panel's base operating state?

Since the mode_flags are modified without synchronization with DRM modeset
paths (like ili7807s_on() and ili7807s_off()), could this create a data
race?

Also, the logic clears the flag before the transaction and unconditionally
sets it afterwards, leaving Low Power Mode permanently enabled for
subsequent DSI transmissions.

> +
> +	return ret;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624-ili7807s-v=
3-0-ddf37052a289@oss.qualcomm.com?part=3D2

