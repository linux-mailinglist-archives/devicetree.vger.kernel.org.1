Return-Path: <devicetree+bounces-312972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0f18IReMMmps1wUAu9opvQ
	(envelope-from <devicetree+bounces-312972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:59:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2FE69963C
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 13:59:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=joINmcZb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312972-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312972-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 65B483025149
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 11:41:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0C283E638E;
	Wed, 17 Jun 2026 11:41:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930202E6CB8
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 11:41:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781696517; cv=none; b=t4iruIcc/Xy2kAzOvApSUIJ97frcZuL0aeUhQGsRhvl+BrrYwaW9g9L1CyZQZqvs3cNeuN3VNMLDnlOK9DISOE0jlHzFyY9nQKI/EGCvnfCkitAJlT0Eyx1GRAXgOaoepmBBxpbt+6UB70BvMbbm4fuWCkgwidvDtt/iCp69rjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781696517; c=relaxed/simple;
	bh=wpDKfIMUcsyKGjaZA0VJT5DSVeW0kJLdHkeq6ldB0AM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Pv4e9/4/tdUXX1XpkXsPTQpRoxN5qewvotp7kLJI4LlkNKcSGxY1NJhoNmsqc2aSzmn6Oc2easSCDUiXdvj6MOgwqcPmCOBTllVPC7TrVtkwBRgAn1GweLn8GYfhwRMOf3PDQBQ5WeTltOaM/po+h2dhXI8GZ1Lg+3fb4P15qKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joINmcZb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E63AE1F000E9;
	Wed, 17 Jun 2026 11:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781696516;
	bh=WN+ZQrsXLi2AGYpoKkcpE+7TPX9bBy1fC4db7uqJ0jk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=joINmcZb2jsadXTuYPePaZUmmBnW0TG9CDfk8l3XqHX47HAC8HsZk9TNbsbwT2/4S
	 x/UnqUzeisoWCTWCtXB5hvpw+R07Vc2UVHHyIh2f23989+M6CtIBPC97YijFRyYBkc
	 IT8pQz0kL76s9mxPiGaDnKH2Y5e/vmu5doTyxQ9/YGDhBHvTVzpeImJr38dtd5Oj58
	 cOvtdYhePwtT4d0yxTnLA3ME49eMspXRXUGDt7CJH8o9g/GL1nSTcTg/TBqncYAYrq
	 AnxTCJUY6F4V3nUC+0M+7G6XDu4O2P3CTwNqvigZXDCnJeJUFmh2TEtjRG2amlYHPF
	 qQaspTT7ppnnw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] hw_random: timeriomem-rng: add configurable read
 width and data mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617112642.1897096-2-inasj268@gmail.com>
References: <20260617112642.1897096-1-inasj268@gmail.com>
 <20260617112642.1897096-2-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 11:41:55 +0000
Message-Id: <20260617114155.E63AE1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312972-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inasj268@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ED2FE69963C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Use-After-Free / Deadlock in the device removal path due to incorr=
ect devres ordering.
--

commit 4300c70f186763a1c545b060ff78e036f3434d38
Author: Jad Keskes <inasj268@gmail.com>

    hw_random: timeriomem-rng: add configurable read width and data mask

This commit implements configurable read widths (8, 16, or 32 bits) and data
masking for the timeriomem-rng driver. It updates the read loop to dispatch
based on width to avoid bus errors, and uses properties from platform data =
or
device tree.

> diff --git a/drivers/char/hw_random/timeriomem-rng.c b/drivers/char/hw_ra=
ndom/timeriomem-rng.c
> index e61f063932090..4557326618c90 100644
> --- a/drivers/char/hw_random/timeriomem-rng.c
> +++ b/drivers/char/hw_random/timeriomem-rng.c
[ ... ]
> @@ -167,8 +219,8 @@ static int timeriomem_rng_probe(struct platform_devic=
e *pdev)
>  		return err;
>  	}
> =20
> -	dev_info(&pdev->dev, "32bits from 0x%p @ %dus\n",
> -			priv->io_base, period);
> +	dev_info(&pdev->dev, "%ubit from %p @ %dus\n",
> +		 priv->width, priv->io_base, period);
> =20
>  	return 0;
>  }

[Severity: High]
This isn't a bug introduced by this patch, but looking at the probe function
above, it uses devm_hwrng_register() to register the RNG device. This means
that hwrng_unregister() is automatically called by devres after
timeriomem_rng_remove() returns.

In timeriomem_rng_remove(), the driver manually calls
hrtimer_cancel(&priv->timer). At this point, the RNG is still registered and
fully exposed to concurrent readers. This ordering creates two distinct iss=
ues:

1. Deadlock: If a concurrent reader is inside timeriomem_rng_read() and
blocking on wait_for_completion(&priv->completion), it will wait forever
because the timer was just cancelled. When devres subsequently calls
hwrng_unregister(), it waits indefinitely for the reader's reference count =
to
drop, deadlocking the unbind process.

2. Use-After-Free: If a concurrent reader finishes its read loop just after
remove() cancelled the timer, it unconditionally executes
hrtimer_restart(&priv->timer) in the read path:

timeriomem_rng_read() {
    ...
    priv->present =3D 0;
    reinit_completion(&priv->completion);
    hrtimer_forward_now(&priv->timer, priv->period);
    hrtimer_restart(&priv->timer);
    ...
}

The reader then completes, remove() finishes, and devres frees the priv
structure. The re-armed timer will then fire and dereference the freed priv
pointer.

Could this devres ordering issue be addressed by manually unregistering the
hwrng before cancelling the timer in remove(), or by using a custom devm
action to ensure correct teardown order?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617112642.1897=
096-1-inasj268@gmail.com?part=3D2

