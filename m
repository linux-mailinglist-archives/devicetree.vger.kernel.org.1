Return-Path: <devicetree+bounces-154223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36250A4F625
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 05:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 71EA4188C302
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 04:32:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9BBB1A304A;
	Wed,  5 Mar 2025 04:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b="DhJRCQos"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6A82E3364
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 04:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741149156; cv=none; b=vEYoQvBJ0/b19ghqkCzR58YzVlciauSnTlf7zjDFWuYH+vKx9oYJvjg1N+bjuRNIg5IzhX9zl0/Wh7PI7o3vwJPf55drZKZ8cwClAlKxvuXcC4yWm7AtRVZ+L84iV1ob9n+WAiaep4lOHtQIRLMxcG9QsL4Eift/Rnw4E3CNxsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741149156; c=relaxed/simple;
	bh=ZV3usmNjZ66clgMEV8yceU5aYFqd6cFOc36j/puuvdA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fWgXsuv1LFZrHLXxz8pgYLurzXV20YFcAkx0LSSjts25pMA8W6Kr04qdqDMLvfkmlPUKiH0YkG0EHhTojrTbDedbJiPzgFrnqCq07vMhV3FtWvGQM9tmU17HBtM0Y8QCEXpm/b8XCFnWoIutlXDz59HJxx9Zu/udx58QcnaYJPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b=DhJRCQos; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gandalf.ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=202502; t=1741149152;
	bh=n1LAXOVmR+tUZwEfEs3XI3eSt/A/thmxN0v1bzxB4/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DhJRCQosrQHAsJtBxX2ZHM1WrcMob76W/mcct+8RLBzUmIDmLLvv6V1aZEr3ile88
	 R+FzqW8icz6dhfnQE3YKEWefN4csctvbiVcYdkx8N9Jo2WZlO0eCFripbz2zmFq+7q
	 +xChWT4Z6yCZfuxFMBf1GOpiHoDx75RHeKU7JsNKEpl/sJXn5WQHOqeglxXEszNPVv
	 0Y6xzZDFZAjU9LIIw2/bmS4AIttJdXLU9NWvT250Bw379FlFXYor1Tz/BX6iOK2R5w
	 j85xtz3vYppVd9NCW61cQfk5b6I832hxEdaIT2R2upzkjwahmtiyFg8YmQIPMKbu4L
	 AgT3ceKFcdOgw==
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4Z705X6zJlz4wcr; Wed,  5 Mar 2025 15:32:32 +1100 (AEDT)
Date: Wed, 5 Mar 2025 15:31:13 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Ayush Singh <ayush@beagleboard.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, xypron.glpk@gmx.de,
	Jason Kridner <jkridner@beagleboard.org>,
	Deepak Khatri <lorforlinux@beagleboard.org>, d-gole@ti.com,
	Robert Nelson <robertcnelson@beagleboard.org>,
	Andrew Davis <afd@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Pantelis Antoniou <pantelis.antoniou@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Subject: Re: [Question] Status of user-space dynamic overlays API
Message-ID: <Z8fTkTW-oTAT-NY4@zatzit>
References: <9c326bb7-e09a-4c21-944f-006b3fad1870@beagleboard.org>
 <CAMuHMdUhw6q1DAOBJwG5FJUs_QHj3hZMD3damOo2uLZQgS9e7A@mail.gmail.com>
 <fed58d7b-d9af-402d-a215-a7e620239728@beagleboard.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kS8QxXYfqfRLvfLY"
Content-Disposition: inline
In-Reply-To: <fed58d7b-d9af-402d-a215-a7e620239728@beagleboard.org>


--kS8QxXYfqfRLvfLY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2025 at 03:39:41PM +0530, Ayush Singh wrote:
> On 2/24/25 14:07, Geert Uytterhoeven wrote:
>=20
> > Hi Ayush,
> >=20
> > On Sat, 22 Feb 2025 at 21:14, Ayush Singh <ayush@beagleboard.org> wrote:
> > > # Challenges
> > >=20
> > > ## Security
> > >=20
> > > The concerns regarding security seemed to show up in the other
> > > proposals. There was a proposal to have a devicetree property to
> > > allow/deny the application of overlays in some nodes, with default be=
ing
> > > deny. Was it insufficient?
> > This is the most important issue: using DT overlays, you can change
> > about anything.  There is no protection yet to limit this to e.g. the
> > expansion connectors on your board.
> > This is what the various WIP "connector" abstractions are trying
> > to solve.
>=20
> Thanks for clarifying. However, as I mentioned above, there are usecases =
for
> dynamic overlays outside of connectors. Specifically, for the usecase of
> connecting random sensors to board pins. I do agree that any fairly well
> specified connector should probably have it's own drivers rather than usi=
ng
> a generic userspace API.

I'm not sure that's just due to an insuffuciently broad conception of
what a "connector" might be.  Note that to justify a dynamic overlay
interface specifically you need to have *both*
  1) a need to update *anywhere* in the device tree and
  2) to do so at runtime, under userspace control

It's kind of hard to see why you'd need (2) in cases that don't at
some physical level involve a "connector".. in which case (1) is hard
to justify.

How are these sensors being connected to random board pins?  If it's
because those pins are exposed on some header, then it seems like it
ought to fall within the definition of a connector.  If someone is
just soldering onto them, it seems like an semi-permanent change that
would be better handled at boot time.

--=20
David Gibson (he or they)	| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you, not the other way
				| around.
http://www.ozlabs.org/~dgibson

--kS8QxXYfqfRLvfLY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmfH05AACgkQzQJF27ox
2GeGQw//XRMIKGx+2YtRpyww90t3bsNhWHOKzCOrEk+ZiFyB3EdfPZh5HFSk4Oo/
QN1kravzZJJwXEcagxZC6nxsi67TZu++zhtQNwi39REppCYBBN9LNYUcPFq6r/6d
A/Jy3bjzkWKNFcV7TFVQlNlrQyXb2DE+IeqXz1uT2yNvnnUSixTQAfs7svY/3CAO
o1adU4V9VKE4Cr89kEHAMGQNgE6BXfwRUP/LlhabQg11MjLiGL+LJpFYdmFnV2Qn
LtL6wqZtr2lBnVyZcnRD1948Ty+nBJQwDB+U6pbJ8EHlF1FnbvzcKXIWK6YOtliG
JEOpRpHaE33mEjTfRimQLhHUPqNlTd+xAKSmwxn0VJ5n4Afv9AHvhSA3KQVlpFnY
IypTN6rFZyMjX0Un1Nf9mw5Qbs1OKoI8g/gtSnh4edG90d8VR+sXp5BCKrJSjCJp
1UicGJIFLS7HTtxda6gpRv+BjOuZIecbJyydXJHmg9KS1YQdSeabRY3ok6xWrFLx
6Pqy2Tz7uN0vyYS/wG/EOlRZMYdXHLW7hQb8kocCgdafxTWdGEa9Tr9Pz+3tA4HI
rL1DOSjrVK63nfVs4dG/TEV4F9VStWtcA5qytDU6CP40H0n7bSdrANw0H7ViGNEZ
pikzM+xnkh66BDTGQpthC8DGaRt3Megv0GnESic/BVb+XtoUPvA=
=UXsV
-----END PGP SIGNATURE-----

--kS8QxXYfqfRLvfLY--

