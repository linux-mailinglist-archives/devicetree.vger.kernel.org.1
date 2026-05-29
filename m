Return-Path: <devicetree+bounces-304165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MShBvNeGWpevwgAu9opvQ
	(envelope-from <devicetree+bounces-304165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:40:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A7C6000F6
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 11:40:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 49BDD300B475
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 09:37:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF1AE3BF667;
	Fri, 29 May 2026 09:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7YCstr2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1E13BD64D
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 09:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780047439; cv=none; b=sGIR7D1Wyc2vtbmadQbOdQiuOgLzx8PtKOapjgc3IklVr1fyMHlYF9zSy9xWH6pHKcu5VxZUkoFr1UQxpQ5bc8vnHjlTdF1BEm6Bod0AQshCD3jICXIx6AWTPxYvZyQ/5TLAThttwJIHT6B8meN4hQHzoPAnpGtkZxU4BE8anJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780047439; c=relaxed/simple;
	bh=r0MH5ZqfMCRbz8dg3wOWdglKGZFxIrGg7kZqKui4hxY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LWKWl3WZWrpUG7EXgHsoNGxKjyIOL1Ibob37I4ewna/nsM99kPOnSn4NcIdXgpjoBxaS46BBg9aeAejG9lKKhgsubBHP18ct2GYAZjLQ6vWYNAGN7A6CTsMyifOoOkiBF/rmxIeEoGA62aGWaPCtOlPaEHdlB/wFuqEoMe39VSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7YCstr2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B61AB1F00893;
	Fri, 29 May 2026 09:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780047436;
	bh=9wkhyPChcehQyv93ZjEAX3HK+Ciinq2UgYkv9IpkFlY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K7YCstr2H9Z6xHqvRAoneSISAX4mxp37/6ruHKtvVOnJj6xdgQ4l9nMpSPCGF5oeP
	 PvckxwOUN1pWi5X0hVNJ7mk/9MJSTf92W8KzbX7bLIf5aHDELqKKw6RM2KrWzpFhgd
	 Sb7f3z/ZH9iqVyi0blaefar9fTicRwHxUk5kw5+hOaFbKYwZopzC9M7ZfVet1RfiSx
	 slx5et45btsto7QlbqUIxVAXZafXMTq90pvou2+B6E76c09s2A2VJv0GTAPYt4H9DK
	 6cMMgNwZ0/JN3Ig9AfIJXESbTjiXlAxgdhLZ3/cRG6STyj0uF5DKGIlE+hVyyJjW0/
	 5T8d19nH9wbAA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 11/15] drm/tidss: oldi: Fix OLDI signal polarities
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260529-beagley-ai-display-v3-11-7fefdc5d1adf@ideasonboard.com>
References: <20260529-beagley-ai-display-v3-11-7fefdc5d1adf@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 09:37:15 +0000
Message-Id: <20260529093715.B61AB1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304165-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,ideasonboard.com:email]
X-Rspamd-Queue-Id: 60A7C6000F6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The `bus_format` field in `struct tidss_oldi` caches transient ato=
mic state in a persistent device structure, causing state leakage that can =
lead to incorrect hardware programming.
--

commit aa70ea0cc740dc55d3518c6263c986fe44dc96b7
Author: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

drm/tidss: oldi: Fix OLDI signal polarities

This commit fixes OLDI signal polarities by removing drm_bridge_timings,
setting the correct input_bus_cfg.flags in tidss_oldi_atomic_check(),
and setting OLDI_DEPOL based on the DE bus flag.

> diff --git a/drivers/gpu/drm/tidss/tidss_oldi.c b/drivers/gpu/drm/tidss/t=
idss_oldi.c
> index 17c535bfa0576..e925ddaa4fd6a 100644
> --- a/drivers/gpu/drm/tidss/tidss_oldi.c
> +++ b/drivers/gpu/drm/tidss/tidss_oldi.c
> @@ -183,7 +184,8 @@ static int tidss_oldi_config(struct tidss_oldi *oldi)
>  			 "OLDI%u: DSS port width %d not supported\n",
>  			 oldi->oldi_instance, bus_fmt->data_width);
> =20
> -	oldi_cfg |=3D OLDI_DEPOL;
> +	if (bridge_state->input_bus_cfg.flags & DRM_BUS_FLAG_DE_LOW)
> +		oldi_cfg |=3D OLDI_DEPOL; /* 1 =3D active low */
> =20
>  	oldi_cfg =3D (oldi_cfg & (~OLDI_MAP)) | (bus_fmt->oldi_mode_reg_val << =
1);

[Severity: High]
This isn't a bug introduced by this patch, but does the use of bus_fmt
(which is assigned from the persistent oldi->bus_format earlier in this
function) cache transient atomic state in the persistent device structure?

During format negotiation in tidss_oldi_atomic_get_input_bus_fmts (called
during the atomic check phase), the negotiated bus format is cached in the
persistent oldi->bus_format pointer. If user space performs a
DRM_MODE_ATOMIC_TEST_ONLY commit that requests a different format,
oldi->bus_format is overwritten.

Since it is a test-only commit, the hardware state remains unchanged.
However, if the system later suspends and resumes, drm_atomic_helper_resume
commits the saved active state directly without re-running the atomic_check
hooks.

When tidss_oldi_atomic_pre_enable executes during resume, tidss_oldi_config
reads the corrupted oldi->bus_format from the aborted test commit instead
of deriving it from the active bridge_state. This results in the OLDI
hardware being programmed with the wrong data width and register values,
distorting or blanking the display.

Since this patch already passed bridge_state down to tidss_oldi_config(),
could the format derivation be updated to use
bridge_state->input_bus_cfg.format (or output_bus_cfg.format) instead of
the cached oldi->bus_format?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529-beagley-ai=
-display-v3-0-7fefdc5d1adf@ideasonboard.com?part=3D11

