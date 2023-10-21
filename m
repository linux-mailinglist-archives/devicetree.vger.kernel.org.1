Return-Path: <devicetree+bounces-10502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 624A47D1993
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 01:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9319C1C2102A
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 23:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D295F354FD;
	Fri, 20 Oct 2023 23:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="ZesXLExh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E481A71B
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 23:21:30 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E8B4D4C;
	Fri, 20 Oct 2023 16:21:25 -0700 (PDT)
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 8ABBF6607314;
	Sat, 21 Oct 2023 00:21:24 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697844084;
	bh=afxaXpVJM8PTcG/4N5mUPkLMkzpv08WeDjg9bXnwFAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZesXLExhHF06HLJtrX74+SMTUYQQReVmalAuHi0uDn+GYPo22I3W4vFG03UBMVoLR
	 Qu+dZGJnoiJXt8zsHXYSINFTLIXZ9LZOvPbNap7NnO96hFROB+IDDhtfIdG+kRerU7
	 vEG6/QSqx6oaXTIMx6+Z67xcfFBUQGHtgUUBJj8NKT4Kp41m/0bRjgoOk71BuWUfJa
	 lyXetQzVwIEfTCV9vyPmah9ODcm61FGam5iIzEi0JxiYIqnOm9Xs316J1pJl6VjRGz
	 dUNPVzcAgCBaYIiXIBzvd5OySNoKu/+YmHLPuSYud9ahgiW8k6FA9INE2pQA2YYmrR
	 D7NVB6xDjGiOw==
Received: by mercury (Postfix, from userid 1000)
	id 7538D106061E; Sat, 21 Oct 2023 01:21:21 +0200 (CEST)
Date: Sat, 21 Oct 2023 01:21:21 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: mfd: max8925: Convert to DT schema format
Message-ID: <20231020232121.ude4ciuweyoqh2ws@mercury.elektranox.org>
References: <20230930202743.214631-1-sebastian.reichel@collabora.com>
 <169627477713.2386676.2358148175794895273.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ppdkeffguk2zemog"
Content-Disposition: inline
In-Reply-To: <169627477713.2386676.2358148175794895273.robh@kernel.org>


--ppdkeffguk2zemog
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Lee,

On Mon, Oct 02, 2023 at 02:26:17PM -0500, Rob Herring wrote:
> On Sat, 30 Sep 2023 22:27:43 +0200, Sebastian Reichel wrote:
> > Convert the binding to DT schema format.
> >=20
> > The sub-functions of this MFD device do not have their own compatible
> > string and are thus described directly in the MFD binding document
> > after being converted to YAML.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> > Changes since PATCHv2:
> >  * https://lore.kernel.org/all/20230922233142.1479677-1-sebastian.reich=
el@collabora.com/
> >  * Add unevaluatedProperties: false to regulators subnode (Krzysztof Ko=
zlowski)
> >  * Use "pmic" for nodename (Krzysztof Kozlowski)
> >=20
> > Changes since PATCHv1:
> >  * https://lore.kernel.org/all/20210413153407.GA1707829@robh.at.kernel.=
org/
> >  * Update License to GPL OR BSD
> >  * Add missing type references pointed out by Rob
> > ---
> >  .../leds/backlight/max8925-backlight.txt      |  10 --
> >  .../devicetree/bindings/mfd/max8925.txt       |  64 --------
> >  .../bindings/mfd/maxim,max8925.yaml           | 145 ++++++++++++++++++
> >  .../bindings/power/supply/max8925_battery.txt |  18 ---
> >  4 files changed, 145 insertions(+), 92 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/leds/backlight/ma=
x8925-backlight.txt
> >  delete mode 100644 Documentation/devicetree/bindings/mfd/max8925.txt
> >  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max8925=
=2Eyaml
> >  delete mode 100644 Documentation/devicetree/bindings/power/supply/max8=
925_battery.txt
>=20
> Reviewed-by: Rob Herring <robh@kernel.org>

I expect this will go through your tree and I don't need an
immutable branch, since all further fixes on the binding would
go into your tree anyways.

Also please note, that I put you in as maintainer, since the
original people working on max8925 long vanished and you are the
maintainer of MFD (and backlight). Please tell me if you have a
better suggestion.

Greetings,

-- Sebastian

--ppdkeffguk2zemog
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmUzC2YACgkQ2O7X88g7
+pqQXA//Qaxa1aROmTVFEAt+A4yrEOTLVkFd26QHnw4hrZnN4NzJ4cImRwmlsWJO
NgPdzrnhqs58aHW9Y8GVRCVGzkjboafUt5sn0A18ZT//YUm39BBnNiFBBInUugq/
cmh6/jW9AG39yo0TEFH/3GmtUsovOHHCoYerom+2qF96ZS0gyKA/yeZyhJkxbl5q
pggtmX76MnwgkFV+HMGZ6tiH6LllJP2paugI/ljPP65KrOkppruUCJQDLCAB2rUD
OZbrcwN/oxskpezbcialYbVSYjKpvOvI/kwzxS62MsoICcYccUyTUx8xaNZRFhDD
RVODcYGUWC2XdhGKzgZzkpwSHq/AYJRzPTo3wJK/mxlQEjjy9+z0sGKjKppuRxNU
WG1oxUZzqNDkWzsWHNqQVbNStENCAY7GJoKBJPZ47IaasDsXQPoZqN7FW6f1jn46
x/tlNfFsgk6P6Fv6fxnzWoKaVPGbCqu8wvYK/9JnS9q9Wj19lUCgpxExoLbPpFcy
Rg7Omoctih6IbrbR6uvedwgO3dUzCFl3okoUBDp5NMJyTimB5/c9IYgBLL6hvosN
UWhfOefV6yWCwUPLfwrzi9rj9wiYCNqnf3pwVlLQKTCTdCSJv3FMyuy2jp2lxGdF
IvttvruZEkPp92dOroq6fdUfkaGlk24QPr4hjBqT/2TRqK6GZ5k=
=JyaJ
-----END PGP SIGNATURE-----

--ppdkeffguk2zemog--

