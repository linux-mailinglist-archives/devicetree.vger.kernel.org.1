Return-Path: <devicetree+bounces-300480-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKM1CCeIDWquygUAu9opvQ
	(envelope-from <devicetree+bounces-300480-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:08:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3DB58B5DE
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89D083059318
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 10:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77EFD3D091F;
	Wed, 20 May 2026 10:02:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXVHq6ej"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F4E3C4576;
	Wed, 20 May 2026 10:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779271320; cv=none; b=oQG9sohhU6U3OK2SQVz6CifmOfKoAOPfTnn622uHHe9L4yJyr6tHbb+BWw/5DKuWeQS+K33D4eRjaTBzMoSdyzOb+kWNuDdFsqeTrPlA7fXQCiDYMfKHNUffgeFmCmJdYhRDDiCQWAK9M4ABuyshGvKJsh8F4mt3JVZnDZpjY/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779271320; c=relaxed/simple;
	bh=qKMywVhaNw1tNHLhSK5k0a7DjEgI8FfNy9d3GoQjxis=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OVDLUWKR9gFyfI/P6Obu+I3aeuxhiN+9k2tiVH5Ge09XorLP9NDTIf5MuXHMsooApiZzosqY/2Z+Wp0/o+7UW5h0SL+pNIcJSBNj7xs1HkzFwVvygRb33l1V74MWRZr3LmQIQrmVCbywa52cpi6fK7q21H192EiwWZMwAoJkMm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXVHq6ej; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE1511F000E9;
	Wed, 20 May 2026 10:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779271318;
	bh=ND4Dzr/UsDZIl/Bhjbr0HOI2CU59MYoi8lOgRpb7/dg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=XXVHq6ej+P3wxX8LJol8gghobYkIYzYi36g2WlGkBJRLMzIZvUo/xzlneSf+l7up1
	 sxXYZWQdcTvTgNyxz2ycKnIsItolNDPZx3MLz9NyDv1FPwNK4xTRaif4ecRSd/Zo9Y
	 QDO38YqYm3ah1IbpPPnXjBDv88vUoUUCi3WjrEqD7j7XpyuhsQkUCewXgUh1LCVd+e
	 suK5pugHoERES/9mxbwGv7tKdUbmiwmiDscjTKsDVmplrKBC3V+rPZbYrscC1zHkSa
	 B1tTieB91JHnV4Qmgxqo2/B9qoQRrtqyers8rTKJF47XQHPXJDY6yuDiGE5mMhZdR7
	 DXgqpqw+R33sw==
Date: Wed, 20 May 2026 11:01:49 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Piyush Patle <piyushpatle228@gmail.com>
Cc: ak@it-klinger.de, andriy.shevchenko@linux.intel.com,
 dlechner@baylibre.com, nuno.sa@analog.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 v8 02/11] dt-bindings: iio: adc: hx711: add VSUP
 supply property
Message-ID: <20260520110149.4086c934@jic23-huawei>
In-Reply-To: <CAMB+xkaOEVbc=nO0nSODJC6cmbGiXZ9C+WA8NEY8Lhj=3c89JQ@mail.gmail.com>
References: <20260511174342.123820-1-piyushpatle228@gmail.com>
	<20260511174342.123820-3-piyushpatle228@gmail.com>
	<20260512130622.1f3f4d08@jic23-huawei>
	<20260512130809.5ab5eb90@jic23-huawei>
	<CAMB+xkaOEVbc=nO0nSODJC6cmbGiXZ9C+WA8NEY8Lhj=3c89JQ@mail.gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300480-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sparkfun.com:url,microchip.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,intel.com:email]
X-Rspamd-Queue-Id: 8A3DB58B5DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 19 May 2026 02:47:44 +0530
Piyush Patle <piyushpatle228@gmail.com> wrote:

> On Tue, May 12, 2026 at 5:38=E2=80=AFPM Jonathan Cameron <jic23@kernel.or=
g> wrote:
> >
> > On Tue, 12 May 2026 13:06:22 +0100
> > Jonathan Cameron <jic23@kernel.org> wrote:
> > =20
> > > On Mon, 11 May 2026 23:13:27 +0530
> > > Piyush Patle <piyushpatle228@gmail.com> wrote:
> > > =20
> > > > Document the optional VSUP supply used by the HX711 on-chip regulat=
or.
> > > >
> > > > Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
> > > > Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
> > > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > > --- =20
> > >
> > > I got curious given the driver doesn't yet turn this on and wanted
> > > to just sanity check it via a datasheet.
> > >
> > > Why are we including this one but not dvdd-supply?  The suggested
> > > wiring does connect them to the same supply but it's external to the
> > > chip so in theory they might not be.  Curiously dvdd supply is allowed
> > > to be 0.1 V lower than vsup-supply. =20
> The HX711 does have a DVDD pin, but it is the output of the internal
> LDO and is normally just bypassed to ground. VSUP is the rail supplied by
> the board, so that was the one I documented here.

Not according to the diagram in figure 1 of
https://cdn.sparkfun.com/datasheets/Sensors/ForceFlex/hx711_english.pdf

That clearly shows DVDD connected to same input supply as VSUP.
There is a note in there to say that if the internal regulator is not
used VSUP should always be connected to the higher of DVDD and AVDD.


> That said, dvdd-supply is already allowed for HX711 nodes by patch 04,
> as only vref-supply is forbidden for HX711. So the binding does not block
> a board from describing DVDD if needed.

Agreed you add it later, but it should be in this patch that is adding miss=
ing
dt-bindings for the existing part.

> The driver does not use DVDD for HX711 today, but explicit support can be
> added later if there is a real user for it.

We should make dt-bindings complete.  That doesn't mean the driver has to
use them though!

Hence I'd like to see dvdd added in this patch rather than later with
a statement of why it is used for the hx711.  As far as I can tell it should
really be required and documented as a bug in the original binding.

Jonathan


> >
> > I should have said, given there is nothing wrong with what you have here
> > and the above is a possible additional change - applied to the testing
> > branch of iio.git.
> >
> > Thanks,
> >
> > Jonathan
> > =20
> Thanks for applying patches 01-03.
> > > =20
> > > >  Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml | 4 ++++
> > > >  1 file changed, 4 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.y=
aml b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > > > index 1ea60dff98d5..a8eaa1f18de5 100644
> > > > --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > > > +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > > > @@ -33,6 +33,10 @@ properties:
> > > >      description:
> > > >        Analog supply voltage (AVDD).
> > > >
> > > > +  vsup-supply:
> > > > +    description:
> > > > +      Supply voltage for the on-chip regulator (VSUP).
> > > > +
> > > >    clock-frequency:
> > > >      description:
> > > >        Controls the SCK bit-bang timing. The value is used to deriv=
e the =20
> > > =20
> > =20
>=20


