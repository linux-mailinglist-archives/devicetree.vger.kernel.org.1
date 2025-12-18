Return-Path: <devicetree+bounces-247664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3F0CC9FC3
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 02:35:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 208333019BBF
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 01:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CC8224E016;
	Thu, 18 Dec 2025 01:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="m+3tcswS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1D71BC3F
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 01:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766021716; cv=none; b=NimMIBXSGRV8GqRWWSeD5/Wt9II3kQPjom473yWxcnL3KslWj9IA9sZhZWy4EUUhgyBCjZ0oytHYb8TTLtHV18y7U7RHD0AWolWh7UFIayCJnrtmNTZvGOjoSQq/aDwmmw6tnUqwsD3V9toJEHz3Ci092Q8kUivgrE21RS3OTWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766021716; c=relaxed/simple;
	bh=4OIfYeRjyIluIN6mXlTgKbEzj1gZ3VU1A0xxCANr4Bg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CglxOylTOPw0ex/+UKL6+Zej7maPkZ58+pihw50ZpAkBjTYOELObIFQwWGv4CJb9NUK+zfRKs7/YQJB5VK+gpGoSVDHD3qoWxZ3QXHyAdtWrfz522wDnoc9NLKhEnZOFnn/d1bEs/3yuCWzSXqNXnKUqakfnEjMqLhdktC4pjUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=m+3tcswS; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-34b75fba315so124539a91.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 17:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766021714; x=1766626514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+3lPJkHRSCmKfOfDwhUgx/Hppf9Vk27dkhOuGa4j0X8=;
        b=m+3tcswSXE7mPLhypN6oDMTWOsQHb5FL+5ywg+UOzUiOpUr1Hs0c50swf3yDHmspE4
         u949zUW1tVQn1kMw1J5WTN9H+C/3/oTjpFQwdPcJ1IsC53tq5e1CdQXltdof7eG253X/
         kTYjk8gl/o/fr08qSIIYd7HVUcl9BHf0OJsrjLhNwbWdURpTmQX14vr8Ko4vlHQC/BtK
         Wh24tfdugnPeEG8pLS/VB+ldYUXbk/qi7t9xXIfWUz6iqS+m/7d/ZOp6YAOAPw5Cfyxj
         5Gfz49ShYk6FOav5dQHwCxg1UekrR4kwFhE7rVjfF//O0/28XXG+W+W5rLKh/Pzs6kTP
         1U8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766021714; x=1766626514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+3lPJkHRSCmKfOfDwhUgx/Hppf9Vk27dkhOuGa4j0X8=;
        b=mVGTZ0j4sLhYDLhfaUA6GiZPkLyBk4yAkhV+qDx6GoX66zbK43a1TSoo1OD6UN+VlW
         PpxLOUjac5PpP6AOD6L7rnTTQUSOFXVwSy+z7S4zkAFQWdSte1NPQ/RWoOtilsgP5BMB
         L3z+luHqoGRVSt3ANhuOuCWxVHkF2ph1MnD1kkwk4YmrBrxxl5w9xK1gPnYrskm7cu+m
         vw7apLLu3EjusGZox9SS9rdeOwvsh7nQhXn/BRstDmaRB3FKCYMNCEoWN4Pwgr0Jf4sj
         2nwegl4DLP+CSlbmLfgq0FEB14ofhJUv+N4f7sQ3oR/8WaEM/XElFSo4mfjYF8uBb7Uq
         xrcA==
X-Forwarded-Encrypted: i=1; AJvYcCV7hRAsI1/7kX2+ngK+lB4/O8s/lquScnagICtZj81g7lzG4urqs83L93sljtD9/r/AYx3fv4b1GUPR@vger.kernel.org
X-Gm-Message-State: AOJu0YwNVGZ6XTh7mNFQBoxCR2mrxyL5cxIM9iCDTUePZisaCKZw4UIa
	8XX/gh1DIX1S0rBmk6QzhdqQwER+Bc+olJJthE4JprMhW8GTn39CRAUy8BaOT3k6h9VSCzGDkb4
	5T4o3g4aRveerrb3n6P0Y9XDgQ6ajNmoYN8ADXHpT
X-Gm-Gg: AY/fxX6BC/qsQT5GGYgWbtKNG7cMHre9KY1hPxCxNa6McoxmduVQ3cKOMMiCtH/I2YL
	1MpZrk7+GriILIGY9WPXMJJpPQgHP/XVho33ySOa1t7KpfsK9xzKdH4ZbbUJAlWKmISYlw55VDl
	O2N7MQ57HCWMll962vOjSJulYjCFdIDQIJGZEQQPXkrD2bo1gxXv04lU2Sm037Qjx1nmlqFpJKq
	YwnGkK+JrikSJ/BhK4grcI6yVALV/+9OvU4+LqJ74d1QEtRh4tANnEq6wvycnBtp7CjZ4n2KK25
	KGVXnnTVipmQlNSHpFG49cVhig==
X-Google-Smtp-Source: AGHT+IGvcyO+atFMG40EK+LXFzuEE58sYgxepefDuuFDeJNb4XXiKi+RzM8fyWk9RSGm3Ityaatl5SIXnMbRo8k0DJM=
X-Received: by 2002:a05:7022:f686:b0:119:e569:fba9 with SMTP id
 a92af1059eb24-11f354cc907mr17457322c88.24.1766021713688; Wed, 17 Dec 2025
 17:35:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205-controller-v9-0-9f158b18f979@google.com>
 <20251205-controller-v9-2-9f158b18f979@google.com> <2025120553-suffrage-divisive-5890@gregkh>
 <CA+zupgzL7v5MZDpxKDQQCqAZaqTdHbiG9-xTr+8RnigMFZJ_7Q@mail.gmail.com>
 <2025121728-reliably-crabgrass-2601@gregkh> <CA+zupgxZCyNonfNPbGnFymGGOQuaWR1TsL+hujTbH4DEcfEt9Q@mail.gmail.com>
 <CAD=FV=U63F-wxwKDo9be6_X2P2zp6aTBjNghZRbXX1rn4jFNyg@mail.gmail.com>
In-Reply-To: <CAD=FV=U63F-wxwKDo9be6_X2P2zp6aTBjNghZRbXX1rn4jFNyg@mail.gmail.com>
From: Roy Luo <royluo@google.com>
Date: Wed, 17 Dec 2025 17:34:37 -0800
X-Gm-Features: AQt7F2rkORh0Ym1VQOfQeQf2IHUEB9pEt5kMbxWWeEa9-paUYGoUbCv0CV7TpLY
Message-ID: <CA+zupgyG4Nov0=jihSApp_3_0hy6YNZMkfOp6Q4-zmERFm10Ag@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Doug Anderson <dianders@google.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 12:14=E2=80=AFPM Doug Anderson <dianders@google.com=
> wrote:
>
> Hi,
>
> On Wed, Dec 17, 2025 at 11:18=E2=80=AFAM Roy Luo <royluo@google.com> wrot=
e:
> >
> > On Wed, Dec 17, 2025 at 5:24=E2=80=AFAM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > >
> > > On Thu, Dec 04, 2025 at 11:14:39PM -0800, Roy Luo wrote:
> > > > On Thu, Dec 4, 2025 at 10:05=E2=80=AFPM Greg Kroah-Hartman
> > > > <gregkh@linuxfoundation.org> wrote:
> > > > >
> > > > > On Fri, Dec 05, 2025 at 02:26:38AM +0000, Roy Luo wrote:
> > > > > > +config USB_DWC3_GOOGLE
> > > > > > +     tristate "Google Platform"
> > > > > > +     depends on ARCH_GOOGLE || COMPILE_TEST
> > > > >
> > > > > There is no ARCH_GOOGLE in the tree now, so how is this supposed =
to
> > > > > work?  Shouldn't tools that check for "invalid config options" tr=
igger
> > > > > on this?
> > > > >
> > > > > thanks,
> > > > >
> > > > > greg k-h
> > > >
> > > > Hi Greg,
> > > >
> > > > The menuconfig looks like the following and it doesn't complain:
> > > > | Symbol: ARCH_GOOGLE [=3DARCH_GOOGLE]
> > > > | Type  : unknown
> > > > |
> > > > | Symbol: PHY_GOOGLE_USB [=3Dy]
> > > > | Type  : tristate
> > > > | Defined at drivers/phy/Kconfig:104
> > > > |     Prompt: Google Tensor SoC USB PHY driver
> > > > |     Depends on: ARCH_GOOGLE || COMPILE_TEST [=3Dy]
> > > >
> > > > According to Kconfig documentation [1], the unknown symbol
> > > > would simply be evaluated as an "n", which is what we want.
> > > > "Convert the symbol into an expression. Boolean and tristate
> > > > symbols are simply converted into the respective expression
> > > > values. All other symbol types result in =E2=80=98n=E2=80=99."
> > > >
> > > > In a different Kconfig documentation, an environment variable
> > > > "KCONFIG_WARN_UNKNOWN_SYMBOLS" is there to detect
> > > > undefined symbols in the "config input", but I can't find one that
> > > > catches undefined symbols in the Kconfig tree itself.
> > > >
> > > > That is, the tool seems to allow this.
> > > > However, if this turns out to be a major problem. I think we
> > > > can either:
> > > > - Remove ARCH_GOOGLE and leave COMPILE_TEST as
> > > >   the only dependency. Then add ARCH_GOOGLE back
> > > >   later once it's in the tree.
> > >
> > > Please do this.  I do not want to take patches that purposfully add
> > > dependencies on config options that might, or might not, appear in th=
e
> > > future.  Please just remove all of the dependancies for now, as they =
are
> > > not needed, right?
> > >
> > > thanks,
> > >
> > > greg k-h
> >
> > Greg,
> >
> > Yes, we can remove ARCH_GOOGLE for now.
> > To clarify, we're not removing all of the dependencies, we still want
> > to keep COMPILE_TEST for build tests, right?
> > Please let me know if you think otherwise.
>
> I think you'd just remove all of them. Normally COMPILE_TEST just
> allows folks to compile stuff even when they don't want the ARCH. We
> can can add ARCH_GOOGLE back in later once the config exists.
>
> -Doug

Doug,

Thanks for chiming in. I'm hesitant to remove COMPILE_TEST
because Greg specifically requested its inclusion in v7 [1].
Also it seems beneficial to get some build coverage before
ARCH_GOOGLE is officially added to the tree.
Greg, could you clarify?

[1] https://lore.kernel.org/linux-usb/2025112144-claw-recolor-49c3@gregkh/

Thanks,
Roy

