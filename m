Return-Path: <devicetree+bounces-1654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E977A745E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:38:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 834FC1C20AD0
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073188C19;
	Wed, 20 Sep 2023 07:38:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5388487
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:38:14 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45078125
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:38:11 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-402d499580dso70007825e9.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695195490; x=1695800290; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zz3/ecOKh4XgsJl46wvd3sKyjYtoix9I3w8gro1wfuw=;
        b=cm0vLhfht5SysJJxneUJRJXDWefeNpW+wH2/8WrEcjg28/Usqq2r5VVb6o5oH7gHy6
         7N8eZ39T8tDSBOK1hg63PfQi7k1Wm3TtLpjgxKbk8mo2EXZ/qSIQKrRxMdJGgdz44MMp
         3cVSuNYnvWbvwUrRzujB+KGPDS5IUUsoG6OjcLlfwwGYd8mH2xHm5AXbQno8qxpT/V/P
         XWVY0Zy2s61i73t0tFEMY9chGCBDbCGrHyXQ1QW0UV89GM3IIYu1KxJe+JHYLLAoqx03
         X7P6n6YmUOe2u2YMFwOnxEn9X4DjJ3MI6eLq2VrzW4T+StGvTuByOsHZmEjQuefSGM+2
         65Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695195490; x=1695800290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zz3/ecOKh4XgsJl46wvd3sKyjYtoix9I3w8gro1wfuw=;
        b=o9CLAds2Uwg6JtpB+y14Fsga4tqny1ogfSXIWkD2j/bpzoTmAz8Sf5Se5gNly06ygv
         igyDHRQr5sNdMKcrGVMnTdQJnUO7ZAlvnGlXU1vglPGalXzVs896ymJDqxDI9n+xA7hv
         T22BnA5j6JDL/jMgrmyUwrg5mtDCJPTC/T9UlISsfwewAgTeOwc4K8zDDF2pVZXv4mT6
         KX9WXmGSKF88foUlVNvgimpihBqes7kIE3uoMwaXBe8BO+XvSI5ge7cZB0cX90nVkA/5
         13O6Rh1llM/Mh3fUgnv67v0dNab6keAtXjis/WYVMYnPyaNpMOWJoFAj1xvm48hFZAG9
         PgoA==
X-Gm-Message-State: AOJu0YzKiVK7IG/lVERV/gIQBHY5vHZvhT67WKDlweMk/hFe50JkqgCo
	tm1wbbaFwGU888ZT6rBebx6pgQ==
X-Google-Smtp-Source: AGHT+IHTqEA03iyluOTE5KNwlZAgRLI+hQhb/1jCFIbu1+TPY1ZpietUNW+El8NpgjOI/gBNn23OCQ==
X-Received: by 2002:a05:600c:2909:b0:401:2ee0:754a with SMTP id i9-20020a05600c290900b004012ee0754amr1614112wmd.13.1695195489693;
        Wed, 20 Sep 2023 00:38:09 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id o5-20020a05600c510500b004052093a8f6sm1176515wms.25.2023.09.20.00.38.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 00:38:09 -0700 (PDT)
Date: Wed, 20 Sep 2023 09:38:03 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 1/7] RISC-V: Detect XVentanaCondOps from ISA string
Message-ID: <20230920-ab82cd5fbac7606ba747afa4@orel>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-2-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919035343.1399389-2-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:23:37AM +0530, Anup Patel wrote:
> The Veyron-V1 CPU supports custom conditional arithmetic and
> conditional-select/move operations referred to as XVentanaCondOps
> extension. In fact, QEMU RISC-V also has support for emulating
> XVentanaCondOps extension.
> 
> Let us detect XVentanaCondOps extension from ISA string available
> through DT or ACPI.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 7 +++++++
>  arch/riscv/include/asm/hwcap.h                          | 1 +
>  arch/riscv/kernel/cpufeature.c                          | 1 +
>  3 files changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
> index 36ff6749fbba..cad8ef68eca7 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -171,6 +171,13 @@ properties:
>              memory types as ratified in the 20191213 version of the privileged
>              ISA specification.
>  
> +        - const: xventanacondops
> +          description: |
> +            The Ventana specific XVentanaCondOps extension for conditional
> +            arithmetic and conditional-select/move operations defined by the
> +            Ventana custom extensions specification v1.0.1 (or higher) at
> +            https://github.com/ventanamicro/ventana-custom-extensions/releases.
> +
>          - const: zba
>            description: |
>              The standard Zba bit-manipulation extension for address generation
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 0f520f7d058a..b7efe9e2fa89 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -59,6 +59,7 @@
>  #define RISCV_ISA_EXT_ZIFENCEI		41
>  #define RISCV_ISA_EXT_ZIHPM		42
>  #define RISCV_ISA_EXT_SMSTATEEN		43
> +#define RISCV_ISA_EXT_XVENTANACONDOPS	44
>  
>  #define RISCV_ISA_EXT_MAX		64
>  
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 3755a8c2a9de..3a31d34fe709 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -182,6 +182,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
>  	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
>  	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
> +	__RISCV_ISA_EXT_DATA(xventanacondops, RISCV_ISA_EXT_XVENTANACONDOPS),
>  };
>  
>  const size_t riscv_isa_ext_count = ARRAY_SIZE(riscv_isa_ext);
> -- 
> 2.34.1
>

Besides Conor's comment about splitting the patch,

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

Thanks,
drew

