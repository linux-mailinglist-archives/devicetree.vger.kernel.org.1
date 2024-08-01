Return-Path: <devicetree+bounces-90262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FE594492F
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 12:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0071B282A65
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2024 10:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A1518452B;
	Thu,  1 Aug 2024 10:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Z1ag3YUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC60131732
	for <devicetree@vger.kernel.org>; Thu,  1 Aug 2024 10:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722507312; cv=none; b=b+cnIzOXQe6MLE7RewZ9GbmyE2E5zcdEdpaPTNMGZrUYAL0bLe2aq8KM6fQ+pBnOP/MQGTb3APVuOwtges9xatT78jpETLs7fNoOq9zNLWIMoymtdjEScNKKeaVLxXs4M6CPapIj/ZaIk1D1Tgy9TnoHsQNZ2rPDx6WtSMTRzpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722507312; c=relaxed/simple;
	bh=U9wr7GqkmrMX2vYC7lUvPnIEz6kcUPwaUXveRaPautM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CvwgRvaxslqfOPF3Pg8QsYh9lZ5ODQywzoH8gfCB/bk84i3rfoj7714kmiF3yF4WeciVJSdQoJC4fPNPrqZt3qsXz2AU8YlZhV//5LHAu9Yt7gFCDxBkll7k9zHH1JIwqc4BbZsKNLSrJUHmAs7KxvNerIyeuiAFpcpCOtVGvm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Z1ag3YUc; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a7aa4ca9d72so853308566b.0
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2024 03:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1722507308; x=1723112108; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lWBquabnZ6kcEWp0IKOcbEM+16+nIy0kpShVIFZJXnM=;
        b=Z1ag3YUcUcYk9TSMAqv5fTfKBPlGfDNiA/vlDmBFjJuX03VNfqbSZavHdw3z3gpBM8
         eLuR+hWwVb0t3YkgV/36nsDqVeB60EHvB13IsDVV1LbKL4OQqJ7KQliNgNQnqSjgctzR
         YLzkEmNWKbawkt8jCDU5bCeUZGs8+ze55xNPL7ScqA6pMsfvozRr0P4I10wGAgOYgTR+
         wSFuZ2Mkj1cshfOPpzge0jYyDE7cl/bA0LzBEGgSozehzKsz/6R7cX/1ns6Gmksd+feo
         NCxkvy+iLdg4rwIToZ0jgiX15JQGgu2Xv60LcTn9uh5piMPltE0doldbZVp+MwFGeB4z
         5M1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722507308; x=1723112108;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lWBquabnZ6kcEWp0IKOcbEM+16+nIy0kpShVIFZJXnM=;
        b=n6FJkyJEtUYcJZbdxE3o55gxREt7qHjdA+VWk3H9vmN3hRGJjs4f7+/jQwbKbjCL8S
         BB2TY2s6MroHbG+RK6WjUAVSkzKoamJXeaSzHngG5/jDF27bWrRfGrR4UiCWapdjsR6M
         d1riWFCob3H5GA/QY6IekQSVqKWTmXEw73PvSWyZYy2YOLZZgbEwySa7kcqPFpYQ9rlp
         shGDhHFajAwtd2PqUT/RqskQzweHwA7elpsNjKmRcQxsrW4fbaFDvW8OBrzmsqTDCxNP
         PRMpdHc6JnXXf2xWAOcEjMwz8JIPaTR0R7D58+yxDF5bA6Yz30XC7J7I5iREBTHtBt6N
         BPzw==
X-Forwarded-Encrypted: i=1; AJvYcCWPrfxbbY3kg8Gm18j0jzJon9q1n9Wk842Z6kxXMb4M4v1QYzON1OWGGXUSV9m8lNUbVezAdelb+Nv4f3txXcROgqJKLvN+F8oEcQ==
X-Gm-Message-State: AOJu0YyA8R95cWOnDLJRJrZCP/oAcZyXYbvh4rVaIgkGfzjmO1QGqGhD
	grQNX32LZxC715yW8Vo6HTewLHgVK6V4whv8wPiOQSqyP9RoHp/8qLCjAm4M4X0=
X-Google-Smtp-Source: AGHT+IEeTCuavVhswNVgEm2olLofx/pt8cE9Bumon3z0afUonWZ842xMiwTVqZcy8FZzQmEJxlyJMw==
X-Received: by 2002:a17:907:7da0:b0:a7a:8876:4429 with SMTP id a640c23a62f3a-a7daf65d495mr148745866b.45.1722507307311;
        Thu, 01 Aug 2024 03:15:07 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad4348bsm875471766b.118.2024.08.01.03.15.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Aug 2024 03:15:06 -0700 (PDT)
Date: Thu, 1 Aug 2024 12:15:00 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v4 13/13] riscv: Add qspinlock support
Message-ID: <20240801-e773d3752fe8b5484405d404@orel>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
 <20240731072405.197046-14-alexghiti@rivosinc.com>
 <20240731-ce25dcdc5ce9ccc6c82912c0@orel>
 <CAHVXubhQefQ6i3Vow_p-uSACQyPcMJNC2UwB99xt_=jDtRUDFw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHVXubhQefQ6i3Vow_p-uSACQyPcMJNC2UwB99xt_=jDtRUDFw@mail.gmail.com>

On Thu, Aug 01, 2024 at 10:43:03AM GMT, Alexandre Ghiti wrote:
...
> > > diff --git a/include/asm-generic/qspinlock.h b/include/asm-generic/qspinlock.h
> > > index 0655aa5b57b2..bf47cca2c375 100644
> > > --- a/include/asm-generic/qspinlock.h
> > > +++ b/include/asm-generic/qspinlock.h
> > > @@ -136,6 +136,7 @@ static __always_inline bool virt_spin_lock(struct qspinlock *lock)
> > >  }
> > >  #endif
> > >
> > > +#ifndef __no_arch_spinlock_redefine
> >
> > I'm not sure what's better/worse, but instead of inventing this
> > __no_arch_spinlock_redefine thing we could just name all the functions
> > something like __arch_spin* and then add defines for both to asm/spinlock.h,
> > i.e.
> >
> > #define queued_spin_lock(l) __arch_spin_lock(l)
> > ...
> >
> > #define ticket_spin_lock(l) __arch_spin_lock(l)
> > ...
> 
> __arch_spin_lock() would use queued_spin_lock() so that would make an
> "infinite recursive definition" right? And that would override the
> "real" queued_spin_lock() implementation too.
> 
> But maybe I missed something!
>

It depends on where the definition is done. It should work if the
preprocessor expands the implementation of __arch_spin_* before
evaluating the #define of queued_spin_*. IOW, we just need to put
the defines after the static inline constructions.

Thanks,
drew

