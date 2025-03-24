Return-Path: <devicetree+bounces-159978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4E8A6D383
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 05:18:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C534D16B3FD
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 04:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC63157A46;
	Mon, 24 Mar 2025 04:18:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FgYbdGRN"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2183A41
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 04:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742789889; cv=none; b=vF6I2ZemGvo2ZeObyobG8N5npHLZoLOgBkcYgzxb1+ggqn1gHr/0vylgJe1cOy37u4gUteWV+S7Fu2X0wubFB/DLBuN3Ty0CZztDDbn3aNOAa+LKez7dBp+AjG5ESfVRSOglyiiB9fVbEjR38NLHHD+UIX1SIvuKVHvIFmAS7JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742789889; c=relaxed/simple;
	bh=SlHG+ZWGRxRgZh//vL3zEjL4LluOqHa9hF+qK4JIDt0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pYTV7nr2wM763+QtqyPTD3k9Lo7CzQc6Yi+jay2bM5J5LC9U41gXTNGkzYauTlUQGSP6s1BliXMy7/Q5cEfE+GEXZetHvi2wu75qHh9SvbiNYXR6MfaNU0IKXYUPHjpKTFG5wi8U3/4SqBnci4bauFVCVblKP5Fb2uO7U+or5eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FgYbdGRN; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1742789886;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tauycDhLSHK8+Z4SEw1ULV8RR4SX0dqi01Ofyz18GyY=;
	b=FgYbdGRNCAgpSn5cUClOdMTia/xSZtWYcc28/vt6HsAoS46bJSo90RSHO+kkW2ed3G4RNh
	BNRPFvs7XGF+HsUJdOfSbxzqqFXlwgPoU8noZPfBhcEsinuz3a6MOCKpdwS+HdUnPnmJY4
	lUhxDJJPoUzK2lvhiiBJTOuPYO5PKBc=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-654-Nd0n-Q0zP-ucq4w5k1bMeQ-1; Mon, 24 Mar 2025 00:18:04 -0400
X-MC-Unique: Nd0n-Q0zP-ucq4w5k1bMeQ-1
X-Mimecast-MFC-AGG-ID: Nd0n-Q0zP-ucq4w5k1bMeQ_1742789884
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-3d438be189bso39875635ab.3
        for <devicetree@vger.kernel.org>; Sun, 23 Mar 2025 21:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742789883; x=1743394683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tauycDhLSHK8+Z4SEw1ULV8RR4SX0dqi01Ofyz18GyY=;
        b=CQrApdzr6Ye0CAF24Ft4qSHRZQE1thuhSQ5yV0OAi0ZLd144DK9n5w6AJuxNE1QX09
         7pZxi40hrK/tnlCAllVka3Atzw5JRT8QFlDLDq5g9TDFCHCzgBGH+uC4YY8hUyvjXpBi
         PNEyZ+gwv/vt1LpnYGEwlPSLf3k8xy0slPquDS74ESB1SkewvmFOCpKI2j+KpB8NoJo/
         Npm3d0C6ZpI+KiTtONTs6k5esXgbmpD/ej/QF7rPJMyPYxQcvkBVXil/Fk8MTr1ymQa3
         LddMIY3grua2ZhZzwrW9BACNdza4DEubWCjymmHH4hBj8Vc03G6ohW+ulRWcB9pPq2b9
         TPTw==
X-Forwarded-Encrypted: i=1; AJvYcCXvsbwpjAAJHrkPFjgpaKDQkdzaYr/IneNMHkSuslR2vc4b2WdoWuw0YTv959henAmqH8DuigKTbVGl@vger.kernel.org
X-Gm-Message-State: AOJu0YydPqnU7BnB45rUmFHoI+jUVAwH9XQNBT4+nB+AUIJgA0CMGgfK
	lir8txLJp/sZP2L2qnu/PXmiIC5PdbV4mjiGvn72457fjjtzrSbo/9HMruObMV6iSXN3PC0Q++I
	+W6YwZ0BZaMNhrMrcgmj8JQXAocsb6bOgaX1G5kUd4IrGO3G/AVQpvmYZejfiFYk3dxJGyps3Ti
	ZPJmfzZTjPzzZjZKKtOJMdXzy+WxnwmBxS5g==
X-Gm-Gg: ASbGncvmZcoCzA/I3/5wFPC636AIqU754tU7+kki3nwXk96d9e18KYTdFXGJ53AVNQM
	w0aOq7BDtwVJtnaXJbELjm9AtNsy5/1bsHDd38UH1wE0nYR1XsDI6X0SanxDOkOCgHKHNwRjP/A
	==
X-Received: by 2002:a05:6e02:3e03:b0:3d4:3cd7:d29c with SMTP id e9e14a558f8ab-3d5961087a4mr114773235ab.11.1742789883495;
        Sun, 23 Mar 2025 21:18:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKTYUkEhLDCfmTqCzwmW7lTzNOrlm9PhUUN5r+ilaum3pQSmAXsd7VnN9OVuQyn+lnI6uMUA4yOPPaWTzR6xc=
X-Received: by 2002:a05:6e02:3e03:b0:3d4:3cd7:d29c with SMTP id
 e9e14a558f8ab-3d5961087a4mr114772865ab.11.1742789883003; Sun, 23 Mar 2025
 21:18:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com> <20250320015551.2157511-12-changyuanl@google.com>
In-Reply-To: <20250320015551.2157511-12-changyuanl@google.com>
From: Dave Young <dyoung@redhat.com>
Date: Mon, 24 Mar 2025 12:18:24 +0800
X-Gm-Features: AQ5f1Jo8cgDtoQHR7bje9Ajd-fT5hflpJGHeRbJSkzX-LSsy1GnvBgRPYu2INeE
Message-ID: <CALu+AoS01QJ-H5Vpr378rbx==iRQLG0HajtMCUzDXRO75biCag@mail.gmail.com>
Subject: Re: [PATCH v5 11/16] kexec: add config option for KHO
To: Changyuan Lyu <changyuanl@google.com>
Cc: linux-kernel@vger.kernel.org, graf@amazon.com, akpm@linux-foundation.org, 
	luto@kernel.org, anthony.yznaga@oracle.com, arnd@arndb.de, 
	ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
	catalin.marinas@arm.com, dave.hansen@linux.intel.com, dwmw2@infradead.org, 
	ebiederm@xmission.com, mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, 
	krzk@kernel.org, rppt@kernel.org, mark.rutland@arm.com, pbonzini@redhat.com, 
	pasha.tatashin@soleen.com, hpa@zytor.com, peterz@infradead.org, 
	ptyadav@amazon.de, robh+dt@kernel.org, robh@kernel.org, saravanak@google.com, 
	skinsburskii@linux.microsoft.com, rostedt@goodmis.org, tglx@linutronix.de, 
	thomas.lendacky@amd.com, usama.arif@bytedance.com, will@kernel.org, 
	devicetree@vger.kernel.org, kexec@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
	linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Mar 2025 at 23:05, Changyuan Lyu <changyuanl@google.com> wrote:
>
> From: Alexander Graf <graf@amazon.com>
>
> We have all generic code in place now to support Kexec with KHO. This
> patch adds a config option that depends on architecture support to
> enable KHO support.
>
> Signed-off-by: Alexander Graf <graf@amazon.com>
> Co-developed-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>
> Co-developed-by: Changyuan Lyu <changyuanl@google.com>
> Signed-off-by: Changyuan Lyu <changyuanl@google.com>
> ---
>  kernel/Kconfig.kexec | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/kernel/Kconfig.kexec b/kernel/Kconfig.kexec
> index 4d111f871951..57db99e758a8 100644
> --- a/kernel/Kconfig.kexec
> +++ b/kernel/Kconfig.kexec
> @@ -95,6 +95,21 @@ config KEXEC_JUMP
>           Jump between original kernel and kexeced kernel and invoke
>           code in physical address mode via KEXEC
>
> +config KEXEC_HANDOVER
> +       bool "kexec handover"
> +       depends on ARCH_SUPPORTS_KEXEC_HANDOVER && ARCH_SUPPORTS_KEXEC_FILE
> +       select MEMBLOCK_KHO_SCRATCH
> +       select KEXEC_FILE
> +       select DEBUG_FS
> +       select LIBFDT
> +       select CMA
> +       select XXHASH
> +       help
> +         Allow kexec to hand over state across kernels by generating and
> +         passing additional metadata to the target kernel. This is useful
> +         to keep data or state alive across the kexec. For this to work,
> +         both source and target kernels need to have this option enabled.
> +

Have you tested kdump?  In my mind there are two issues,  one is with
CMA enabled, it could cause kdump crashkernel memory reservation
failures more often due to the fragmented low memory.  Secondly,  in
kdump kernel dump the crazy scratch memory in vmcore is not very
meaningful.  Otherwise I suspect this is not tested under kdump.  If
so please disable this option for kdump.

>  config CRASH_DUMP
>         bool "kernel crash dumps"
>         default ARCH_DEFAULT_CRASH_DUMP
> --
> 2.48.1.711.g2feabab25a-goog
>
>


