Return-Path: <devicetree+bounces-241371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A628C7D124
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 14:00:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF9E93A93C3
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 13:00:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1812272612;
	Sat, 22 Nov 2025 13:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="os9d4T2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03CB192B84
	for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 13:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763816419; cv=none; b=sXFkydHewtGLpuU4VeM0MplhyYUA9K45mAMdzLA2DhTnmRPUyEx0ndqzWf1m6ZcCG+xV3eIrtiPb7908PNnWEtMosBJ9o4LSwSCPzbzu/LzUFgtyQ/PIDhuxb02GdMRz2UpIl5g2BOvWFBjArJ65nwkNjKLoAkY4LZxpzyHA/yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763816419; c=relaxed/simple;
	bh=4SJqsNqEC1ikm16NffcXgYdxYhJQBd/iOeqcJJhYHLQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ldw0wBAh9AfuMWJ5YvOWF7BnFm2rgkNawB+M8+H15MNjr6kP+XyxE43aJGFGCSWiZpAdQ7t2wD/QL+vrrxv+oBt2sEB48EHQ9nvxCbd74JVKF8821ynTXm9PFA/MOltRFLQI0CQhNOYQ0PYczVpX4yQMAOJoWMh7AvSl99k6m6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=os9d4T2d; arc=none smtp.client-ip=209.85.219.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-8824ce98111so44334536d6.0
        for <devicetree@vger.kernel.org>; Sat, 22 Nov 2025 05:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763816416; x=1764421216; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D33saOqa18RCkbxGkW6RKN+23lAQ9LGSuB2LH3pnMFs=;
        b=os9d4T2d+So6Rpy/YaGnb1tA9gdaArBOX541V9BVvTY+Eps0B7VAyliAPxsw1r6mRW
         JW6/wJPp+ANKs0Y/6rBNIij8fvtZ9gmkZSpzflZUYpYd3NYlGWYAunAz/jNwiTHcHtZ8
         FfG3SoFh0cU+qpKTXw8FI+p7Ua51QwphDNeid/pN0Z+Aokyg5ufG3jTzoZKo+abE37DI
         u74LarExgH/Fkj4FY/pBJkumzJAmxrajxf3kLSmFOctBZw7z7K/GvxXL4dXzLMBeFtrY
         D9Rr43293QJY3xjCcA9HLEbpWQOvIggTBby0cgi12cFM7oiK7Il23wRhKK8cL/qfQs6G
         cvfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763816416; x=1764421216;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D33saOqa18RCkbxGkW6RKN+23lAQ9LGSuB2LH3pnMFs=;
        b=RqJvBPMxosRTG7HIi0Wvp7qWxHPN99a3FYOfHJctgm8d6o1racAAE/lMDVEYi9lT/o
         3p7negF+Wt4lXNVYLLQem57P2w/aP/2mMMmj8oPWFaaAKkjh+D/icVithmU69w6Fzmv4
         UIk/AjyljvabY+/+W1YcqL+oP5hsVWMy+1SQrOlOxTJQ7AsSZmajnWJ42r9CUzwTmkgK
         4dYBpsbE+zR566v5OXEUCh6WHR9fm3gfP4960xbJdECZzYlVhLV1XZ9qhIXKvrfSAuwU
         N9j1UyMbiIo1CBxTwG2vUwtduNXa4KGfxoLwK+hc29BDv4vbQoHB8YNOsYHdSc/IzSxB
         TFKw==
X-Forwarded-Encrypted: i=1; AJvYcCUbuLzvDEOti+FMfyC6UmbgRIAGkibew6PoIPMzGY3lHbaZg47mHDCM4P/e+F0z0bWDcEuCVC2Eu0fI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu+tScOfUOkbQqFlZ+Dh6tRdCiLhkk755ktjuxpKqSmWPNcZLp
	x3SO4DGeMMUHcD+QQW4BM0v6m9U7GcolwcsI6QWVQNTBYVU1QexWgzQr+1Dcibg0SJl+ckgj0RR
	m2QnO07XjWH6U74ciegmA/5bpNOzZjrvUd8rFPlAZXw==
X-Gm-Gg: ASbGncvT15TwgvqHhWM2b3IS6i3aop50ayvyPuqJqxWoZkN9aAqljqWheEsxjoHi63I
	OpnSiJflVlnrBQHKU71NmTPEqglob082Xq7cyEaJMpkzWdsVPbEG+81Yjgy/SwnPFfV396DNrh2
	OxIzW6F387/q2D/sH0GUyiJaLWuKQTvPmAHwIslWVEMr/wIS5ggQT7Xzaxcbojqr4e74/kV+erk
	prbyitEo4VhWddW3r7/E57js5pSpHdEO4d+uZENt4X6yk9hQ1wzVaGAU+2C54lpcUPYXxbW2hPM
	qr8Ggw==
X-Google-Smtp-Source: AGHT+IHJrCgIOLl4o7NWWLpx4hV5ffDAfX6bvndBUHOzhVwN3Sh2SMUBYCSUaMSJYcN7I8cF0AZYPeseet0woJPXfmE=
X-Received: by 2002:a05:6214:19ef:b0:880:53b3:a9bd with SMTP id
 6a1803df08f44-8847c48694cmr88775616d6.5.1763816415832; Sat, 22 Nov 2025
 05:00:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251122-controller-v8-0-e7562e0df658@google.com>
 <20251122-controller-v8-2-e7562e0df658@google.com> <CADrjBPqPsPBBSbhx8ZFreFWX2tRxaATT=azS-b1H2b=TJoVAAw@mail.gmail.com>
 <2025112248-spoon-waffle-a508@gregkh>
In-Reply-To: <2025112248-spoon-waffle-a508@gregkh>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Sat, 22 Nov 2025 13:00:04 +0000
X-Gm-Features: AWmQ_blyAPM0LR0XqdHlXvnT72Nj6YIaIeoZyPTuWF8E9Zu5nwZOromhbyVp9eo
Message-ID: <CADrjBPp0icwChpAdeK-CBEqvV__ALJ4YO=cp5uhXEUu3nqL4UQ@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Roy Luo <royluo@google.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"

Hi Greg

On Sat, 22 Nov 2025 at 12:35, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sat, Nov 22, 2025 at 11:58:39AM +0000, Peter Griffin wrote:
> > Hi Roy,
> >
> > Thanks for your patch. It's great to see Laguna support being added upstream.
> >
> > On Sat, 22 Nov 2025 at 09:32, Roy Luo <royluo@google.com> wrote:
> > >
> > > Add support for the DWC3 USB controller found on Google Tensor G5
> > > (codename: laguna). The controller features dual-role functionality
> > > and hibernation.
> > >
> > > The primary focus is implementing hibernation support in host mode,
> > > enabling the controller to enter a low-power state (D3). This is
> > > particularly relevant during system power state transition and
> > > runtime power management for power efficiency.
> > > Highlights:
> > > - Align suspend callback with dwc3_suspend_common() for deciding
> > >   between a full teardown and hibernation in host mode.
> > > - Integration with `psw` (power switchable) and `top` power domains,
> > >   managing their states and device links to support hibernation.
> > > - A notifier callback dwc3_google_usb_psw_pd_notifier() for
> > >   `psw` power domain events to manage controller state
> > >   transitions to/from D3.
> > > - Coordination of the `non_sticky` reset during power state
> > >   transitions, asserting it on D3 entry and deasserting on D0 entry
> > >   in hibernation scenario.
> > > - Handling of high-speed and super-speed PME interrupts
> > >   that are generated by remote wakeup during hibernation.
> > >
> > > Co-developed-by: Joy Chakraborty <joychakr@google.com>
> > > Signed-off-by: Joy Chakraborty <joychakr@google.com>
> > > Co-developed-by: Naveen Kumar <mnkumar@google.com>
> > > Signed-off-by: Naveen Kumar <mnkumar@google.com>
> > > Signed-off-by: Roy Luo <royluo@google.com>
> > > ---
> > >  drivers/usb/dwc3/Kconfig       |  13 +
> > >  drivers/usb/dwc3/Makefile      |   1 +
> > >  drivers/usb/dwc3/dwc3-google.c | 628 +++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 642 insertions(+)
> > >
> > > diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> > > index 4925d15084f816d3ff92059b476ebcc799b56b51..f58c70dabf108878cbefe0abea88572d9ae81e26 100644
> > > --- a/drivers/usb/dwc3/Kconfig
> > > +++ b/drivers/usb/dwc3/Kconfig
> > > @@ -200,4 +200,17 @@ config USB_DWC3_GENERIC_PLAT
> > >           the dwc3 child node in the device tree.
> > >           Say 'Y' or 'M' here if your platform integrates DWC3 in a similar way.
> > >
> > > +config USB_DWC3_GOOGLE
> > > +       tristate "Google Platform"
> > > +       depends on COMPILE_TEST
> > > +       depends on OF && COMMON_CLK && RESET_CONTROLLER
> > > +       help
> > > +         Support the DesignWare Core USB3 IP found on Google Tensor
> > > +         SoCs, starting with the G5 generation. This driver includes
> >
> > consider adding: (Laguna)
>
> What is "laguna" and why should it be listed here?

Laguna is the codename of the SoC (mentioned in the commit message).
The dt compatibles and proposed dt files all mention Laguna (as
opposed to G5) or its abbreviated form lga  so it could be helpful to
have this mentioned in the help message.

See https://lore.kernel.org/lkml/20251111112158.1.I72a0b72562b85d02fee424fed939fea9049ddda9@changeid/

Peter.

