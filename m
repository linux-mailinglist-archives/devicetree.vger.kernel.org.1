Return-Path: <devicetree+bounces-1671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 839217A7560
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:08:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 936371C20A09
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:08:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14583CA4D;
	Wed, 20 Sep 2023 08:08:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EBCC8E3
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:08:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78E31C433C7;
	Wed, 20 Sep 2023 08:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695197312;
	bh=qAIWwAW7lDeNaVQ6985ltio37pUtvHfKeT/9/6f+OBI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Og/WmP3CZ5J7hvEETGEL3OPUIlYQllkLKHEDQMjERAINdOUuCn8UxlgYAbZoxHuQV
	 2gY21+83STqm9iL6lZ+aozfwPU2p2QUWQcft5kEW3keZ900y5539c8j32vAXOnh+y5
	 uiOhAgTjsGDUVzisBwiN2ReF86J+XigjtjnsVgg7W0QDpkubxdq4DIyYVOVqK4nNX2
	 e+MYZvHvO4f9aPexa4ig6YjO8FovDEc7wPBhXK73/eAMYRvRWaojJGuD83bAMEq5wq
	 1QkyrCt7mUZ/Y4pFehvmo+F95iGJ7w5sZONetCB+gYxhkWZn9iYzB0ddX4r0HNDK0X
	 1b/CneLa/VoCw==
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-9ae22bf33a0so139788466b.0;
        Wed, 20 Sep 2023 01:08:32 -0700 (PDT)
X-Gm-Message-State: AOJu0Yz2y7ae3AllfJcgMF1xVQaNGHWXp8zY5Gob90PC3uGLmJaCrl/U
	RcVBlAYZu2dbBdVtrCmYXramWTRikDMFI/B/AMI=
X-Google-Smtp-Source: AGHT+IGJiPFLwCVRF104WW4YBT4ZXHyqim7bUeetLR+HqIGqrPKeTAvjlz5fqzoJgz93uyq8IImxyV+0vGy9K2i7YvA=
X-Received: by 2002:a17:906:74db:b0:99c:5056:4e31 with SMTP id
 z27-20020a17090674db00b0099c50564e31mr2898912ejl.15.1695197310819; Wed, 20
 Sep 2023 01:08:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <888d57a2d5e62affb8e29e0098402e428facd969.1695189879.git.wangchen20@iscas.ac.cn>
 <CAJF2gTR7xzGvQeewuhRLHE2yjH8zeDMj4qfE4_W-yb71-Zx6Zg@mail.gmail.com> <MA0P287MB03320173BB92D2C54FD659A7FEF9A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
In-Reply-To: <MA0P287MB03320173BB92D2C54FD659A7FEF9A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 16:08:17 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRNQwEgcFKOUt_A6jzF1k8GeU46FTvLBsE2YkHzGMvP6A@mail.gmail.com>
Message-ID: <CAJF2gTRNQwEgcFKOUt_A6jzF1k8GeU46FTvLBsE2YkHzGMvP6A@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] serial: 8250_dw: Add Sophgo SG2042 support
To: Chen Wang <unicorn_wang@outlook.com>
Cc: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu, chao.wei@sophgo.com, 
	conor@kernel.org, devicetree@vger.kernel.org, 
	emil.renner.berthing@canonical.com, jszhang@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	robh+dt@kernel.org, xiaoguang.xing@sophgo.com, 
	Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 4:06=E2=80=AFPM Chen Wang <unicorn_wang@outlook.com=
> wrote:
>
> Ren, thanks for your review.
>
> sg2042 and jh7100 use the same uart driver and we here just want to reuse=
 the logic from jh7100.
> We don't touch jh7100 stuff, we just rename "dw8250_starfive_jh7100_data"=
  to "dw8250_skip_set_rate_data" and make it a common data for both sg2042 =
and jh7100.
Okay, I got it now.
LGTM

Reviewed-by: Guo Ren <guoren@kernel.org>

>
> =E5=9C=A8 2023/9/20 15:53, Guo Ren =E5=86=99=E9=81=93:
> > On Wed, Sep 20, 2023 at 2:40=E2=80=AFPM Chen Wang <unicornxw@gmail.com>=
 wrote:
> >> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >>
> >> Add quirk to skip setting the input clock rate for the uarts on the
> >> Sophgo SG2042 SoC similar to the StarFive JH7100.
> >>
> >> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.co=
m>
> >> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> >> ---
> >>   drivers/tty/serial/8250/8250_dw.c | 5 +++--
> >>   1 file changed, 3 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/82=
50/8250_dw.c
> >> index f4cafca1a7da..6c344877a07f 100644
> >> --- a/drivers/tty/serial/8250/8250_dw.c
> >> +++ b/drivers/tty/serial/8250/8250_dw.c
> >> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_re=
nesas_rzn1_data =3D {
> >>          .quirks =3D DW_UART_QUIRK_IS_DMA_FC,
> >>   };
> >>
> >> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data =
=3D {
> >> +static const struct dw8250_platform_data dw8250_skip_set_rate_data =
=3D {
> >>          .usr_reg =3D DW_UART_USR,
> >>          .quirks =3D DW_UART_QUIRK_SKIP_SET_RATE,
> >>   };
> >> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[]=
 =3D {
> >>          { .compatible =3D "cavium,octeon-3860-uart", .data =3D &dw825=
0_octeon_3860_data },
> >>          { .compatible =3D "marvell,armada-38x-uart", .data =3D &dw825=
0_armada_38x_data },
> >>          { .compatible =3D "renesas,rzn1-uart", .data =3D &dw8250_rene=
sas_rzn1_data },
> >> -       { .compatible =3D "starfive,jh7100-uart", .data =3D &dw8250_st=
arfive_jh7100_data },
> >> +       { .compatible =3D "sophgo,sg2042-uart", .data =3D &dw8250_skip=
_set_rate_data },
> >> +       { .compatible =3D "starfive,jh7100-uart", .data =3D &dw8250_sk=
ip_set_rate_data },
> > Why shall we touch the jh7100 stuff in this patch?
> >
> >>          { /* Sentinel */ }
> >>   };
> >>   MODULE_DEVICE_TABLE(of, dw8250_of_match);
> >> --
> >> 2.25.1
> >>
> >



--=20
Best Regards
 Guo Ren

