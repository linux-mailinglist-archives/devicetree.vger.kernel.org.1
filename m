Return-Path: <devicetree+bounces-321411-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZnIvJr34S2p1dwEAu9opvQ
	(envelope-from <devicetree+bounces-321411-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 20:49:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A10714AB0
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 20:49:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="YH5F/Ul0";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321411-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321411-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A8E73392448
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 17:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36D22F6560;
	Mon,  6 Jul 2026 17:05:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DE82F5321;
	Mon,  6 Jul 2026 17:05:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783357542; cv=none; b=ECCb3+mdfEOdzE3BYlE9ECMoz+rORFEBY416+VI09cvDIfFBubSG7WEI7QmnRsUrRbasWsXADG1C6NZ6j4Vb20Y8n2/VDUuUId+GrIIk9ZWBXK3zF+ziNzL/DRAPNt8ln8GhuIQJdsz5ISid0TvUfp3M8Y1c0NxUuQ+XSPQ0NLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783357542; c=relaxed/simple;
	bh=x/lziuMn8G8zhwvS3K0msWqM/BxjAc6tZZzoW8SoHE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ts1VlCBLfCzzvpR6Af8/d7KxSND5gTLV1JN6XIlR9kW661ae3Vk+TFNaNsxPpJRbHvD9CPbl5qLc4NNCvyQY+gHrBDlGCA9PyvFiShqkQ0Gtlh7cqTO641yXZoFmIjXc7+qIyYHkpTrkKxwmb20JtvBKBs0NOAPaJzZaVVigG0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH5F/Ul0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32B01F000E9;
	Mon,  6 Jul 2026 17:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783357541;
	bh=lkxauWYkRGWXtyvIfe3JkFwVHQz4F+BMnXZJA33Y0Pc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YH5F/Ul0asvVQG8l85leFtVtL6ecTPkCLE3JdHulDVfxMMkl5gMzmKP1qY7vcJUn/
	 z1QGlt5D3y7EC4QK/6woJJlU9cKuaPEVhPAhd6jsvNKzzI6B5RImXi5thKKmlK6Tvj
	 tlTdzI/Bgj9QG5EqojqWUWUEi8EcDkKQF/S4eO2KMQa9PKuh/lOV701KgDecbUQ9cn
	 3vXNd0bBYJ8HFGAoI4PGqnGfWDiyhPHmfubXJG59ijiBluVlurTXmBXUlqbDYfeXDF
	 FQJZbMhXBlQ4JlATonWSBJ0on80qGkHDVuOApeggy32gDWS82vaTXb59pzfZub/yac
	 TIvi3einL05eQ==
Date: Mon, 6 Jul 2026 18:05:37 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>, conor+dt@kernel.org,
	robh@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 5/8] riscv: dts: eswin: add hsp bus node
Message-ID: <20260706-antiques-famine-8c4a765c4680@spud>
References: <20260706081055.1126275-1-pinkesh.vaghela@einfochips.com>
 <20260706081055.1126275-6-pinkesh.vaghela@einfochips.com>
 <20260706082335.4C4351F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="M7SI1DSv1W/eNRyf"
Content-Disposition: inline
In-Reply-To: <20260706082335.4C4351F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:pinkesh.vaghela@einfochips.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321411-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spud:mid,einfochips.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4A10714AB0

--M7SI1DSv1W/eNRyf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 06, 2026 at 08:23:34AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 2 potential issu=
e(s) to consider:
> - [High] The `hsp_sp_csr` syscon node lacks a `clocks` property, causing =
unclocked MMIO accesses that can crash the system.
> - [Low] Non-generic node name for syscon device.
> --
>=20
> commit 2f5171ba39f634bc5960f8f8754a5b822bc8c76b
> Author: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
>=20
> riscv: dts: eswin: add hsp bus node
>=20
> Add an HSP bus node to manage the HSP CFG clock used by HSP
> peripherals. This clock is required for accessing both the HSP CSR
> registers and the register spaces of HSP peripheral devices.
>=20
> > diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/d=
ts/eswin/eic7700.dtsi
> > --- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
> > +++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
> [ ... ]
> > @@ -252,6 +252,19 @@ plic: interrupt-controller@c000000 {
> >  			#interrupt-cells =3D <1>;
> >  		};
> > =20
> > +		hsp: bus@50400000 {
> > +			compatible =3D "simple-pm-bus";
> > +			ranges =3D <0x0 0x50400000 0x0 0x50400000 0x0 0xa0000>;
> > +			clocks =3D <&clk EIC7700_CLK_GATE_HSP_CFG_CLK>;
> > +			#address-cells =3D <2>;
> > +			#size-cells =3D <2>;
> > +
> > +			hsp_sp_csr: hsp-sp-top-csr@50440000 {
>=20
> [Severity: Low]
> Does this node name violate standard Device Tree naming conventions?
>=20
> According to the Devicetree Specification, node names should be generic a=
nd
> reflect the function of the device rather than its precise programming mo=
del.
>=20
> Should this be named syscon@50440000 instead of hsp-sp-top-csr@50440000?

It should.

>=20
> > +				compatible =3D "eswin,eic7700-syscfg", "syscon";
> > +				reg =3D <0x0 0x50440000 0x0 0x2000>;
> > +			};
>=20
> [Severity: High]
> Will accessing this syscon node cause a synchronous external abort?
>=20
> Since this syscon node is placed under a simple-pm-bus, and syscon nodes
> do not bind to standard platform drivers, no pm_runtime_get_sync() is ever
> called on behalf of the syscon.=20
>=20
> This means the parent bus remains runtime-suspended, leaving the
> EIC7700_CLK_GATE_HSP_CFG_CLK clock disabled.
>=20
> The syscon regmap implementation can manage its own clock explicitly duri=
ng
> IO accesses via regmap_mmio_attach_clk(), but it requires the clocks prop=
erty
> to be present in the syscon node itself.
>=20
> Because this is missing the clocks property, neither the bus nor the regm=
ap
> will enable the clock prior to the MMIO access, which could crash the sys=
tem
> if accessed via debugfs or a consumer driver.
>=20
> Should the clocks property be added directly to this node as well?

The devicetree should represent the hardware, so if the clock belongs to
the bus, not the syscon (and the size of the region suggests there's
other stuff here) it should remain in the bus node.
If that causes problems for driver registration, then the code needs to
be changed to enable the parent's clock.

>=20
> > +		};
> > +
>=20
> --=20
> Sashiko AI review =B7 https://sashiko.dev/#/patchset/20260706081055.11262=
75-1-pinkesh.vaghela@einfochips.com?part=3D5

--M7SI1DSv1W/eNRyf
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakvgYQAKCRB4tDGHoIJi
0gnGAQC+lh6fMGGQg+oAMhzZ3FelQYL/wmcVMgswGp0VSc3ZLQD+MEcxyQhqbmp3
kKh/YmLdRFVlMzAxD6RiqltWh93fzgI=
=zNGc
-----END PGP SIGNATURE-----

--M7SI1DSv1W/eNRyf--

