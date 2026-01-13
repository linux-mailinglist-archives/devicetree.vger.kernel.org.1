Return-Path: <devicetree+bounces-254220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED842D16194
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0CBE23008E34
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 00:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E44623D7CD;
	Tue, 13 Jan 2026 00:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="H7mvQPUX"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2E0163;
	Tue, 13 Jan 2026 00:57:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768265855; cv=none; b=BjXNbfU1UA4812yV7nMc37G4G2dRjhUyRjnv41+6pAk5LiuXswM6u1LZWqneVJZp5Km+3/qktZC81KmefGfEOhZ8HlaVnwOgfVPHMmM5Thqn760oCbEpko0EDDwln2W79D71BwuTiq/TDgZV3YHyp8dtJMywz1fesYd+cbx/Zt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768265855; c=relaxed/simple;
	bh=yNQuGtUQJhPhqWqUWdgI6Gc7zX5ewgsRbjJtwPvveeI=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=dpFTM7SuxmuLAsV+QsrY+m5gXI1OgtrTXWol1AK+CU6XDtdUWVeYqncC6Y5qjN7jrBLNw3yfGBrLHmb//eIESDsYmFjCmKIvACYQZrT//lHCZwVs1/84wO2fXG3vBmlYmKMLZfURgCHXDbWKLuDh3/JohTv1YbDD6y3dXa8wIZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=H7mvQPUX; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1768265850;
	bh=SVaR7pDXKQQZrzQCpbAsKQEkeRYpez2j/VHjvnBNbww=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=H7mvQPUX98ELFBCpdHBxurf7rawwayXoOHboAkmLIBW+BXVZ4/NNmuT+79S12Tiqf
	 qSQbCuLyfQzuLPneT4m0i00TtwWrVy7MMszQhS98zxQm/z5Sy4oCmWzrQxEVQxOJJG
	 L4eDSDR2+/M8Jyodgbwmw3U68FhvN8fn+ZwV/seDPzDzcduuwTvmH0GIoK5U5FEOmq
	 LwpLp5zufMPe7YK7Hsu/vbU22lkrVxGp7L5ugBOnSXmvRrP5xXl9xk1VWxgv3ceSSf
	 LdY6E6JKAkNGlc4rK4u6Szzg93gaoV2taKf0KEQrsgXsfB9DBldwTRvwYflgJZFZ0f
	 80zGvtm+44vsg==
Received: from [192.168.68.115] (unknown [180.150.112.60])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 52C3864706;
	Tue, 13 Jan 2026 08:57:29 +0800 (AWST)
Message-ID: <e97b7a193f8bbfca9ec00037808ad80a5baf9f00.camel@codeconstruct.com.au>
Subject: Re: [PATCH 1/2] dt-bindings: arm: aspeed: Add Asus IPMI card
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Anirudh Srinivasan <anirudhsriniv@gmail.com>, Krzysztof Kozlowski
	 <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 devicetree@vger.kernel.org, 	linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, 	linux-kernel@vger.kernel.org
Date: Tue, 13 Jan 2026 11:27:28 +1030
In-Reply-To: <CAJ13v3RKydFK+sP_Cm-HnQjsOJSDyX_dsGs_Yy564V=Wc7tQFw@mail.gmail.com>
References: <20260111201040.162880-1-anirudhsriniv@gmail.com>
	 <20260111201040.162880-2-anirudhsriniv@gmail.com>
	 <45bdf2a6c0d33dd6ce0fd3cc279ef6edc509a540.camel@codeconstruct.com.au>
	 <20260112-whimsical-annoying-fulmar-25e4d9@quoll>
	 <CAJ13v3RKydFK+sP_Cm-HnQjsOJSDyX_dsGs_Yy564V=Wc7tQFw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2026-01-12 at 15:21 -0600, Anirudh Srinivasan wrote:
> Hi Krzysztof,
>=20
> On Mon, Jan 12, 2026 at 5:47=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >=20
> > >=20
> > > It's a bit bike-sheddy, however: the pattern tends to be
> > > ${vendor},${platform}-bmc, but as the platform can't be specified and
> > > the card's function is the BMC itself, I'd go with "asus,ipmi-
> > > expansion-card" (I couldn't immediately find a useful identifier othe=
r
> > > than the product name).
> >=20
> > This should include some model name or at least soc. What if you have
> > IPMI card for ast2600 and later completely different for ast2700?
>=20
> Personally, I was okay with Andrew's suggestion of naming it
> "asus,ipmi-expansion-card" because that's the official product name
> and that exact term works well for online searches.
>=20
> This seems like a pretty niche product Asus announced 4 years ago and
> made in very low volumes. I'm not sure if they'll make a new one with
> an ast2700, given how the modern trend is to have BMCs on
> motherboards. What do you think about the naming Andrew?

I agree that the product seems niche. There's practically nothing on
their website on the marketing side - from searching around the details
are pretty much limited to the support pages. I can't really speak to
future stuff like an AST2700-based design though, who knows.

A couple of numbers turned up that might be helpful:

   1. The Quick Start Guide[1] seems to use "E21524", which is also
      used by some random blog[2] to identify it.=C2=A0
   2. There's "R1.04" on the silkscreen.=C2=A0

Perhaps we could incorporate either of those?

 * asus,e21524-ipmi-expansion-card
 * asus,ipmi-expansion-card-r1-04

However, they're not without some risk:

   1. It's hard to tell whether E21524 is properly representative
   2. R1.04 may also problematic as an AST2700-based card will likely
      restart the numbering and risk a collision

Otherwise, I guess there's:

 * asus,ipmi-expansion-card-ast2600

Andrew

[1]: https://www.asus.com/us/supportonly/ipmi%20expansion%20card/helpdesk_m=
anual/
[2]: https://blog.liaosirui.com/%E7%B3%BB%E7%BB%9F%E8%BF%90%E7%BB%B4/A.%E6%=
9C%8D%E5%8A%A1%E5%99%A8/%E5%B9%B3%E5%8F%B0%E7%AE%A1%E7%90%86/BMC%E5%BA%95%E=
6%9D%BF%E7%AE%A1%E7%90%86%E6%8E%A7%E5%88%B6%E5%99%A8/IPMI%E8%BF%9C%E7%A8%8B=
%E7%AE%A1%E7%90%86%E5%8D%A1.html

