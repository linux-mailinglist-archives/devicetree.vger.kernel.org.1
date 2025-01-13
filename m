Return-Path: <devicetree+bounces-138129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 164BAA0BBDC
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:27:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E34037A11A1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BCE1C5D5D;
	Mon, 13 Jan 2025 15:26:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="AI4KhFEk"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F65F24025C;
	Mon, 13 Jan 2025 15:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736781986; cv=none; b=A4HBNqLkpNe4APKO9Aohybb2XBZz4Yptq5s7ZdgEMGzzvowSlKF2Dgqkw7MDhcP7NQkBQp42k1OjiY+vOdeif2gAfzVZlQCczyHGWM/1PbVNfbasgGRvPusZ8GQVuqeTUPOvofnW1abAKP1LqbGlTTj7ilmZS614M8ygI/rK8aU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736781986; c=relaxed/simple;
	bh=kp71vy/UWZPJOwRZAI0bWwVw5h+mlsX3mTAzFLi54FM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pVUfz/QTHZcW08lqLiaWWGORdRG+1xZRnBfATXEQrgqreLlfvsLSqPJGaF8B3SxurDDZ8Pd5e/GQSf7EJVTZS6uT3RbJ76nUHGdUhLQ6BBwgrbJdKtvXv06kpfAOAEzupHooWGtAfZ8zRYloqQnDXtYPhKK0g1EcGc6PeR5B+eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=AI4KhFEk; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E15D71BF20F;
	Mon, 13 Jan 2025 15:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1736781982;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/+CROetu+DqlC4cJsBpu8v4yD89cyopqdVadUBkfYfM=;
	b=AI4KhFEkTDIeAyyV4JDsaHMggrBzHD9wD6wPCG+RREtoQwFbTrd3HLdG7nGtEenhmO+svo
	Vy5DpF4AJkWmrV1r+Qqfj+aHQn7PwuanTtu8tfP4mCTOiGg8E3hhOyitJqAgvRxq149GOr
	YSN9Fbx4EPkEigTFQ/EJ3kCMB9Aa1ft4QmcpVo7gIY96nkhY0XNeNUA8Hbfn6Ulr8cGoqR
	bh274/dHcs1IyDXU7t8LmBaCZ/Xf1+6ynFpL5A592UqffRpplppmgCDi4D2cAm7ExU6K59
	3X8+mExC4ae592v/O30t+M/99cAlzlXmz9yXHxKicPqid+Txh+UIFzH1BVMPRA==
Date: Mon, 13 Jan 2025 16:26:20 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Oleksij Rempel
 <o.rempel@pengutronix.de>, kernel@pengutronix.de
Subject: Re: [PATCH 1/2] regulator: Add support for power budget
Message-ID: <20250113162620.3c244302@kmaincent-XPS-13-7390>
In-Reply-To: <b184e29e-06b0-49cf-8469-1fa0778f06e7@sirena.org.uk>
References: <20250113-feature_regulator_pw_budget-v1-0-01e1d95c2015@bootlin.com>
	<20250113-feature_regulator_pw_budget-v1-1-01e1d95c2015@bootlin.com>
	<69eaaadf-a6b3-4a5a-af4a-5b574f9edad4@sirena.org.uk>
	<20250113154551.32e20d1c@kmaincent-XPS-13-7390>
	<b184e29e-06b0-49cf-8469-1fa0778f06e7@sirena.org.uk>
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

On Mon, 13 Jan 2025 14:51:53 +0000
Mark Brown <broonie@kernel.org> wrote:

> On Mon, Jan 13, 2025 at 03:45:51PM +0100, Kory Maincent wrote:
> > Mark Brown <broonie@kernel.org> wrote: =20
>=20
> > > joining it up with the power limiting.  It's fortunately not used
> > > dynamically by anything at the minute so we could just remove that API
> > > and replace it by a power one, given that nobody uses it and there do
> > > appear to be users for the power based API.  We do have some things t=
hat
> > > set current limits in constraints IIRC. =20
>=20
> > There is few users for the regulator_set_current_limit function.
> > https://elixir.bootlin.com/linux/v6.12.6/A/ident/regulator_set_current_=
limit
> > =20
>=20
> > Not sure we could replace it to power limit that easily. =20
>=20
> Huh, I wonder what tree I grepped in.  The DRM usage is yet more broken
> usage of the regulator API, I'm not sure why it attracts this so much,
> but the others are legit.  Still, we should be able to map between the
> two.

We could have something like that in regulator_request_power_budget()?

if (rdev->desc->ops->get_voltage && rdev->desc->ops->set_current_limit) {
	ret =3D regulator_get_voltage(rdev);
	if (ret < 0)
		return ret;

	tmp_64 =3D pw_req;
	tmp_64 *=3D 1000000000ull;
	/* uA =3D mW * 1000000000 / uV */
	uA =3D DIV_ROUND_CLOSEST_ULL(tmp_64, uV);
	ret =3D regulator_set_current_limit(rdev, uA);
	if (ret)
		return ret;
}

=20
> > > We probably also need something explicit about how we handle baseline
> > > load from things like passive components, the assumption probably nee=
ds
> > > to be that it's negligable. =20
>=20
> > We could add a devicetree property on the consumer node, but lets keep =
it
> > for later. =20
>=20
> One problem is that there might not be a consumer node - things like
> random passives don't tend to get represented.

Mmh true, so indeed if they are not represented lets assume they are
negligible. ;)

--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

