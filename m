Return-Path: <devicetree+bounces-60344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 115EB8A8EA9
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 00:00:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9ED2284793
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 22:00:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57DC813B7AF;
	Wed, 17 Apr 2024 22:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WOraZj8S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6FD47F7C
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 22:00:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713391219; cv=none; b=cV5YccP2sT+0ZGxcIwpGGUpIz7utUy5h+ca6+FKXEmbjU+wPF2mfuk0rl0jKSZnNgek/n10WxBLWVazKsV/hsNXKDUqm6wMwwpmf4ZgpzOWvgW7pG2ccW4pOs/ZLDOhKP8ygsIe/jKoxoy4+bQBXdmOqRwqd2FIE2ysJzZj9lTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713391219; c=relaxed/simple;
	bh=y60YK/Ker0fujTzSEW4X61Wqj5tFfBJ72FsvVhhhsmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxdbFK8w/pr/z4z0daB75Nixy8XE+uGoh4zklEfvsD17MxMUBYVUYwQE/5SbeTw/bogIytw44x5vUWvWoDX4J0Zz+qSAuKIXZkYaI/8X1TNPTzX7/yTFjWOuU4iuZInFkUFYM+LEc/JTBOgz36SSADryQEBMh26bPSQSOqbmJ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=WOraZj8S; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6ed691fb83eso254690b3a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 15:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713391216; x=1713996016; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uQ2asP1T1xuvOSck++wQC9ZSwwPqaUNm6JnqVfU5CKQ=;
        b=WOraZj8Sbz+hDwLdUooQH8nRon6s7mp3lUF3a2n46o14xuM63XMWIPmPc+Gb8lg9kv
         UuItN69vz2It/+oBRBla2raav294ryg0MoTJFjBTR0ezGusXbPJb8ljUA0B3YXj2BbUB
         kp4uuLSXxJGcnKPQCN62o9vinXFsR9Of7Y00RbPmPr+dc0VFESlgDmyeeKeHO3nb0Svm
         d7jyXALVNYu172jS820gfIrg6Tdq+J4vjNboJ7FtpgoUMCc+bDSP314LRjJCoOW5JZ4/
         CXfYShbX0y5V4yqcU/w+KE4H5uEewqSOtISzYYtI6AzLWREFoBHl0+jVUIbRf3asa220
         l+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713391216; x=1713996016;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uQ2asP1T1xuvOSck++wQC9ZSwwPqaUNm6JnqVfU5CKQ=;
        b=sXWcd0hxFdAYIugHcU7muim3b1+rBq692R6siOgfhWcgjdZTHzHYgSbIGHaHvMVNru
         +A4ppRPELgsNt/+mtlTFubjshRyfHz1qoIxEYQlAcj/hi7+ToyXCdXNZpaXKJMhR/cEO
         I2rhQF236x8TpOMUi0hB31q04s4e5h5NaAiXyfxGy5I9Dlo3NkMIdPDZ+jaRWbu3nLk5
         VQyLkYsvtWBfz+FmsHUtbXG6WA5GvkiyoxUIUa2En6gKxEXbcAfdu2vYDDd/x/wPqpZn
         KS1+bfn5f0YObzABAJLKpC1tEfbXZ4RcW360U3KqDXKvRH/3Ixw1vuIoblPiGie3BBWu
         sHBQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqLGW379s1UXLEGxewR1OATQzYINyWnWVNh6I+mN8tOzX7At4Rno4E/BVcrSHVjGOi1wjMNtc89UvGuomg0Vi0oIx36KySaBrVrg==
X-Gm-Message-State: AOJu0Yxld29YWIY8/J/0G49qQuhXdXSbz+QW4Cy6QRE/fkZN6+9ZiQ1a
	hTgGom2YkBnud5XqyhWhMKLxmxx571fh0jUTrc8x9xZUxgCO6eoT1Grlrnva7QE=
X-Google-Smtp-Source: AGHT+IEiDU5SQjuL7+0vdKdkoS1KFGY8onYhPVJwXQzy7eXZ9mhuURRy3tq7dfxgiflxBiFa6A84tg==
X-Received: by 2002:a05:6a21:3381:b0:1aa:6ddb:4adf with SMTP id yy1-20020a056a21338100b001aa6ddb4adfmr1271607pzb.39.1713391214298;
        Wed, 17 Apr 2024 15:00:14 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id j18-20020a62e912000000b006e681769ee0sm151780pfh.145.2024.04.17.15.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 15:00:13 -0700 (PDT)
Date: Wed, 17 Apr 2024 15:00:07 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Evan Green <evan@rivosinc.com>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 13/17] riscv: vector: Support xtheadvector save/restore
Message-ID: <ZiBGZ9UOpYm3Grvh@ghost>
References: <20240415-dev-charlie-support_thead_vector_6_9-v2-0-c7d68c603268@rivosinc.com>
 <20240415-dev-charlie-support_thead_vector_6_9-v2-13-c7d68c603268@rivosinc.com>
 <20240417-semisweet-willed-1ce1098d8c41@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240417-semisweet-willed-1ce1098d8c41@spud>

On Wed, Apr 17, 2024 at 03:50:24PM +0100, Conor Dooley wrote:
> On Mon, Apr 15, 2024 at 09:12:10PM -0700, Charlie Jenkins wrote:
> 
> > diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
> > index 6727d1d3b8f2..f42eaa8178e9 100644
> > --- a/arch/riscv/kernel/vector.c
> > +++ b/arch/riscv/kernel/vector.c
> > @@ -33,10 +33,24 @@ int riscv_v_setup_vsize(void)
> >  {
> >  	unsigned long this_vsize;
> >  
> > -	/* There are 32 vector registers with vlenb length. */
> > -	riscv_v_enable();
> > -	this_vsize = csr_read(CSR_VLENB) * 32;
> > -	riscv_v_disable();
> > +	/*
> > +	 * This is called before alternatives have been patched so can't use
> > +	 * riscv_has_vendor_extension_unlikely
> 
> () after that function name please.
> 
> > +	 */
> > +	if (has_xtheadvector_no_alternatives()) {
> > +		/*
> > +		 * Although xtheadvector states that th.vlenb exists and
> > +		 * overlaps with the vector 1.0 vlenb, an illegal instruction is
> > +		 * raised if read. These systems all currently have a fixed
> > +		 * vector length of 128, so hardcode that value.
> 
> I had this written before the meeting, so pasting it anyway:
> -- >8 --
> From 5ed25d0f841e755b8dd4f1f6a3ea824601758d8e Mon Sep 17 00:00:00 2001
> From: Conor Dooley <conor.dooley@microchip.com>
> Date: Wed, 17 Apr 2024 14:39:36 +0100
> Subject: [PATCH] dt-bindings: riscv: cpus: add a vlen register length property
> 
> Add a property analogous to the vlenb CSR so that software can detect
> the vector length of each CPU prior to it being brought online.
> Currently software has to assume that the vector length read from the
> boot CPU applies to all possible CPUs. On T-Head CPUs implementing
> pre-ratification vector, reading the th.vlenb CSR may produce an illegal
> instruction trap, so this property is required on such systems.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> We could actually enforce the latter since we know the compatibles of
> the relevant CPUs and can tell if xtheadvector is present.
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index d067f2a468ee..2a6449a0f1d7 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -95,6 +95,12 @@ properties:
>      description:
>        The blocksize in bytes for the Zicboz cache operations.
>  
> +  riscv,vlenb:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      VLEN/8, the vector register length in bytes. This property is required in
> +      systems where the vector register length is not identical on all harts.
> +
>    # RISC-V has multiple properties for cache op block sizes as the sizes
>    # differ between individual CBO extensions
>    cache-op-block-size: false
> -- 
> 2.43.0
> 
> 
> 
> > +		 */
> > +		this_vsize = 128;
> > +	} else {
> > +		/* There are 32 vector registers with vlenb length. */
> > +		riscv_v_enable();
> > +		this_vsize = csr_read(CSR_VLENB) * 32;
> > +		riscv_v_disable();
> > +	}

Thank you for this, I can add this patch to my v3.

- Charlie


