Return-Path: <devicetree+bounces-23899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 134D180CA54
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 14:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2DAA280F87
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 13:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC68F3D382;
	Mon, 11 Dec 2023 13:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="cO9lf9Oc"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB2B7BC;
	Mon, 11 Dec 2023 04:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1702299593; x=1733835593;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=g3G2RjYO0ZjlRfzDDIT4lRzkMZXiLvsGqGWVUJ3J/Cc=;
  b=cO9lf9OcVJvOVTuvrmBro+oOlEYXKOpYsUSv4tjCUSiIhhDuAx8aXIEp
   ty7nkqP83ZAQy527ht9Av8Q+8ikzY45M11Z3qsGlBLG8MMeJRx6w2rcmo
   Hzq9LGXcyTGwqhBvBqfpbFKQbAqwm2rWuJyGdsPXznZPI5+sZnNNVGwHq
   3n9jQHFkHmPm1p9oqZWFCF7ZytMDwSpJS5gA27QYjVTSSgKCY0vRNZRAm
   4pYW4ygQV7ra9MXVJTwqyWuzg9XVReerPkR25OkNjfa62Of+1XQokMPqD
   hqYYHaA5Fklie9HnuDk53vKbuReCxtv0/M8kxY3eaW+0b8RR781YYXW96
   g==;
X-CSE-ConnectionGUID: I++IsSqqRAGP8tAFiKojJQ==
X-CSE-MsgGUID: 9jHPT5NsRe+wM6kqL6MW7A==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,267,1695711600"; 
   d="asc'?scan'208";a="180277566"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Dec 2023 05:59:53 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 05:59:42 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex04.mchp-main.com (10.10.85.152)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Mon, 11 Dec 2023 05:59:40 -0700
Date: Mon, 11 Dec 2023 12:59:09 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: Roger Quadros <rogerq@kernel.org>
CC: Conor Dooley <conor@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <mparab@cadence.com>, <s-vadapalli@ti.com>
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-torrent: Add second
 optional input reference clock
Message-ID: <20231211-saucy-carnation-bce003ea09dd@wendy>
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-2-sjakhade@cadence.com>
 <20230724-unhappily-promptly-b25c7e42504d@spud>
 <13c7fa70-ec60-44a7-aba7-5c4b0e21a755@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IlaqcbunL1B3LURy"
Content-Disposition: inline
In-Reply-To: <13c7fa70-ec60-44a7-aba7-5c4b0e21a755@kernel.org>

--IlaqcbunL1B3LURy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 11, 2023 at 02:45:48PM +0200, Roger Quadros wrote:
> Hi Conor,
>=20
> On 24/07/2023 20:53, Conor Dooley wrote:
> > On Mon, Jul 24, 2023 at 04:59:58PM +0200, Swapnil Jakhade wrote:
> >> Torrent(SD0801) PHY supports two input reference clocks. Update bindin=
gs
> >> to support dual reference clock multilink configurations.
> >>
> >> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> >> ---
> >>  .../bindings/phy/phy-cadence-torrent.yaml     | 23 +++++++++++++------
> >>  1 file changed, 16 insertions(+), 7 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent=
=2Eyaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >> index dfb31314face..ddb86ee0cebf 100644
> >> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> >> @@ -33,16 +33,25 @@ properties:
> >> =20
> >>    clocks:
> >>      minItems: 1
> >> -    maxItems: 2
> >> +    maxItems: 3
> >>      description:
> >> -      PHY reference clock for 1 item. Must contain an entry in clock-=
names.
> >> -      Optional Parent to enable output reference clock.
> >> +      PHY input reference clocks (refclk & refclk1).
> >=20
> > "refclk" and "refclk1" don't seem like great names. What is each one
> > used for & should refclk1 be renamed to match its use case?
>=20
> All PHYs need one refclk input. "refclk"
> Some PHY variants can take a second refclk input. Both are refclks so it =
was
> chosen to add an "1" to the name to the 2nd refclk.
> Please suggest if you have a better idea. Thanks!

The existing second clock name (phy_en_refclk) might serve as
inspiration. What is the additional role that the second reference
serves?

>=20
> >=20
> >> +      Optional Parent to enable output reference clock (phy_en_refclk=
).
> >> =20
> >>    clock-names:
> >> -    minItems: 1
> >> -    items:
> >> -      - const: refclk
> >> -      - const: phy_en_refclk
> >> +    oneOf:
> >> +      - items:
> >> +          - const: refclk
> >> +      - items:
> >> +          - const: refclk
> >> +          - const: phy_en_refclk
> >> +      - items:
> >> +          - const: refclk
> >> +          - const: refclk1
> >> +      - items:
> >> +          - const: refclk
> >> +          - const: refclk1
> >> +          - const: phy_en_refclk
> >> =20
> >>    reg:
> >>      minItems: 1
> >> --=20
> >> 2.34.1
> >>
>=20
> --=20
> cheers,
> -roger

--IlaqcbunL1B3LURy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZXcHnQAKCRB4tDGHoIJi
0iiLAP433STH5ISjhoWeEvnlPNZvyHIkdzUN0tRTv2EvEefOwAEAkRo0tQ3o2xKr
DbRxACn03R8h2CpkW6ACjDgeNcIHAwY=
=F6Bi
-----END PGP SIGNATURE-----

--IlaqcbunL1B3LURy--

