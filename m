Return-Path: <devicetree+bounces-249393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE373CDB887
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 07:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 640103009F9D
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 06:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931E6314D1D;
	Wed, 24 Dec 2025 06:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RQbJ8e/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124D023372C
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 06:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766558453; cv=none; b=WjvFULwyx7PhHLia4BeVCjwGQKLVEvpFlZEeMz6c1WRddEQNsJrf5/rezExbkgxTO/Sk/+1dXYOGuAebSG3Rp7g1Me79A6dAoZy3s29RlCeVql+jYq8MnEBXiqWA4DDFT6q5UoMA0DpzBpUS3YYGUTVRPurASwqAOkiOiZ4E30Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766558453; c=relaxed/simple;
	bh=+3og6GoQHImGzeRxsywBXW2WKrzIoJ2hxNFJ5KlY0W0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TG/XU+iIj+l0m8RheIjL/btYjO3b01d+SoVARG/9JZ8dW+UrInpkPH4yRE8gJN9jmAC0vpkfeWGLPvb0Ox7BfJS2X3zRrrICVZc8h1fkJK05el95aUnpBLeUasT/5h3A1LZIcMi1dyRjQbQQJLwHvz4p/wvjRkwp8D38o95vaYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RQbJ8e/Y; arc=none smtp.client-ip=209.85.221.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56021b53e9eso1575497e0c.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766558451; x=1767163251; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QhWuML+xfN/FbEBKC+hfJSr+oGnXRh1tbjNh8rpQndc=;
        b=RQbJ8e/Y0x1tuZvLLF3kMY6qNsiEtZ/ZXvVROUXhZziBfWMKPMy2XsSd1gyB5X0q3k
         Aif33jP6n6+9yPAgCleU2Css3aKu1xxFbH0n1DSP7+ZcRHxAByddeKlIIlQfpOBYLVXT
         0TuMOKejhWkOr5v4mZykv5cPSv+6HaXSTJbQkrRnBBBGh89JXokXmYZQiipIURr96Y5+
         e1mceZ/nmMhC8sJgGTXoj5/7FXCbUZGivHf0Ml+FXbGVMkWvOF361UkjyAnmOgssl9Zm
         hamtdDqF4rFPvHhxssV0Tx1c8HcIFYdnN0uXLZZPmZ4lfZrD50qHBVFXgnzeday/7u10
         RTWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766558451; x=1767163251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QhWuML+xfN/FbEBKC+hfJSr+oGnXRh1tbjNh8rpQndc=;
        b=UZC8PU3fhqBpDBqZFIU7+VcWecvWDN09OCkZ/y6/M+8tUHZIJWAoIEv3VcnwJ5wj2z
         KsxlX+8hHf/LDIOPvDxVUWFCLkiTfibleFZ4sfTtNYE+yCgToNbaZ1fGrmmdnuHKACT8
         Xvr5wTIxNdT6O+0/w0SGj4y2NgbHy9TTg5NPmcwc59qTHkUK0M7w4OxsFpewcqaDeNPI
         Bq5FVnyLCDRMib0am7PFpV5bfYdTjXr80met91ISW1e8J2okADNhwL8/YuXZAZfJlDup
         O2mW8XlobJA6mm2ukMZJFzjJ/OpeR5G0bXfMsuRnXVgXi4A/yy1jvCTH+MXPJ6njLreO
         99HQ==
X-Forwarded-Encrypted: i=1; AJvYcCVceZZLiZi1h33/5CJTiflC/vsPWyIf4sMi69rP1CfU4ioY5u7QtCn3Y2Euq57hnKGR10X41xwNbEm9@vger.kernel.org
X-Gm-Message-State: AOJu0YySroaJ5uTzuMTH4/+W0hDsqGHlTGeOimcMXu6LlCM+bab4rKlQ
	qOM5aSshL3fHwPaBjRhtlldxRbLfiRHOTa3U4P4WwfouToRIQlwrXoVqUsAyJzhZj0wfrEcJYWY
	+MgwKWuGszofqH4mnzu5zu3KP1axjS24=
X-Gm-Gg: AY/fxX7sH/1iuRSAXLVpLZ/NXwAS4vxKvb47sFNzxpUplPshnUCXpMR1EJCSuq+GZIR
	WJDIFxNIqgmyOqAQDHRLZyCM0sCEKUIbXl1+vnVtQaGWgZgCQ6yrI5AEfG06z+VIZwSntmQUGou
	9LNdzxb0d8AZJaW/h646kR3nI3z3DHn9UYCdpSuMgQOaIw6I8yj3hiWa705SWQuN6pJ7vRlrtjU
	rc8aBAAeB1bSDSxRFXmGzzqQXUM5eutLTn+0/v2ilzHHZExL+oWhwKod0fMP57BdoktxVOy
X-Google-Smtp-Source: AGHT+IGqNey6TG8yqdYhTpzWZIqLA35E9fAegGhLCjqG575xM7vw/bkoGiuMiUd1DxNeOqzRaI7119YN5vercXgA8zY=
X-Received: by 2002:a05:6122:240c:b0:55b:9c1c:acd4 with SMTP id
 71dfb90a1353d-5615be9091emr4344447e0c.15.1766558450878; Tue, 23 Dec 2025
 22:40:50 -0800 (PST)
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
 <1e21f828-1b06-492d-bfcd-ab5721621e8a@lunn.ch>
In-Reply-To: <1e21f828-1b06-492d-bfcd-ab5721621e8a@lunn.ch>
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Wed, 24 Dec 2025 14:40:39 +0800
X-Gm-Features: AQt7F2pZDHak7nDZcL8jCA1XWJnW12d9SgVdpUOLF37-2YvXQexfXsCcudZZ8p8
Message-ID: <CAF7HswP7Oejs42K=jG8bkNiBoDhXR2LbeHoppk0nnNon6_afwA@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 6:35=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > What make/model of switch is it? Is it unmanaged, or does it use SPI
> > > or I2C for management?
>
> > The switch is connected via RMII to the MAC and is managed over MDIO.
>
> O.K. What make/model?
>
The device is a Marvell 88E6393X switch. In our design, the BMC connects
to the device via RMII with fixed link parameters to retrieve ethernet.
> > On our board, MDIO is not wired directly to the processor; instead, we
> > use a USB-to-MPSSE bridge (FT2232) to toggle the MDIO signals for
> > switch management.
>
> I have to push back on you using a closed source user space driver,
> given that i help maintain the Ethernet switch drivers...
>
> I know there have been attempts to get GPIO support added for FT2232,
> but i don't think any got as far as mainline. That is probably the
> only part you are missing. You can describe USB devices in DT. So you
> should be able to describe such a GPIO controller. You can then
> instantiate an virtual,mdio-gpio driver to give you an MDIO bus. And
> then add nodes for the switch using DSA.
>
Apologies for the confusion in my previous reply.
The BMC connects to the peer via an RMII fixed-link.
The link parameters are fixed at design time and there is no runtime
MDIO-managed PHY or switch control from the BMC.
>      Andrew

