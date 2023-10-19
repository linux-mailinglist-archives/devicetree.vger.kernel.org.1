Return-Path: <devicetree+bounces-10060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FE77CF87A
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 60C1128208F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E511EB51;
	Thu, 19 Oct 2023 12:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C381EB44
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:14:12 +0000 (UTC)
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B781CA3;
	Thu, 19 Oct 2023 05:14:10 -0700 (PDT)
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-5a82c2eb50cso78048217b3.2;
        Thu, 19 Oct 2023 05:14:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697717649; x=1698322449;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6WqAqmbndJXP2lrJcNZQi+DLgp/pZpxR+7VJXPDF4bI=;
        b=U1s3nBOvlB5EOUher6fFhNQ4RQ+JE2LvCt1tCz3mR1KDZ0S7JXac1AsvC2stvNW0H8
         1DVbQ8pbIVw1jtYA3EjG3Hg2l+r5GtnnmiOx3dSXqW6docgtH23KobWAa9xX+2b+jaRZ
         aBmhRsdbcCuUZZawDmi6EZiE2IPCDm51N0ybR3n/9wivwmMf4haztyhewMEatjfc4uFr
         DOQA806WhpmBqots3hBi4uK9dZz5IYDopFuEQZ3wnZve6ax3dCTSjqiOE3LS0Ha+LlF2
         sT7pBSv5G5LZzjG6Drh/rKy52QBt9WTLS6F860nik6lW/BY+FyQbci6rkLh+xhdqHY15
         ygjg==
X-Gm-Message-State: AOJu0Yw13rZG3kdZBsltx1ia5dcZuFBBMYBYifpRpY0pKEPnHs17Lscy
	rxtQKv9+8zDPilhNXNun11CGqlDzNXmQFQ==
X-Google-Smtp-Source: AGHT+IESFqwAL2u+Hzirth8Pb7wc7vID0ThqGp2ZGgudhOOSgDoqDE+DDigaPN14dSNpK5UKGnr2MA==
X-Received: by 2002:a05:690c:fcb:b0:5a7:b797:d1e4 with SMTP id dg11-20020a05690c0fcb00b005a7b797d1e4mr2217702ywb.21.1697717649515;
        Thu, 19 Oct 2023 05:14:09 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id u10-20020a81470a000000b0057a44e20fb8sm2375905ywa.73.2023.10.19.05.14.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 05:14:09 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5a7fb84f6ceso97332667b3.1;
        Thu, 19 Oct 2023 05:14:09 -0700 (PDT)
X-Received: by 2002:a81:498b:0:b0:5a8:2d2b:ca9c with SMTP id
 w133-20020a81498b000000b005a82d2bca9cmr2237532ywa.32.1697717648872; Thu, 19
 Oct 2023 05:14:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp> <bde5805e90c9e1338becba6f922c23d1b2e4fb21.1697199949.git.ysato@users.sourceforge.jp>
In-Reply-To: <bde5805e90c9e1338becba6f922c23d1b2e4fb21.1697199949.git.ysato@users.sourceforge.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Oct 2023 14:13:57 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVmczSNVrkLD1yYjg5qdyDZYj66FjE+9r8THE7gkFHzCA@mail.gmail.com>
Message-ID: <CAMuHMdVmczSNVrkLD1yYjg5qdyDZYj66FjE+9r8THE7gkFHzCA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 30/35] arch/sh/boot/dts: RTS7751R2D Plus DeviceTree.
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, glaubitz@physik.fu-berlin.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sato-san,

On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
<ysato@users.sourceforge.jp> wrote:
> Renesas RTS7751R2D Plus devicetree.
>
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/sh/boot/dts/rts7751r2dplus.dts

> +       oscillator {
> +               clock-frequency =3D <22222222>;
> +       };

When adding or overriding properties to/in existing device nodes,
please refer to the nodes using symbolic labels.  I.e. please add

    &xtal {
                clock-frequency =3D <22222222>;
     };

at the bottom of this file instead.

> +       display@1,0 {
> +               compatible =3D "smi,sm501";
> +               reg =3D <0x10000000 0x03e00000
> +                      0x13e00000 0x00200000>;
> +               interrupt-parent =3D <&r2dintc>;
> +               interrupts =3D <4>;
> +               mode =3D "640x480-16@60";
> +               little-endian;
> +               smi,devices =3D "usb-host","uart0";
> +               interrupt-name =3D "sm501";
> +               route =3D "own";
> +               swap-fb-endian;
> +
> +               crt {
> +                       flags =3D "use_init_mode",
> +                               "use_hwcursor",
> +                               "use_hwaccel",
> +                               "disable_at_exit";

"make dtbs_check" does not like flags being non-integer.
Might be an artefact of having only plain text bindings in
Documentation/devicetree/bindings/display/sm501fb.txt

> +               };
> +
> +               panel {
> +                       bpp =3D <16>;
> +                       edid =3D [00 ff ff ff ff ff ff 00 00 00 00 00 00 =
00 00 00
> +                               00 00 01 04 00 00 00 00 00 00 00 00 00 00=
 00 00
> +                               00 00 00 00 00 00 00 00 00 00 00 00 00 00=
 00 00
> +                               00 00 00 00 00 00 f0 0a 80 fb 20 e0 25 10=
 32 60
> +                               02 00 00 00 00 00 00 06 00 00 00 00 00 00=
 00 00
> +                               00 00 00 00 00 00 00 00 00 00 00 00 00 00=
 00 00
> +                               00 00 00 00 00 00 00 00 00 00 00 00 00 00=
 00 00
> +                               00 00 00 00 00 00 00 00 00 00 00 00 00 00=
 00 bd];
> +                       flags =3D "use_init_mode",
> +                               "use_hwcursor",
> +                               "use_hwaccel",
> +                               "disable_at_exit";

Likewise.

> +               };
> +       };
> +
> +       compact-flash@b4001000 {
> +               compatible =3D "renesas,rts7751r2d-ata", "ata-generic";
> +               reg =3D <0xb4001000 0x0e>, <0xb400080c 2>;
> +               reg-shift =3D <1>;
> +               interrupt-parent =3D <&r2dintc>;
> +               interrupts =3D <1>;
> +       };
> +
> +       flash@0 {
> +               compatible =3D "cfi-flash";
> +               reg =3D <0x00000000 0x02000000>;
> +               device-width =3D <2>;
> +               #address-cells =3D <1>;
> +               #size-cells =3D <1>;
> +
> +               partition@0 {
> +                       label =3D "U-Boot";
> +                       reg =3D <0x00000000 0x00040000>;
> +               };
> +
> +               partition@1 {
> +                       label =3D "Environemt";

Environment

> +                       reg =3D <0x00040000 0x00040000>;
> +               };
> +
> +               partition@2 {
> +                       label =3D "Kernel";
> +                       reg =3D <0x00080000 0x001c0000>;
> +               };
> +
> +               partition@3 {
> +                       label =3D "Flash_FS";
> +                       reg =3D <0x00240000 0x00dc0000>;
> +               };
> +       };
> +
> +       soc {
> +               clock-controller@ffc00000 {
> +                       renesas,mode =3D <5>;
> +               };

    &cpg {
                renesas,mode =3D <5>;
    };

At the bottom of this file.

> +
> +               pci@fe200000 {

Likewise, "&pcic { ... };" at the bottom of this file.

> +                       compatible =3D "renesas,pci-sh7751";

No need to override the compatible property, it is already set in
sh7751.dtsi.

> +                       interrupt-parent =3D <&r2dintc>;
> +                       renesas,bcr1 =3D <0x40080000>;
> +                       renesas,intm =3D <0x0000c3ff>;
> +                       renesas,aintm =3D <0x0000380f>;
> +                       renesas,config =3D <1 0xfb900047>, <4 0xab000001>=
;
> +                       renesas,mcrmask =3D <0x40000004>;
> +
> +                       interrupt-map =3D <0x0000 0 0 1 &r2dintc 9>,
> +                                       <0x0000 0 0 2 &r2dintc 10>,
> +                                       <0x0000 0 0 3 &r2dintc 3>,
> +                                       <0x0000 0 0 4 &r2dintc 0>,
> +                                       <0x0800 0 0 1 &r2dintc 10>,
> +                                       <0x0800 0 0 2 &r2dintc 3>,
> +                                       <0x0800 0 0 3 &r2dintc 0>,
> +                                       <0x0800 0 0 4 &r2dintc 9>,
> +                                       <0x1000 0 0 1 &r2dintc 3>,
> +                                       <0x1000 0 0 2 &r2dintc 0>,
> +                                       <0x1000 0 0 3 &r2dintc 9>,
> +                                       <0x1000 0 0 4 &r2dintc 10>;
> +                       interrupt-map-mask =3D <0x1800 0 0 7>;
> +               };
> +       };
> +};

Some of my comments apply to landisk.dts and usl-5p.dts, too.
And please run "make dtbs_check" ;-)

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

