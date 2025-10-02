Return-Path: <devicetree+bounces-223286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B129BB29F6
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 08:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B1CFA19C3FC9
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 06:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839FE28751E;
	Thu,  2 Oct 2025 06:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="bq0xlT5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f99.google.com (mail-io1-f99.google.com [209.85.166.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61BB7263B
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 06:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759386899; cv=none; b=MIw0uO72CsI3uNSwqRPTJNKghYJVEXPWUWrM80bCPSmYSo19zokcvbGYMWdHPJ8K548QZUH8XcJSx910hKhhc90g4mYf29HqAHGFe0KQMP+ls3t7pFiMBDilQlAkvD0bqKhkwd+vwXjSlp6YPYqU+YI2bb4MSOfnY3nka2X+0bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759386899; c=relaxed/simple;
	bh=NJyPnxpVsgmFLBDsy8YmRekltdd+leiNy7u1f31QyHg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uIFJ0/RxOnkKRnTur7YW440e6qYWHihzydE5zQFijAF1qB7whSSPJqr/aB9up5zTDpFoAaMAOz33nWPNhE6K8y9Ho+EdpitGwMN5Uzk6a1WmwveVqEJefICxd4NdSdwDcjFVViQWh29y7/AxAjxhNh9eqToBJ+/YPxBP9/N5qmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=bq0xlT5m; arc=none smtp.client-ip=209.85.166.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f99.google.com with SMTP id ca18e2360f4ac-91f6ccdbfc8so35439939f.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:34:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759386896; x=1759991696;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=59MV9ZfoTNXp/gpCjxn6J8E7cFipWundexOtTvTHwUg=;
        b=bUVq9XL9+i6x/zRJZhSWIsLt6cb+KO96OiihZ2vz1QUJyRPuEivAgM/OKguGwRss49
         lG8myHsx05U14PDwhx3OLqfdsugPxDEHTermiZjZuftTpYK8bupE9screEVpGrYgzt8s
         Kr/r8UoVZ3DbmlIYIAS4RePOw7U5wXmjMKQ+27rLPouu5gD+paLfNmHIDdLNt6yIrj3T
         Av7IeHCXLCESu2gw6cUNjvUSMylLRE8+d+grSVhNBNaI6QpyBPwuH/+T5xHAAzBEvwlL
         IkWw60nxHVFvocRgpkOvWsck3m02zFFYfqNrdAMhxQQY68misepBfqo8gre0GmFP2PJQ
         p+6w==
X-Forwarded-Encrypted: i=1; AJvYcCVuS6UXkYkROnr6Kc+91tZbmmESYijihHUkuweLNyuwWqLp79Y4kQFdEZnU9O2pS8as/atorZHbIGa5@vger.kernel.org
X-Gm-Message-State: AOJu0YzuPWH0XJMUjXlDd2Biph5q/9++M2bna8wE2XK1cUDyHiVLBYaJ
	UNDcLCjmvas+9vLWX5m9v7Za4Q6QnVW2lWpbhBJBjfFBgwfOu5VVxdk2p2ZUOQtMo9mqDiyw4YR
	d4ePAN/4lw5eDeFgYetFWm4UejwwH8REtImWHYqaL6fxn5sCk9IpVsCxi7GrORiQUCl8Rs30CjW
	eWXVK8ErHwaTtmK+lgc/gw8RRALrlFGlzBJM7S+FZLvY8CMaUVdLsIsC4kECwao1QLbpeoushO7
	+RY6kZmYEBlz83EJQ==
X-Gm-Gg: ASbGncshuHrBiMi8xylmrzngO75oEDTtcdlWc9ca1v3oxzUKCyOnSfffZG94a/D1a9A
	1Wli3wDqSRppVThkArnLOrRiOo98UoPbUz5CHNo8ZEiL1LnQ6cNK/cmQf3AentlA7el9oxkj+0U
	dE8iP3vT3ndy6KAYsQdP113Fsg/Z2aY3W/taFXZDVGc2r9F31b8NUwYBdWd0ATn0g6V2BxLVaAH
	lGKg6FJuJoEvqv9cYG2KPO5N8zjo1dEOWSaauf9iEnIrlhmJcKe9NZwgq4DpTq2OX3Tv4drckpG
	GDl+d2YlzOZVEZqTEEcNeSzcCiAn+x6P/SAhBU27vUnHPi8j3fqPlWnKS2iJzetp16C9U1bKD26
	eHAYDoe5X5G3ZFFSTiTOyMDH6WdmrVtQD0FVlD+hnrWjWxFdcQEpENcAb7rogetc/PI22l7lin+
	Kh33Ivzz8I
X-Google-Smtp-Source: AGHT+IHFx2Bfje9r/W9jWlK+T4yljet1ocStKMK3kvy1OO55yRVES0tZVQxxvRL/M0NxC9ZlNK7Zi3jV2EmP
X-Received: by 2002:a05:6e02:1486:b0:427:a3b1:316f with SMTP id e9e14a558f8ab-42d81612602mr84252775ab.13.1759386896523;
        Wed, 01 Oct 2025 23:34:56 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-100.dlp.protect.broadcom.com. [144.49.247.100])
        by smtp-relay.gmail.com with ESMTPS id 8926c6da1cb9f-57b5ed26c19sm105084173.23.2025.10.01.23.34.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Oct 2025 23:34:56 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-60fb0c64421so1513439d50.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 23:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759386895; x=1759991695; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=59MV9ZfoTNXp/gpCjxn6J8E7cFipWundexOtTvTHwUg=;
        b=bq0xlT5mClhMy2/ayfxlsZpAkIVao7RFVhtXfeOZTIiI6DEmL/ZSS7vt4C1VdWxyQ7
         CXe/y2SZjDdKnAF4hZ+xmTuucs+gOPfABFZ3IYDJNjCwN5974EZqHrFscdwrE0WGvJCt
         JwQKGMmTI6vTjJQi0LlQ8q2PT860NMOH/ETjY=
X-Forwarded-Encrypted: i=1; AJvYcCWjXhhEXxph/D5tHBIGZQW9wU3EFvhicq7LliEU9AW/c7U5IHBedMSufr2mh3z7txl83dDgyawV9lnM@vger.kernel.org
X-Received: by 2002:a05:690e:428e:20b0:636:d2d5:87dd with SMTP id 956f58d0204a3-63b6feb2b4bmr7880692d50.12.1759386895487;
        Wed, 01 Oct 2025 23:34:55 -0700 (PDT)
X-Received: by 2002:a05:690e:428e:20b0:636:d2d5:87dd with SMTP id
 956f58d0204a3-63b6feb2b4bmr7880681d50.12.1759386895049; Wed, 01 Oct 2025
 23:34:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
 <CAHi4H7HLNu9YV8+dXshFigvjfMrYL+kGz5xWwab8L1nnefohaQ@mail.gmail.com>
 <CACRpkdaAUXpYi7Z+zgZDhLiJiSUAndLhPMA5YOvnk2GGYOoj4A@mail.gmail.com>
 <CAHi4H7EzydzKRZPMM-VGOJ8A2RxfEYb5umuBvBEceiwj-8KTrA@mail.gmail.com> <CACRpkdbmM0nND05ODmEa4J2y6JS6getB9s7h9TXywyED5gqh0A@mail.gmail.com>
In-Reply-To: <CACRpkdbmM0nND05ODmEa4J2y6JS6getB9s7h9TXywyED5gqh0A@mail.gmail.com>
From: William Zhang <william.zhang@broadcom.com>
Date: Wed, 1 Oct 2025 23:34:42 -0700
X-Gm-Features: AS18NWDYx2wrXoCRecHf_wIYVwB0dy-hppm8FlCmH81SbOL8wcFb9Qe3S450H2A
Message-ID: <CAHi4H7GnCP3H--111gwMrEjEoLkupEfRYWCR9f-H-KDZf_jJLg@mail.gmail.com>
Subject: Re: [PATCH 0/6] pinctrl: bcmbca: Refactor and add BCM6846
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000f369570640272ed5"

--000000000000f369570640272ed5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 3:43=E2=80=AFPM Linus Walleij <linus.walleij@linaro.=
org> wrote:
>
> On Wed, Oct 1, 2025 at 7:38=E2=80=AFPM William Zhang <william.zhang@broad=
com.com> wrote:
>
> > > But if you can generate say 6846_pinctrl.dtsi, I guess from some
> > > HW data that the public has no access to, then why can't you
> > > generate bcm6846.c with the same contents as C structs?
> > >
> > We could but we don't prefer to do that because we want the driver to
> > be generic and not requiring any change to support a new chip
>
> But you will be generating big DTSI files.
>
The current DTSI files include many pins that are not really used and
it can be cleaned up to reduce the size for sure.

> And it is not really the ambition of the device tree to be used as a hard=
ware
> abstraction layer containing a lot of per-SoC information. The device
> tree is supposed to describe and configure the hardware, not
> abstract it. There is a difference.
>
> (The DT maintainers can hit me in the head about this but I have
> certainly heard things like this before.)
>
> Alas, there is no hard definition of what this means and indeed
> some drivers in the kernel does define groups and functions
> in the device tree instead of using C files. So that happens too.
>
> > You are absolutely right that the current dtsi does not group the pin
> > properly for certain interfaces such as i2c. The tool has the same
> > goal to combine interfaces in the group whenever possible. It is just
> > we don't have the correct group config for certain interface when
> > generating the dtsi.   If I fix all these group issues and provide the
> > new dtsi files and I will be the contact if you have any question
> > regarding generator files,  would it be possible for you to use and
> > upstream that driver?
>
> I assume you fear having to follow the pattern and hand-code
> a C file for every BCA SoC and never get done. I understand that.
> Also I try to live by the stance "rough consensus and running
> code" and not be too strong in pushing things my way.
>
> We can do this if the files follows some basic process.
> You still need to use proper bindings.
> This:
>
> >         rgmii_pins: rgmii_pinmux {
> >             pins =3D <42 43 44 45 46 47 48 49 50 51 52 53>;
> >             function =3D <1>;
> >         };
>
> This isn't proper bindings.
> Documentation/devicetree/bindings/pinctrl/pinmux-node.yaml
> describe the bindings you can use.
>
> properties:
>   function:
>     $ref: /schemas/types.yaml#/definitions/string
>     description: The mux function to select
>
>   pins:
>     oneOf:
>       - $ref: /schemas/types.yaml#/definitions/uint32-array
>       - $ref: /schemas/types.yaml#/definitions/string-array
>     description:
>       The list of pin identifiers that properties in the node apply to. T=
he
>       specific binding for the hardware defines whether the entries are i=
ntegers
>       or strings, and their meaning.
>
>   groups:
>     $ref: /schemas/types.yaml#/definitions/string-array
>     description:
>       the group to apply the properties to, if the driver supports
>       configuration of whole groups rather than individual pins (either
>       this, "pins" or "pinmux" has to be specified)
>
>   pinmux:
>     description:
>       The list of numeric pin ids and their mux settings that properties =
in the
>       node apply to (either this, "pins" or "groups" have to be specified=
)
>     $ref: /schemas/types.yaml#/definitions/uint32-array
>
>   pinctrl-pin-array:
>     $ref: /schemas/types.yaml#/definitions/uint32-array
>
> function cannot be a number like that, it is intended to be string such a=
s
> "spi" or "uart0".
>
> E.g.
>
>          rgmii_pins: rgmii_pinmux {
>              pins =3D <42 43 44 45 46 47 48 49 50 51 52 53>;
>              function =3D "rgmii";
>          };
>
Thanks for pointing this out.  I didn't realize that function has to
be a string.  But I did see some other vendor use something like
<vendor>,func =3D <1> but I guess it is not encouraged any more.
But using a string for the function also means we have to add the
table/mapping in the driver code to translate the string to the
function number.  Then this defeats the goal of not changing the code.

> This also makes sense for at least BCM6846 because the include file
> have things like this:
>
>         b_wan_early_txen_pin_4: b_wan_early_txen_pinmux {
>             pins =3D <4>;
>             function =3D <1>;
>         };
>
>         b_wan_nco_1pps_sig_pin_6: b_wan_nco_1pps_sig_pinmux {
>             pins =3D <6>;
>             function =3D <2>;
>         };
>
> Completely different function numbers, still both are related to WAN,
> which is what pin control refers to as a function.
>
Well this is just how the SoC assigns the pin and its internal
function.  Although they both are related WAN block, they serve
completely different purposes and probably for different type of WAN
interface and may not be used at the same time.  So different function
numbers seems reasonable to me.

> I do understand that the "function" number is actually just a mux setting
> for that pin. But this isn't very standardized or very helpful.
>
> Also, we don't really want to see more custom properties such as
> brcm,function  =3D <2>; here either.
>
> What you can do, if you insist to just use magic numbers is to combine
> them.
>
> #define BCA_PINMUX(function,pin) ((function << 16)|pin)
>
>          rgmii_pins: rgmii-pinmux-pins {
>              pinmux =3D <BCA_PINMUX(1,42), BCA_PINMUX(1, 43),
> BCA_PINMUX(1, 44) ....>;
>          };
>
> This type of pattern in creating per-pin 32bit values in the pinmux
> attribute is acceptable and found in other drivers, and the driver
> can then decompose this and use it to poke the registers.
>
> If your tool can output something like that then it can be done.
>
Yes I can certainly enhance the tool to generate this format of pinmux
info.  It seems to be a viable path to make the pinmux driver generic
while still meeting pinctrl dts binding requirement.   I can provide
you with an updated the 6846_pinctrl.dtsi file as soon as I can,
hopefully tomorrow.   Would you be willing to try it out?

> Yours,
> Linus Walleij

--000000000000f369570640272ed5
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
PRi27wH/XHTDMdyL0Org+kxniXue6MSNJvcQwaLO/UQrmgTygBlVGa+Qg9ZFfS00xvuqeYH7tImO
48WiXeu9rgn5KTH0IWP1+R74KIgxJQ+65la+caZvxwC9V3ik5p/LOGA2qS4GEjGuaYF8QKhRTR4h
/QBSktqZLbzVxpjJXrqFTA2BLlYRp9hPhqNxbn46WuLufpMWhFtjUoQi/8fRRWRsMAY0o1J0f+kB
6EI8FoxPTOpvuLRonqHIWMHk5YRnDdqJ3G5Oc8zmV+UCAwEAAaOCAd4wggHaMA4GA1UdDwEB/wQE
AwIFoDAMBgNVHRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDov
L3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5Bggr
BgEFBQcwAYYtaHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUG
A1UdIAReMFwwCQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUF
BwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDag
NKAyhjBodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwJQYD
VR0RBB4wHIEad2lsbGlhbS56aGFuZ0Bicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQw
HwYDVR0jBBgwFoAUACk2nlx6ug+vLVAt26AjhRiwoJIwHQYDVR0OBBYEFHjI7pbQZurVKsSRE/a9
7gUEyVCkMA0GCSqGSIb3DQEBCwUAA4ICAQCFA4fU1GnG8sY7kyUXp5tle+VeWveoWb272jPauU5R
w+udkhVXmnR0Kg7RgkCD00PLTKHNRyegXXDMArs3N9NhO3s9eSp9KjDh+h3WuQWCJH3QBHLGW0qE
fyV87wUtBIy/QsHwO4S8OlOZiXECR7V1EGIF6t3s0W+3UzgYeHL+Ttuhda+2wIVY0EbS0eNH9Vob
4YG17VTBBe7hyobXFpd9d1JGENFzIWncPUshOE0Wv7KlkrRc6aBOpL4p5xO1pHi9h9w8utyHkMoV
nefXixkn5YVHnuV/jbSF/IM4Mlqt0E+n/TRp2c0eR+1AauZKENV2syNBo4aMa0BkmikBjLSnDjt/
TYQdwHNWdV495n71idvueWwTFUhUsnudYcnh42eZENopBOYjVu2WhsffyrNz0hsuR85LriqSuBbf
drd9DMo3DgtfJ7hh4sEAhSw/x/Br86rfLBftZMU02htlnkOI9Tp1QuDsr9+MsqY6AjKeXAy67m7H
TVAZ9uyO9N20yU0p7igESOWKR1ccL1TPA1jrSHK18Y75ot5199FNWeE/UKoDKSML39iPZho9XPh/
/RlsfRFiVOPrI5Gwi4YfIfi0jjEWf310/CYEmA5jrp5gUQSdo/+FgfXLKDFiEHCf5b3B1l70r6bR
WkDCNNacYJWZtSp87i6jmw+l5xx7OkEJ9DGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAX
BgNVBAoTEEdsb2JhbFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1F
IENBIDIwMjMCDD2ooFIye/WiO3KgZTANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQg
pa2bLQWsR0scbpxqJpEal6TISgWmfIgvvgK+HjzQdtUwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjUxMDAyMDYzNDU1WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFl
AwQBKjALBglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzAL
BglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAKqCDeWvcNZc2bFmRGJzs/i2ULIfIGOopjXJq
0vegFp9Tt8jg62XIgbxjFFufB5tb2G0K1uPZg5GbwJOCSlFaEd1UdyaAJgr1sMta//6bY1HS15i/
hcYiGSV3tBOn31Ja5cZNy/W2XRtc7YYKH5pZuuRBHkTWTl2dEmmgkyUDdGd9fviFBQ0cS5ealObi
VFyriYY3JUiZlMr9oDDotwfH03GmklJjIQ0uOjlVaV8YZUNtMz9qLu+NWAbWA6idunWLiffC3UnM
v9N/+FX5igw06W71a7Mr+YftAzBVj6jOPQTK94LsWruNkNhHhYynjiIXnLXYB4ws/zxx42wGKdAD
KA==
--000000000000f369570640272ed5--

