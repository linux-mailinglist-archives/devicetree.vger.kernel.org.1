Return-Path: <devicetree+bounces-252529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 724BFD00755
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 01:23:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7537302C8E6
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 00:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49E0915539A;
	Thu,  8 Jan 2026 00:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akiMdFvm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C563D544
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 00:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767831803; cv=none; b=jeoEbHuVN8S9G/hKG2FiD0mz4sGLh6lDfrQvXA6dTex0KpPYIQcuI28CdrGEcii3DPzYDQ5K6l4WNHYSSHkim3dh+pDS0bAtPx3o+yE2dh0JGON4jr7FpXv7MJOu/t122KXAnAHQGJ8KYjxwZdSw3MyuCcg3oQ+FzmqIFEyKLZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767831803; c=relaxed/simple;
	bh=aZ7TO8WcFU4ZYLVdUPxlp1vfXJ8TPOJ9Ed5K7tv/3Ng=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rW9iCHqsXFPGJBcaUKWRXxiwl5IVb8bbxuZCXZKrZfkM2D+DgILj7AkaraLYlLHLkanvvSAUSTbVtQUlce8XCCYSJqWQ1ThnhNo5F7WoFau3Cruzb67z5RldBz28KWilQb3rc2fFcEQaQ6oQ3igb7cvVSGR+xt9QdHHayK/OAtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akiMdFvm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1384C19423
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 00:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767831802;
	bh=aZ7TO8WcFU4ZYLVdUPxlp1vfXJ8TPOJ9Ed5K7tv/3Ng=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=akiMdFvmuxF1tYqFAWYcqK1quJME2ZCNgJLW0ktEU2WUIB35hHfsI0VfNP3vsqyb+
	 AYzDUaTj/RHNb+brPXypDSw3Fw3L793JCda2jb5c0Rd6a8lu3IFSlG/pYEzHBp9lxE
	 wcuTXhHYUMiWyaLrn17EDfi+o2SJrAmywDEU6S8WMFJDb/yMmuUujMdipeupyM5/RI
	 4SiaZJW1Qi2KphauNJ7Fq5jmgamDPG8UagiYmT7tGCkJR2Nh3BDYT0I2EWGS0Wj6ZO
	 iQ2MVpBwFqenY1HPeIZ0GIDytKVTPv559wRQRuEtzIbwtd2OjFI71ZigA0A9D1rMZj
	 kIV1Ts9zHnz/w==
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-64dfb22c7e4so2394872a12.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 16:23:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVfuG2A89aK+zO2qnHv238D1LlLuZ2ed3U9KobvyfSRDTYg5whZ9jvu++5I+zB9pxygDvsI3Zj6dl+Z@vger.kernel.org
X-Gm-Message-State: AOJu0YzHi+asl1xbRbB0cuMdO9FxIqd2NIvm+K5bpO3PUpabCPGRlZab
	c6myBM31D9ci5uK0FyjyLbScVaR3AdGtT5uGvK1RkGSvxAXr6v24uo75CZiSOVHK7sTWY1dnfQU
	TUPdUihuqfY8XfimWxjWxKo3RRVSs7w==
X-Google-Smtp-Source: AGHT+IHtueBh96DiFKZJaweO8t80UEGDqE0ymPDdtC/RrciqD680usKV3zL6a2IBZeIOqGaNOtj1qyzTzNC5ERppGxQ=
X-Received: by 2002:a17:907:3e1a:b0:b76:b928:eba1 with SMTP id
 a640c23a62f3a-b8444c59b86mr439738966b.7.1767831801392; Wed, 07 Jan 2026
 16:23:21 -0800 (PST)
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
 <68985605-1b18-4413-943d-c6af04c4a7f6@kernel.org> <26444998.193317.1767819903648.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <26444998.193317.1767819903648.JavaMail.zimbra@raptorengineeringinc.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 7 Jan 2026 18:23:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJSUbkbTV=ncp8nR108zDkzP_x9wKE9yEw+488XpAKAqg@mail.gmail.com>
X-Gm-Features: AQt7F2omhYIba-8NIOh285jkzBvKmx_J0rnZEmmnqzfezVFHv30ORMu8uZB_7e0
Message-ID: <CAL_JsqJSUbkbTV=ncp8nR108zDkzP_x9wKE9yEw+488XpAKAqg@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree <devicetree@vger.kernel.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 7, 2026 at 3:05=E2=80=AFPM Timothy Pearson
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
> > Sent: Wednesday, January 7, 2026 2:22:33 PM
> > Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>
> > On 07/01/2026 18:41, Timothy Pearson wrote:
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
> >>> Sent: Wednesday, January 7, 2026 11:18:09 AM
> >>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
> >>
> >>> On 07/01/2026 18:09, Timothy Pearson wrote:
> >>>>
> >>>>
> >>>> ----- Original Message -----
> >>>>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
> >>>>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> >>>>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
> >>>>> <linux-kernel@vger.kernel.org>, "Rob Herring"
> >>>>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysz=
tof
> >>>>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> >>>>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@so=
ny.com>,
> >>>>> "Shawn Anastasio"
> >>>>> <sanastasio@raptorengineering.com>
> >>>>> Sent: Wednesday, January 7, 2026 1:25:10 AM
> >>>>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
> >>>>
> >>>>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
> >>>>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> >>>>>>
> >>>>>> The Sony Cronos Platform Controller is a multi-purpose platform co=
ntroller
> >>>>>> that provides both a watchdog timer and an LED controller for the =
Sony
> >>>>>> Interactive Entertainment Cronos x86 server platform. As both func=
tions
> >>>>>> are provided by the same CPLD, a multi-function device is exposed =
as the
> >>>>>> parent of both functions.
> >>>>>>
> >>>>>> Add a DT binding for this device.
> >>>>>>
> >>>>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> >>>>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> >>>>>> ---
> >>>>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 +++++++++++++=
+++++
> >>>>>
> >>>>> How this can be a v6 with no changelog at all and still not tested?
> >>>>>
> >>>>> What happened with this patchset? Where is it explained?
> >>>>
> >>>> Changes have only been to fix issues identified in review and any po=
sted
> >>>> autotest failures.
> >>>
> >>> And where is this explained? Please always provide detailed changelog=
 in
> >>> the cover letter or individual patch.
> >>>
> >>>>
> >>>> Please note that the tooling to check the DT bindings does NOT appea=
r work
> >>>> properly, we've wasted a lot of time and effort attempting to get it=
 running
> >>>> only to find that it's spitting out internal Python errors even for =
other
> >>>> drivers that are *already* in the kernel source tree.  This obviousl=
y creates a
> >>>> situation where it's difficult to pre-check the patch set for compli=
ance; if
> >>>> you want to see this first hand, spin up a Debian Sid VM (which has =
a very
> >>>> recent version of the DT tooling from late 2025) and try to check an=
y of the
> >>>> in-tree MFD drivers using the documented methods.
> >>>
> >>> I am using DT schema on multiple distros, including Debian but not Si=
d
> >>> but Trixie
> >>> (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Works
> >>> without problem...
> >>
> >> Good to know.  There is next to no documentation on the required softw=
are
> >> versions to make this work, which complicates
> >>
> >>> On regular Debian based distro this is just few commands - pix instal=
l
> >>> and them make dt_binding_check - so I am surprised you spent a lot of
> >>> time on setting this up.
> >>>
> >>> What is the problem exactly?
> >>
> >> Good to know.  There is next to no documentation on the required softw=
are
> >> versions to make this work, which complicates setup.  Bookworm's DT pa=
ckage was
> >> too old when it was tried pre-Trixie release, and at the time Sid didn=
't work
> >> either for some other reason.  The assumption was that the kernel need=
ed a very
> >> recent version of the DT tooling, so Sid was tried again this year.  W=
ill try
> >> Trixie before the next patch update.
> >
> > So you mean from distro? We don't use it from the distro because it's
> > heavily outdated. It makes no sense. That's why I wrote - pipx.
> >
> >
> >>
> >> Here is example output against an in-tree driver, using an up to date =
Sid system
> >> (word wrap not applied so as to make the errors easier to read):
> >>
> >> dt_binding_check
> >> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mfd/silergy,sy7636=
a.yaml
> >>
> >>   CHKDT   ./Documentation/devicetree/bindings
> >> Traceback (most recent call last):
> >>   File "/usr/bin/dt-doc-validate", line 8, in <module>
> >>     sys.exit(main())
> >>              ~~~~^^
> >>   File "/usr/lib/python3/dist-packages/dtschema/doc_validate.py", line=
 66, in main
> >
> > Feels liks distro package. Never saw this, but again I have never used
> > distro and have absolutely never recommended even trying that. There
> > were problems with matching jsonschema package, but regardless - if you
> > use distro you will use very old schemas, so you will hit another
> > problem. It's just pointless to rely on distro here - no benefits for
> > you, but only stale/old package, especially that installing via pipx is
> > easy.
>
> In my opinion, the distro package should be fixed.  There are security co=
nsiderations with PyPI [1], and those concerns then require (per our polici=
es) the use of isolated systems due to downloading and running unsigned and=
 (at least on our end) unaudited code from the general Internet.  The distr=
o packages are signed and built from source on known trusted systems, in co=
ntrast with pip's general mode of operation, and I can't imagine it would b=
e that difficult to make sure that Debian and Fedora (the two most common b=
ase distros) ship a reasonably new version of the valdation tools, especial=
ly in unstable / bleeding edge releases (Sid).

You can install all the dependencies from the distros (assuming
json-schema >=3D 4.18) and install dtschema from git.

Rob

