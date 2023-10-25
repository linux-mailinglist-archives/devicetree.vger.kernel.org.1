Return-Path: <devicetree+bounces-11883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B721B7D6E85
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:14:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7085F281CB9
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:14:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3009228E28;
	Wed, 25 Oct 2023 14:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cM+3nRwh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147D3250E6
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:14:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B47B4C433C8;
	Wed, 25 Oct 2023 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698243277;
	bh=Q2K+UCxG5HR86aOzjpKAiJvoYUuL6bLcmGVS8Y8DLyk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cM+3nRwhQW/zDIlM96muJ5l5ED/1LgHnbk15CGUHbuXAhQT9oDaWLnNvKbGuD4HCu
	 5O9FYOntHynMFauPCk5LC6N2A52CgYDm97ZShRTZvJsPfkumbEgONwpG8aJPEn9QuE
	 dGZHxJ5Ji1Oprz6poNFioTU4rM6LEL4CpAaP3XQ3CFeWGrdMu36sZBD6nhlInz61E+
	 Yefh7B6RfKznqZdoKdQOB4/g8JwUwGG65uJBkqZJ5Ft6loHQ+CiEF1jcknwlcAYlXr
	 Ar1wpX5Sof4IqQ/9GDW6UYOUzcsyaV9dI7gupZ6a41wJaxcrKiFVvsB5qfeKWDQ7VZ
	 qOyfVc4uNYZ8Q==
Date: Wed, 25 Oct 2023 15:14:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de, emil.renner.berthing@canonical.com,
	vincent.chen@sifive.com, greentime.hu@sifive.com,
	zong.li@sifive.com, nylon7717@gmail.com
Subject: Re: [v5 1/2] riscv: dts: sifive: unleashed/unmatched: Remove PWM
 controlled LED's active-low properties
Message-ID: <20231025-utmost-enforcer-eda125f636ac@spud>
References: <20231024101902.6689-1-nylon.chen@sifive.com>
 <20231024101902.6689-2-nylon.chen@sifive.com>
 <20231024-yin-coliseum-11f5e06fec14@spud>
 <CAHh=Yk_h_1r7ZG+yLK=SoK9AgPkestuQDH-CK621mz=X-PA+cQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5+5pPVHOs7iWftBQ"
Content-Disposition: inline
In-Reply-To: <CAHh=Yk_h_1r7ZG+yLK=SoK9AgPkestuQDH-CK621mz=X-PA+cQ@mail.gmail.com>


--5+5pPVHOs7iWftBQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 05:32:21PM +0800, Nylon Chen wrote:
> Hi Conor,
>=20
> Conor Dooley <conor@kernel.org> =E6=96=BC 2023=E5=B9=B410=E6=9C=8824=E6=
=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:55=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > Hey,
> >
> > On Tue, Oct 24, 2023 at 06:19:01PM +0800, Nylon Chen wrote:
> > > This removes the active-low properties of the PWM-controlled LEDs in
> > > the HiFive Unmatched device tree.
> > >
> > > The reference is hifive-unleashed-a00.pdf[0] and hifive-unmatched-sch=
ematics-v3.pdf[1].
> > >
> > > Link: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7b=
f8453f8698_hifive-unleashed-a00-schematics-1.pdf [0]
> > > Link: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e6=
8ce76f4192_hifive-unmatched-schematics-v3.pdf [1]
> >
> > >
> >
> > This blank line should be removed if there is a follow-up.
> thanks, I got it.
> >
> > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> >
> > What did Vincent contribute to this patch? Are you missing a
> > co-developed-by tag, perhaps?
> Yes, Vincent was the first person to find the PWM driver problem, and

That sounds like s/Signed-off-by/Reported-by/ then.

Cheers,
Conor.

--5+5pPVHOs7iWftBQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkixQAKCRB4tDGHoIJi
0uJvAP94stLtCC51rlUcr/efIlHgPjbujxBJny8dAGLd/ft0VQD/YUQqbN7RgnKJ
7kX9TMUMD4Yn9372hjoBeLmO6a9WJww=
=VytO
-----END PGP SIGNATURE-----

--5+5pPVHOs7iWftBQ--

