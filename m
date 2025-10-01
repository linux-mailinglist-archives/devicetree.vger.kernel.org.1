Return-Path: <devicetree+bounces-223190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC41BB202B
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 00:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2CC73214F8
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 22:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3DEE311969;
	Wed,  1 Oct 2025 22:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TR64NXoi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C681F0E39
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 22:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759358614; cv=none; b=jbtmKn43Xt68opvqDeQsF6iqSsQbdY5Q0D6Bsvv6hhO7RQgkrp2Oj+5nbOAVftiQ9fxJGb1C16jqLD6fS94visWSfZUNrtdJDkxPJul7oL6rIrz8x5LcqfH4lmE0T22qfVJQLfs4Ec8vaEFbN0AmlazjdVcEJDq8DG0vqJJPhno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759358614; c=relaxed/simple;
	bh=UOQdDoYVPk5MuVZO/y+CTYfvq/YX4f2qAPDfmLt+6/w=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jX3/oUqZSfPjlyuEEB5aA+haKPffCsNooC98Ru/K6pRUYJen4G/AKCvHuHpBpoT6+osAKBKDZ3Aq5Kwsl3+dRQvEbvzTZoDcj1e++hL7zPvyt7+167Y6piqIUy3seG4ODnvRZoJl8OYK0JNAMA7QLy/K0vw1jrEry18i154B2kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TR64NXoi; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57bd482dfd2so405101e87.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 15:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759358611; x=1759963411; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AJlkWvrAVlj+yQaLRTA96ZrQDqsxK1wvi2JnIevLfeg=;
        b=TR64NXoi2duwyG0ZBX+hTmYz8YJp5zzlFF4Z0+5RUTWhopw0ONPzLDN3zaZUW/jUvp
         ZauD6qtBn9BrcnL1wEgEdQM5JZ9iJgGyw81TAMBXPJTavVwiyiOHPYEOuFSjjfEUMwoz
         ohnwLRR4PunZgbMOeSpEivAedZ/tcjrrzoXpVeT/FymiQhlmDjlnC0RIlyTGRXBPx5Q3
         4szlglLBnDBXjNFga3r/j8+lmsm3JngBOwWGgUHDtojzeq4tTm6WnMijoNcbvlCLSiSw
         OcrXUftpsB9LiEeNrH4+XHpE70uwLcJrKYyVuyNwksue4S74l8jelMa85e6x9MMYoo0A
         C4HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759358611; x=1759963411;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AJlkWvrAVlj+yQaLRTA96ZrQDqsxK1wvi2JnIevLfeg=;
        b=cBH7/uIMrL06Kj4X/DKOFXrwptIT3kdtiXoQkPUuuCKwfi9aYB6OtUH8pL47/6ToRF
         Bb+ACNdNgP73Ok62EMjkhELMwbF3RwCa34ZlD4jSQhJalOkdHWNbNDKo8lnip6TvsI3h
         /nhh32GjNfrzrKRQxcDRZtqm9WR61ck0d4HXjrlvK99cGNbKWP7ZeAyTNtPlhYmDqpQw
         kM7j6fGSJUqG+tA9CN2TccmZ066zvm/nwdikdyyx6ZuvB0Ub//BxUuZFDSr2LWjpyz3P
         0PNEgwJjSQklbeUcH19xA7EFopXm/Od+IBup8h7j/+XuJwNbG9CAZ2/ciIt90b7evy08
         QwQA==
X-Forwarded-Encrypted: i=1; AJvYcCUIkgnIMQCYaUSHS8DXN6rWeF5+iXUr2r7DW8Bfx2nxJHNCKbP9dw5f507Q0w5ts7dTrxkgcyXHApg3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy1HIHhX4DAu9Pu6LS3Wz3KzvnKno1JbUove72kJdBqEh9BKMx
	iuj/hsDSDWKGsqQhd7ffXTUicK+rFxopgOnxUech7Ofz48GIIhJLVJjVw1uNu4Mcz8fCK7xtBpl
	ByqMX6DW4ZJlQxUk5dPV16rsDcElf50OarjZfL+YvCA==
X-Gm-Gg: ASbGncux0rs+d5YLnSmMmiKdPoJA+JaTV/6hCFI3N/uAw94Qzu+k3xHF9CQFyCAbSiT
	An+ldosT4JITin9M67N5RymFGv66YqR01kvWUfWsq959zgGVwj3MHrMQ962B8a2MdwiiuPD8g82
	IVvXFQm9Uc6MOj+a60IP4dYYvSxOulQuDytoJ5eaLdLvzRsQoLV0uoDemPOBeAW0kt73AVmyMK8
	gJgFGXHh7MqJpwCcRU0sV0n3ddw0x4=
X-Google-Smtp-Source: AGHT+IFdKM5xbgBHrlutRdp/DdOPN4lLh19uK4jLc2UrL7m+ouIpIDPcsf+/ShVSFNC9EZgXpRm4hlxAMqIcQ3SPUrc=
X-Received: by 2002:a05:6512:3d0b:b0:578:3df8:7673 with SMTP id
 2adb3069b0e04-58af9eff3d6mr1450030e87.19.1759358610851; Wed, 01 Oct 2025
 15:43:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
 <CAHi4H7HLNu9YV8+dXshFigvjfMrYL+kGz5xWwab8L1nnefohaQ@mail.gmail.com>
 <CACRpkdaAUXpYi7Z+zgZDhLiJiSUAndLhPMA5YOvnk2GGYOoj4A@mail.gmail.com> <CAHi4H7EzydzKRZPMM-VGOJ8A2RxfEYb5umuBvBEceiwj-8KTrA@mail.gmail.com>
In-Reply-To: <CAHi4H7EzydzKRZPMM-VGOJ8A2RxfEYb5umuBvBEceiwj-8KTrA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Oct 2025 00:43:19 +0200
X-Gm-Features: AS18NWCTOhQMyUgnvLwAyIlqNw1Y9SpvK2SAJcfaUqnrHN3YwY3r_5sXqWNxV3I
Message-ID: <CACRpkdbmM0nND05ODmEa4J2y6JS6getB9s7h9TXywyED5gqh0A@mail.gmail.com>
Subject: Re: [PATCH 0/6] pinctrl: bcmbca: Refactor and add BCM6846
To: William Zhang <william.zhang@broadcom.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 7:38=E2=80=AFPM William Zhang <william.zhang@broadco=
m.com> wrote:

> > But if you can generate say 6846_pinctrl.dtsi, I guess from some
> > HW data that the public has no access to, then why can't you
> > generate bcm6846.c with the same contents as C structs?
> >
> We could but we don't prefer to do that because we want the driver to
> be generic and not requiring any change to support a new chip

But you will be generating big DTSI files.

And it is not really the ambition of the device tree to be used as a hardwa=
re
abstraction layer containing a lot of per-SoC information. The device
tree is supposed to describe and configure the hardware, not
abstract it. There is a difference.

(The DT maintainers can hit me in the head about this but I have
certainly heard things like this before.)

Alas, there is no hard definition of what this means and indeed
some drivers in the kernel does define groups and functions
in the device tree instead of using C files. So that happens too.

> You are absolutely right that the current dtsi does not group the pin
> properly for certain interfaces such as i2c. The tool has the same
> goal to combine interfaces in the group whenever possible. It is just
> we don't have the correct group config for certain interface when
> generating the dtsi.   If I fix all these group issues and provide the
> new dtsi files and I will be the contact if you have any question
> regarding generator files,  would it be possible for you to use and
> upstream that driver?

I assume you fear having to follow the pattern and hand-code
a C file for every BCA SoC and never get done. I understand that.
Also I try to live by the stance "rough consensus and running
code" and not be too strong in pushing things my way.

We can do this if the files follows some basic process.
You still need to use proper bindings.
This:

>         rgmii_pins: rgmii_pinmux {
>             pins =3D <42 43 44 45 46 47 48 49 50 51 52 53>;
>             function =3D <1>;
>         };

This isn't proper bindings.
Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml
describe the bindings you can use.

properties:
  function:
    $ref: /schemas/types.yaml#/definitions/string
    description: The mux function to select

  pins:
    oneOf:
      - $ref: /schemas/types.yaml#/definitions/uint32-array
      - $ref: /schemas/types.yaml#/definitions/string-array
    description:
      The list of pin identifiers that properties in the node apply to. The
      specific binding for the hardware defines whether the entries are int=
egers
      or strings, and their meaning.

  groups:
    $ref: /schemas/types.yaml#/definitions/string-array
    description:
      the group to apply the properties to, if the driver supports
      configuration of whole groups rather than individual pins (either
      this, "pins" or "pinmux" has to be specified)

  pinmux:
    description:
      The list of numeric pin ids and their mux settings that properties in=
 the
      node apply to (either this, "pins" or "groups" have to be specified)
    $ref: /schemas/types.yaml#/definitions/uint32-array

  pinctrl-pin-array:
    $ref: /schemas/types.yaml#/definitions/uint32-array

function cannot be a number like that, it is intended to be string such as
"spi" or "uart0".

E.g.

         rgmii_pins: rgmii_pinmux {
             pins =3D <42 43 44 45 46 47 48 49 50 51 52 53>;
             function =3D "rgmii";
         };

This also makes sense for at least BCM6846 because the include file
have things like this:

        b_wan_early_txen_pin_4: b_wan_early_txen_pinmux {
            pins =3D <4>;
            function =3D <1>;
        };

        b_wan_nco_1pps_sig_pin_6: b_wan_nco_1pps_sig_pinmux {
            pins =3D <6>;
            function =3D <2>;
        };

Completely different function numbers, still both are related to WAN,
which is what pin control refers to as a function.

I do understand that the "function" number is actually just a mux setting
for that pin. But this isn't very standardized or very helpful.

Also, we don't really want to see more custom properties such as
brcm,function  =3D <2>; here either.

What you can do, if you insist to just use magic numbers is to combine
them.

#define BCA_PINMUX(function,pin) ((function << 16)|pin)

         rgmii_pins: rgmii-pinmux-pins {
             pinmux =3D <BCA_PINMUX(1,42), BCA_PINMUX(1, 43),
BCA_PINMUX(1, 44) ....>;
         };

This type of pattern in creating per-pin 32bit values in the pinmux
attribute is acceptable and found in other drivers, and the driver
can then decompose this and use it to poke the registers.

If your tool can output something like that then it can be done.

Yours,
Linus Walleij

