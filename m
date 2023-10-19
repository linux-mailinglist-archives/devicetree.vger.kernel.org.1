Return-Path: <devicetree+bounces-10085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F5F7CF8F8
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66F651C20DDC
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B56E1225B7;
	Thu, 19 Oct 2023 12:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OV4/O7pa"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092C8225AD
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:32:17 +0000 (UTC)
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B41DAA4;
	Thu, 19 Oct 2023 05:32:16 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-7a67b9cd230so59519339f.1;
        Thu, 19 Oct 2023 05:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697718736; x=1698323536; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X7ZKdb88F9OVmhByysDzK7lfVXd2xeUigvK2eh/OGkU=;
        b=OV4/O7payAK7BZTlfFr/qiNDiMlxhEvXiXla0bWRh7H/mZCczEXJ7G4pdYW6lpniRk
         xdmm1zz3haWDvm3KGv5B+8LPp/Lep6eaSKrxXWMXk/9XeltNv0Usc7giQxXs/h+FJAjH
         kfKA8kXpGsI73R+ZgF6wp7NfvLkTsxIX08Z2bjwkSB/uTvlQxzMpw9b/Aao773TNJp+p
         htWy73K7jEHSbAi7J3GTIjvQrKxGgp9obSaWFLMM+E1Sn8rkTdI868XaC9sNeG5MVQkh
         +Dvupivc3bPM10kd5S1ZhnqIrd8nfKDQpvpqK9NBvXLh/al/Yo8ZI/zxoqn2KQ+SlEiE
         ExfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697718736; x=1698323536;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X7ZKdb88F9OVmhByysDzK7lfVXd2xeUigvK2eh/OGkU=;
        b=VGz+Ag2/tDIZGvlbu7ke7PpJ5OY8vFQ8eH5oL9izlycR7auE9satJkuWezlmCzgkto
         fNeHqXCwn4hTQ+i8EfUCF7qU9WF+hCKRtyXjE41Qei/sVAp+j5ctPSkBuwvRtaOihGs6
         xFmqbBgzbSnZ+ddt+uJWsAYbkDTzo9iCj6GpVNUwInn4NLWd9maYLrY3iwv8hiXM8P71
         Ki2PWR2xflJUhPJTpSxSA+SK947oIKT6DtD/sQ1qtqAzx7ldM7s/ToMVYRLAFXkJqdGK
         TzfgiDKs02of1C082J/BXR4s9U0clLHim2+5/5ksl3eUkV3XERoWWnnUuJZx1P4Q9a70
         kh3A==
X-Gm-Message-State: AOJu0YxeHDdOCWXO4JIh/Oeni5RjPKscR8ogOMQYKfK2ZMvTTIaEhzzs
	1LGIRRnYvPsG8Vf/E2L5anx9pE3BTQsWp5mDZ5s=
X-Google-Smtp-Source: AGHT+IHnSRS9e+fmLVgAg44h1fdsOqzYZ4JYxU65ANveXcj2YUazObhg7c4JiMACLSaDDmUyQXoSIwsR7xMs9hnJ/sE=
X-Received: by 2002:a05:6602:2e90:b0:792:43b4:dc2 with SMTP id
 m16-20020a0566022e9000b0079243b40dc2mr2406618iow.3.1697718735775; Thu, 19 Oct
 2023 05:32:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231019022300.1588041-1-aford173@gmail.com> <4261115.mogB4TqSGs@steina-w>
In-Reply-To: <4261115.mogB4TqSGs@steina-w>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 19 Oct 2023 07:32:04 -0500
Message-ID: <CAHCN7xLbpbaCa2M7dQfkr1jTGKwn_qmQzRRKB1RfBE5_N7nSzQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: Add NPU Node
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de, 
	aford@beaconembedded.com, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 19, 2023 at 1:00=E2=80=AFAM Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi Adam,
>
> thanks for the patch I tried a similar one.
>
> Am Donnerstag, 19. Oktober 2023, 04:23:00 CEST schrieb Adam Ford:
> > The NPU is based on the Vivante GC8000 and it enumerates as
> >
> >  etnaviv-gpu 38500000.npu: model: GC8000, revision: 8002
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> >
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > b/arch/arm64/boot/dts/freescale/imx8mp.dtsi index
> > c9a610ba4836..1ef8d17726ac 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -2012,6 +2012,25 @@ vpumix_blk_ctrl: blk-ctrl@38330000 {
> >                       interconnect-names =3D "g1", "g2", "vc8000e";
> >               };
> >
> > +             npu: npu@38500000 {
> > +                     compatible =3D "vivante,gc";
> > +                     reg =3D <0x38500000 0x20000>;
>
> Do you have some more information about the actual memory range? RM says =
2MiB,
> but NPU memory map lists up to 0x664.

I do not. The RM lists 3850_0000 - 386F_FFFF, so I should have put an
extra 0 in there.  Sorry about that.  I will fix in the next rev.
>
> > +                     interrupts =3D <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
> > +                     clocks =3D <&clk IMX8MP_CLK_NPU_ROOT>,
> > +                              <&clk IMX8MP_CLK_NPU_ROOT>,
> > +                              <&clk IMX8MP_CLK_ML_AXI>,
> > +                              <&clk IMX8MP_CLK_ML_AHB>;
> > +                     clock-names =3D "core", "shader", "bus", "reg";
> > +                     assigned-clocks =3D <&clk IMX8MP_CLK_ML_CORE>,
> > +                               <&clk IMX8MP_CLK_ML_AXI>,
> > +                               <&clk IMX8MP_CLK_ML_AHB>;
> > +                     assigned-clock-parents =3D <&clk
> IMX8MP_SYS_PLL2_1000M>,
> > +                                      <&clk
> IMX8MP_SYS_PLL1_800M>,
> > +                                      <&clk
> IMX8MP_SYS_PLL1_800M>;
> > +                     assigned-clock-rates =3D <1000000000>,
> <800000000>, <400000000>;
>
> 1GHz for ML_CLK_ROOT is only available in overdrive mode, 800MHz in nomin=
al
> mode. See datasheet IMX8MPIEC Rev 2.1. I don't think it's a good idea to
> configure for overdrive mode by default.

You are right.  I looked at the clocking from the downstream tree to
see what their clocks were, and it didn't occur to me to double check
against the datasheet.

> Same goes for CLK_ML_AHB regarding 400 vs. 300 MHz.

I'll update both and submit  a V2.

adam
>
> Best regards,
> Alexander
>
> > +                     power-domains =3D <&pgc_mlmix>;
> > +             };
> > +
> >               gic: interrupt-controller@38800000 {
> >                       compatible =3D "arm,gic-v3";
> >                       reg =3D <0x38800000 0x10000>,
>
>
> --
> TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Ge=
rmany
> Amtsgericht M=C3=BCnchen, HRB 105018
> Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan S=
chneider
> http://www.tq-group.com/
>
>

