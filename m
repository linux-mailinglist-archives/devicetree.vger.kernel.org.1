Return-Path: <devicetree+bounces-3248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCDF7ADDFD
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 19:48:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id EC6E12815E5
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 17:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FEBA21113;
	Mon, 25 Sep 2023 17:48:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8DA71CA9E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 17:48:16 +0000 (UTC)
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A5929B
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:48:15 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1c5cd27b1acso61452375ad.2
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:48:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1695664095; x=1696268895; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V3tuJIIS1l1SOVzZtlVmqa55J+BZPRUyU2VUwqVvswg=;
        b=mWLJe+X2mp6TIEqIacDBG3NvBPzUhYGh+J3cGWEmK/YufkcCNHyWbFHEojC12NKRnP
         HdraPi3WjUYsDoWpM3/ONzuD3jxhs39lQAYlPfntg0ft85J9LpmsQdiuqnWwOvIjzySM
         A6a3gqvDTYbr9WgMWeO6NVHUf11NlkqQOyGXMbka36B0J/bUyK3Y6NK1eB0mLiyuJEDr
         Pkh9RJgrLEDiWmzdD69VAk7/LRmbV+YD+9o9ua2u/l6gCSNuGhaYzp0s1QZE5/Ii7iID
         95r7BTF2T+fkV8D5ZnlmnX2BdmdMzlZi/tBXMKk7CnRck7ybC9eIRuubezDMX1hTsE/t
         UhPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695664095; x=1696268895;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V3tuJIIS1l1SOVzZtlVmqa55J+BZPRUyU2VUwqVvswg=;
        b=WECCXTEMF4gkzV5e3tWINsa6amSuj2CFHoRlzImr8x4k36kjPKlYsZdka24FptjSSU
         m5SzeMt8COkREicUGMr3Vmqq/LT9yiv2vgmQfCfQv7ytdwaKwpLSLsPW6HhzF0eFAjxd
         doE6lCzyX0HKm7vXQy1bZNSs5o3Pbxg3f14ZFkZQBuPTO0+BWwXVHLmDMzpiIk92EvTy
         7qQR/7G83o/JwUMTfuplvbOtbcRwp/Z8+ytzZM0C+uzUBCi6uwB3XnlsrHHp3hNus579
         SJrSeCQ9N3BFixAc7j7BOmwE36XfEVebj/zAU0cAvvEmdzBrloB1pIlleogUUgoOcCz0
         QQAA==
X-Gm-Message-State: AOJu0Yy/xahn6aV+y7B3vaEmLcko6793T5yzkjYGvfehCzjLF8Pw5iia
	FLbUlEk/smFlflOFkbCjxeZcRg==
X-Google-Smtp-Source: AGHT+IGvqV00K1g0/ZodkrKU5PL2uuUghZiRtw/5AJYE/blsphF6S3mDHOM5cs0FDHZM3+gOY2KwWg==
X-Received: by 2002:a17:902:f548:b0:1c5:d354:93b6 with SMTP id h8-20020a170902f54800b001c5d35493b6mr8832777plf.67.1695664094936;
        Mon, 25 Sep 2023 10:48:14 -0700 (PDT)
Received: from ghost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id s23-20020a170902989700b001c5de2f1686sm8260228plp.99.2023.09.25.10.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 10:48:14 -0700 (PDT)
Date: Mon, 25 Sep 2023 10:48:11 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Atish Patra <atishp@atishpatra.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Shuah Khan <shuah@kernel.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Mayuresh Chitale <mchitale@ventanamicro.com>,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 2/9] RISC-V: Detect XVentanaCondOps from ISA string
Message-ID: <ZRHH25IyJJLWSolC@ghost>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925133859.1735879-3-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925133859.1735879-3-apatel@ventanamicro.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 07:08:52PM +0530, Anup Patel wrote:
> The Veyron-V1 CPU supports custom conditional arithmetic and
> conditional-select/move operations referred to as XVentanaCondOps
> extension. In fact, QEMU RISC-V also has support for emulating
> XVentanaCondOps extension.
> 
> Let us detect XVentanaCondOps extension from ISA string available
> through DT or ACPI.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  arch/riscv/include/asm/hwcap.h | 1 +
>  arch/riscv/kernel/cpufeature.c | 1 +
>  2 files changed, 2 insertions(+)
> 
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
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

I worry about storing vendor extensions in this file. Because vendor
extensions are not standardized, they can only be expected to have the
desired behavior on hardware with the appropriate vendor id. A couple
months ago I sent a patch to address this by handling vector extensions
independently for each vendor [1]. I dropped the patch because it
relied upon Heiko's T-Head vector extension support that he stopped
working on. However, I can revive this patch so you can build off of it.

This scheme has the added benefit that vendors do not have to worry
about conficting extensions, and the kernel does not have to act as a
key registry for vendors.

What are your thoughts?

- Charlie

[1] https://lore.kernel.org/lkml/20230705-thead_vendor_extensions-v1-2-ad6915349c4d@rivosinc.com/


