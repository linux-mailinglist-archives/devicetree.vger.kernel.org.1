Return-Path: <devicetree+bounces-8532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 364827C884E
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:08:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF1F6282D8A
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3F3418E20;
	Fri, 13 Oct 2023 15:07:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdS4R5qu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DDF18C2A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:07:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 603ACC433C7;
	Fri, 13 Oct 2023 15:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697209677;
	bh=dhX9Cz4CPdlTS15c30PJqSWT8Hhp5TTCXVK+ytwsF+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LdS4R5qu/2CmE/A/7LWDaTOjVXe9stnWCGRS3hmJXHIOGqjNXPJ1Auge+RaBdJPf+
	 QjAJye2oMUHKRQwNdCtGqE0d6/Qwc0iGVzvHu/dnUOImiA4Z3lXSd19b5OEZzWxvSO
	 uQLTYYA//2o9MjVMkK6HYwiJRxCUdZ4zePrq4D5cE8dwdupPAOPOeXJdrPyguxQe7a
	 xdxCSs57gRfobdSGacBkWhFZlcZk+rV9lXiB70tk/NZfp8TcMqEccyrl+zBVOmgG02
	 lAY5Z4okTJCIzcxOeE1RT6M5Z3EfslthRBSub9lD2fzuxH6vz3N99oSrZKr/Igu257
	 nfBdmpb69SSpA==
Date: Fri, 13 Oct 2023 16:07:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kris Chaplin <kris.chaplin@amd.com>, thomas.delev@amd.com,
	michal.simek@amd.com, robh+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	git@amd.com
Subject: Re: [PATCH 1/2] dt-bindings: w1: Add YAML DT Schema for AMD w1
 master and MAINTAINERS entry
Message-ID: <20231013-january-caliber-2e7acbee15ec@spud>
References: <20231013093109.37165-1-kris.chaplin@amd.com>
 <20231013093109.37165-2-kris.chaplin@amd.com>
 <f864dd17-7848-4a83-bd8b-2093d11a153a@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="D0eSubfO6C5kvNYG"
Content-Disposition: inline
In-Reply-To: <f864dd17-7848-4a83-bd8b-2093d11a153a@linaro.org>


--D0eSubfO6C5kvNYG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 13, 2023 at 05:04:32PM +0200, Krzysztof Kozlowski wrote:
> On 13/10/2023 11:30, Kris Chaplin wrote:
> > Add YAML DT Schema for the AMD w1 master IP.
> >=20
> > This hardware guarantees protocol timing for driving off-board devices =
such
> > as thermal sensors, proms, etc using the 1wire protocol.
> >=20
> > Add MAINTAINERS entry for DT Schema.
> >=20
> > Co-developed-by: Thomas Delev <thomas.delev@amd.com>
> > Signed-off-by: Thomas Delev <thomas.delev@amd.com>
> > Signed-off-by: Kris Chaplin <kris.chaplin@amd.com>
> > ---
> >  .../bindings/w1/amd,axi-1wire-master.yaml     | 44 +++++++++++++++++++
> >  MAINTAINERS                                   |  7 +++
> >  2 files changed, 51 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/w1/amd,axi-1wire-=
master.yaml
> >=20
> > diff --git a/Documentation/devicetree/bindings/w1/amd,axi-1wire-master.=
yaml b/Documentation/devicetree/bindings/w1/amd,axi-1wire-master.yaml
> > new file mode 100644
> > index 000000000000..41f7294a84a3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/w1/amd,axi-1wire-master.yaml
> > @@ -0,0 +1,44 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/w1/amd,axi-1wire-master.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: AMD AXI 1-wire bus master for Programmable Logic
> > +
> > +maintainers:
> > +  - Kris Chaplin <kris.chaplin@amd.com>
> > +
> > +properties:
> > +  compatible:
> > +    const: amd,axi-1wire-master
>=20
> That's a quite generic compatible. axi is ARM term, 1-wire is the name
> of the bus and master is the role. Concatenating three common words does
> not create unique device name. Compatibles are supposed to be specific
> and this is really relaxed. Anything can be over AXI, everything in
> 1wire is 1wire and every master device is a master.

Given the vendor (and the title of the binding) this is almost certainly
an FPGA IP core, so the generic name is understandable. Using the exact
name of the IP in the AMD/Xilinx catalog probably is the best choice?

--D0eSubfO6C5kvNYG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSldSAAKCRB4tDGHoIJi
0sBKAP93WwQ4YTKSu7mJymnqveBhEtNSTuCJf8KJYNoJgZVzfAD9F0MIZhF1dKAC
2RQaPgWN8gVOs/24ipBDUWeEca2vAwY=
=VLV0
-----END PGP SIGNATURE-----

--D0eSubfO6C5kvNYG--

