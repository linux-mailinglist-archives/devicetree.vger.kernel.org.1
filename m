Return-Path: <devicetree+bounces-5252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEBB7B5B3D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:27:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5EBD4281AB7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17B761F936;
	Mon,  2 Oct 2023 19:27:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0775915BD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7611C433C7;
	Mon,  2 Oct 2023 19:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274828;
	bh=M3xDfvFGJJ/XkEcT9JbDKrkZISYSg+CslZeqm002CB8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i/DPb7cvsilLk1Me6VqMIkpZXQltZmNhVfkH1ND/tlty7MKbI65nGb/5L7x8FiLEZ
	 trFegEA7SOIy2qJ2oUDGbKZn2UsnPB61coGpOzRaEiWVmXmLQdpPCAwM3JZuSoqxhg
	 1Gxxb1eUlUjWkPZ5PvaUap7PyuWWBh5P6lu4V4obRTi2XfJn1Bv4By4q2fjJ/3IMzZ
	 nDo+EWy9TDxxRRlVxema8XVH9+Z8SG5yMfFDia+5BUYEDbpikZKgCod/Paepuucp1Q
	 2aucm/MFeL8GA6tz0bg5dLULejYY8gvl7LFbm/XtcJKequQEcDmJGtiAXwxJBZsGnN
	 Rnp/Z/IfcKQRw==
Date: Mon, 2 Oct 2023 20:27:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Rob Herring <robh@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: Convert PXA1928 USB/HSIC PHY to DT
 schema
Message-ID: <20231002-lividly-cameo-d8f8b3a0d8e5@spud>
References: <20231001-pxa1928-usb-yaml-v1-1-9309a8c0c03f@skole.hr>
 <20231002143619.GA1651295-robh@kernel.org>
 <4849448.GXAFRqVoOG@radijator>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="JfifZB+kbj7ENI+C"
Content-Disposition: inline
In-Reply-To: <4849448.GXAFRqVoOG@radijator>


--JfifZB+kbj7ENI+C
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 02, 2023 at 04:55:08PM +0200, Duje Mihanovi=C4=87 wrote:
> On Monday, October 2, 2023 4:36:19 PM CEST Rob Herring wrote:
> > On Sun, Oct 01, 2023 at 03:05:43PM +0200, Duje Mihanovi=C4=87 wrote:
> > > +maintainers:
> > > +  - devicetree@vger.kernel.org
> >=20
> > No, should be someone with hardware or familar with it. I added this,
> > but no longer have h/w or documentation. IMO, it should probably be
> > removed.
>=20
> My samsung,coreprimevelte's PXA1908 uses this PHY, is it fine if I add my=
self=20
> there instead of the devicetree list?

I would say, please do add yourself!

--JfifZB+kbj7ENI+C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRsZiAAKCRB4tDGHoIJi
0pYRAP4h8UzkWugenlTljc1mHc6xiEIv6TodIDuceuZiVozMiwD/eAfn8S2aLBVn
M4fP3xq30F7v6BjCzJ3ft3dU0b/Lhwo=
=Zns+
-----END PGP SIGNATURE-----

--JfifZB+kbj7ENI+C--

