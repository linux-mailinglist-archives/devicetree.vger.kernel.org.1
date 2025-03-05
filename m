Return-Path: <devicetree+bounces-154222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D636EA4F624
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 05:32:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 116C416CA05
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 04:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9AB11A23A4;
	Wed,  5 Mar 2025 04:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b="aQhQLWxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6F0155A2F
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 04:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741149156; cv=none; b=JJg6Y0yOjBMj4oaNwOs/Mzs++zo0k31BeSF4sJy0adkx8MYHaTy6lgZxQQxLnRuS2iW0BiyROyk//w0v+5h3mo6Djd/gWcBuqTA3p8EAjs0V1azL91G3Guh/c73hzmRTK97uVU+8ZGBaNJJa3etBgAh8qHhdLWIjqfD790qmL60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741149156; c=relaxed/simple;
	bh=+/FT0FwkoqaX0ch5jOpi38MznhOBLxiaSxlAwdZOBX4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jrgLmacP2fi+eM0AfjK+y6Ad86NfZhg/Yj0TPk4Cem9FZ6gCW2IdP+OdBvlQij77iUm5kzPY85wbvl7KR6/B+iQUQW93a3lupWbbfY3Kf1loeqPbo8qjHntcvk3Zb90/q0E0Klnv4tC66m3ng526Nt+wcc3H02sbi2cVeK7+e3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b=aQhQLWxt; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gandalf.ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=202502; t=1741149152;
	bh=3+l/3UIrx6DjDBYDuzovTRuglpTda7LCnA0QeVDaKzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aQhQLWxtjeiRg5R45hN81cNmvEFrH9yJ8X14vXVSy4rjXxaOsBkr79OrhdODr3uip
	 Z9kCNBoXrQDGyUken+6sz10t87BZ6FXEZqrpi79OeKua5Fx1cMYFfIfvY2++PWw4kX
	 bd5QUucT7yfBhKzXxTk0uzyDS9oUr5/MsUXapUsRjbWJ2eRSumN4n9FfKsIoMJ2oMK
	 GM9CUAiAC4d4NOiF/AxUMYwqjXYRu4aZt8hk1567CUBQWMIYBJ4XCvtOL4AYAVhypC
	 ruae9HodVhwG4lxuBn8Nxb02gZkVHX/m0dHRQkxfavyuABPiXWg+2+Od+oMVObFBPG
	 jYIF2yNyeH8aA==
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4Z705X6rkJz4wyh; Wed,  5 Mar 2025 15:32:32 +1100 (AEDT)
Date: Wed, 5 Mar 2025 15:27:43 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Ayush Singh <ayush@beagleboard.org>, xypron.glpk@gmx.de,
	Jason Kridner <jkridner@beagleboard.org>,
	Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Andrew Davis <afd@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Pantelis Antoniou <pantelis.antoniou@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [Question] Status of user-space dynamic overlays API
Message-ID: <Z8fSv2rwhMA06Uik@zatzit>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
 <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jQ1UWfr8D6ITUDin"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>


--jQ1UWfr8D6ITUDin
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2025 at 09:37:56AM +0100, Geert Uytterhoeven wrote:
> Hi Ayush,
>=20
> On Sat, 22 Feb 2025 at 21:14, Ayush Singh <ayush@beagleboard.org> wrote:
> > # Challenges
> >
> > ## Security
> >
> > The concerns regarding security seemed to show up in the other
> > proposals. There was a proposal to have a devicetree property to
> > allow/deny the application of overlays in some nodes, with default being
> > deny. Was it insufficient?
>=20
> This is the most important issue: using DT overlays, you can change
> about anything.  There is no protection yet to limit this to e.g. the
> expansion connectors on your board.

Right.

> This is what the various WIP "connector" abstractions are trying
> to solve.

Exactly.

> > ## Memory Leaks
> >
> > Currently, updating/removing properties leaks memory. Was it one of the
> > reasons for the rejection of previous proposals?
>=20
> IMO this is a minor issue. I am sure this can be improved upon.  We just
> need some way to keep track of which properties are part of the initial
> FDT (and thus can't be freed), and which were allocated dynamically.

Somewhat related to this, "unapplying" a DT overlay is not a natural
operation, but we need it for a sane update interface.  The normal way
of applying overlays is a lossy process.  Obviously, it's possible to
make it reversible by keeping around enough undo information, but it's
kind of a hack.

--=20
David Gibson (he or they)	| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you, not the other way
				| around.
http://www.ozlabs.org/~dgibson

--jQ1UWfr8D6ITUDin
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmfH0r4ACgkQzQJF27ox
2Gfnww/+MsUumzeVRsxw9kHrpGKf37Io7N+tfjLUQGaTssaJo07DDwAlM3svO56c
/j8+DbrFZzrbDiFpWVXE415q+YesOBArP/0fgUMJDd8CdJZIBNYOekKEoMDz1ZIS
gQuJrJqDf0F1lJ53CVPW/XBAbajXMgOx3TvSpmKq/jzmlU7FXC+B8zXw2r2pf6kT
1vxFxI8Y50P+2Ek4ZdJIlM4XRImPk0B9Xaz8tfLvjnL6iZZFV8nQAe1htiEHnAQZ
vd/8We5B4tyal2GkEdj1b4I91+DybrvOUcEKUMX/inKWD3u2tzecQ6OgFgoE+5mp
+9fcSKkq6U0PQ/4FLgfU6JA+QYdPMh93HoLlQBF44h7fRKUOMzhJQj5mlefnYtEt
dm6ia47yQONVj16L55kWloE907zwuPXTrIsGLLPd6JZwykAlnpmdfooo+dS7UShl
LphKkSr4xcMeKXalXF7zW961x9ym3nw/XCrBz325pqCju1pS+p70Ibnup5sAiRn/
GoALH1mvoNMr8lgshQSL3SyMe77nXsNOvVxcWiPAzbjqvpR6dc88T1lPVN6xpsRh
Inw730dSyFiR9Qxmm88ikwEBJN8+A4HoVrKWrtmd2AGK81MrAnwhDfKfqTEZw6vB
qPjwPufcMe7Yoqh7SkhIGjS9S6BEhP+gEjygBS+h9nIdhDNzQKs=
=Fj1H
-----END PGP SIGNATURE-----

--jQ1UWfr8D6ITUDin--

