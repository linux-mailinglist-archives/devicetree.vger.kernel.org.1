Return-Path: <devicetree+bounces-124315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 031A09D8514
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 13:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B8CA928A607
	for <lists+devicetree@lfdr.de>; Mon, 25 Nov 2024 12:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B88291A0AF0;
	Mon, 25 Nov 2024 12:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="FHIHd9ku"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3503019F49E
	for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 12:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732536532; cv=none; b=eSdu7pIOOIaeURCldliOckik2AoxUBDg8FD0rIpQ50lp68zF1HHPM02ccwvtdkwyYrEuG9YFnc8Y7m3LkFowycBrffmRvsQuKlod8GEUjSnakZPsIGXT2UEl9NNDNk+Jk1CsT2RxyZ+ZZunBvF+o1BrL2G5T5uvKS7im9g5EnDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732536532; c=relaxed/simple;
	bh=MLOsvRZ/ecr2Y/Jx8is/W8Kgryf9gi/kqVRqbk12X34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qn30qBiW7VussiS+t9d3T4LoAEzOkDjO1bP+NmI7mM8zMMq/ximArl/XCW8tLOgrpwKDGqKI262gqi99ckRRnoTUP+S3ZlflUMyCebYseXzWrmcEagmmc2/ez3Sn+e2nhBPmS4yRbE49PNffa6DTxwqld74GvphMpyy3bC5G1do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=FHIHd9ku; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4349cc45219so12075735e9.3
        for <devicetree@vger.kernel.org>; Mon, 25 Nov 2024 04:08:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1732536528; x=1733141328; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rtGYra4ZiucyLvI8CA3+YqcIlZT99r5pBwc2AIGV96M=;
        b=FHIHd9kuk+HOH6mEcaJc8ZBuVcZkTiPS7KGTghK16k06LigipTuauIY/tb+NGiLsDC
         j/cOOwzEF8wz3+GlL5666TTnuAaoPQuxVUeCzCu6dUwn85OEd2vMGwo2cmCwx5oKXP/J
         5ywXdSZvXQ++0tKYPbMsP2Sy1K/PjnVYr9W2oro58nUhFxEf8RaqkymvXuuRtIwfJS33
         0+0IT5NdFvh+j+gTHmGm46woE7fRCStKAqeDwXpVGVwd5BdXukf1n2SJ7tptc8V2dwn6
         F0pIEJNXLhS8Ct3pzS8g0yDYdOdNdPqX3Mb1aeuV5stBoEVjXAk+tmZXhbvvRI0ZeGFv
         qJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732536528; x=1733141328;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rtGYra4ZiucyLvI8CA3+YqcIlZT99r5pBwc2AIGV96M=;
        b=a2WGIzINMgYLr5lPpzMB7hYGtr3GjqHeBmRIYjMXAz4GldUDiU6cFvfmK4YhoRYOqK
         7PT8pkNkAou4zRQIMi5cBE2Iuhodn061dSSS2SetCJFaL7IuQxyLQN/ZH4Y0Gl7ELWGI
         lD6rstGbZoWHeQHjCIxX8lEqB+1CjxsVF3io1Xhynr3C0tjLiNYWI3Vjoz7H6n5Xo+F8
         RkelUAiFQcj0D2PA3dmb7WpbTByyuB34rqvdxAfw11yM5Eat0ItWEbaY36cCfYfftv9O
         fHD0u4uu4Tx/j11RJj5Q+loa7vrh0SNIgvW5ncJTbhkKXdapXNUczNfSXPrv1PsdCYSu
         1XxQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcHG32C+LgWlbxtUzXCsyF48863TGxpVt2FI+FWmsBayWAstN4Wyyg3A1AgQ/yLMiisQMq5TY2lTAK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz71zhSC9GZPj1hVR4hNhPkxAp84LqH9CFXAWvJfHjPL0w1Q5TP
	Cj5UdasdCYgOsi6pnWNCaX4Y1qmdW8QJmyGnchFnJakb5Ov3ll581wa2PnryhsI=
X-Gm-Gg: ASbGncsAy/BlYGkhRhndoa6AbWGn+T/OhkHu2yFqlUsVrHKJLD0zcrtMR715lYJ7/eM
	eL3gkNplYZLD1m7D7eTHKIb2aCV1n93b8cYhEDQPQNg5vzDXhOCEZlPbjpRHTWZl6oH8F68oZ8U
	drrk/cXbPZVsufUj9MLofwBE49yE9RhH6CnH3y3CxK7lshu1uHx7l2oknuC2AxfIfCyaC+6PWPV
	+vsXEoUdtqXEtoOsv1El+foQGPFC6HCaLqxXTaSCLbvGg2EiGqJxLp9bz61qlu0T6tw7R1wyMak
	mSKqzViUVR2DEOWLNCKthV1hgV0AfXWTjUU=
X-Google-Smtp-Source: AGHT+IEcHSdgJj5nANfMThAU2OGxyIx79hhPO8lC6bsUu2hPonUhJGs8xsqe5h4w4zgbyjw1N3+XCw==
X-Received: by 2002:a7b:ce91:0:b0:434:9de2:b101 with SMTP id 5b1f17b1804b1-4349de2b333mr40945755e9.2.1732536528430;
        Mon, 25 Nov 2024 04:08:48 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434a02f2ea1sm29588115e9.34.2024.11.25.04.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Nov 2024 04:08:48 -0800 (PST)
Date: Mon, 25 Nov 2024 13:08:47 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Max Hsu <max.hsu@sifive.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	Samuel Holland <samuel.holland@sifive.com>
Subject: Re: [PATCH RFC v3 3/3] riscv: KVM: Add Svukte extension support for
 Guest/VM
Message-ID: <20241125-7cfad4185ec1a66fa08ff0f0@orel>
References: <20241120-dev-maxh-svukte-v3-v3-0-1e533d41ae15@sifive.com>
 <20241120-dev-maxh-svukte-v3-v3-3-1e533d41ae15@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120-dev-maxh-svukte-v3-v3-3-1e533d41ae15@sifive.com>

On Wed, Nov 20, 2024 at 10:09:34PM +0800, Max Hsu wrote:
> Add KVM_RISCV_ISA_EXT_SVUKTE for VMM to detect the enablement
> or disablement the Svukte extension for Guest/VM
> 
> Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> Signed-off-by: Max Hsu <max.hsu@sifive.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
> index 4f24201376b17215315cf1fb8888d0a562dc76ac..158f9253658c4c28a533b2bda179fb48bf41e1fc 100644
> --- a/arch/riscv/include/uapi/asm/kvm.h
> +++ b/arch/riscv/include/uapi/asm/kvm.h
> @@ -177,6 +177,7 @@ enum KVM_RISCV_ISA_EXT_ID {
>  	KVM_RISCV_ISA_EXT_ZAWRS,
>  	KVM_RISCV_ISA_EXT_SMNPM,
>  	KVM_RISCV_ISA_EXT_SSNPM,
> +	KVM_RISCV_ISA_EXT_SVUKTE,
>  	KVM_RISCV_ISA_EXT_MAX,
>  };
>  
> diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
> index 5b68490ad9b75fef6a18289d8c5cf9291594e01e..4c3a77cdeed0956e21e53d1ab4e948a170ac5c5c 100644
> --- a/arch/riscv/kvm/vcpu_onereg.c
> +++ b/arch/riscv/kvm/vcpu_onereg.c
> @@ -43,6 +43,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
>  	KVM_ISA_EXT_ARR(SVINVAL),
>  	KVM_ISA_EXT_ARR(SVNAPOT),
>  	KVM_ISA_EXT_ARR(SVPBMT),
> +	KVM_ISA_EXT_ARR(SVUKTE),
>  	KVM_ISA_EXT_ARR(ZACAS),
>  	KVM_ISA_EXT_ARR(ZAWRS),
>  	KVM_ISA_EXT_ARR(ZBA),
> 
> -- 
> 2.43.2

Anup raised the missing entry in kvm_riscv_vcpu_isa_disable_allowed() in
the last review. An additional paragraph was added to the cover letter for
this review, but I think there's still a misunderstanding. If the guest
can always use the extension (whether it's advertised in its ISA string
or not), then that means it cannot be disabled from the perspective of
the VMM. The only ISA extensions which may be disabled are the ones that
trap on their use, allowing KVM to emulate responses which a physical hart
without the extension would produce.

Thanks,
drew

