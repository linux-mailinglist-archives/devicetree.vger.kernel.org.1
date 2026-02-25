Return-Path: <devicetree+bounces-268511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Ps7Evo3n2m5ZQQAu9opvQ
	(envelope-from <devicetree+bounces-268511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:57:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AD82919BDB0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:57:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 741A83051A98
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E553E9590;
	Wed, 25 Feb 2026 17:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPYcbC23"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3A82D592F;
	Wed, 25 Feb 2026 17:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772042145; cv=none; b=Skt/EIftMMbLxYhcAEgJmzcwPq3yTY3wubwAS3Emt95A5wfHY5dlpZ99t51nSYlVYAfbUMNXz9vvIj9rtZzKJfBxRaN2GrWIlbaCsx3XN98VEBJx6Jcx2+dv5z7CCh9fphy++yNkpbWaAVFZWdDlPLUmxOtyTFMJRvrNpK5sfIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772042145; c=relaxed/simple;
	bh=Y04VG7OP++PmLNmeIwo6aAQ1oWh69Z1oyBkCKHXj+yU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RP9TPU6FahpdcFuyGd20d1tHluHfdYa2f/p/1KjYCft+E0II/u20sBUyzTa1iopVkBoOghQPhE/eg3M99WZZceWDlCfvTK+gwahbssjblLuC+xFER0CgIHdDME4WNLqlfET17GtYI0ayfulcZFxb93gs2kiAXdlhtdweywuoHE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPYcbC23; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83C25C116D0;
	Wed, 25 Feb 2026 17:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772042145;
	bh=Y04VG7OP++PmLNmeIwo6aAQ1oWh69Z1oyBkCKHXj+yU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bPYcbC23AjbszuaV9fPe+NCar5B/7ypRN+0XM4ilWQ4Z2eovo6XRM4spvfrAhEM7U
	 /UC7gGXyzy9887OrOTvW6E7ic5IU+aEbp35oUdcl4lfbEkNaFKmXaM+1s1+WNFsUt9
	 oVQ3ho2TAG/G5yICJr00aiIAdULl3N4oh0h3Yx6f5fQKpff5Vn4PLU5zyF7KUfROUy
	 lF0q+hrr3sq6i4M5u/Exxk6VZhq7CxiQdCwXAQ/a9YKxRGjpBVNXWhXBFrieEelq+c
	 gtdxa9raEQ87c7BY2PBCC3jDsvpvnpNthgirWpGuF2PExn/9n4aYYGUPKqNDPm3gal
	 AcXi/Fijo0XpA==
Date: Wed, 25 Feb 2026 17:55:40 +0000
From: Conor Dooley <conor@kernel.org>
To: Huan He <hehuan1@eswincomputing.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, jszhang@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	ningyu@eswincomputing.com, linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, xuxiang@eswincomputing.com,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: Re: Re: [PATCH v3] dt-bindings: mmc: dwcmshc-sdhci: Fix resets array
 validation
Message-ID: <20260225-reproduce-perky-93c909d4b80b@spud>
References: <20260224092337.312-1-hehuan1@eswincomputing.com>
 <20260224-thud-hydroxide-4c139d351fa6@spud>
 <389f2709.38c5.19c92d3a42c.Coremail.hehuan1@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r5Ege4HGxbv9zEIN"
Content-Disposition: inline
In-Reply-To: <389f2709.38c5.19c92d3a42c.Coremail.hehuan1@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268511-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,einfochips.com:email]
X-Rspamd-Queue-Id: AD82919BDB0
X-Rspamd-Action: no action


--r5Ege4HGxbv9zEIN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 25, 2026 at 11:24:29AM +0800, Huan He wrote:
> > > The binding defines tuple-style reset-names items for some
> > > compatibles, which implicitly enforces a fixed array length
> > > via JSON Schema.
> > >=20
> > > Defining global maxItems for resets and reset-names causes these
> > > constraints to be intersected via allOf, resulting in an effective
> > > minItems equal to the global maxItems. This leads to dtbs_check
> > > failures reporting reset arrays as too short, even when the DTS
> > > provides the correct number of entries.
> > >=20
> > > Fixes: 30009a21f257 ("dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin E=
IC7700")
> > > Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
> > > Signed-off-by: Huan He <hehuan1@eswincomputing.com>
> >=20
> > Signoff chain looks wrong. You're author and submitter, what did
> > Pritesh do?
>=20
> Thank you very much for taking the time to review the patch and for your
> valuable feedback.
>=20
> Internally, Pritesh provided the initial version of this fix, and I have
> made subsequent updates and refinements before submitting it to the
> community.

Then you need to add a Co-developed-by tag for them in addition to the
Signed-off-by.

--r5Ege4HGxbv9zEIN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ83nAAKCRB4tDGHoIJi
0tVOAQCfHo+z+y5wLW1BjG+5Jk1xqJO2nqGF5uEUheSt3lpSmQEAm2CsgYTbRIMf
8KlwwIhKs22i/YHVG7NPBrhZp7SE6Q4=
=cx59
-----END PGP SIGNATURE-----

--r5Ege4HGxbv9zEIN--

