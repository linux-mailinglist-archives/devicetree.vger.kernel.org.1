Return-Path: <devicetree+bounces-275249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +P7KEGQUtGn2gwAAu9opvQ
	(envelope-from <devicetree+bounces-275249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:43:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE97D2841D6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0F0832AE3C6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C07B3A6EF7;
	Fri, 13 Mar 2026 13:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBLxQkoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41950399368
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:24:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408250; cv=none; b=aapVuALq6HozNFkvkkKVfqAVQsB7PRoLh7KNiqQfB6qIjNu4wLe1g5d6WmRpoREbbZ9xKNYVUeczFJVvIfiaXbXEw8rwzU4tXIk7/N5Iovzpn2LtZKkkl1/ZMJSluB4L3TjdY4A7qxzmwrh8NMXSBEWKNsJgEsfkIotJeuJD8L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408250; c=relaxed/simple;
	bh=lNKkA2IKM/YFts+spUswfNDsSFiQO6FSzxl2rWD4PJY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MjYWcJC5zzd6IM/9solvjnfd/PH9M6Zjls/OLbNues9I/zYst9zX/4ZQV80LIKtXX123v21cs9cu5qH5ndtkoA63pnbRqUr8ZhkMheqqRrqAcN2jj0tcaZctzCNXtS4UX0R84pByAiJrNMq+UhIeEv0KNFwMFLo9rwGMdOVfBhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBLxQkoZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F6FEC2BCB1;
	Fri, 13 Mar 2026 13:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408249;
	bh=lNKkA2IKM/YFts+spUswfNDsSFiQO6FSzxl2rWD4PJY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dBLxQkoZ6wTZZdVFTQsglpZ4lFPXMi5abtj8Ay4jfolQbp0VG/jG2DxeAU5wwjC/H
	 Jm+WD57+R+NBxwNzQWGOGiU1yEToQnOVnSk3ANUDM/dI22QuvEcJFf4n2lGwHGSF4T
	 9y0uYj0y34WgJ8PuU8fAt+JhjO8j63PUdHDPGoDA5wrwBXFDyxsQJ3UbHcju1/n8UV
	 PMPDl7r6PsVhFdeSKg1F2QPgZpikUOxaM5VxUXyG8lPSSaEutCL+odIgTaWdzwspRQ
	 pfFlzHQpFam0Ph7F+1iY3LiDIL0fJzPFRf+Um0IbdWbYRDUkBqiF9BkRHRZfSFtddJ
	 K0FjRAuLR5O+A==
Date: Fri, 13 Mar 2026 13:24:04 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of
 Svpbmt "XPbmtUC"
Message-ID: <20260313-visitor-majestic-1a6888dc57b2@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VanPv3+K5gjvwz1N"
Content-Disposition: inline
In-Reply-To: <20260313084407.29669-2-ganboing@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275249-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DE97D2841D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--VanPv3+K5gjvwz1N
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey,

Gonna offer some feedback on the detail of what's been done in this
series, without providing any commentary on whether this is the correct
approach to take.

On Fri, Mar 13, 2026 at 01:44:02AM -0700, Bo Gan wrote:
> On platforms that doesn't support Svpbmt or XTheadMae, SoC vendors
> sometimes map the system memory twice in physical address space, one
> as cached, and the other as uncached. Through the uncached window,
> device drivers will be able to map DMA buffer for noncoherent devices.
> Such setup is usually found in SoC with pre-Svpbmt Sifive cores.
> Make use of such feature by modeling it as "XPbmtUC", a customized
> version of Svpbmt, where a single bit in PTE is used for UC control.
> There's no IO bit with such scheme, as it's assumed that the PMA
> (usually hard-wired on these SoCs) will properly convey the strongly-
> ordered, non-idempotent attribute of the MMIO region.
>=20
> The enablement of such position of "XPbmtUC" is controlled by the
> device-tree property "riscv,xpbmt-uncache-bit".

Firstly, the naming generally I take some exception to. If this is some
fake vendor extension for linux purposes, it needs to have "xlinux" in
it, like our xlinuxenvcfg does. It should also be consistent, don't use
"xpmbtuc" and "xpbmt-uncache-bit", pick one and stick to it.

Athough, I think I disagree fundamentally with this property, as it seems
to me like "software configuration" that shouldn't be permitted in
devicetree. Maybe I am misunderstanding, but the numbers you chose are
convenient, not set in stone by the specific hardware, right?

I'd be much more comfortable with adding xlinuxwhatever to
riscv,isa-extensions, to signal that a soc supports this stuff than with
a property for the bit itself. I suppose that bit information could then
come from a LUT in the vendor extensions, that a validate callback could
check (via root compatible) before enabling. There's not a super neat
way to do that at the moment though I don't think, code currently
expects that vendor extensions are in a different "namespace" to
standard ones, and this would blur the lines because it's not from a
specific vendor, nor is it a standard extension.
I guess, it could be done by keeping it as a standard number, but then
it's a bit trickier to neatly access the LUT while keeping it split
apart.
I know this means having to modify the kernel if there's a new device,
but I'm inclined to say "deal with it" because they could've done
something standard and opted not to.

Could also argue that this should be shoved into a sifive specific
thing, but I don't expect that they're the only ones with devices like
this that could benefit.

>=20
> Example:
>=20
> Starfive JH7110 (Sifive U74):
>            [0x0,   0x40000000) Low MMIO
>     [0x40000000, 0x2_40000000) Cached Mem
>   [0x4_40000000, 0x6_40000000) Uncached Mem UC+
>   [0x9_00000000, 0x9_d0000000) High MMIO
>=20
> Device-tree:
>   riscv,xpbmt-uncache-bit =3D <32>;
>=20
> Use PTE bit 32 (PPN bit 34) as UC (uncache) control to perfectly
> match the memory map of the SoC.
>=20
> ESWIN EIC770X (Sifive U84/P550):
>            [0x0,    0x20000000) Core Internal
>     [0x20000000,    0x40000000) Core Internal (Die 1)
>     [0x40000000,    0x60000000) Low MMIO
>     [0x60000000,    0x80000000) Low MMIO (Die 1)
>     [0x80000000, 0x10_80000000) Cached Mem
>  [0x20_00000000, 0x30_00000000) Cached Mem (Die 1)
>  [0x80_00000000, 0xa0_00000000) High MMIO
>  [0xa0_00000000, 0xc0_00000000) High MMIO (Die 1)
>  [0xc0_00000000, 0xd0_00000000) Uncached Mem
>  [0xe0_00000000, 0xf0_00000000) Uncached Mem (Die 1)
>=20
> EIC770X is not directly compatible to this model, as the uncached
> regions are offsetted, and the offset is different among the Dies
> in the dual-die version (EIC7702). so we expect the firmware to
> provide a thin layer of hypervisor to transparently re-map:
>=20
>     [0x80000000,  0x10_80000000) Cached Mem
>  [0x20_00000000,  0x30_00000000) Cached Mem (Die 1)
>  [0xc0_00000000,  0xd0_00000000) Uncached Mem <----------.
>  [0xe0_00000000,  0xf0_00000000) Uncached Mem (Die 1) <--+--.
> [0x100_80000000, 0x110_80000000) Mem UC+ ----------------'  |
> [0x120_00000000, 0x130_00000000) Mem UC+ (Die 1) -----------'
>=20
> With that, the firmware/bootloader can set the following at boot:
>   riscv,xpbmt-uncache-bit =3D <38>;
>=20
> Signed-off-by: Bo Gan <ganboing@gmail.com>
> ---
>  arch/riscv/Kconfig                  | 12 ++++++++++++
>  arch/riscv/include/asm/hwcap.h      |  1 +
>  arch/riscv/include/asm/pgtable-64.h |  8 ++++++++
>  arch/riscv/kernel/cpufeature.c      |  8 ++++++++
>  arch/riscv/mm/pgtable.c             |  7 +++++++
>  5 files changed, 36 insertions(+)
>=20
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 6b39f37f769a2..f2b4da6a3deb1 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -893,6 +893,18 @@ config TOOLCHAIN_NEEDS_OLD_ISA_SPEC
>  	  versions of clang and GCC to be passed to GAS, which has the same res=
ult
>  	  as passing zicsr and zifencei to -march.
> =20
> +config RISCV_ISA_XPBMTUC
> +	bool "Support XPbmtUC (customized pbmt uncache bit)"
> +	depends on 64BIT && MMU
> +	depends on RISCV_ALTERNATIVE
> +	default n
> +	select DMA_DIRECT_REMAP
> +	help
> +	  Add support for "riscv,xpbmt-uncache-bit" device-tree property.
> +	  The bit denotes the bit in PTE that marks the page as uncached.
> +
> +	  If you don't know what to do here, say N.
> +
>  config FPU
>  	bool "FPU support"
>  	default y
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwca=
p.h
> index 4369a23385413..6baa6566cf4cc 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -111,6 +111,7 @@
>  #define RISCV_ISA_EXT_ZILSD		102
>  #define RISCV_ISA_EXT_ZCLSD		103
> =20
> +#define RISCV_ISA_EXT_XPBMTUC		126
>  #define RISCV_ISA_EXT_XLINUXENVCFG	127
> =20
>  #define RISCV_ISA_EXT_MAX		128
> diff --git a/arch/riscv/include/asm/pgtable-64.h b/arch/riscv/include/asm=
/pgtable-64.h
> index 6e789fa58514c..1a6d04884111d 100644
> --- a/arch/riscv/include/asm/pgtable-64.h
> +++ b/arch/riscv/include/asm/pgtable-64.h
> @@ -140,6 +140,14 @@ enum napot_cont_order {
>  #define _PAGE_IO_THEAD		((1UL << 63) | (1UL << 60))
>  #define _PAGE_MTMASK_THEAD	(_PAGE_PMA_THEAD | _PAGE_IO_THEAD | (1UL << 5=
9))
> =20
> +#ifdef CONFIG_RISCV_ISA_XPBMTUC
> +extern int riscv_xpbmtuc_bit;
> +extern u64 riscv_xpbmtuc_mask;
> +#endif
> +
> +#define XPBMTUC_HAS_PAGE_NOCACHE CONFIG_RISCV_ISA_XPBMTUC
> +#define XPBMTUC_HAS_PAGE_MTMASK  CONFIG_RISCV_ISA_XPBMTUC
> +
>  static inline u64 riscv_page_mtmask(void)
>  {
>  	u64 val;
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index fa591aff9d335..faec169004b4a 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -1118,6 +1118,14 @@ void __init riscv_fill_hwcap(void)
>  		riscv_v_setup_vsize();
>  	}
> =20
> +#ifdef CONFIG_RISCV_ISA_XPBMTUC

Code like this needs to be unconditionally compiled.

> +	if (!of_property_read_u32(of_root, "riscv,xpbmt-uncache-bit",
> +				  &riscv_xpbmtuc_bit)) {
> +		riscv_xpbmtuc_mask =3D 1UL << riscv_xpbmtuc_bit;
> +		set_bit(RISCV_ISA_EXT_XPBMTUC, riscv_isa);
> +		pr_info("Using XPbmtUC bit=3D%d\n", riscv_xpbmtuc_bit);
> +	}
> +#endif
>  	memset(print_str, 0, sizeof(print_str));
>  	for (i =3D 0, j =3D 0; i < NUM_ALPHA_EXTS; i++)
>  		if (riscv_isa[0] & BIT_MASK(i))
> diff --git a/arch/riscv/mm/pgtable.c b/arch/riscv/mm/pgtable.c
> index 807c0a0de1827..4ca442bc8595d 100644
> --- a/arch/riscv/mm/pgtable.c
> +++ b/arch/riscv/mm/pgtable.c
> @@ -5,6 +5,13 @@
>  #include <linux/kernel.h>
>  #include <linux/pgtable.h>
> =20
> +#ifdef CONFIG_RISCV_ISA_XPBMTUC
> +int riscv_xpbmtuc_bit;
> +
> +u64 riscv_xpbmtuc_mask;
> +EXPORT_SYMBOL(riscv_xpbmtuc_mask);
> +#endif
> +
>  int ptep_set_access_flags(struct vm_area_struct *vma,
>  			  unsigned long address, pte_t *ptep,
>  			  pte_t entry, int dirty)
> --=20
> 2.34.1
>=20

--VanPv3+K5gjvwz1N
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabQP9AAKCRB4tDGHoIJi
0vB+AQDGHQys/cD41N40x9XoDUOvC0CUkoia1aGMBiGUAVkRogEAy1WoJGR6ePHr
ET62pB957qO81+1RNUs9j9QSS4MM3QQ=
=tjV9
-----END PGP SIGNATURE-----

--VanPv3+K5gjvwz1N--

