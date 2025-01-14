Return-Path: <devicetree+bounces-138465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 27205A10834
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:53:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F8427A3741
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4CDA80034;
	Tue, 14 Jan 2025 13:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HDrjMt5r"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEB585626;
	Tue, 14 Jan 2025 13:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736862814; cv=none; b=oSluebZtV7u9P5D2UkTg8zztuUp1n+oDJInhRB1uC+d0tJbZi8ZWP8yNA9UvRV62OiJH6535ceoAMYLusrkE+nMDoS734NEZ83UeNS6OS76j/Qeh0HyL83RTZ1esG4TMBCEouE3aX+NgYFnxG+GeV99uehD76dTpfaUaWz+B2t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736862814; c=relaxed/simple;
	bh=+ySX4Xs4GMMlR6qYAIWuxAeyZXR3wjJ4EO7Rth0aZoo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OJQWO317eLY2XBz9ftGIGRt1A3720UDKkH6yBlAhcDAF4e0GaGXPFSCEIGPpV5mV/LVA2xarpTFAVf7ysjP1R8uEwVxd4HrdnfRaKna8wEmRtiKy0KmYTOCQ0ahcqzXQ+yQud6d4Op7RNLWiT72Aj7AOvIKH9WGZQkm9G6YV91o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HDrjMt5r; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DE49B20004;
	Tue, 14 Jan 2025 13:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736862810;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xReQIINobAiCL6hAIyZoNV7yMmwjTKDr/zWDi9QjNHw=;
	b=HDrjMt5rMYCktvTh0oYXpB7rhsAPiRbALGRBNVjaopOkvhJZUiwjl4pcFDML+J0BU4DDnj
	GWXhE7w3U25c2jSXKEtsEci1nF5P+7r9UBkqdvckzyAyycEz8Mo3B8bX7YYKaDLo4s+tcS
	pxslifJH6iO0N61OiFZ+mhWITO7LztYbavv/EqPK+950AQlXutBTSbJMPy1vipTCSNpSW6
	aKYP/78cib9WqKPzqfRgQ3sY095lI8MYdeLdvbF35dgm1uwNH5bCE961OtTqDTaBt3CJ2s
	oVAfPCIyXQziJbStE7qYz+z3Ioj0EWFHMeewMWiBhIclXmgBR1m6hNL1rlzGsg==
Date: Tue, 14 Jan 2025 14:53:28 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Oleksij Rempel
 <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <20250114145328.437a3375@kmaincent-XPS-13-7390>
In-Reply-To: <8f5ce662-f8bc-449e-99cf-737066dabebd@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
 <20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
 <69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
 <20250113154551.32e20d1c@kmaincent-XPS-13-7390>
 <b184e29e-06b0-49cf-8469-1fa0778f06e7@sirena.org.uk>
 <20250113162620.3c244302@kmaincent-XPS-13-7390>
 <8f5ce662-f8bc-449e-99cf-737066dabebd@sirena.org.uk>
Organization: bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: kory.maincent@bootlin.com

On Mon, 13 Jan 2025 15:44:29 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Mon, Jan 13, 2025 at 04:26:20PM +0100, Kory Maincent wrote:
> > Mark Brown <broonie@kernel.org> wrote: =20
> > > On Mon, Jan 13, 2025 at 03:45:51PM +0100, Kory Maincent wrote: =20
>  [...] =20
>=20
> > > but the others are legit.  Still, we should be able to map between the
> > > two. =20
>=20
> > We could have something like that in regulator_request_power_budget()? =
=20
>=20
> > if (rdev->desc->ops->get_voltage && rdev->desc->ops->set_current_limit)=
 {
> > 	ret =3D regulator_get_voltage(rdev);
> > 	if (ret < 0)
> > 		return ret;
> >=20
> > 	tmp_64 =3D pw_req;
> > 	tmp_64 *=3D 1000000000ull;
> > 	/* uA =3D mW * 1000000000 / uV */
> > 	uA =3D DIV_ROUND_CLOSEST_ULL(tmp_64, uV);
> > 	ret =3D regulator_set_current_limit(rdev, uA);
> > 	if (ret)
> > 		return ret; =20
>=20
> Yup, indeed.  That said I am wondering if it's safer to just configure
> the constraint in the hardware rather than the currently requested
> limit, considering what might happen in the case where there's multiple
> consumers that have only been partially updated.  If the hardware limits
> or shuts down rather than warning it'll blow up badly so it might be
> better to be conservative.  Unfortunately we don't distinguish in the
> ops.  Possibly it should be a policy thing even but then that's better
> at runtime...

Indeed, should we begin without it and see later if we add it?

We could simply add an event for now:
regulator_notifier_call_chain(rdev, REGULATOR_EVENT_OVER_CURRENT, NULL);

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

