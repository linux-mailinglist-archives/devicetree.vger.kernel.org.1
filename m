Return-Path: <devicetree+bounces-1662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 03EE17A74D2
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:50:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F002E1C20C3E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 07:50:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B1D48838;
	Wed, 20 Sep 2023 07:50:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A748837
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 07:50:18 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E13185
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:50:14 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-31f71b25a99so6423931f8f.2
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 00:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695196213; x=1695801013; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=v7CkeCjzvtAvF0BFc3WkolXtUPqkPIzEOcb2KkTPFs0=;
        b=Elt+kzVC7E2IH0bp6reU6j/ZHuNUhA+qTEhn3dH9kd7dAAFz06uWdp01/UJUXuySeE
         b5nA7ae92GreyupW3kXnq5YbNu9o9NJhAD2adh9gFiMXPwUo081zAJAUpvfIqGFFAYto
         FgaJpAkvBZwgYkiPB8+CN0q+26+vemKFTIzcrcUnct4o4KvhBm5h6idG6fO1UxzgPx43
         AcfNNkqwjyIhb9PRxURyr6udIBY3665zvrpycU89TbQ9/+DeWaWjC/ItBLU0GBoR9LEt
         JLH/rrIBuUYrl+3t9FkBSZ1akwCXwtyfYTmC8fm6oL0gBIL4xmHGOWzgDY8hHAeE2x6K
         c06Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695196213; x=1695801013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v7CkeCjzvtAvF0BFc3WkolXtUPqkPIzEOcb2KkTPFs0=;
        b=jTCbd2dAbPVAI+58fY6peNs1HXaIFS/WMYW5iA5qux7lunBzmgBGtWq1xpFzhgXrqz
         Bk0u56Bjku7dPBMvPkKR949xJRa7Y+1DQMW3AJhuU3B00dPVIP0LgC+ORBwNoHBbJq7+
         igF1vAatuO3CseE8h7kWz8Vc8o8Z2bEgJZKsTt6xqG3SuOMSyHXiohhPl1xdhMX2tYWP
         LV0jVSUsDf2iyQ42g74y6d49vDUvUnXqWlJTvmjY/FnydWD17z4l9/abdwfq9dluGFGg
         sECYjlDrn4G44nMp+oFV+PfBwJni1aurnKBZZjRYcjOfWrpeeWUGmmnQRmVg5obzzjOk
         gHVA==
X-Gm-Message-State: AOJu0YxnrZ/lWb2kw/RB0nUZZn0jHy704hPd+Ajmnf4UYfFcI+n4G3PM
	xdOx0Y8BmbxabPr996ZFOREloA==
X-Google-Smtp-Source: AGHT+IGw1VBQZO24lqLlXFGTfo8W9hy1BjDwhuuXt9Rrtc78ra8pQJSm+b20JrGdyY74TJahcGWzCA==
X-Received: by 2002:adf:d0c8:0:b0:31f:d8b3:ea06 with SMTP id z8-20020adfd0c8000000b0031fd8b3ea06mr1576992wrh.0.1695196213173;
        Wed, 20 Sep 2023 00:50:13 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id z8-20020a056000110800b0031f9bdb79dasm17647528wrw.61.2023.09.20.00.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 00:50:12 -0700 (PDT)
Date: Wed, 20 Sep 2023 09:50:12 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 5/7] KVM: riscv: selftests: Add senvcfg register to
 get-reg-list test
Message-ID: <20230920-a6e56a81b36f95d115efceff@orel>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-6-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919035343.1399389-6-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:23:41AM +0530, Anup Patel wrote:
> We have a new senvcfg register in the general CSR ONE_REG interface
> so let us add it to get-reg-list test.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> index 85907c86b835..0928c35470ae 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -209,6 +209,8 @@ static const char *general_csr_id_to_str(__u64 reg_off)
>  		return RISCV_CSR_GENERAL(satp);
>  	case KVM_REG_RISCV_CSR_REG(scounteren):
>  		return RISCV_CSR_GENERAL(scounteren);
> +	case KVM_REG_RISCV_CSR_REG(senvcfg):
> +		return RISCV_CSR_GENERAL(senvcfg);
>  	}
>  
>  	TEST_FAIL("Unknown general csr reg: 0x%llx", reg_off);
> @@ -532,6 +534,7 @@ static __u64 base_regs[] = {
>  	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(sip),
>  	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(satp),
>  	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(scounteren),
> +	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(senvcfg),
>  	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(frequency),
>  	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(time),
>  	KVM_REG_RISCV | KVM_REG_SIZE_U64 | KVM_REG_RISCV_TIMER | KVM_REG_RISCV_TIMER_REG(compare),
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

