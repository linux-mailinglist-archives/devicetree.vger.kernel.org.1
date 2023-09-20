Return-Path: <devicetree+bounces-1672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9437A7586
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:13:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54D4728173E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:13:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D31CF9E8;
	Wed, 20 Sep 2023 08:13:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09934C8E0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6356EC433CB;
	Wed, 20 Sep 2023 08:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695197589;
	bh=BHg2WeM95rpBPjSMtBK54EXDu7Fym4u87Mw9H+3v6no=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=FgbS2oaQQz5/ROzre/v3t66FIfY12n+sbyeiA0ewV0IslizhDBg3fMC/84+vZ/ep5
	 VgjuhkUvz258KvDgzSAvbnNYfvvY6H7DvjomLj2uL145N+oHZNZHKcPMuHIVR93ea7
	 HN5vAZ00KgCFHNZP8ARg/RKKSGvhH8/hwNhiSnEh8m8ayYHEFlBI3OZHjZkfFasl8R
	 Gdh7sXZ60vi6bZuyC5Yf/5Nv1KiG4buobDe3lU81Y4ndCUoZN6AwvChFm2E02cKxSm
	 NrLDDzSJm8NKzBoWHnyEk/YWFrK90BYv6oloSNEzcIWv0r5+kpPSjqyunJ9qrkuRfB
	 qmKD5BsNUJ3zw==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2b962c226ceso107127651fa.3;
        Wed, 20 Sep 2023 01:13:09 -0700 (PDT)
X-Gm-Message-State: AOJu0YyuuW6n378j0yl8cTCufv5ZaSMJ92X68grrwz8aD7W8TNnM/yLh
	xIPG6KJi8lm9PlubL+ULoVCegk69Rwo+4nfzNVg=
X-Google-Smtp-Source: AGHT+IGwjome/AlKiUn8xGguHpMmW+YpKm8Pe6RU+TH5Vb8xW7yjkVi5Uq+QUgh8oIAyllj23ml6rFP95Ng60vN9ga0=
X-Received: by 2002:a2e:9959:0:b0:2bd:180d:67b7 with SMTP id
 r25-20020a2e9959000000b002bd180d67b7mr1497733ljj.40.1695197587601; Wed, 20
 Sep 2023 01:13:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <55865e1ce40d2017f047d3a9e1a9ee30043b271f.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <55865e1ce40d2017f047d3a9e1a9ee30043b271f.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 16:12:55 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTTUYuMi4F8wPsEPMwCv7Fqi9OSBTGoaYmzo6cPwdZjjQ@mail.gmail.com>
Message-ID: <CAJF2gTTTUYuMi4F8wPsEPMwCv7Fqi9OSBTGoaYmzo6cPwdZjjQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/11] dt-bindings: timer: Add Sophgo sg2042 clint
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Inochi Amaoto <inochiama@outlook.com>, 
	Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 2:39=E2=80=AFPM Chen Wang <unicornxw@gmail.com> wro=
te:
>
> From: Inochi Amaoto <inochiama@outlook.com>
>
> Add two new compatible string formatted like `C9xx-clint-xxx` to identify
> the timer and ipi device separately, and do not allow c900-clint as the
> fallback to avoid conflict.
Please explain more about the c900-clint mtimer & mswi, why do we need
to separate the c900-clint into two pieces? When could we use
c900-clint which eases dts design?

>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  Documentation/devicetree/bindings/timer/sifive,clint.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/=
Documentation/devicetree/bindings/timer/sifive,clint.yaml
> index a0185e15a42f..ae69696c5c75 100644
> --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> @@ -39,6 +39,14 @@ properties:
>                - allwinner,sun20i-d1-clint
>                - thead,th1520-clint
>            - const: thead,c900-clint
> +      - items:
> +          - enum:
> +              - sophgo,sg2042-clint-mtimer
> +          - const: thead,c900-clint-mtimer
> +      - items:
> +          - enum:
> +              - sophgo,sg2042-clint-mswi
> +          - const: thead,c900-clint-mswi
>        - items:
>            - const: sifive,clint0
>            - const: riscv,clint0
> --
> 2.25.1
>


--=20
Best Regards
 Guo Ren

