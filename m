Return-Path: <devicetree+bounces-217697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A31E7B58F64
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 09:42:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55D9D3B3A49
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 07:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F23422E9ED7;
	Tue, 16 Sep 2025 07:42:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HSVCqfFK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE8B2E6127
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 07:42:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758008535; cv=none; b=gCWOUC2KpFVMl2BWnyOhxA0ZUv+3J8+Bfz/jN6XpJ8F4mqBQGo03co2im8kvAx/1hkfbvbQ61eul0irh4w5rd0diwlCtt/3YTCbq+1uEONU23VzzLOc+Mj/Wh67CQxkxoIKEP2x/rmZ+w5lu5gHqJsXW2fxPWVQDfdqgDynn/5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758008535; c=relaxed/simple;
	bh=MajtWc/LSqmypF88GEgwsqo7vwQ0+GiL2Fw7fIStbIU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cHJC2V3R1/ycBKfN8v//39TBEGpwlxy+j0kctYcsOO2FOsqautHBMojaR4vX/168ojAF6ocXVXmuRLJeOQOSq0w4v7zb6WgEDWbSLcQF3fH5qLwaRAIs4yJGwNdBJ+2HWKIxfPF7osmZHKW33Igf2z2HE5f3vRPZw8+pkAA4eus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HSVCqfFK; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b046f6fb230so991727466b.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 00:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758008532; x=1758613332; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=seiaS3SE4RcxpYiplP1sTiZbmiKfUGBNakfZvP8oRTE=;
        b=HSVCqfFKUkYMNKW4S2JCKiOdRDkw5BhX6CAs1TvWI9o/8TZky1ungVKWsSiR9YXuV0
         6us8oMG43j4ynyh3hxh3IYieJ+zR+LlVV+VKb3YhWYgWC6lr89r/13/U4axt4LXFA0sU
         zF7FKZj2eLetHkIlGqN8sxWqLd8EcwdDCtYnbjeJdrAYBRmp+N0phmuvwCtf2u5k2THS
         03h6AkUxgdSHXzket1rxAn3+mHl+uqOkPltv7Ts2TszVWT9USICGq55U6p2r9eNQkAfs
         wSezk9eFhWuaoprubK55UrCMwAnnE3ADritSZRa7+4vDpbZJmfpetLav3XYr9cJYGpip
         2iiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758008532; x=1758613332;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=seiaS3SE4RcxpYiplP1sTiZbmiKfUGBNakfZvP8oRTE=;
        b=QtvwmNAE66WyJJCVGxmPUsIGDIvfn3hgQE+2w4yLi51UGfjeObk0qKppR5traIwKlk
         yANpBLKIZXKNbsz/lRMRjxD1InUPC6WJylb7c+45egmd60lTdizziCnJIV4UOdmkhxIY
         a1KGA1iH20/3l4Q991Fe6Lu48n3is2SMoUEebRVB1nK1qw4c0tRXh+TAn/JjyVQaI8aX
         pWqRm1lBslNP6jrtwEBNMb+lF7foo3H+/UmTrl7iWCXzPYmdaJ/f2WNOA6lJDXNIluPt
         Zl4kRlUO/D/SboZGXi0jjVbpKVBPbvIaUlEeaZP109aMQ/OFcq06Xq4hJuKrzSO0nxOU
         CmsA==
X-Forwarded-Encrypted: i=1; AJvYcCVm7ziOqs443CSVwtaX+YLoWfEnmmrjiXKNUvmDKtYY4dGeKrs0W6T3A2py5UrsX3YzXiPMh3q0mWhV@vger.kernel.org
X-Gm-Message-State: AOJu0YxoE12R5auzjhZgG7Ssa1S/1AOREkTPh2kEEJIvT+B15OZrugSC
	IhcDBzJya2+oyFaHlmScJ/v3PDydEa0j6FX2SaqqlXOlIl4vfdXGYKI3fYpvvZrYHsjEGwCNW6q
	twWrnywjVrMoCpB8oUWX7QtuSOMaqtjY=
X-Gm-Gg: ASbGncs5k+NZyHnwJyBIbZUzJBf7XoiTQkWHHpxRLfrIoPoMywJQKSQV5SN/pTMwrf7
	HN9xjfFDzza0S0SNoPFBLWQzj9nDqWfQjHvC/9HcK/DjP3j9NvdHWohaTF7QyKHSgwhhS4WgFM9
	XumUZJdWnl9pzDsj2op5FY0jBDo0zsDimU0eyTW8/BdQO7s+S5/+f0YQQZ+2EItE8uXq1mwfX5L
	CJL7i0=
X-Google-Smtp-Source: AGHT+IGZyHMyvgkDW6LuU35ofsRn0sZACfWWqhSLafHvGIMD3obwLIYTtrG+n/1NkzTnEp1u5/0DGgd/99ITtrLndkM=
X-Received: by 2002:a17:907:da8:b0:b07:dd5e:16be with SMTP id
 a640c23a62f3a-b167deddbdcmr160525866b.4.1758008532394; Tue, 16 Sep 2025
 00:42:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250915-bd79112-v5-0-a74e011a0560@gmail.com> <20250915-bd79112-v5-2-a74e011a0560@gmail.com>
 <aMge0jYwYCiY72Yb@smile.fi.intel.com> <20250915211321.47865d3d@jic23-huawei> <c1d21e3c-b0a3-40a5-b693-a38673f8bf53@gmail.com>
In-Reply-To: <c1d21e3c-b0a3-40a5-b693-a38673f8bf53@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 16 Sep 2025 10:41:36 +0300
X-Gm-Features: AS18NWDftmIhKHIIy4Z72h2BuNDuK9l8wDcCPAp-uHKsQZJ2aCO3R_pGAN3uBKc
Message-ID: <CAHp75VeoN3JCpLKS0LZMP4p2xTz_Vpi9Jfb_2bqxX7wHtQKb-A@mail.gmail.com>
Subject: Re: [PATCH v5 2/3] iio: adc: Support ROHM BD79112 ADC/GPIO
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 16, 2025 at 7:52=E2=80=AFAM Matti Vaittinen
<mazziesaccount@gmail.com> wrote:
> On 15/09/2025 23:13, Jonathan Cameron wrote:
> > On Mon, 15 Sep 2025 17:12:34 +0300
> > Andy Shevchenko <andriy.shevchenko@intel.com> wrote:
> >> On Mon, Sep 15, 2025 at 10:12:43AM +0300, Matti Vaittinen wrote:

...

> >>> +   data->vref_mv =3D ret / 1000;
> >>
> >> I still think moving to _mV is the right thing to do.
> >> There is no 'mv' in the physics for Volts.
> >
> > I'm not disagreeing with this review but I'm also not going to hold a
> > driver back for that given timing is pretty much such that I merge it
> > today or it sits a cycle and this one is very near...
> > I'll get fussier on this once we have written up some guidance and may
> > well send a patch to modify existing recent cases like this one!
>
> As I replied to Andy, I am disagreeing with this. I hope we won't start
> renaming variables with capital letters :(

Why not? In a new code would be nice to have the units properly spelled out=
.

It seems we have one of the strongest disagreements between us, but I
stand on my position from the angle of the scientific point of view.

--=20
With Best Regards,
Andy Shevchenko

