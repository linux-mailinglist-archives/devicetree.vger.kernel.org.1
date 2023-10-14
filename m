Return-Path: <devicetree+bounces-8623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194D7C94B5
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 15:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBC75282329
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 13:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B562125D8;
	Sat, 14 Oct 2023 13:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlLa0Ulc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAC4125C5
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 13:25:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9506EC433C7;
	Sat, 14 Oct 2023 13:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697289955;
	bh=xyAHBtwF6qf+q9F9kmfhHuJJAP88d/S1vOjvN3+mXHw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OlLa0Ulc0DKDp2Ct10MC5Zsba52hUu+14ZbgGrlmTFVOb+MSAqT6NFF3knJbmDzqZ
	 xXOuQvyOL/5JfqzX7hgYx3FHfjHw4KFxg3NaJpm3SH4+pnAxmNmWndifO5AapuoMuC
	 W2aQSHZEA+Ut5u4ayVY3NM4r+7zfLMYrU89VOuRA74QbdcnNEYtofU6mAJPNUcx8xE
	 ZrA3QUmfdCmFRLCcmGf3FotFK+dyRS6iYvapj4jIaX7Heh5xxjbT9zlMOuLcY/2/go
	 V6iA8DtVFoHP14QMrfr27cj1Shnb8as0vDk2qKu/PONC/9R4WFQ3dFZ5YIM53l2DlT
	 T9MYJd/YjQlQg==
Date: Sat, 14 Oct 2023 14:25:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Linu Cherian <lcherian@marvell.com>
Cc: Mike Leach <mike.leach@linaro.org>,
	"suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
	"james.clark@arm.com" <james.clark@arm.com>,
	"leo.yan@linaro.org" <leo.yan@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"coresight@lists.linaro.org" <coresight@lists.linaro.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Sunil Kovvuri Goutham <sgoutham@marvell.com>,
	George Cherian <gcherian@marvell.com>
Subject: Re: [EXT] Re: [PATCH 1/7] dt-bindings: arm: coresight-tmc: Add
 "memory-region" property
Message-ID: <20231014-carbon-slept-9464499a4156@spud>
References: <20230929133754.857678-1-lcherian@marvell.com>
 <20230929133754.857678-2-lcherian@marvell.com>
 <CAJ9a7VhzARGmywQFPNCZ27D5UKEEPSR9_hmL5fo3daFWpB26Vg@mail.gmail.com>
 <PH0PR18MB500266F8C82877450DC9DDD2CED1A@PH0PR18MB5002.namprd18.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xODWgUT9EMkdmFwT"
Content-Disposition: inline
In-Reply-To: <PH0PR18MB500266F8C82877450DC9DDD2CED1A@PH0PR18MB5002.namprd18.prod.outlook.com>


--xODWgUT9EMkdmFwT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 14, 2023 at 11:36:37AM +0000, Linu Cherian wrote:
> > > +      - description: Reserved meta data memory. Used for ETR and ETF=
 sinks.
> > > +
> > > +  memory-region-names:
> > > +    items:
> > > +      - const: trace-mem
> > > +      - const: metadata-mem
> > > +
> >=20
> > Is there a constraint required here? If we are using the memory area for
> > trace in a panic situation, then we must have the meta data memory area
> > defined?
> > Perhaps a set of names such as "etr-trace-mem", "panic-trace-mem" ,
> > "panic-metadata-mem", were the first is for general ETR trace in non-pa=
nic
> > situation and then constrain the "panic-" areas to appear together.
> > The "etr-trace-mem", "panic-trace-mem" could easily point to the same
> > area.
> >=20
> As noted above, we do not have other generic use case for these reserved =
regions now.
> Hence two regions/names, panic-trace-mem and panic-metadata-mem with cons=
traints kept as
>  minItems: 2 and maxItems: 2 would suffice ?

Whatever you do, please delete the -mem suffix.

--xODWgUT9EMkdmFwT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSqWzgAKCRB4tDGHoIJi
0qX6AP9zu1/zSvIKb+Or0bUn+DYlqMtR8PQFTUOPeVyvcHN8SwEA1kUb5kBtLo7/
/tHTuGBcFv3oHZR+As70GVeHsRHGtwA=
=JnQT
-----END PGP SIGNATURE-----

--xODWgUT9EMkdmFwT--

