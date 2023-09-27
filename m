Return-Path: <devicetree+bounces-3737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D05E7AFFA2
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:15:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id CA20C1C2083E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6AE420B01;
	Wed, 27 Sep 2023 09:15:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6ECE208CA
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:15:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE51AC433C9;
	Wed, 27 Sep 2023 09:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695806132;
	bh=8igskYP9DAYLL5BkUN44/CdlHV/Mw6iIVgqVj3quSNA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CIr6kxnXH3pNiI03CWn0VRQusJvmXnl05H0S/6tJttkoPRIBzM6b0HAKACG7eUt7L
	 0A45Y8WSDoETfTvJFhAi87L2x3wGvoBEpRlDJhU0J5ljJ3ZXjw/9BBm7XD8dkoGMys
	 sQgWnlYpBTnNldge90gMmkQ3P4zen8WAZrFEuLldDHEjgdxkhwrfa1Tw9yGr0o3Gup
	 ZJl/77HJO87YX33GMlAKc9iICxyQLaXfi1+ZdIv0W74UPuWFcAjqJBlkhBaxMKwKjf
	 7h8s2kvUOX/lwmd0J4mNr0hocvq8FtB1ybKObQjpkjImMm/NjO4C5G/VG3YS/FaItD
	 YKFdpkGjpHTyA==
Date: Wed, 27 Sep 2023 11:15:29 +0200
From: Mark Brown <broonie@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Chris Paterson <Chris.Paterson2@renesas.com>,
	Biju Das <biju.das@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 2/2] spi: rzv2m-csi: Add Slave mode support
Message-ID: <ZRPysQnvSDXgI1ee@finisterre.sirena.org.uk>
References: <20230926210818.197356-1-fabrizio.castro.jz@renesas.com>
 <20230926210818.197356-3-fabrizio.castro.jz@renesas.com>
 <ZRPvikYWgbeDdz4X@finisterre.sirena.org.uk>
 <CAMuHMdUroPd17ynUtXpEpUfp_g352ukG-Fc+ySrrsVTJhMgONw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7Q6HPrYwTOa6SDxa"
Content-Disposition: inline
In-Reply-To: <CAMuHMdUroPd17ynUtXpEpUfp_g352ukG-Fc+ySrrsVTJhMgONw@mail.gmail.com>
X-Cookie: Save energy:  Drive a smaller shell.


--7Q6HPrYwTOa6SDxa
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 11:12:49AM +0200, Geert Uytterhoeven wrote:
> On Wed, Sep 27, 2023 at 11:02=E2=80=AFAM Mark Brown <broonie@kernel.org> =
wrote:

> > Prefer controller and device.

> You mean host and target?
> (oops, got the latter wrong in my previous email, too ;-)

Those also work, yes and there's less chance of confusion for the
controller bit.

--7Q6HPrYwTOa6SDxa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUT8rAACgkQJNaLcl1U
h9CQ2gf/RVrcGhvqI82qepeGvwQ3rWMv7YVd+nNKRuoXW8c3z0/YjQLtXxQm9UQU
S+L3NUh0Yor97P8Vw0StvndksOpMio1Fdv/nJpF9Y1BbZVXvKO/zCeADCQpQmt7/
s41FUaTIuUgv3qxOPl4AfbKbmQYX2WJjT1hgG/7kaVcJOrJ0MMG6oA6KsV0mzSSd
V5+whuPMULcWyS0RLitUxIfS+kS4WEQ/ZPuLOVy7W3cvQheu3RNXYNTTG7LAbX/T
/kNFB8lFqXAxiSoM6m4KKhQ67sX5XZf6EkLd+mOgYQ/O2oFJjfRiz0ncKVnaLQB1
2vw9j/u2vUmemF0eCGaeq7JbixMXBw==
=rweW
-----END PGP SIGNATURE-----

--7Q6HPrYwTOa6SDxa--

