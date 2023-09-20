Return-Path: <devicetree+bounces-1664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2707A74DB
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:51:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCD0E281B71
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 685D0C8C8;
	Wed, 20 Sep 2023 07:51:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B278484
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:51:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD124C433CB;
	Wed, 20 Sep 2023 07:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695196300;
	bh=YhB+A7iHmnmzoZBCFb7X2I4fWEuWQ8+59ZBtsGegYaE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=jpJLjy/5IqVHJKhetfC3m64SELPEhe+uDcmU+8ae7pKKhrI8ttOvhXg8STgC4BECW
	 hkjfuqWG5qWX4MVHlTXVPg/lcumtcZqub6g7US/SyHxWJ9icvZDrnh8PlJ1hx2yuoH
	 FGmt5RlNRH4MbjPg/RkozOf1ArduSt4F8xFBJZmpDCyJHvnognnaeCXghzgOyPiFNH
	 15y1qX41SHRgx7oxVaXIp4mahZxppiSU6VGJb0UikrxDRYeBuLRlcj3r9g49arbstv
	 CEr5z1JsBdD+E7/YgN6hsyAXASBwQARxkHFPbaI+gtboRXKDQhSE55SiJJEIy4wlCh
	 qBGPGdEDIIAMQ==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-9a645e54806so824476766b.0;
        Wed, 20 Sep 2023 00:51:40 -0700 (PDT)
X-Gm-Message-State: AOJu0YyVsxRTYlOjx0IEVB8GUAZj54BOqT02sQJ4Dz0AElpc3hAh/6cw
	Zd7gIpaWMqi3VhnvrQYG0QrNQF5U9+O5TbE+/sc=
X-Google-Smtp-Source: AGHT+IHJGMtQRq4hJtwB0IoLnShAiYYmpLruCzt+pRdlxwjYpm4dlJQHOZBhuUpQIRfn83gR6MeyI28oZ/mw/6JVkUs=
X-Received: by 2002:a17:906:18c:b0:9ae:5120:514c with SMTP id
 12-20020a170906018c00b009ae5120514cmr237222ejb.0.1695196299190; Wed, 20 Sep
 2023 00:51:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <05fcf91d60468323a6c7cdb8ac57c356ab4a3050.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <05fcf91d60468323a6c7cdb8ac57c356ab4a3050.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 15:51:26 +0800
X-Gmail-Original-Message-ID: <CAJF2gTR0Q=sdVtSHOgmvnhBk8SJbEi+NjWGR62OB0JJ1i0ekZA@mail.gmail.com>
Message-ID: <CAJF2gTR0Q=sdVtSHOgmvnhBk8SJbEi+NjWGR62OB0JJ1i0ekZA@mail.gmail.com>
Subject: Re: [PATCH v2 07/11] dt-bindings: serial: snps-dw-apb-uart: Add
 Sophgo SG2042 uarts
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
> Add compatible for the uarts on the Sophgo SG2042 RISC-V SoC.
>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.ya=
ml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> index 17c553123f96..011d89e6df0f 100644
> --- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
> @@ -45,6 +45,7 @@ properties:
>            - const: snps,dw-apb-uart
>        - items:
>            - enum:
> +              - sophgo,sg2042-uart
>                - starfive,jh7100-hsuart
>                - starfive,jh7100-uart
>            - const: snps,dw-apb-uart
> --
> 2.25.1
>
LGTM

Reviewed-by: Guo Ren <guoren@kernel.og>

--=20
Best Regards
 Guo Ren

