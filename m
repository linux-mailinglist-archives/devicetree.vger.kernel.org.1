Return-Path: <devicetree+bounces-252528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDC4D00737
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 01:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3C8A830019C8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 00:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11DE94317D;
	Thu,  8 Jan 2026 00:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbUJ0jhH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E179A1CD2C
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 00:20:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767831639; cv=none; b=tDo0uEEvbUM695RxaYmulwCBe4CrdpKLwhgj5sn0SXTG4GapjH53zvCFdgQ8aj2U/dyjlyJ/AUwWlVcIAJkGQ3MNrYtZNbwmLNWdYg99cxbpJq5LLQBGR7uJV931KjTM1zgz1CRFrz/X/VCnpc9b8nudPKwgH0UwfTNta9X0yow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767831639; c=relaxed/simple;
	bh=pXkG0d+vOh/31KE5TmbbDyQfBf3C6Jz2J7aL8pwmYYo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=V5rrUPaRblmGcQ/KpGfaIQIEgj0168aWelp09vX7KpuLQpW6yOMIvlC13+KgnpYccG+WKmJWSIJeQvEHHpUyD5qBGi/vwyt2nMfLDAWTx7BbvEp7/bWX2/S6ImZhD4liqUWFSLVbkJ+Dv8uSddn2yQtNmIG7oKGYgIfnpWUaSHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbUJ0jhH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77FE2C4CEF1
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 00:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767831638;
	bh=pXkG0d+vOh/31KE5TmbbDyQfBf3C6Jz2J7aL8pwmYYo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WbUJ0jhHNeJo/jbExt3JN+o5yyNHxFCyTPdfQhvoaTeMCAqgtjTmOOdOXxNbwBs1C
	 r80Vnp0jhdr1X9vxTIBdU3WvE53Ow0yWGxho8DpTgGL+lJ7/UpougUoglFNh6nRtgX
	 oQOI9InFuweSU0VX+12stXohgitfdunaJ3fW+CjbF0dIqafYdcYeykERr1XdH/xHHp
	 vCxUzg7Be/9orYHhPRJ8kQ3DbwGGZMsqpaWJzF54I8DZ4oZ33KRIp3Qa7itA/39lIv
	 nQak1xdrqhZmnfWicjoIIfcsr0CUeXsYFLeCS/zjDf6bLmmHWrAr0rl8OWCL/0rWQY
	 +T9qE6Nb+BvNA==
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b7a6e56193cso450955066b.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 16:20:38 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW5affYvq/TFa1AF11OVLMTPms/kNMzUhrdZYHdTnWjSZeeZiXAMuSrOtfFdDkPcP2cjMsqq+PHbBf5@vger.kernel.org
X-Gm-Message-State: AOJu0YzSytZUCvOtdOhT3DzwdxdoG39j8rIlaPSdAW66/IGuIiysaYJ+
	ajvWzvD4SHqbpa7uriGVA7uCMv5+rgF5kryKy7IXCaJ5etAtXgHWZC+OeTBOP8WEkHk05auLavc
	VkIM2Rv+QLGMCPTPbIBLBte7SNzxkhw==
X-Google-Smtp-Source: AGHT+IFVcyiQpWeqx5ZFenp8TiGDXBTlknfz4c3YuEOj0dHm3YHam3HM+bqrZWt14kX04JIkVxFjhzlGhaoieuGk1Io=
X-Received: by 2002:a17:907:2d0e:b0:b76:7b8c:a6a2 with SMTP id
 a640c23a62f3a-b84453a1267mr430640666b.30.1767831637056; Wed, 07 Jan 2026
 16:20:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107002136.3121607-1-tpearson@raptorengineering.com>
 <20260107002136.3121607-2-tpearson@raptorengineering.com> <20260107-spotted-swan-of-sufficiency-1bfc03@quoll>
 <887779054.192722.1767805783381.JavaMail.zimbra@raptorengineeringinc.com>
 <24a1839d-5c5d-4e59-bc42-403dbc8134a4@kernel.org> <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <2068648185.192779.1767807665985.JavaMail.zimbra@raptorengineeringinc.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 7 Jan 2026 18:20:25 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLxVpFRPsNy5gRb61HvSohzi=OS3KdacKF7VH_YW3e8_A@mail.gmail.com>
X-Gm-Features: AQt7F2o1x8Sg-JZAL5sBmONfVtGP9zeqZCrKcvSdlReAZtr4-tpLlGjki1IPoA4
Message-ID: <CAL_JsqLxVpFRPsNy5gRb61HvSohzi=OS3KdacKF7VH_YW3e8_A@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 7, 2026 at 11:41=E2=80=AFAM Timothy Pearson
<tpearson@raptorengineering.com> wrote:
>
>
>
> ----- Original Message -----
> > From: "Krzysztof Kozlowski" <krzk@kernel.org>
> > To: "Timothy Pearson" <tpearson@raptorengineering.com>
> > Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel" <linux-ke=
rnel@vger.kernel.org>, "Rob Herring"
> > <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof =
Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> > "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony.c=
om>, "Shawn Anastasio"
> > <sanastasio@raptorengineering.com>
> > Sent: Wednesday, January 7, 2026 11:18:09 AM
> > Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>
> > On 07/01/2026 18:09, Timothy Pearson wrote:
> >>
> >>
> >> ----- Original Message -----
> >>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
> >>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> >>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
> >>> <linux-kernel@vger.kernel.org>, "Rob Herring"
> >>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzyszto=
f
> >>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> >>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@sony=
.com>,
> >>> "Shawn Anastasio"
> >>> <sanastasio@raptorengineering.com>
> >>> Sent: Wednesday, January 7, 2026 1:25:10 AM
> >>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
> >>
> >>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
> >>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> >>>>
> >>>> The Sony Cronos Platform Controller is a multi-purpose platform cont=
roller
> >>>> that provides both a watchdog timer and an LED controller for the So=
ny
> >>>> Interactive Entertainment Cronos x86 server platform. As both functi=
ons
> >>>> are provided by the same CPLD, a multi-function device is exposed as=
 the
> >>>> parent of both functions.
> >>>>
> >>>> Add a DT binding for this device.
> >>>>
> >>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> >>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> >>>> ---
> >>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 +++++++++++++++=
+++
> >>>
> >>> How this can be a v6 with no changelog at all and still not tested?
> >>>
> >>> What happened with this patchset? Where is it explained?
> >>
> >> Changes have only been to fix issues identified in review and any post=
ed
> >> autotest failures.
> >
> > And where is this explained? Please always provide detailed changelog i=
n
> > the cover letter or individual patch.
> >
> >>
> >> Please note that the tooling to check the DT bindings does NOT appear =
work
> >> properly, we've wasted a lot of time and effort attempting to get it r=
unning
> >> only to find that it's spitting out internal Python errors even for ot=
her
> >> drivers that are *already* in the kernel source tree.  This obviously =
creates a
> >> situation where it's difficult to pre-check the patch set for complian=
ce; if
> >> you want to see this first hand, spin up a Debian Sid VM (which has a =
very
> >> recent version of the DT tooling from late 2025) and try to check any =
of the
> >> in-tree MFD drivers using the documented methods.
> >
> > I am using DT schema on multiple distros, including Debian but not Sid
> > but Trixie
> > (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Works
> > without problem...
>
> Good to know.  There is next to no documentation on the required software=
 versions to make this work, which complicates
>
> > On regular Debian based distro this is just few commands - pix install
> > and them make dt_binding_check - so I am surprised you spent a lot of
> > time on setting this up.
> >
> > What is the problem exactly?
>
> Good to know.  There is next to no documentation on the required software
> versions to make this work, which complicates setup.

$latest

It's as simple as that. There is some checking of a minimum version,
but maybe we need to bump it more aggressively. I haven't because
older versions might work.

>  Bookworm's DT package was
> too old when it was tried pre-Trixie release, and at the time Sid didn't =
work
> either for some other reason.  The assumption was that the kernel needed =
a very
> recent version of the DT tooling, so Sid was tried again this year.  Will=
 try
> Trixie before the next patch update.

Don't use the distro version. There's no one checking that it works.

One problem here (and for distro packaging) has been json-schema pkg
breaking us. So we were stuck on <4.18 for a long time and now require
>=3D4.18.

Rob

