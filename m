Return-Path: <devicetree+bounces-64842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184AE8BB190
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 19:15:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD5D1B21B04
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 17:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48053157E76;
	Fri,  3 May 2024 17:15:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="QY7/ULpt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D048278276
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 17:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714756521; cv=none; b=JmJQUB27gHkbVGAJ/nokTcrV3b3g7COql6xgT0nb6FAfcRBthxK+nbrlVP0ZKsD2/8byIRhtd2UxO6oQvTRK3VqrWKMEmQecUOjkbdtBaFlVBfe9J+ILTB80EURfR1ww7XNhQStN/ZbZzJjb4LfSDDrwcEsAJPL+hiChLkpQ2P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714756521; c=relaxed/simple;
	bh=v3ZN0hzAZItQ8TOHkFWv6m7TB3Cj617xoCyPxPd1U7Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rvj+QGdILPp9fSCh0hk+fRL5KmEBB/9iOe+DXJOwQ3w1YaSjfotFoBfpmlCi7t9akO6ljtA0csp5DfKOkZ/a7I3w6Rz/zRwaVnWm1hMFn9IHwLfwi2zchbg4+QE8vsOgN8vjQMtVa6sdg4E6LX8oVqe5cmMOK4Urdwy1aF31u4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=QY7/ULpt; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6f44881ad9eso1139499b3a.3
        for <devicetree@vger.kernel.org>; Fri, 03 May 2024 10:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714756519; x=1715361319; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IR9Dw9o647tpbzebAAxLcMVlSF9mEsNZdLQZ0kKOolM=;
        b=QY7/ULpt4Uqo1277Yt+zZzS/nMp7f9SWAODElm9Y+SGzYFHHyKl+2kb7Zt1wtn1ruY
         zbXCKOVyH68+U3LUBRw58VhxhGXUc7Zk2IyoEZsgleSaEQMPSfphIAWIFqu4Bv7Af0EF
         vbupaSS0t45is/qo75OX9aI+HaPID/V15g4yNUNwQe2+1GfAbKWz3vIyXbmq+7ZJ9eNj
         wyDyl2MuGKk0k5n8XiQUgKTvzLnWV6Y4Qk+bPXCE3KsbjuMXgO0Gp1yDkSQEJQKqrx7R
         baHGOYvHaTbWH5ZfPPswg0x5eFTuaueBpOPZjV2KkZhPHsHAuaAHKtQj5OJrUkEYD6/T
         DKVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714756519; x=1715361319;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IR9Dw9o647tpbzebAAxLcMVlSF9mEsNZdLQZ0kKOolM=;
        b=fi5k1Qq/WqtGhe/j55jNGd0gUYgcTQ5gaw4NcyGb4/Th7GAa75WAFvsllz85gaOQT5
         BHUrIsjGxSlVJ8DCuvhX0KnjdRt4E9yK3sFurVXbSSybXz6tGnJOR5V9gqM0FIlGIF0v
         yv5GPulLjKq/wioeWIx4uuVWI1qWDZd92UHakR0FJNntdYQETqgjehwVkjwjbOVihY6e
         Jz+qLJEXJI3q+gE8/0tHrrxTp/hm7MxIkM9G2htJtKPxaRHbz6blRcb+E5m/QAnZ8oWR
         x8G0tD7Suf2WZ79V2IFLG187tyG10N0+Wa5IO/jY+cf4h+/C16iK7z4B3/wWok9HXnRT
         xtag==
X-Forwarded-Encrypted: i=1; AJvYcCVJUKdZSrnSYub+PKHfSCf4gXY7DmZjGkYtjubWX6oc+k9X7uU7+uqGgb5ui/+qm0LlUT7KcS9O6F0fYDNz9qrB04FsBH/5FZRAzQ==
X-Gm-Message-State: AOJu0YxppiNfDYkKsWvj8j/IBvR5YbVJoGWpb/17g8gRY/l9DqEAFuUr
	/4aKPXo1xZbSBzm76lHkbIc6Nw2XFZWpYExIiKTKbRsNxwBQhpVcVsi0W/THRUg=
X-Google-Smtp-Source: AGHT+IHG3ZemJFTYg6GOZn4rpbMiTAR/x+d8MQq95B86XEU2h2htwHHaFGS8+oRoHKNhlimohWA0fw==
X-Received: by 2002:a05:6a00:10cb:b0:6f3:ebc4:4407 with SMTP id d11-20020a056a0010cb00b006f3ebc44407mr3276248pfu.4.1714756519086;
        Fri, 03 May 2024 10:15:19 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:f8a2:eea3:33:d368])
        by smtp.gmail.com with ESMTPSA id b123-20020a62cf81000000b006f45757a5c4sm27256pfg.105.2024.05.03.10.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 May 2024 10:15:18 -0700 (PDT)
Date: Fri, 3 May 2024 10:15:16 -0700
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
Subject: Re: [PATCH v5 03/17] riscv: vector: Use vlenb from DT
Message-ID: <ZjUbpKKobaLXhqPz@ghost>
References: <20240502-dev-charlie-support_thead_vector_6_9-v5-0-d1b5c013a966@rivosinc.com>
 <20240502-dev-charlie-support_thead_vector_6_9-v5-3-d1b5c013a966@rivosinc.com>
 <20240503-zippy-skeletal-e5f63c9f17c1@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240503-zippy-skeletal-e5f63c9f17c1@spud>

On Fri, May 03, 2024 at 05:59:33PM +0100, Conor Dooley wrote:
> On Thu, May 02, 2024 at 09:46:38PM -0700, Charlie Jenkins wrote:
> > If vlenb is provided in the device tree, prefer that over reading the
> > vlenb csr.
> > 
> > Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
> > ---
> >  arch/riscv/include/asm/cpufeature.h |  2 ++
> >  arch/riscv/kernel/cpufeature.c      | 43 +++++++++++++++++++++++++++++++++++++
> >  arch/riscv/kernel/vector.c          | 12 ++++++++++-
> >  3 files changed, 56 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/riscv/include/asm/cpufeature.h b/arch/riscv/include/asm/cpufeature.h
> > index 347805446151..0c4f08577015 100644
> > --- a/arch/riscv/include/asm/cpufeature.h
> > +++ b/arch/riscv/include/asm/cpufeature.h
> > @@ -31,6 +31,8 @@ DECLARE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
> >  /* Per-cpu ISA extensions. */
> >  extern struct riscv_isainfo hart_isa[NR_CPUS];
> >  
> > +extern u32 riscv_vlenb_of;
> > +
> >  void riscv_user_isa_enable(void);
> >  
> >  #if defined(CONFIG_RISCV_MISALIGNED)
> > diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
> > index 3ed2359eae35..12c79db0b0bb 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -35,6 +35,8 @@ static DECLARE_BITMAP(riscv_isa, RISCV_ISA_EXT_MAX) __read_mostly;
> >  /* Per-cpu ISA extensions. */
> >  struct riscv_isainfo hart_isa[NR_CPUS];
> >  
> > +u32 riscv_vlenb_of;
> > +
> >  /**
> >   * riscv_isa_extension_base() - Get base extension word
> >   *
> > @@ -648,6 +650,42 @@ static int __init riscv_isa_fallback_setup(char *__unused)
> >  early_param("riscv_isa_fallback", riscv_isa_fallback_setup);
> >  #endif
> >  
> > +static int has_riscv_homogeneous_vlenb(void)
> > +{
> > +	int cpu;
> > +	u32 prev_vlenb = 0;
> > +	u32 vlenb;
> > +
> > +	for_each_possible_cpu(cpu) {
> > +		struct device_node *cpu_node;
> > +
> > +		cpu_node = of_cpu_device_node_get(cpu);
> > +		if (!cpu_node) {
> > +			pr_warn("Unable to find cpu node\n");
> > +			return -ENOENT;
> > +		}
> > +
> > +		if (of_property_read_u32(cpu_node, "riscv,vlenb", &vlenb)) {
> > +			of_node_put(cpu_node);
> > +
> > +			if (prev_vlenb)
> > +				return -ENOENT;
> > +			continue;
> > +		}
> > +
> > +		if (prev_vlenb && vlenb != prev_vlenb) {
> > +			of_node_put(cpu_node);
> > +			return -ENOENT;
> > +		}
> > +
> > +		prev_vlenb = vlenb;
> > +		of_node_put(cpu_node);
> > +	}
> > +
> > +	riscv_vlenb_of = vlenb;
> > +	return 0;
> > +}
> > +
> >  void __init riscv_fill_hwcap(void)
> >  {
> >  	char print_str[NUM_ALPHA_EXTS + 1];
> > @@ -671,6 +709,11 @@ void __init riscv_fill_hwcap(void)
> >  			pr_info("Falling back to deprecated \"riscv,isa\"\n");
> >  			riscv_fill_hwcap_from_isa_string(isa2hwcap);
> >  		}
> > +
> > +		if (elf_hwcap & COMPAT_HWCAP_ISA_V && has_riscv_homogeneous_vlenb() < 0) {
> 
> I still think this isn't quite right, as it will emit a warning when
> RISCV_ISA_V is disabled. The simplest thing to do probably is just
> add an `if (IS_ENABLED(CONFIG_RISCV_ISA_V) return 0` shortcut the to
> function? It'll get disabled a few lines later so I think a zero is
> safe.

That seems like a good idea. It is weird to throw a warning about this
even when they have V disabled in the kernel. The DT is improperly
formatted since it has heterogeneous vlenb entries and has V enabled,
but since the user disabled V in the kernel skipping the warning is
reasonable.

- Charlie

> 
> > +			pr_warn("Unsupported heterogeneous vlen detected, vector extension disabled.\n");
> > +			elf_hwcap &= ~COMPAT_HWCAP_ISA_V;
> > +		}
> >  	}
> >  
> >  	/*
> > diff --git a/arch/riscv/kernel/vector.c b/arch/riscv/kernel/vector.c
> > index 6727d1d3b8f2..e04586cdb7f0 100644
> > --- a/arch/riscv/kernel/vector.c
> > +++ b/arch/riscv/kernel/vector.c
> > @@ -33,7 +33,17 @@ int riscv_v_setup_vsize(void)
> >  {
> >  	unsigned long this_vsize;
> >  
> > -	/* There are 32 vector registers with vlenb length. */
> > +	/*
> > +	 * There are 32 vector registers with vlenb length.
> > +	 *
> > +	 * If the riscv,vlenb property was provided by the firmware, use that
> > +	 * instead of probing the CSRs.
> > +	 */
> > +	if (riscv_vlenb_of) {
> > +		this_vsize = riscv_vlenb_of * 32;
> > +		return 0;
> > +	}
> > +
> >  	riscv_v_enable();
> >  	this_vsize = csr_read(CSR_VLENB) * 32;
> >  	riscv_v_disable();
> > 
> > -- 
> > 2.44.0
> > 



