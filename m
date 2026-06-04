Return-Path: <devicetree+bounces-307012-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QN/5JaexIWqpLQEAu9opvQ
	(envelope-from <devicetree+bounces-307012-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:11:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD5C642379
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 19:11:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="jvlQ/Jb3";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307012-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307012-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 71CF330048DB
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 17:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E7E32B125;
	Thu,  4 Jun 2026 17:03:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 926DD4949F6;
	Thu,  4 Jun 2026 17:03:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780592625; cv=none; b=H7wnz1MOrPUQpDyS/NMud+03sMCLXm0T8r8UieQsh2HKyEkvJ/fxMfNhJksThdNniLPncq9pLgbFIOmLlgOuwMiOvNE47HTFC71i3qFEVxw2ZTzR+O+30xp1doILU6fNsliGxT5b/m5ZCZ5Zx4M9HH4DV3eXsKqLzxBDZDFAZ8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780592625; c=relaxed/simple;
	bh=bmQ3mW8NNmbM1E8iFKZaxdkSWzLBkrYgSC9Qbe5pme4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dL2tYPpGuE0pckl0EPIkkc9/8nq9XLLQ1MlRGynJpHFv/B6cfREmlHXa/QOCNFODxG98l4M7e5rJDaKjBtDHASU6iVTPZPw0t74b8fW4DoGvImLWQ+tVF7Eg4mNuqh7nu0GtCHoPtu6ijfimcee+kl8RaU6I1sVv79kkWbjZ7Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvlQ/Jb3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C26D1F00893;
	Thu,  4 Jun 2026 17:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780592624;
	bh=pA3FpXvPMYrY7IWWxE3/QmmbpUQfGz6nC066+u28lEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jvlQ/Jb3RhEM8FFk6qquT8sCrE/b7ymQyEvV80ZS9bpCEaRnZKMjQNKWU/eWefOeb
	 VRQhBQ490o87oY+PFdmwdXw7gLA/Zp+YbKDFWbiuwpsRfB0FmtaslVxyqyC77nzakV
	 ulyAon9KCM8g39tNJjIZ1uFxy/yYe0PkZNepdlliNsOB6GJpo26JI9BVzQ2e0HcoB7
	 1n4rX1cW1iY+pTW0ZKRBDSQBAokuLR5eonU+9vE2bv+wRGPFaM3zRM5nuRMnaSYL60
	 G+jOm4YHzz9Q8fHP3muAxwm0eMfXU1kABRYLPAyfmRsb4iTUtxdOivg05XXxAlGe9k
	 HV3JQBfKSVnZg==
Date: Thu, 4 Jun 2026 18:03:41 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Piyush Patle <piyushpatle228@gmail.com>, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v11 04/11] dt-bindings: iio: adc: hx711: add HX710B
 support
Message-ID: <20260604-java-dizziness-dd68a245c7ff@spud>
References: <20260603184859.89693-5-piyushpatle228@gmail.com>
 <20260603190230.E7DE11F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NkPsNM0jZw5n6mwr"
Content-Disposition: inline
In-Reply-To: <20260603190230.E7DE11F00893@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307012-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:piyushpatle228@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ECD5C642379


--NkPsNM0jZw5n6mwr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 07:02:30PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] The HX710B driver fails to request and enable the `avdd-supply` =
and `dvdd-supply` regulators, leaving the chip unpowered.
> - [Low] The driver uses a non-existent compiler macro `__counted_by_ptr`,=
 which will cause a build failure.
> --
>=20
> commit 4a57ad17002849c3ffed8137401cf0ed7fd81778
> Author: Piyush Patle <piyushpatle228@gmail.com>
>=20
> iio: adc: hx711: add support for HX710B
>=20
> This commit adds support for the AVIA HX710B ADC, sharing the GPIO interf=
ace
> with the HX711 but using trailing pulses for mode selection. It introduces
> variant-specific channel configurations and tracks active channels across
> conversions. Additionally, it refactors the gain and scale computations to
> use fixed values for the new variant.

Sashiko is replying here to the wrong patch.

>=20
> > diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
> > index 5c326f01c5543..e90780dfd34e5 100644
> > --- a/drivers/iio/adc/hx711.c
> > +++ b/drivers/iio/adc/hx711.c
> > @@ -84,12 +86,16 @@ static int hx711_get_scale_to_gain(const int *gain_=
scale, int scale)
> >   * @channels: channel specification array
> >   * @num_channels: number of entries in @channels
> >   * @iio_info: IIO info ops for this variant
> > + * @fixed_gain_val: fixed PGA gain (used when @has_fixed_gain is true)
> > + * @has_fixed_gain: true if the variant has a fixed ADC gain
> >   */
> >  struct hx711_chip_info {
> >  	const char			*name;
> >  	const struct iio_chan_spec	*channels __counted_by_ptr(num_channels);
>=20
> [Severity: Low]
> Will this compile? The __counted_by_ptr macro doesn't appear to be defined
> anywhere in the kernel, whereas __counted_by is used for flexible array
> members. Could this result in a syntax error during the build?
>=20
> >  	unsigned int			num_channels;
> >  	const struct iio_info		*iio_info;
> > +	unsigned int			fixed_gain_val;
> > +	bool				has_fixed_gain;
> >  };
>=20
> [ ... ]
>=20
> > @@ -543,32 +709,43 @@ static int hx711_probe(struct platform_device *pd=
ev)
> >  		return dev_err_probe(dev, PTR_ERR(hx711_data->gpiod_dout),
> >  				     "failed to get dout-gpiod\n");
> > =20
> > -	ret =3D devm_regulator_get_enable_read_voltage(dev, "avdd");
> > +	if (chip_info->has_fixed_gain)
> > +		ret =3D devm_regulator_get_enable_read_voltage(dev, "vref");
> > +	else
> > +		ret =3D devm_regulator_get_enable_read_voltage(dev, "avdd");
> >  	if (ret < 0)
> >  		return ret;
>=20
> [Severity: High]
> Does this leave the HX710B unpowered? The device tree bindings require
> both avdd-supply and dvdd-supply for the avia,hx710b compatible.
>=20
> However, when has_fixed_gain is true for the HX710B variant, the driver
> only requests the vref supply. If avdd and dvdd are controlled by actual
> regulators on the board, will they remain disabled and cause the hardware
> to fail?
>=20
> --=20
> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260603184859.89693=
-1-piyushpatle228@gmail.com?part=3D4

--NkPsNM0jZw5n6mwr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiGv7QAKCRB4tDGHoIJi
0ho0AQDkXHxRlR9D/MkXDiGGeuNco1zTRUHNryX52NYISDi1HAEAwgUNI/w5/vcK
gqcXLuidX7cJQvmN4z7/5rIp498gpQ4=
=7IOS
-----END PGP SIGNATURE-----

--NkPsNM0jZw5n6mwr--

