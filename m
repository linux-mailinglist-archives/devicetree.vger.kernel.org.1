Return-Path: <devicetree+bounces-250330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D11CE875C
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 02:02:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0E5AA300EA19
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 01:02:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97AA31C8616;
	Tue, 30 Dec 2025 01:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PPnR8FXZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002BD83A14
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 01:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767056535; cv=none; b=ihDsx5icElTGnmsZer6VtWYdd7Aemgw/DGJ4hLRtm6F+syCvR0WgyYpXi8X0bciXtcOxYAbN9qgm5XKiNzcxLuHRHPd65p5y2MW509mWhiwkN6MepT4qsPLqRGv1A2iR13pEM593mCPzFz047x6B/akYDIdZThr+D/6JNMZk25U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767056535; c=relaxed/simple;
	bh=3xAksIfPX2T5WNXoLxZym8rwMz4q+s1MZgwkJv11lqc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hIY3WSslDp1T3jWuXic0SoA5qZ6kkPUWPx3Tsoa4lhFM5vfujm5J7TmbmDaPgKS7cf4s/vo3Alvr9+T4L8Ost9cXHdvC2HqqXxc+dm6yXj6TcaJp7SccEObe3HBVc37aSBO2VlwGX8PH+SKp8ojko8auozMT7r30WrdrZ3TJJLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PPnR8FXZ; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55b0af02ddeso1075549e0c.3
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 17:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767056533; x=1767661333; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K3uupG6wwKA+D3WjE6NNFWCJoJkQpCysPioJbVD9zeI=;
        b=PPnR8FXZdubB4gamXaKW0u9MQTeR6WzklvfD3sOY1DoYFObBBrkH9mH7dvUvwnyMUQ
         uQSrxVBR0hMt6z3vc3OROBUWl2U+E2L89i57GZqbrNK5oHgvMK+W87PhIYSf5x/XGO8J
         K+CFl5Ivzw1nNRUmlgsRh6nJaav/WxKbdmGU5SXgDSfd6yH6p0SFDZgOZmYdnVNe6Eoj
         vVECQ3FFp9vkEL19GbwLLUzQWa47zGMlu/WBhPSq8ckUjbj3nmvKNJUC930fOZHrVRdK
         tI2lh3bNJRYJWieTDF+XwJeDo8W0fxAcEXem9XOckq/JeYTJXZhTnr5abP+tIrxGl2ot
         tRYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767056533; x=1767661333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=K3uupG6wwKA+D3WjE6NNFWCJoJkQpCysPioJbVD9zeI=;
        b=LOFzQo1qo5nmHFYpVFx27ySKqbPZcjss02pxxCpmJ7hY+sijblkWeJAC0EO/2JV0l+
         s+ZUxMYk9+iEWJ7uxoemQUnfTJR605kXPaHBCb6t0a6JBEiSxJH1iG8m8mCB49ffNlLA
         v5rRv82aeTSqH1h2Y9iVszke7mPTymJ0D2+uvXj0jJS5HuIGfvScgjvyV83giN0Q4Cf6
         VfoNqJ8LPTv5tMLRkJdYj7Cay85aGeCi6vFHCxp8xcF2GWE/VfcBmEBKUweiu1QBnJ6S
         OsqPApRImuEgMStvDaTw9mCDjDVuFoC7iFDgGtYWsz6nfOCs0+BwzGaFLiR6fKdfCpB5
         f9zw==
X-Forwarded-Encrypted: i=1; AJvYcCWzNxPkfw2MOdLEs/sRxv03wXwWnarsnzkitPm41SMBbmEA5KFmbahX0mnjsKSvRnRmhv4HN3PqslBM@vger.kernel.org
X-Gm-Message-State: AOJu0YyliWZ9Xl/h1HRxfNeTqppiHeCVbaQSmQzrFxGprZfO9XUgbuAp
	2OZhdUEhaUuXbJwVycV08ZUOk1TQPN30brl2Lokn9h0MVJpikGtXfWMbfd/Fj4btJDHEZcrktK4
	j5pippCRPqjkEBhBsk0Vw7lu3R+/hZTA=
X-Gm-Gg: AY/fxX4YoGK0TztlV2p0cO+Oh0NjcSKUnnBXL1Jj7xaFvxfVBxdbQoRCWryWcZNKJBo
	Qx3r3/GiId53dUn8WiQTo4GBmuum4szHPTIIxaoshveQdcACPO/KfDBUXB3V3RNMFWH26+3VZss
	7uUHKuFo86vjNiMx/pKdLW5BHLTnoLMW6Yc+/fI+ZmDr3DMnYso1RMvUXKwtWku8jPNvEb7fJ6F
	uP/ZQFiCHDc8NybVllMKkLWm6ymHIyYpc14b7P/WRAPI95l74lJFs3ee+K7Uxd6d7ODLxAE
X-Google-Smtp-Source: AGHT+IHWHcxnnE6ua2lnO59+DWRC+LlEqTyrTydKj3DfcxQoiFj1yeTa9TC+D4wZtLiBbwSaYWQkTAPRRUX0Kb/EYlU=
X-Received: by 2002:a05:6122:a1a:b0:559:65d6:1674 with SMTP id
 71dfb90a1353d-5615becae79mr7910503e0c.14.1767056532775; Mon, 29 Dec 2025
 17:02:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>
 <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch> <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>
 <35f3eba9-5ec4-4cba-8a64-fb521dc65b79@lunn.ch> <CAF7HswN0hhJQ-gmE59cKTuPyzrs1A3rM8Xw+Z8i3_AsHRiNcug@mail.gmail.com>
 <1e21f828-1b06-492d-bfcd-ab5721621e8a@lunn.ch> <CAF7HswP7Oejs42K=jG8bkNiBoDhXR2LbeHoppk0nnNon6_afwA@mail.gmail.com>
 <32ff7ca8-9cb0-4889-adb0-a6dae735630b@lunn.ch>
In-Reply-To: <32ff7ca8-9cb0-4889-adb0-a6dae735630b@lunn.ch>
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Tue, 30 Dec 2025 09:02:02 +0800
X-Gm-Features: AQt7F2pPUn1JLWmR3VqaFLx0jmfpldK-iH0ck9hcP5otIfqONHlFX9khVNFmN88
Message-ID: <CAF7HswMRrs9hwKo_uHCLMtx7+h46-DPEJRcEqu0-zEG4CVvvjg@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 24, 2025 at 5:20=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, Dec 24, 2025 at 02:40:39PM +0800, Kyle Hsieh wrote:
> > On Tue, Dec 23, 2025 at 6:35=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wr=
ote:
> > >
> > > > > What make/model of switch is it? Is it unmanaged, or does it use =
SPI
> > > > > or I2C for management?
> > >
> > > > The switch is connected via RMII to the MAC and is managed over MDI=
O.
> > >
> > > O.K. What make/model?
> > >
> > The device is a Marvell 88E6393X switch. In our design, the BMC connect=
s
>
> Which Linux does have a driver for.
>
> > to the device via RMII with fixed link parameters to retrieve ethernet.
> > > > On our board, MDIO is not wired directly to the processor; instead,=
 we
> > > > use a USB-to-MPSSE bridge (FT2232) to toggle the MDIO signals for
> > > > switch management.
> > >
> > > I have to push back on you using a closed source user space driver,
> > > given that i help maintain the Ethernet switch drivers...
> > >
> > > I know there have been attempts to get GPIO support added for FT2232,
> > > but i don't think any got as far as mainline. That is probably the
> > > only part you are missing. You can describe USB devices in DT. So you
> > > should be able to describe such a GPIO controller. You can then
> > > instantiate an virtual,mdio-gpio driver to give you an MDIO bus. And
> > > then add nodes for the switch using DSA.
>
> > Apologies for the confusion in my previous reply.
> > The BMC connects to the peer via an RMII fixed-link.
> > The link parameters are fixed at design time and there is no runtime
> > MDIO-managed PHY or switch control from the BMC.
>
> So you use the USB-MDIO to program the EEPROM? The switch boots using
> the settings in the EEPROM? It is then an unmanaged hub? You are not
> using UMSD in userspace? That code looks terrible.
>
> So if you connect multiple of these unmanaged hubs together in a loop,
> your network disappears in a broadcast storm? Yes, you can use these
> switches in a dumb mode, but it has consequences. If you let Linux
> manage it, you gain a lot of functionality, such as STP, to break
> loops.
>
> But you seem to be opposed to this. At least add in a comment
> explaining the purpose of the fixed link. DT describes hardware, so
> there is no harm in describing the hardware, even if it is a comment
> and not real properties.
Thanks for the comments.
I understand the concern about the DTS. I will add a clear comment in the
device tree explaining why a fixed-link is used and that the switch is
initialized via hardware straps and EEPROM, with no runtime management
from Linux.
>
>         Andrew

