Return-Path: <devicetree+bounces-52538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 581A78871C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 18:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C11271F22B93
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 17:14:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C845F87F;
	Fri, 22 Mar 2024 17:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DJnokTum"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430115D752
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 17:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711127641; cv=none; b=k3cG5vARNCVwtaProtyoEs1HGayUSLl+9pVjI1SDdIdHA8PrzW+Gvbbd8bWKyvcoQ83bXYb/zcisZL9HAlC6DNGbMzFUZMpnvURUji23MAhS8NKLD+bhSySM45LJsoXEIipppOjzvRc2HTmnVA86IZyTu+MVRVXaErUBuhB9Yh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711127641; c=relaxed/simple;
	bh=eupBAERlpi60lBkl1wmr+KLhDG+teWj2Aum1Gw416Bw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W8PcA7L5YAX0l7GhDGN6BVj5TQwX8g0w73VNSD9KGO+uhaBU3OJCRmsF/Wkz7/1QefnGJ+SLgkztthfDBNCMpBv/n/8xLw58OZV0OuCEALAbC0Z9HeqhvvFsIrtJwBGvkikEWgK/tIKl405mq/QYI2c37vNxEdhYqRtc6/v8Fr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DJnokTum; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc4de7d901so2056876276.0
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 10:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711127638; x=1711732438; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JrCZcezSHtMHgCYV9eTeglWhzn7+4jU5szarE8AAqMc=;
        b=DJnokTumywRquMuBU3I+SKpJAvoVvHRxbv1CggjzeSnqHjwlZ+y3+6K6KtnmnFRh21
         RhfPoP2UiTZMQmMX6GaVcwG7w3uiEIbst2L1nXk4bopLucJUUB3M++uIrAsPh/tvxKTp
         HBb0T2dtE5pivRGTE1+l0x79WBC7I6oSpjMizWSbDk2cDknhIEuBHwcTbQQ+ebwvCybf
         oSAaVJzNojSrzKG2hysRYVpkAHKRqHZmZVW2oQ5zt96Jhhr4sDx8Nu5uCxcU4/9gWzEq
         L1aICic+22+csRBHjrCaiqWoCOLNJo2KaHwwbsp0iRQwfpokgk5WEznrfmnu1xNa+uQZ
         A0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711127638; x=1711732438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JrCZcezSHtMHgCYV9eTeglWhzn7+4jU5szarE8AAqMc=;
        b=YjbNwovDuz75gdR8SLBAaiQr+nzYxY3DotZ8qrF45Rzzave2Sc8mXg9QgNA259Fb6T
         +6a4/c3ZOAEn+XXrWtl0z5M1l9y19HJyv/VL69NyvTMw538kBRphsWsP83Up3+CnbxTv
         xfvsdx/xKbRZUnjZs5+nDaRwxhzmxyQQ/1H74bZObwDLhXl3Zl4rphnItVW6S1OKStnm
         wC96XF4mW2R5Kmx5SW34jDWUfWCOwmAWfR2bC7W3T01h2YNqpMi7oFBgGOhvKruhS0Q0
         MpWvoYbWauW3atOCzouQ8ulExHm7KlzBL0YJZ/iDShv76QTbpfVE0XP9JxVp44tOJnp3
         EV9g==
X-Forwarded-Encrypted: i=1; AJvYcCWxOVNsTdFe+m/9AicA+E7l9AV4622YrvJIdSsI2RqGl5Oj/yXrQh1B6oDuB+2jo0Wd2wO2LCqTkfIcZU/Ne5j8P9KQMHZlpNxtgQ==
X-Gm-Message-State: AOJu0Yx5A+mrrVisBl37mv6Ry/9HXSL+CJDLAWt0imFYC87dzmLcVvN2
	kyuYjeloHNmKtxFi950bTTFobUQeJTrgj/rNz21w0PjIOd3XG5fgNvQe7QvUWj0Rln1g0t8kR+D
	1DGL+69dy57o5AYW1NZjek/m4zIJ01Q2JspUoFQ==
X-Google-Smtp-Source: AGHT+IE+dsR/xonqkKbxamX8f+YQ5K1V1B8ZXMDiZAfjLGnUm36k6juYRhEDctP2PuCEMODRsbZ2Htfibx0XdOXU0Jg=
X-Received: by 2002:a25:b121:0:b0:dc6:d2d3:a57c with SMTP id
 g33-20020a25b121000000b00dc6d2d3a57cmr2856379ybj.59.1711127638274; Fri, 22
 Mar 2024 10:13:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240319215915.832127-1-samuel.holland@sifive.com>
 <20240319215915.832127-6-samuel.holland@sifive.com> <CAKC1njSg9-hJo6hibcM9a-=FUmMWyR39QUYqQ1uwiWhpBZQb9A@mail.gmail.com>
 <40ab1ce5-8700-4a63-b182-1e864f6c9225@sifive.com> <CAKC1njQYZHbQJ71mapeG1DEw=A+aGx77xsuQGecsNFpoJ=tzGQ@mail.gmail.com>
 <d9452ab4-a783-4bcf-ac25-40baa4f31fac@sifive.com>
In-Reply-To: <d9452ab4-a783-4bcf-ac25-40baa4f31fac@sifive.com>
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 22 Mar 2024 10:13:48 -0700
Message-ID: <CAKC1njRBbzM+gWowg1LOjq5GzVn4q+vJP9JUswVYfWmEw+yHSg@mail.gmail.com>
Subject: Re: [RISC-V] [tech-j-ext] [RFC PATCH 5/9] riscv: Split per-CPU and
 per-thread envcfg bits
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Conor Dooley <conor@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org, 
	tech-j-ext@lists.risc-v.org, kasan-dev@googlegroups.com, 
	Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Guo Ren <guoren@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 21, 2024 at 5:13=E2=80=AFPM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> On 2024-03-19 11:39 PM, Deepak Gupta wrote:
> >>>> --- a/arch/riscv/include/asm/switch_to.h
> >>>> +++ b/arch/riscv/include/asm/switch_to.h
> >>>> @@ -69,6 +69,17 @@ static __always_inline bool has_fpu(void) { retur=
n false; }
> >>>>  #define __switch_to_fpu(__prev, __next) do { } while (0)
> >>>>  #endif
> >>>>
> >>>> +static inline void sync_envcfg(struct task_struct *task)
> >>>> +{
> >>>> +       csr_write(CSR_ENVCFG, this_cpu_read(riscv_cpu_envcfg) | task=
->thread.envcfg);
> >>>> +}
> >>>> +
> >>>> +static inline void __switch_to_envcfg(struct task_struct *next)
> >>>> +{
> >>>> +       if (riscv_cpu_has_extension_unlikely(smp_processor_id(), RIS=
CV_ISA_EXT_XLINUXENVCFG))
> >>>
> >>> I've seen `riscv_cpu_has_extension_unlikely` generating branchy code
> >>> even if ALTERNATIVES was turned on.
> >>> Can you check disasm on your end as well.  IMHO, `entry.S` is a bette=
r
> >>> place to pick up *envcfg.
> >>
> >> The branchiness is sort of expected, since that function is implemente=
d by
> >> switching on/off a branch instruction, so the alternate code is necess=
arily a
> >> separate basic block. It's a tradeoff so we don't have to write assemb=
ly code
> >> for every bit of code that depends on an extension. However, the cost =
should be
> >> somewhat lowered since the branch is unconditional and so entirely pre=
dictable.
> >>
> >> If the branch turns out to be problematic for performance, then we cou=
ld use
> >> ALTERNATIVE directly in sync_envcfg() to NOP out the CSR write.
> >
> > Yeah I lean towards using alternatives directly.
>
> One thing to note here: we can't use alternatives directly if the behavio=
r needs
> to be different on different harts (i.e. a subset of harts implement the =
envcfg
> CSR). I think we need some policy about which ISA extensions are allowed =
to be
> asymmetric across harts, or else we add too much complexity.

As I've responded on the same thread . We are adding too much
complexity by assuming
that heterogeneous ISA exists (which it doesn't today). And even if it
exists, it wouldn't work.
Nobody wants to spend a lot of time figuring out which harts have
which ISA and which
packages are compiled with which ISA. Most of the end users do `sudo
apt get install blah blah`
And then expect it to just work. It doesn't work for other
architectures and even when someone
tried, they had to disable certain ISA features to make sure that all
cores have the same ISA feature
(search AVX12 Intel Alder Lake Disable).

>
> Regards,
> Samuel
>

