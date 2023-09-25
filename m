Return-Path: <devicetree+bounces-3192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC797AD9CC
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F2B8728120E
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D2D81BDEE;
	Mon, 25 Sep 2023 14:12:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7EC763D6
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 14:12:14 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC77E10D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:12:12 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99c93638322so1483807666b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 07:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695651131; x=1696255931; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p/rofqFh8NF2bW6Oc7Qv5lPSnTwmY73T4eLOI12vOJ8=;
        b=mQn2Hr1cGI80tnYHcV1zdCjADXujIc7XLlZT8kL4pZTetrnydLOzMGg+q1U02UeNGZ
         dl/FOb5LYO3ctf02RzInwA507XQg9mSRCBVJpyRALqyzkP4zfns3Jdh3zD68XK5JTUeh
         /1rG+6Mo9p/O3wPGSX814LVB7fbi66SuNHkukb+k6JkD4zcqvNrheo3ccKWQS6pErwR8
         D45HqaxNTWzdStQbmypiqECDjOEuNgx+pC6SRUJCnUjjuocAsanKaTWEe+yhkvqRFjQ7
         50+y6tLGM/Iq30bMU1V49J8nCVZLgGOq13R+5IHeys8fyaSXUJzB821rgKNjaoUxknAJ
         jmYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695651131; x=1696255931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/rofqFh8NF2bW6Oc7Qv5lPSnTwmY73T4eLOI12vOJ8=;
        b=M39ngCn3Fp785RgeN9olAjPjQhJp3ueUINb401PAodUEY8OrmduLS8JNFKtWfJ2NGY
         JDwJgvZvUTu4EYW62pesz9hzU3aLypEOEQDGHqIVXLz3NpY9SOMygwTuNBaepj41N6dz
         rN6VNgWYerNmVzGTeNp3WrkzwUiXdX1jq+emWUAIHpEZjsVft3J6ZpZ/eTb6yumqDbLB
         6tC5FND4i1cnNbPaBt4P9D6D3/bcXmErwCW881x1+TZBlGfDPSrwJ3xB0jjbf7UQ33TI
         8EIyrZtNP8tsbLmdoHlYPbScvFFlRbOOmAFL+m4d/iRoAoY0yVuA2MtELX2PvgNT6Jye
         YN7g==
X-Gm-Message-State: AOJu0YzO20Mg0G9SpO12I7fDP+Bn7U7ZQgyWl4Ae8GyzO6Axs2/DzRW8
	lJ9jh+q32cktdnS2DqZES+Z7fg==
X-Google-Smtp-Source: AGHT+IFc1y5XpN3d0KtV5nTRC/Wd4d8VRWVBVtMw1jlx1Qoo6mIZn+OlkXm+iBDkHp3bx2ipX7q9qQ==
X-Received: by 2002:a17:906:768f:b0:9ae:4a8b:fe2f with SMTP id o15-20020a170906768f00b009ae4a8bfe2fmr11054575ejm.11.1695651131376;
        Mon, 25 Sep 2023 07:12:11 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id sa21-20020a170906edb500b009add084a00csm6314532ejb.36.2023.09.25.07.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 07:12:10 -0700 (PDT)
Date: Mon, 25 Sep 2023 16:12:10 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 3/9] dt-bindings: riscv: Add Zicond extension entry
Message-ID: <20230925-4a65c32623adcdf50c496005@orel>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925133859.1735879-4-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925133859.1735879-4-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 07:08:53PM +0530, Anup Patel wrote:
> Add an entry for the Zicond extension to the riscv,isa-extensions property.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index cad8ef68eca7..3f0b47686080 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -225,6 +225,12 @@ properties:
>              ratified in the 20191213 version of the unprivileged ISA
>              specification.
>  
> +        - const: zicond
> +          description:
> +            The standard Zicond extension for conditional arithmetic and
> +            conditional-select/move operations as ratified in commit 95cf1f9
> +            ("Add changes requested by Ved during signoff") of riscv-zicond.
> +
>          - const: zicsr
>            description: |
>              The standard Zicsr extension for control and status register
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>


