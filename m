Return-Path: <devicetree+bounces-323311-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2sLmI7ssT2pzbgIAu9opvQ
	(envelope-from <devicetree+bounces-323311-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:08:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4A572CB09
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:08:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UDLiveJO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323311-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323311-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 36AE03005771
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 05:06:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A62E43644A1;
	Thu,  9 Jul 2026 05:06:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BA01E633C;
	Thu,  9 Jul 2026 05:06:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573591; cv=none; b=QSF3Poxj+Zsj5lTl09KvkCSpKOUfZru9PY+iFEK/S7sFVeiwQMxNID6beo3mmecxnFMmJmP6zOwYpvIOnxOm8a7LX49kdJYfuvsinHOYP9sGLIwslEyy5BEM50bpxifl0XhvMvg93fGrwWlYiMe8v95wBHwsdUi0TaZ/ajY2Wcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573591; c=relaxed/simple;
	bh=/2C8aJgDuJioyp59wKJcXUItJqNTYb2/kvM5Khca6iA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EZayLXM3TqF7lD3AV8jVrUG+9aJrkI7gTWzzmjGToxgfGtyVE2Kdg6htTPaq/pTwOK5upPLdhC/cVjiw1f/1LoH29D/T+l172Lo6U8b0dcYjbXz1Q6fg4E1HATiVMR08P0ccndyOWLTzNitNnbbxwdEuqqeStdVqbErANO3o5+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDLiveJO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEBD81F000E9;
	Thu,  9 Jul 2026 05:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783573590;
	bh=lBd/AEOwFIJjqmiEGoQ77PFU1QqpGxax73B9Pm5ZnXM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UDLiveJOF0N2h0ShNUdlLPLBQJCmEbCiCg0VE1kIc3Qxd+DxyODE+JKCu01atza2q
	 Is45AJjabwffBczFe5pxfG5P9NtPUEgp3MAt+ykpR37pwQnPmd+Hfqb3dLyJw+kV6l
	 pATyOQ8KF/DKdJkCH2op74VKj+yryKR0KJo4M1KzSR6MthPf8UKrw+dJNZF+hWQqnK
	 66ieNvy/fDf0nH1H0cmzYNqr3irfhRwFPrxCKZiB8XRa3C4AsEW0Df/S3WJ8He7gzv
	 LbcYgtoghgLZfms5yWYHn6eti+5pgy/ORF8OHwclnInIlT5/UdepfkGu4Lv3LNtK5Z
	 z3mSt4gJoRgog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 02/11] Input: samsung-keypad - handle compact binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260708-samsung-kp-v2-2-3c6ed4c9b3b6@gmail.com>
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
 <20260708-samsung-kp-v2-2-3c6ed4c9b3b6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 05:06:29 +0000
Message-Id: <20260709050629.BEBD81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323311-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DE4A572CB09

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Legacy device tree bindings for keypad row/column count are ignore=
d and overwritten, breaking existing platforms.
--

--- Patch [2]: [PATCH v2 02/11] Input: samsung-keypad - handle compact bind=
ing ---
commit 43d179d444ff3e714e66f7ac32f10fcc817c6f15
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Input: samsung-keypad - handle compact binding

Adds support for standard matrix keymap bindings to the Samsung keypad
driver, allowing easier conversions from platform data to static device
properties.

> diff --git a/drivers/input/keyboard/samsung-keypad.c b/drivers/input/keyb=
oard/samsung-keypad.c
> index 17127269e3f05..b9d4ea5f202ae 100644
> --- a/drivers/input/keyboard/samsung-keypad.c
> +++ b/drivers/input/keyboard/samsung-keypad.c

[ ... ]

> +static const struct samsung_keypad_platdata *
> +samsung_keypad_parse_properties(struct device *dev)
> +{
> +	const struct matrix_keymap_data *keymap_data;
> +	struct samsung_keypad_platdata *pdata;
> +	u32 num_rows =3D 0, num_cols =3D 0;
> +	int error;
> +
>  	pdata =3D devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
> -	if (!pdata) {
> -		dev_err(dev, "could not allocate memory for platform data\n");
> +	if (!pdata)
>  		return ERR_PTR(-ENOMEM);
> -	}
> =20
> -	of_property_read_u32(np, "samsung,keypad-num-rows", &num_rows);
> -	of_property_read_u32(np, "samsung,keypad-num-columns", &num_cols);
> -	if (!num_rows || !num_cols) {
> -		dev_err(dev, "number of keypad rows/columns not specified\n");
> -		return ERR_PTR(-EINVAL);
> -	}
> +	device_property_read_u32(dev, "samsung,keypad-num-rows", &num_rows);
> +	device_property_read_u32(dev, "samsung,keypad-num-columns", &num_cols);
> +
> +	error =3D matrix_keypad_parse_properties(dev, &num_rows, &num_cols);
> +	if (error)
> +		return ERR_PTR(error);

[Severity: High]
Will this break probing on existing platforms that use the legacy bindings?

Looking at matrix_keypad_parse_properties() in drivers/input/matrix-keymap.=
c,
it unconditionally resets the row and column pointers to 0 before attempting
to read the modern properties:

int matrix_keypad_parse_properties(struct device *dev,
				   unsigned int *rows, unsigned int *cols)
{
	*rows =3D *cols =3D 0;

	device_property_read_u32(dev, "keypad,num-rows", rows);
	...

If the modern "keypad,num-rows" properties are absent, it seems this will
wipe out the successfully parsed legacy "samsung,keypad-num-rows" values
and return an error, causing the probe to abort.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-samsung-kp=
-v2-0-3c6ed4c9b3b6@gmail.com?part=3D2

