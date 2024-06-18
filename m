Return-Path: <devicetree+bounces-76949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7028E90CA29
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 13:47:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E614528F251
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 11:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C83156878;
	Tue, 18 Jun 2024 11:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="DqU5t+ME"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16551A00C3
	for <devicetree@vger.kernel.org>; Tue, 18 Jun 2024 11:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718709229; cv=none; b=LKA+EInoaGrqOGoVobt0LkCoC//+XtK6FKqM+fIOkWVhTg9I+s4j9BL5Qk4rwuCx2KMQbOf2MWB+6oPxsfGpq5UrMtNTLHJH/52R1XoQbVpm4L8gDQsEztdUdU03VeDR0ho3aL7SOpzWKxGtZRD+N/gEcvWuYtpGLdXMAPPJwR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718709229; c=relaxed/simple;
	bh=n1uBEzddLoQxzz/zi7h7jNVb1T7Yuzm7uH8yjdAGoOg=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lQFlrRAfR2TO+BgKZQYmGPKpqL9tlsU5qmADuPW/DRnsiTdTAExzQpcRg/DiYZ6DFonDZiBWtlpd/ElcvCfv+FpPXcqd+2KUJOsWYnzgMjpHq5d/Wweqv4VlfqUpyparffEh/p4RH8qcjZJ4/U+0uLMcgjz3sEq/BVIaxQwBA9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=DqU5t+ME; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1718709226; x=1750245226;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=n1uBEzddLoQxzz/zi7h7jNVb1T7Yuzm7uH8yjdAGoOg=;
  b=DqU5t+MEXhjlsMwAlbfbtCf8HhVC6p2Pv62Y/PvDVV8ziIQ3oGaQL1u3
   7cNymNsds+CcxFkNU4m4n4Ia2QMCLaDRUmA7HIZtr9Hc0KQ+p9P+XhDn0
   f8OS8xgtkaMRgrUMmi6kayDDNNEcYL+gWyaj3R8hh4SXaeHCRjs/0X6Wf
   FV2quI5UlkyIRuSXIo7X9KJc4ddol0wIVFt0hIzzmABzGg1zCBWnUsahn
   7iD4T2ERbg+ebBdoe9fZ5QKFtPVUliJfUXjTn84FBsBG7e3Ofld2U5Yak
   tEgrbrjYPXAYmjcP1fQJKiKaje167ukghyLtYTEPOqaX1y27NqCd8nt1w
   w==;
X-CSE-ConnectionGUID: zYlIm9dBTaSY1wpJsScrNw==
X-CSE-MsgGUID: 4UpTHyHNTjSfIYFq8mQwRA==
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; 
   d="asc'?scan'208";a="195436468"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 18 Jun 2024 04:13:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 18 Jun 2024 04:13:43 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Tue, 18 Jun 2024 04:13:40 -0700
Date: Tue, 18 Jun 2024 12:13:22 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Maxime Ripard <mripard@kernel.org>
CC: Conor Dooley <conor@kernel.org>, Neil Armstrong
	<neil.armstrong@linaro.org>, Ryan Walklin <ryan@testtoast.com>,
	<dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>, Jessica
 Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
	<tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Hironori KIKUCHI
	<kikuchan98@gmail.com>, Chris Morgan <macroalpha82@gmail.com>, Andre Przywara
	<andre.przywara@arm.com>, John Watts <contact@jookia.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: panel: Add WL-355608-A8
 panel
Message-ID: <20240618-reverse-kinship-7f8df8c8e111@wendy>
References: <20240530211415.44201-1-ryan@testtoast.com>
 <20240530211415.44201-3-ryan@testtoast.com>
 <20240606-intelligent-aromatic-magpie-80a7a4@houat>
 <2dc1fdec-7673-4462-abe1-fecf8e3e826b@linaro.org>
 <20240606-refreshing-cinnamon-ibex-a0fe73@houat>
 <20240606-authentic-mongoose-9485904a91a1@spud>
 <20240618-silky-holistic-oyster-bf59fe@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="l3zryIkCRYabdmHC"
Content-Disposition: inline
In-Reply-To: <20240618-silky-holistic-oyster-bf59fe@houat>

--l3zryIkCRYabdmHC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2024 at 11:04:09AM +0200, Maxime Ripard wrote:
> Hi Conor,
>=20
> Sorry, I missed the news of you becoming a DT maintainer, so most of my
> previous points are obviously bogus. And congrats :)

I've been doing it for over a year, so news travels to some corners slowly
I guess. I'm not just being a pest in dozens of subsystems for fun!

> On Thu, Jun 06, 2024 at 12:51:33PM GMT, Conor Dooley wrote:
> > On Thu, Jun 06, 2024 at 01:23:03PM +0200, Maxime Ripard wrote:
> > > On Thu, Jun 06, 2024 at 11:37:31AM GMT, Neil Armstrong wrote:
> > > > On 06/06/2024 11:32, Maxime Ripard wrote:
> > > > > On Fri, May 31, 2024 at 09:12:14AM GMT, Ryan Walklin wrote:
> > > > > > The WL-355608-A8 is a 3.5" 640x480@60Hz RGB LCD display used in=
 a
> > > > > > number of handheld gaming devices made by Anbernic. By consensu=
s a
> > > > > > vendor prefix is not provided as the panel OEM is unknown.
> > > > >=20
> > > > > Where has this consensus been found?
> > > > >=20
> > > > > I had a look at the previous discussions, and I can't find any co=
nsensus
> > > > > being reached there. And for that kind of thing, having the ack or
> > > > > review of any of the DT maintainers would have been great.
> > > >=20
> > > > There was a consensus with Conor, this is why he acked v2, see
> > > > https://lore.kernel.org/all/20240525-velvet-citable-a45dd06847a7@sp=
ud/
> > >=20
> > > It's probably a matter of semantics here, but if it's with only one
> > > person, it's not a consensus but an agreement.
> > >=20
> > > > ```
> > > > I think if we genuinely do not know what the vendor is then we just
> > > > don't have a prefix.
> > > > ```
> > >=20
> > > And even then, I don't interpret Conor's statement as a formal agreem=
ent
> > > but rather an acknowledgment of the issue.
> >=20
> > I mean, I specifically left an r-b below that line in v2:
> > https://lore.kernel.org/all/20240530-satchel-playgroup-e8aa6937b8b9@spu=
d/
> >=20
> > I'm not a displays guy, so my sources were limited to what I could find
> > from search engines, but I spent some time looking for an actual vendor
> > of the panel and could not. All I found was various listings on places
> > like AliExpress that did not mention an manufacturer. I'd rather not
> > invent a vendor because we could not find the actual vendor of the
> > panel & it seemed rather unreasonable to block support for the device
> > on the basis of not being able to figure out the vendor. If you, as
> > someone knowledgeable on displays, can figure the vendor out, then
> > yeah we should definitely add it.
>=20
> It's still a bit surprising to me. We've merged[1][2][3][4], and are still
> merging[5], panels from this particular vendor that have no clearly
> identified OEMs. Just like any other panel, really. We almost *never*
> have the actual OEM, we just go with whatever is the easiest to identify
> it.

It wasn't (isn't?) clear to me that Abernic is even the vendor of the
panel, just that it works for their devices. If there's an established
policy here of making up vendors for these panels, then sure, override
me and use them as the prefix.

> Plus, if there ever is another WL-355608-A8 part from a completely
> unrelated vendor, then you'll have a naming clash with no clear
> indication about which is which.
>
> 1: https://lore.kernel.org/all/20230426143213.4178586-1-macroalpha82@gmai=
l.com/
> 2: https://lore.kernel.org/all/20231003163355.143704-1-macroalpha82@gmail=
=2Ecom/
> 3: https://lore.kernel.org/all/20231117202536.1387815-1-macroalpha82@gmai=
l.com/
> 4: https://lore.kernel.org/all/20231208154847.130615-1-macroalpha82@gmail=
=2Ecom/
> 5: https://lore.kernel.org/dri-devel/20240618081515.1215552-1-kikuchan98@=
gmail.com/



--l3zryIkCRYabdmHC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnFr0gAKCRB4tDGHoIJi
0nNKAP9FXUwcEobDw50Su/jD9Rq0NeMXmlICEhZpWrY+9SbnOQD+PCw5NPlSttJw
WrSOVuBE04SJhTvPItRO1kbqWM1eRwM=
=1CBj
-----END PGP SIGNATURE-----

--l3zryIkCRYabdmHC--

