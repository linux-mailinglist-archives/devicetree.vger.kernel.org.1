Return-Path: <devicetree+bounces-81031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADF791B170
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 23:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C7731C21736
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 21:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1384C1A0AEB;
	Thu, 27 Jun 2024 21:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="n6OYW/CY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 568E91A08B4
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 21:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719523251; cv=none; b=rh2bKakx/wIQFk3CWQ5QAnZUoXP/3lNeMp0p5eabCMOoQuWDgpPui+2VPo5a+SW/9mke5BLHJtv82dNASSjdDXEHLT5gDFSd+WXXzF8wwUrfwbdqsijKobMwOXgarJtfGHJFNAvUW7sjiCKTlXzSu31A/POT/sU6hJzkYHvE2MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719523251; c=relaxed/simple;
	bh=OczodIOOHWvvf0Lb2oCsC7+DUMCeVyqRb5zhbOK2tvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcGREt14vdldME/H1QYxXlPdU6W14klLRLEebAVnRhqq9q4P0B7seof6CzXsHe/HW5Ub+idnRxtIRPE0z+zkaPePlthUdgQoIOBvwLw8SLBxeh81TNqFVPhvvdJAuP+M43WdwlbEOHwAu61Q4C4d4TFVxTmKPgOV7siMBhFgg1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=n6OYW/CY; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1fab50496f0so6994245ad.2
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 14:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1719523248; x=1720128048; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=exJx7MLHmhBfufwvX1HMSMkLUGzkmkvSDGWi4KvWQsU=;
        b=n6OYW/CYgQU7cHsAMAxvSDDNybRAHOmKrYC/MlfkpxyHxiEqik0dDvNZNENTTIEc5L
         hlrmr9MXPPbfwOkbTmE2BPmge6qu1Q/+YBVUWe+L4ah8A7jGFbtz/QbOvzJyvNlSXwo8
         ui8AoPtWzIIVzp9lYDO5sk8UKZclJRxnFdkQjlr1Rlmmu4vkNvf8fynCe4720cQrUMFl
         OJosFrWTZorBlB+ZHsaC0khiTZQ/i31I59SqjNiBNSjNHAa1DWklkM6poTPMsicxhvdP
         +khDc82qs1jKYXCnx6iBAd8k+xWFjA/HJI64KLqmBcHCq33SaMmQ4m5LguIzz0s7TYNZ
         2XZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719523248; x=1720128048;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=exJx7MLHmhBfufwvX1HMSMkLUGzkmkvSDGWi4KvWQsU=;
        b=pKu2tlZYLIuBXxJFZFGA6ZdIobQu8vD3X5tmFbHg45O6CFUe7zsnTFOqO6jNHxt+Dy
         dpKFkwyEB4cV7mflh7aobh34vuqJpyfWJkINz/6EZQiZUjY9+DJPYS+p2MlvNoJHPv+S
         96PfWIz70kYukd4dC7uR4OvQ+fzymg8UEDKPg5wgFnqr4oy0E8eTux/Jo4cyx+zgC6KS
         9Hara++VsWtSqFPkPu2c3rDipJdIGhIV7pD2k9lLqIVuEBoaf3u/mXMj/6Dk+oi7byBb
         7xIZODxl2FyK/Dps4r9xT08gcbbffbAvhKem7OijOTGISWAkkFoI9K/dzPhwZq80LIeS
         GhuA==
X-Forwarded-Encrypted: i=1; AJvYcCWlzL0AGKAs/kBN6MRwbrTE/aTKWtJkVwdz/0vQPi5kw+0pgnzFLkO4P0l4kqzTfvsSZYdW/fbRuxCGIE18wFC7FPmfaLG9S9WiMg==
X-Gm-Message-State: AOJu0YwjQ/Ue24+dLbWbJJHw5837hx2rEeIuFmBBcEr9lg6NeXA1zNI0
	PSIr+aZ+Y4jjJUfy1RF9bfMKkSCLT6i+kvo4Ze3PN1bHgT0gWdnqc5w6JEUde08=
X-Google-Smtp-Source: AGHT+IGz34zuJdkPHa55bzUnF3pVUAjXlKAg/ZK+Xx4lnJseZeESVd/0JFLcbe/sbMFtYV8yKgFslQ==
X-Received: by 2002:a17:902:d50b:b0:1f9:d982:5f23 with SMTP id d9443c01a7336-1fa23f073e3mr162626865ad.12.1719523248499;
        Thu, 27 Jun 2024 14:20:48 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fac159d32csm2113575ad.291.2024.06.27.14.20.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 14:20:47 -0700 (PDT)
Date: Thu, 27 Jun 2024 14:20:44 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Conor Dooley <conor@kernel.org>
Cc: Jesse Taube <jesse@rivosinc.com>, linux-riscv@lists.infradead.org,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?iso-8859-1?Q?Cl=E9ment_L=E9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Xiao Wang <xiao.w.wang@intel.com>, Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>, Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/8] RISC-V: Check Zicclsm to set unaligned access
 speed
Message-ID: <Zn3XrLRl/yazsoZe@ghost>
References: <20240625005001.37901-1-jesse@rivosinc.com>
 <20240625005001.37901-5-jesse@rivosinc.com>
 <20240626-march-abreast-83414e844250@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626-march-abreast-83414e844250@spud>

On Wed, Jun 26, 2024 at 03:39:14PM +0100, Conor Dooley wrote:
> On Mon, Jun 24, 2024 at 08:49:57PM -0400, Jesse Taube wrote:
> > Check for Zicclsm before checking for unaligned access speed. This will
> > greatly reduce the boot up time as finding the access speed is no longer
> > necessary.
> > 
> > Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> > ---
> > V2 -> V3:
> >  - New patch split from previous patch
> > ---
> >  arch/riscv/kernel/unaligned_access_speed.c | 26 ++++++++++++++--------
> >  1 file changed, 17 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/riscv/kernel/unaligned_access_speed.c b/arch/riscv/kernel/unaligned_access_speed.c
> > index a9a6bcb02acf..329fd289b5c8 100644
> > --- a/arch/riscv/kernel/unaligned_access_speed.c
> > +++ b/arch/riscv/kernel/unaligned_access_speed.c
> > @@ -259,23 +259,31 @@ static int check_unaligned_access_speed_all_cpus(void)
> >  	kfree(bufs);
> >  	return 0;
> >  }
> > +#else /* CONFIG_RISCV_PROBE_UNALIGNED_ACCESS */
> > +static int check_unaligned_access_speed_all_cpus(void)
> > +{
> > +	return 0;
> > +}
> > +#endif
> >  
> >  static int check_unaligned_access_all_cpus(void)
> >  {
> > -	bool all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
> > +	bool all_cpus_emulated;
> > +	int cpu;
> > +
> > +	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_ZICCLSM)) {
> > +		for_each_online_cpu(cpu) {
> > +			per_cpu(misaligned_access_speed, cpu) = RISCV_HWPROBE_MISALIGNED_FAST;
> 
> - const: zicclsm
>   description:
>     The standard Zicclsm extension for misaligned support for all regular
>     load and store instructions (including scalar and vector) but not AMOs
>     or other specialized forms of memory access. Defined in the
>     RISC-V RVA Profiles Specification. 
> 
> Doesn't, unfortunately, say anywhere there that they're actually fast :(

Oh no! That is unfortunate that the ISA does not explicitly call that
out, but I think that acceptable.

If a vendor puts Zicclsm in their isa string, they should expect
software to take advantage of misaligned accesses. FAST is our signal to
tell software that they should emit misaligned accesses.

This allows for a generic kernel, like the one a distro would compile, to
skip the probing when booting on a system that explicitly called out
that the hardware supports misaligned accesses.

- Charlie

> 
> Thanks,
> Conor.
> 
> > +		}
> > +		return 0;
> > +	}
> > +
> > +	all_cpus_emulated = check_unaligned_access_emulated_all_cpus();
> >  
> >  	if (!all_cpus_emulated)
> >  		return check_unaligned_access_speed_all_cpus();
> >  
> >  	return 0;
> >  }
> > -#else /* CONFIG_RISCV_PROBE_UNALIGNED_ACCESS */
> > -static int check_unaligned_access_all_cpus(void)
> > -{
> > -	check_unaligned_access_emulated_all_cpus();
> > -
> > -	return 0;
> > -}
> > -#endif
> >  
> >  arch_initcall(check_unaligned_access_all_cpus);
> > -- 
> > 2.45.2
> > 



