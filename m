Return-Path: <devicetree+bounces-247978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A0263CCD51B
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 20:04:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 526BC300FF97
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 19:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F7D30FC31;
	Thu, 18 Dec 2025 19:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="e3NMCRnA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D045329C73
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 19:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766084589; cv=none; b=iO2O1Owunu0WcWHbJeMq6Sb2Oo5CkUma4srublaq2xd0KykCebvA3nxSI+0TzXFC+u9j5V8h6qkPDmuYasASr4N3cNMi98h4nSkwnmLnspFJJyS3RCs6tkbcsTa8acaGOK8sUjmpsE+Kt4zmi3EFsdEdqT3Juz3zbMCtrZnHTm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766084589; c=relaxed/simple;
	bh=ZIqvP7iL1pnOGTT3mHNvxEK6HapIGS532C02nV8uGts=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bPSRlnHMGfFUmWEhkKG11ykV7acgBSefKDBWWmY5j0SaNrCf6uMRdXsTlJWjRtKDYvUjtzLffEKeiKTDqXe8MecxQJm6qvfLNl7c7aBCfmbS+GHfnZ4sH2hCTjoKOQVqia86XntLg1ECZRxXLCU+Xre9o2iGfjddYDtQs6O0UGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=e3NMCRnA; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-29f1bc40b35so17917635ad.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 11:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1766084585; x=1766689385; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UZURydBRs6THPGEYtxtuXyqkrMfiNHxW6djvEvJyle0=;
        b=e3NMCRnAvfYuH093iQMCYioAIC78Xp3yhoqjVsoU48QsKoezqh/U3FjaUHADJvE5Nv
         MWhLoG6Ee+uSsHcjOmeOtJIFf/yI8UBH/WQTd1BJr0NESXbXhpIs5kBD/dEE7rUJYUTs
         DGelPFm5izTwcsft78qKb4MaagKby1SPgdwqy0sGX2RRsS9X664UjorIHUo+pIxCdLce
         br5YfjVR4bHrshVAuUjJVBOYRhUUtLDNX/B2aUUbRTiR8MunYrBfIgwmLxjWr1Sio3wy
         JlFFJsP2+/9vPfkCilQnhBkzBXDXmcFfDu7ByEJZGgiKb78rHa2LKKq49u1Q16umbaap
         S2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766084585; x=1766689385;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UZURydBRs6THPGEYtxtuXyqkrMfiNHxW6djvEvJyle0=;
        b=CD5fF1CmC7LbMluVso8nRFZVdRumNyKHH57MqR+L+0HDy6WIdU6V93OXZBB/UOQ9ha
         trB3A/8XU7ofpx2OFoEql4ETVYOoQaUjT+ahI0sD+clLOw20rA9m2CbMFv5QNxAyX5Is
         Wdo5e7WTaJILEsgg7vyCCJTuR/e1gtYzc8b2V092zrHiur6V6FnpEAYVxaq65VUGdrGG
         qAYDu2XDSWUWQSkjP+2/StjX2gaCplroc+WsxXdhAaBQjULMzYnuzPWl9ewX/yNZZpT8
         dxYp/+Ag+0Gnks+jut70cOuiNeok6ZcZ9WFUINFXnts5qow0MQCFb9nPXp11PyhaTRYf
         +Wzg==
X-Forwarded-Encrypted: i=1; AJvYcCX2/lkzTu+mIGOc4XUiSu7cOlF/9Vr85TNzccLQ5zX0QDHvSTDMfvDoFhlN9lAsbhuAfd+fORSs8Nxm@vger.kernel.org
X-Gm-Message-State: AOJu0YwrxR4D6hbV/VkbkJzWsBvpCtR5nz3MBKDYh1PX8kous8ZbHS+j
	lFU3WrzY4wp0tBAcgyHf3NMkrPol6iwhNipncgoH7ryLeafPoG4klYYX2zXAy4EIibCuzQIBRfY
	SxFMKzPkADBLjLhgFNWgQ1eoPIM4DyLqwd+4FIyhy
X-Gm-Gg: AY/fxX4PDt+1+Fsw7O9j8a9bLKIjeY6sQu7BjI/Ds3ULjQFyoj+QJpruC2BA3hFPiGP
	cChin3GPRX/Yp4bfrm3ES7HIm9fBMoxixeZ3wpare8QerUwfAfScDABhfhYGmqt3GxaiYxILe5i
	l7TYM5nlG0/7mntpIiQo2J5n/ViI5L+GdUQgAHvCqYC3tE0tWqtqXiaf0rU4JiLtSD6WNi0g6It
	30J65NIj58GMAwEI93h+JDbkMMnB1RK8YmthJW4FI9A478Rnf08D/3s34nPIt9JAXHKyv4PZGmT
	4c5q6clw9ZbifeKa6VVLlLF8Wv4TyCUdYZiM
X-Google-Smtp-Source: AGHT+IHjlHQlXH87LizBV98xCNNrE/r6NnWxVA8MyqbsxcZpdW5xdnwO9aFCs2usLY1INPEf7TlgBEyb3iR7vLbl1rw=
X-Received: by 2002:a05:7022:2586:b0:11b:8278:9f3a with SMTP id
 a92af1059eb24-121722a760fmr302395c88.8.1766084584998; Thu, 18 Dec 2025
 11:03:04 -0800 (PST)
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
 <CA+zupgyG4Nov0=jihSApp_3_0hy6YNZMkfOp6Q4-zmERFm10Ag@mail.gmail.com> <067e0b1f-ffb6-4f38-b4ac-8abdf46518ea@kernel.org>
In-Reply-To: <067e0b1f-ffb6-4f38-b4ac-8abdf46518ea@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Thu, 18 Dec 2025 11:02:28 -0800
X-Gm-Features: AQt7F2rN06AK2QuvXUYDJOc3cWSY2JUStjC0ZUUhHBMZr4GDA95FFHyZwdmt4so
Message-ID: <CA+zupgwgfKwPYqj8G2tNf4pEXNEWA+vL2WYJPhJ16xExgko7Dw@mail.gmail.com>
Subject: Re: [PATCH v9 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Doug Anderson <dianders@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 11:06=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 18/12/2025 02:34, Roy Luo wrote:
> > On Wed, Dec 17, 2025 at 12:14=E2=80=AFPM Doug Anderson <dianders@google=
.com> wrote:
> >>
> >> Hi,
> >>
> >> On Wed, Dec 17, 2025 at 11:18=E2=80=AFAM Roy Luo <royluo@google.com> w=
rote:
> >>>
> >>> On Wed, Dec 17, 2025 at 5:24=E2=80=AFAM Greg Kroah-Hartman
> >>> <gregkh@linuxfoundation.org> wrote:
> >>>>
> >>>> On Thu, Dec 04, 2025 at 11:14:39PM -0800, Roy Luo wrote:
> >>>>> On Thu, Dec 4, 2025 at 10:05=E2=80=AFPM Greg Kroah-Hartman
> >>>>> <gregkh@linuxfoundation.org> wrote:
> >>>>>>
> >>>>>> On Fri, Dec 05, 2025 at 02:26:38AM +0000, Roy Luo wrote:
> >>>>>>> +config USB_DWC3_GOOGLE
> >>>>>>> +     tristate "Google Platform"
> >>>>>>> +     depends on ARCH_GOOGLE || COMPILE_TEST
> >>>>>>
> >>>>>> There is no ARCH_GOOGLE in the tree now, so how is this supposed t=
o
> >>>>>> work?  Shouldn't tools that check for "invalid config options" tri=
gger
> >>>>>> on this?
> >>>>>>
> >>>>>> thanks,
> >>>>>>
> >>>>>> greg k-h
> >>>>>
> >>>>> Hi Greg,
> >>>>>
> >>>>> The menuconfig looks like the following and it doesn't complain:
> >>>>> | Symbol: ARCH_GOOGLE [=3DARCH_GOOGLE]
> >>>>> | Type  : unknown
> >>>>> |
> >>>>> | Symbol: PHY_GOOGLE_USB [=3Dy]
> >>>>> | Type  : tristate
> >>>>> | Defined at drivers/phy/Kconfig:104
> >>>>> |     Prompt: Google Tensor SoC USB PHY driver
> >>>>> |     Depends on: ARCH_GOOGLE || COMPILE_TEST [=3Dy]
> >>>>>
> >>>>> According to Kconfig documentation [1], the unknown symbol
> >>>>> would simply be evaluated as an "n", which is what we want.
> >>>>> "Convert the symbol into an expression. Boolean and tristate
> >>>>> symbols are simply converted into the respective expression
> >>>>> values. All other symbol types result in =E2=80=98n=E2=80=99."
> >>>>>
> >>>>> In a different Kconfig documentation, an environment variable
> >>>>> "KCONFIG_WARN_UNKNOWN_SYMBOLS" is there to detect
> >>>>> undefined symbols in the "config input", but I can't find one that
> >>>>> catches undefined symbols in the Kconfig tree itself.
> >>>>>
> >>>>> That is, the tool seems to allow this.
> >>>>> However, if this turns out to be a major problem. I think we
> >>>>> can either:
> >>>>> - Remove ARCH_GOOGLE and leave COMPILE_TEST as
> >>>>>   the only dependency. Then add ARCH_GOOGLE back
> >>>>>   later once it's in the tree.
> >>>>
> >>>> Please do this.  I do not want to take patches that purposfully add
> >>>> dependencies on config options that might, or might not, appear in t=
he
> >>>> future.  Please just remove all of the dependancies for now, as they=
 are
> >>>> not needed, right?
> >>>>
> >>>> thanks,
> >>>>
> >>>> greg k-h
> >>>
> >>> Greg,
> >>>
> >>> Yes, we can remove ARCH_GOOGLE for now.
> >>> To clarify, we're not removing all of the dependencies, we still want
> >>> to keep COMPILE_TEST for build tests, right?
> >>> Please let me know if you think otherwise.
> >>
> >> I think you'd just remove all of them. Normally COMPILE_TEST just
> >> allows folks to compile stuff even when they don't want the ARCH. We
> >> can can add ARCH_GOOGLE back in later once the config exists.
> >>
> >> -Doug
> >
> > Doug,
> >
> > Thanks for chiming in. I'm hesitant to remove COMPILE_TEST
> > because Greg specifically requested its inclusion in v7 [1].
>
>
> What? No, that's not what Greg requested. Your COMPILE_TEST in current
> form helps nothing in build testing. It makes absolutely no sense at all.
>
> > Also it seems beneficial to get some build coverage before
> > ARCH_GOOGLE is officially added to the tree.
>
> And COMPILE_TEST like you wrote it does not give you that. Please first
> read how this function works.
>
> > Greg, could you clarify?
>
> Can you first look at Linux kernel sources to see how this is properly
> written?
>
> >
> > [1] https://lore.kernel.org/linux-usb/2025112144-claw-recolor-49c3@greg=
kh/
> >
> > Thanks,
> > Roy
>
>
> Best regards,
> Krzysztof

Greg and Krzysztof,

Thanks for the clarification.

Regards,
Roy

