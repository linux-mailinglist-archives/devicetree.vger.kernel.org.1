Return-Path: <devicetree+bounces-160858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 52272A71648
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 13:10:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E5A97A5CBA
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 12:09:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68F4E1DB933;
	Wed, 26 Mar 2025 12:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="BIu87C1E"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91D91A5BA2
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742990995; cv=none; b=Cxpk8mO3XWzdJgsvOdbNQEimi6QOUUCst1pjyPZ/w7YCoy6Me/gMY6XbciFGZ8TLe1bW9UAcpuNOZQdyrx0l0bv6P0b6mzwh3NpN+BuTGNtX7F246VLTTCdbmA3K7WkZjaYLwlyyyPiTpuDBi739ORfuY9r9y/vGDKOQA/FoNPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742990995; c=relaxed/simple;
	bh=Rn7DZzluTD2+MZZoYt3D0u5sryYqeFHqvQWAx2OGmqw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bVe7Khq0VufPkYG8oE4cXaKItQKTX/0dBzAvSt8s7eFwGg96brKMoE6beqsf6tYeIC7ojLs9ctmffQvm5Yt4tBPeUX8t2TVvkjlYu2NFJpyMdM04uLMmlznak5sqlyffi6YHgPOdJJdqaP0FH0W9jkLXrQ+L/4Wl12pzc3A3T3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=BIu87C1E; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1742990992;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=nDjBICGKa43kYHEOCFvDUYcy1IhXoeMUQwDGcLiaSWE=;
	b=BIu87C1ES2mMWWqfkhdyWqnaoXhAp2jA4uCYCmn+jVpxdKww0vt4gxaZzR4tXf0XjMZTbw
	pob+GHtmZe+16ZmZ1H254Ra1JlLCmINmD+eVOKjnMBcQXkKBjy7q7dlDee0GuGKelGwEIX
	DA47JBOZqTW6YDdqomsVgJM8T6MO67c=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-505-tkUM22ZaMWmeUdPBIOtWLg-1; Wed, 26 Mar 2025 08:09:35 -0400
X-MC-Unique: tkUM22ZaMWmeUdPBIOtWLg-1
X-Mimecast-MFC-AGG-ID: tkUM22ZaMWmeUdPBIOtWLg_1742990975
Received: by mail-io1-f69.google.com with SMTP id ca18e2360f4ac-84cdae60616so757987539f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 05:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742990975; x=1743595775;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nDjBICGKa43kYHEOCFvDUYcy1IhXoeMUQwDGcLiaSWE=;
        b=bq5AVFT8L3LJkmHFvwR4QYJnTOi+4gle8taJ+5MJ+bma5Minbht95fbtAbqLv35X75
         XazzB+OHkbAJ9JisVchA9sVQjZyJgorY7A0My3RFPx3v/UJ5RZqrGVZrXe5/dZyof/xZ
         vW+PzMJx/WvxxnSuFrnrNfoV7Vgb3etV10jo5ngrnZDEWj1RuOwES2yi3e0lNQW5WD6+
         4YDHiDeveRnFOa4kq6ANL+PLkKuTOeFRfYMuvizitlzBSFTKLUCsMLlt7OiRkqDS+sN5
         mdpvmHoFyvaapY19z6M9NVZi9B9iELg3zrpu4rdyNAgRpFP8avAdH9REK6gO+AiqEX3+
         B9UA==
X-Forwarded-Encrypted: i=1; AJvYcCVCqCI3WrugwqszB6crMwZJqFKKxGYSTqKqehXPqboXAnd40Kqgcyhzpv6cfHNQ5mLSyI9wdzgmO9Os@vger.kernel.org
X-Gm-Message-State: AOJu0YxONHLaJs1kIBE00k+gBe+mZS9DjSUIlvWad9e6W9sd6sdEK7IT
	FW+mBlLq6/ox8AyHT74GCK2vGSkyxgj7AwsDFMkiHY1wIGe7/UK7SonVl9oJeg23UBdnLjb6xqh
	/afjgMQHUg5E3zZMPmN/jCBA7wKaG4hrpCKBVKClvsHcXMa9Tv18JPACHVed4lf7MWOXwKBfryu
	jLNYBwaNHnf9EjbVU122UsqhXW/bdu/1ELOw==
X-Gm-Gg: ASbGncvab0z02ha5kseZ5GjZURypPYsJuCMzWnFOmTcqB00iWeI7qFlvauw2Iavd87s
	cFRZXjbD2oK8/inpTv34PY0I+r65kwhUo1Cy3qXoCVnW3YH2MQJ7wYx3MNXko2hmqT37mvfQ6pQ
	==
X-Received: by 2002:a05:6e02:3a0c:b0:3d4:6f37:372c with SMTP id e9e14a558f8ab-3d5960e2419mr225832845ab.7.1742990974575;
        Wed, 26 Mar 2025 05:09:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOuyfQGVOhYyFSi3hsb9kc2zJRzczpD7XPzwNdnwVuHyYQPBafKpH087OtVwDsIyzVWltmG166ADE4aJfipJU=
X-Received: by 2002:a05:6e02:3a0c:b0:3d4:6f37:372c with SMTP id
 e9e14a558f8ab-3d5960e2419mr225831915ab.7.1742990973998; Wed, 26 Mar 2025
 05:09:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
 <20250320015551.2157511-12-changyuanl@google.com> <CALu+AoS01QJ-H5Vpr378rbx==iRQLG0HajtMCUzDXRO75biCag@mail.gmail.com>
 <Z+JT7kx+sfPqfWFA@MiWiFi-R3L-srv> <CALu+AoQj+mHECTvbuK8CpUTmOYgx6n2oMFm5kQXtSigL+5Ks2w@mail.gmail.com>
 <CALu+AoRdfjNcjweq_ipxCC6UGBzM-a5ma417RBr-C3EQ=Em9OQ@mail.gmail.com> <Z-Pk9Bnr0lDVopKj@kernel.org>
In-Reply-To: <Z-Pk9Bnr0lDVopKj@kernel.org>
From: Dave Young <dyoung@redhat.com>
Date: Wed, 26 Mar 2025 20:09:55 +0800
X-Gm-Features: AQ5f1JrnxWyTc7ruwIDaX1fnmt0FdUmOV-OtIvcwHa3Skex-wO_kM_31tXed_lg
Message-ID: <CALu+AoS9=KttzqgR+xi11jur5eX7dBwUfOoueHoOss3eFn+Hkw@mail.gmail.com>
Subject: Re: [PATCH v5 11/16] kexec: add config option for KHO
To: Mike Rapoport <rppt@kernel.org>
Cc: Baoquan He <bhe@redhat.com>, Changyuan Lyu <changyuanl@google.com>, linux-kernel@vger.kernel.org, 
	graf@amazon.com, akpm@linux-foundation.org, luto@kernel.org, 
	anthony.yznaga@oracle.com, arnd@arndb.de, ashish.kalra@amd.com, 
	benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com, 
	dave.hansen@linux.intel.com, dwmw2@infradead.org, ebiederm@xmission.com, 
	mingo@redhat.com, jgowans@amazon.com, corbet@lwn.net, krzk@kernel.org, 
	mark.rutland@arm.com, pbonzini@redhat.com, pasha.tatashin@soleen.com, 
	hpa@zytor.com, peterz@infradead.org, ptyadav@amazon.de, robh+dt@kernel.org, 
	robh@kernel.org, saravanak@google.com, skinsburskii@linux.microsoft.com, 
	rostedt@goodmis.org, tglx@linutronix.de, thomas.lendacky@amd.com, 
	usama.arif@bytedance.com, will@kernel.org, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Mar 2025 at 19:34, Mike Rapoport <rppt@kernel.org> wrote:
>
> Hi Dave,
>
> On Wed, Mar 26, 2025 at 05:17:16PM +0800, Dave Young wrote:
> > On Tue, 25 Mar 2025 at 16:36, Dave Young <dyoung@redhat.com> wrote:
> > >
> > > > >
> > > > > Have you tested kdump?  In my mind there are two issues,  one is with
> > > > > CMA enabled, it could cause kdump crashkernel memory reservation
> > > > > failures more often due to the fragmented low memory.  Secondly,  in
> > > >
> > > > kho scracth memorys are reserved much later than crashkernel, we may not
> > > > need to worry about it.
> > > > ====================
> > > > start_kernel()
> > > >   ......
> > > >   -->setup_arch(&command_line);
> > > >      -->arch_reserve_crashkernel();
> > > >   ......
> > > >   -->mm_core_init();
> > > >      -->kho_memory_init();
> > > >
> > > > > kdump kernel dump the crazy scratch memory in vmcore is not very
> > > > > meaningful.  Otherwise I suspect this is not tested under kdump.  If
> > > > > so please disable this option for kdump.
> > >
> > > Ok,  it is fine if this is the case, thanks Baoquan for clearing this worry.
> > >
> > > But the other concerns are still need to address, eg. KHO use cases
> > > are not good for kdump.
> > > There could be more to think about.
> > > eg. the issues talked in thread:
> > > https://lore.kernel.org/lkml/Z7dc9Cd8KX3b_brB@dwarf.suse.cz/T/
> >
> > Rethink about this,  other than previous concerns.  Transferring the
> > old kernel state to kdump kernel makes no sense since the old state is
> > not stable as the kernel has crashed.
>
> KHO won't be active for kdump case. The KHO segments are only added to
> kexec_image and never to kexec_crash_image.

Good to know, thanks!

>
> --
> Sincerely yours,
> Mike.
>


