Return-Path: <devicetree+bounces-249029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF17BCD892D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:26:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B7723015ED5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5100A30B521;
	Tue, 23 Dec 2025 09:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hZ4H2dBM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C244B2B2D7
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481976; cv=none; b=jDMMMPrfYdvRgnQBUlIgN8J4M+E3CoP6W5B1R8z6ecuhX8gR7jg1EAU4usdCDG3tlZFOirGAbymWjautz+ynaiVkS16g2ijwuKzno7Wc15j2EtTFErzSf/a7d+CJu7AkR5wleOqUdzrLl+lEvjvrvjWLeqGPmkY28SSuscVoTcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481976; c=relaxed/simple;
	bh=9A2dY0yKAjRQE5xJe+Z2Y6EINYz+gLskH/F/0Hp0vb4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nir7F7O9c879eWfK5ZbMeWbj2ZY6iGD9HaNRg7frRqdVXcrlTBq8YeVDWW0WXaT/IoSsz5tLlS3IUeox3UsDpyymlS2KPwqUPBxlVXMAe3uJJZzeWaGwdS7YwwmP0pI+TiYd3t47ZIGcJM79KhHrpRXmjgetFR4HInlCo6JR2j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hZ4H2dBM; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-55b24eedd37so3357047e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:26:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766481973; x=1767086773; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GTGEyTW46XThYDSb3nGfOTcnTXkOQCNX3Dl5sNqjw6Y=;
        b=hZ4H2dBMugscvaqbRIVfBO6jsxZCN5RmbcTXO58axZBG6IJgLnYE+NGGopmIQdYDIF
         eHU1eeE8boUmmhVk6krhxx3ycWfY60H568GK3LusW274FruxDIYPGRfJwp4GiLRr/qr/
         2zNqZn28MsOaGU4L5w/2/VlQ8AWVKKDeUZWz7qqb44glymEBQ22li0qBk1IRORT+2FFy
         S/eaNW0RsIcX3k7SqEfSICW9qt90xRFLBDbD8QKF2mH3Tvuo0yqnAcH8QrZf5qS8vZ7o
         DlATuRRIg7uzFUkkNsHGsz0fmZKRig9U5K2sEAeuLLhrdKMQyxDV4w/HOEHjyy3eJTt/
         7Ssw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766481973; x=1767086773;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GTGEyTW46XThYDSb3nGfOTcnTXkOQCNX3Dl5sNqjw6Y=;
        b=Q7BsjuryiImwQkygzREBhhIPKm0Q1t+kydVlGbke7E4+BdEZIRxPqYcCRQ6NoY3vyy
         Qu/1YsFzD0EDhwvQA3HCwHfFb9nDGSFcKXm1mTLIItWi+rpn65MJYp6P5rNTN155r4rM
         GPa1ZhLn5vRFGdG7Zz0XYz6S2rGIX7mHTAIGlnEYn+EUDEGJ/eV4QN4ksvyYiMbpvkAo
         0cuuljf2gDKw1Ls+bE8vinw8g0UktxiSQEnBrsDu7+j5qCoJAyQFCIpMYcTSa0FjFqLV
         Cs5ZsRR01a1ASSfN2ljlAwDm3v5sKF1+0B3WeYud3OguDlQr7nCVzJFN6kxnKaXCnYqU
         t78w==
X-Forwarded-Encrypted: i=1; AJvYcCWCGl25+dQA46/Joi56DzVoCulSsGoofSKp4IErrlAjiyyDv7l6T02E+aj1TTih5L7B5iRMoCGk7Aqz@vger.kernel.org
X-Gm-Message-State: AOJu0YyYjNCRHDGqIfApAWgGTB8pUbfBvEC7x23Vgr0FjJrbEiCz22qR
	A6/GDk8CjtQN/C450jdML56o8nbvCICtwSAIOr/96x5e208xncpa+Jtm3WlwwXrqzZ2Xwr5lgb9
	/C+pUK9BsQFDDMIgtJPL8TxKx+vnUFf4=
X-Gm-Gg: AY/fxX6wwfKb7J61uRD6UrGXXShRhB2o/OsAdy3Bd2esUdvnmyTeQAI3lSIq86KQ2Ff
	iNz5Fob1c9QeDE9kpzQ7PXMZbGAG5G9aNoaOIalfdU9i8OZDcim9HLgx/80JvVhhdD1/3rp0yjT
	JtxmRWvWjZddwkEqq49att+QIADpEFnAmgNQNmVnuzBg6nvWV2FFGTvCdGF3r0zJheMLZjdICa7
	HwtIbgRiqLA2DGJFyOD54gBE38+QVYmV4YR5Kl5081K+JC4HEEpDDu2PDONlPN7AwSRiFpyWktb
	tSUqpQM=
X-Google-Smtp-Source: AGHT+IGNdoIAhQtLGCBr8mC/SwI6VG9mNcrxVeUK7FLVxcyVEZlSIvEaWHvs6v2NaAD9i9XNu9ROrW3FCi+AlPV3bc8=
X-Received: by 2002:a05:6122:8c26:b0:559:ebd7:56e4 with SMTP id
 71dfb90a1353d-5615bceb93amr4461609e0c.5.1766481973546; Tue, 23 Dec 2025
 01:26:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-ventura2_initial_dts-v1-0-1f06166c78a3@gmail.com>
 <20251222-ventura2_initial_dts-v1-2-1f06166c78a3@gmail.com>
 <c069b452-df22-4afa-bf6a-c48949f40ebc@lunn.ch> <CAF7HswN_jEXOU_9K4LpLnbhvd+RD0qqELAHxMBbp=hGtMjS4kQ@mail.gmail.com>
 <35f3eba9-5ec4-4cba-8a64-fb521dc65b79@lunn.ch>
In-Reply-To: <35f3eba9-5ec4-4cba-8a64-fb521dc65b79@lunn.ch>
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Date: Tue, 23 Dec 2025 17:26:02 +0800
X-Gm-Features: AQt7F2rfLXR1N_dAP9Rb-QfqDYef379P6Ra9zBB7wrWIZBUMZ5TM9ysNyWSrhdo
Message-ID: <CAF7HswN0hhJQ-gmE59cKTuPyzrs1A3rM8Xw+Z8i3_AsHRiNcug@mail.gmail.com>
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: ventura2: Add Meta ventura2 BMC
To: Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
	Andrew Jeffery <andrew@codeconstruct.com.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 5:13=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Tue, Dec 23, 2025 at 09:49:02AM +0800, =E8=AC=9D=E6=94=BF=E5=90=89 wro=
te:
> > On Mon, Dec 22, 2025 at 5:30=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wr=
ote:
> > >
> > > > +&mdio0 {
> > > > +     status =3D "okay";
> > > > +};
> > > > +
> > > > +&mac2 {
> > > > +     status =3D "okay";
> > > > +     phy-mode =3D "rmii";
> > > > +     pinctrl-names =3D "default";
> > > > +     pinctrl-0 =3D <&pinctrl_rmii3_default>;
> > > > +     fixed-link {
> > > > +             speed =3D <100>;
> > > > +             full-duplex;
> > > > +     };
> > > > +};
> > >
> > > That is an odd combination. You enable the MDIO bus, but don't have
> > > any PHYs on it, no phandles pointing to it. And you have this
> > > fixed-link. It makes me think you have an Ethernet switch on the bus,
> > > and this connects to it?
> > Thanks for the clarification.
> > Yes, there is an Ethernet switch in the design.
> > The MAC is connected to the switch via RMII using a fixed-link
> > configuration.
>
> What make/model of switch is it? Is it unmanaged, or does it use SPI
> or I2C for management?
The switch is connected via RMII to the MAC and is managed over MDIO.
On our board, MDIO is not wired directly to the processor; instead, we
use a USB-to-MPSSE bridge (FT2232) to toggle the MDIO signals for
switch management.
So the MDIO bus in the DTS is not used, and enabling it there was a mistake=
.
>
>         Andrew
Best Regard,
Kyle Hsieh

