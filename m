Return-Path: <devicetree+bounces-212113-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C34CB41D38
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:42:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFD0E1BA3556
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914D92FB63A;
	Wed,  3 Sep 2025 11:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="OtO/c1uL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DCF2F998A
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756899730; cv=none; b=tckGE1RPu0MgiqMrz5YKppQohcm1pJfW0FJhJKHD+/9cf4nQ8r/H//R6/ZPFGD/+4Y1AuqvtNLPhAcGq+feCqwBRsSSeomb1gmRG4Zw1vZ7xQ/4W2/sryZRFrliQIMwMdZardMoxVPr7TkoPyjYWAO2xLS3QE04wJ/UIuRCX+GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756899730; c=relaxed/simple;
	bh=0rqJGPrSdA1PEzC6ErrBXnN/AHdlqO4b6tAy+IDJM30=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hdM60xQPju0pSKLmUorRq2iIuqxVVNy2wi6PYTkZght70tdtuK9VRblsUCdxDZwOhhVcHA4bWPfRXZtm86DzDcLZTHL5sq5Yo33yO8f9pHRn6xz9V7iISW0wlMheLULQriwRh9j9d8HLJ19AmoFB47M38E42mkFMRA6QQwOOJ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=OtO/c1uL; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-327f8726b95so867661a91.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756899728; x=1757504528; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ft7a1y38TQmqSZ+GiWBdbP1PqNWAejf1LfumBwWdqBM=;
        b=OtO/c1uL/uwzSC6eQGa75Ch1Gc2GN3XLl1F49JzfMU5n+t4EJKGQdXKjbpe+Maxn9D
         V1b9eC1G8y6i9IgvLXdEvciQzZ1xkW5kOSit5jnE4vV1wragSMHgF/m5r9+Dh+Nz2mwy
         SVnFE7WyU5NIByTmJaLAUgDNRITgTg95RU6Vdpq+AEDOZUvSBpvEqQdc+AU04tPv6eOY
         TQE4/aJ1Z/nzS8zVmFNy/Vs9DGQRg4xRIixteRNRE12374A408YlQFSmbEzF8wwpdCB4
         vfGAM2TSfpI9dChoOtYfjxZ0jkq8SO7xF43ppWfwnnh/HCe2SdOiNFGd5cGb3ptI4pf3
         jl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756899728; x=1757504528;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ft7a1y38TQmqSZ+GiWBdbP1PqNWAejf1LfumBwWdqBM=;
        b=aosFtYJowcNRfeOfEz12gbUF7cXtktlkkc773sggCq9cAl57hjE6oC2s/3ULgMubGy
         rgALd1E0qEK778P8qenIdnRlQe3J0F6mt/oRz757u3yp4U8fVnRT0QOcaOKzF/QGRmJm
         CbYEpdhs2x7aScDDNJXMen186fu091/6A9l5gHvCz+cBOL3BNcvBOLAeKfx1onRZC9gz
         tjg7X3Y3Bqun4fdzsCkOxaipS0gG/qXWstL1gW2G5vjlPAY4yDPgXTK1hQdLj6fT3FrX
         btafY+7uYgFD4mZak0PZRPFZdjhjVjftiWmvgUJz5Wzvg8Y/ZzlDrHnpbSkoIuLrl48T
         1QBw==
X-Forwarded-Encrypted: i=1; AJvYcCUIO3HZPAq8/GswbpG0OGOBpoWKvc3QQCI+pCixmFutK313zWO9bzJ/srHlTXcDbQ2lGt6BnTergRPe@vger.kernel.org
X-Gm-Message-State: AOJu0YwKUy/CkDRK/CZ3EAQ6/g4VHpDdTcF5E9efLy0e0Y2YUBHKTU5b
	FJ4xOnTTML+hEdPy5JHHyUOqzNepZyGc8+lt96JoHPkqhjZM8a1vxy8vRqpjNkVQQwB1b6/nAZp
	Bg7BmIGewDnQVfGgMpW3ARM/WLCFHwvR/WBDqny4e+g==
X-Gm-Gg: ASbGncs62Ldf++qgOzZiikXY8GiWt2sxvCRt7yYewE6J9UL6qK7xg4Igaibpvlz22+T
	TVu0irXoCLYiKjgLqmpNkp7zEYdfDqjoE3H7Q/LAudw/aLqZineTuA5KIelUZa+WmvzyQ3JqgT4
	859DAptmZ6ipYb039N9VyBBaYnY62esU1LYWzAeeZHe8CgeXF5pPzkx7SFfh64pGP0tRrUgLOvS
	RD87rdAzd//z+l9kKl+Inn4+dUqGSOdzonHiQ0JuvxQ/wYTF2Y65Us/aZM=
X-Google-Smtp-Source: AGHT+IFtJbKlmEkW5GGySvPf1/HOA+JVG5Zy6u8Y+RfeMdmIZ6i1j+zUKLBeK7ONCJdCDpwadOW6zM4NzlV/gKsIpD0=
X-Received: by 2002:a17:90b:4e88:b0:31c:39c2:b027 with SMTP id
 98e67ed59e1d1-32815438312mr20559057a91.7.1756899728089; Wed, 03 Sep 2025
 04:42:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250902042432.78960-1-luxu.kernel@bytedance.com> <aLciY2putG8g2P9F@andrea>
In-Reply-To: <aLciY2putG8g2P9F@andrea>
From: Xu Lu <luxu.kernel@bytedance.com>
Date: Wed, 3 Sep 2025 19:41:57 +0800
X-Gm-Features: Ac12FXyU8EgKWXBaEJy_wfubw9BJFW5J8dcyAUN_yKwbpnfcVBbrt6BJ6erPgkA
Message-ID: <CAPYmKFvLSri1-PKSHfgG03w3zLbp9w2FaY7v5-jM__LufqPf2Q@mail.gmail.com>
Subject: Re: [External] Re: [PATCH v2 0/4] riscv: Add Zalasr ISA extension support
To: Andrea Parri <parri.andrea@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, ajones@ventanamicro.com, brs@rivosinc.com, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrea,

Great catch! Thanks a lot for your review.

The problem comes from the mixed use of acquire/release semantics via
fence and via real ld.aq/sd.rl. I would prefer your method (a). The
existing atomic acquire/release functions' implementation can be
further modified to amocas.sq/amocas.rl/lr.aq/sc.rl. I will send the
next version after I finish it and hope you can help with review then.

Best regards,
Xu Lu

On Wed, Sep 3, 2025 at 12:59=E2=80=AFAM Andrea Parri <parri.andrea@gmail.co=
m> wrote:
>
> > Xu Lu (4):
> >   riscv: add ISA extension parsing for Zalasr
> >   dt-bindings: riscv: Add Zalasr ISA extension description
> >   riscv: Instroduce Zalasr instructions
> >   riscv: Use Zalasr for smp_load_acquire/smp_store_release
>
> Informally put, our (Linux) memory consistency model specifies that any
> sequence
>
>   spin_unlock(s);
>   spin_lock(t);
>
> behaves "as it provides at least FENCE.TSO ordering between operations
> which precede the UNLOCK+LOCK sequence and operations which follow the
> sequence".  Unless I missing something, the patch set in question breaks
> such ordering property (on RISC-V): for example, a "release" annotation,
> .RL (as in spin_unlock() -> smp_store_release(), after patch #4) paired
> with an "acquire" fence, FENCE R,RW (as could be found in spin_lock() ->
> atomic_try_cmpxchg_acquire()) do not provide the specified property.
>
> I _think some solutions to the issue above include:
>
>  a) make sure an .RL annotation is always paired with an .AQ annotation
>     and viceversa an .AQ annotation is paired with an .RL annotation
>     (this approach matches the current arm64 approach/implementation);
>
>  b) on the opposite direction, always pair FENCE R,RW (or occasionally
>     FENCE R,R) with FENCE RW,W (this matches the current approach/the
>     current implementation within riscv);
>
>  c) mix the previous two solutions (resp., annotations and fences), but
>     make sure to "upgrade" any releases to provide (insert) a FENCE.TSO.
>
> (a) would align RISC-V and ARM64 (which is a good thing IMO), though it
> is probably the most invasive approach among the three approaches above
> (requiring certain changes to arch/riscv/include/asm/{cmpxchg,atomic}.h,
> which are already relatively messy due to the various ZABHA plus ZACAS
> switches).  Overall, I'm not too exited at the idea of reviewing any of
> those changes, but if the community opts for it, I'll almost definitely
> take a closer look with due calm.  ;-)
>
>   Andrea

