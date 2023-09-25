Return-Path: <devicetree+bounces-3225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 572897ADBA1
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:37:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 08F8528127B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EA8420B3D;
	Mon, 25 Sep 2023 15:37:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2F41C283
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 15:37:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C98AEC433C9;
	Mon, 25 Sep 2023 15:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695656221;
	bh=sdp9WxT5Z2lgszPM/OOfMLde02C/QRjsq7FQxQAVDPA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kMvMAYnGDkMci/OFXrlZQBynWf7Xu3y262IhqgtqarPYF0wtZM1Qhrze7YDZBP87x
	 kCDVM3ZWQGtIA1p7Yov4t41HZOMVIgQGcvF902U75NTndLm+WbT2Jktsgs4GkMBpZZ
	 wsK5ff2sFfTp0yP36eFg1hh/FF5GYggcJS2nPH9SqedleWW98UuMDOKDmcPKBd0/Bj
	 cCsJci0qKLnAT+Hqw/VqBRLIiaw3BxcKIHAGclKRKpgz3Fbyq5cx616joeDGx5tzRB
	 4D8Z2uS+TZVlcGDaJdgNCdWBPOYrIAPfqgoGX7uPozpscQJpQ2fzRPJdcJx934Wf3T
	 H1V0ek1Witmgw==
Date: Mon, 25 Sep 2023 16:36:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 0/9] KVM RISC-V Conditional Operations
Message-ID: <20230925-reappear-unkind-7f31acdd82de@spud>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925-gorged-boxer-3804735e2d18@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fr4n8SIpzVRReSlN"
Content-Disposition: inline
In-Reply-To: <20230925-gorged-boxer-3804735e2d18@spud>


--fr4n8SIpzVRReSlN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 04:33:15PM +0100, Conor Dooley wrote:
> On Mon, Sep 25, 2023 at 07:08:50PM +0530, Anup Patel wrote:
> > This series extends KVM RISC-V to allow Guest/VM discover and use
> > conditional operations related ISA extensions (namely XVentanaCondOps
> > and Zicond).
> >=20
> > To try these patches, use KVMTOOL from riscv_zbx_zicntr_smstateen_condo=
ps_v1
> > branch at: https://github.com/avpatel/kvmtool.git
> >=20
> > These patches are based upon the latest riscv_kvm_queue and can also be
> > found in the riscv_kvm_condops_v2 branch at:
> > https://github.com/avpatel/linux.git
> >=20
> > Changes since v1:
> >  - Rebased the series on riscv_kvm_queue
> >  - Split PATCH1 and PATCH2 of v1 series into two patches
> >  - Added separate test configs for XVentanaCondOps and Zicond in PATCH7
> >    of v1 series.
> >=20
> > Anup Patel (9):
> >   dt-bindings: riscv: Add XVentanaCondOps extension entry
> >   RISC-V: Detect XVentanaCondOps from ISA string
> >   dt-bindings: riscv: Add Zicond extension entry
> >   RISC-V: Detect Zicond from ISA string
>=20
> For these 4:
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Actually, now that I think of it, I'm going to temporarily un-review this.
=46rom patch-acceptance.rst:
| Additionally, the RISC-V specification allows implementers to create
| their own custom extensions.  These custom extensions aren't required
| to go through any review or ratification process by the RISC-V
| Foundation.  To avoid the maintenance complexity and potential
| performance impact of adding kernel code for implementor-specific
| RISC-V extensions, we'll only consider patches for extensions that either:
|=20
| - Have been officially frozen or ratified by the RISC-V Foundation, or
| - Have been implemented in hardware that is widely available, per standard
|   Linux practice.

The xventanacondops bits don't qualify under the first entry, and I
don't think they qualify under the second yet. Am I wrong?

--fr4n8SIpzVRReSlN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRGpGAAKCRB4tDGHoIJi
0sCZAP4z8BsgLxwoBX4uqM9+ElfBxRyrpaAFGTQYQ8wIudnC/gD/UlTsJGAk9D7P
mkPcRiNieVtPTyjuEBRE+7BKFBXBpAo=
=Ny2/
-----END PGP SIGNATURE-----

--fr4n8SIpzVRReSlN--

