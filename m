Return-Path: <devicetree+bounces-243629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AECC9AC59
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 10:02:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 74AC73A2D35
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 09:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DAA8307AC3;
	Tue,  2 Dec 2025 09:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Qh4/SewR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F513064A6
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 09:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764666122; cv=none; b=afk8eq9l+rTf7Xr/Tsu0xYbAqLvtCqyn1tAxRpwoWF/YHq64hYA3wz70S7oyl4/nbUKHI4CFJKoFHGZ79L5DmmIM7/Zae/SEd5AIboErZ9BbDo7O3DpDUZyzv7a/2eOPbXPWi+4ptBI8WGr5C06tlkNniYczkuLYXAC+AmCiSbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764666122; c=relaxed/simple;
	bh=i1w1KgmggzJXL98eGvitaCcA9E6kmwV4ViMaGE9iZ0E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hcvXxNpOuQwbZqEImbPGATg8iM0hOF7TGm4IG3NGeVxv/A91C8bdcd5rIUMCiQEWSMxDbIBQTjTkL8HQVQUTQR5NPfIxVxOWyhrIcu8cBOWKAqQ7E8VapnxvlZ6oh8pkquLQzO3ExAvPif0bueNqCw4GTRtxFalMLKQLqShb98E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Qh4/SewR; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7bc248dc16aso4172623b3a.0
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 01:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764666119; x=1765270919; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3XHkkGY2cNGbvvZiNneWk2OoD80gfsi3EfjvphamSbE=;
        b=Qh4/SewRydkj8nvWpCR7cwOLwVs2Tm9coswXkBwsf+L+AFENzK2zJ+VMh/7QGYm6jp
         TVx1lB4tGz5PRygjNma1tzZeI5wLUPKlQ31Y0FU8Coq06OI+X7XueUK8lV0ybR15rvqT
         jgB//mYeWAzZOOYUHkEwe3XDStKIVt0u0C5pDNA8S2xxhmtrRtPYVVO445gt0C8FFcxL
         EPywAnko1C5jQS1+IF6qyYasBKds5nSRQE53VdVemChpErFJq2Tg2d5DyiEFlBChJfOS
         yrB/qEbxWhw5Cv1HqpTUsvCZHGvKguOVT90Lr8TETxNief89lhK9VtX6NtK+MvWvxEgz
         FSkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764666119; x=1765270919;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3XHkkGY2cNGbvvZiNneWk2OoD80gfsi3EfjvphamSbE=;
        b=eI3LMx5HeJMYEA08j+ab8vf5Q+GwqPdgebZr4vj1AhxbmC6Di7LuLIOfkgC75pCqWB
         hKWDdCKtMA2zs9hwI/f4z/QMxntU4mxIAMvmAdyLxodKiO9Vn04c+Hz7CVCL7fdN9+Zx
         Jr6fStuug78eFb2sH8qMqUikxWllHI+pZi/pIKl9y85yh8JztLhjKAqxTkRv8a6MAlWj
         mNJmwbBFLkZxRa6ZJwPmT5O5HOoJXD/D08sdtBMlBE2LpXXO6oy1MAOqZnSRh+ZeYdcl
         AVvAh/or75RCFj6rdNUD7ma19fb365JDLP/N9gkxRIfiWN73MX7hGujGUIYffY3qOAGM
         tnXQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+jN/eoumhg+6rjmrQ5x/uEORp2UCk5tGvAs3si3cN7OtjdI+Y1Zztvly2ZXHPq9C6Xa5VHNH6ElB4@vger.kernel.org
X-Gm-Message-State: AOJu0YyZMyWlIyh3INl9FUMj2VGRYVc3Nu2kpXPgnNvhE07vfQJQ1Rqa
	tgazbeB0SYzi/3ImRgCXYl/7r2MsvJze7T+wKJM0o0DSXkQL1EFNK/h+8FUCuU6xjkqPk2Yz/bT
	mKLZameLiQ9IpQodqCJmBMeZk0JJgbvi52feCbLe1
X-Gm-Gg: ASbGncv4zBhMjWQ4JDXKZLxb4/sviuLARPTNcDVMUI++SQDVp+Py4lM6wOIWBsoFv17
	cca74i7okCIafxbhPFAwv1wTneRKtB/K1TNG512nHrE1p+aYkFV0bfFUzE5UFKQAw2RlgBw/Cvc
	MbqkL1q2/o6htaC+Ogm0VOROmmauuso4pXwgTxlTbcJ+6mmIpCWhsVsXqZe8hK4hnF13/NaPK/I
	S8oGicNf8wG3OCCgFQilNO1DrpC76GFVTkplJPp7NU2FDZEcnE0AvSqOLeiXNZ8Qu9HxFw=
X-Google-Smtp-Source: AGHT+IGiBzRHl7TPtYwtQi06ZiaJhnVzUcHhh5xBVlcMIML+l0+f6MQo/KbqNIpZ30wUru3qydCRc5k9yej1kRpZNRQ=
X-Received: by 2002:a05:7022:1111:b0:11b:9386:826c with SMTP id
 a92af1059eb24-11cbba5508fmr13693558c88.41.1764666110328; Tue, 02 Dec 2025
 01:01:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251122-controller-v8-0-e7562e0df658@google.com>
 <20251122-controller-v8-2-e7562e0df658@google.com> <2025112226-heave-refrain-53e6@gregkh>
In-Reply-To: <2025112226-heave-refrain-53e6@gregkh>
From: Roy Luo <royluo@google.com>
Date: Tue, 2 Dec 2025 03:01:13 -0600
X-Gm-Features: AWmQ_bnlSStXeZAFzAhajdXf-6yqBRh8xzoWnHdfQbF_eyEVNWCr_wtC1nkDZig
Message-ID: <CA+zupgwzQ5r=-_L79D74=9VRqRO94N0yTApHChM+Nu0cn1ss3w@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 22, 2025 at 8:59=E2=80=AFPM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Nov 22, 2025 at 09:32:06AM +0000, Roy Luo wrote:
> > Add support for the DWC3 USB controller found on Google Tensor G5
> > (codename: laguna). The controller features dual-role functionality
> > and hibernation.
> >
> > The primary focus is implementing hibernation support in host mode,
> > enabling the controller to enter a low-power state (D3). This is
> > particularly relevant during system power state transition and
> > runtime power management for power efficiency.
> > Highlights:
> > - Align suspend callback with dwc3_suspend_common() for deciding
> >   between a full teardown and hibernation in host mode.
> > - Integration with `psw` (power switchable) and `top` power domains,
> >   managing their states and device links to support hibernation.
> > - A notifier callback dwc3_google_usb_psw_pd_notifier() for
> >   `psw` power domain events to manage controller state
> >   transitions to/from D3.
> > - Coordination of the `non_sticky` reset during power state
> >   transitions, asserting it on D3 entry and deasserting on D0 entry
> >   in hibernation scenario.
> > - Handling of high-speed and super-speed PME interrupts
> >   that are generated by remote wakeup during hibernation.
> >
> > Co-developed-by: Joy Chakraborty <joychakr@google.com>
> > Signed-off-by: Joy Chakraborty <joychakr@google.com>
> > Co-developed-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  drivers/usb/dwc3/Kconfig       |  13 +
> >  drivers/usb/dwc3/Makefile      |   1 +
> >  drivers/usb/dwc3/dwc3-google.c | 628 +++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 642 insertions(+)
> >
> > diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> > index 4925d15084f816d3ff92059b476ebcc799b56b51..f58c70dabf108878cbefe0a=
bea88572d9ae81e26 100644
> > --- a/drivers/usb/dwc3/Kconfig
> > +++ b/drivers/usb/dwc3/Kconfig
> > @@ -200,4 +200,17 @@ config USB_DWC3_GENERIC_PLAT
> >         the dwc3 child node in the device tree.
> >         Say 'Y' or 'M' here if your platform integrates DWC3 in a simil=
ar way.
> >
> > +config USB_DWC3_GOOGLE
> > +     tristate "Google Platform"
> > +     depends on COMPILE_TEST
> > +     depends on OF && COMMON_CLK && RESET_CONTROLLER
>
> Shouldn't this be:
>         depends on (OF && COMMON_CLK && RESET_CONTROLLER) || COMPILE_TEST
>
> I shouldn't have to enable those options to just get a build test here,
> the apis should be properly stubbed out if those options are not
> enabled, right?
>
> thanks,
>
> greg k-h

Hi Greg,

I agree with your interpretation of COMPILE_TEST but it doesn't
seem to align with upstream convention. I found the following pattern
in several device driver Kconfig files (including but not limited to usb,
pinctrl and phy).

    depends on COMPILE_TEST || ARCH_XXX
    depends on CONFIG_A && CONFIG_B...

For this patch, the APIs exposed by OF, COMMON_CLK
and RESET_CONTROLLER are properly stubbed out so
I'm all good to go with your suggestion, but I'd like to make
sure this approach is conventional.

I plan to add ARCH_GOOGLE as a dependency in the next
version per [1], so the "depends on" would probably look like
the following per your suggestion:

    depends on (OF && COMMON_CLK && RESET_CONTROLLER && ARCH_GOOGLE)
|| COMPILE_TEST

Please let me know your thoughts.
[1] https://lore.kernel.org/linux-phy/1a53d473-fc13-4ac5-ba52-4701d95e3073@=
kernel.org/

Thanks,
Roy Luo

