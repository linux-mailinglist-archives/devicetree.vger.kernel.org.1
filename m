Return-Path: <devicetree+bounces-308942-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ypzDEanvJ2p15wIAu9opvQ
	(envelope-from <devicetree+bounces-308942-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:49:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 475CE65F1DD
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 12:49:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=o2uF3Hi7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308942-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308942-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1EEF8316ACD8
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 10:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9993F483E;
	Tue,  9 Jun 2026 10:29:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC2363F44D6
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 10:29:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781000994; cv=none; b=BFwe2K9xk+GB9monIB+pb/kP304UyuTA6+xvb7peJ2M4RHciMqNAaGVKt/7PZG1nitsKm38VOgvLFgwqdRZOYqAh+K7LBs+3foTv8WArriNxNj1iKstOkbbavsYMOg7mVmjZvI4y68VO3w8UcseaW6bfJfagisrEq+/FoEO9jKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781000994; c=relaxed/simple;
	bh=OWdt92dqFO8q/wITvpe3IjK/fZc+Ccu4+f5vzeI3WAg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=N7aiLZ/V0b33wLrJFDR3d/fKuXSKcmp7n/mIOkVU0LRR9sC48mPd0xqX0cma+xGYqIJBRhVczLWPFpPELVat471HQp97S9ttPQVcBueKlIN2JaBBWImKZGSKP62/78UC9iwoarTI4DU9zO3iHBx0wgRvyTjBIMy47qVq8WhFcwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2uF3Hi7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F14E01F00898;
	Tue,  9 Jun 2026 10:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781000993;
	bh=2cI/ltojbAmaQfLP5j0hl9iRVp3GsqNjIhYUU9LGwnw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=o2uF3Hi7ytW9n2Tb85o4JFwV2iFrKBd6fdIHfMb+HjRtPG7ITW9msqlo8WkzO0LBo
	 DLDdKWzO0Ohvb4OfHf06t/wynHPLmy3sC9J6GXx9D3OzeYL6iwb/Vgdp4wHmILTFBU
	 +l6jyMSd44gAnKmAGhA+gEQ7zH5n4E/JPtm9Cvk4qDF/bFLDngDgKoQRUw7nF0xLSM
	 AffJVyb+DzF+VvoIhSCK5xb8wQbpDdQuKHviEB+G9smBfnDHheh/1G41+phZlfrPXg
	 TRBDgDABdu5vzizWL0ScVIum1PhCRA0tj+sU2MOlfnQFXeCrtMN2nfuR0rehhianiW
	 RNJ03erNhPMNw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 06/12] iio: dac: ad5686: consume optional reset
 signal
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260609-ad5686-new-features-v2-6-70b423f5c76d@analog.com>
References: <20260609-ad5686-new-features-v2-6-70b423f5c76d@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 10:29:52 +0000
Message-Id: <20260609102952.F14E01F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-308942-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,analog.com:email,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 475CE65F1DD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Premature reset line deassertion during power ramp-up due to the=
 use of '_deasserted' combined with a manual pulse.
--

commit 61717352bc99739a9f89195c3320a934e033ad38
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

iio: dac: ad5686: consume optional reset signal

Add RESET pin GPIO support through an optional reset control, which is local
to the probe function, and include a delay for the required reset pulse wid=
th.

> diff --git a/drivers/iio/dac/ad5686.c b/drivers/iio/dac/ad5686.c
> index fc3863274b291..700798b80f044 100644
> --- a/drivers/iio/dac/ad5686.c
> +++ b/drivers/iio/dac/ad5686.c
[ ... ]
> @@ -506,7 +508,15 @@ int ad5686_probe(struct device *dev,
>  		return dev_err_probe(dev, -EINVAL,
>  				     "invalid or not provided vref voltage\n");
> =20
> +	rstc =3D devm_reset_control_get_optional_exclusive_deasserted(dev, NULL=
);

[Severity: Medium]
Does this prematurely deassert the reset line during power ramp-up?

Because devm_reset_control_get_optional_exclusive_deasserted() automatically
and immediately deasserts the reset line upon acquisition, the reset line is
driven high while the power supply is still stabilizing, before the 5 us
power-up delay has elapsed.

This creates an unwanted rising edge on the reset pin during power ramp-up,
which could cause the device to enter an unknown state or latch up.

Should this use devm_reset_control_get_optional_exclusive() instead, which
does not modify the line state during acquisition, allowing the manual togg=
le
sequence below to safely reset the device after power is stable?

> +	if (IS_ERR(rstc))
> +		return dev_err_probe(dev, PTR_ERR(rstc),
> +				     "Failed to get reset control\n");
> +
>  	fsleep(5); /* power-up time */
> +	reset_control_assert(rstc);
> +	fsleep(1); /* reset pulse: comfortably bigger than the spec */
> +	reset_control_deassert(rstc);
> =20
>  	/* Initialize masks to all ones */
>  	st->pwr_down_mask =3D ~0;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-ad5686-new=
-features-v2-0-70b423f5c76d@analog.com?part=3D6

