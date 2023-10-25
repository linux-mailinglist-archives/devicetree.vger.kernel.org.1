Return-Path: <devicetree+bounces-11753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9507D6875
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 12:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE133B21064
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B72262B7;
	Wed, 25 Oct 2023 10:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYi3dilY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 747542566
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 10:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4434C433C8;
	Wed, 25 Oct 2023 10:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698229697;
	bh=eDN3u4TDJcYx+DdQgle7gIiWglsOEno7mki/bA7iChI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HYi3dilYvxvpeucgQcFZt/105T7co3wqObnpSfk+MdkG6n1Ax+Nglw0FpL/EzTLXr
	 fwkO3jO8d8RXPVQed3WVMNI2+ACOa/JE7PFkG7W19F6wiQrPJ9D6V2LpkUsvPGlrep
	 lUii0yUazUY8F0nyRZ/c2WQwv2DMrfRoGxw7rMst956WIV8CvPko4YwOQLKcH3YqXu
	 hMdZcIi+sFMwQq/sScjpwVX29E0DEuiJzLo2hB5YOcfWKY6VM0ZuLkg5TpXut5ncbo
	 uqRHOomTnr8dg9wWfUSrrkX829PueOgyJk6g4jhanNNVG8x2VifYJebgi7URD7czWP
	 XReaJl1ihzO8Q==
Date: Wed, 25 Oct 2023 11:28:11 +0100
From: Conor Dooley <conor@kernel.org>
To: John Clark <inindev@gmail.com>
Cc: Minda Chen <minda.chen@starfivetech.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mason Huo <mason.huo@starfivetech.com>,
	Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
Subject: Re: [PATCH v9 01/20] dt-bindings: PCI: Add PLDA XpressRICH PCIe host
 common properties
Message-ID: <20231025-dotted-almighty-ae489e9eb764@spud>
References: <20231020104341.63157-1-minda.chen@starfivetech.com>
 <20231020104341.63157-2-minda.chen@starfivetech.com>
 <8ced1915-7b94-4abc-bd8b-cb4bf027fa01@linaro.org>
 <bd441e1d-73ae-4abc-8eb2-877419acb2df@starfivetech.com>
 <97e2decd-f6a3-91cb-6ca7-539f53b686f3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hpByJWRUAD7N1Kah"
Content-Disposition: inline
In-Reply-To: <97e2decd-f6a3-91cb-6ca7-539f53b686f3@gmail.com>


--hpByJWRUAD7N1Kah
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi John,

On Mon, Oct 23, 2023 at 11:09:50PM -0400, John Clark wrote:
> > On 2023/10/20 19:04, Krzysztof Kozlowski wrote:
> > > On 20/10/2023 12:43, Minda Chen wrote:
> > > > Add PLDA XpressRICH PCIe host common properties dt-binding doc.
> > > > Microchip PolarFire PCIe host using PLDA IP.
> > > > Move common properties from Microchip PolarFire PCIe host
> > > > to PLDA files.
> > > >=20
> > > > Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> > > > Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
> > > > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > ---
> > > >   .../bindings/pci/microchip,pcie-host.yaml     | 55 +-------------
> > > >   .../pci/plda,xpressrich3-axi-common.yaml      | 75 ++++++++++++++=
+++++
> > > Where was this patch reviewed?
> > >=20
> > > Best regards,
> > > Krzysztof
> > >=20
> > This Conor's review tag. v2 : https://patchwork.kernel.org/project/linu=
x-pci/patch/20230727103949.26149-2-minda.chen@starfivetech.com/
> > This is Rob's review tag v3: https://patchwork.kernel.org/project/linux=
-pci/patch/20230814082016.104181-2-minda.chen@starfivetech.com/
>=20
> Tested-by: John Clark <inindev@gmail.com>:
> https://github.com/inindev/visionfive2/tree/main/kernel/patches

I suspect you don't mean that you tested this individual dt-binding, but
rather that you tested the whole series. If so, you should probably
provide this tested-by against the cover-letter instead of this bindings
patch.

Cheers,
Conor.

--hpByJWRUAD7N1Kah
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTjtuwAKCRB4tDGHoIJi
0iNaAQDXojC88wOu7QjVVmLnYZL8zENhy8Oi2Di4/qv5YX44awEA94984Ym3RynW
Zg7JNxtoafH9S4GD3WxSvjcUuQVxQwk=
=pa28
-----END PGP SIGNATURE-----

--hpByJWRUAD7N1Kah--

