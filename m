Return-Path: <devicetree+bounces-71302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 063348D64A4
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 16:39:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACA371F21851
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D856A52F71;
	Fri, 31 May 2024 14:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3mv+b08"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36EB4D8C4
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 14:38:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717166335; cv=none; b=I4pyk3sVv2K6+bWgByUeiJqaNpQOpBhweyJbABf/f5PY0gT1f/8zwNAxTQcBDS/GrsUXvQ1I5RMUxDVmQg5hUUKDN7DVTNbzqm3f7jMt8KAfjsqQLY3ImxvASJjXz+OGYfUePuCER7KZQ7oZYrvYpzG5Ldqb5RH7whmn+MQO2Jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717166335; c=relaxed/simple;
	bh=ccznBvKakHTqgQh1HIYLhKWZ8hJxZnKk89bRvX7atHE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jOVjl1TbVh/UnTTHt0E4Jx/baKCsCaeVHMvHkMrc4J+egzLbUkeElQy4Xowu7qd3xhz+NucrGPjvc3IZyAgXYA6buHZ9TdvvUuHxe/T6aoA6wbm9VkrymotfsVmdlfAULd+If7dq2ym9c+grKk2xbVLEB2jx9cLtzKoq51rFRcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3mv+b08; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4236CC116B1
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 14:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717166335;
	bh=ccznBvKakHTqgQh1HIYLhKWZ8hJxZnKk89bRvX7atHE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=r3mv+b08l1q7fVl7ZSgAr3fGMIhzQoY2+OiMs6DTxNsBW/2Ona35MISWW1aYDIwKR
	 +eYxHoRwzGryVV9Tuh5X7e2JIIVjOF51NJiISrmq1vc7Oq5kOFeHkKkr7ngLSJs8Uc
	 59TgqXdjNaN1YYKJCPMzPTMom2erbYI967pmAYbD6LFNfnVgivg9GmsvZ/pzGV2Wb7
	 wkUfYIrYU8yN6oWUXfo6ir78QmzApV7JU2WkOg+OtovL4Lt4rVmgIE0GkoqB0ZSm+b
	 c3MF/XadALyNYXVscs6wUaw/ihn6ntRJG/jAu8MjULE0eg/DoSWsbGLpb7gca2cioV
	 DxVEUYacOLnIA==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52b7ebb2668so2556659e87.2
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 07:38:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXxarvQtFKXtn9QJIPtbCS+SI0DmOVWX56VE7VGa3ns86Dp6H793c1Ebd2hOx4WfP56OrSZDLkAienJoX06FXGzIEcvHo4kqw9s4w==
X-Gm-Message-State: AOJu0YwQo3orsXr27Nbas43ukVdebBGI/C+n3qkG/mGK+cGHW3GWM+wp
	85qEnp5w+iI6uc8H3AGADY9z53Q1PlMPl91B1EBvcU8Ez9AEPrUDYxvvPb9nGgpe3SpyC0RJ9ov
	/XZRSV3Nb9Fjc6hE235QkMelBYg==
X-Google-Smtp-Source: AGHT+IEKbALiBiXSPu/Ks+lXdqoLrISkQhhoBNas3cP+QOb+NrTmbWKOAZHKDxxyuv24Frwwr91F1MzsOadOf5qPzIg=
X-Received: by 2002:ac2:58d8:0:b0:525:32aa:443e with SMTP id
 2adb3069b0e04-52b8954e931mr1727606e87.17.1717166333618; Fri, 31 May 2024
 07:38:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <a770cb5acb708e6d65570a4037a376321c9e8bb0.1716977322.git.geert+renesas@glider.be>
 <CAL_JsqLL3g4+nfu2NmC0drR-m5u287EBvK9jbY43XC=bSSVSpQ@mail.gmail.com>
 <CAMuHMdWxxDu-V_drs+dMdycQHY_+v0sPH7bVO_2-ixGWQkdTjg@mail.gmail.com>
 <CAL_JsqL7Vc2T1-JMf7bFAedmz4NYTD3Efm0z_-xdd7JF+xKmQA@mail.gmail.com> <CAMuHMdV5q8cSz+SOry1ZJjMhTxhkb0ABNDFgCDySpKPijJjpcw@mail.gmail.com>
In-Reply-To: <CAMuHMdV5q8cSz+SOry1ZJjMhTxhkb0ABNDFgCDySpKPijJjpcw@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 31 May 2024 09:38:41 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJ0nX7EK05aC7z9i2FEB7jAf0XrPDyPY-NXr8rnEDgqZg@mail.gmail.com>
Message-ID: <CAL_JsqJ0nX7EK05aC7z9i2FEB7jAf0XrPDyPY-NXr8rnEDgqZg@mail.gmail.com>
Subject: Re: [PATCH v2] fdtoverlay: Remove bogus type info from help text
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 9:07=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Rob,
>
> On Fri, May 31, 2024 at 3:43=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> > On Thu, May 30, 2024 at 8:32=E2=80=AFAM Geert Uytterhoeven <geert@linux=
-m68k.org> wrote:
> > > On Thu, May 30, 2024 at 2:31=E2=80=AFPM Rob Herring <robh@kernel.org>=
 wrote:
> > > > On Wed, May 29, 2024 at 5:11=E2=80=AFAM Geert Uytterhoeven
> > > > <geert+renesas@glider.be> wrote:
> > > > >
> > > > > "fdtoverlay -h" shows a.o.:
> > > > >
> > > > >     <type>      s=3Dstring, i=3Dint, u=3Dunsigned, x=3Dhex
> > > > >             Optional modifier prefix:
> > > > >                     hh or b=3Dbyte, h=3D2 byte, l=3D4 byte (defau=
lt)
> > > > >
> > > > > However, unlike fdtget and fdtput, fdtoverlay does not support th=
e
> > > > > "-t"/"--type" option.
> > > > >
> > > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > > > > ---
> > > > > Upstream dtc has Uwe's commit 2cdf93a6d402a161 ("fdtoverlay: Fix =
usage
> > > > > string to not mention "<type>"").
> > > >
> > > > So you want me to sync upstream? That's how upstream commits get in=
to
> > > > the kernel. I don't take patches (unless there's some urgent
> > > > breakage).
> > >
> > > If that's the policy, then yes please ;-)
> >
> > With current dtc main branch, I get these errors:
> >
> > Failed to apply
> > 'arch/arm64/boot/dts/renesas/salvator-panel-aa104xd12.dtbo':
> > FDT_ERR_NOTFOUND
>
> Interesting...
>
> Do you know what's the problem?

No. Since it is conveniently platforms you care about, I thought I'd
leave it to you. ;)

Well, it seems that if I use the upstream built dtc and fdtoverlay it
works fine. Using the one in scripts/dtc/ doesn't. Looks like that
issue is on me...

> Are these the only ones failing?

Yes. And all of arm32 was fine.

Rob

