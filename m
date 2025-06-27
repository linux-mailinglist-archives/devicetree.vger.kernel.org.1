Return-Path: <devicetree+bounces-190303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DA7AEB5FB
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4BDA642F84
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 11:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 781A82BE7D0;
	Fri, 27 Jun 2025 11:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WHDXRG2r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC9A2BDC17
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 11:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751022511; cv=none; b=rKjj9QOCennA/FrKSDChqyrtrXSunmZBt31B5rd9AdDtKD89ZTGWLPtiHoXa5Ih85bsnq2+XHa6UlL886Jg/286bIZDN7xZPgv7mjIWiltxZNTwz8jEcSiIDKbCIzlyV8M2w6Tb7Xza+cr7Vs7ock9EXdvrz2f74hURb6oezfeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751022511; c=relaxed/simple;
	bh=7ugzM4uspoLtfWDt8GfrQU5dwt5jEr6ElA9Z8NKjIig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NdonyambC2wJqpp4mUpYAnbl+a8sLjqkSICmub+H9GYf9EXenT5Tdw9E7uh57sPuSVZtARTE951NZUVDzuDq0Ue5cEbRlY2O/De+NEOEIfYGtTwNDAPBrrFwQhYNhnBnhsR1Uuv5LWY2r99KONl1TFkPOP1Vo1NxrYsJmw0v3qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WHDXRG2r; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3a6cdc27438so1601014f8f.2
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 04:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751022508; x=1751627308; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=a48amvWaBrmppZvZlzwfqLpxi2tXYrpQyg/hl/oSFIo=;
        b=WHDXRG2rdX2nS1mdGgY1MlF3WF3qUcG449j1sn+8B1Pe9jwl/K1dpsz3lWlrL5h7hz
         vsrNo6ym6TXONbK3k23TnzYeGEwLBF6eT0Qln/FMJm/4msjoZF25R4gif/QkjNs2GvcJ
         X4yf0wlcr8fmUVOHxCmxrrTqOy+X8NAoY5NpUCEtOO23EgxYXzaZs9sY+Lc5aQVWRAs4
         D8Gh04h0Jr950L5rK7Z95bRCR6tkdUn61HU42qzpapoWFAG2OyJHxOumTKVNhHDYV7Mp
         5j/FxB6Hend1ITAUk0pTCOkn44jzN/Td138almWjrdFGV7K0Py610c4Zk9+Sw4iQysAs
         Pcgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751022508; x=1751627308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a48amvWaBrmppZvZlzwfqLpxi2tXYrpQyg/hl/oSFIo=;
        b=deHZiJg/E6qZ0aF5nLbTG3BMz0hmrTfEMcaYdNDnbOg/b3/xLgtHcIYO0/DtHwm2B4
         hhBSD0KV1UeC17j/DZrCSKZKgrG1XhlIEWkWkxpMv21g+i3mA2XZEbiuXrX2+OmOSPsk
         ph8PN50ThYSskmxIfAkl6xjxPyiVbiiv8YBb+csGzD2Q4AyZlsrwsLOE44AokBAQn1Qi
         wkzxTzWSy6eyaUasQef9XSq+k8hIngjzg/pPpEbaD5miB7dNoaEiJwDAwJAo6UJG2lqy
         U+V5QM2tEkkDhiKCZshY3TXZIxOpIyRspHAjLL5P4/MBTKWKj+YwAgDm/9y4qLlbRBzI
         JNSQ==
X-Forwarded-Encrypted: i=1; AJvYcCXv9/UrRV7P34jY36wlO0inPkMZiC2kccB+dXiRaEityvnKK3JbAMSYw4EIiUmxsfiYJu/boo/O7W3o@vger.kernel.org
X-Gm-Message-State: AOJu0YwHMLq/AGoNIATAyFHBZGpRuNn4ELl89JB2tpqGcM90wUH/DKru
	s0MSP9Vn/qbPnW1Rbblo+h/jCw8kfrq08oRl5/gKdVbtb2F1+UXVQuMfSRyBKiKkGT4=
X-Gm-Gg: ASbGncslcKHdAANEIbNKu9Ra37P2HQVN/7X/gBBnOsahNn+V2KRf4pQpkqCSziszcq7
	xxU7jBMEAFylUQ3rEwcTpquzgPsv8xNvqJrZNziS55DfhR+6aYzDvtxiMgLldfl5jmc4M81leih
	gpZXUAtMXg3fKHfynPyw1o5jEhFcY5+KcWzVEcFx347PWF8Ub+gWKeberffwaEvGSpqX0pOlRzk
	+PDjBJFNgVZVItLuOhJzVyz1c3q09soozOczDeA5xlJWQEHv4W0jww7169+ElFnulza83F6cwa5
	IEtBDo+5299pWxRd4kJ82FAJHFf0Vhix3WBSxHgu59FmIDnMg9ZqDZsKNljw
X-Google-Smtp-Source: AGHT+IE5/2rEcOurq0i4r3UBWagstXkpcBbzvpVFrD4zlfeAeRf1yuqnsNuKAi0pzOZ6VwxcyTisjA==
X-Received: by 2002:a05:6000:1a8f:b0:3a4:dd16:b287 with SMTP id ffacd0b85a97d-3a8f482bfdemr2459993f8f.19.1751022507363;
        Fri, 27 Jun 2025 04:08:27 -0700 (PDT)
Received: from localhost ([2a02:8308:a00c:e200::5485])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a892e52ca4sm2423718f8f.58.2025.06.27.04.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 04:08:26 -0700 (PDT)
Date: Fri, 27 Jun 2025 13:08:26 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
Cc: "alex@ghiti.fr" <alex@ghiti.fr>, 
	"aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"conor@kernel.org" <conor@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"devnull+aleksa.paunovic.htecgroup.com@kernel.org" <devnull+aleksa.paunovic.htecgroup.com@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>, "palmer@dabbelt.com" <palmer@dabbelt.com>, 
	"palmer@sifive.com" <palmer@sifive.com>, "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, 
	"robh@kernel.org" <robh@kernel.org>
Subject: Re: [PATCH v4 6/7] riscv: Add tools support for xmipsexectl
Message-ID: <20250627-4830df29795364099432e6ee@orel>
References: <20250626-af013235ad8d22421b2fe5b1@orel>
 <b579eb63-c465-45df-9558-a11c02fdb02b@htecgroup.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b579eb63-c465-45df-9558-a11c02fdb02b@htecgroup.com>

On Fri, Jun 27, 2025 at 08:40:53AM +0000, Aleksa Paunovic wrote:
> On 26. 6. 25. 12:49, Andrew Jones wrote:> On Thu, Jun 26, 2025 at 11:34:21AM +0200, Andrew Jones wrote:
> >> On Thu, Jun 26, 2025 at 11:21:10AM +0200, Andrew Jones wrote:
> >>> On Wed, Jun 25, 2025 at 04:21:01PM +0200, Aleksa Paunovic via B4 Relay wrote:
> >>>> From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
> >>>>
> >>>> Use the hwprobe syscall to decide which PAUSE instruction to execute in
> >>>> userspace code.
> >>>>
> >>>> Signed-off-by: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
> >>>> ---
> >>>>  tools/arch/riscv/include/asm/vdso/processor.h | 27 +++++++++++++++++----------
> >>>>  1 file changed, 17 insertions(+), 10 deletions(-)
> >>>>
> >>>> diff --git a/tools/arch/riscv/include/asm/vdso/processor.h b/tools/arch/riscv/include/asm/vdso/processor.h
> >>>> index 662aca03984817f9c69186658b19e9dad9e4771c..027219a486b7b93814888190f8224af29498707c 100644
> >>>> --- a/tools/arch/riscv/include/asm/vdso/processor.h
> >>>> +++ b/tools/arch/riscv/include/asm/vdso/processor.h
> >>>> @@ -4,26 +4,33 @@
> >>>>
> >>>>  #ifndef __ASSEMBLY__
> >>>>
> >>>> +#include <asm/hwprobe.h>
> >>>> +#include <sys/hwprobe.h>
> >>>> +#include <asm/vendor/mips.h>
> >>>>  #include <asm-generic/barrier.h>
> >>>>
> >>>>  static inline void cpu_relax(void)
> >>>>  {
> >>>> + struct riscv_hwprobe pair;
> >>>> + bool has_mipspause;
> >>>>  #ifdef __riscv_muldiv
> >>>>   int dummy;
> >>>>   /* In lieu of a halt instruction, induce a long-latency stall. */
> >>>>   __asm__ __volatile__ ("div %0, %0, zero" : "=r" (dummy));
> >>>>  #endif
> >>>>
> >>>> -#ifdef CONFIG_TOOLCHAIN_HAS_ZIHINTPAUSE
> >>>> - /*
> >>>> -  * Reduce instruction retirement.
> >>>> -  * This assumes the PC changes.
> >>>> -  */
> >>>> - __asm__ __volatile__ ("pause");
> >>>> -#else
> >>>> - /* Encoding of the pause instruction */
> >>>> - __asm__ __volatile__ (".4byte 0x100000F");
> >>>> -#endif
> >>>> + pair.key = RISCV_HWPROBE_KEY_VENDOR_EXT_MIPS_0;
> >>>> + __riscv_hwprobe(&pair, 1, 0, NULL, 0);
> >>>> + has_mipspause = pair.value & RISCV_HWPROBE_VENDOR_EXT_XMIPSEXECTL;
> >>>> +
> >>>> + if (has_mipspause) {
> >>>> +         /* Encoding of the mips pause instruction */
> >>>> +         __asm__ __volatile__(".4byte 0x00501013");
> >>>> + } else {
> >>>> +         /* Encoding of the pause instruction */
> >>>> +         __asm__ __volatile__(".4byte 0x100000F");
> >>>> + }
> >>>> +
> >>>
> >>> cpu_relax() is used in places where we cannot afford the overhead nor call
> >>> arbitrary functions which may take locks, etc. We've even had trouble
> >>> using a static key here in the past since this is inlined and it bloated
> >>> the size too much. You'll need to use ALTERNATIVE().
> >>
> >> Oh, I see now that the next patch is handling the kernel cpu_relax with
> >> ALTERNATIVE and this was just the tools cpu_relax. We don't want to make
> >> a syscall inside cpu_relax though either, since it gets called in loops.
> > 
> > (Another follow up to myself...)
> > 
> > I guess with the vdso cached result it should only be a handful of
> > instructions, but it still seems odd to embed a call in cpu_relax.
> >
>   
> Hi Andrew,
> 
> Thank you for your comments!
> 
> > Thanks,
> > drew
> > 
> >> It'd be better to just call the standard pause (0x100000F) even if it
> >> does nothing. Or maybe there's some define that can be added/used to
> >> select the correct instruction?
> >>
> 
> We did try using an ifdef/else in v3, but since that would have to be marked
> non-portable, we decided to go with a hwprobe call. 
> Since the MIPS pause should behave as a nop on other CPUs,
> would leaving both the standard pause and the MIPS pause calls be an acceptable solution?
> 
> That said, I am not sure how this would behave on future MIPS CPUs in case they support both encodings.

We should probably avoid assuming that undefined custom instructions will
behave as nops everywhere, meaning it should remain guarded. This seems
like a problem we should try to solve before we get even more pause
instructions or whatever that need dynamic selection in userspace, but I
can't think of anything reasonable atm. For now, we may need to live with
vdso hwprobe calls in places like cpu_relax. I'll stop complaining about
this patch as I can't think of anything better.

Thanks,
drew

> 
> Best regards,
> Aleksa
> 
> >> Thanks,
> >> drew

