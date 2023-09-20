Return-Path: <devicetree+bounces-1665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFAE7A74ED
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:54:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05481281DB1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:54:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C537C8D6;
	Wed, 20 Sep 2023 07:54:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB968C0A
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 918F2C433C9;
	Wed, 20 Sep 2023 07:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695196448;
	bh=K8AxAQOT8+MI8bjoZz6VFx9HFGUcrIa/mTpDzepHRqQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Qcrm7xRpOB1M/xx+Jt3nveIAcPj6dRcCA65n0mOocvxjwjQLs9wPuKZ3ebG5vyifa
	 v3p32tX71Wn7Gz9KCLZm/AN/+uZxedlA6ZTiXaWKacbFKRtWaQk4abA7QdNDAz0iec
	 lKauU63ofbazoNbJxqzU63qtvBAY55qWZOaaG8bTipkKRmnF48TnlNdR9bdqCMmtdO
	 Pf+tLup5Th4rEWdWM2cEC5gRGWxLmmmqcKQXXVjOsImsrF64/hK1Qzz3Hv5QMGX2Wl
	 bj9gf49Gsm0/61faQnGFu321cew5dcncmH1VfKo/nkE7V+oETghdZVqJWvoZQS5qoF
	 APwzFyesWst2g==
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso108381471fa.1;
        Wed, 20 Sep 2023 00:54:08 -0700 (PDT)
X-Gm-Message-State: AOJu0YwUJTh6oTITiwRXQIJH6CArGr5r0/jNjrhJo4cR9brXMb2pLKYr
	8p7ztfBk6QAIYqmM+mOI+OANFLqb1+6adYj34Eg=
X-Google-Smtp-Source: AGHT+IGbON4qUvKyn9SpbtgKFzXwyHZKLVPKIdLZul8MBdsq+dCsBfr2RGFZYdhev89kclP9xbz7mSdJOX7f6FJRyOo=
X-Received: by 2002:a05:651c:1034:b0:2bc:d8cb:5a13 with SMTP id
 w20-20020a05651c103400b002bcd8cb5a13mr1419793ljm.42.1695196446802; Wed, 20
 Sep 2023 00:54:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <888d57a2d5e62affb8e29e0098402e428facd969.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <888d57a2d5e62affb8e29e0098402e428facd969.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 15:53:53 +0800
X-Gmail-Original-Message-ID: <CAJF2gTR7xzGvQeewuhRLHE2yjH8zeDMj4qfE4_W-yb71-Zx6Zg@mail.gmail.com>
Message-ID: <CAJF2gTR7xzGvQeewuhRLHE2yjH8zeDMj4qfE4_W-yb71-Zx6Zg@mail.gmail.com>
Subject: Re: [PATCH v2 08/11] serial: 8250_dw: Add Sophgo SG2042 support
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 2:40=E2=80=AFPM Chen Wang <unicornxw@gmail.com> wro=
te:
>
> From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
>
> Add quirk to skip setting the input clock rate for the uarts on the
> Sophgo SG2042 SoC similar to the StarFive JH7100.
>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  drivers/tty/serial/8250/8250_dw.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/=
8250_dw.c
> index f4cafca1a7da..6c344877a07f 100644
> --- a/drivers/tty/serial/8250/8250_dw.c
> +++ b/drivers/tty/serial/8250/8250_dw.c
> @@ -770,7 +770,7 @@ static const struct dw8250_platform_data dw8250_renes=
as_rzn1_data =3D {
>         .quirks =3D DW_UART_QUIRK_IS_DMA_FC,
>  };
>
> -static const struct dw8250_platform_data dw8250_starfive_jh7100_data =3D=
 {
> +static const struct dw8250_platform_data dw8250_skip_set_rate_data =3D {
>         .usr_reg =3D DW_UART_USR,
>         .quirks =3D DW_UART_QUIRK_SKIP_SET_RATE,
>  };
> @@ -780,7 +780,8 @@ static const struct of_device_id dw8250_of_match[] =
=3D {
>         { .compatible =3D "cavium,octeon-3860-uart", .data =3D &dw8250_oc=
teon_3860_data },
>         { .compatible =3D "marvell,armada-38x-uart", .data =3D &dw8250_ar=
mada_38x_data },
>         { .compatible =3D "renesas,rzn1-uart", .data =3D &dw8250_renesas_=
rzn1_data },
> -       { .compatible =3D "starfive,jh7100-uart", .data =3D &dw8250_starf=
ive_jh7100_data },
> +       { .compatible =3D "sophgo,sg2042-uart", .data =3D &dw8250_skip_se=
t_rate_data },
> +       { .compatible =3D "starfive,jh7100-uart", .data =3D &dw8250_skip_=
set_rate_data },
Why shall we touch the jh7100 stuff in this patch?

>         { /* Sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, dw8250_of_match);
> --
> 2.25.1
>


--=20
Best Regards
 Guo Ren

