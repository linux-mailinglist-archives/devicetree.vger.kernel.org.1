Return-Path: <devicetree+bounces-48602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 522F8872B37
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 00:40:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 745E71C21580
	for <lists+devicetree@lfdr.de>; Tue,  5 Mar 2024 23:40:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9F1128374;
	Tue,  5 Mar 2024 23:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmcDqZnA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438631426F;
	Tue,  5 Mar 2024 23:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709682003; cv=none; b=FoC6zcVmmew6x90lK4OS2KWXoUzfPP8ptMrYBy76eGTWtyIRj7Uwc+vyoPPBFeDSwXcwtNHso0PdBtSIkbAkLLGZKJz/O9lMd+EabdeulFGtZh+n83yp2zbtBVnyGxaYmUZ/j8QKkpoosvW/+dJmOP7N2urQ4R0XZeoAadaskNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709682003; c=relaxed/simple;
	bh=ZbT02GckxhHJ4FZEgl68A4FqWhRioB/biC4qC0J0UrY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ei985kJFx7BYS2+t1YTbIlVX+vTbRYuN0H8PI4PUzvKnRM4o4nAoS8wDSRsdEKcVHGw4uJL6AbSOumaq1OSbIAuO4TVq31A56tQo0jp/RRP1nw6hj7NyNE7Yyk/VLKV+pq6U4soRXys0xZ/r6d50N3qGa0KnsOsKLaDKKzeIh4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmcDqZnA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C66B8C433A6;
	Tue,  5 Mar 2024 23:40:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709682002;
	bh=ZbT02GckxhHJ4FZEgl68A4FqWhRioB/biC4qC0J0UrY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=fmcDqZnAlea4GnAHtBAIvjZhmnNmXrHSREOgIYXhBzoq/asHYQFLxGf8RKrc9K41C
	 xHLaMiIocQJER56hRfhCsSuzAiuWnl3gI6UrCe6F0WxoQA7R7+Qz41+zE+58+ubBFD
	 wayEw3vJ/1jImRsDC9tCDj9MpeVQZPTElU/Uss+heOioyoyN/kDRgHyy4eEp7kxGJP
	 q+85AAfCpt3i7c5PmFPbusoiikhC9hxe7bEox8+XyI3rLYSk7UYZS3D30Js5BjcRcR
	 lqdjKo5C1bIaqqK7gLQMdZOMGoQHPN7sW6L4fi/UGw+axzmEjD7KtsJ6V09pEsP6iL
	 Qyhno6Z24Iv+Q==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51341a5aafbso3522547e87.0;
        Tue, 05 Mar 2024 15:40:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXjFbo+etnDFnIDRBQfKQKR0ME4gkWCxCFkkbfTZF1dMJbv7Qmv0bE38avJpuLe4rRdvWD/AyQiHn1amfQc/W30m7QJTIjBSRH+stG7elv31WUC2rsJUgDAil1nVk6dSLB5OXa8wT/R7g==
X-Gm-Message-State: AOJu0Yyzv3XXBUp7GHkbRnKL3u6fAfO8hhHztYFtoULBGqLv2ZwJszus
	DyRppnVu9EhGyhYF3SuV7rPOxZPdS8SUPpYqnlgV1bHMBp18HJOQDps9GOkbIG3Nrrbt6/UG2oG
	gncMyb40AoRu0uQbT/mVVkB1rIhM=
X-Google-Smtp-Source: AGHT+IFXKvEn9m7zUfxSLk5YjglzlHNDAXVUlL5T/d0fHbt4kn0FiKvKk7UJ9njR40d7s8pPGu6/Onlqbv6aasIveEI=
X-Received: by 2002:ac2:4e8f:0:b0:513:23be:e924 with SMTP id
 o15-20020ac24e8f000000b0051323bee924mr2045396lfr.59.1709682000980; Tue, 05
 Mar 2024 15:40:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <tencent_FC10B3C630BE27412FED2547245CBE18D807@qq.com> <tencent_29708962B242A61B23F9460425B4951CDF09@qq.com>
In-Reply-To: <tencent_29708962B242A61B23F9460425B4951CDF09@qq.com>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 6 Mar 2024 07:39:49 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQLppAQpz+-YY-sEKp-XPO2rDQwYLOy0uptgFw3zPXoYg@mail.gmail.com>
Message-ID: <CAJF2gTQLppAQpz+-YY-sEKp-XPO2rDQwYLOy0uptgFw3zPXoYg@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: riscv: Add T-HEAD C908 compatible
To: Yangyu Chen <cyy@cyyself.name>
Cc: linux-riscv@lists.infradead.org, Conor Dooley <conor@kernel.org>, 
	Damien Le Moal <dlemoal@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 6, 2024 at 5:24=E2=80=AFAM Yangyu Chen <cyy@cyyself.name> wrote=
:
>
> The thead,c908 is a RISC-V CPU core from T-HEAD Semiconductor which used
> in Canaan Kendryte K230 SoC.
>
> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 9d8670c00e3b..e853a7fcee8a 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -47,6 +47,7 @@ properties:
>                - sifive,u74
>                - sifive,u74-mc
>                - thead,c906
> +              - thead,c908
>                - thead,c910
>                - thead,c920
>            - const: riscv
> --
> 2.43.0
>
Reviewed-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

