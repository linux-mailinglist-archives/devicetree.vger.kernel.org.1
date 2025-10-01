Return-Path: <devicetree+bounces-223128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2AFBB1609
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 19:38:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 598A51707C5
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 17:38:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7CF2D3749;
	Wed,  1 Oct 2025 17:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="QWDbGHXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f100.google.com (mail-io1-f100.google.com [209.85.166.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CB92D239B
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759340298; cv=none; b=LRAPk1qIhKUoWNdx414yCleTZXwjYt66XfNJO/UnOCC1JnAU1JsM5zvJkRiLgWtjNpxi05A2173eRn6A6c5LB6Ab5Rlzkm0LJ0gTf65Ht/NTqa/FKNA3GprsIcxDCN1ZXUcMM8OooUwSd0cKfeKimc0/w3jLidGuf/UD9RF8dWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759340298; c=relaxed/simple;
	bh=W77FuibFVIT3KKWU2PnFFzV6BSTT+fuhPy1yc1hbK+s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RUYkoIeoDHjSKcvvrvMdRcw1Yu7tZoP5dzEFdY+VEC2tWWWSOR633U7UNzoL2cgHCAuUwwnG+bqk9ZEUMMlVWXb/O+M298/Cew5y3pmb+g2M2jfgw30I8/9JPKjHCiYJ1LgLq6ZAFMWWDL/GpU4iHeJ4MXeiPIV3LoWi9gUtNdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=QWDbGHXq; arc=none smtp.client-ip=209.85.166.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-io1-f100.google.com with SMTP id ca18e2360f4ac-911afafcc20so3873239f.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 10:38:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759340296; x=1759945096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aVnmdxBfhRJZEN86qBBOR/lkyF07QvdyR/FEGpNpxJI=;
        b=V0hT9tKDvH/wlksKyoor71N1eyGuCw6dElEpatJ8o4JHuEnJX0LNmo0Vobnv3JUm1q
         GFly1BJNb8wXHx+CMXnHCQZYI2uqmAYqvn4Nw6UMCy0MMkwL3T/deuGfW5Rd6W10j5TO
         p8sTPOURwaGhL7xIjVisSBCURzYHj00HfXj6RfzTjE6tOA3Vz+H5/WEoR7a0WZUlzl9i
         P4vbrhdI34vJMe8vKktI1dhxpj3pgeVciOs/YjG/a3nO5a8CwMsioc56WWUXyEon5EQ1
         zKHJt2au4gLChLm0FgjpKrbDzPiVJ1kADKiYZLXx85hrg6gO4knYo0Few9yU98QMG6uC
         aMVA==
X-Forwarded-Encrypted: i=1; AJvYcCXdmjIdX50bmmoSNsATKYyj37wBj9MRpEN8cs5B578d86p0dcKXz0v2EaMDbwFNsle/YbDfdAFkUgY8@vger.kernel.org
X-Gm-Message-State: AOJu0YzHmwZAdlKhN4SJgbNpCM+UMZnJW2j7MFr8564w0Mpr8bpGP/5y
	/aPBVphe147d+B/REvruQW7fMYdb/EsrRHkbiGNHi2CSv9oTj0vbKd6eWiUpt8+ZIo+8IL8LNgQ
	QVUKg+Ktj4wrUs7tzTy+LPVhQUXC8UjGhPCY+8+uVUY5AEU6HdkfecOwQq362ofdifyyLeASqmu
	PQ6UKesKGNNNoNZ5p7i1Yc5KvRZdYoTEAfyIUs8sksoAFCccq1hW33WY21I95p17Bd6q3si76lz
	WZ1shtr1PoxFxvkAQ==
X-Gm-Gg: ASbGncuiiGHobbfCIjQpp58PBUcAf4O2p8W/pfkEz5j7EifOlf0Bepn2K2IZkMZ70G1
	04dKww4xYi/yCFjElVw/MEsMn8TQZpz/+pTjXc85DZvh595Gg2s2k5JxiOs/oglGwvz5FIXGqaH
	iwt1Vj1eOhmscc3V+wKrSjhBsUQf4MH0TFMu6MZi4ZT9qDvGJ9UH7Lu4vMfpKhEEc6pO24/zHfP
	3O7bGVh0vg6EBowlOzOXPEdrA075vVmBgrGV6oP6jH4s2Txakmpn2+b5ATLKnaas1QjIOSCiStL
	2JxkfX8vlb9TRtEkIMYtJIL3r17KC2w0DL/n8+ruT3P0PI42JqnySoYeZTHBUbY3II03DaueIyI
	WjfZD8Lnqm59M1Z9IhzlMNXWaDhT4CGW0hFTmJfY0IK6ahAvGnXW1oUKMYH67nDNLo2NWTym52L
	kpITHtI2fq
X-Google-Smtp-Source: AGHT+IG9WKuCeqQ1WwaJzt1koWB5TDISdRrDe9caXyqRoECFlWEfL85xcLH8oRHhFU+8HmAkRgbzrfu2EBFz
X-Received: by 2002:a05:6e02:17c7:b0:425:e850:b2e3 with SMTP id e9e14a558f8ab-42d81634e74mr67412585ab.32.1759340296043;
        Wed, 01 Oct 2025 10:38:16 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-101.dlp.protect.broadcom.com. [144.49.247.101])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-42d8b201f70sm197695ab.2.2025.10.01.10.38.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Oct 2025 10:38:16 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-738a7fc9901so2575567b3.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 10:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759340292; x=1759945092; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aVnmdxBfhRJZEN86qBBOR/lkyF07QvdyR/FEGpNpxJI=;
        b=QWDbGHXq84fpLUpJelrzwhDGS86h8jhrDLJlmYr7evIvw2c52Li/b4RwPCOzAzEFQD
         uhBzz+klII7YC6nxxC6WMoEFleRlV3e1iwmrMBAUVwyUyXgRP5zXTzcnJ1ApxQ1Cg0FE
         8lQELuuMyL/YmAW3a6TEzl2rUlW0/HmtzyZ+Q=
X-Forwarded-Encrypted: i=1; AJvYcCU34jXI+DvHXchc0OhFOSAxEFPIX9h1/vARn+OD9kRS+gKEKTyjy8/gmZaKgtcIs5cXXWuGvLG8lEsu@vger.kernel.org
X-Received: by 2002:a05:690e:4285:20b0:635:4ecc:fc26 with SMTP id 956f58d0204a3-63b6ff755c0mr5143851d50.46.1759340292062;
        Wed, 01 Oct 2025 10:38:12 -0700 (PDT)
X-Received: by 2002:a05:690e:4285:20b0:635:4ecc:fc26 with SMTP id
 956f58d0204a3-63b6ff755c0mr5143815d50.46.1759340291477; Wed, 01 Oct 2025
 10:38:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930-bcmbca-pinctrl-v1-0-73218459a094@linaro.org>
 <CAHi4H7HLNu9YV8+dXshFigvjfMrYL+kGz5xWwab8L1nnefohaQ@mail.gmail.com> <CACRpkdaAUXpYi7Z+zgZDhLiJiSUAndLhPMA5YOvnk2GGYOoj4A@mail.gmail.com>
In-Reply-To: <CACRpkdaAUXpYi7Z+zgZDhLiJiSUAndLhPMA5YOvnk2GGYOoj4A@mail.gmail.com>
From: William Zhang <william.zhang@broadcom.com>
Date: Wed, 1 Oct 2025 10:37:59 -0700
X-Gm-Features: AS18NWA6pejbS7tvlHJRtmGCtfW4_YPokKJYEjqHmo4ZNMA4_3jLY2KTt9SQtKc
Message-ID: <CAHi4H7EzydzKRZPMM-VGOJ8A2RxfEYb5umuBvBEceiwj-8KTrA@mail.gmail.com>
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
	boundary="0000000000002d8ec806401c55af"

--0000000000002d8ec806401c55af
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 12:59=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> On Wed, Oct 1, 2025 at 8:43=E2=80=AFAM William Zhang <william.zhang@broad=
com.com> wrote:
>
> > I believe you have the access to Broadcom reference software and there
> > is a pinctrl driver we
> > use(bcmdrivers/opensource/misc/bca_pinctrl/impl1/pinctrl-bcmbca.c) in
> > ref sw.
>
> Yes I have looked at it, I generated the pin control groups from the
> device tree used with this driver.
>
> That driver is in a very bad shape, e.g. (just as an example):
> static int bcmbca_pmx_set(struct pinctrl_dev *pctldev, unsigned
> func_selector, unsigned group_selector)
> {
> #define LOAD_MUX_REG_CMD        0x21
> #define PINMUX_DATA_SHIFT       12
>
>     struct bcmbca_pinctrl *pc =3D pinctrl_dev_get_drvdata(pctldev);
>     volatile u32 __iomem *test_port_block_data_msb =3D pc->base;
>     volatile u32 __iomem *test_port_block_data_lsb =3D
> test_port_block_data_msb + 1;
>     volatile u32 __iomem *test_port_cmd            =3D
> test_port_block_data_lsb + 1;
>     u32 tp_blk_data_lsb;
>
>     tp_blk_data_lsb =3D group_selector;
>     tp_blk_data_lsb |=3D (func_selector << PINMUX_DATA_SHIFT);
>     *test_port_block_data_msb =3D 0;
>     *test_port_block_data_lsb =3D tp_blk_data_lsb;
>     *test_port_cmd =3D LOAD_MUX_REG_CMD;
>
>     return 0;
> }
>
> This is not using writel() macros etc. Essentially the same code is found
> in the bcm4908 driver, but cleaned up.
Obviously a few places need clean-up and fix-up to meet the upstream standa=
rd.

>
> > The advantage of that driver is that we automatically
> > generate all the pinmux pin and function info into the
> > <soc>_pinctrl.dtsi and the pinctrl driver is designed in very generic
> > way and does not have per chip pinmux function/group info in the
> > driver code but rather from the device tree.  So for every chip, all
> > we need to do is just generating the pinctrl.dtsi and no source code
> > change is needed.
>
> But if you can generate say 6846_pinctrl.dtsi, I guess from some
> HW data that the public has no access to, then why can't you
> generate bcm6846.c with the same contents as C structs?
>
We could but we don't prefer to do that because we want the driver to
be generic and not requiring any change to support a new chip

> > I understand this is not what a typical upstream
> > pinctrl driver does but it does the job. Have you looked into that
> > ref sw driver and what do you think that approach versus the current
> > upstream driver?  Do you see any issue with that driver?  As far as I
> > can tell,  it should work but we may have to leave 4908 with the
> > existing driver and pinmux binding.
>
> The downstream pinctrl-bcmbca.c driver is mostly using a
> "one group per pin" approach.
>
> This is very convenient for people doing development from HW
> descriptions and thinking about pins as being muxable on an
> individual basis.
>
> Some drivers use this approach, the most notorious being
> pinctrl-single.c.
>
> But it has some real downsides, because it totally ignores
> the fact that the hardware is *clearly* designed to mux pins
> in groups and not individually.
>
> This is one example from 6846_pinctrl.dtsi:
>
>         i2c_scl_pin_68: i2c_scl_pinmux {
>             pins =3D <68>;
>             function =3D <0>;
>         };
>
>         i2c_sda_pin_69: i2c_sda_pinmux {
>             pins =3D <69>;
>             function =3D <0>;
>         };
>
> Why would you want to mux these two pins individually? They
> are clearly not meant to be muxed individually, especially given
> that they can only be muxed out on pins (68, 69), nowhere
> else! If you want SCL then you want SDA as well and it's clearly
> thought to be muxed in a pair by the HW designer.
>
> But the DTSI description, from wherever it is generated, does not
> create a group out of this.
>
> In other cases, it is done properly:
>
>         rgmii_pins: rgmii_pinmux {
>             pins =3D <42 43 44 45 46 47 48 49 50 51 52 53>;
>             function =3D <1>;
>         };
>
> OK so this muxes all the pins for RGMII into function 1 in one go.
>
> In my driver this becomes:
>
>         pins_rgmii: rgmii-pins {
>                 function =3D "rgmii";
>                 groups =3D "rgmii_grp";
>         };
>
> The contents of rgmii_grp is contained in the driver, and this is
> roughly equivalent to just putting the data in C instead of in a DTSI.
>
> If all pins were properly grouped in the DTSI file such as
> the RGMII pins, I could generate my .c file from the DTSI
> file, but right now I can't,
>
> So clearly the DTSI generator is either not entirely sound or
> using dubious HW info. Information has been lost in the design
> system. Someone had a good vision of how this should work but
> it is broken somewhere in the design information flow process.
>
> I understand why Rafal went with the group-oriented approach because
> clearly there are groups in the hardware, but the generated .dtsi is in
> most cases not properly describing these groups.
>
> If someone in Broadcom is interested in right now starting to actively
> work on all the BCA drivers using automatic generation of groups
> and include files, perhaps C files as suggested, I'm happy to help
> out and integrate this with my driver. But then that needs to be
> active and seeking advice from the actual HW designer on
> what the grouping should actually be, so this is properly
> reflected all the way, not just giving the illusion of a generated
> HW description flow which in practice loses all the group
> information.
>
> I personally can't work with your HW data generator which is
> clearly faulty and I need this supported now, so for me the best
> approach is currently to do the BCM4908 approach and encode the
> groups manually by inspecting this bogus DTSI file and correct it to
> what was probably the HW designers intention, such as
> the I2C pins being muxed together as a group. Reverse-engineering
> is sometimes necessary.
>
You are absolutely right that the current dtsi does not group the pin
properly for certain interfaces such as i2c. The tool has the same
goal to combine interfaces in the group whenever possible. It is just
we don't have the correct group config for certain interface when
generating the dtsi.   If I fix all these group issues and provide the
new dtsi files and I will be the contact if you have any question
regarding generator files,  would it be possible for you to use and
upstream that driver?

> Yours,
> Linus Walleij

--0000000000002d8ec806401c55af
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
dTfl0Sbvftt9xPE0AD22dItMek4nv0+yxua0J2O9DGcwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEH
ATAcBgkqhkiG9w0BCQUxDxcNMjUxMDAxMTczODEyWjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFl
AwQBKjALBglghkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzAL
BglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEAJ/yk/B5ZQ7rUblgcJDhTJC/j56gwULNlyW82
U9xKYeWMz/nIhinrH3G9hoKt9K+2IpM36KPfWqkTsRCtZB6IpYiHfSS62GorLv3+pI+qhmTEg1rd
nNAlShD0Xpk6px/gGRqvh4x4u4zpMTNB8pz+EnH2XnPUxj8YNOvZW7ijhT87RmrjYoUH6uywuDwm
UUF92UC/QmsRmi0FqjlHCU+Fs1mpVinm3CDGz1YSJmbOmeQd03hWAZnN6rf4IFMY5lry44qPccTI
rSuEAjk48HnWjICzH9GbIn5yKmVNw89xU36e5sGW1WmSnsdpMvKVjDZTdgO36XvvfcgllASIWtk8
Rg==
--0000000000002d8ec806401c55af--

