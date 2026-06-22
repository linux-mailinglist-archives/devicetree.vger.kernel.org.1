Return-Path: <devicetree+bounces-314170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RZi+BqyfOGrRegcAu9opvQ
	(envelope-from <devicetree+bounces-314170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 04:36:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9896AC1B1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 04:36:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=osE6xlSA;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314170-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314170-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 113E030087A9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 02:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D1E330F7E8;
	Mon, 22 Jun 2026 02:35:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7676F13959D
	for <devicetree@vger.kernel.org>; Mon, 22 Jun 2026 02:35:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782095728; cv=none; b=YwHenHIyfegAggyY2wMMy/Lf9RdrP8hl5KAxWzeFbRrLZ1Q5Q8cdws8jYJ4V6O2Mpm0sAY56sCshk/pxwRKz79OmwVY6Y/zBhsS6YUnTANIwXrVtsQDupsAKETkjOZyOjhX6iNjPlyvaOsf906v7xCTd69e+gGAQkeii1MDw5Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782095728; c=relaxed/simple;
	bh=1tVsoPjJWHrSZww0djm4iqzuTQmt5MMEvOfL3nj5lQQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sirZPJPyAYb+85I7QTzxvJoOXq5pm1g+dqHu3uyDOByNJeG+QIx236ZoQKCf/lYxTn7acOlFjG9doDFE5D7VH6DU97ECmYToWkE4QiBv3OjQ1b76t3Wx5mWEJDUDZ4dsVUL2z4rOFJEMLSlE/gYYtAAbB8LCmRqVAISVv+8M+1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osE6xlSA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D837F1F000E9;
	Mon, 22 Jun 2026 02:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782095727;
	bh=Fe003+s0qybvqH1FrDpTJ6W3wcHyNtm2mczRLWxbtzQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=osE6xlSAQPjo0bJLKOtyc6GyZ2IRx0q+xJJMA61uc4jEfLQb4P3TDfzIxJDtx2XUP
	 Iwh3gzBKrOrF5Nmv3XH3ALwBSzSBNWqQAWn8OcNEIGBNNj969XsMLV7JCND78OxSmc
	 WVLJXwqLlWMQJH65KKf1pQyd+0CxTgIvnMBy9QyBh22BviwvO5pR7ebY0jJEee3JiB
	 SqwqTB/AK7gb/dy8ZmdljOpmkX7UM+PR/4/yX/Gt14zJ+85N5DpXxm/lvSFzC2rhWl
	 rOspWIEFu++HSI6mT1OFjr1yL94yt9q6W26/Rgfub+kObp12c1ObCZgNygx48ygxHa
	 +SdB9j7wox36g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/4] reset: cix: add sky1 audss auxiliary reset
 driver
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260622022520.3127103-4-joakim.zhang@cixtech.com>
References: <20260622022520.3127103-1-joakim.zhang@cixtech.com>
 <20260622022520.3127103-4-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 02:35:26 +0000
Message-Id: <20260622023526.D837F1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314170-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,cixtech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E9896AC1B1

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The reset status callback returns inverted logic compared to the a=
ctive-low hardware state.
- [High] The `sky1_audss_reset_status()` callback ignores the return value =
of `regmap_read()`, leading to the use of an uninitialized variable on read=
 failures.
- [High] Hardware update failures are silently ignored in the `assert`, `de=
assert`, and `reset` callbacks.
- [High] Reset operations access hardware registers without holding a PM ru=
ntime reference to the parent device.
--

commit ea91702e5e9b052b10549ef50f1a521b588916ef
Author: Joakim Zhang <joakim.zhang@cixtech.com>

reset: cix: add sky1 audss auxiliary reset driver
   =20
Add an auxiliary reset controller driver for the AUDSS CRU. Sixteen
software reset lines for audio subsystem peripherals are controlled
through one register in the CRU register map.

> diff --git a/drivers/reset/reset-sky1-audss.c b/drivers/reset/reset-sky1-=
audss.c
> new file mode 100644
> index 0000000000000..f29fe3554ec17
> --- /dev/null
> +++ b/drivers/reset/reset-sky1-audss.c

[ ... ]

> +static int sky1_audss_reset_set(struct reset_controller_dev *rcdev,
> +				unsigned long id, bool assert)
> +{
> +	struct sky1_audss_reset *priv =3D to_sky1_audss_reset(rcdev);
> +	const struct sky1_audss_reset_map *signal =3D &priv->map[id];
> +	unsigned int value =3D assert ? 0 : signal->mask;
> +
> +	return regmap_update_bits(priv->regmap, signal->offset, signal->mask, v=
alue);
> +}

[Severity: High]
Does this regmap access need to be protected by holding a runtime PM
reference on the parent device? If the parent device implements runtime PM,
can it suspend and disable clocks while a consumer calls this reset functio=
n,
potentially causing a bus hang?

> +
> +static int sky1_audss_reset_assert(struct reset_controller_dev *rcdev,
> +				   unsigned long id)
> +{
> +	sky1_audss_reset_set(rcdev, id, true);

[Severity: High]
Is it intentional to discard the error code returned by sky1_audss_reset_se=
t()?
If the underlying regmap_update_bits() fails, this will unconditionally rep=
ort
success.

> +	usleep_range(SKY1_RESET_SLEEP_MIN_US, SKY1_RESET_SLEEP_MAX_US);
> +	return 0;
> +}
> +
> +static int sky1_audss_reset_deassert(struct reset_controller_dev *rcdev,
> +				     unsigned long id)
> +{
> +	sky1_audss_reset_set(rcdev, id, false);

[Severity: High]
Should this also propagate the return value of sky1_audss_reset_set() inste=
ad
of ignoring potential hardware update failures?

> +	usleep_range(SKY1_RESET_SLEEP_MIN_US, SKY1_RESET_SLEEP_MAX_US);
> +	return 0;
> +}
> +
> +static int sky1_audss_reset(struct reset_controller_dev *rcdev,
> +			    unsigned long id)
> +{
> +	sky1_audss_reset_assert(rcdev, id);
> +	sky1_audss_reset_deassert(rcdev, id);

[Severity: High]
Does this code need to capture and propagate errors from the assert and
deassert steps? It seems hardware faults might be masked from caller driver=
s.

> +	return 0;
> +}
> +
> +static int sky1_audss_reset_status(struct reset_controller_dev *rcdev,
> +				   unsigned long id)
> +{
> +	struct sky1_audss_reset *priv =3D to_sky1_audss_reset(rcdev);
> +	const struct sky1_audss_reset_map *signal =3D &priv->map[id];
> +	unsigned int value;
> +
> +	regmap_read(priv->regmap, signal->offset, &value);

[Severity: High]
If regmap_read() fails, it leaves value uninitialized. Should this check
the return value of regmap_read() and return the error code to avoid using
uninitialized stack memory?

Also, similar to sky1_audss_reset_set(), does this register access need
pm_runtime_get_sync(dev->parent) to prevent reading from a suspended hardwa=
re
block?

> +	return !!(value & signal->mask);

[Severity: High]
Since sky1_audss_reset_set() writes 0 to assert the reset line, the hardware
appears to use an active-low scheme. However, this returns 0 when the bit is
cleared. The reset controller framework requires the status callback to ret=
urn
a positive value when asserted. Will this report inverted states to consumer
drivers?

> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622022520.3127=
103-1-joakim.zhang@cixtech.com?part=3D3

