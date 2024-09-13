Return-Path: <devicetree+bounces-102540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 214BF97764F
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:16:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 460A41C20F57
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3EC07E1;
	Fri, 13 Sep 2024 01:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="00K90ats"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E6F4A06
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 01:16:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726190188; cv=none; b=X9S3XoZ1MXTZk+fDI5hN2CjykJ4LHdcIHmz3We0sSMJ9uqL45NOzpj5YVOdPPSibm8CfWtZmBN0+7VjTGwBcQRF5RKP/MG5IoLeuBPrzt+xxDvWf9pJORIpONi4AzP4KTwQ++sCiNOWp6kgVzSxl4vvm7TRTkbE6KUqlSM+64kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726190188; c=relaxed/simple;
	bh=r/yO+OeFcLvOjY6JHwXkqX6j3rz4+wcN2tkneSV7wN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b6Oghyfsu0LoL7ckn7tk4qa6iXFfI39X+/tQDlVuoBNMOll39aI33KD0uCPKa3P4f5k1XWR414zvP4OKeB+XtCcEZwm6d0SOpyJ54Z118pYoMkNDU9O0FRCWirUt8rbAL2aINJ1mhgxda7WJXfaokg70QAXRURMrgovhgygVV6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=00K90ats; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2068bee21d8so17966345ad.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 18:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726190186; x=1726794986; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CGdN0gxzpmFovSXXc4PPR7wb1goaAH/sxNtRx0azomw=;
        b=00K90atsMMhkIeOfviDeZgLYYMC+Kbv2wOkwkhJ/F4QWA5SXHcrTqnl1Cn1MxNUefB
         1003I+kUTcBfPO024bgJV4j7L4L5oVT1HvzopP5Q5vfXoewSywIxcOROSBKrc2rcxcYO
         6/5dVIu8pRBV6cIfFU6vXmQxRyAFy3OHS7xixXfc92NNS7sKRqPx1IFavjKQv9sZKyQU
         Xvvw4bEsIHA47MfuqXKerx/tfNc5iGKPNVUrsA0U0vJvLpPDHpolRlwuzP3yPtx282L0
         O1dbY12H2QGipm+1NUM288QgWj7wHA4gF/nGP+g6fIFTpXy+Lz97XiPQSpaa1MOqG0Ad
         8nfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726190186; x=1726794986;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CGdN0gxzpmFovSXXc4PPR7wb1goaAH/sxNtRx0azomw=;
        b=DWjfMy5n9PmLOTC45fZj8Nm1JHg1onY2TmfT0AGsBzAlrAlHbF2DAeVE1t3lEOAska
         Bg//VSPymLm7kD+Wpy4/5ycA5Pu/DB2HeeF9OGWOYuPr951fXONanyq03+oBTIWq4VH+
         5M0acfgHxGiqS5m2u7EeO4+6Cu1nDXlLK16olwF10N38EUkQXcp93RuX8QN8mNF6uG0F
         bU+uLQYrKrSC9xNJDuw7Bb/xYWBfr8gG61vrLi9zvTrQDOuD28PSDBXgfG1mmQVbJMoa
         iy6B4N6h0tP3JKthTufP+qdR76Rslip+ynk23f8FpFNu1XF2gumPVj3MmXsWlfWEDofA
         ipTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMXGX4XcCvopt3UP/pb1olB7FpUcgylrmV5uVXaHCFnvXjFX5NeEdKVFMIRpwDQVPR3lztgHVwpIyI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn3vBwbZJJx8mkUtjibfhfZwPt59p0K7aLLGz7ahsXyBjfbSkR
	6Mbw+Y0IP1AsY8ExB8yFOFOGJGX1YJzdT1BW+F1bgb+SBMnU21af6z7mpuJ/M7c=
X-Google-Smtp-Source: AGHT+IEHKm3UNTMeYi9FcEOsLtiVsBpfeVoViEjIu4klChUXmqp/JF2zUsw5pdnzmHwyVdvF9TzQWQ==
X-Received: by 2002:a17:903:249:b0:206:8eec:c087 with SMTP id d9443c01a7336-2076e354d05mr65687755ad.16.1726190185980;
        Thu, 12 Sep 2024 18:16:25 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2dbb9c98f1fsm382550a91.20.2024.09.12.18.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 18:16:24 -0700 (PDT)
Date: Thu, 12 Sep 2024 18:16:20 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org, Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH v4 03/10] riscv: Add CSR definitions for pointer masking
Message-ID: <ZuOSZPJLBUeoTMA9@ghost>
References: <20240829010151.2813377-1-samuel.holland@sifive.com>
 <20240829010151.2813377-4-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240829010151.2813377-4-samuel.holland@sifive.com>

On Wed, Aug 28, 2024 at 06:01:25PM -0700, Samuel Holland wrote:
> Pointer masking is controlled via a two-bit PMM field, which appears in
> various CSRs depending on which extensions are implemented. Smmpm adds
> the field to mseccfg; Smnpm adds the field to menvcfg; Ssnpm adds the
> field to senvcfg. If the H extension is implemented, Ssnpm also defines
> henvcfg.PMM and hstatus.HUPMM.
> 
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>

Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>

> ---
> 
> (no changes since v3)
> 
> Changes in v3:
>  - Use shifts instead of large numbers in ENVCFG_PMM* macro definitions
> 
> Changes in v2:
>  - Use the correct name for the hstatus.HUPMM field
> 
>  arch/riscv/include/asm/csr.h | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
> index 25966995da04..fe5d4eb9adea 100644
> --- a/arch/riscv/include/asm/csr.h
> +++ b/arch/riscv/include/asm/csr.h
> @@ -119,6 +119,10 @@
>  
>  /* HSTATUS flags */
>  #ifdef CONFIG_64BIT
> +#define HSTATUS_HUPMM		_AC(0x3000000000000, UL)
> +#define HSTATUS_HUPMM_PMLEN_0	_AC(0x0000000000000, UL)
> +#define HSTATUS_HUPMM_PMLEN_7	_AC(0x2000000000000, UL)
> +#define HSTATUS_HUPMM_PMLEN_16	_AC(0x3000000000000, UL)
>  #define HSTATUS_VSXL		_AC(0x300000000, UL)
>  #define HSTATUS_VSXL_SHIFT	32
>  #endif
> @@ -195,6 +199,10 @@
>  /* xENVCFG flags */
>  #define ENVCFG_STCE			(_AC(1, ULL) << 63)
>  #define ENVCFG_PBMTE			(_AC(1, ULL) << 62)
> +#define ENVCFG_PMM			(_AC(0x3, ULL) << 32)
> +#define ENVCFG_PMM_PMLEN_0		(_AC(0x0, ULL) << 32)
> +#define ENVCFG_PMM_PMLEN_7		(_AC(0x2, ULL) << 32)
> +#define ENVCFG_PMM_PMLEN_16		(_AC(0x3, ULL) << 32)
>  #define ENVCFG_CBZE			(_AC(1, UL) << 7)
>  #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
>  #define ENVCFG_CBIE_SHIFT		4
> @@ -216,6 +224,12 @@
>  #define SMSTATEEN0_SSTATEEN0_SHIFT	63
>  #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
>  
> +/* mseccfg bits */
> +#define MSECCFG_PMM			ENVCFG_PMM
> +#define MSECCFG_PMM_PMLEN_0		ENVCFG_PMM_PMLEN_0
> +#define MSECCFG_PMM_PMLEN_7		ENVCFG_PMM_PMLEN_7
> +#define MSECCFG_PMM_PMLEN_16		ENVCFG_PMM_PMLEN_16
> +
>  /* symbolic CSR names: */
>  #define CSR_CYCLE		0xc00
>  #define CSR_TIME		0xc01
> @@ -382,6 +396,8 @@
>  #define CSR_MIP			0x344
>  #define CSR_PMPCFG0		0x3a0
>  #define CSR_PMPADDR0		0x3b0
> +#define CSR_MSECCFG		0x747
> +#define CSR_MSECCFGH		0x757
>  #define CSR_MVENDORID		0xf11
>  #define CSR_MARCHID		0xf12
>  #define CSR_MIMPID		0xf13
> -- 
> 2.45.1
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

