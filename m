Return-Path: <devicetree+bounces-2553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE90F7AB4D1
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A08F1282046
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9EF3D987;
	Fri, 22 Sep 2023 15:31:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF581EA9A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:31:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EA0EC433C7;
	Fri, 22 Sep 2023 15:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695396680;
	bh=qD9moz6S20UXXt0XM3f9mJxnaNg4ZQmeahTNciW81/g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sLt5xynextdfqFI5PfPyrFeXbrb7lhcUiPr5WL5DcPTI62PGhiP80IGlLlMtxyyBk
	 nH8St5PfLOZBxWbad0PVoXoMSg+1SbWANDymtWrhanRq7Y57MRzJImcfjlOCih0sFi
	 HtZx48zsX5+KYEbnyAStXNYW91BxC0Lb3LgaK+ReTrmF9VZStYHocWg/14/w3nsYWd
	 MwJ4q7cCLziXvpQpXQwoYwx8GgqGM2IOcWwbrocWnLgPE71kr9UpCgFmVV8r4VXcwH
	 MilNQ4RfEw+zCrs+Tryci015CB9mzSRRstyumQ5jQbfw31prJJuRIvYpOrKSrvssEJ
	 Z4Z+eWr+bFuZw==
Date: Fri, 22 Sep 2023 16:31:15 +0100
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
Message-ID: <20230922-removable-footwork-f1d4d96d38dd@spud>
References: <20230919024943.3088916-1-tylor_yang@himax.corp-partner.google.com>
 <20230919024943.3088916-2-tylor_yang@himax.corp-partner.google.com>
 <20230919-70b2f1e368a8face73468dfa@fedora>
 <CAGD2q_anfBP78jck6AbMNtgAggjOgaB3P6dkmq9tONHP45adFA@mail.gmail.com>
 <20230919-cc4646dbfb953bd34e05658c@fedora>
 <CAGD2q_bkTpvXiomWb_yerNjQfMVKOctYgBqF_RBSo_jYqyyyxw@mail.gmail.com>
 <20230922-unclothed-bottom-5531329f9724@spud>
 <CAGD2q_YsFdDVhE4JCmQSGMWOdpe_yzG8-CdWYPXtjeZsManvgQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XUvCLKUJUJV29/kf"
Content-Disposition: inline
In-Reply-To: <CAGD2q_YsFdDVhE4JCmQSGMWOdpe_yzG8-CdWYPXtjeZsManvgQ@mail.gmail.com>


--XUvCLKUJUJV29/kf
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 05:43:54PM +0800, yang tylor wrote:
> On Fri, Sep 22, 2023 at 5:22=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> >
> > On Fri, Sep 22, 2023 at 03:56:25PM +0800, yang tylor wrote:
> > > On Tue, Sep 19, 2023 at 7:09=E2=80=AFPM Conor Dooley <conor@kernel.or=
g> wrote:
> > > > On Tue, Sep 19, 2023 at 05:31:29PM +0800, yang tylor wrote:
> >
> > > > > The behavior of "himax,boot_time_fw_upgrade" seems not stable and
> > > > > should be removed. "himax,fw_in_flash", I use the kernel config f=
or
> > > > > user to select.
> > > >
> > > > That seems like a bad idea, we want to be able to build one kernel =
that
> > > > works for all hardware at the same time.
> > > >
> > > I see, so I should take that back?
> > > I'll explain more about it.
> >
> > Are there particular ICs where the firmware would always be in flash and
> > others where it would never be? Or is this a choice made by the board or
> > system designer?
> >
> Most cases it's about the system designer's decision. But some ICs may be=
 forced
> to use flash because of its architecture(multiple IC inside, need to
> load firmware to
> multiple IC's sram by master IC). But if there is no limitation on
> this part, most system
> designers will prefer flashless.

Forgive me if I am not understanding correctly, there are some ICs that
will need to load the firmware from flash and there are some where it
will be a decision made by the designer of the board. Is the flash part
of the IC or is it an external flash chip?

Cheers,
Conor.

--XUvCLKUJUJV29/kf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQ2zQwAKCRB4tDGHoIJi
0hcKAQDgvSy/xvLvZMyY3V+wUeGnHAaZ90EqCmYIqh82AzlzUwEA/ErWVc3ZEz3i
+4/MhJeaqxOQ1xtZpXyOykEiZRrlLws=
=JcuJ
-----END PGP SIGNATURE-----

--XUvCLKUJUJV29/kf--

