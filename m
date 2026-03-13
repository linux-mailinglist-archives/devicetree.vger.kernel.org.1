Return-Path: <devicetree+bounces-275194-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iGH+EiQEtGnjfQAAu9opvQ
	(envelope-from <devicetree+bounces-275194-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A94862830ED
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:33:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3F9C32269F2
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 786F229ACFD;
	Fri, 13 Mar 2026 12:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVUq0zNR"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560B8145A1F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773405048; cv=none; b=ZBGvu2FR5rfOCannKbg6H2amA5g/P6ylRAE9sHoE61KAmGG27yIgcC/YmukpTqf5+U3APfyrFHWrz7xHfLdqnqCiJFijIvpzp7g9m+xs3Ym58DMQE6wXVnnuHULUSowCItjhUMkjjevdRSKgqR+HvJrnM8m9gbTkB8wKde1eJ8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773405048; c=relaxed/simple;
	bh=UC+Yl3z9QYsXrYj3QIsZyePn4NCs3LhBHikYlM0lMo4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uJSnqTsBKsXqGc0s5K/wJFpTJSLVtlA1corHHg66o8KHCJsa7+a8WqAp2UqQa6NaV07LqDNuZIJLMT9efU+gAp5ooe7c16BY6R4YiDy7OrdXinXj+k5Xkttq6oz8J5VcTUSYiXTHWjuhNxjNQ+29bQcSoz6JNFLKVQJnEp2nzJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVUq0zNR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B019C19421;
	Fri, 13 Mar 2026 12:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773405047;
	bh=UC+Yl3z9QYsXrYj3QIsZyePn4NCs3LhBHikYlM0lMo4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IVUq0zNRNrljbCxxMZulnQZ7IOV29OHJIkJ4OgZpAAvHIOj1JbG04jaMt2XLMFA/+
	 NL7xKNMiV9XwBmTh99MIY/KPA73hS6g6ez5MwN+3J7HaxHKdjhdcoWVkk1gyGnE35j
	 DBjr48+sqRS3xbffIolD3DIeuN9Eul2/I2hJTLzBUKvgKjICNXyY9LvnSQhjGrpFJX
	 JhZTnlb8fWLSi8b0IipKgeWCV0sM7qDa+Rm3X7rMHrn7AdiWT9uU4FWGjHtJ0TrYfg
	 iZ3mA8NEZw0MzFdHLIOr4VuSyP8dru3o3zUNJo5Mw77r0ZJFr729SF0f3nhzvzZCa6
	 8Xp6cvqwz9HMw==
Date: Fri, 13 Mar 2026 12:30:42 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 0/6] riscv: support EIC770X/JH7110 noncoherent
 devices with XPbmtUC
Message-ID: <20260313-uninsured-desecrate-06d51e8c100d@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xl7sylfjzH1sx4al"
Content-Disposition: inline
In-Reply-To: <20260313084407.29669-1-ganboing@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-275194-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: A94862830ED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--xl7sylfjzH1sx4al
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 01:44:01AM -0700, Bo Gan wrote:
> Starfive JH7110 and ESWIN EIC770X both have non cache-coherent
> peripherals. On JH7110[1], GPU/VOUT/VPU/ISP are routed to the sys port,
> making them not cache-coherent. On EIC770X, all peripherals are routed
> to the sys port, and none is cache-coherent. To make drivers work on
> such platforms, the standard solution is to use Svpbmt and map the DMA
> buffer as uncacheable. However, neither SoC supports Svpbmt. Instead,
> they map the system memory twice, as cached and uncached. The uncached
> alias implicitly applies the uncacheable PMA. To support such platform,
> a special form of Svpbmt, namely "XPbmtUC" is introduced in this patch.
> It's a synthetical PTE format where a single bit (UC) is controlling
> the cacheability and the bit position can be configured at runtime. It
> is intended to model the physical memory aliasing with minimal effort.
>=20
> On JH7110, it aligns perfectly with the HW, as the aliased UC region
> happens to be offsetted by 2^34. Thus, configuring the XPbmtUC with
> bit=3D32 (PPN is shifted by 2) is all that needs to be done.
>=20
> On EIC770X, the aliased UC region is put to a awkward offset, and given
> there can be 2 NUMA node (dual-die) with 2 separate memory regions and
> their UC alias counterpart, we instead ask the firmware to provide a
> thin-layer hypervisor to re-arrange the memory map. The XPbmtUC will be
> enabled with bit=3D38, thus map all UC pages to 2^40 (the upper-half of
> 2^41), and the underlaying hypervisor will re-map the 2^40+ addresses
> to the appropriate UC alias regions. (See description in PATCH 1/6)
>=20
> We chose bit 38 (PPN bit 40) to make the 2-stage translation efficient.
> Hypervisor can utilize Sv39x4 G-stage scheme, and map all pages as 1GB
> huge page, consuming only the first-level page table (16KB total), and
> several TLB entries. In practice, it's the firmware/bootloader that
> configures XPbmtUC through device-tree, based on firmware capabilities,
> and skip the enablement on stock firmware. This is tested on Hifive
> Premier P550 with the modified OpenSBI[2]. It runs the host Linux in VS
> mode, and provide the aforementioned remapping. The performance penalty
> (if not running KVM in Linux) is minimal, as the CPU is never switched
> to HS mode. A very slight, unavoidable, slow down is with the external
> interrupt delivery. Due to the lack of AIA in EIC770X, all device irq
> now needs to trap to M mode first, before forwarding to VS mode. The
> overhead of running KVM in such setup is yet unknown, and may well be
> noticeable, as all HS-qualified instructions will trap to M mode, and
> there's also the extra cost of flushing G/VS-stage TLBs. I'm analyzing
> it in parallel.
>=20
> I'm aware there's an ongoing series that Samuel sent for physical
> memory aliases. I haven't been following too closely, but if you're
> worried about it touching to many areas, I hope my series can shed some
> light on the problem. My change is very minimal and local, also fairly
> easy to remove if we later decide deprecating it down the road.
>=20
> [1] https://github.com/starfive-tech/JH7100_Docs/blob/main/JH7100%20Cache=
%20Coherence%20V1.0.pdf
> [2] https://github.com/ganboing/opensbi/tree/eic77x-vspt-physalias-wip

For those following along at home, Samuel's series is:
https://lore.kernel.org/all/20251113014656.2605447-20-samuel.holland@sifive=
=2Ecom/

I've been meaning to try it, but never conjured up the time to dig into
it...

--xl7sylfjzH1sx4al
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabQDcgAKCRB4tDGHoIJi
0k91AQCTigu4flNTwbRfBa2qpwsZVt98SjWUsg5VrekaxBGmfwEAtK6Z8NycfbK9
zELdQt5kDWP0hvATewi82y8QSsJ6WgM=
=TC7+
-----END PGP SIGNATURE-----

--xl7sylfjzH1sx4al--

