Return-Path: <devicetree+bounces-6429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B07C37BB565
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:39:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E06E51C20975
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 10:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F1EE540;
	Fri,  6 Oct 2023 10:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqPXZnCr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1BB28E3
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 10:39:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88CDEC433C8;
	Fri,  6 Oct 2023 10:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696588761;
	bh=31fUj/22FScFXvKh4mUa0QxeM51SdMhxUNNZAjaUauk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bqPXZnCrTGyT2v7qQp2gS6VXtnU5oalgXNi+9bHcnJbC70fEfHNR1e7YdSfszZt65
	 cRjdkHtQU55If4mUBCykU7iE3sOC6QdK+ose9SZXuYRfQhWGehkjBANgye7SS8Q5/f
	 rz5PjtLfOVr+5OkIsRGOHMxACuOceh28dn83JgOrWSJzH+WuvCaNv93Mvnd80EeoCK
	 Lux7DuE+H22JMTr5GhmA9b26mqNONwcmk/iETEUf4vlCsQqqvsTaV1iuiqlFPJXy29
	 kLe5vuM0e4TPUpJv2wgn2XX3i+EYoykyJS6aqqzXLbzRM77F972x+GkTzNvIHz2vnt
	 +R2uF3xq5a0cQ==
Date: Fri, 6 Oct 2023 11:39:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: stm32: document MYD-YA151C-T
 development board
Message-ID: <20231006-sandworm-provided-217161692e54@spud>
References: <20230919083553.35981-1-eagle.alexander923@gmail.com>
 <20230919-98b276afdbc85d62815da0b9@fedora>
 <CAP1tNvS8KsEjs_KhimD6X4CPe7vQ3LKikoz3yU3w2z7pKE9G0A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wwlCXlw5mobA6jp8"
Content-Disposition: inline
In-Reply-To: <CAP1tNvS8KsEjs_KhimD6X4CPe7vQ3LKikoz3yU3w2z7pKE9G0A@mail.gmail.com>


--wwlCXlw5mobA6jp8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 06, 2023 at 10:18:30AM +0300, Alexander Shiyan wrote:
> Hello.

> > On Tue, Sep 19, 2023 at 11:35:52AM +0300, Alexander Shiyan wrote:
> > > Add new entry for MYD-YA151C-T development board.
> ...
> > > diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > > index 4bf28e717a56..5252b9108ddc 100644
> > > --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > > +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> > > @@ -140,6 +140,11 @@ properties:
> > >            - const: engicam,microgea-stm32mp1
> > >            - const: st,stm32mp157
> > >
> > > +      - description: MyirTech MYD-YA15XC-T SoM based Boards
> > > +        items:
> > > +          - const: myir,myd-ya151c-t   # MYIR MYD-YA151C-T STM32MP151C
> > > +          - const: st,stm32mp151
> >
> > It appears that this file is sorted by soc part number, which would put
> > this entry now in the wrong location.
> > With that changed,
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>

> I looked through the entire file and saw that the entries were
> sorted by board name and by SOC part number within the board option.

I must not be reading the same file you are. The one I looked a is
sorted by the SoC compatibles
...mp135
...mp151
...mp153
...mp157
and thereafter by boards.


--wwlCXlw5mobA6jp8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZR/j1QAKCRB4tDGHoIJi
0sLTAQDtR2jnnMWZG3LDrgIV8xVxdyUuLXDYQMA5frcsa2B1twEAg67TS87Ig9PA
ibukTzNzhnBhbC6EImDas0MADZX2bA8=
=R6l+
-----END PGP SIGNATURE-----

--wwlCXlw5mobA6jp8--

