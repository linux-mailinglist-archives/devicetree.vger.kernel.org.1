Return-Path: <devicetree+bounces-1673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBE97A758E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:13:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26791281842
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E684F9E9;
	Wed, 20 Sep 2023 08:13:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8A7C8E0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:13:34 +0000 (UTC)
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F6AFCE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 01:13:32 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3214d4ecd39so2970934f8f.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 01:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1695197611; x=1695802411; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bFVwkQGYHLyQMWXHCf9YewQuFfTq2ysEb3BcSmI7FIU=;
        b=BJ6u2Pql7OkqQ1r+Iqe2+y7461xtkaFj69u7uawVgPKyR72fkCZVGwJCYK0AGWL+eS
         aprYUV4ov1ZUtjnTXKTL7YISl98GwfBKD1gGuTOPD4BL0uiNPAyZqHRgOzcs3euMvvYp
         9AQBKpx6KZ7RFC//lhJgAH7pHT4KDyDR6pVe8YZEcm/cT+E4X/0PihZe57Hjqy6/Jxg6
         ol5xC1GUuHjf/6SivCb8J8yVzXg51d9Y96GQZy7A/8P46ku/F6xSXTG3J/jzu9CvnBBQ
         jYf4aFlwINk8FNwESFV3b5UFiowOCYZRB7NErkUwBLlxYLbhcef4+yQAnQaAs/3TjGfV
         /OcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695197611; x=1695802411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bFVwkQGYHLyQMWXHCf9YewQuFfTq2ysEb3BcSmI7FIU=;
        b=eKDiDyRCJvgJbeoxaQ/KqzANYpJY2Jg6phV4CSy2O7chd3XOmjyR8ltmdtTxGSXvbx
         9uUM1TF8SjWSnkjwAxwZuBEZ5dGhoSlNtVHR79hTYcd/LMw5gIK7b+ODda2sNjSyB8gy
         N06eplpPyEy/V/7ncbIbtouXySGLtLVQQe4W3R0bDbs0WS/M99Av/gffl3aPQHtaHkRx
         fmZU+xjfSX8uS3q/3b8rnM+eFDInojGr1Yv7BdPRTYo3hAY+KGQdNgY8C6tBagjiAHEM
         ur9/oHQa9kUsqMOmaD8vyC499JH49BTkj3qv7dGzbsIg9eZ0+44X3zI2lytzQQ1LnV6U
         ed6A==
X-Gm-Message-State: AOJu0YxTwamWIqhqDbqENAvPjb03C76di5cbpNHWRMi5X184/tBvWVBg
	cmhwlhgTpg0DpFtQiWIpddZZDA==
X-Google-Smtp-Source: AGHT+IGq8/xjn/oNq2PTpNaOrP+pjj6Y9zwWhdZGp94uECltWuxSC0BJqvKxel2SPT2PaHs+TjltqA==
X-Received: by 2002:a5d:56ce:0:b0:31c:8c93:61e3 with SMTP id m14-20020a5d56ce000000b0031c8c9361e3mr1658749wrw.60.1695197610866;
        Wed, 20 Sep 2023 01:13:30 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id e1-20020a5d65c1000000b00315af025098sm17764141wrw.46.2023.09.20.01.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 01:13:30 -0700 (PDT)
Date: Wed, 20 Sep 2023 10:13:29 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Shuah Khan <shuah@kernel.org>, Mayuresh Chitale <mchitale@ventanamicro.com>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 6/7] KVM: riscv: selftests: Add smstateen registers to
 get-reg-list test
Message-ID: <20230920-af833495ead3e2f8c32d63cc@orel>
References: <20230919035343.1399389-1-apatel@ventanamicro.com>
 <20230919035343.1399389-7-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919035343.1399389-7-apatel@ventanamicro.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 19, 2023 at 09:23:42AM +0530, Anup Patel wrote:
> We have a new smstateen registers as separate sub-type of CSR ONE_REG
> interface so let us add these registers to get-reg-list test.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  .../selftests/kvm/riscv/get-reg-list.c        | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> index 0928c35470ae..9f464c7996c6 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -49,6 +49,7 @@ bool filter_reg(__u64 reg)
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZICSR:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIFENCEI:
>  	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_ZIHPM:
> +	case KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SMSTATEEN:
>  		return true;
>  	/* AIA registers are always available when Ssaia can't be disabled */
>  	case KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_AIA | KVM_REG_RISCV_CSR_AIA_REG(siselect):
> @@ -184,6 +185,8 @@ static const char *core_id_to_str(const char *prefix, __u64 id)
>  	"KVM_REG_RISCV_CSR_GENERAL | KVM_REG_RISCV_CSR_REG(" #csr ")"
>  #define RISCV_CSR_AIA(csr) \
>  	"KVM_REG_RISCV_CSR_AIA | KVM_REG_RISCV_CSR_REG(" #csr ")"
> +#define RISCV_CSR_SMSTATEEN(csr) \
> +	"KVM_REG_RISCV_CSR_SMSTATEEN | KVM_REG_RISCV_CSR_REG(" #csr ")"
>  
>  static const char *general_csr_id_to_str(__u64 reg_off)
>  {
> @@ -241,6 +244,18 @@ static const char *aia_csr_id_to_str(__u64 reg_off)
>  	return NULL;
>  }
>  
> +static const char *smstateen_csr_id_to_str(__u64 reg_off)
> +{
> +	/* reg_off is the offset into struct kvm_riscv_smstateen_csr */
> +	switch (reg_off) {
> +	case KVM_REG_RISCV_CSR_SMSTATEEN_REG(sstateen0):
> +		return RISCV_CSR_SMSTATEEN(sstateen0);
> +	}
> +
> +	TEST_FAIL("Unknown smstateen csr reg: 0x%llx", reg_off);
> +	return NULL;
> +}
> +
>  static const char *csr_id_to_str(const char *prefix, __u64 id)
>  {
>  	__u64 reg_off = id & ~(REG_MASK | KVM_REG_RISCV_CSR);
> @@ -253,6 +268,8 @@ static const char *csr_id_to_str(const char *prefix, __u64 id)
>  		return general_csr_id_to_str(reg_off);
>  	case KVM_REG_RISCV_CSR_AIA:
>  		return aia_csr_id_to_str(reg_off);
> +	case KVM_REG_RISCV_CSR_SMSTATEEN:
> +		return smstateen_csr_id_to_str(reg_off);
>  	}
>  
>  	TEST_FAIL("%s: Unknown csr subtype: 0x%llx", prefix, reg_subtype);
> @@ -342,6 +359,7 @@ static const char *isa_ext_id_to_str(__u64 id)
>  		"KVM_RISCV_ISA_EXT_ZICSR",
>  		"KVM_RISCV_ISA_EXT_ZIFENCEI",
>  		"KVM_RISCV_ISA_EXT_ZIHPM",
> +		"KVM_RISCV_ISA_EXT_SMSTATEEN",

If we merge [1] first, then this would be added in alphabetical order.

[1] https://lore.kernel.org/all/20230817162344.17076-6-ajones@ventanamicro.com/

>  	};
>  
>  	if (reg_off >= ARRAY_SIZE(kvm_isa_ext_reg_name)) {
> @@ -629,6 +647,11 @@ static __u64 aia_regs[] = {
>  	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SSAIA,
>  };
>  
> +static __u64 smstateen_regs[] = {
> +	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_CSR | KVM_REG_RISCV_CSR_SMSTATEEN | KVM_REG_RISCV_CSR_SMSTATEEN_REG(sstateen0),
> +	KVM_REG_RISCV | KVM_REG_SIZE_ULONG | KVM_REG_RISCV_ISA_EXT | KVM_RISCV_ISA_EXT_SMSTATEEN,
> +};
> +
>  static __u64 fp_f_regs[] = {
>  	KVM_REG_RISCV | KVM_REG_SIZE_U32 | KVM_REG_RISCV_FP_F | KVM_REG_RISCV_FP_F_REG(f[0]),
>  	KVM_REG_RISCV | KVM_REG_SIZE_U32 | KVM_REG_RISCV_FP_F | KVM_REG_RISCV_FP_F_REG(f[1]),
> @@ -736,6 +759,8 @@ static __u64 fp_d_regs[] = {
>  	{"zihpm", .feature = KVM_RISCV_ISA_EXT_ZIHPM, .regs = zihpm_regs, .regs_n = ARRAY_SIZE(zihpm_regs),}
>  #define AIA_REGS_SUBLIST \
>  	{"aia", .feature = KVM_RISCV_ISA_EXT_SSAIA, .regs = aia_regs, .regs_n = ARRAY_SIZE(aia_regs),}
> +#define SMSTATEEN_REGS_SUBLIST \
> +	{"smstateen", .feature = KVM_RISCV_ISA_EXT_SMSTATEEN, .regs = smstateen_regs, .regs_n = ARRAY_SIZE(smstateen_regs),}
>  #define FP_F_REGS_SUBLIST \
>  	{"fp_f", .feature = KVM_RISCV_ISA_EXT_F, .regs = fp_f_regs, \
>  		.regs_n = ARRAY_SIZE(fp_f_regs),}
> @@ -863,6 +888,14 @@ static struct vcpu_reg_list aia_config = {
>  	},
>  };
>  
> +static struct vcpu_reg_list smstateen_config = {
> +	.sublists = {
> +	BASE_SUBLIST,
> +	SMSTATEEN_REGS_SUBLIST,
> +	{0},
> +	},
> +};
> +
>  static struct vcpu_reg_list fp_f_config = {
>  	.sublists = {
>  	BASE_SUBLIST,
> @@ -895,6 +928,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
>  	&zifencei_config,
>  	&zihpm_config,
>  	&aia_config,
> +	&smstateen_config,
>  	&fp_f_config,
>  	&fp_d_config,
>  };
> -- 
> 2.34.1
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

Thanks,
drew

