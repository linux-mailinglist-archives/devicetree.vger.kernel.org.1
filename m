Return-Path: <devicetree+bounces-77184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C16190DA53
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 19:07:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33FC9B2092F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 16:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5282913A868;
	Tue, 18 Jun 2024 16:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFkMJMgT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0C81CA80
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 16:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718729969; cv=none; b=YEANyyz2HOcAta6evDfH0hoGl/7zL8HUc0JriOPPejkjEnhBYs/1J75wbqKybLR+q6flN8Lg+Z3oieZCHAF1XH5dhW7A5Kpf30wru/I7u9YH/oLuUcDR2bfxCQoaREQ50luoonNLazZ4KpzwC9x8kZeV715zljNjHND2x8wAiHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718729969; c=relaxed/simple;
	bh=BN/C5Nb0yygjg5pvCO3p5/z0sIpSGfNqd5GMoHjSu3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Sd0FE7MFCdjD06Ro6bARZosQ4N/WV3TRbL3ivGb0OQwvDJYDDqImETbMpT06R3/fwOjntYAu5YJ4E6z1nRQyOHuM3sCW7hEEpCgBHlNE/XIndaH1idqwlc//4fNz16PgYtoRFy7rDxu0pKAYXkQtBTHpIuyFMofO03WXaunSFBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFkMJMgT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8ECFC3277B;
	Tue, 18 Jun 2024 16:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718729968;
	bh=BN/C5Nb0yygjg5pvCO3p5/z0sIpSGfNqd5GMoHjSu3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZFkMJMgT8x9xhuQ94T8ZfKdEeW1QkolIKssBM4fRa8o5fYECfQWLB/5bIP7nbDOQz
	 f1C5DR3kEWTsGZsSj/OybNVh9wt5Ds9J2XQvoPSBLsXE+dhbzVjAlJPq4mrs+bh21O
	 mQ6Pi1QLsGHmBJBLPsVQsnt1jDrJ0riP/H+sdxdbGTlebnLr566HBcyybwjm7yye/T
	 agDGxqBRt4kl2+Pg+VWWJArWaNBLNu1FWFnOmGB2BzzgwkjefaG9eOqXmyVV2pn3pM
	 jA+gr4t51PvPfpHvfkNNqmJq4UXiJ+l9bur2n7v4T5W5Gbi8xKCKM+O/EkQlIl7i0q
	 Tlb6pwSHOEC6g==
Date: Tue, 18 Jun 2024 17:59:22 +0100
From: Conor Dooley <conor@kernel.org>
To: Andrew Jones <ajones@ventanamicro.com>
Cc: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	conor.dooley@microchip.com, anup@brainfault.org,
	atishp@atishpatra.org, robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com,
	David.Laight@aculab.com, parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: Re: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
Message-ID: <20240618-deftly-operation-de4f8ac260d5@spud>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
 <20240426100820.14762-12-ajones@ventanamicro.com>
 <d0abe3e0-af0f-4693-b943-57ea3fc2189f@rivosinc.com>
 <20240618-581fb4c20b4fe05d76eafa44@orel>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IN3S0y2QJ7kRgv7C"
Content-Disposition: inline
In-Reply-To: <20240618-581fb4c20b4fe05d76eafa44@orel>


--IN3S0y2QJ7kRgv7C
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 06:01:04PM +0200, Andrew Jones wrote:
> On Tue, Jun 18, 2024 at 03:48:59PM GMT, Cl=E9ment L=E9ger wrote:
> >=20
> >=20
> > On 26/04/2024 12:08, Andrew Jones wrote:
> > > Export Zawrs ISA extension through hwprobe.
> > >=20
> > > Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> > > ---
> > >  Documentation/arch/riscv/hwprobe.rst  | 4 ++++
> > >  arch/riscv/include/uapi/asm/hwprobe.h | 1 +
> > >  arch/riscv/kernel/sys_hwprobe.c       | 1 +
> > >  3 files changed, 6 insertions(+)
> > >=20
> > > diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arc=
h/riscv/hwprobe.rst
> > > index b2bcc9eed9aa..e072ce8285d8 100644
> > > --- a/Documentation/arch/riscv/hwprobe.rst
> > > +++ b/Documentation/arch/riscv/hwprobe.rst
> > > @@ -188,6 +188,10 @@ The following keys are defined:
> > >         manual starting from commit 95cf1f9 ("Add changes requested b=
y Ved
> > >         during signoff")
> > > =20
> > > +  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is suppo=
rted as
> > > +       ratified in commit 98918c844281 ("Merge pull request #1217 fr=
om
> > > +       riscv/zawrs") of riscv-isa-manual.
> > > +
> > >  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains pe=
rformance
> > >    information about the selected set of processors.
> > > =20
> > > diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/inclu=
de/uapi/asm/hwprobe.h
> > > index 9f2a8e3ff204..a5fca3878a32 100644
> > > --- a/arch/riscv/include/uapi/asm/hwprobe.h
> > > +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> > > @@ -59,6 +59,7 @@ struct riscv_hwprobe {
> > >  #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
> > >  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
> > >  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
> > > +#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)
> > >  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
> > >  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
> > >  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> > > diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_=
hwprobe.c
> > > index 8cae41a502dd..b86e3531a45a 100644
> > > --- a/arch/riscv/kernel/sys_hwprobe.c
> > > +++ b/arch/riscv/kernel/sys_hwprobe.c
> > > @@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe=
 *pair,
> > >  		EXT_KEY(ZTSO);
> > >  		EXT_KEY(ZACAS);
> > >  		EXT_KEY(ZICOND);
> > > +		EXT_KEY(ZAWRS);
> > > =20
> > >  		if (has_vector()) {
> > >  			EXT_KEY(ZVBB);
> >=20
> > AFAIU, when used in userspace, this will actually "stall" the processor
> > until an interrupt/timeout happens, so the current process will keep
> > occupying the processor doing nothing (up to the next interrupt/timeout)
> > right ?
>=20
> Yes, but of course the OS can always preempt the task as well.
>=20
> >=20
> > BTW, the spec also states that "When the TW (Timeout Wait) bit in
> > mstatus is set and WRS.NTO is executed in any privilege mode other than
> > M mode, and it does not complete within an implementation-specific
> > bounded time limit, the WRS.NTO instruction will cause an illegal
> > instruction exception." so I guess the process will be killed in this c=
ase ?
>=20
> We don't expect mstatus.TW to be set. If it is, then wfi would likely kill
> the kernel before wrs.nto gets a chance to, but one or the other will
> certainly ensure usermode never gets a chance to try it :-)
>=20
> We have a handful of these assumptions about how M-mode has configured
> things prior to Linux starting. It'd be good if we documented them all
> somewhere.

Boot.rst :) If you're adding a new assumption, I think it should go
there.

--IN3S0y2QJ7kRgv7C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnG86gAKCRB4tDGHoIJi
0u/pAP0Q+XfeJlxsj+b1A0JnFsLS341SCTvQvkNkGu2FE+tTJQEAjE6tjRm5Mgdk
5DGJXtnfPCM6K7TsUvi+tfAJVUeZxgQ=
=s+KC
-----END PGP SIGNATURE-----

--IN3S0y2QJ7kRgv7C--

