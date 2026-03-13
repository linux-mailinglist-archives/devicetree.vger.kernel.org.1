Return-Path: <devicetree+bounces-275259-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DPKAvAYtGkihQAAu9opvQ
	(envelope-from <devicetree+bounces-275259-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:02:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1792C2846DE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:02:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AAC2130C64B6
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E264D39934E;
	Fri, 13 Mar 2026 13:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVtB4JXo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCA1395D9F
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 13:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773408512; cv=none; b=tQbXIEANoikRweTS2n1WkTqYAjZi47t3QLfhj7Hz7vJ0tKR0obhccztdYfMPoJqxSPAAq/eM8woNYxX2upTo9kYJZgPb0yhOJpZvC7UYxKpl3SYTP3KxzDiKHODG5qQSjOoXrPFzpC3gukdBRbQZGpJzjNynUGB+K66dapZj2j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773408512; c=relaxed/simple;
	bh=sMfDxBwvCvKDhU5KH8fpepSswQSCPaCagRLD/otPebM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sd0gMF0zcG76IgVBbBKeozWV9XuNWVXRrbr1mU3o/qimzHfyMRnZ/wRJzPjTwQy2WysT+MSZi8MUROiqQEEiJvSPfhwR+nB3oWH4aRlqBz3AqK19qLP2IJjy0kICrlzgTod8CWsQB8lyKw2i5lNKG6o76EvCWIbe9mSAW62+i6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVtB4JXo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA48C19421;
	Fri, 13 Mar 2026 13:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773408512;
	bh=sMfDxBwvCvKDhU5KH8fpepSswQSCPaCagRLD/otPebM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lVtB4JXoyAztSi8HxGcsceMemPpNjmgXORINdOX6Z5WNFf5A26Z8nhZN2JaZSjqmL
	 ke/dHynJWcfsBFEo6RNqb6s2YzbyYVObCr3p+t+N9ZqyZ3JdnUpVJzXTiCwC2Daw4l
	 jmYAh9NWHZ33sfN++ozgVruj5ju3mC+2vuWOhIarOUg0o0VTbmx6/npOGPF+hvd/tV
	 bEXWrX0tpCzYx1kiQ6TDPykBxIOQTgFbnAPvnJbAVX7xpf8/OT6ICCKR5rEaRmuqGE
	 4ovPoZIARp7Fd0uPWEKdrcz6jwGaT8d1PS0hb2ygO5TC8kDo4PK46w6Fz/dhKYk746
	 fS8XOhvjYAwOg==
Date: Fri, 13 Mar 2026 13:28:27 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 4/6] riscv: select RISCV_ISA_XPBMTUC in STARFIVE and
 ESWIN SoC
Message-ID: <20260313-backrest-shamrock-0c651c405686@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-5-ganboing@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bBH/OirW3AgtDsT2"
Content-Disposition: inline
In-Reply-To: <20260313084407.29669-5-ganboing@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275259-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1792C2846DE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--bBH/OirW3AgtDsT2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 01:44:05AM -0700, Bo Gan wrote:
> Enable the XPbmtUC feature for Starfive and ESWIN SoC
>=20
> Signed-off-by: Bo Gan <ganboing@gmail.com>
> ---
>  arch/riscv/Kconfig.socs | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index d621b85dd63bd..0584511707c7c 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -14,6 +14,7 @@ config ARCH_ANLOGIC
> =20
>  config ARCH_ESWIN
>  	bool "ESWIN SoCs"
> +	select RISCV_ISA_XPBMTUC

Nah, you can't do this. Either RISCV_ISA_XPBMTUC is user selectable or
it is mandatory for these platforms and selected. Don't mix and match
please.

>  	help
>  	  This enables support for ESWIN SoC platform hardware,
>  	  including the ESWIN EIC7700 SoC.
> @@ -56,6 +57,7 @@ config SOC_STARFIVE
>  	select PINCTRL
>  	select RESET_CONTROLLER
>  	select ARM_AMBA
> +	select RISCV_ISA_XPBMTUC
>  	help
>  	  This enables support for StarFive SoC platform hardware.
> =20
> --=20
> 2.34.1
>=20

--bBH/OirW3AgtDsT2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabQQ+wAKCRB4tDGHoIJi
0szwAPwJJgVs9DHLR3KW6ShbDYREKukSOhcSjLR49TaqKA9MDQEA/gPt6qmANjPI
cCM/rdDB9bNf70Tx6CtPkOB72LMkUQ8=
=LeKB
-----END PGP SIGNATURE-----

--bBH/OirW3AgtDsT2--

