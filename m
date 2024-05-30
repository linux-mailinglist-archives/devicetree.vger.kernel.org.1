Return-Path: <devicetree+bounces-70695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 613688D412B
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 00:11:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1750F284CDF
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 22:11:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75E171C9ECF;
	Wed, 29 May 2024 22:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YgtfFQf0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099A31A0B06
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 22:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717020668; cv=none; b=B27hWKT21MB3to9YsW93fdif9kPhqJzX93SmLWlqhGbsFn1/LnKbc1r56PTXyymYORXhO3M5C2mjLVjGsZQJdKY778Z5o3OlTHqTTTzXZmKMGNnG0Tr8jgnvN9pjTO+/kqdly3v2S7uCo87xSOxqj6UCCpUkqycoepalsSV/ej0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717020668; c=relaxed/simple;
	bh=uRvAFkxcT/frJTOw5HpoxiOkaQasgRIj45sCGAc/b00=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dWIlpse563RHP7zsYKHLDV37JNf4kFc3GiOJdX61SO9dHk8cvonGG8mFSgNzs9CPcUgD8ujGvWDkejTNWr85zWGCwZXeSnnyvEyg4aY9Ip+iMW1Vrf6695JGIcnwIFrhgaQlNRclEvZmJpZ0RR5ive+g+qJELBgQdqNnLJSm//o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YgtfFQf0; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1f48e9414e9so4041135ad.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 15:11:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717020666; x=1717625466; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sg/QIRblIFtNLWufQCRmoJv7k/DY1a76R2WYQ7BmaYQ=;
        b=YgtfFQf0IjtritWnPJ1OYavygEZPzyTPeZ9lIi8aqYTHQnWV88qkStO1PJSnOwN8af
         ahHGYGD9U8/wlJQp2Oh/Ic59hzgakMpqop+6IEwt7nUgJqna89+y0PHKMa8stXbA7sf6
         AR+ZennqqZGJdRYAgg2FFLojplfb/CsUNMUBz39STZS1wcNBw/6A5Jxp8Xn1n62mZOAA
         RCmm9L6mNF5LwWpnIlsYV+KbuQt/6dehbroliHvjjRNz1859P/Roq+Sw9fyg/QW0xv2t
         FuuHkQU7H2J3xIg8jfBnpXFLjGX66coboake1rA2Vvxq+FA3uIKB++ah2umlyubMMspK
         IFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717020666; x=1717625466;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sg/QIRblIFtNLWufQCRmoJv7k/DY1a76R2WYQ7BmaYQ=;
        b=k/vISDClGrNaaVbdFn1L3q8L7wrhEl6maxtXTP8wZzx23YT9xRcgVcd7QmJEOta7S6
         vPia4DqTj5GOiRaQcUbaGtgfDFXqx+LbLZisUMZSSnvR5OmXpzTySsUwOldqqS0HOJE7
         cjmAe6rI+H2lmxOdXjHfQvBuT7RVwJnWljU0g+cHjYmhleVqn2ufif6v9s2cqReoiJHd
         1FuBoqJ5hpA3cQ5yTRhI0zyGvqRZNcNgDK3HBv9vD5m6pa5rUeZW0/RvGAu1GTsR60Js
         IjfPMqo5FKQidN9OyftR942B2voTNrUofg+pQC/PCV8La9oz45I1JaklTSG5z5Nsavtg
         mIzQ==
X-Forwarded-Encrypted: i=1; AJvYcCV0o+kcz0WSP4yozAhy8A2zPCYFw9bkjr7ylG4CTvfcG2ECNY7XAyzwAwFr+FunfpPU1vWm4ozmtBjBs2AnFzwukZqPL6dfxxeGvg==
X-Gm-Message-State: AOJu0YybrHEoFcnf7wqTkh4PRtrA+P4H3TA3DKR1lF1iTOEuJy1p10dp
	jmmeB7v3fn14BbwfW7Phh2ftoqroBhxZrDxTKzgrTbJ0+emDxhfrTGwfknkBSk8=
X-Google-Smtp-Source: AGHT+IFpmEQrXuUDZrgWg6NtOFBQ3/COBrU/d0R2GFKbvKzuiLLzyv7oF+19wM11U+2Hr3DDC5DgmA==
X-Received: by 2002:a17:903:183:b0:1f4:9b48:7561 with SMTP id d9443c01a7336-1f61bddd04amr1614855ad.6.1717020666343;
        Wed, 29 May 2024 15:11:06 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:32f9:8d5b:110a:1952])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f44c968488sm107303805ad.172.2024.05.29.15.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 15:11:05 -0700 (PDT)
Date: Wed, 29 May 2024 15:11:03 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: =?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>,
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v5 03/16] riscv: hwprobe: export Zimop ISA extension
Message-ID: <Zlen931jkx9zGthc@ghost>
References: <20240517145302.971019-1-cleger@rivosinc.com>
 <20240517145302.971019-4-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240517145302.971019-4-cleger@rivosinc.com>

On Fri, May 17, 2024 at 04:52:43PM +0200, Cl�ment L�ger wrote:
> Export Zimop ISA extension through hwprobe.
> 
> Signed-off-by: Cl�ment L�ger <cleger@rivosinc.com>
> ---
>  Documentation/arch/riscv/hwprobe.rst  | 4 ++++
>  arch/riscv/include/uapi/asm/hwprobe.h | 1 +
>  arch/riscv/kernel/sys_hwprobe.c       | 1 +
>  3 files changed, 6 insertions(+)
> 
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> index 204cd4433af5..48be38e0b788 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -192,6 +192,10 @@ The following keys are defined:
>         supported as defined in the RISC-V ISA manual starting from commit
>         d8ab5c78c207 ("Zihintpause is ratified").
>  
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZIMOP`: The Zimop May-Be-Operations extension is
> +       supported as defined in the RISC-V ISA manual starting from commit
> +       58220614a5f ("Zimop is ratified/1.0").
> +
>  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
>    information about the selected set of processors.
>  
> diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> index 31c570cbd1c5..3b16a12204b1 100644
> --- a/arch/riscv/include/uapi/asm/hwprobe.h
> +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> @@ -60,6 +60,7 @@ struct riscv_hwprobe {
>  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
>  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
>  #define		RISCV_HWPROBE_EXT_ZIHINTPAUSE	(1ULL << 36)
> +#define		RISCV_HWPROBE_EXT_ZIMOP		(1ULL << 37)
>  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
>  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
>  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> index 969ef3d59dbe..fc6f4238f0b3 100644
> --- a/arch/riscv/kernel/sys_hwprobe.c
> +++ b/arch/riscv/kernel/sys_hwprobe.c
> @@ -112,6 +112,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
>  		EXT_KEY(ZACAS);
>  		EXT_KEY(ZICOND);
>  		EXT_KEY(ZIHINTPAUSE);
> +		EXT_KEY(ZIMOP);
>  
>  		if (has_vector()) {
>  			EXT_KEY(ZVBB);
> -- 
> 2.43.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>


