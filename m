Return-Path: <devicetree+bounces-275279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLJbI4wYtGkihQAAu9opvQ
	(envelope-from <devicetree+bounces-275279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:00:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C26C284657
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AA20530BDD8D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C70385539;
	Fri, 13 Mar 2026 13:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jgH13Yni"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD0A2D7D2E
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773409717; cv=none; b=GBT9kN53MnLp976qh5SP+/dZQNp/YJksF2ZITCtkFTbdWgtXj1xEO0r7ldmG4ae6l8Gmhp70n22thOuV8Raek1cpLYF2ngzuH/nZQ2xhZiHM9p1cwnYzuLyjPuCJ/0skdee6jdCsjiZiElehSiefxOb/0iHFXYoxsDZEOwJCNb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773409717; c=relaxed/simple;
	bh=G6WRpwOtPnyKpUDWneQADPk1oA0mXzw03EQnI7rs77I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SxdTZLfV9r+xt1bzGxpb+DlS+BOo2woQMbyHPxJWi78GWkJVXifH5hH0HA0aZa7vr2WwHOLY8NU/wC74W2Q/eESS5OeCiN8yFiGzw+0qmN+g95BSo+97vdf9nv1IJj2Y6jL/MyK+tCCA0RAQl4ZzTYs2Q2+gylbC8EHVPTJfs08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jgH13Yni; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95FE7C2BC86;
	Fri, 13 Mar 2026 13:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773409717;
	bh=G6WRpwOtPnyKpUDWneQADPk1oA0mXzw03EQnI7rs77I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jgH13Yni03rZyMrnpBZ012qtNHkwlscJVuc7GlRxjed3EDVnCTSpNfpQyCfiRharJ
	 UTX6ohC/5e2Ou1OrnNxZ8D6PQ+vUdHj8zKPdJGzRgTl02GkVu1yN1P1VDTbH4cXale
	 X4a2XbwYgvt1BBfnnhsYK3NIq3hTHn/z4XR9HdpbRTIlrZzgGo2MiyV/z2kkfPFKWg
	 8YHoOc5qjv7q8xDiCtdYrAYcjF1HVo9R6N/rgDg2h7gSzTa+TF+FexN7Jvy3a9pk36
	 SFPjAD54QNN/BpOau4a88Re91+8S7iXRd7shLbHGdWp10lbNU7VDDABmmbIfnyPrnN
	 8FyE6OI7+V8eg==
Date: Fri, 13 Mar 2026 13:48:32 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 5/6] riscv: dts: starfive: jh7110: activate XPbmtUC
Message-ID: <20260313-overstep-viscosity-23f4f23e1871@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-6-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f7HJKH+Mr7wyhx1L"
Content-Disposition: inline
In-Reply-To: <20260313084407.29669-6-ganboing@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275279-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C26C284657
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--f7HJKH+Mr7wyhx1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 01:44:06AM -0700, Bo Gan wrote:
> Set riscv,xpbmt-uncache-bit to 32 to match SoC memory map:
>=20
>            [0x0,   0x40000000) Low MMIO
>     [0x40000000, 0x2_40000000) Cached Mem
>   [0x4_40000000, 0x6_40000000) Uncached Mem UC+
>   [0x9_00000000, 0x9_d0000000) High MMIO
>=20
> Signed-off-by: Bo Gan <ganboing@gmail.com>


What I want know is how this whole setup interacts with the existing
support that we have for these devices?
Samuel's patchetset removed from the devicetree all of the nodes related
to having two mappings of the same memory, and modified the existing
erratum to only be required for older devicetrees.
You've not removed them, only added a new property. The non-coherent
peripherals on jh7110 already work prior to this patchset, is there not
going to be funky behaviour with both of these things operating in
parallel?

> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7110.dtsi
> index 6e56e9d20bb06..6dfeb31538fba 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -14,6 +14,7 @@ / {
>  	compatible =3D "starfive,jh7110";
>  	#address-cells =3D <2>;
>  	#size-cells =3D <2>;
> +	riscv,xpbmt-uncache-bit =3D <32>;
> =20
>  	cpus: cpus {
>  		#address-cells =3D <1>;
> --=20
> 2.34.1
>=20

--f7HJKH+Mr7wyhx1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabQVsAAKCRB4tDGHoIJi
0s+JAP4o+Xa60uILKN1E1S1hKkxrV8V7FNR/yznlJZFzu0RMLwEAuijZ+e0gIbs2
7fOmiYbd5jDoeKSDoriHa6qat93f+A8=
=GhaP
-----END PGP SIGNATURE-----

--f7HJKH+Mr7wyhx1L--

