Return-Path: <devicetree+bounces-319563-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LQNiLFS2RmoVcAsAu9opvQ
	(envelope-from <devicetree+bounces-319563-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:04:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E20D06FC612
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 21:04:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=FO0JcdZ1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319563-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319563-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 48E9B300578E
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:58:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC5A837104C;
	Thu,  2 Jul 2026 18:58:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26203090C6;
	Thu,  2 Jul 2026 18:58:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783018718; cv=none; b=LvijITpUojcRvasBo46pnLuruiywS6bMw8l0udttCCzIRMWjr7R5otWzkQMDxVNJAIv0rBZUXLOp1eD9fztSSyunbWfPbRYsQTr8LbBp3yoUX9NAhauH27BHN2GtxnVLQ0dhZGtxf4gPwxY7eXw/K/ctZ258YhOaU4IcFvnSdvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783018718; c=relaxed/simple;
	bh=5gTnWXwVf0NN7KXfWtRBTcyb7greoDovJVGEu3Wai1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tMuAPShHvzgYJkMU70RMljJKfavXmDBc+2sHm2Opi5SuyipwjUESti1joHFQs5jrSfEzklosb6LARIhz0aNIiegnyarYSLmLj/TOS0k9tj+GNYordqvMtiUtzzzzufiZ4pKJKSPqFqnIbqmM5qewxaW9a6bp05dgty4oG3iTxcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FO0JcdZ1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EADE1F000E9;
	Thu,  2 Jul 2026 18:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783018717;
	bh=RLgkpaVMPnO09LsCHhzeAVGJhguWzFrcOs/hWhZGsxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FO0JcdZ1SVtbGnPMI77Ssf/jj/ZNg6YAxDYuinNm9ZmXQVlVzrnkMhGE0sQDTHYZS
	 uBWvw8yjkt6LyXKxfnJS1m6DYuv7ynIdK+B8CYvpTWarN5PfyeGHjLGsdyz4UaCF5v
	 le/UcYR7m1yd6KM7w9EB22Yh0aFvhyjdOO3Iagu9Q9cvOKcSoibFV8OIE2MorBqzHJ
	 2gearSF40MWnM3LFvjLRCn0kh3AR5zJ/fPGMEG01zFHTkC9WXF0yKf6LvQ9uUnCSP7
	 PnpS+0KAdxNio2SaxsMcTtMC5l3APdvoYf6kWrVZK8Qch38UtcvTUJnG6+mecEzORf
	 Trak3DRTDAoYg==
Date: Thu, 2 Jul 2026 19:58:32 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chris Hall <c-hall@ti.com>,
	Patrick Edwards <pedwards@ti.com>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/8] dt-bindings: iio: adc: add input-channel-rotation
 property
Message-ID: <20260702-litigator-commuting-5a3a37a7fb40@spud>
References: <20260625-iio-adc-ti-ads122c14-v2-0-ceb9b0b561cb@baylibre.com>
 <20260625-iio-adc-ti-ads122c14-v2-4-ceb9b0b561cb@baylibre.com>
 <20260626-retinal-thrash-1095940e36ab@spud>
 <4a2c4c42-69fb-4491-ba77-b858623275ec@baylibre.com>
 <20260701204133.2b77edab@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HU32OjTorvqjRu33"
Content-Disposition: inline
In-Reply-To: <20260701204133.2b77edab@jic23-huawei>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:c-hall@ti.com,m:pedwards@ti.com,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-319563-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,ti.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E20D06FC612

--HU32OjTorvqjRu33
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 01, 2026 at 08:41:33PM +0100, Jonathan Cameron wrote:
> On Fri, 26 Jun 2026 13:27:44 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>=20
> > On 6/26/26 11:14 AM, Conor Dooley wrote:
> > > On Thu, Jun 25, 2026 at 04:55:06PM -0500, David Lechner (TI) wrote: =
=20
> > >> Add a generic input-channel-rotation property to adc.yaml. This is a
> > >> feature seen frequently in ADCs that are designed to measure resisti=
ve
> > >> loads, such as RTDs and strain gauges. Enabling this can reduce offs=
et
> > >> errors by swapping the positive and negative input channels on every
> > >> other conversion. This can have side-effects in timing and filter
> > >> response, so it is not always desirable to enable this feature in so=
me
> > >> applications. Therefore, it is best to make this a property that can=
 be
> > >> enabled or disabled in the device tree.
> > >>
> > >> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
> > >> ---
> > >> v2 changes:
> > >> * New patch.
> > >> ---
> > >>  Documentation/devicetree/bindings/iio/adc/adc.yaml | 7 +++++++
> > >>  1 file changed, 7 insertions(+)
> > >>
> > >> diff --git a/Documentation/devicetree/bindings/iio/adc/adc.yaml b/Do=
cumentation/devicetree/bindings/iio/adc/adc.yaml
> > >> index 9ec1f447b565..3d52c00922c9 100644
> > >> --- a/Documentation/devicetree/bindings/iio/adc/adc.yaml
> > >> +++ b/Documentation/devicetree/bindings/iio/adc/adc.yaml
> > >> @@ -81,6 +81,13 @@ properties:
> > >>        ADCs usually allow choosing between internal reference source=
s or a pair
> > >>        of external pins.
> > >> =20
> > >> +  input-channel-rotation: =20
> >=20
> > I got some internal feedback after I sent this patch that "chopping" is=
 the
> > more common terminology for this feature industry-wide, so in the next =
revision
> > I plan to change it into `input-chopping`.
> >=20
> > >> +    type: boolean
> > >> +    description:
> > >> +      If set, the positive and negative input channels are allowed =
to be swapped
> > >> +      on every other conversion to reduce offset errors. This is al=
so referred
> > >> +      to as "chop" in some datasheets. =20
> > >=20
> > > "allowed to be swapped" means that this property says the feature can=
 be
> > > used, but userspace may have to be the thing that ultimately turns it
> > > on? =20
> >=20
> > No, I don't expect a userspace control for it. More like the driver sho=
uld
> > enable it when possible, but a driver doesn't necessarily have to imple=
ment
> > it and everything will still work, just with less accuracy.
>=20
> Perhaps we need something in this text to say when it should not be set
> in dt?

I think I would like a wording change from "allowed", to something that
is akin to "If set, the hardware supports swapping...". Allows sounds
too much like something that should be a userspace control.

--HU32OjTorvqjRu33
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaka02AAKCRB4tDGHoIJi
0jr7APwO7Ude3skjABcUuWYTPKzO6hHSJsyl0gGTftkdKlxVRgD7B0reiQ1vsJg3
33K1ztXCj9tJIjcux5iN5sT+Zkee8Ac=
=6j0A
-----END PGP SIGNATURE-----

--HU32OjTorvqjRu33--

