Return-Path: <devicetree+bounces-293651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PwnC+B5+2nCbgMAu9opvQ
	(envelope-from <devicetree+bounces-293651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 19:26:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 827D94DECE7
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 19:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B52D8300A8CC
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 17:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF44644E044;
	Wed,  6 May 2026 17:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NldR935S"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C80A4B8DF6;
	Wed,  6 May 2026 17:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778088412; cv=none; b=mCQ8jBw3ePQGuydx3sThdYh1Ax95+soV2g4mWQdb6YcGS/EXnYvorPE+VblNRnhsJ6p3DpgkFhrJE5tmDyKIZyXRbqA7X/XtYqyz61FJgm+22Eka9DrpiXvFQ27ezLcBoP2IrC1iBBfkxcamD0ImCcwolAucPGx+hiF9u7eeHcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778088412; c=relaxed/simple;
	bh=6spRu0fK39sPcn0qt/4e8ycfain8ILV1hQ2Je1l3kos=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xr8oLwsgIu4uRZhIqadc++qOXP7K2fSgfGwp1gGCSVvGP5uDZyVJjgu++E/9AHMPcSOFWwgf4MHN9SY8/2j7UtxzbG+FTAD1CbRLxUHfzXcG0oGLtdl1kYPVhAdmJ+hTvTrG7f+XtI8lI6a4AZnt7LfL3Shxk6MvH1hdx1FcBF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NldR935S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 526B0C2BCB0;
	Wed,  6 May 2026 17:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778088411;
	bh=6spRu0fK39sPcn0qt/4e8ycfain8ILV1hQ2Je1l3kos=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NldR935Sd6deO8ySyNbKHJ5ZB9i5mrWL2hpACmplrZUYYK1fYiBBuuvKU8h8hQaFE
	 cNMhUIcKF+nr8/vn5cITq7APdSbwBSYNrZ/cQq4SPOnW6Qs5Qt2N2d1jsxxEjjyYe2
	 BSbKMnWMPFCnzKR+bIdq+kErUMxXwKrDFXsVCRWni5iSPl/g2c6EsvFhIYpHxDBGtj
	 axlPftO57X/o9YqAs3bn9DICS2yJMleKTqpjhLTxjmmsjft6RhIrMxhds1iYl3b8l0
	 FVujuhNzrE19Sg2POmhLklbGNZkkwpgILrkOi+APwowixzTs94Mof/zqUYhh7A/5Xt
	 5ZMFNi4QOOuvA==
Date: Wed, 6 May 2026 18:26:46 +0100
From: Conor Dooley <conor@kernel.org>
To: "Stan, Liviu" <Liviu.Stan@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	"Hennerich, Michael" <Michael.Hennerich@analog.com>,
	"Sa, Nuno" <Nuno.Sa@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: iio: temperature: Add ADT7604 support
 to adi,ltc2983
Message-ID: <20260506-running-change-9d5f9d342452@spud>
References: <20260427132526.272716-1-liviu.stan@analog.com>
 <20260427132526.272716-2-liviu.stan@analog.com>
 <20260427-epileptic-pendant-1df77a472793@spud>
 <SA5PR03MB83779FB7E2577AE0247D8669F63F2@SA5PR03MB8377.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="B0kR81PJcyXpxgJc"
Content-Disposition: inline
In-Reply-To: <SA5PR03MB83779FB7E2577AE0247D8669F63F2@SA5PR03MB8377.namprd03.prod.outlook.com>
X-Rspamd-Queue-Id: 827D94DECE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293651-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


--B0kR81PJcyXpxgJc
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 06, 2026 at 01:06:35PM +0000, Stan, Liviu wrote:
> Thank you for the comments, and I apologize for the delayed answer.=20
>=20
> On Mon, Apr 27, 2026, Conor Dooley wrote:
> > I have to wonder if this is the right approach, if it's the same device
> > just with a different label and advertised purpose.
>=20
> Could you expand on this? Are you suggesting the copper-trace@ and
> leak-detector@ node types aren't needed, or something about the overall
> approach of adding ADT7604 to the existing ltc2983 binding? I want to
> make sure I understand the concern.

Yeah, if it is the same device, just with different uses for the same
pins, I was wondering whether the correct approach is to reuse the
existing child nodes, with some way of indicating what they are
measuring (e.g. use the compatible to decide). I think Jonathan
expressed a similar sentiment.

>=20
> > Pedantry perhaps, but isn't this an "ohmmeter"?
>=20
> For the naming I followed the convention used in this binding: rtd@,=20
> thermocouple@, diode@ are named after what they are, not what
> they measure. copper-trace@ names the component being sensed. Jonathan

An "ohmmeter" is what it is, not what it measures. What it measures
would be "ohms".

> has a related question below about whether this should just reuse rtd@
> with type 18, so the name might change depending on where that lands.
>=20
> > I want to look into this property, where is the datasheet?
>=20
> The ADT7604 datasheet is not yet publicly available. Will add the URL
> once it is.

Right. It'll be hard to provide a full review without being able to look
at the datasheet.

> =20
> > Are these ever linked in a different way?
> > Ditto here and in the rtd node. Are these fixed linkages or actually
> > dynamic?

Please don't trim this aggressively, you've removed the context for what
this is about, and it was 2 weeks ago so there's no way I remember what
it was.

> The linkage is board-dependent. Any rsense on channels 2-20 can be
> paired with any sensor channel in that range. The example uses two
> separate sense resistors because the copper trace and leak detector
> channels need different values (100=CE=A9 vs 10k=CE=A9, these are the rec=
ommended
> values in the datasheet).

This question of mine is fairly moot anyway, given the existing child
nodes all have have it, especially if there ends up being reuse of them,
so you can ignore this comment.

Cheers,
Conor.

--B0kR81PJcyXpxgJc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaft51gAKCRB4tDGHoIJi
0vPLAQCqMeZh7sEYWP9JZlTPTGPpKshIebnp2u3eGsQXVOmBawD/VZI65GullHyu
4m05JDve2DmsJLmIpc6tYaJoInfIJgI=
=KnO+
-----END PGP SIGNATURE-----

--B0kR81PJcyXpxgJc--

