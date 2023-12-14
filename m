Return-Path: <devicetree+bounces-25331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A80AB812E93
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 12:31:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42899281FD1
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 11:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122543FE3A;
	Thu, 14 Dec 2023 11:31:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8E61A7
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 03:31:33 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1rDjvo-0007MZ-Dp; Thu, 14 Dec 2023 12:31:08 +0100
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1rDjvm-00Fn0N-Dm; Thu, 14 Dec 2023 12:31:06 +0100
Received: from pengutronix.de (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 5826D262EFD;
	Thu, 14 Dec 2023 11:31:05 +0000 (UTC)
Date: Thu, 14 Dec 2023 12:31:04 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Daire McNamara <daire.mcnamara@microchip.com>,
	Wolfgang Grandegger <wg@grandegger.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND v1 2/7] dt-bindings: can: mpfs: add missing
 required clock
Message-ID: <20231214-tinderbox-glitzy-60d1936ab85f-mkl@pengutronix.de>
References: <20231208-reenter-ajar-b6223e5134b3@spud>
 <20231208-palpitate-passable-c79bacf2036c@spud>
 <20231212-unreeling-depose-8b6b2e032555-mkl@pengutronix.de>
 <20231213-waffle-grueling-3a5c3879395b@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="td3sd7zfsqtxdr4k"
Content-Disposition: inline
In-Reply-To: <20231213-waffle-grueling-3a5c3879395b@spud>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--td3sd7zfsqtxdr4k
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 13.12.2023 13:02:49, Conor Dooley wrote:
> On Tue, Dec 12, 2023 at 09:49:41PM +0100, Marc Kleine-Budde wrote:
> > On 08.12.2023 17:12:24, Conor Dooley wrote:
> > > From: Conor Dooley <conor.dooley@microchip.com>
> > >=20
> > > The CAN controller on PolarFire SoC has an AHB peripheral clock _and_=
 a
> > > CAN bus clock. The bus clock was omitted when the binding was written,
> > > but is required for operation. Make up for lost time and add it.
> > >=20
> > > Cautionary tale in adding bindings without having implemented a real
> > > user for them perhaps.
> > >=20
> > > Fixes: c878d518d7b6 ("dt-bindings: can: mpfs: document the mpfs CAN c=
ontroller")
> > > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > > ---
> > >  .../devicetree/bindings/net/can/microchip,mpfs-can.yaml    | 7 +++++=
--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/net/can/microchip,mpfs=
-can.yaml b/Documentation/devicetree/bindings/net/can/microchip,mpfs-can.ya=
ml
> > > index 45aa3de7cf01..05f680f15b17 100644
> > > --- a/Documentation/devicetree/bindings/net/can/microchip,mpfs-can.ya=
ml
> > > +++ b/Documentation/devicetree/bindings/net/can/microchip,mpfs-can.ya=
ml
> > > @@ -24,7 +24,10 @@ properties:
> > >      maxItems: 1
> > > =20
> > >    clocks:
> > > -    maxItems: 1
> > > +    maxItems: 2
> > > +    items:
> > > +      - description: AHB peripheral clock
> > > +      - description: CAN bus clock
> >=20
> > Do we we want to have a "clock-names" property, as we need the clock
> > rate of the CAN bus clock.
>=20
> We should not need the clock-names property to be able to get both of
> the clocks. clk_bulk_get_all() for example should be usable here.

ACK, but we need the clock rate of CAN clock. Does this binding check
that the CAN clock rate is the 2nd one?

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--td3sd7zfsqtxdr4k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEDs2BvajyNKlf9TJQvlAcSiqKBOgFAmV653YACgkQvlAcSiqK
BOhMmggApdGofXs7BcJbjT8hpDnLCGwmugpp0y3veU4Okm1P5NHwewyOaznIC4l7
VKu8jX23jiHIWYz2czWfTtoPskoi2RCs5Hj4t1eoFYywF9BAAwHITK7KtsR9fuZ7
XwdRZzjWHEh+I0BFmKv6GEpldjTZz269Nn47wy96FKErGKF2taHACZ97p5nqIwMz
uB7dZtekAf4scC6jKLZYwUUl68YwktTMZWu9PkjfH3oLS+H2oXHxxzUg6mME5R/o
2Nj92O17r0Md7j3QioEGIKNrr7dKubY0QPgZ+lP/ImoLgFDmAPC6tYlWR00kDf9b
ho3kmb28TrV4g0HQA1ZMBrJX78JxlA==
=M/Nz
-----END PGP SIGNATURE-----

--td3sd7zfsqtxdr4k--

