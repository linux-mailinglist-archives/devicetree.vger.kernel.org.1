Return-Path: <devicetree+bounces-85166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBC992F1CF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jul 2024 00:23:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 751DA28405A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 22:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54151A01C3;
	Thu, 11 Jul 2024 22:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="gal8xcnV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B3F19FA62
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 22:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720736597; cv=none; b=EUdNKjkwEhkzOumIT52vt/O2sbRuw+tagM+2TXlJXny9n7EebsZaRruhi/wXUcGAqYQXXG6S6BN0R6zvbqFMT2AuXgdB/X+Crak80qfNXFeOvzFIFCEmtjl//kEqok6PkQrjMjhYYXohCv8E2+X2xErNzmWCH3NIEUevKA8GNus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720736597; c=relaxed/simple;
	bh=BOLUoPrByBwDN8/S3VKrljwo8YVxxLGQj2YW218NIWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cbDDDcSwXbRnztBWUhUeYe+gmYqVz7i+d6Sf5lzl4kNgl9m0cVMl39MSrmvJEgTT9asvol3zbc76OV4y801gwujpx04iqvFqCZr7hTjh0f5qjKPEa0CJJRCQtn1dlhNRA8jWRQRLyL0cKP5DvO+ZcUhkCxjVQ/BUWnDZkd8ny6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=gal8xcnV; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1fa2ea1c443so11572875ad.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 15:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1720736594; x=1721341394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wOA6NsFk6L+7Ls7mZsmFkNNQzEFiEdl0CxMpv9bv/Qg=;
        b=gal8xcnVY0ur1eVKluzs+SjRxT4ljMSTrJYEOfnJEXblM7siPbCQHzLQMhNjwaaDWG
         CLR9sOAMwh7UK3FcAiFnYBKaaQNBZjbn6fDqq+iqv6JkwWLNcUfFVm7tYGsdiR9XzZVL
         Orm2D9LwCtccEkke0hbXFbm+iwyGdbD4oZfoXyUhwRn8qPvPWSR32VReOcOMqYbCdqEv
         G6nH0AAMJNpqhaBAoiLcjgMvZra3sfWvNTz8Kg2ZMEegaW/hNcxzz2o6ztfdF6MBzaCA
         oufvXxBL+eGk4tinePQy2CyZ2WUuu1GCK/mCGtjihyq2Tfhn/OqRqK9IoEgm0sCR6dy3
         FlRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720736594; x=1721341394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wOA6NsFk6L+7Ls7mZsmFkNNQzEFiEdl0CxMpv9bv/Qg=;
        b=mSERs5WkGpVkwLtTa+ZzbpAKIOT6+0Tirg5Ow7jRN49uOe/zkI1beF2yDfbwto0tlF
         lnpJg/A3eyu+wqjr0KHmHAc98CTMLMUvPBGEhA/NpOvZ+d1AZnQyD8BgUPK/laTk+y1r
         Htke+3kNFs7rxBXi+kCfggWamAbbsmwcbG3SI0+GvR6qtzfOY88kzR40ZpXZY814nBC0
         h9Bmy8QesfittpxeZRhYQ3E3GZPa3tNVZcyNCPbrYygqfPC1jKUsuk1t3Xt8XYBdiH3w
         HCDBxEGt3IUFVMp01c/Y/+9iKFskEX4XjDYxGRR9ukL480RjH4KZOESkVzCXR1jBEReB
         lxww==
X-Forwarded-Encrypted: i=1; AJvYcCUPiksW2DIZ5GGU+YnL3tTya5kR4nEG/h4jBt5QzViJG++2HRt2V72HmecFUeHe69V5RqRz7oL7EQ7deic9FlT8AHPjkQVyCW+6zg==
X-Gm-Message-State: AOJu0YxYmmnQWlrcZ3vIB0DspbQqsDxIhLdgn8aPH953o5hW3Plgv9kF
	pd1qgAplv/Ran2dJu0wB4hi4FJG6VtkP3sn6lTr47Pafj3xB5zdff8+5YpQo6WY=
X-Google-Smtp-Source: AGHT+IEVnJzb7O36DPGCsgQl833NWjcEPMaDTTCYgNiB+OKGtg51343xFtMHn6nFNmILVnskS/PwlA==
X-Received: by 2002:a17:902:e745:b0:1f9:ddea:4523 with SMTP id d9443c01a7336-1fbb6cda816mr89697095ad.6.1720736594362;
        Thu, 11 Jul 2024 15:23:14 -0700 (PDT)
Received: from ghost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6a1083bsm55313555ad.37.2024.07.11.15.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 15:23:13 -0700 (PDT)
Date: Thu, 11 Jul 2024 15:23:11 -0700
From: Charlie Jenkins <charlie@rivosinc.com>
To: Jesse Taube <jesse@rivosinc.com>
Cc: linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
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
Subject: Re: [PATCH v4 7/7] RISC-V: hwprobe: Document unaligned vector perf
 key
Message-ID: <ZpBbT1OquCCwUTWA@ghost>
References: <20240711215846.834365-1-jesse@rivosinc.com>
 <20240711215846.834365-8-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240711215846.834365-8-jesse@rivosinc.com>

On Thu, Jul 11, 2024 at 05:58:46PM -0400, Jesse Taube wrote:
> Document key for reporting the speed of unaligned vector accesses.
> The descriptions are the same as the scalar equivalent values.
> 
> Signed-off-by: Jesse Taube <jesse@rivosinc.com>
> ---
> V1 -> V2:
>   - New patch
> V2 -> V3:
>  - Specify access width
> V3 -> V4:
>  - Clarify we're talking about byte accesses using vector registers
>  - Spell out _VECTOR_ in macros
> ---
>  Documentation/arch/riscv/hwprobe.rst | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> index 78acd37b6477..f83a13dc4cbc 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -238,3 +238,19 @@ The following keys are defined:
>  
>  * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
>    represents the size of the Zicboz block in bytes.
> +
> +* :c:macro:`RISCV_HWPROBE_KEY_VECTOR_MISALIGNED_PERF`: An enum value describing the
> +     performance of misaligned vector accesses on the selected set of processors.
> +
> +  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_UNKNOWN`: The performance of misaligned
> +    vector accesses is unknown.
> +
> +  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_SLOW`: 32-bit misaligned accesses using vector
> +    registers are slower than the equivalent quantity of byte accesses via vector registers.
> +    Misaligned accesses may be supported directly in hardware, or trapped and emulated by software.
> +
> +  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_FAST`: 32-bit misaligned accesses using vector
> +    registers are faster than the equivalent quantity of byte accesses via vector registers.
> +
> +  * :c:macro:`RISCV_HWPROBE_VECTOR_MISALIGNED_UNSUPPORTED`: Misaligned vector accesses are
> +    not supported at all and will generate a misaligned address fault.
> -- 
> 2.45.2
> 

Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>


