Return-Path: <devicetree+bounces-257116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDFBD3BCC5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 02:13:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E9843019BCF
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 01:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93A331E5718;
	Tue, 20 Jan 2026 01:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/iPA8Ym"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7117D1DF25F
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768871535; cv=none; b=HWrKjPhcPAbCpG7lfHJ+x2Ev9xPcBN2Xo6G74Ef016WjfHgO7HSd+GEO+Qg826L9VNyif/rd6HhidM4kmpuy8h1+mS6P2fjJMuIfKSh1xLCLbianc8rg17yJKAr5VL+DixlyVp7jGn9PX0QEWSJ/e3Dp6SIp10IYYBxCwj0dy2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768871535; c=relaxed/simple;
	bh=n1MiIni5X6NQvvsPDtFw7/wQmxhi3xt+U2+FT19pYbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a9Q3fVNva0YaFeYcBPk5Shgh+VHnEYkyhpQd293QespiJRFTdNEMnilaNaBxol227DP1BpM3/gh0RHIBI+0sys0F+VwnQ6S/n50CrKhiZc/IXWnLlU3K2aOO9T7+4pzrpbDULC1vY44S1Vv9B43yvYrWJhEAfoL5s7bSU7CeftE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/iPA8Ym; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB3C6C4AF09
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 01:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768871535;
	bh=n1MiIni5X6NQvvsPDtFw7/wQmxhi3xt+U2+FT19pYbE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Q/iPA8Ymx5Tkt7oW52i9qj5GnS9+CkJsm4k2jM8vFZl4vquZTAslZBXZyYSLhMpGo
	 p2XugMr+SaDY+fV9xJXaqSHyaJ3IllG1ht/B9SAPJd6veXQ8HdpeDfwdJZuCLTCpBr
	 YLoVhOkPEYciiMnsKCXtZgogidE9Uuivc2dMeUXv0E1ZnPcTvy2W8uooJ45az30MAx
	 4tKLtYGjZAdCsRNqP6m3P9BBm/xhXwvlu6ouPNiyLFI3s74q5q5Y2leNCI4dGY57xf
	 OdJphR+AibxmDNFg5gZKiX2O7orR3cCxqze63TzenJrqnOoDrzH+EwXr4kxBP2S3ZJ
	 OHcGkOGPQE/Dw==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-64c893f3a94so10210134a12.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 17:12:14 -0800 (PST)
X-Gm-Message-State: AOJu0YwZ3rJqfNPVHCUy41nvuHEfTFCQZumsAmVfHR1CkkTuV2uy7+ar
	ELyY9z/fdo7Ciuf1ApNTrftMXd7Rm+FWshc4h1/QYK2V9nO9T2mwHzpBhjh2daqi373IwI0UMwa
	Q0SRxKlTulbbCdOF8f9/wm37DEhxEoA==
X-Received: by 2002:a17:907:2da1:b0:b87:b31a:bf28 with SMTP id
 a640c23a62f3a-b87b31ac1d2mr850753466b.11.1768871533460; Mon, 19 Jan 2026
 17:12:13 -0800 (PST)
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
 <CAL_JsqLxVpFRPsNy5gRb61HvSohzi=OS3KdacKF7VH_YW3e8_A@mail.gmail.com> <1683797865.210858.1768837261953.JavaMail.zimbra@raptorengineeringinc.com>
In-Reply-To: <1683797865.210858.1768837261953.JavaMail.zimbra@raptorengineeringinc.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 19 Jan 2026 19:12:02 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+erPkg6GswZ9y_UJMOHavWynrBv9kj-nkgkk+Ae=ouhw@mail.gmail.com>
X-Gm-Features: AZwV_QgZp9x9S6YpjE7zSlCVLbUqDYcNyLBKqII7JzvD7VbfvDntnvrsinjC_G0
Message-ID: <CAL_Jsq+erPkg6GswZ9y_UJMOHavWynrBv9kj-nkgkk+Ae=ouhw@mail.gmail.com>
Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
To: Timothy Pearson <tpearson@raptorengineering.com>
Cc: devicetree <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>, 
	Shawn Anastasio <sanastasio@raptorengineering.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 19, 2026 at 9:41=E2=80=AFAM Timothy Pearson
<tpearson@raptorengineering.com> wrote:
>
>
>
> ----- Original Message -----
> > From: "Rob Herring" <robh+dt@kernel.org>
> > To: "Timothy Pearson" <tpearson@raptorengineering.com>
> > Cc: "Krzysztof Kozlowski" <krzk@kernel.org>, "devicetree" <devicetree@v=
ger.kernel.org>, "linux-kernel"
> > <linux-kernel@vger.kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "=
Krzysztof Kozlowski"
> > <krzysztof.kozlowski+dt@linaro.org>, "Lee Jones" <lee@kernel.org>, "Geo=
rgy Yakovlev" <Georgy.Yakovlev@sony.com>, "Shawn
> > Anastasio" <sanastasio@raptorengineering.com>
> > Sent: Wednesday, January 7, 2026 6:20:25 PM
> > Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
>
> > On Wed, Jan 7, 2026 at 11:41=E2=80=AFAM Timothy Pearson
> > <tpearson@raptorengineering.com> wrote:
> >>
> >>
> >>
> >> ----- Original Message -----
> >> > From: "Krzysztof Kozlowski" <krzk@kernel.org>
> >> > To: "Timothy Pearson" <tpearson@raptorengineering.com>
> >> > Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
> >> > <linux-kernel@vger.kernel.org>, "Rob Herring"
> >> > <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzyszt=
of
> >> > Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> >> > "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@son=
y.com>,
> >> > "Shawn Anastasio"
> >> > <sanastasio@raptorengineering.com>
> >> > Sent: Wednesday, January 7, 2026 11:18:09 AM
> >> > Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
> >>
> >> > On 07/01/2026 18:09, Timothy Pearson wrote:
> >> >>
> >> >>
> >> >> ----- Original Message -----
> >> >>> From: "Krzysztof Kozlowski" <krzk@kernel.org>
> >> >>> To: "Timothy Pearson" <tpearson@raptorengineering.com>
> >> >>> Cc: "devicetree" <devicetree@vger.kernel.org>, "linux-kernel"
> >> >>> <linux-kernel@vger.kernel.org>, "Rob Herring"
> >> >>> <robh+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Krzys=
ztof
> >> >>> Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
> >> >>> "Lee Jones" <lee@kernel.org>, "Georgy Yakovlev" <Georgy.Yakovlev@s=
ony.com>,
> >> >>> "Shawn Anastasio"
> >> >>> <sanastasio@raptorengineering.com>
> >> >>> Sent: Wednesday, January 7, 2026 1:25:10 AM
> >> >>> Subject: Re: [PATCH v6 1/4] dt-bindings: mfd: Add sony,cronos-smc
> >> >>
> >> >>> On Tue, Jan 06, 2026 at 06:21:33PM -0600, Timothy Pearson wrote:
> >> >>>> From: Shawn Anastasio <sanastasio@raptorengineering.com>
> >> >>>>
> >> >>>> The Sony Cronos Platform Controller is a multi-purpose platform c=
ontroller
> >> >>>> that provides both a watchdog timer and an LED controller for the=
 Sony
> >> >>>> Interactive Entertainment Cronos x86 server platform. As both fun=
ctions
> >> >>>> are provided by the same CPLD, a multi-function device is exposed=
 as the
> >> >>>> parent of both functions.
> >> >>>>
> >> >>>> Add a DT binding for this device.
> >> >>>>
> >> >>>> Signed-off-by: Shawn Anastasio <sanastasio@raptorengineering.com>
> >> >>>> Signed-off-by: Timothy Pearson <tpearson@raptorengineering.com>
> >> >>>> ---
> >> >>>>  .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++++++++=
++++++
> >> >>>
> >> >>> How this can be a v6 with no changelog at all and still not tested=
?
> >> >>>
> >> >>> What happened with this patchset? Where is it explained?
> >> >>
> >> >> Changes have only been to fix issues identified in review and any p=
osted
> >> >> autotest failures.
> >> >
> >> > And where is this explained? Please always provide detailed changelo=
g in
> >> > the cover letter or individual patch.
> >> >
> >> >>
> >> >> Please note that the tooling to check the DT bindings does NOT appe=
ar work
> >> >> properly, we've wasted a lot of time and effort attempting to get i=
t running
> >> >> only to find that it's spitting out internal Python errors even for=
 other
> >> >> drivers that are *already* in the kernel source tree.  This obvious=
ly creates a
> >> >> situation where it's difficult to pre-check the patch set for compl=
iance; if
> >> >> you want to see this first hand, spin up a Debian Sid VM (which has=
 a very
> >> >> recent version of the DT tooling from late 2025) and try to check a=
ny of the
> >> >> in-tree MFD drivers using the documented methods.
> >> >
> >> > I am using DT schema on multiple distros, including Debian but not S=
id
> >> > but Trixie
> >> > (https://krzk.eu/#/builders/91/builds/116/steps/13/logs/stdio). Work=
s
> >> > without problem...
> >>
> >> Good to know.  There is next to no documentation on the required softw=
are
> >> versions to make this work, which complicates
> >>
> >> > On regular Debian based distro this is just few commands - pix insta=
ll
> >> > and them make dt_binding_check - so I am surprised you spent a lot o=
f
> >> > time on setting this up.
> >> >
> >> > What is the problem exactly?
> >>
> >> Good to know.  There is next to no documentation on the required softw=
are
> >> versions to make this work, which complicates setup.
> >
> > $latest
> >
> > It's as simple as that. There is some checking of a minimum version,
> > but maybe we need to bump it more aggressively. I haven't because
> > older versions might work.
> >
> >>  Bookworm's DT package was
> >> too old when it was tried pre-Trixie release, and at the time Sid didn=
't work
> >> either for some other reason.  The assumption was that the kernel need=
ed a very
> >> recent version of the DT tooling, so Sid was tried again this year.  W=
ill try
> >> Trixie before the next patch update.
> >
> > Don't use the distro version. There's no one checking that it works.
> >
> > One problem here (and for distro packaging) has been json-schema pkg
> > breaking us. So we were stuck on <4.18 for a long time and now require
> >>=3D4.18.
> >
> > Rob
>
> OK, so this came back up while preparing v7 of this patch series.  Set up=
 the isolated machine etc., installed both dtschema and yamllint from PyPI =
as recommended, and after rebasing on the latest kernel tree I get:
>
> make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings=
/mfd/sony,cronos-cpld.yaml
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   CHKDT   ./Documentation/devicetree/bindings
>   LINT    ./Documentation/devicetree/bindings
> usage: yamllint [-h] [-] [-c CONFIG_FILE | -d CONFIG_DATA] [--list-files]=
 [-f {parsable,standard,colored,github,auto}] [-s] [--no-warnings] [-v] [FI=
LE_OR_DIR ...]
> yamllint: error: one of the arguments FILE_OR_DIR - is required
>
> Is there more magic $version / install method stuff needed?

That only happens to me if DT_SCHEMA_FILES points to something that
doesn't match anything.

Rob

