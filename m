Return-Path: <devicetree+bounces-1675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6017A75A2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:19:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A6C71C20A13
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:18:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4782F9F6;
	Wed, 20 Sep 2023 08:18:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256EAC8E0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:18:54 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 797D4129
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 01:18:52 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-404539209ffso68733185e9.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 01:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695197931; x=1695802731; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LqBFN5FLB49lnK/5qmtGVnKUxCOh5CXzqPeEzI92Gus=;
        b=H/Q66Ri5aVz8NB1wAKAM3VNIBTPApCowNWaRlZopnkcBTDnIRvtVsrcvEApkM14cGJ
         K45ugsy/hyZMkcGKsxou6GqsGyszxX9AzfdO+Mog2ljcczoiGRU6Ofu2a+5b2bODg771
         CCLQEp3BtZ2eEcKT2yAEyQSPUOTeVXvhIzubmnj8JlxvZ9r8CuZdaNjHQodVs1hd7wuV
         +wHxfqt15K7ckzrhC+EGWhnk4LYd5QiIO5q7TsbvcoI6XoYyzZjDsYT6iN/mmNXbQxWu
         CNu0GzpTkQsH8Vjb/wkQI1Jxe7v2Yf2Q2D34wkIwmOsBGBqvKDzgrr8BGWH1QcIWWLpF
         RTDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695197931; x=1695802731;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LqBFN5FLB49lnK/5qmtGVnKUxCOh5CXzqPeEzI92Gus=;
        b=J4dRNVd51gF81QFYSlylZoyDaC5qhQCqVQMb+ZTgha6O5oiys4WvaCV87qtHsjenmN
         Czc+d/6FhMyPKh8nTuitJz5Tzkd414TLCtlIukjJ6bvFnurlidlgjhAn8EZg0NHuoIdV
         tGe2yTlRrlT5T7RkhDNUa9NiSzJIAhsUUqtRfZ6m66GhWlIrGTuI37jOzRXynNRwRxNv
         XnQPeijTHN3a//Y8HcqlLnIduVb3utGnB5/663nc/iOP3KaUnPk7vM8NIFhwmmm0P50N
         m+LQ0yPQKmyv4KQdrB2NUcc0RftwjxfF7e6Z38ZIhyq8kxwTE63fWOHUItzgyhthMc8s
         XPRg==
X-Gm-Message-State: AOJu0Yz66/dI83kQphx60VgxwTlXmqRFZRX8YVLGEW1XnnzVJqkOags0
	OhXrGhLfaI72UeNgYghdIJySiw==
X-Google-Smtp-Source: AGHT+IEL6XDWeA1RRkJT2O9NGVoH7Skvq4BGuzq8l9Y1wg1d+Qpftyi3lW7iMmOUd4m4gogg1F9R8g==
X-Received: by 2002:a05:600c:ace:b0:401:b53e:6c40 with SMTP id c14-20020a05600c0ace00b00401b53e6c40mr1791966wmr.10.1695197930897;
        Wed, 20 Sep 2023 01:18:50 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id c26-20020a05600c0ada00b00400268671c6sm1250996wmr.13.2023.09.20.01.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 01:18:50 -0700 (PDT)
Date: Wed, 20 Sep 2023 10:18:49 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 7/7] KVM: riscv: selftests: Add condops extensions to
 get-reg-list test
Message-ID: <20230920-d30b398a99804418792264c3@orel>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-8-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919035343.1399389-8-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:23:43AM +0530, Anup Patel wrote:
> We have a new conditional operations related ISA extensions so let us add
> these extensions to get-reg-list test.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> index 9f464c7996c6..4ad4bf87fa78 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -50,6 +50,8 @@ bool filter_reg(__u64 reg)
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIFENCEI:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHPM:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SMSTATEEN:
> +	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_XVENTANACONDOPS:
> +	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICOND:
>  		return true;
>  	/* AIA registers are always available when Ssaia can't be disabled */
>  	case KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_AIA | KVM_REG_RISCV_CSR_AIA_REG(siselect):
> @@ -360,6 +362,8 @@ static const char *isa_ext_id_to_str(__u64 id)
>  		"KVM_RISCV_ISA_EXT_ZIFENCEI",
>  		"KVM_RISCV_ISA_EXT_ZIHPM",
>  		"KVM_RISCV_ISA_EXT_SMSTATEEN",
> +		"KVM_RISCV_ISA_EXT_XVENTANACONDOPS",
> +		"KVM_RISCV_ISA_EXT_ZICOND",
>  	};
>  
>  	if (reg_off >= ARRAY_SIZE(kvm_isa_ext_reg_name)) {
> -- 
> 2.34.1
>

Don't we want to add test configs for these?

Thanks,
drew

