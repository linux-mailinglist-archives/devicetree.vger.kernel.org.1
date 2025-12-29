Return-Path: <devicetree+bounces-250167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C23BCE6A47
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:07:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91C02300E158
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:07:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4C6430F814;
	Mon, 29 Dec 2025 12:07:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="iamT1tTG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FB22D0C95
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767010048; cv=none; b=dGGiiL3qy5yXQFQ6yZJj9uRwojqEAvQuLxjtvgtolbKeBhrYrOy4/3wVPCTViXOKwBSm0zj0TuzHGut6g4rvULRc4UYJqmgbTEQaZcs9CnjRPJwa2IaixXyDAfIF6gKDOJiLO95Oz2t0GiPuAg2MVl+Lq17ls+cVNWn1rHDs42k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767010048; c=relaxed/simple;
	bh=M0RIAwtADvVOqaERuCW9IojIKIPb3AOQCX/h4YSSMVA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ss9XBle6Jbl3DfX19QXuoodtZxi+cAtmL7xYKOLYVR4EhVBPJS/Qur3k0jB6mE4DVFmOsuoyau4I96FiYK/o96bCLJSO/cBV632s0qw8tSqLobqOxtNw66enn4zS5Zf6wNjog5BDMExrUXAlC11UvaIL4miyMSYd8apDZVHFu5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=iamT1tTG; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b8018eba13cso1363865466b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:07:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1767010045; x=1767614845; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M0RIAwtADvVOqaERuCW9IojIKIPb3AOQCX/h4YSSMVA=;
        b=iamT1tTGYGQlzW0SD7Bc5Gh9ZF8yq3i589wLhXJrSD1Kp1ZG0ZaxE07zplkkGHJVEP
         gb0by9XjDcH0ilhHcxSpil+RiSM7Ic1A8SSNbg2dpEfXCZg6NkVkwkdjMMKKxH2KX1Gf
         pdYGVDhIhWLK9RFe3oxaeh42xev2B9E2QeiJUwmTrK4iiImu5MhqPNxGIoaKR9SmPIJk
         BWAa1Ab215SKOtSeT5lNMMdyImsouv4dTKP/3SsgFQhmmnNLv71u8lm9YmvDxnym0Tez
         P3Fx5ZSdHR5Mqj4oBpHnVUccNb6D0RfhAVP83lrcvz6sILAhn4GItv8EK4Uo/FOIg5GA
         UIIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767010045; x=1767614845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=M0RIAwtADvVOqaERuCW9IojIKIPb3AOQCX/h4YSSMVA=;
        b=L3+R0zaJuVTzDZpkfjd9/CCQW6A35v1kdAH+4Qsd+IgILeSvoTPtZY2bW/LxWlI4RF
         tLnWWaec1vrf71kIYbhyrp0VFwMlhL3kVolFm7/EXPVLo2Ox2BRBp2KVFXzqL2orBEvl
         zecYnMU6QvzlH9BOmQa7O5Ry1/rV4r0iFGGpWdYqd4a/3uCT+iRTRr4H8zLgVULHST0y
         HhQitlWuMvx9oLhWgYD5uAp+Rkjsygar6HCF5zj03GkBKp8CZ3vO0VcbbOUWR2UaXugN
         GRj2VBGvka/R77ADucyGOjLg8Av4PIBK5fMy/EsLn9xYf6dodzrU9x6EmD5GDg94ncgp
         vDAw==
X-Forwarded-Encrypted: i=1; AJvYcCX9hjOQRopir+44/lxM7GfwF1Aujh1gO5HftKIEkiMa8+EvpMWvYFKY7C8GHI/gd6uSPWIzbqC8YdTo@vger.kernel.org
X-Gm-Message-State: AOJu0Yye5xJ79TmsqNQIpJutBYmk4KGsWGbXev6gKccymFoRooyAygIH
	yE/lh0sw4Jc/zVFnoa6oWs4fA9Bt272uwk7Qt5+rkJb0FyFL+Aogi8ZR9kkuz2UapA4KgxbwhT4
	zz6bdhEPSJVmxLOdIsZrb26PDcOgEg51SHAr7xb4hDA==
X-Gm-Gg: AY/fxX5VacBw/otbH69ZjiFFo7iAjcikvn4xar2rg4ASIO4fScTaGpMt5BEuimOABuc
	lTB6/lJP9cJcdm1RUbytTIx6BZ0LL3vynB3KY0flXorWxxKaFS8bZ5zdkHig2LMQBOcv7rX79JQ
	/Cb+paRtmwM6kzIy4dYimhSiWA2DNUtlRyDe2311ddntDZXf14VNTHfO8dRpUkEIYv1Xrm518yr
	7ssdn5Vu7sMQok8F502AvdZ5IbmkNtBHERkEBhI+epbMJKjieVU0cecXzniJc8C1exLUiI+lfwm
	/+NLKU2gTJWl8HZVJrYuw6zmS8127CJ7fapHEZKhPdsCsfOH2DHr
X-Google-Smtp-Source: AGHT+IHwGBZ7fPOTgnv1RT35iaeFO7HZRzkOQtdPCeQFstms7NNREAW/jaHp2F7zdlu800ZsYVpbEuZjGBw4wnDce1o=
X-Received: by 2002:a17:906:2081:b0:b80:415e:5b2 with SMTP id
 a640c23a62f3a-b80415e05efmr2616951466b.4.1767010044222; Mon, 29 Dec 2025
 04:07:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251223201921.1332786-1-robert.marko@sartura.hr>
 <20251223201921.1332786-2-robert.marko@sartura.hr> <20251224-berserk-mackerel-of-snow-4cae54@quoll>
 <CA+HBbNGym6Q9b166n-P=h_JssOHm0yfyL73JZ+G9P81muK=g4A@mail.gmail.com>
 <78bf252c-fd5e-4a36-b1a3-ca8ed26fde7a@kernel.org> <CA+HBbNG+ZVD6grGDp32Ninx7H1AyEbGvP0nwc0zUv94tOV8hYg@mail.gmail.com>
 <d210552f-c8bf-4084-9317-b743075d9946@kernel.org> <2025122516245554f59e2e@mail.local>
 <20251227-splendid-striped-starfish-ece074@quoll>
In-Reply-To: <20251227-splendid-striped-starfish-ece074@quoll>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 29 Dec 2025 13:07:13 +0100
X-Gm-Features: AQt7F2pkPcBxmyeR-DPcdCGLawGZy7wfoKy0BfxlIeZ5QxnvZTUu33UqbaIu3eU
Message-ID: <CA+HBbNEqq9ZqBR88DFSSSrYw=LBzAreFC0kL88-HZCGAsOrqZw@mail.gmail.com>
Subject: Re: [PATCH v3 01/15] include: dt-bindings: add LAN969x clock bindings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, nicolas.ferre@microchip.com, claudiu.beznea@tuxon.dev, 
	herbert@gondor.apana.org.au, davem@davemloft.net, vkoul@kernel.org, 
	andi.shyti@kernel.org, lee@kernel.org, andrew+netdev@lunn.ch, 
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, linusw@kernel.org, 
	Steen.Hegelund@microchip.com, daniel.machon@microchip.com, 
	UNGLinuxDriver@microchip.com, olivia@selenic.com, radu_nicolae.pirea@upb.ro, 
	richard.genoud@bootlin.com, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	broonie@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	lars.povlsen@microchip.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org, 
	linux-i2c@vger.kernel.org, netdev@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-clk@vger.kernel.org, luka.perkov@sartura.hr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 27, 2025 at 12:17=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On Thu, Dec 25, 2025 at 05:24:55PM +0100, Alexandre Belloni wrote:
> > On 25/12/2025 09:47:34+0100, Krzysztof Kozlowski wrote:
> > > On 24/12/2025 15:01, Robert Marko wrote:
> > > > On Wed, Dec 24, 2025 at 2:05=E2=80=AFPM Krzysztof Kozlowski <krzk@k=
ernel.org> wrote:
> > > >>
> > > >> On 24/12/2025 11:30, Robert Marko wrote:
> > > >>> On Wed, Dec 24, 2025 at 11:21=E2=80=AFAM Krzysztof Kozlowski <krz=
k@kernel.org> wrote:
> > > >>>>
> > > >>>> On Tue, Dec 23, 2025 at 09:16:12PM +0100, Robert Marko wrote:
> > > >>>>> Add the required LAN969x clock bindings.
> > > >>>>
> > > >>>> I do not see clock bindings actually here. Where is the actual b=
inding?
> > > >>>> Commit msg does not help me at all to understand why you are doi=
ng this
> > > >>>> without actual required bindings.
> > > >>>
> > > >>> I guess it is a bit confusing, there is no schema here, these are=
 the
> > > >>> clock indexes that
> > > >>> reside in dt-bindings and are used by the SoC DTSI.
> > > >>
> > > >> I understand as not used by drivers? Then no ABI and there is no p=
oint
> > > >> in putting them into bindings.
> > > >
> > > > It is not included by the driver directly, but it requires these ex=
act
> > > > indexes to be passed
> > > > so its effectively ABI.
> > >
> > > How it requires the exact index? In what way? I do not see anything i=
n
> > > the gck driver using/relying on these values. Nothing. Please point m=
e
> > > to the line which directly uses these values.... or how many times I
> > > will need to write this is not ABI?
> > >
> >
> > The index here is the exact id that needs to be set in the PMC_PCR
> > register and so it is dictated by the hardware.
>
> So not a binding between Linux and DTS.
>

What would be your suggestion on moving forwarding regarding the clock
HW indexes?

LAN966x does the same with HW clock indexes in the dt-bindings includes.

Regards,
Robert

> Best regards,
> Krzysztof
>


--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura d.d.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr

