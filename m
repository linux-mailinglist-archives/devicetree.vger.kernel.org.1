Return-Path: <devicetree+bounces-3251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F227ADE63
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 20:12:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 98A5DB20A16
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:12:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDEA224C8;
	Mon, 25 Sep 2023 18:12:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F22A1F61A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 18:12:49 +0000 (UTC)
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F61111
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:12:46 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-27751ac0653so1802528a91.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 11:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1695665566; x=1696270366; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KsRIBM7dOdcj87tvwe4EQo8GqJ5cXnTOsGKKYnAPAk4=;
        b=p+wkVPXVac2IdmsmXQNOMTyp2QGxdpZV3v/ms7JJKanYUFUYLKgISa5R1YS+SEeIIS
         18CeoB5wYm/sXkounIH9X9nPLVJnJ//R6FcgQTUUZAz81tTZF4aJWTqRaOO4yBhLJNo4
         VR8FNMHCD1A7CH4kYo7DDFXZMYwjcOosINnUgCrFlHY3CFqe1ROXIQ+0gjBdZ3er4D49
         eAw29SCzpnniBEQ9JSC5ykrydO+XY9ouTjHyVakOPsB5IQGH1Nio39p9sBHNlv12qwtg
         ef13lc71Tba9GoFQuOkwgHMcJ3MqjnfOx6CiGbhufL/4XMuXqc9EhOpw0uvzfrXKs/WS
         qeHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695665566; x=1696270366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KsRIBM7dOdcj87tvwe4EQo8GqJ5cXnTOsGKKYnAPAk4=;
        b=Z71F8vaHUtv/aJ0OjBr+XF2Ey7Xmy9j4nlqFfzytWr5AB55YxvIlDFvTtZRxEzBgBp
         hcIle4/pMfuQu7Gtaf1gTzX7JCUqPTn4qpnTNFpeJGpiEi+eJ8+fzQNRBNJpZ5Y6BPxW
         lpUpkM5mjwN9/qq6M5uyjVrsjIKZBIchVh4rre0A5nEqWYTLknZQqgF9F2+29/JyVN8c
         I9VQGQWP2LFzzcZZB4Qkay8SWCJoxgFFqtmg6FtXctLQwnp73lCQH352iAEbJVAhm2G7
         E8U3oa9+pkODD2b6yxTM+Wvxe1NopXDFqCIDTahnyPlsSFBQPTTJQza428cZoLwpxFyy
         iupw==
X-Gm-Message-State: AOJu0YygpaZ+B9VnWXL/3fsOwdWfN0HY7Lx3sv5augBQJH1if86PREqD
	GUE/mzTd7maxShzG+z9t37A5Kg==
X-Google-Smtp-Source: AGHT+IEITTnOWUqqZd2QQfvnjuWHs46rWx0fKoZhZxeSiyP6OtQJWAzOWXHuNzwpn4hPs7lDCludXw==
X-Received: by 2002:a17:90b:2386:b0:267:faba:705 with SMTP id mr6-20020a17090b238600b00267faba0705mr3779807pjb.10.1695665565853;
        Mon, 25 Sep 2023 11:12:45 -0700 (PDT)
Received: from ghost ([50.221.140.188])
        by smtp.gmail.com with ESMTPSA id az14-20020a17090b028e00b002777001ee76sm949619pjb.18.2023.09.25.11.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 11:12:45 -0700 (PDT)
Date: Mon, 25 Sep 2023 11:12:42 -0700
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
Message-ID: <ZRHNmuv8KzUU7u0r@ghost>
References: <20230925133859.1735879-1-apatel@ventanamicro.com>
 <20230925133859.1735879-3-apatel@ventanamicro.com>
 <ZRHH25IyJJLWSolC@ghost>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZRHH25IyJJLWSolC@ghost>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 10:48:11AM -0700, Charlie Jenkins wrote:
> On Mon, Sep 25, 2023 at 07:08:52PM +0530, Anup Patel wrote:
> > The Veyron-V1 CPU supports custom conditional arithmetic and
> > conditional-select/move operations referred to as XVentanaCondOps
> > extension. In fact, QEMU RISC-V also has support for emulating
> > XVentanaCondOps extension.
> > 
> > Let us detect XVentanaCondOps extension from ISA string available
> > through DT or ACPI.
> > 
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Reviewed-by: Andrew Jones <ajones@ventanamicro.com>
> > ---
> >  arch/riscv/include/asm/hwcap.h | 1 +
> >  arch/riscv/kernel/cpufeature.c | 1 +
> >  2 files changed, 2 insertions(+)
> > 
> > diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
> > index 0f520f7d058a..b7efe9e2fa89 100644
> > --- a/arch/riscv/include/asm/hwcap.h
> > +++ b/arch/riscv/include/asm/hwcap.h
> > @@ -59,6 +59,7 @@
> >  #define RISCV_ISA_EXT_ZIFENCEI		41
> >  #define RISCV_ISA_EXT_ZIHPM		42
> >  #define RISCV_ISA_EXT_SMSTATEEN		43
> > +#define RISCV_ISA_EXT_XVENTANACONDOPS	44
> >  
> >  #define RISCV_ISA_EXT_MAX		64
> >  
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 3755a8c2a9de..3a31d34fe709 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -182,6 +182,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
> >  	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
> >  	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
> >  	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
> > +	__RISCV_ISA_EXT_DATA(xventanacondops, RISCV_ISA_EXT_XVENTANACONDOPS),
> >  };
> >  
> >  const size_t riscv_isa_ext_count = ARRAY_SIZE(riscv_isa_ext);
> > -- 
> > 2.34.1
> > 
> > 
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
> I worry about storing vendor extensions in this file. Because vendor
> extensions are not standardized, they can only be expected to have the
> desired behavior on hardware with the appropriate vendor id. A couple
> months ago I sent a patch to address this by handling vector extensions
> independently for each vendor [1]. I dropped the patch because it
> relied upon Heiko's T-Head vector extension support that he stopped
> working on. However, I can revive this patch so you can build off of it.
> 
> This scheme has the added benefit that vendors do not have to worry
> about conficting extensions, and the kernel does not have to act as a
> key registry for vendors.
> 
> What are your thoughts?
> 
> - Charlie
> 
> [1] https://lore.kernel.org/lkml/20230705-thead_vendor_extensions-v1-2-ad6915349c4d@rivosinc.com/
> 

I guess I don't need to revive the patch, you could just take the code
and update it for xventanacondops.

- Charlie

