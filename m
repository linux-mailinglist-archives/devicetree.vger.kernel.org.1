Return-Path: <devicetree+bounces-5845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8D17B81CC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:07:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 25841281582
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D48215EB5;
	Wed,  4 Oct 2023 14:07:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8543FF1
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:07:16 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB377D9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:07:14 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-693375d2028so1685973b3a.2
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 07:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1696428434; x=1697033234; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0z/r1d+J5gtLqP5W7ywKcBZnz9e1tR93kK5cuzURK+U=;
        b=cL7TMIHvZGILyvQKlG8/69OWPtzvqfwMYHT6bhdpd0Xiot1qkWGebg+HONm1NJG2T1
         FXl8d6+z6Vp+L6nK1TfmMDLmwFgbnxEdG55WthmMNNUaBqS9t6Znn9UhaW5jUb30CgzU
         c7NEhpH9UYLE3ds2I61eoIMWuYcekbZbxlylI3faAyahjtr4B3uX8IWjYJlgyvtefOpa
         kJ6LgbtfM6AMJxux3ptSYePlndpQIsfEJwPwvJITYfUfRyw9SV/QyTNuci2tyzVws7UW
         CsVx+DMQtR2H0XQrTIGOjGA4j4odKJM/nTThLTYyH9KUUsyHv3Py9Kt5pFEwdozlN6LJ
         Mi6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696428434; x=1697033234;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0z/r1d+J5gtLqP5W7ywKcBZnz9e1tR93kK5cuzURK+U=;
        b=r9SOh6kRqihdFmZ85C7JVBikLryvIVmlTmDPOj35ks9HiPbmMjktzR+ZcG9aksvVNd
         y7NotN9hp5rHTneUhM2ltDJVdFIqNCpG2GjOAUG7Q7LAn4X1DdG+FzIZFEsIeE/LuzLS
         +yJasJONRJmhuG/5uZq+Ww5U+OHWX7ShORdhcQ1CramD3UMIAjqFgxYNrj+17P8Sw3s5
         J79qjhVfpSletcalruDKqDBIxd4xOkupPgSl7+DLnbMn9IE/pAUgIRpldL3OXFGejBKJ
         G5iqXbubZZgx52dKSeVAjlRqemqT8eGHpQcO/alagjVkpQmg4amdayM1ZVbIKAot9cXA
         W9rQ==
X-Gm-Message-State: AOJu0YykwTI4zS/AsjX2JVi/S/HBN40mht2B2OlEfYjwNLkI7mGPz7BY
	rhMw8Onms8VsAfHXdJXCsiLpyw==
X-Google-Smtp-Source: AGHT+IF0Ml8pf6AjMo5zAtun1w9ROsE0vABhFnVNgCEYK5oMomt4HYMJTvQ3YEhZmBv+2hEuxsmApA==
X-Received: by 2002:a05:6a00:b8b:b0:68f:d1a7:1a3a with SMTP id g11-20020a056a000b8b00b0068fd1a71a3amr2957250pfj.8.1696428432808;
        Wed, 04 Oct 2023 07:07:12 -0700 (PDT)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id bm2-20020a056a00320200b0068a13b0b300sm3384998pfb.11.2023.10.04.07.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 07:07:11 -0700 (PDT)
Date: Wed, 04 Oct 2023 07:07:11 -0700 (PDT)
X-Google-Original-Date: Wed, 04 Oct 2023 07:07:09 PDT (-0700)
Subject:     Re: [PATCH v3 2/6] RISC-V: Detect Zicond from ISA string
In-Reply-To: <20231003035226.1945725-3-apatel@ventanamicro.com>
CC: pbonzini@redhat.com, atishp@atishpatra.org,
  Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, robh+dt@kernel.org,
  krzysztof.kozlowski+dt@linaro.org, shuah@kernel.org, ajones@ventanamicro.com, mchitale@ventanamicro.com,
  devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org,
  linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
  apatel@ventanamicro.com, Conor Dooley <conor.dooley@microchip.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: apatel@ventanamicro.com
Message-ID: <mhng-4ec1093a-4542-429e-a9f0-8a976cff9ac4@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 02 Oct 2023 20:52:22 PDT (-0700), apatel@ventanamicro.com wrote:
> The RISC-V integer conditional (Zicond) operation extension defines
> standard conditional arithmetic and conditional-select/move operations
> which are inspired from the XVentanaCondOps extension. In fact, QEMU
> RISC-V also has support for emulating Zicond extension.
>
> Let us detect Zicond extension from ISA string available through
> DT or ACPI.
>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 1 +
>  arch/riscv/kernel/cpufeature.c | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> index 0f520f7d058a..6fc51c1b34cf 100644
> --- a/arch/riscv/include/asm/hwcap.h
> +++ b/arch/riscv/include/asm/hwcap.h
> @@ -59,6 +59,7 @@
>  #define RISCV_ISA_EXT_ZIFENCEI		41
>  #define RISCV_ISA_EXT_ZIHPM		42
>  #define RISCV_ISA_EXT_SMSTATEEN		43
> +#define RISCV_ISA_EXT_ZICOND		44
>
>  #define RISCV_ISA_EXT_MAX		64
>
> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> index 3755a8c2a9de..e3803822ab5a 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
> @@ -167,6 +167,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
>  	__RISCV_ISA_EXT_DATA(zicbom, RISCV_ISA_EXT_ZICBOM),
>  	__RISCV_ISA_EXT_DATA(zicboz, RISCV_ISA_EXT_ZICBOZ),
>  	__RISCV_ISA_EXT_DATA(zicntr, RISCV_ISA_EXT_ZICNTR),
> +	__RISCV_ISA_EXT_DATA(zicond, RISCV_ISA_EXT_ZICOND),
>  	__RISCV_ISA_EXT_DATA(zicsr, RISCV_ISA_EXT_ZICSR),
>  	__RISCV_ISA_EXT_DATA(zifencei, RISCV_ISA_EXT_ZIFENCEI),
>  	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),

Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

Can we do a shared tag, though?  These will conflict.

