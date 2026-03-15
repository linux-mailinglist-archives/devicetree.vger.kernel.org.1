Return-Path: <devicetree+bounces-275785-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCpsOqugtmm+EgEAu9opvQ
	(envelope-from <devicetree+bounces-275785-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 13:06:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB8A290971
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 13:06:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2A407301C972
	for <lists+devicetree@lfdr.de>; Sun, 15 Mar 2026 12:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9399F34D3BE;
	Sun, 15 Mar 2026 12:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tv6BQ9Ph"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7019C34CFD7
	for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 12:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773576359; cv=none; b=eoICXvimI7m138JqN2XYJbRksVqqr3tErnZeUsfSG6ghhMgmXuCk+jiOeFVg4hglsO8g9QoTDuVyqpnZxXRjLc51/A5JqVuRL/9uGKBa18KP143qbLm30dN3cCx1C0piV+oMfHHO32Vnd7Tl1BQCzbMq2t7NbnkkhQ2TRBhsSyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773576359; c=relaxed/simple;
	bh=l67yryRnjt4eHFTNrM4PyDXl+WM1ez2ttvW7tVoQF1M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sci1d+j8rhsr4Vkn0neXDPs8fZTQn6SwkV1LuwyyJ6zIfNEvtK2J2qRcBOYm67eZYPDQtydRCx3LSuPlkpGezsAHPyuWQPgsrroF8pVoD48/pxFHJOtti9O2tqozglRZQH1JAeoWoyKg+d3YRs1Cxmp4QDcLClI38VZWhtVQH0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tv6BQ9Ph; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE61AC4CEF7;
	Sun, 15 Mar 2026 12:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773576359;
	bh=l67yryRnjt4eHFTNrM4PyDXl+WM1ez2ttvW7tVoQF1M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tv6BQ9PhM/O1IWOCbyGKnOljvGKShDhSbiIo1kfV7C51QEPbsjQqFDHYCHfm+GZVo
	 Ixai2HHt3vPvQVc4++uDCmsOgVhPlU0+u+O4e7BrUxiTSy7KbRbmDXLWEYpOhlUL/i
	 dppMKyiSW1twuEtgFe/qOyMYSZ/dpDICzkROlRlvHxk+sl+5+ZW4P+kRHazhggrB8g
	 K3j57aY18TBOem6UV+FbZIdvLeuy3qigt9BsLOlBVtTID+zGYNgDhD5yDvx52tx6wE
	 fADbCy9Uso7gu1259YZYXKOPyf4ppUhyH9fcKL9btCvflH2bCB7gMaPnrDaV1rZuw9
	 ke7DaSVaaNASg==
Date: Sun, 15 Mar 2026 12:05:54 +0000
From: Conor Dooley <conor@kernel.org>
To: Bo Gan <ganboing@gmail.com>
Cc: linux-riscv@lists.infradead.org, samuel.holland@sifive.com,
	david@redhat.com, palmer@dabbelt.com, pjw@kernel.org,
	gaohan@iscas.ac.cn, me@ziyao.cc, lizhi2@eswincomputing.com,
	hal.feng@starfivetech.com, marcel@ziswiler.com, kernel@esmil.dk,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 1/6] riscv: Add a custom, simplified version of
 Svpbmt "XPbmtUC"
Message-ID: <20260315-uptight-kinfolk-e4fece4d3447@spud>
References: <20260313084407.29669-1-ganboing@gmail.com>
 <20260313084407.29669-2-ganboing@gmail.com>
 <20260313-visitor-majestic-1a6888dc57b2@spud>
 <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ClXvIVeaEZNbVPHZ"
Content-Disposition: inline
In-Reply-To: <25a8565d-a6bb-401f-b776-d743a2ec9ee0@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275785-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5CB8A290971
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--ClXvIVeaEZNbVPHZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 02:33:16PM -0700, Bo Gan wrote:
> > > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufe=
ature.c
> > > index fa591aff9d335..faec169004b4a 100644
> > > --- a/arch/riscv/kernel/cpufeature.c
> > > +++ b/arch/riscv/kernel/cpufeature.c
> > > @@ -1118,6 +1118,14 @@ void __init riscv_fill_hwcap(void)
> > >   		riscv_v_setup_vsize();
> > >   	}
> > > +#ifdef CONFIG_RISCV_ISA_XPBMTUC
> >=20
> > Code like this needs to be unconditionally compiled.
> >=20
> > > +	if (!of_property_read_u32(of_root, "riscv,xpbmt-uncache-bit",
> > > +				  &riscv_xpbmtuc_bit)) {
> > > +		riscv_xpbmtuc_mask =3D 1UL << riscv_xpbmtuc_bit;
> > > +		set_bit(RISCV_ISA_EXT_XPBMTUC, riscv_isa);
> > > +		pr_info("Using XPbmtUC bit=3D%d\n", riscv_xpbmtuc_bit);
> > > +	}
> > > +#endif
> > >   	memset(print_str, 0, sizeof(print_str));
> > >   	for (i =3D 0, j =3D 0; i < NUM_ALPHA_EXTS; i++)
> > >   		if (riscv_isa[0] & BIT_MASK(i))


btw, not sure if you saw this comment, about using IS_ENABLED() rather
than ifdeffery.

--ClXvIVeaEZNbVPHZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabagogAKCRB4tDGHoIJi
0r34AP49ylCNDRGFQceatVi18SbN8zTJ9+pAO8n99b3xWxlDBgEA3lisTiKeXeZn
f7QBUbuzAv6Iwmj4Qt3Iv30NPyrktw4=
=ifwS
-----END PGP SIGNATURE-----

--ClXvIVeaEZNbVPHZ--

