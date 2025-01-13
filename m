Return-Path: <devicetree+bounces-138067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEA6A0BA44
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:50:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 074A27A2529
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 14:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98D2D22F845;
	Mon, 13 Jan 2025 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="QrU16DrQ"
X-Original-To: devicetree@vger.kernel.org
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD13C23A10A;
	Mon, 13 Jan 2025 14:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736779558; cv=none; b=Bfbbw9pXYYRnk81F9O0yrXBj80by1IicullRoiFJRFzvDq/KaI/Q7VWcFEAZBAcyI0naohomX0PK0f5V5v6PE/9ObzhLCzOckY5tW3WKsHTHSHyWcmc8pqFN3sok+FBUVbDAG0ExZBPs9EZjvLHy6YATJtX0ne8aU6gNbB+23UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736779558; c=relaxed/simple;
	bh=qfeie2LLC6r/LxMgG+94vh0yegDB2ugw7gjpK6LFCqQ=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MZRo/pCfiJUgQjk08S4Q5l1u3GAOeP5VmHtl7XRE6ep9QY98Ow6iA5tDM7esNQY4/EXMHMCHtg9t7iAcgecC4fivlGs36g/zhZMAhCe3gqPjMA2I0kWUQIPwJ5aNyXyqXcGq8FvO0dg9Zyo/bhIgc1NTJa8P6uAFq0sdImeY/4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=QrU16DrQ; arc=none smtp.client-ip=217.70.183.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0B4001C0006;
	Mon, 13 Jan 2025 14:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736779553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VZmriakMmvwgKfcGmyVyT7f/1gfTYnpJw7Y+QlZNwTM=;
	b=QrU16DrQ9fl4XFvCxVERRasoWvcYQMsIDKfg/yaVR8vUw9kxgwNCGlduLrZBb34OrdX8FW
	jjL5ZVLwZxcuPT4eCzOX6iryeql9MrxD4LXzI3cLEjwBw2vHcm+4QYdVZZxYQl2XxCBnI0
	LyYtecC2xZF6FSbnPyAUQYmNdkG6EHejrZARIoWh4L982O8Kgu3mtEoJGUzL2fq9u1svua
	057PI51y4rSz4V/5p6rVyiodOhFK3vvL/Vhwa6Czl3iEy684JBcFzc9dPf0a3sSMVE+xcL
	zXqqljC6jB0XYZYnBKs1vbTomQpQ+UmUklsT/ZUaFq0uM/12BX9mDmkOhyDc4A==
Date: Mon, 13 Jan 2025 15:45:51 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Oleksij Rempel
 <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <20250113154551.32e20d1c@kmaincent-XPS-13-7390>
In-Reply-To: <69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
	<20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
	<69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
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

On Mon, 13 Jan 2025 14:11:16 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Mon, Jan 13, 2025 at 02:07:45PM +0100, Kory Maincent wrote:
>=20
> > +	rdev->pw_available_mW -=3D pw_req; =20
>=20
> ...
>=20
> > +	if (!of_property_read_u32(np, "regulator-power-budget-milliwatt",
> > &pval))
> > +		constraints->pw_budget_mW =3D pval;
> > + =20
>=20
> This is only tracking the currently free power budget which both
> restricts what we can do for tracking things like mismatched or missing
> frees and means there's less information for diagnostic tools.  I'd
> prefer to keep track of how much is in use and check against the budget
> when trying to increase it, allowing us to check for releasing more
> budget than was requested.

Ack.=20

> There's also an interaction with hardware with support for enforcing
> power limits, either via alarms or by actually limiting.  Current
> limiting/warning support is reasonably common, we should probably be
> joining it up with the power limiting.  It's fortunately not used
> dynamically by anything at the minute so we could just remove that API
> and replace it by a power one, given that nobody uses it and there do
> appear to be users for the power based API.  We do have some things that
> set current limits in constraints IIRC.

There is few users for the regulator_set_current_limit function.
https://elixir.bootlin.com/linux/v6.12.6/A/ident/regulator_set_current_limit

Not sure we could replace it to power limit that easily.

> We probably also need something explicit about how we handle baseline
> load from things like passive components, the assumption probably needs
> to be that it's negligable.

We could add a devicetree property on the consumer node, but lets keep it f=
or
later.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

