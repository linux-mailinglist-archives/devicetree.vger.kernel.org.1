Return-Path: <devicetree+bounces-1659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D545B7A749F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:45:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F0AA2814C9
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:45:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3B08F62;
	Wed, 20 Sep 2023 07:45:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE8B2584
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:45:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 304ADC433C8;
	Wed, 20 Sep 2023 07:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695195928;
	bh=Cqn1BSH5uJ9UFmfiz+lI3Z6Y8WlRKov8M6GvwnSusx8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZH5TvVq4GRWBYtF8gqzpoEdrkMp88bh0+loNhly1YEpHTYnIc2tISMjgtjYjhWZDK
	 gmC4cFCro2rfi4LorOE7NEPba7vqn/T98CKUjjDFEweCspCw4fygzpvH8DzUPA1cpn
	 YOIUI6ddd4yWoIrp+vtb7pgBI9KUqxh7mBd+Pohn7Fz82AlG3mr50qg5YH/q0KCGg5
	 LBFdo+bd6S9ETqCMMpb2Z0NBFR8/N6TazJyO2F8udi20Ugkl87f57majNZCyN248WE
	 go5vlCA09Iz4rcoOU1Nn5yqVVOu4jmtcBiCHN6aFoL3I7QNcFBCIM37tYK+IOULUYW
	 Fvms0uJpXz4UA==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2c02e232c48so22567881fa.1;
        Wed, 20 Sep 2023 00:45:28 -0700 (PDT)
X-Gm-Message-State: AOJu0YzC/QzaKuuwNiupSNK3XIllXtfuJZkszNO6Bz1R5vt4JJ3/TW5s
	fukx6m55kgkfnXl5BkyXy2ksZW+ckEVWhlU71WY=
X-Google-Smtp-Source: AGHT+IG6JH2f6GWH6UGZkLRmIfvUibe13MybdU9vWJevg2yLIo+A04ZzyShmljbSBOMPLRaIuGsPu24IY0wrnqr/JEs=
X-Received: by 2002:a05:651c:102c:b0:2bb:9847:d96e with SMTP id
 w12-20020a05651c102c00b002bb9847d96emr1350699ljm.9.1695195926393; Wed, 20 Sep
 2023 00:45:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <11eca9395bf730f41f142be2f8d26f527e36517b.1695189879.git.wangchen20@iscas.ac.cn>
In-Reply-To: <11eca9395bf730f41f142be2f8d26f527e36517b.1695189879.git.wangchen20@iscas.ac.cn>
From: Guo Ren <guoren@kernel.org>
Date: Wed, 20 Sep 2023 15:45:13 +0800
X-Gmail-Original-Message-ID: <CAJF2gTQaXqWObZ+TQ=49WodHr0R9qEuuW_r5Tt65OTVDTdipZw@mail.gmail.com>
Message-ID: <CAJF2gTQaXqWObZ+TQ=49WodHr0R9qEuuW_r5Tt65OTVDTdipZw@mail.gmail.com>
Subject: Re: [PATCH v2 05/11] dt-bindings: interrupt-controller: Add SOPHGO's
 SG2042 PLIC
To: Chen Wang <unicornxw@gmail.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 2:39=E2=80=AFPM Chen Wang <unicornxw@gmail.com> wro=
te:
>
> Add compatible string for SOPHGO SG2042 plic.
>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml         | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifiv=
e,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/=
sifive,plic-1.0.0.yaml
> index dc1f28e55266..16f9c4760c0f 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
> +++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-=
1.0.0.yaml
> @@ -65,6 +65,7 @@ properties:
>        - items:
>            - enum:
>                - allwinner,sun20i-d1-plic
> +              - sophgo,sg2042-plic
>                - thead,th1520-plic
>            - const: thead,c900-plic
>        - items:
> --
> 2.25.1
>
Reviewed-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

