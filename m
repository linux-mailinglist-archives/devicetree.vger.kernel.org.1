Return-Path: <devicetree+bounces-309194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JJzHMTJDKGoBBQMAu9opvQ
	(envelope-from <devicetree+bounces-309194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:45:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2613B6628BA
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 18:45:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="J/762SPZ";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309194-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309194-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94CAE31A08A6
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 16:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0A7375F87;
	Tue,  9 Jun 2026 16:12:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5D6376A0D;
	Tue,  9 Jun 2026 16:12:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781021557; cv=none; b=F6PNst8KXRwYlXLtxxuEB5+puxYzz4NOuLXS7i94l9OeePp1kel/7nv1P4oJFt7UK1uiugm8BYS+gHJrKxTlCDVhZfTmJOc/xVVL0CMdG8cja9RcwFNwDR3haIaJqiYt7FjUSUxsQnSi9BG+6DT+7l9LMi1M76JcbcO21cHMaYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781021557; c=relaxed/simple;
	bh=/UURgH5Qf3Ks4NgWvaAnJhm/0raqfkZdF7dKdO0qZ30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=guADOQz6ymKgshA+FmieSxze/B9kv1eVsYGgDmLA34yYx9LOiPDGSEZ6gIx/USog0Uqb5lDnlx2dTdgFgRTvxkaKjOMnxGsWYHwXGCSiDVQW38UeI6sliqJ/DgGsIqpF71VyjJw3vEcHduyuG7KHXVZ6bqBy6xQawbQOp4C5Hgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/762SPZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E84431F00893;
	Tue,  9 Jun 2026 16:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781021555;
	bh=5VVwuYc+JPi9X2IeRUGdOivDGFfg6Xm7j28YitwgkZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=J/762SPZuTdaYqk1FKDUm2TFm2jX9WCbwPeqvTTRCH5XkyP4pv0rLyrMK2Qn8GHBq
	 dVC4j4zoT2828Q7MOA0uWf1GfVEkejd4ThfQMYYRRLmpHHIqfxNTp5X/x9IMqm231M
	 p04l4FIcXch0WRrU4iylOtaIuClhj9IBS28DAIHW5HOmSgPHam/9uDt9IQQXBiaDkA
	 j05RIWo0708v0Y4bgnTmM4caIZj3S8EEf7B0l0WWyQ/5+3xJF2o3q2v7BX2oayZjwm
	 qCBTdQxWpfq6415npLFH/mmOxIw8si6dtUccArjO41YZp95wgDeAtKTeayJ/5XFXbd
	 aNxJGkfp+rEDA==
Date: Tue, 9 Jun 2026 17:12:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Cc: rodrigo.alencar@analog.com, Michael Auchter <michael.auchter@ni.com>,
	linux@analog.com, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 02/12] dt-bindings: iio: dac: ad5696: rework on power
 supplies
Message-ID: <20260609-manhunt-napkin-04b11606ea49@spud>
References: <20260609-ad5686-new-features-v2-0-70b423f5c76d@analog.com>
 <20260609-ad5686-new-features-v2-2-70b423f5c76d@analog.com>
 <eduvmlupbcxlskscx6xphd7ipbwug3kqxjqtcewk6n6f2eqzo4@2avqjjrdem2v>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tl5HP9+ch7loODtr"
Content-Disposition: inline
In-Reply-To: <eduvmlupbcxlskscx6xphd7ipbwug3kqxjqtcewk6n6f2eqzo4@2avqjjrdem2v>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:455.rodrigo.alencar@gmail.com,m:rodrigo.alencar@analog.com,m:michael.auchter@ni.com,m:linux@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hardening@vger.kernel.org,m:Michael.Hennerich@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:kees@kernel.org,m:gustavoars@kernel.org,m:conor.dooley@microchip.com,m:455rodrigoalencar@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-309194-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,spud:mid,analog.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2613B6628BA


--tl5HP9+ch7loODtr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 09, 2026 at 12:40:08PM +0100, Rodrigo Alencar wrote:
> On 09/06/26 10:28, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 2 potential is=
sue(s) to consider:
> > - [High] Adding `vdd-supply`, `vlogic-supply`, and unconditionally requ=
iring `vref-supply` breaks backward compatibility for existing device trees.
> > - [Medium] Making `vlogic-supply` unconditionally required forces devic=
e trees to document a non-existent hardware connection for single-channel d=
evices.
> > --
> >=20
> > commit 8357cd3efa5f819678f24f0cbf0a39208f4078bc
> > Author: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > Subject: dt-bindings: iio: dac: ad5696: rework on power supplies
> >=20
> > This commit reworks the power supply bindings for the ad5696 DAC series=
=2E It
> > adds vdd-supply, vlogic-supply, and vref-supply, deprecates vcc-supply,=
 and
> > updates the required properties.
> >=20
> > > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yam=
l b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> > > index 2dcc049f30e91..e5fbaec4adf71 100644
> > > --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> > > +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> >=20
> > [ ... ]
> >=20
> > > @@ -55,8 +65,21 @@ properties:
> > >  required:
> > >    - compatible
> > >    - reg
> > > +  - vdd-supply
> > > +  - vlogic-supply
> >=20
> > [Severity: High]
> > Does adding vdd-supply and vlogic-supply to the global required list br=
eak
> > backward compatibility for existing device trees? Older device trees th=
at
> > omitted these will now fail dtbs_check.
>=20
> Yes, for correctness, it breaks the dtbs_check. In the driver side
> we would rely on the dummy/stub regulator in case those are not declared.

Ye I wouldn't be overly worried here. Sashiko has particular difficulty
with these kinds of changes.

>=20
> > [Severity: Medium]
> > Does making vlogic-supply unconditionally required force device trees to
> > document a non-existent hardware connection? Single-channel devices in =
this
> > family (such as adi,ad5693, adi,ad5693r, and adi,ad5311r) physically do=
 not
> > have a dedicated VLOGIC pin.
>=20
> VLOGIC does exist for those parts. However, as mentioned before, for some
> tiny packages it is internally connected to VDD:
>=20
> - 10-Lead MSOP package for AD5693R/AD5691R exposes the VLOGIC pin
> - 8-Lead LFCSP package for AD5693R/AD5692R/AD5691R/AD5693 does NOT expose=
 the VLOGIC pin
>=20
> I think we agreed to make it required and user can just repeat the vdd-su=
pply
> value or not have it at all. Driver would rely on the dummy/stub regulato=
r.

Yeah, I dunno. I think this is just a judgement call, and maybe worth
having a comment in the binding for to explain it.

> =20
> > > =20
> > >  allOf:
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            anyOf:
> > > +              - const: adi,ad5693
> > > +              - const: adi,ad5694
> > > +              - const: adi,ad5696
> > > +    then:
> > > +      required:
> > > +        - vref-supply
> >=20
> > [Severity: High]
> > Does unconditionally requiring vref-supply break older device trees that
> > correctly utilized the formerly valid vcc-supply?
> >=20
> > To preserve DT ABI compatibility, should the schema allow either vcc-su=
pply or
> > vref-supply to satisfy the reference voltage requirement?
>=20
> Same here. For correctness, it breaks DT ABI.
>=20
> > --=20
> > Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260609-ad5686-ne=
w-features-v2-0-70b423f5c76d@analog.com?part=3D2
>=20
> --=20
> Kind regards,
>=20
> Rodrigo Alencar

--tl5HP9+ch7loODtr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaig7bQAKCRB4tDGHoIJi
0gqBAP48zQaBb7ur6lhscPDI6mzZQUkscA/cTvwtzandj308wAEAi6bCvPvAzwBf
yYpPO9Td+XdF0mR8pNDVgn84BtG2uQo=
=+nmB
-----END PGP SIGNATURE-----

--tl5HP9+ch7loODtr--

