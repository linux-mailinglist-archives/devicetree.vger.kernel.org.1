Return-Path: <devicetree+bounces-1660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 024D17A74A2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:46:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFDE1281CDB
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526678F6C;
	Wed, 20 Sep 2023 07:46:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9F3C8C8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:46:12 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D287CE9
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:46:05 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4051fea48a8so6279925e9.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695195964; x=1695800764; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NCQ64axOzYWQoVJr89JJGEJBkzqcHIgukSDri2Lu2nY=;
        b=gyy/EoGYbXfyOyLpfHmDk2WWbOm9L6Zqt4sjxcvHKfTBm6XNcQ8YSz6YjLKJRGyUSJ
         c91AkGYNN/LlvPGeoNjPduIyomQsXUhY48vcfafjMUSBTZ6A0SLRO0nkPfMTmzdn+DPx
         apOLtHGVcULHy/b/KcG9CvQ9J7MFWuybFZHJ91cBojYo2OvxoT8gcBispXSV5r8+Df+Z
         EBITdzHl5MLglRy+VRQkEM5U6hVwfgLOffEFUXZE8ubWnzR8QKA1fjYqMxtSKqgKXrJ8
         ay993suO4Qh93QmcU/F9s/Hmm8u1lZWM3Wzh30RzmXuM5YRsU7H7DSH4qeRMdRP5X5Of
         JQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695195964; x=1695800764;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NCQ64axOzYWQoVJr89JJGEJBkzqcHIgukSDri2Lu2nY=;
        b=gPRtDpvsK6/gADcvKt84+3VLDAFK6EaOtXuCTbiX1yKwTDLsNXGa5OBk0C9swg1Yl5
         WxsoFB6gtMDF9dOalfO2vW+uv7k/yrNe+BvP0JasJaWqhoVeCsP3uaFxLeENQ+FlPvA+
         gztxRujW77Qf/AwKrHahUD9ckKmcHVxYyntFPyZUP5DUQ8tusko4IYdbxfQpNChEGqUr
         H3SAHGFZ0lFce0BykzrtBCKopHNnM47Q1yeXLzVZ+xgkXUjtIU/vOSX5JfjZnieAlQ86
         xWJff1gBHb5oLK3unDgp5lxt3ahzk8H5XejjY0uMAKrL4O6kuua+GsVfw/nf9iagV1VA
         JQFg==
X-Gm-Message-State: AOJu0Yz1vatuEAFHL44uJo6LOm5/7IffhbF9qwdHc8ki7W0I1QbABCIu
	mX471ZDpLv8fdUlQq667KBQUtw==
X-Google-Smtp-Source: AGHT+IGLhZyo0JLpS7qrAayTtRpx8WJ35UC8iBDR4G+V5sBDzN/EMK5surVVEn79abyRomu1HrsACQ==
X-Received: by 2002:a7b:cd94:0:b0:401:b204:3b85 with SMTP id y20-20020a7bcd94000000b00401b2043b85mr1635240wmj.36.1695195963742;
        Wed, 20 Sep 2023 00:46:03 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id j5-20020a5d6045000000b0032008f99216sm10914828wrt.96.2023.09.20.00.46.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 00:46:03 -0700 (PDT)
Date: Wed, 20 Sep 2023 09:46:02 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 3/7] RISC-V: KVM: Allow XVentanaCondOps extension for
 Guest/VM
Message-ID: <20230920-64bd7206b92e056d76cd9715@orel>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-4-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919035343.1399389-4-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:23:39AM +0530, Anup Patel wrote:
> We extend the KVM ISA extension ONE_REG interface to allow KVM
> user space to detect and enable XVentanaCondOps extension for
> Guest/VM.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> index b1baf6f096a3..e030c12c7dfc 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -138,6 +138,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>  	KVM_RISCV_ISA_EXT_ZIFENCEI,
>  	KVM_RISCV_ISA_EXT_ZIHPM,
>  	KVM_RISCV_ISA_EXT_SMSTATEEN,
> +	KVM_RISCV_ISA_EXT_XVENTANACONDOPS,
>  	KVM_RISCV_ISA_EXT_MAX,
>  };
>  
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index 388599fcf684..17a847a1114b 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -40,6 +40,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
>  	KVM_ISA_EXT_ARR(SVINVAL),
>  	KVM_ISA_EXT_ARR(SVNAPOT),
>  	KVM_ISA_EXT_ARR(SVPBMT),
> +	KVM_ISA_EXT_ARR(XVENTANACONDOPS),
>  	KVM_ISA_EXT_ARR(ZBA),
>  	KVM_ISA_EXT_ARR(ZBB),
>  	KVM_ISA_EXT_ARR(ZBS),
> @@ -89,6 +90,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
>  	case KVM_RISCV_ISA_EXT_SSTC:
>  	case KVM_RISCV_ISA_EXT_SVINVAL:
>  	case KVM_RISCV_ISA_EXT_SVNAPOT:
> +	case KVM_RISCV_ISA_EXT_XVENTANACONDOPS:
>  	case KVM_RISCV_ISA_EXT_ZBA:
>  	case KVM_RISCV_ISA_EXT_ZBB:
>  	case KVM_RISCV_ISA_EXT_ZBS:
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

