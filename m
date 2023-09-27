Return-Path: <devicetree+bounces-3719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E554D7AFF3A
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:00:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 953E9281A4E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E3261F5EA;
	Wed, 27 Sep 2023 09:00:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED081F189
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:00:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CA96C433C7;
	Wed, 27 Sep 2023 09:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695805215;
	bh=3hwoD84olVZvjou5/kpVm2ZQJLfeUVEZBHvliNaakz8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fwEW/w7n8LRFF9M0zplL9D8uw/SWwiTSVd0hIYDS9p/5TOw47gAFnttbn9UIvIDWm
	 rOZ+yF2krn173lbJYz3yZ91794OuDlI752kcTAZ19MQ83Ps+RaFYW9Do6NDMKeWrO+
	 JT1UHT1FnzBnD5aE/Rw5FfRavK0k8+8Gk55yZvTpZAZM52HCp+N7Gps5aDRPpCMnXY
	 nDOmw8PX/rbGikM4rN8leN1WFnd4FQr0CaY9vPjM3+XrmOVQojHztPhmZOQQpdzWpt
	 /qZOJcF4NONUIAq0sCUqm/T0Jj4oA1LxIgPdQFslxN30bO5k9aD38eQKh2DbsrFi2s
	 P+oAfb3y0RTSw==
Date: Wed, 27 Sep 2023 11:00:12 +0200
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 1/2] spi: renesas,rzv2m-csi: Add SPI Slave related
 properties
Message-ID: <ZRPvHJXbuZ9Db2Go@finisterre.sirena.org.uk>
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-2-fabrizio.castro.jz@renesas.com>
 <CAMuHMdUibHxPBCLbeWdNrEk_szm+o4cOcskEMZAqUufNTzQKMQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QiSZLj8ULhE5uAOG"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUibHxPBCLbeWdNrEk_szm+o4cOcskEMZAqUufNTzQKMQ@mail.gmail.com>
X-Cookie: Save energy:  Drive a smaller shell.


--QiSZLj8ULhE5uAOG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 09:59:05AM +0200, Geert Uytterhoeven wrote:
> On Tue, Sep 26, 2023 at 11:08=E2=80=AFPM Fabrizio Castro

> > +    type: boolean
> > +    description:
> > +      Use CSI Slave Selection (SS) pin to enable transmission and rece=
ption when
> > +      in slave mode.

> Can't this be done in a more generic way? I had expected that the
> existing SPI_NO_CS flag can be set using a property in the "slave" subnod=
e,
> but apparently there is no "spi-no-cs" property defined yet.

The description is clearly saying there is a chip select, _NO_CS seems
entirely inappropriate.  It's not specified in the device tree because
when there's no chip select for a device it's a fundamental property of
how the device is controlled and we don't need any information beyond
the compatible.

--QiSZLj8ULhE5uAOG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUT7xsACgkQJNaLcl1U
h9Cv4Qf/XYUHiyb3CeUAVkgA5kzU23PQo4xps4f/9NjXmDxMNXGjd1mJz9drxsHP
orKXtyGMHXzQH+Md2RB4J7NMy+6W9wNCugC9rM11EClpnnSCvbqOMiybxgmW3kwa
nCpefQU+RK6Glv+wL1wNrKEJIWHKjefkFTODIJb2mxQ3QRhTBoOQcT1r0VZHJiTP
x5F44Hjq8apm/HBve10boE2dk+9NeRN7rKvT0HRaCSU0nN4tBtICJbYZjj++2o0b
6GHQCti/Dp+JahGpi4Q1MbUmS4XsZ33+pvXcxuFmkrJy/EkfzRTs0+5mYAcqM5x/
HN+l2oJlUTEqr+jp38Aqxdm9doYEtg==
=VLyd
-----END PGP SIGNATURE-----

--QiSZLj8ULhE5uAOG--

