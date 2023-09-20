Return-Path: <devicetree+bounces-1655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F14787A7462
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C08E1C20940
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7FB8C19;
	Wed, 20 Sep 2023 07:38:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE69A8487
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58FAFC433CA;
	Wed, 20 Sep 2023 07:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695195514;
	bh=4NlRl7tmZMlfASt9XMRrxPS/AlpbPNnFQnsAF66CTlA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fbOv5Ga5pOr8bEBqOsDmwv+qo+NkSh7hSrqE9C/EQnXiA7C5v9Cy5dCGE8jSKmdvZ
	 O/v5Zatn42gteY9WxSpqTymCnb+ixM0XX4DLLgN1Fxilum3hjw9q7y+mgHeszDM7Bs
	 ZPb0wsc18lBuK3JclBPaONYI54BGmI598o12WgsYaHKLv6501kgIK9onNvHdK3ax4u
	 y7maDMUZ1dknByW8d3NcpRbqLW41yrtOQ4uPfFsqhe/VjGoK20ddyGNieIS7+YSb54
	 BVb4lyyQbfTv4ycjdl/l3GGArDJ9MdgZAPCHSQxqyEqih+GGENIEgbmA17AmTbRAXc
	 YzzS4LEzKCnRQ==
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-9a64619d8fbso861234366b.0;
        Wed, 20 Sep 2023 00:38:34 -0700 (PDT)
X-Gm-Message-State: AOJu0YzUNQF7lxBckkheGlZmT5X2Zpx6N7AV0IlSOJbD3pHEukZjonFO
	4Dywowy7oq1Vj+0lsWGAj7LNofIl/L58tnfq9aE=
X-Google-Smtp-Source: AGHT+IGLN8EgkEV3ltTwt+G6aGQQKtZQniuqxBAE1MIL3EKm4G4pYEaRbZGEIQOkUwjSiwQT7EJF3oIY42lCYaKF3b0=
X-Received: by 2002:a17:906:3694:b0:99b:627b:e96d with SMTP id
 a20-20020a170906369400b0099b627be96dmr1221708ejc.44.1695195512786; Wed, 20
 Sep 2023 00:38:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <dbd7d823a73d8a9484efcd55f6616f5392daf608.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <dbd7d823a73d8a9484efcd55f6616f5392daf608.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 15:38:19 +0800
X-Gmail-Original-Message-ID: <CAJF2gTRd=G+-zzFXEF+XUT3vLtfeHJknODoTWUVP36hy-7MoRg@mail.gmail.com>
Message-ID: <CAJF2gTRd=G+-zzFXEF+XUT3vLtfeHJknODoTWUVP36hy-7MoRg@mail.gmail.com>
Subject: Re: [PATCH v2 02/11] dt-bindings: vendor-prefixes: add milkv/sophgo
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 2:37=E2=80=AFPM Chen Wang <unicornxw@gmail.com> wro=
te:
>
> Add new vendor strings to dt bindings.
> These new vendor strings are used by
> - Sophgo SG2042 SoC [1]
> - Milk-V Pioneer board [2], which uses SG2042 chip.
>
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
> [2]: https://milkv.io/pioneer
>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Doc=
umentation/devicetree/bindings/vendor-prefixes.yaml
> index 573578db9509..fcca9e070a9a 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -863,6 +863,8 @@ patternProperties:
>      description: MikroElektronika d.o.o.
>    "^mikrotik,.*":
>      description: MikroTik
> +  "^milkv,.*":
> +    description: MilkV Technology Co., Ltd
>    "^miniand,.*":
>      description: Miniand Tech
>    "^minix,.*":
> @@ -1273,6 +1275,8 @@ patternProperties:
>      description: Solomon Systech Limited
>    "^sony,.*":
>      description: Sony Corporation
> +  "^sophgo,.*":
> +    description: Sophgo Technology Inc.
>    "^sourceparts,.*":
>      description: Source Parts Inc.
>    "^spansion,.*":
> --
> 2.25.1
>
Reviewed-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

