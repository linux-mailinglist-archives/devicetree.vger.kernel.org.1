Return-Path: <devicetree+bounces-24929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7187B811AC9
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 18:19:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78F991C2114A
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:19:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3BDE5579B;
	Wed, 13 Dec 2023 17:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="D0KAKx8N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0986DF5
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 09:19:40 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40c3ca9472dso51473975e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 09:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1702487978; x=1703092778; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=W3BG24W610lJuKV/MW/fbLfcOspFMJtOeERiQaIiRWM=;
        b=D0KAKx8N4MOccXzvsRUZwfL8OuCPtt3k7XEY9o9U6Ih3o+HdBLv6i4JjXRresI2HZ+
         wanjfnLKZVo68KteA3Zw+i7+NbBdBjEJJEE9vSdH3EUFIkSz+QBF8q/s/jdm7kcHU8R/
         gXPfscw1sWibuwuqwo2lwqQxJbXz6M3BIsEVuBJqb79Lqe1LrGNOFebPQ+r3IC7POhRX
         MK4Wrx23J5YbUz386TcdmtUd318S1eQEvV8IoyskZ3UqEjuI239KKX4WJCQ0mIcLMoVv
         MUJ9U/QgfjVAndSoKONembXEsWkpKqW9RsiaoVANQgOTkXM47AH4sjS11iY/ItjloGWk
         cUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702487978; x=1703092778;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W3BG24W610lJuKV/MW/fbLfcOspFMJtOeERiQaIiRWM=;
        b=NIkXCqVAiasJt4/n1hm4Wd49mKzqCCR0Hr6vrtPqyspPLd2iaiQSZZyZkx9q4LlK+y
         X7d1bWmZLNemnAyPexAUkd8pWI+mAWdQDF1dNvYkwdYT7XVbFkfR5S8aHVVLXueiyS5p
         Pkio+qMINkBDE4Qz6TOn17Om9yOj8l81FnOfOiEuwLJUJ8+Z3YyrOO2eCJXF4s3aqw7J
         Nrj9iaXrkvnGY1+wmj9JKMntbH71YMrQKC5xzLQoFnjPYseur7Nf0OuOQqwCRnIT3mb+
         Zrtgl0AZ9U/F5f1dW7iDNCgSWWbogYJAbL1dupvvJ1YdtrhBWoTPzGX2oJKEPWkQl1sU
         /TJQ==
X-Gm-Message-State: AOJu0Yz4XkpYJa0zAmnKri3TUrWk/YInu2knezuezgAu3FE2CU6ki8e0
	QK28apr03S4MDo5D24JZZ/P0Xg==
X-Google-Smtp-Source: AGHT+IFLcGLrThHqoGdIdS0RECHOQeVt4478xU7EiOcPPKGKy3QIAr+KLDIgxCltoydbRPGDwIQ3TA==
X-Received: by 2002:a05:600c:4749:b0:40c:a11:19df with SMTP id w9-20020a05600c474900b0040c0a1119dfmr2878247wmo.180.1702487978245;
        Wed, 13 Dec 2023 09:19:38 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id r20-20020a05600c459400b0040b349c91acsm23318063wmo.16.2023.12.13.09.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 09:19:37 -0800 (PST)
Date: Wed, 13 Dec 2023 18:19:37 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Shuah Khan <shuah@kernel.org>, Anup Patel <anup@brainfault.org>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 03/15] KVM: riscv: selftests: Add Zbc extension to
 get-reg-list test
Message-ID: <20231213-1082f104e8ba65ee3db6aa3a@orel>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
 <20231128145357.413321-4-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128145357.413321-4-apatel@ventanamicro.com>

On Tue, Nov 28, 2023 at 08:23:45PM +0530, Anup Patel wrote:
> The KVM RISC-V allows Zbc extension for Guest/VM so let us add
> this extension to get-reg-list test.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> index b6b4b6d7dacd..4b75b011f2d8 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -44,6 +44,7 @@ bool filter_reg(__u64 reg)
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SVPBMT:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZBA:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZBB:
> +	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZBC:

Assuming this gets rebased on [1] then this line becomes

  case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBC:

[1] https://lore.kernel.org/linux-riscv/20231213170951.93453-8-ajones@ventanamicro.com/

>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZBS:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICBOM:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICBOZ:
> @@ -361,6 +362,7 @@ static const char *isa_ext_id_to_str(const char *prefix, __u64 id)
>  		KVM_ISA_EXT_ARR(SVPBMT),
>  		KVM_ISA_EXT_ARR(ZBA),
>  		KVM_ISA_EXT_ARR(ZBB),
> +		KVM_ISA_EXT_ARR(ZBC),
>  		KVM_ISA_EXT_ARR(ZBS),
>  		KVM_ISA_EXT_ARR(ZICBOM),
>  		KVM_ISA_EXT_ARR(ZICBOZ),
> @@ -739,6 +741,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(svnapot, SVNAPOT);
>  KVM_ISA_EXT_SIMPLE_CONFIG(svpbmt, SVPBMT);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zba, ZBA);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbb, ZBB);
> +KVM_ISA_EXT_SIMPLE_CONFIG(zbc, ZBC);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbs, ZBS);
>  KVM_ISA_EXT_SUBLIST_CONFIG(zicbom, ZICBOM);
>  KVM_ISA_EXT_SUBLIST_CONFIG(zicboz, ZICBOZ);
> @@ -761,6 +764,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
>  	&config_svpbmt,
>  	&config_zba,
>  	&config_zbb,
> +	&config_zbc,
>  	&config_zbs,
>  	&config_zicbom,
>  	&config_zicboz,
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>


