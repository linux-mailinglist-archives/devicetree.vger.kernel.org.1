Return-Path: <devicetree+bounces-312173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ALwSMLBRMGrlRQUAu9opvQ
	(envelope-from <devicetree+bounces-312173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 21:25:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 336116896C9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 21:25:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PkosiJrw;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312173-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312173-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 415A6302FA07
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 19:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DDE838BF61;
	Mon, 15 Jun 2026 19:25:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE253ACEEB
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 19:25:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781551534; cv=none; b=m1RnnpKFZn2hjflStkdoTzaNubAv7BVmOt2vmqeQMzb8NpstrocAQB/cXkb32NzOOKqGIHgG3RzVnlsgKrHxbfRIvSui6Gxc3PiOHaSVUrOjr4sNo9GUckhAhxXQkRpT7kVdeXL9tZM3E4IvJp5+3hNnzox+HQjWZArgZp1eG9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781551534; c=relaxed/simple;
	bh=2MVI3gO2LWe3l3uEuuA2o47MtHvcfUHcjqFVp+S4hiA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NMWvItzUSmR4C8l1SvDq3amj19qD/AU4/ATajjQeuyeHt011SDIsBQoaUhHvnk8KAR4efOaksfxoU2FhnnHBW502u9bpJaOdLkPxjJacNTG7fim7OtzvatSYOGw4zYkD7ANwI4LXDnOjQcmVbMMPs7Lku1QJDoUMV0ITs8BzL7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkosiJrw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 878751F000E9;
	Mon, 15 Jun 2026 19:25:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781551533;
	bh=TaHZWPxypHF9VpxaVZPWXDJBJasn4wIT5ej1hWmq8do=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PkosiJrwZ+gS0LNpfNZARiMNiLSmWnqzp1NtORfxgzji5Ag/kC01CvCJ3OFw22CGM
	 /wHL+Tk2E+I9YzGeCesLcJdv1oGjVGsz3xp84dCFJWdMU0xHRQ0etw3A/Rzdvk+TWP
	 WEd4GkQ8EPA5CIpYpsfE2sYOXnIq+J79lNZZmLjzyeQGmJHcDwgS2s5kCOElRqW8TT
	 64lrl0X06tgs/i0pvmNvoIK+GYIL7tHjzi/rFA02WBp7396uu+REgr9FasShWg+fct
	 gwx2gbZ1oMPoucsxIOasUuQkEVLps93dbkHup50AuLG8wiPL3m0e6X/YU1bakyZXir
	 OuCiv0bYQFovQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] hw_random: timeriomem-rng: add configurable read width
 and data mask
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jad Keskes" <inasj268@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615170922.1132642-1-inasj268@gmail.com>
References: <20260615170922.1132642-1-inasj268@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 19:25:32 +0000
Message-Id: <20260615192532.878751F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312173-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,devicetree.org:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 336116896C9

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [Medium] The patch introduces a new device tree binding schema file but l=
eaves the old schema intact, causing validation conflicts.
- [Low] Using the modulo operator `%` on a `resource_size_t` variable cause=
s an undefined reference link error on 32-bit platforms.

Pre-existing issues:
- [High] The driver cancels the timer in `remove()` but relies on `devm` cl=
eanup to unregister the hwrng device, creating a teardown race condition th=
at leads to use-after-free or deadlock.
--

commit 57d226c081fc616a1deb344ec82199ee7e9c1059
Author: Jad Keskes <inasj268@gmail.com>

hw_random: timeriomem-rng: add configurable read width and data mask

The TODO for supporting read sizes other than 32 bits and masking has
been sitting in this driver since 2009.  Implement it.

> diff --git a/Documentation/devicetree/bindings/rng/timeriomem-rng.yaml b/=
Documentation/devicetree/bindings/rng/timeriomem-rng.yaml
> new file mode 100644
> index 0000000000000..0d8460e9f9163
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/timeriomem-rng.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rng/timeriomem-rng.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Timer IOMEM Hardware Random Number Generator

[Severity: Medium]
Will this new device tree binding schema file conflict with the existing
schema?

The patch introduces this new schema but does not appear to replace or remo=
ve
the existing timeriomem_rng.yaml file. Since both schemas match the same
compatible =3D "timeriomem_rng" string and the old schema specifies
additionalProperties: false, any device tree node including the newly added
width or mask properties might pass this new schema but fail the old schema=
's
validation, which would break dt_binding_check.

> diff --git a/drivers/char/hw_random/timeriomem-rng.c b/drivers/char/hw_ra=
ndom/timeriomem-rng.c
> index e61f063932090..9308988521473 100644
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
> +		switch (priv->width) {
> +		case 8: {
> +			u8 val =3D readb(priv->io_base) & priv->mask;
> +			*(u8 *)data =3D val;
> +			break;
> +		}
> +		case 16: {
> +			u16 val =3D readw(priv->io_base) & priv->mask;
> +			*(u16 *)data =3D val;
> +			break;
> +		}
> +		case 32: {
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

[Severity: High]
This is a pre-existing issue, but does the driver have a teardown race
condition between remove() and devres cleanup?

In timeriomem_rng_remove(), hrtimer_cancel() is explicitly called to stop t=
he
timer. However, because the RNG device was registered with
devm_hwrng_register() during probe, it remains accessible to userspace and =
the
hwrng core until the devres cleanups run strictly after remove() returns.

If a concurrent read is blocked on wait_for_completion() when the timer is
cancelled, it could hang indefinitely, deadlocking the reader thread and the
subsequent hwrng_unregister() call in devres cleanup.

Alternatively, if a reader completes its wait and unconditionally calls
hrtimer_restart() in timeriomem_rng_read() after the cancellation, the timer
might be re-armed:

drivers/char/hw_random/timeriomem-rng.c:timeriomem_rng_read() {
    ...
	priv->present =3D 0;
	reinit_completion(&priv->completion);
	hrtimer_forward_now(&priv->timer, priv->period);
	hrtimer_restart(&priv->timer);
    ...
}

When the devres cleanup later unregisters the RNG and frees the priv
structure, this re-armed timer will eventually fire, potentially dereferenc=
ing
a freed pointer.

[ ... ]
> @@ -145,9 +164,42 @@ static int timeriomem_rng_probe(struct platform_devi=
ce *pdev)
>  		if (!of_property_read_u32(pdev->dev.of_node,
>  						"quality", &i))
>  			priv->rng_ops.quality =3D i;
> +
> +		of_property_read_u32(pdev->dev.of_node,
> +				     "width", &priv->width);
> +		of_property_read_u32(pdev->dev.of_node,
> +				     "mask", &priv->mask);
>  	} else {
>  		period =3D pdata->period;
>  		priv->rng_ops.quality =3D pdata->quality;
> +
> +		if (pdata->width_set)
> +			priv->width =3D pdata->width;
> +		if (pdata->mask_set)
> +			priv->mask =3D pdata->mask;
> +	}
> +
> +	if (priv->width =3D=3D 0)
> +		priv->width =3D 32;
> +
> +	switch (priv->width) {
> +	case 8:
> +	case 16:
> +	case 32:
> +		break;
> +	default:
> +		dev_err(&pdev->dev, "invalid width %u, must be 8, 16, or 32\n",
> +			priv->width);
> +		return -EINVAL;
> +	}
> +
> +	if (res->start % (priv->width / 8) !=3D 0 ||
> +	    resource_size(res) < priv->width / 8) {

[Severity: Low]
Does using the modulo operator here cause an undefined reference to __umodd=
i3
on 32-bit platforms?

The variable res->start is of type resource_size_t, which can be a 64-bit
integer on 32-bit platforms with PAE enabled (CONFIG_PHYS_ADDR_T_64BIT=3Dy).

Since the divisor (priv->width / 8) is a runtime value rather than a
compile-time constant, the compiler might emit a call to __umoddi3 for the
64-bit division, which leads to a linker error on 32-bit architectures.
Could IS_ALIGNED() or div_u64() be used instead?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615170922.1132=
642-1-inasj268@gmail.com?part=3D1

