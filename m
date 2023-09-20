Return-Path: <devicetree+bounces-1656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E99417A7480
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E4E42819BD
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E1128487;
	Wed, 20 Sep 2023 07:43:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6022584
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 685AAC433D9;
	Wed, 20 Sep 2023 07:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695195832;
	bh=wHmXgn83h8NuefG1j3vWq4VR1WzTwO3eqaG3oocDVB0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gRgSZU6x3azX5ElS1nYcLxlZWZ7QSDkZsepTwRi+qF3TCSaQ+o1LcYUjQ5+k7gTJH
	 Gk/qpf7/LHUv6AdRbxH3YCVm8tnLYp/iKZultE8y0z5Gi30vHrpwZATUUJQ/bPvjLY
	 1ceHeMFLlmdCIw7lRAihr0RiTuQ64OFmYdMYOTlCBcifFlJuhzfVh0jvKghBzJWf7y
	 gJUBdmtQictjoL615hAx5KNZQqQ35BZNIp/fR38JcM7LtqI+DxQG4OSk0I4tkXNOPr
	 Kxo/7vmrd/IVfUQv/1cUFJHT5YHvEkOmHZT55ecFB1cM95LfycWRg7G7h9NaH4QIU/
	 Kpy+G2fH57lVA==
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c038a1e2e6so10675521fa.2;
        Wed, 20 Sep 2023 00:43:52 -0700 (PDT)
X-Gm-Message-State: AOJu0YxBM7NWgbdmDjuBGf6PfnZp6aAzZQUs83psVKYMn4aDm6WYFmWI
	qwNiJGG7EHK8RbHNnR1EOou88azsPuF6x6w4vwM=
X-Google-Smtp-Source: AGHT+IFeyS4faWN5sjvWZz1M6kYCPecf5m3kGaQeSQ8YguuVePOuPu3fhfpHheT/C7M40FSL02w8GohuN7y0mMIsWuk=
X-Received: by 2002:a2e:9f4f:0:b0:2b9:f27f:e491 with SMTP id
 v15-20020a2e9f4f000000b002b9f27fe491mr1599633ljk.42.1695195830591; Wed, 20
 Sep 2023 00:43:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 15:43:39 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQntuknORHf2QC5YHX1ZMSRz3b3e+fsE1uZ4AuchB94SA@mail.gmail.com>
Message-ID: <CAJF2gTQntuknORHf2QC5YHX1ZMSRz3b3e+fsE1uZ4AuchB94SA@mail.gmail.com>
Subject: Re: [PATCH v2 03/11] dt-bindings: riscv: add sophgo sg2042 bindings
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 2:38=E2=80=AFPM Chen Wang <unicornxw@gmail.com> wro=
te:
>
> Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
> Milk-V Pioneer board [2].
>
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
> [2]: https://milkv.io/pioneer
>
> Acked-by: Chao Wei <chao.wei@sophgo.com>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  .../devicetree/bindings/riscv/sophgo.yaml     | 28 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++++
>  2 files changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml
>
> diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Docume=
ntation/devicetree/bindings/riscv/sophgo.yaml
> new file mode 100644
> index 000000000000..82468ae915db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/sophgo.yaml
> @@ -0,0 +1,28 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/sophgo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SoC-based boards
> +
> +maintainers:
> +  - Chao Wei <chao.wei@sophgo.com>
> +  - Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> +
> +description:
> +  Sophgo SoC-based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - milkv,pioneer
> +          - const: sophgo,sg2042
> +
> +additionalProperties: true
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..b74d505003e2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20063,6 +20063,13 @@ F:     drivers/char/sonypi.c
>  F:     drivers/platform/x86/sony-laptop.c
>  F:     include/linux/sony-laptop.h
>
> +SOPHGO DEVICETREES
> +M:     Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> +M:     Chao Wei <chao.wei@sophgo.com>
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/riscv/sophgo.yaml
> +F:     arch/riscv/boot/dts/sophgo/
> +
>  SOUND
>  M:     Jaroslav Kysela <perex@perex.cz>
>  M:     Takashi Iwai <tiwai@suse.com>
> --
> 2.25.1
>
LGTM

Reviewed-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

