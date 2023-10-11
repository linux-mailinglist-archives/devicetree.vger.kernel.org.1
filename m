Return-Path: <devicetree+bounces-7800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6297C58E6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:12:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 366C9282305
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68785321A0;
	Wed, 11 Oct 2023 16:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="X8Yu4mwf"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5299318B04
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:12:34 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C708F;
	Wed, 11 Oct 2023 09:12:33 -0700 (PDT)
Received: from ideasonboard.com (93-61-96-190.ip145.fastwebnet.it [93.61.96.190])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id AE9A2512;
	Wed, 11 Oct 2023 18:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697040748;
	bh=jU4yTtWui++Hsw3/zRRwKii7Wjil+vUUi7EykYDPM5Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X8Yu4mwfwhMMuyhRbrIWgnVFR0sHct0EuG3mtKFmElZXbDu/uX8mfKbBUUsh3MgrE
	 GBvyfrP0UWTMXb+dnSRs6nI2bD4aXiXG/vXYt3q6M/cvPxqZ7SlT4/+sRieBzJuzZk
	 YBFMt3O8anEoJWLmLnD+hP9P8F6JApaRfYoON0TY=
Date: Wed, 11 Oct 2023 18:12:28 +0200
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Conor Dooley <conor@kernel.org>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, devicetree@vger.kernel.org, 
	Lee Jackson <lee.jackson@arducam.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Message-ID: <ar5rf3mas33vvg47jflmhajpyx2pypdjdf3x522x3a3v5cva2a@gjmr5cjv6dyd>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
 <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
 <20231011-conflict-monument-75379ef495cc@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gbnl6jmhwqxae334"
Content-Disposition: inline
In-Reply-To: <20231011-conflict-monument-75379ef495cc@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--gbnl6jmhwqxae334
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
MIME-Version: 1.0

On Wed, Oct 11, 2023 at 04:53:34PM +0100, Conor Dooley wrote:
> Hey,
>
> On Tue, Oct 10, 2023 at 05:12:07PM +0200, Jacopo Mondi wrote:
> > Add bindings for OmniVision OV64A40.
> >
> > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > Signed-off-by: Lee Jackson <lee.jackson@arducam.com>
>
> What does Lee's SoB indicate here?
>

Lee has contributed to the development of the driver and validation of
bindings.

> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index b19995690904..df089d68b58c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -15821,6 +15821,13 @@ S:	Maintained
> >  T:	git git://linuxtv.org/media_tree.git
> >  F:	drivers/media/i2c/ov5695.c
> >
> > +OMNIVISION OV64A40 SENSOR DRIVER
> > +M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
> > +L:	linux-media@vger.kernel.org
> > +S:	Maintained
> > +T:	git git://linuxtv.org/media_tree.git
>
> Binding looks fine to me, my question is here. Usually having a tree
> here means that you apply the patches yourself. Do you?
>

No, and only Mauro has commit rights on the media tree.

All i2c sensor drivers have a tree listed, regardless who commits
there. What should I put there ?

> Cheers,
> Conor.
>
> > +F:	Documentation/devicetree/bindings/media/i2c/ovti,ov64a40.yaml
> > +
> >  OMNIVISION OV7670 SENSOR DRIVER
> >  L:	linux-media@vger.kernel.org
> >  S:	Orphan
> > --
> > 2.42.0
> >



--gbnl6jmhwqxae334
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtcQ9SICaIIqPWDjAcjQGjxahVjwFAmUmyWwACgkQcjQGjxah
Vjy4CBAAmOCz4ynUPdxihbfqVcVHRfAhTifrRFf5QsUd+KCXg9lFGV/WK7DEZBVc
yIHej3hRkzQ+KaonS8NrJ3uH/eOn7qqP4nLA6SBe7lPNSoHQa/BiHeXP4Jp/IK8f
6XcwMDxH4TXwZqXLOdolXvkamOVN3niLlPEP37qnxJ0zqNRoZPNCF+LYzax3icF1
KHqmiVUGqxo+rBrjGfGetNXv0BSsd3KRpwJ2d0s1BfZi7r6WU9e6evAUo6l/TR/d
t6Q57J40+3iUnGPcko61nNBkk14ZRW0W/20nsEmZSgaM0eRx9n/6x6al9OoHua0I
FBefF8MyVrVxhv+2I+m8j1AFqnFj6xLb59TGFztkzgWrsz7uHmbx/mhwOTSwIt3v
KUL6exw+TqiuSNJgBFmWemNwW5Tp1S+8Y6hZJA86llsuO55PdGJoRYeopozvmaFi
8OoR5tf0JH7stR666Ff6bT50J4mClRPAJZPHn+TKciTYzGVOeGfjpN+zvq+oCnOH
SdKvSpVQuPBjJb5Oho51W0yEe8X2CQ5qN88eBQGLk8mBQSKVtEjdKds0aAWTPmU1
hVeh4hDolCqnQRy1bRXcXO+1B1di6r7s7gxyR2jWxRHZ17H0/JDkRfInUKaS5zLb
Y8YWibikYyOUajL8JhtJ0wcTjuwm3jWSzHHDVKWJtxJVgvYNj3M=
=Q9hy
-----END PGP SIGNATURE-----

--gbnl6jmhwqxae334--

