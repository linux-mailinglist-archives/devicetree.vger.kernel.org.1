Return-Path: <devicetree+bounces-8390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD257C7EBF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 09:41:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2BDDB208D5
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 07:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 013A9101E3;
	Fri, 13 Oct 2023 07:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCfzTnfS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDC0D272
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 07:41:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA431C433C7;
	Fri, 13 Oct 2023 07:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697182876;
	bh=HCwC6BY1bb24e17Bl+yq4xWJAW4Po3ldTzp38IgTEq4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jCfzTnfSPNpr8oHgUrMAWWnGod72/w0SFUhRryo5wbDOeG76rzR9TMuDoQ2Sad0hP
	 /j71x4Nhiuaz6uiC8BwRiTh5/TE6HuK+cT6suCUjlZ3JHWFA0Ma7vnSANFyuFDANaw
	 feIEzFicz9B/+sM24DE+X12K8tAMgUpenuZINmyQkg46K2qmdUAft2WB84uHs/3hfE
	 mLAITV3d5wU9XT33C2qGpePlAaR81pj4iInfmIBp+VHm4UYM1wdGKmpVaYeAqbtwk5
	 LUPUm9uYj2HD/MlLl9A4Dr8alOYiy8u/HbxvCWmFnn+saMX4Vz4APGkZt1ZnMA+t6f
	 kWz7+6MPDP24A==
Date: Fri, 13 Oct 2023 08:41:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Sunil V L <sunilvl@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v10 07/15] dt-bindings: interrupt-controller: Add RISC-V
 incoming MSI controller
Message-ID: <20231013-pluck-skies-1b4ee57e770c@spud>
References: <20231003044403.1974628-1-apatel@ventanamicro.com>
 <20231003044403.1974628-8-apatel@ventanamicro.com>
 <20231012-countable-darkish-7e449edc763d@spud>
 <CAK9=C2ViQj5iNBvQcMpYii2p+CrOiQ3hY8t5_U8mrJTcMVZCYw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SpvMUTlv7MvkLw0D"
Content-Disposition: inline
In-Reply-To: <CAK9=C2ViQj5iNBvQcMpYii2p+CrOiQ3hY8t5_U8mrJTcMVZCYw@mail.gmail.com>


--SpvMUTlv7MvkLw0D
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Anup,

On Fri, Oct 13, 2023 at 12:16:45PM +0530, Anup Patel wrote:
> On Thu, Oct 12, 2023 at 10:05=E2=80=AFPM Conor Dooley <conor@kernel.org> =
wrote:
> > On Tue, Oct 03, 2023 at 10:13:55AM +0530, Anup Patel wrote:
> > > We add DT bindings document for the RISC-V incoming MSI controller
> > > (IMSIC) defined by the RISC-V advanced interrupt architecture (AIA)
> > > specification.
> > >
> > > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> >
> > Just FYI, since they'll reply to this themselves, but some of the
> > Microchip folks have run into problems with sparse hart indexes while
> > trying to use the imsic binding to describe some configurations they
> > have. I think there were also so problems with how to describe to a
> > linux guest which file to use, when the first hart available to the
> > guest does not use the first file. They'll do a better job of describing
> > their problems than I will, so I shall leave it to them!
>=20
> Quoting AIA spec:
> "For the purpose of locating the memory pages of interrupt files in the
> address space, assume each hart (or each hart within a group) has a
> unique hart number that may or may not be related to the unique hart
> identifiers (=E2=80=9Chart IDs=E2=80=9D) that the RISC-V Privileged Archi=
tecture assigns
> to harts."
>=20
> It is very easy to get confused between the AIA "hart index" and
> "hart IDs" defined by the RISC-V Privileged specification but these
> are two very different things. The AIA "hart index" over here is the
> bits in the address of an IMSIC file.
>=20
> This DT binding follows the IMSIC file arrangement in the address
> space as defined by the section "3.6 Arrangement of the memory
> regions of multiple interrupt files" of the AIA specification. This
> arrangement is MANDATORY for platforms having both APLIC
> and IMSIC because in MSI-mode the APLIC generates target
> MSI address based the IMSIC file arrangement described in the
> section "3.6 Arrangement of the memory regions of multiple
> interrupt files". In fact, this also applies to virtual platforms
> created by hypervisors (KVM, Xen, ...)

Thanks for pointing this out - I'll pass it on and hopefully it is
helpful to them. If not, I expect that you'll hear :)

Cheers,
Conor.

--SpvMUTlv7MvkLw0D
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSj0lgAKCRB4tDGHoIJi
0npGAQC6rGsNEsyvptpG1+5wrE9ET1h1yjmigGMA1ot+EgTHewD/eQHPUyx/z1tG
Jx0CDrTp0SXbanOo3/If7opBTzOB5Qc=
=owzU
-----END PGP SIGNATURE-----

--SpvMUTlv7MvkLw0D--

