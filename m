Return-Path: <devicetree+bounces-1653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBBA7A7439
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EAE0F2815B8
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A4338C13;
	Wed, 20 Sep 2023 07:35:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7960C8487
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:35:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ED5BC433C7;
	Wed, 20 Sep 2023 07:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695195313;
	bh=MwnjbUi7Sx9APmmmeYu8ljwitw4TVsfCiEHzcg97XsQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=KIrPPOoTRRCKLsXBrrHXlGCl1dlS+AzrvF5nNUDpCtW6vK6bSZ2oMcH/HVFNiFQe9
	 rZF1jgAVQmeMP8csfh8PqU8uH53WJ/X6H8g0IP/s5mDoD0/hEX+3vB0IrMX7s89Q0a
	 uMsLAaLPSLF288lvxprrDLtzxBBmd3lkeMyyE6B2TTIVF4N0SzSABwKbVUKpGtIW2Z
	 qDYetfxJLy/7EcEzHy7LXBHo4pcC4MQNl6OuGPhFmjpMlMSNQSMvHCquZep6VeUyK9
	 NtvKE0WAFXUmv6XxUmq4yOEYBZ2turpfGXAL/IjrQ4Ump9qk6ZQS9RJHmmGlc8jHWb
	 nqqdHX+dLnggQ==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso65313111fa.1;
        Wed, 20 Sep 2023 00:35:13 -0700 (PDT)
X-Gm-Message-State: AOJu0Yy6sWul2TgVnao865s8lKnS8rCvnBn8xAV7BNaR/j5X2V1XIi/U
	g1sdiRcwk4Vq0IMXvDRUF5is/jck/LSqmHFRtT8=
X-Google-Smtp-Source: AGHT+IHch1AXwlNkfWZcAKqcoQehbFmp5SKV23GQUuzMcerp45Vu3rzzpiA/6uMhIfrtq2Gks/bl+L8cD0WzeapAy7o=
X-Received: by 2002:a2e:88d1:0:b0:2bd:10b7:4610 with SMTP id
 a17-20020a2e88d1000000b002bd10b74610mr1389072ljk.25.1695195311475; Wed, 20
 Sep 2023 00:35:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <2c6db3d2db0d27d4b2b8364e0c03be3da292101e.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <2c6db3d2db0d27d4b2b8364e0c03be3da292101e.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 15:34:58 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQym7Ad8y+m368hr7RgcjNpc2TfWRT8qu0cJyhJHm9vuQ@mail.gmail.com>
Message-ID: <CAJF2gTQym7Ad8y+m368hr7RgcjNpc2TfWRT8qu0cJyhJHm9vuQ@mail.gmail.com>
Subject: Re: [PATCH v2 01/11] riscv: Add SOPHGO SOC family Kconfig support
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 2:35=E2=80=AFPM Chen Wang <unicornxw@gmail.com> wro=
te:
>
> The first SoC in the SOPHGO series is SG2042, which contains 64 RISC-V
> cores.
>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  arch/riscv/Kconfig.socs | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 6833d01e2e70..d4df7b5d0f16 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -22,6 +22,11 @@ config SOC_SIFIVE
>         help
>           This enables support for SiFive SoC platform hardware.
>
> +config ARCH_SOPHGO
> +       bool "Sophgo SoCs"
> +       help
> +         This enables support for Sophgo SoC platform hardware.
> +
Reviewed-by: Guo Ren <guoren@kernel.org>

>  config ARCH_STARFIVE
>         def_bool SOC_STARFIVE
>
> --
> 2.25.1
>


--=20
Best Regards
 Guo Ren

