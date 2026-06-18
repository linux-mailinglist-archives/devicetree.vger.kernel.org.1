Return-Path: <devicetree+bounces-313437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G5uNG+XgM2pnHgYAu9opvQ
	(envelope-from <devicetree+bounces-313437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:13:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D494869FF1C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:13:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BbGMuVXB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313437-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313437-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D867030219A9
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF9583E9588;
	Thu, 18 Jun 2026 12:13:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CB153E6DDB
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 12:13:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781784801; cv=none; b=cEm9phzhb0yjKrwr/srdiqjZa0z7UZZHd0E1PloTg6mEyyjMIa5lKap8R5rFBp2Cs/Bh36MmbR9PinEiWpfSf903cui8dK1/0teZCjcKU1ANKEFrdn1VGAzAhAi8ADnV8aKaEVvEKw1JXJRNQmCCWdonFF9DiDSbAdwW9ribPug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781784801; c=relaxed/simple;
	bh=iq9CmFHqcEOun1d6C//GJ9aDtKBFAs2e2yIStWA4Sj0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jBOo8wCCtfjfQO0taFq6ia7nvuY7eQZMJP83wUYTdcCQhR3FAKdY18E7IpMrj3UfkHZk2xx+kREaCN3h5hyEUyO8OJDyJsU2IyOtvmjnVpzDgCeReJumjUM4T6sfwNTmysRObvSS/aFmRSsVfUtcm/LtWH8JwW/M8PpPBZJCA94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbGMuVXB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28C981F000E9;
	Thu, 18 Jun 2026 12:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781784800;
	bh=jYLIlsKcfFbNcQKzZAxktYXtvjdVYATd4BFU73AMEyU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BbGMuVXBWCZ3dmlVuhFUE9u/BHxa+RQUUurDhO6ZpNP9hmBaw81+u8xpQumPf66Nm
	 C7afoCCYhC4AKm/Y4VGEF77YxHBVlRQwK1aigchT8ewEqW7LLiPQBmCtfLpCSsf+5n
	 vMk7Ea3Ub95CdUQgFMo5M29WjMOhLgAslRvS3/q/7WLCiRUEEHWpmpvDZYhs3owMUn
	 p9g0p3nOwke+w4WkaL9jKRK97eTHR/QLPP9DTCENF0Oba8gSEUWoDBHellsUI3iC0B
	 J+VSYXJtC1sZ41i77S568+pol5rZe47hiyZJT3Klztdibu8hC663XHgCY4VfMX2ML/
	 ZGxjmWSf8zCyg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 2/2] hw_random: timeriomem-rng: add configurable read
 width and data mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260618120110.36439-2-inasj268@gmail.com>
References: <20260618120110.36439-1-inasj268@gmail.com>
 <20260618120110.36439-2-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 12:13:19 +0000
Message-Id: <20260618121320.28C981F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313437-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:inasj268@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D494869FF1C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Race condition and broken teardown sequence between module unbind =
and active hwrng readers causes Deadlocks or Use-After-Free of the private =
data.
--

commit d12f91b70dc751fd43c31e87b02671ebcad42270
Author: Jad Keskes <inasj268@gmail.com>

hw_random: timeriomem-rng: add configurable read width and data mask

This commit implements configurable read sizes and data masking for the
timeriomem-rng driver. It adds support for 1, 2, or 4-byte reads and an
optional bitmask to filter output entropy, configurable via platform data
or device tree.

> diff --git a/drivers/char/hw_random/timeriomem-rng.c b/drivers/char/hw_ra=
ndom/timeriomem-rng.c
> index e61f063932090..42393409f22ad 100644
> --- a/drivers/char/hw_random/timeriomem-rng.c
> +++ b/drivers/char/hw_random/timeriomem-rng.c

[ ... ]

> @@ -71,11 +76,28 @@ static int timeriomem_rng_read(struct hwrng *hwrng, v=
oid *data,
>  			usleep_range(period_us,
>  					period_us + max(1, period_us / 100));
> =20
> -		*(u32 *)data =3D readl(priv->io_base);
> -		retval +=3D sizeof(u32);
> -		data +=3D sizeof(u32);
> -		max -=3D sizeof(u32);
> -	} while (wait && max > sizeof(u32));
> +		switch (priv->reg_io_width) {
> +		case 1: {
> +			u8 val =3D readb(priv->io_base) & priv->mask;
> +			*(u8 *)data =3D val;
> +			break;
> +		}
> +		case 2: {
> +			u16 val =3D readw(priv->io_base) & priv->mask;
> +			*(u16 *)data =3D val;
> +			break;
> +		}
> +		case 4: {
> +			u32 val =3D readl(priv->io_base) & priv->mask;
> +			*(u32 *)data =3D val;
> +			break;
> +		}
> +		}
> +
> +		retval +=3D chunk;
> +		data +=3D chunk;
> +		max -=3D chunk;
> +	} while (wait && max > chunk);
> =20
>  	/*
>  	 * Block any new callers until the RNG has had time to generate new

[Severity: High]
This is a pre-existing issue, but can this sequence lead to deadlocks or a=
=20
use-after-free during module teardown?

Because the driver uses devm_hwrng_register(), devres unregisters the RNG
after the driver's remove function returns. The timeriomem_rng_remove funct=
ion
explicitly calls hrtimer_cancel(&priv->timer), but concurrent readers might
still be active in timeriomem_rng_read.

If a reader is waiting earlier in this function at
wait_for_completion(&priv->completion) when the timer is cancelled, won't it
hang forever since the timer will never fire to wake it up?

Alternatively, if the reader is already past the wait, it will unconditiona=
lly
call hrtimer_restart(&priv->timer) slightly further down at the end of this
function. Doesn't this re-arm the timer after it was cancelled by the remov=
al
thread?

If the timer is re-armed and devres subsequently frees the
timeriomem_rng_private data, won't the timer eventually fire and access fre=
ed
memory?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618120110.3643=
9-1-inasj268@gmail.com?part=3D2

