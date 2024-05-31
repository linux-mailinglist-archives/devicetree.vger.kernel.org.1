Return-Path: <devicetree+bounces-71258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4777B8D6349
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 15:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2349B284DE
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 13:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B8EE158DC1;
	Fri, 31 May 2024 13:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4Mo/3Yf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47210158DBD
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717162965; cv=none; b=NJTstEChvMCPKA7jLtK+paDkPwbi23odgFAk/d7QmPqM8eusrCsnE1C6qjaxA8WSz9FnEr9Tbt6rwXi+fELUe5VWXSqSj5RzzQBWYgVsqcHJx/ijzsP6E2E8bNUa70LXUxBI4OB0CGnGk/9uY4lbTkYAR+44Fdooct/W4U6sZMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717162965; c=relaxed/simple;
	bh=qqLtf7+zw2pfXzDFY+e0gbvB9W2HrwfCCclROZprZmY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z3VcWh/Y8Bb/GU+a1VDkeJs6WthS19noTe/FuTpzOXzegat7M4DOwB4oj1KwOUiEa1dWpwOGDZpIb/ScGGv5SRxjJwMr0T2eMX/Hc6hziXSU9q9enSHnFVYp6BB5jcnJfM+qIEb/rsett+JQqqmGoCrWMngtes8vZ2KqZg8ad4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4Mo/3Yf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202D2C116B1
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 13:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717162965;
	bh=qqLtf7+zw2pfXzDFY+e0gbvB9W2HrwfCCclROZprZmY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=A4Mo/3YfXLimAnCdKyZk/l8+E2zFPWxVVqrDYOOMG8fr1jIa5bgbowwGkwtzJDYE7
	 A2KHud8hFnkmgozjvO0ltXpsuM2AOl8Nl3LqDfh4s93CdVtMhwI/2YGDqiV1lPdcNu
	 Ky1ULczm7PmNVWyKRT+LYt19EPvN9an0aLhsIG+VDtb1D7jkvIjQmGNXqHb1l88/3o
	 cl94dcH4QSXlzLOkmJlePyaMACP5c3zffVSLfPKPFvdSd44cR2SV9NTVXb0sRuDFCC
	 ulTopu6yw0+4HU6qQwOZWTVUiGqA19AQG5eiVkU5GmWhG+48Z7VJZd7F2gyfQ/fXLB
	 Ifu6zd1Rzue2A==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52a54d664e3so1371758e87.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 06:42:45 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXoG3ie2+Rdtk/3476FJzTmdUQtUaTiknr/O48r62H2riv+BkieJJ78XiW6jrIG3JEFP9U8cmaLIvmoBnWwgEbtrdwg/4qst36IkA==
X-Gm-Message-State: AOJu0YzJWLU6Q1bh2pTdLzOkJD2NnUt2L+pnBaO6mQbvuxwc/EtUfkrZ
	fMj3N+cy/w4jpYciNzlGhYFacbF/BOwFZn9QZo/oxvt72NjH66EoNBrq/ekcukkvR/gtJaF+164
	5RsBK9Ui7ulggOFWea6SHshSuIg==
X-Google-Smtp-Source: AGHT+IHWWRfetWkqmzEjY1KXLQycuM06ccIbH0jyv4UuYLhS/us6IRdylqU38WYaZXSbWKeePcj4rJ5GjkzdzVbzKoE=
X-Received: by 2002:a19:8c1e:0:b0:52b:8280:8c10 with SMTP id
 2adb3069b0e04-52b8956b5b3mr1158532e87.18.1717162963557; Fri, 31 May 2024
 06:42:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
 <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com> <CAMuHMdWxxDu-V_drs+dMdycQHY_+v0sPH7bVO_2-ixGWQkdTjg@mail.gmail.com>
In-Reply-To: <CAMuHMdWxxDu-V_drs+dMdycQHY_+v0sPH7bVO_2-ixGWQkdTjg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 31 May 2024 08:42:29 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL7Vc2T1-JMf7bFAedmz4NYTD3Efm0z_-xdd7JF+xKmQA@mail.gmail.com>
Message-ID: <CAL_JsqL7Vc2T1-JMf7bFAedmz4NYTD3Efm0z_-xdd7JF+xKmQA@mail.gmail.com>
Subject: Re: [PATCH v2] fdtoverlay: Remove bogus type info from help text
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2024 at 8:32=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Rob,
>
> On Thu, May 30, 2024 at 2:31=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> > On Wed, May 29, 2024 at 5:11=E2=80=AFAM Geert Uytterhoeven
> > <geert+renesas@glider.be> wrote:
> > >
> > > "fdtoverlay -h" shows a.o.:
> > >
> > >     <type>      s=3Dstring, i=3Dint, u=3Dunsigned, x=3Dhex
> > >             Optional modifier prefix:
> > >                     hh or b=3Dbyte, h=3D2 byte, l=3D4 byte (default)
> > >
> > > However, unlike fdtget and fdtput, fdtoverlay does not support the
> > > "-t"/"--type" option.
> > >
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > ---
> > > Upstream dtc has Uwe's commit 2cdf93a6d402a161 ("fdtoverlay: Fix usag=
e
> > > string to not mention "<type>"").
> >
> > So you want me to sync upstream? That's how upstream commits get into
> > the kernel. I don't take patches (unless there's some urgent
> > breakage).
>
> If that's the policy, then yes please ;-)

With current dtc main branch, I get these errors:

Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/draak-ebisu-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/draak-ebisu-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND
Failed to apply
'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
FDT_ERR_NOTFOUND

Rob

