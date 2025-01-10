Return-Path: <devicetree+bounces-137493-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F3C0A0931B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 15:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 849F716A8E1
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 14:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBF3A21019B;
	Fri, 10 Jan 2025 14:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qph8c4NQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB020FABB
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 14:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736518460; cv=none; b=JP8WMqg/+y60p59iF/6C7Mtk9FsvGodJfl8le/1Z/WX9yT8W+FG65NM2kww8UL9sBmSq+b/dY3mD+Yqf/eDgY9lzjtOSFvDtnskhTIgAI6Drlvoyj3U3ROTyj3fq7oSWPAnWm2ve0Ply9cYdxCSGZrQBSg4IjDUOB32PYSR5wrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736518460; c=relaxed/simple;
	bh=8I3v7VZnwG3yJtmmte/m5ikbbyJCFVAui04XhklcZMc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WUAu9ekc9bKRXxWmuOPh0A/4dQwlIFF2IFFuV/Lm/kT2gUoICvB33oADqlxBxV5JogkpGaEhawv4daC5X/ENrPPjkKxl+2Y1h/kedZrlIIkxSzvxN/YVqeiEPXHFZFS8z90kqMILjWU4OFsABxqIHNC8VX/+Jv3lDQU/rSN4gys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qph8c4NQ; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53e3778bffdso2222859e87.0
        for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 06:14:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1736518454; x=1737123254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8I3v7VZnwG3yJtmmte/m5ikbbyJCFVAui04XhklcZMc=;
        b=qph8c4NQt5OeUCph4uxtvRBEEe4pFoNwju2yoDgV2Xee0MaVZeH7WPGOyNwK6ZVDHc
         RXRPKBaAE+oouTzBiC7xFQkluCBZhoSvucnGCaSGgjQo468YCXoOpPHE4fBIUp2kTRYp
         CXPGlHwJhOAA72gEezQju7O9W1uFA/jRcxzUZR+ANrRNsnYvhBM99FUtjdgt6WhDRFMz
         4QZeVnkRqfgngw5740CkMi314rEk95AluZwgxsYQtlE4dUcQSRC2m1fxTLXfqoTCxL88
         sOTQ0a9NfiCwQjpmQ+S5Z1NCChWMomFtd1yeA7EEhI/Eq/msiMN7MK3EIH/nPX7A48/j
         BYvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736518454; x=1737123254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8I3v7VZnwG3yJtmmte/m5ikbbyJCFVAui04XhklcZMc=;
        b=eLbgfEIihwPk0RCtjesME0c3GET537eQkZQIWQhDEWrquNtNB0rgED+4wtfr9pE+BR
         r6N3uIjKGUjN/0MoQipMLcm6OjkgdALioU66RyK3A0jWTt4yCHoj2uYx0ljjYXr1Q+0W
         Y/fR5bQMWupXRGDlqBXdG89TH/M8j57VYxyH3hVtY/5iDi3WHoTRphNTCzFMRXUkYLlN
         gLzgDhtkGToBJ/j1utpI9x+JPUUbVtF8AaWWWUkYg6TyRDFeAEuOiEyVonXn99KY6Gw9
         diHuzFLZZYwz2zbNvxAX+v8TdVVDeaQP6rvRBeG9PjLDVY5aUHmssdWFJsckF4BAp2e2
         uCWw==
X-Forwarded-Encrypted: i=1; AJvYcCXln+H8eSu+LJ4iaX7M92KSVGnZ4lwL99119tkIR1ucDmY2gYnuiOaFBUFGxJLw2BM9QWWZPDBEwVnH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrdn2qwnowiI4+1oVwaw5DqUPDALDQqxFeRQM8dQMbrbZnAJQt
	ZallY+eoGIQ1ROplTU/6T0cf5lYpwztJkpWCxqlmPeX+Q3L7IY1PfmRVhiC4+wqEGP3644oEsfc
	dxr8hRUx9IMkDm2UUCjULtGHRsuu5IZlhq023QQ==
X-Gm-Gg: ASbGncvMdL7xf6btoyvctLflX3CkL5JcC9kzaj8RsuBWM0XmJCLWGGardDd6f55K080
	41x9Y91K2FMG5ALBOqa4kyMNUqjJtcena3VsD1lo78teUq+xRGaHFMwMbFKfZ8AVa8soZ
X-Google-Smtp-Source: AGHT+IF8d6s3rBxAFTGyuIns2Nn52yhlp9rng67dFXsb3y4itQ58MfWXZn3JMkdbszQnpF798VB4w9QdWTVvaXLyU80=
X-Received: by 2002:a05:6512:3082:b0:540:2122:fad7 with SMTP id
 2adb3069b0e04-542844f6933mr3281624e87.6.1736518454247; Fri, 10 Jan 2025
 06:14:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110130025.55004-1-brgl@bgdev.pl> <de6b70f2-8fd6-4e2a-a6c1-466698be8a6b@prolan.hu>
 <CAMRc=MckJfEBK_ZUZ31hh7SMdbr4a-vZLtTGDCFttGK65wbXdA@mail.gmail.com> <CAMuHMdWhEZ0No8mXdymE8O8+rMCkD2SXAifZwReb1BbfYASOeQ@mail.gmail.com>
In-Reply-To: <CAMuHMdWhEZ0No8mXdymE8O8+rMCkD2SXAifZwReb1BbfYASOeQ@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 10 Jan 2025 15:14:03 +0100
X-Gm-Features: AbW1kvZiIcaLZ1SjcnNuC6Spd3ghTXmzaPyefVUbdK3Rljxg68KY4qnj6f-FAQI
Message-ID: <CAMRc=Me+syDKW6sycGZ86rBJysaccsm3QUYd1+5cnfzRCo6P7A@mail.gmail.com>
Subject: Re: [PATCH 0/2] gpio: 74x164: use a compatible fallback and don't
 extend the driver
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: =?UTF-8?B?Q3PDs2vDoXMgQmVuY2U=?= <csokas.bence@prolan.hu>, 
	Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 3:10=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Bartosz,
>
> On Fri, Jan 10, 2025 at 2:38=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.p=
l> wrote:
> > On Fri, Jan 10, 2025 at 2:32=E2=80=AFPM Cs=C3=B3k=C3=A1s Bence <csokas.=
bence@prolan.hu> wrote:
> > > On 2025. 01. 10. 14:00, Bartosz Golaszewski wrote:
> > > > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> > > >
> > > > There were other suggested solutions (for instance: just use the
> > > > existing compatible for the On Semi variant) but I figured the most
> > > > common approach is to use a fallback value for 100% compatible mode=
ls
> > > > and this is what Rob suggested as well.
> > > >
> > > > This reverts the driver change and makes the "onnn,74hc595a" compat=
ible
> > > > use "fairchild,74hc595" as fallback.
> > >
> > > Is there any reason to introduce a new compatible name at all? Does s=
ome
> > > pre-existing, widely-used DT blob use it in the wild already? If not,
> > > then I don't think it's necessary; for any new boards, their DT's
> > > authors should just use the pre-existing names.
> >
> > I don't have a strong opinion on this and will defer to DT maintainers
> > but a similar case I'm familiar with is the at24 EEPROM driver where
> > we've got lots of 1:1 compatible chips and we tend to add new
> > compatibles to DT bindings (with fallbacks to associated atmel models)
> > just for the sake of correct HW description in DTS.
>
> At24 EEPROMs differ from '595 shift registers in that they provide an
> API with multiple commands, and some commands or parameter bits may
> differ among different implementations (but usually these differences
> are called quirks).
>
> All '595 (I'm deliberately writing it like that) shift registers
> should be 100% compatible, modulo some electrical specifications
> (voltage levels, maximum speed, power consumption, ...).
>
> Interestingly, the driver is called gpio-74x164.c, while no '164
> compatible value is present. Most important difference is that the
> '164 lacks the output latch, which is used as chip-select with SPI[1].
>
> > > I'm especially against introducing a new, vendor-specific (On Semi, i=
n
> > > this case) name; if we really want to introduce a new compatible, at
> > > least make it as generic as possible, i.e. `generic,74x595`, or even
> > > `generic,spi-shift-register-output`.
> >
> > If anything, that would have to be the fallback that the driver knows.
> > The first string in the compatible property has to have an actual
> > vendor (I think, I'll let DT maintainers correct me).
>
> For the inverse operation (parallel in, serial out), there's just
> "pisosr-gpio".
>

Ok, I admit I don't know the correct next step. I'll wait for
Krzysztof, Rob or Conor to chime in (on the subject of representing
reality - the actual manufacturer - in DTS) and then possibly just
remove patches 1-2 from my tree.

Bartosz

