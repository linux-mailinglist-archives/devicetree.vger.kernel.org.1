Return-Path: <devicetree+bounces-57176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9787989C56B
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 15:57:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10AB01F238F6
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 13:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154637E0F0;
	Mon,  8 Apr 2024 13:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="BdTT+ihN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EADA77CF1A
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 13:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712584594; cv=none; b=hVrb/8zNnTpytt67DkmyqZNG9tni9h+jFp9fruPvUdSsa6P6SvxwYUF8h7RBje89hWewof3jl39aAtk9r4deYci8fZ+fQaxYPI6dp1tMcpOClp35TwSXKivr11nMTXHen6/XqAUQlPvI92ulA8LwVuhK+vcJIMZaQWXFexpEhMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712584594; c=relaxed/simple;
	bh=CNyOF4nJwO4aIlfssFRJtWa0T1dWhKSg7nZbiygaFWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lJQKv2FCC4nSh0fOUuAQkSDjp7sxgeAI13w5lCRwJRnUGBT46EW9bEnz0wG7V9YI42QaYI6tgbBo6q47Ob2+mTLuv1WTx+2WJzS5WY1SGcX1jM9y3mzlCBZyLV4uQVHzmmjiXRJQC8+f8OjlCGh7wWFF4SLNrTfqyc88cyAmRcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=BdTT+ihN; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-56e37503115so2483855a12.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 06:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1712584591; x=1713189391; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HouYfKm/vbFF+MRwsN8TGC5IOl3e3LWdHM07dIc/WTc=;
        b=BdTT+ihNesDxnuYtUMnXRMOq9Dq8EY+Dt5vB4IV6IHU+ngdnpT1TJqZEq/PeC74fwi
         xIA38Y0klZSBLoh2yraYDHcA4FTWyKgolUE7msAoxpA/WlZN78W/3AuuxbXRekvdBDEW
         6n1Aptr4R5O06byh4B0zj/+RAcoV4UlwNSq98nhk5DYydnLNw00pP6wJbWlo4UZSX42Q
         qyqlWNRmqmHDD6cU+V7PJjuH8palUZddyfGWTyE5ErK7Yopc8RsNquRj5VKRBX94myIw
         cpbv2bWrz6dzYSpRf6PKs92fbtiTeFD0xqMoOi46Rt6N87RSfXH0IVRIWm94h6sw17yq
         nnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712584591; x=1713189391;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HouYfKm/vbFF+MRwsN8TGC5IOl3e3LWdHM07dIc/WTc=;
        b=v6eVE6yg/Y2dw7vp+0HkTFjvIp50qSsYKwoatyQN+LYNzI+z5Hg2WYhM2k4obLhr/5
         iJdQFWKKINt2hisypvCeNaJB9b/DcgNwXUSsXHTPbiBacVVBKKcu3kRmeSwds1D2OlFW
         8pP/U0ec9JMVY3oDckx9rOP+H0/G7Sxi+I5KammHnBCTzDQHjHRgKT0f5YxNaj9Le8CQ
         1PIt2xUS8a/QLdNXpXI46kC5/hQnRKryk6aF8qIxkIZg84NdtwEUFSpJhFAnoPU0KiuR
         3bL5dRV6pDAEbljAHD4mbFhNU9i1ir+9Lj905Kebus5NS+dh50rj5R9KTqWfWA0+pSv4
         8h8A==
X-Forwarded-Encrypted: i=1; AJvYcCXqcj1pLox9pl/CpK9q2m4FIsGrLwUZ3eFss5OQtC/EE3p0o4aIPLj4RbBydJBJWr+Zvs+aHGE/Ge+E45SfMJSmPYNEnUq1c2ktTQ==
X-Gm-Message-State: AOJu0YysqyaQ9ceEq6zLW/VesFbiVGoufEx1BAPwRo3x8wWj+ReOrq2U
	5kOnvDzp3sLTvf7qv5Yt7zyCE73TWCvEQdOlvmrdP2Xr0TyNcEi3flaU0vbs99c=
X-Google-Smtp-Source: AGHT+IFCR6IVjnRfqcicpDUul4U3E/WyEXX7mJYk1JMhoPOsAD3BJiAacEb6ue8OHNcClunSa9X47g==
X-Received: by 2002:a50:d7dd:0:b0:56e:368c:b09d with SMTP id m29-20020a50d7dd000000b0056e368cb09dmr5287787edj.24.1712584591268;
        Mon, 08 Apr 2024 06:56:31 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id de26-20020a056402309a00b0056c1cca33bfsm4104247edb.6.2024.04.08.06.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 06:56:30 -0700 (PDT)
Date: Mon, 8 Apr 2024 15:56:29 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: Deepak Gupta <debug@rivosinc.com>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 0/5] Add parsing for Zimop ISA extension
Message-ID: <20240408-8d245caaaeddc6a23e39d6dd@orel>
References: <20240404103254.1752834-1-cleger@rivosinc.com>
 <20240405-091c6c174f023d74b434059d@orel>
 <CAKC1njQ3qQ8mTMoYkhhoGQfRSVtp2Tfd2LjDhAmut7UcW9-bGw@mail.gmail.com>
 <ddc5555a-3ae8-42e5-a08a-ca5ceaf0bf28@rivosinc.com>
 <20240408-6c93f3f50b55234f3825ca33@orel>
 <89d4a24c-db24-487b-8c5c-bdc1fa2d42b4@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <89d4a24c-db24-487b-8c5c-bdc1fa2d42b4@rivosinc.com>

On Mon, Apr 08, 2024 at 01:19:39PM +0200, Clément Léger wrote:
> 
> 
> On 08/04/2024 13:03, Andrew Jones wrote:
> > On Mon, Apr 08, 2024 at 10:01:12AM +0200, Clément Léger wrote:
> >>
> >>
> >> On 05/04/2024 19:33, Deepak Gupta wrote:
> >>> On Fri, Apr 5, 2024 at 8:26 AM Andrew Jones <ajones@ventanamicro.com> wrote:
> >>>>
> >>>> On Thu, Apr 04, 2024 at 12:32:46PM +0200, Clément Léger wrote:
> >>>>> The Zimop ISA extension was ratified recently. This series adds support
> >>>>> for parsing it from riscv,isa, hwprobe export and kvm support for
> >>>>> Guest/VM.
> >>>>
> >>>> I'm not sure we need this. Zimop by itself isn't useful, so I don't know
> >>>> if we need to advertise it at all. When an extension comes along that
> >>>> redefines some MOPs, then we'll advertise that extension, but the fact
> >>>> Zimop is used for that extension is really just an implementation detail.
> >>>
> >>> Only situation I see this can be useful is this:--
> >>>
> >>> An implementer, implemented Zimops in CPU solely for the purpose that they can
> >>> run mainline distro & packages on their hardware and don't want to leverage any
> >>> feature which are built on top of Zimop.
> >>
> >> Yes, the rationale was that some binaries using extensions that overload
> >> MOPs could still be run. With Zimop exposed, the loader could determine
> >> if the binary can be executed without potentially crashing. We could
> >> also let the program run anyway but the execution could potentially
> >> crash unexpectedly, which IMHO is not really good for the user
> >> experience nor for debugging. I already think that the segfaults which
> >> happens when executing binaries that need some missing extension are not
> >> so easy to debug, so better add more guards.
> > 
> > OK. It's only one more extension out of dozens, so I won't complain more,
> 
> No worries, your point *is* valid since I'm not sure yet that the loader
> will actually do that one day.
> 
> BTW, are you aware of any effort to make the elf dynamic loader
> "smarter" and actually check for needed extensions to be present rather
> than blindly running the elf and potentially catching SIGILL ?

Jeff Law told me a bit about FMV (function multiversioning). I don't know
much about this, but, from what he's told me, it sounds like there will be
an ifunc resolver which invokes hwprobe to determine which variants are
possible/best to use, so it should be possible to avoid SIGILL by always
having a basic variant.

Thanks,
drew

> 
> Thanks,
> 
> Clément
> 
> > but I was thinking that binaries that use particular extensions would
> > check for those particular extensions (step 2), rather than Zimop.
> > 
> > Thanks,
> > drew
> > 
> >>
> >>>
> >>> As an example zicfilp and zicfiss are dependent on zimops. glibc can
> >>> do following
> >>>
> >>> 1) check elf header if binary was compiled with zicfiss and zicfilp,
> >>> if yes goto step 2, else goto step 6.
> >>> 2) check if zicfiss/zicfilp is available in hw via hwprobe, if yes
> >>> goto step 5. else goto step 3
> >>> 3) check if zimop is available via hwprobe, if yes goto step 6, else goto step 4
> >>
> >> I think you meant step 5 rather than step 6.
> >>
> >> Clément
> >>
> >>> 4) This binary won't be able to run successfully on this platform,
> >>> issue exit syscall. <-- termination
> >>> 5) issue prctl to enable shadow stack and landing pad for current task
> >>> <-- enable feature
> >>> 6) let the binary run <-- let the binary run because no harm can be done

