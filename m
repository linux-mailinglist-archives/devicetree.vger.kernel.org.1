Return-Path: <devicetree+bounces-313084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7r+xLly/MmpB5AUAu9opvQ
	(envelope-from <devicetree+bounces-313084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:38:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5338C69B0FC
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:38:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SgdvbEO5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313084-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313084-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BF943306A70E
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1B984A1393;
	Wed, 17 Jun 2026 15:34:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 750A83ECBFD;
	Wed, 17 Jun 2026 15:34:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781710462; cv=none; b=rTB6JO6fjtrwgZgDN0fZzmDU6OATM7xuHrt+y3rgCYizB3BkZQuzcPOjlt8zoLFeAki8XvvUFJRQnT3tbMlhLhlYCUouTVAn+x5AtmXwNGon+13gOuzZeyrPlVsJlMtomCqBRANwaWEk7o5TvsMVK7bge378fg3wRBv3iugQrv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781710462; c=relaxed/simple;
	bh=dHF38Mf45L6Kj6bee96elLlMfQQ2sakAcIYjhLvNQpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oYKZ8Yb5HV/nIflOhKx/FBi1Najj1YuR3dppExRRwQSffYswKJddUrdDez9JYLj5CGJZZ25Ohxjr4T8i38hJjCV3Uh5jGwmFSLwlPgWJLiKDZemfZX+8puBTFG8DC6ZQm82/uWsqCjds0ff7LfT+zZNbs555jV4zXIxzcQNLPWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgdvbEO5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE7571F00A3A;
	Wed, 17 Jun 2026 15:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781710453;
	bh=j6aBGCencYngvVqs1W7G2+7awzHZTMYgFruzw25G3KE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SgdvbEO5g/SB4FFjjIpYUTcvMclzXGlWeuWGBY2M71WIjCwp3oA/W1URjboBcxZNc
	 doezUzLKIA0YqXmHQtu4D3U2eChdVfhlDJJEcmjEC+sS5Uxw/+czuMDZbKu1a3WKt9
	 CKLbt9mPQkEAQIwJBzV7aB4oM1vImwOXGd3OFPoDjCklGo5pnA//P+7Lb9+iv8d72m
	 JSjPStkiXWp7Yz+16im8qh0S8M1WHpqjKGj0BiwL/pGTGve2fa0CrcO1kn9SxULg5L
	 oabfyd9g8LHt2Ov9QyYdK+Lv+o6UzFFSMOljG3weIMv0RPXoQXLUvJbQtMrVMEFbpH
	 rW9DElfsiGoLg==
Date: Wed, 17 Jun 2026 16:34:08 +0100
From: Conor Dooley <conor@kernel.org>
To: David Lechner <dlechner@baylibre.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Kurt Borja <kuurtb@gmail.com>,
	Nguyen Minh Tien <zizuzacker@gmail.com>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: add ti,ads122c14
Message-ID: <20260617-precise-eternal-3bfead06cef1@spud>
References: <20260615-iio-adc-ti-ads122c14-v1-0-e6bdadf7cb2b@baylibre.com>
 <20260615-iio-adc-ti-ads122c14-v1-1-e6bdadf7cb2b@baylibre.com>
 <20260616-spoon-ducky-b05e9bf7e999@spud>
 <4bc99611-4bf1-4797-ba31-6f1d7dee1e1e@baylibre.com>
 <20260616-livable-muster-d268af11dcc8@spud>
 <c24982d7-40d6-4fd6-a083-90a8d3ce7f63@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="goWqA01jA6eNS7UH"
Content-Disposition: inline
In-Reply-To: <c24982d7-40d6-4fd6-a083-90a8d3ce7f63@baylibre.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:kuurtb@gmail.com,m:zizuzacker@gmail.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313084-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,analog.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,devicetree.org:url,ti.com:url,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5338C69B0FC


--goWqA01jA6eNS7UH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2026 at 04:04:43PM -0500, David Lechner wrote:
> On 6/16/26 3:50 PM, Conor Dooley wrote:
> > On Tue, Jun 16, 2026 at 02:54:55PM -0500, David Lechner wrote:
> >> On 6/16/26 11:07 AM, Conor Dooley wrote:
> >>> On Mon, Jun 15, 2026 at 04:59:59PM -0500, David Lechner (TI) wrote:
> >>>> Add new bindings for ti,ads122c14 and similar devices.
> >>>>
> >>>> This is an ADC that is primarily intended for use with temperature
> >>>> sensors. There are a few unusual properties because of this. In
> >>>> particular, the reference voltage source and current output requirem=
ents
> >>>> can be different for each measurement, so these are included in the
> >>>> channel bindings.
> >>>>
> >>>> The REFP/REFN reference voltage is usually just connected to a resis=
tor
> >>>> that is being driven by the ADC's current outputs, so there is speci=
al
> >>>> property for this case rather than requiring a regulator to be defin=
ed
> >>>> to represent that.
> >>>>
> >>>> ti,vref-source is reused from ti,tlv320adcx140.yaml (otherwise might
> >>>> have preferred an enum of strings).
> >>>>
> >>>> Signed-off-by: David Lechner (TI) <dlechner@baylibre.com>
> >>>> ---
> >>>>  .../devicetree/bindings/iio/adc/ti,ads112c14.yaml  | 224 ++++++++++=
+++++++++++
> >>>>  MAINTAINERS                                        |   7 +
> >>>>  include/dt-bindings/iio/adc/ti,ads112c14.h         |  11 +
> >>>>  3 files changed, 242 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads112c14.=
yaml b/Documentation/devicetree/bindings/iio/adc/ti,ads112c14.yaml
> >>>> new file mode 100644
> >>>> index 000000000000..dc7f37cad772
> >>>> --- /dev/null
> >>>> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads112c14.yaml
> >>>> @@ -0,0 +1,224 @@
> >>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>>> +%YAML 1.2
> >>>> +---
> >>>> +$id: http://devicetree.org/schemas/iio/adc/ti,ads112c14.yaml#
> >>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>>> +
> >>>> +title: Texas Instruments' ADS112C14 and similar ADC chips
> >>>> +
> >>>> +description: |
> >>>> +  Supports the following Texas Instruments' ADC chips:
> >>>> +  - ADS112C14 (16-bit)
> >>>> +  - ADS122C14 (24-bit)
> >>>> +
> >>>> +  https://www.ti.com/lit/ds/symlink/ads122c14.pdf
> >>>> +
> >>>> +  These chips are primarily designed for use with temperature senso=
rs such as
> >>>> +  RTDs and thermocouples. The channel bindings reflect this in that=
 each channel
> >>>> +  represents the conditions required to make a measurement rather t=
han strictly
> >>>> +  just the physical input channels.
> >>>> +
> >>>> +maintainers:
> >>>> +  - David Lechner <dlechner@baylibre.com>
> >>>> +
> >>>> +unevaluatedProperties: false
> >>>
> >>> Weird positioning of this.
> >>
> >> IIRC, Rob asked that I do it in this order on another binding a while
> >> ago (the reasoning being that it was too far away from properties:
> >> otherwise), so I've done it like this on a few bindings now. It doesn't
> >> make much difference to me though.
> >=20
> > Too far away because it refers to properties in the "main" node, but
> > appears conventionally after a rake of properties belonging to the
> > children?
> >=20
> I found the original request:
>=20
> https://lore.kernel.org/all/20241022204312.GA1524310-robh@kernel.org/
>=20
> "Easier to read the indented cases that way."
>=20
> Reading it again, it sounds like the request was just for the indented
> additionalProperties to be moved.

I think so, yeah. It's definitely common to see
    patternProperties:
      "^dma-channel@[0-9a-f]+$":
        type: object
	unevaluatedProperties: false
        description:
          DMA channel properties based on HDL compile-time configuration.


--goWqA01jA6eNS7UH
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajK+cAAKCRB4tDGHoIJi
0nMbAQD2SX7McXSw+aznpFP9MO72d1N5LUFAvS5jFxV+TqqQaQD+KIz5ieeD34xt
o8H6Cv6uMz2youO+PDoqgsX2a8hR9g0=
=PHXl
-----END PGP SIGNATURE-----

--goWqA01jA6eNS7UH--

