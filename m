Return-Path: <devicetree+bounces-64364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E491A8B9025
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 21:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B43E282CC1
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2024 19:45:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0995A161336;
	Wed,  1 May 2024 19:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="baeMRTsy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6611E16089A
	for <devicetree@vger.kernel.org>; Wed,  1 May 2024 19:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714592747; cv=none; b=WUk+iutrhxaGMOB/sYPaq2iXhFXJYQa8mSIig6c3o1Hnd1R0NipQy1uDOZP0rz2xdI7hEMP5dlngBzGRuUYd0tVmkOsBgsniUxdqm2yuJzGH2vYQOvcymgR9JVsxPa4y9Cw0V7m0VWu6lQmgM1XDt95QGDpmZ4nFYbNbDh3ic3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714592747; c=relaxed/simple;
	bh=rJzPsR+Qk5YamaIzt6KevMZRAvrz/pxeg0cG+yyl2iY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cw9L1sc7/pWOqoxI4aXZFLWTC6h1YVvuLLEgAjehjUioGXyUD6U7y/+/V6g0r2PSzfstnTrYIhE4Dh7F+JkPUHLoSCZb3Yri0yjEd7VjOCwea44Da17GjnCIEIKiiOtGkW0y9j9jk82iPvrlljQ5KU0q8WEhiwvDb9JNpetg0Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=baeMRTsy; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2a559928f46so4818494a91.0
        for <devicetree@vger.kernel.org>; Wed, 01 May 2024 12:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714592746; x=1715197546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j1EbBqpWrfZZxoY9bSkBt1o8FAuASMzz42NrlJzrLQw=;
        b=baeMRTsy0XcuR9NGbPwgrF8ldWgkuYrRIqY9sSeqmUfCLPRv314TZShhu0tGdez0de
         2MYXC22HMIRfY1NbCtOZxwvSbIhWe8rRPeDb7bsfz8bDgTOsShSwV3JPbWqz97Pt00AS
         gu0MnX6bKF6PE/CXO82nG6kN5VSPkxreSOc/z2UJ6s+8TACik5rGIj9CI2zoNCFUpnzm
         WI9lAZaT1q6WPiOxf98xiJj1/1Qikr7uijRfsTLE0ej7+89pMHRpzjN5w4tlYJ2PUr3h
         XD7fS0x4x37itGWWHXxuIuWLOyPupngNs5r1RIknitoJ/ufDkOBZ//+1mWHbJm38E8Zh
         ePZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714592746; x=1715197546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j1EbBqpWrfZZxoY9bSkBt1o8FAuASMzz42NrlJzrLQw=;
        b=GNHncI/sLJawASmqPpn6WkdyAv7hGYtX/ohvOTf6A6QMfh6Zf1LwUukdYAhytrHFgv
         CJCp/Xsq7UgykkAaUZa4M32OSShbY1OU+yc/uF5mML4fYOGENYJhBuPP4mGIbqCStCOj
         QPIBn9gM5WgWjrDSdIefcgWzn5i2FI+VtaYo/VLpz2VzVrrJ6vNH0uV8woyZ9p7RVyV7
         ryPxWJ+rP/W/95O+rqD0KIr/MhjU7J5IrSDSILacpEmWoGqDalr3rt7gUT79ToIDG7z/
         LoNOcpT6sKHibB/Q/HxnrQlGy0k1GG1CkxmWA/djTsAEeIbr9EiCbujfR1XIl5igN6PC
         VR0w==
X-Forwarded-Encrypted: i=1; AJvYcCUMfXXqp3H5YJ+L6QrpSFPlwpLhR+vZdJBQOtLUBNKClSkOpifN76gdyAEssDDNZPRNtKiUkCuSuyNKERNZNDpEtjxXL1UQ2SYKFw==
X-Gm-Message-State: AOJu0Ywd2XEYdD0+eV6p+WncySzDHnJC91K0LHkKL3idDDMWbjYShhIe
	E8uz/iN99zRoW+qWL8FM3EHH7fbDWGIDFS9TMa91ggEzSuTJNXTnPCz3EmGBv78=
X-Google-Smtp-Source: AGHT+IEAo4x8MOTk0rByHOk2fmlXZ3MwLp/YpTWYLg+olqE/2iU7l17JuO1KTk3z+XxlvKBKlVpzRA==
X-Received: by 2002:a17:90a:1309:b0:2ab:e345:4685 with SMTP id h9-20020a17090a130900b002abe3454685mr3536711pja.17.1714592745626;
        Wed, 01 May 2024 12:45:45 -0700 (PDT)
Received: from ghost ([2601:647:5700:6860:1dcc:e03e:dc61:895d])
        by smtp.gmail.com with ESMTPSA id bf15-20020a17090b0b0f00b002a2e6fc09b5sm1724376pjb.29.2024.05.01.12.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 May 2024 12:45:45 -0700 (PDT)
Date: Wed, 1 May 2024 12:45:41 -0700
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
Subject: Re: [PATCH v4 06/16] riscv: Introduce vendor variants of extension
 helpers
Message-ID: <ZjKb5e584UzQxSgT@ghost>
References: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-b692f3c516ec@rivosinc.com>
 <20240426-dev-charlie-support_thead_vector_6_9-v4-6-b692f3c516ec@rivosinc.com>
 <20240501-tripping-acetone-e556e993ba95@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240501-tripping-acetone-e556e993ba95@spud>

On Wed, May 01, 2024 at 12:29:56PM +0100, Conor Dooley wrote:
> On Fri, Apr 26, 2024 at 02:29:20PM -0700, Charlie Jenkins wrote:
> 
> > index c073494519eb..dd7e8e0c0af1 100644
> > --- a/arch/riscv/kernel/cpufeature.c
> > +++ b/arch/riscv/kernel/cpufeature.c
> > @@ -844,25 +844,41 @@ void __init_or_module riscv_cpufeature_patch_func(struct alt_entry *begin,
> >  {
> >  	struct alt_entry *alt;
> >  	void *oldptr, *altptr;
> > -	u16 id, value;
> > +	u16 id, value, vendor;
> >  
> >  	if (stage == RISCV_ALTERNATIVES_EARLY_BOOT)
> >  		return;
> >  
> >  	for (alt = begin; alt < end; alt++) {
> > -		if (alt->vendor_id != 0)
> > -			continue;
> > -
> >  		id = PATCH_ID_CPUFEATURE_ID(alt->patch_id);
> > +		vendor = PATCH_ID_CPUFEATURE_ID(alt->vendor_id);
> >  
> > -		if (id >= RISCV_ISA_EXT_MAX) {
> > +		/*
> > +		 * Any alternative with a patch_id that is less than
> > +		 * RISCV_ISA_EXT_MAX is interpreted as a standard extension.
> > +		 *
> > +		 * Any alternative with patch_id that is greater than or equal
> > +		 * to RISCV_VENDOR_EXT_ALTERNATIVES_BASE is interpreted as a
> > +		 * vendor extension.
> 
> I think this stuff is all fine, since we can always re-jig things in the
> future if needs be.
> 
> > +		 */
> > +		if (id < RISCV_ISA_EXT_MAX) {
> > +			/*
> > +			 * This patch should be treated as errata so skip
> > +			 * processing here.
> > +			 */
> > +			if (alt->vendor_id != 0)
> > +				continue;
> > +
> > +			if (!__riscv_isa_extension_available(NULL, id))
> > +				continue;
> > +		} else if (id >= RISCV_VENDOR_EXT_ALTERNATIVES_BASE) {
> > +			if (!__riscv_isa_vendor_extension_available(VENDOR_EXT_ALL_CPUS, vendor, id))
> > +				continue;
> > +		} else {
> >  			WARN(1, "This extension id:%d is not in ISA extension list", id);
> >  			continue;
> >  		}
> >  
> > -		if (!__riscv_isa_extension_available(NULL, id))
> > -			continue;
> > -
> >  		value = PATCH_ID_CPUFEATURE_VALUE(alt->patch_id);
> >  		if (!riscv_cpufeature_patch_check(id, value))
> >  			continue;
> > diff --git a/arch/riscv/kernel/vendor_extensions.c b/arch/riscv/kernel/vendor_extensions.c
> > index f76cb3013c2d..eced93eec5a6 100644
> > --- a/arch/riscv/kernel/vendor_extensions.c
> > +++ b/arch/riscv/kernel/vendor_extensions.c
> > @@ -3,6 +3,7 @@
> >   * Copyright 2024 Rivos, Inc
> >   */
> >  
> > +#include <asm/vendorid_list.h>
> >  #include <asm/vendor_extensions.h>
> >  #include <asm/vendor_extensions/thead.h>
> >  
> > @@ -16,3 +17,42 @@ const struct riscv_isa_vendor_ext_data_list *riscv_isa_vendor_ext_list[] = {
> >  };
> >  
> >  const size_t riscv_isa_vendor_ext_list_size = ARRAY_SIZE(riscv_isa_vendor_ext_list);
> > +
> > +/**
> > + * __riscv_isa_vendor_extension_available() - Check whether given vendor
> > + * extension is available or not.
> > + *
> > + * @cpu: check if extension is available on this cpu
> > + * @vendor: vendor that the extension is a member of
> > + * @bit: bit position of the desired extension
> > + * Return: true or false
> > + *
> > + * NOTE: When cpu is -1, will check if extension is available on all cpus
> > + */
> > +bool __riscv_isa_vendor_extension_available(int cpu, unsigned long vendor, unsigned int bit)
> > +{
> > +	unsigned long *bmap;
> > +	struct riscv_isainfo *cpu_bmap;
> > +	size_t bmap_size;
> > +
> > +	switch (vendor) {
> > +#ifdef CONFIG_RISCV_ISA_VENDOR_EXT_THEAD
> > +	case THEAD_VENDOR_ID:
> > +		bmap = riscv_isa_vendor_ext_list_thead.vendor_bitmap;
> > +		cpu_bmap = riscv_isa_vendor_ext_list_thead.per_hart_vendor_bitmap;
> > +		bmap_size = riscv_isa_vendor_ext_list_thead.bitmap_size;
> > +		break;
> > +#endif
> > +	default:
> > +		return false;
> > +	}
> > +
> > +	if (cpu != -1)
> > +		bmap = cpu_bmap[cpu].isa;
> > +
> > +	if (bit >= bmap_size)
> > +		return false;
> > +
> > +	return test_bit(bit, bmap) ? true : false;
> > +}
> > +EXPORT_SYMBOL_GPL(__riscv_isa_vendor_extension_available);
> 
> I wonder if we care to implement a non __ prefixed version of this, like
> the standard stuff? The only __ version users of the standard one are in
> kvm and core arch code, the "external" users all use the non-prefixed
> version.

In vendor_extensions.h there is:

#define riscv_isa_vendor_extension_available(vendor, ext)	\
	__riscv_isa_vendor_extension_available(VENDOR_EXT_ALL_CPUS, vendor, \
					       RISCV_ISA_VENDOR_EXT_##ext)


> 
> In any case,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks!

- Charlie

> 
> Cheers,
> Conor.



