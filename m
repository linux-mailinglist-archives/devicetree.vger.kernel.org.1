Return-Path: <devicetree+bounces-2451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FF07AADB8
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 11:22:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 48089282583
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4C1182B9;
	Fri, 22 Sep 2023 09:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3CA14F6F
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 09:22:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9BA6C433C7;
	Fri, 22 Sep 2023 09:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695374544;
	bh=8S14wwxTEg2QgvNUOFowD4EjDPHWFixEfBczznYYXPc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XW6TFhEPXiHmvFQqo3vS7pKtw74KDLpUQb9ktR8RiTIqAAARktOzI8g6Gv9jRjvBh
	 WVWdlPoHs0YehBrNpNCVyqOPhU2XPBCDH6mGPmftbCgDaD+UfDnRuUYGbWFqmuWQlH
	 5g22/7EaNjy74I9eJx2h4dxH6e97k1Syfcc0rhC+RWsg1Bh6ljN+SJsAsqXvffvx94
	 Cs74g0kZBo2sr9GMyx0hVIRsMMfmGjApL7EG6bzg8dCbPc31rqoiqHlUhGH/ugYArH
	 iGzbjaXbIhKvYVn46qilNpmpm0qhvGyL4Jz/fu9TsFXBxWlCuuztlZaZ9aYBEu6j9Q
	 l/VEAq7XPtC3w==
Date: Fri, 22 Sep 2023 10:22:19 +0100
From: Conor Dooley <conor@kernel.org>
To: yang tylor <tylor_yang@himax.corp-partner.google.com>
Cc: dmitry.torokhov@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	jikos@kernel.org, benjamin.tissoires@redhat.com,
	linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org,
	"jingyliang@chromium.org" <jingyliang@chromium.org>
Subject: Re: [PATCH V2 1/2] dt-bindings: input: Introduce Himax HID-over-SPI
 device
Message-ID: <20230922-unclothed-bottom-5531329f9724@spud>
References: <20230919024943.3088916-1-tylor_yang@himax.corp-partner.google.com>
 <20230919024943.3088916-2-tylor_yang@himax.corp-partner.google.com>
 <20230919-70b2f1e368a8face73468dfa@fedora>
 <CAGD2q_anfBP78jck6AbMNtgAggjOgaB3P6dkmq9tONHP45adFA@mail.gmail.com>
 <20230919-cc4646dbfb953bd34e05658c@fedora>
 <CAGD2q_bkTpvXiomWb_yerNjQfMVKOctYgBqF_RBSo_jYqyyyxw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v+aqA+5QpEvFBWgw"
Content-Disposition: inline
In-Reply-To: <CAGD2q_bkTpvXiomWb_yerNjQfMVKOctYgBqF_RBSo_jYqyyyxw@mail.gmail.com>


--v+aqA+5QpEvFBWgw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 03:56:25PM +0800, yang tylor wrote:
> On Tue, Sep 19, 2023 at 7:09=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> > On Tue, Sep 19, 2023 at 05:31:29PM +0800, yang tylor wrote:

> > > The behavior of "himax,boot_time_fw_upgrade" seems not stable and
> > > should be removed. "himax,fw_in_flash", I use the kernel config for
> > > user to select.
> >
> > That seems like a bad idea, we want to be able to build one kernel that
> > works for all hardware at the same time.
> >
> I see, so I should take that back?
> I'll explain more about it.

Are there particular ICs where the firmware would always be in flash and
others where it would never be? Or is this a choice made by the board or
system designer?

Thanks,
Conor.

--v+aqA+5QpEvFBWgw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ1cxwAKCRB4tDGHoIJi
0gULAP9LWqFNeG5rHo+qgr/z06EqS5lS7F8Od2gCHSaTlCa5DAEAyyHbiPkKJrXq
oII3i1N9zR8cMUB/j1LYhi1slzzKqg4=
=tovU
-----END PGP SIGNATURE-----

--v+aqA+5QpEvFBWgw--

