Return-Path: <devicetree+bounces-300735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cK8ECc3bDWpN4QUAu9opvQ
	(envelope-from <devicetree+bounces-300735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:05:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17248591707
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:05:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1440B317A166
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 15:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7F43EFFC2;
	Wed, 20 May 2026 15:17:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqmL26Qn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C643E1717;
	Wed, 20 May 2026 15:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779290225; cv=none; b=O6DcyWS8eu+dJZhKFpqKuN8Xj7n02nwUjCbtMgeUbtp78SRQVEXJEvI7wZHefGnrUhjsNn3OWWcYJW/s6Jsia6HvfF1FTdP0H1TP1fwwqILIGeItBE+YUju2IK7NnkI4oXjMHnaXMZhGInHYw4F6IDiYQtsS/98qOyfaxxXVQ3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779290225; c=relaxed/simple;
	bh=0B41DTrnN6xq1xALNp2+MWs4snjweA430oCHYw0Mhc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fyYOHS1QQL/dcMJqgRJToBZhKfZOoB6AMXDcxw6K+MK+DU1ONc+z7koNl5PjLUEewWWdGvUnA7UdytCHoy/cV8uI9yPPo+ETHMrF5SdtY1pbIAacA7yOfBXh2NTCGdXu7m6o6vUJSwFmP3cmE8OJ6k7InXEHV4kvOqsO9TeH80c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqmL26Qn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 697C41F00893;
	Wed, 20 May 2026 15:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779290223;
	bh=Lsy/ENfzpH9yPpbKWh0LfhF3I3NPmtNTsPfNvR1IAnc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EqmL26Qn/w8XlKk17HK5iYjzAKMWaH9dAwY1MALO7q4Sk0OvsTDoMX+K/gibDfO53
	 HIWVuiQybuO6SN1yxFqs10im9wT9P/fmS/ENuR2agHBs/KgeUtKQ/Dpwc6/xeSXVbw
	 eKdsUu1bLSGTJTZEgsfcqs4JZqMWR4DZqXS0Az1uumHWJp8tZMU0BE2BR25h0HZPji
	 fzip1/hJupUmknogez76wQoRZv9JKICY6sHMeFj7kp5zt7u74gRplE+fIIJH/Ihb0S
	 Cxk+XHFAOm70Rib/bwa54DqyJUNcQ47liDO5h8a4Qe6hTIy7qIX8jU1XPYIcEtR8Vr
	 2NHkCaJ9s6CZw==
Date: Wed, 20 May 2026 16:17:00 +0100
From: Conor Dooley <conor@kernel.org>
To: "Jose A. Perez de Azpillaga" <azpijr@gmail.com>
Cc: linux-iio@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: light: add Broadcom APDS9999
Message-ID: <20260520-rockband-ribcage-3fd3f8a232f5@spud>
References: <cover.1779181370.git.azpijr@gmail.com>
 <12b145839a1a9c5381946a9e5237bfe6fe0ae9a7.1779181370.git.azpijr@gmail.com>
 <20260519-overdrawn-cofounder-59752aa87d4f@spud>
 <ag123fx0az4B83-l@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GM4CVlOY0jZv8GS4"
Content-Disposition: inline
In-Reply-To: <ag123fx0az4B83-l@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300735-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,devicetree.org:url,broadcom.com:url]
X-Rspamd-Queue-Id: 17248591707
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--GM4CVlOY0jZv8GS4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 20, 2026 at 10:56:19AM +0200, Jose A. Perez de Azpillaga wrote:
> On Tue, May 19, 2026 at 06:30:20PM +0100, Conor Dooley wrote:
> > On Tue, May 19, 2026 at 11:23:13AM +0200, Jose A. Perez de Azpillaga wr=
ote:
> > > Add Device Tree binding for the Broadcom APDS9999 ambient light
> > > and proximity sensor. A separate binding file is used rather
> > > than merging with avago,apds9300.yaml because the APDS9999
> > > has an additional vled-supply for the VCSEL.
> > >
> > > The APDS9999 features individual R, G, B, and IR channels with
> > > a green channel that uses optical coating to approximate the
> > > human eye spectral response for ALS/lux measurements. Calibrated
> > > RGB color sensing is not yet implemented in the driver.
> > >
> > > Signed-off-by: Jose A. Perez de Azpillaga <azpijr@gmail.com>
> > > ---
> > >  .../bindings/iio/light/brcm,apds9999.yaml     | 54 +++++++++++++++++=
++
> > >  MAINTAINERS                                   |  6 +++
> > >  2 files changed, 60 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/iio/light/brcm,=
apds9999.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/iio/light/brcm,apds999=
9.yaml b/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> > > new file mode 100644
> > > index 000000000000..4d9e9aff8894
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> > > @@ -0,0 +1,54 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iio/light/brcm,apds9999.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +title: Broadcom APDS-9999 Digital Proximity and RGB Sensor
> > > +
> > > +maintainers:
> > > +  - Jose A. Perez de Azpillaga <azpijr@gmail.com>
> > > +
> > > +description: |
> > > +  Broadcom APDS-9999 is a digital proximity and RGB sensor with
> > > +  ambient light sensing (ALS) capability. The device uses individual
> > > +  R, G, B, and IR channels plus a Vertical Cavity Surface Emitting
> > > +  Laser (VCSEL) for proximity detection.
> > > +
> > > +  Datasheet: https://docs.broadcom.com/docs/APDS-9999-DS
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - brcm,apds9999
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  vdd-supply: true
> > > +
> > > +  vled-supply:
> > > +    description: VCSEL power supply
> >
> > Why does the name in the description disagree with the name in the
> > property? If the pin is called vcsel, please call the property that.
> >
>=20
> will rename to vcsel-supply in v4.

Sounds good.

pw-bot: changes-requested

Thanks,
Conor.

--GM4CVlOY0jZv8GS4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCag3QbAAKCRB4tDGHoIJi
0mYvAQDqHZc5TmtSYWbDEcD8/RF85FfvCJfwal3xzDl8nMXJuQD/QwuBiChbA8+M
/txipSVNp0PHq6z9E5Cb3UubQVD/FAE=
=l6+B
-----END PGP SIGNATURE-----

--GM4CVlOY0jZv8GS4--

