Return-Path: <devicetree+bounces-1661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7467A74AF
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:47:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 790591C20BF3
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5D7D8838;
	Wed, 20 Sep 2023 07:47:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E8F8837
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:47:01 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E0E5CA
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:46:56 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-403012f276dso70159435e9.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695196015; x=1695800815; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JVunG7o3B5X9vaQEWyirI9ryk0oP6Di9CEjbsBLCF3g=;
        b=fHfOiLxqkX2tSeVZEYuOcrhH248DI/1r3oPkrfSwzvCd19TsI7wsDzMRoMdD8OWrZk
         Lp9hTAsk6e7YDGOevgOjdXGrYp2urWkCafL/CUA1mjPfLQTUSEmY6zftslcJ8sRQsF2H
         DEEIHOKzogDrdEKiaXnCu6hP8e5lp6e7UWR3zeDC8aAPIE7H6rWrBRXPHXBjyhIhqJDB
         cxsxSJDrMxtaNZLu+Tfx9wlAnddAX8HOtLfmEqJ33R0a7SN/WfupE2L6/W6MzyIDtcqW
         xy6h+xttBcydarZT5XGW21tefc3CjBFu4hoGl5PGEelQcW61/q6oYkqIno0hdw95/tSZ
         +klA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695196015; x=1695800815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JVunG7o3B5X9vaQEWyirI9ryk0oP6Di9CEjbsBLCF3g=;
        b=OD0cmv3NAAf6b4aKEdoJRnJtdHkV9AcbU8a5wa75aRKsNHvscI733nAN0Ta+8DhAt+
         4ZDrouqXEL2M62hmg6cIqeLniKchTIXs+hxGNvzNQTYHK7VBeShnfl88TKg5qFMq1NDo
         im8bMztc886S4vD6wUB8U16ujSmgfanTf/3kBYmDkPi79OFXctR4UrOH9sMnuDUhj+7Y
         AgyEHnlpTuWFum9QfjHXQVTx64c3BCf+4YtOW7VMwHV4vrc7s/sEAfXN7kWz0hEJPXJA
         /AXEzkiSXD7fYMLxW9TJxQ5Y9f+3eOScWhoSw2EZmpsRVi6BP/C/s46rz+Cs0XUSWSal
         vg8w==
X-Gm-Message-State: AOJu0YwvVSyNoARoBVaH9sWboPxKNJ67GCDXGBgS5ZoNGiidJYyIA4wY
	rnRz7mdQSkaO4wcyqIMzYV663A==
X-Google-Smtp-Source: AGHT+IGG/3UyVqZOOAbC3tloQ80fV1Kl6R8qcuyc4Oxl1dNBdENA4jwJSlr1R6ygp4yAftiTc+gUZw==
X-Received: by 2002:a05:600c:280b:b0:401:38dc:8916 with SMTP id m11-20020a05600c280b00b0040138dc8916mr1690704wmb.10.1695196014842;
        Wed, 20 Sep 2023 00:46:54 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id a24-20020a05600c225800b00402d7105035sm1167853wmm.26.2023.09.20.00.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 00:46:54 -0700 (PDT)
Date: Wed, 20 Sep 2023 09:46:53 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 4/7] RISC-V: KVM: Allow Zicond extension for Guest/VM
Message-ID: <20230920-be44cc5bd0f749a1137d103c@orel>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-5-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919035343.1399389-5-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:23:40AM +0530, Anup Patel wrote:
> We extend the KVM ISA extension ONE_REG interface to allow KVM
> user space to detect and enable Zicond extension for Guest/VM.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> index e030c12c7dfc..35ceb38a4eff 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -139,6 +139,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>  	KVM_RISCV_ISA_EXT_ZIHPM,
>  	KVM_RISCV_ISA_EXT_SMSTATEEN,
>  	KVM_RISCV_ISA_EXT_XVENTANACONDOPS,
> +	KVM_RISCV_ISA_EXT_ZICOND,
>  	KVM_RISCV_ISA_EXT_MAX,
>  };
>  
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index 17a847a1114b..d3ca4969c985 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -47,6 +47,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
>  	KVM_ISA_EXT_ARR(ZICBOM),
>  	KVM_ISA_EXT_ARR(ZICBOZ),
>  	KVM_ISA_EXT_ARR(ZICNTR),
> +	KVM_ISA_EXT_ARR(ZICOND),
>  	KVM_ISA_EXT_ARR(ZICSR),
>  	KVM_ISA_EXT_ARR(ZIFENCEI),
>  	KVM_ISA_EXT_ARR(ZIHINTPAUSE),
> @@ -95,6 +96,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
>  	case KVM_RISCV_ISA_EXT_ZBB:
>  	case KVM_RISCV_ISA_EXT_ZBS:
>  	case KVM_RISCV_ISA_EXT_ZICNTR:
> +	case KVM_RISCV_ISA_EXT_ZICOND:
>  	case KVM_RISCV_ISA_EXT_ZICSR:
>  	case KVM_RISCV_ISA_EXT_ZIFENCEI:
>  	case KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

