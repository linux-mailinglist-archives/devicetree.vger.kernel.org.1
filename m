Return-Path: <devicetree+bounces-303528-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOH+BZMtF2rd7wcAu9opvQ
	(envelope-from <devicetree+bounces-303528-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:44:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5825E870B
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 19:44:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 930A53059920
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 17:41:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3483F44E04A;
	Wed, 27 May 2026 17:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wth4RzpO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA002449EA6;
	Wed, 27 May 2026 17:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779903698; cv=none; b=iTuktD8E4BN9cvUW49UWwclodhJvWBxEXA1XshiD8Wb/cfFsNHxO/3guUrc0ySwiORrCS1KRVKFxzVkIqx79LnmceP+sbxJmKgXQtsFfMXD1H2u57Y9wtL5DR+SLdNY3ThQwFENvp92yseP8zj26tS+rA/ncgGWlhosjsGi2J5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779903698; c=relaxed/simple;
	bh=iZIkXKVfO9OE8tPVI4RvnaAE5rdVtUbYqZE89Ih1RN0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hGadyZOOg+iUg1hbVIuhf9v+DqAL9jXIHFPF4RVwazxTeDLi7Fvjw/pfGlY/mnvDgoan3ioeFwl5Dc9bMG0c8C8sKGJEPOA8uMWfD3nMiZ2zYijV+s9idey3lnMXA4DE7qF1lS51BLgUa74wREx7cTvykAz/vffOwrp+k3BAYnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wth4RzpO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A961F00ADE;
	Wed, 27 May 2026 17:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779903696;
	bh=9luwl9BEiLTZ5kTmr0YqomNc8Qf5u2zQbzi/2A8FX/w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=Wth4RzpO1L21oLkcT/qszeJ17KSjoMUdlFkBTDoKBTbP4vfn4Lb7BCojLyIVcpAVt
	 c6VAEN/TkVF8wmc+xzqwA+sChuN5asMzqeBoe7NM8zjboqnsmOJ/byiqUXIwTCoFY1
	 jLV5klRT0hJ7rwhOy6b0AGEtEG9sQtOHByvk/zHRYUWek59S3bZWv3rkOCbXvtbfE+
	 AZQMck0sBv2h7OcsQTiTJ8+YK5z81ZSqqgTq6eQpWa8LPeqAZ37RjE70qxr282dVUS
	 voM9Kclk+INQHnDvXJatRb4k0YVGWfZNrpyb9hLuQzynn4qGXRitUw+waiN6YDTf9B
	 umem0ocHrnFHg==
Date: Wed, 27 May 2026 18:41:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: sashiko-reviews@lists.linux.dev, Piyush Patle
 <piyushpatle228@gmail.com>, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v10 04/11] dt-bindings: iio: adc: hx711: add HX710B
 support
Message-ID: <20260527184128.2f5f02e5@jic23-huawei>
In-Reply-To: <20260525-clanking-possum-4ba58b466854@spud>
References: <20260525105127.180156-5-piyushpatle228@gmail.com>
	<20260525111144.CA7E71F000E9@smtp.kernel.org>
	<20260525-clanking-possum-4ba58b466854@spud>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-303528-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,gmail.com,kernel.org,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 9E5825E870B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 25 May 2026 18:01:41 +0100
Conor Dooley <conor@kernel.org> wrote:

> Jonathan,
>=20
> Here's an example of the sort of stuff it complains about on every
> iteration.
>=20
Thanks. +cc linux-iio@vger.kernel.org

> On Mon, May 25, 2026 at 11:11:44AM +0000, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 2 potential is=
sue(s) to consider:
> > - [Medium] The `dvdd-supply` property is utilized by the HX710B and men=
tioned in the commit message, but it is not enforced as a required property=
 for the new compatible or included in the example.
Yup. This stuff needs fixing.

> > - [Low] The `if` condition for the `avia,hx710b` compatible incorrectly=
 uses `const` instead of `contains: const`, causing schema validation to al=
ways fail for HX710B nodes.

This one I'm not sure on. Is it right?  I tested by hacking
the example to have a supply it shouldn't and the schema validation failed
as expected making me think this is a false positive.
I have zero natural feel for yaml so no idea :)

+CC linux-iio@vger.kernel.org


> > --
> >=20
> > commit 006ef740da7a1ce47e48ea34371f93f0e9dd9a9a
> > Author: Piyush Patle <piyushpatle228@gmail.com>
> >=20
> > dt-bindings: iio: adc: hx711: add HX710B support
> >    =20
> > Add the avia,hx710b compatible and document the HX710B-specific
> > DVDD and VREF supplies. Add constraints that forbid HX711-only
> > properties on HX710B nodes and require vref-supply for HX710B,
> > then add a separate HX710B example.
> >  =20
> > >     Add the avia,hx710b compatible and document the HX710B-specific
> > >     DVDD and VREF supplies. =20
> >=20
> > [Severity: Medium]
> > The commit message mentions documenting the DVDD supply, and the binding
> > description notes the HX710B measures the DVDD-AVDD supply voltage diff=
erence.
> > However, dvdd-supply is not enforced as a required property for the new
> > compatible, nor is it included in the new example node.
> >=20
> > Should dvdd-supply be added to the required properties and the example =
to
> > ensure complete schema constraints?
> >=20
> > [ ... ]
> >  =20
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yam=
l b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > > index 099235b5fd548..f0aeb15e9eb9e 100644
> > > --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > > +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml =20
> > [ ... ] =20
> > > @@ -62,6 +71,21 @@ properties:
> > >      maximum: 2500000
> > >      default: 400000
> > > =20
> > > +allOf:
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          const: avia,hx710b =20
> >=20
> > [Severity: Low]
> > Is this the correct way to match the compatible string? Since the compa=
tible
> > property is evaluated as a string array, using a strict scalar comparis=
on here
> > evaluates to false, causing the schema to always fall through to the el=
se block.
> >=20
> > Would it be better to use contains: const: avia,hx710b instead so that =
it
> > properly evaluates the array and enforces the constraints in the then b=
lock?
> >  =20
> > > +    then:
> > > +      properties:
> > > +        vsup-supply: false
> > > +        rate-gpios: false =20
> >=20
> > --=20
> > Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525105127.=
180156-1-piyushpatle228@gmail.com?part=3D4 =20


