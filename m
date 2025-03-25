Return-Path: <devicetree+bounces-160444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDCEA6EBCF
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 09:40:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3058C188D1CF
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 08:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7EE7252914;
	Tue, 25 Mar 2025 08:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XfLjqI8n"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B591C18BC3B
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 08:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742891766; cv=none; b=fcK8nd8pIfTHqv7Jbvygp5vltN6a8khfcaESYXM7BxBtdKaXsBmKZx2QRjvNPs6zqNiCZg9aPqsXN7ZTYE1b4zmUjwtDAomfOjggRmiHiPOOY/fnSivj9UREQyEW3BzaAx+M8yMcRWygl4/SlcN4q3E8lmk9cAKME9jeJ4bzY/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742891766; c=relaxed/simple;
	bh=OCleXFn9NZkH1PChKdrM+O63KYl9A/+phnDxXBrrIoE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b75guu2oCqSdSkOrickXsGhxECb4wIPZgRYpiHBiqxEzn154O/KjjOpFeW/b+bVKijzLjjxrvtvcimIYc7cFU693tqxfOnyMrUxsaAEUXQvfcW3dhgrKivkh4Fcvf2gWwnEA3cN4AZe0REZsz9qMN3QQZdOurNgADwom0PLQTI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=XfLjqI8n; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1742891763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=bXwOjnHMzxUdXRa1xbPJFsVQQAIPiDayu2d6sm6acno=;
	b=XfLjqI8nqqnCKjQoi71MLE1vs/XNLRcgxmwZITzzzCBAh3HsB24rxP6loqtD1tt7iJQMQS
	QoXpFYpYciukOK5wUn1TbDF0MjIIwF/vTBosDHALGI1PO6/qVO0N6oLmWZKcAF86xg/fHY
	r8FEa4Dcmw9Ppqpd6ojGyxkiMt2luxE=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-310-_IVXZLUEODq-LpqXFCWmNg-1; Tue, 25 Mar 2025 04:36:02 -0400
X-MC-Unique: _IVXZLUEODq-LpqXFCWmNg-1
X-Mimecast-MFC-AGG-ID: _IVXZLUEODq-LpqXFCWmNg_1742891761
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3d451ad5b2dso66360575ab.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 01:36:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742891761; x=1743496561;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bXwOjnHMzxUdXRa1xbPJFsVQQAIPiDayu2d6sm6acno=;
        b=bXgLL+oV+Ch/071NnxXJFL1ZiUHquUY5lk9x3gPM/YQfCXWAoMd3N67pwumrRjs8LQ
         vhkRj5ZDlSWV0ZXuyQfWvhUlnssg9O90nyXSTHShL5DLACrEwaqRMpo7yYziYQa3gRgs
         mjyIBKHSGfcCb4jUpmvJjMX124iQal+zNd6GoLiOtcs+68P501sos5CnxOavJ+N4La2A
         9vNpMxm0lSp2w2rn7AbKKZ0SHTjWLhydA76WT0goesoGvIo7siWTTbqCtHw2TUXIFax1
         66uvXl9AOPc7N1H94ypwWyDcleOnh1EFQ53OSAxMJ1HL1BYOdiFRcB8kEZDxdIjNs4ol
         /p1g==
X-Forwarded-Encrypted: i=1; AJvYcCW0CYaD9KVpkuJFE6osOJvqYWNZDS/9Hd2nSw4ViJ+8LXvpw53f+LKBG73KYFBgP6VdgPi8YBBk5u6R@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9khVQuUJ8mSkffWybHqSTajz77AQyu9Z+/FVNgA1b/DN7ON4+
	35vYXOJhAMtT0iJXS5+rXDhUr89ZXukf/M3pGsTl/blkTwH2QFyXADbMPLEUJfIoxZI8L57YuvZ
	T7a401W0t4o/Nhayy+gdnIKl8+9mwTMq5V4Ti9h4Ohi4jN+cnMB3F3E2+84VfpFSzLGifAtqWLe
	O66VNQYNyW+R+xkLkA85l6qtyjVV3SrvENQA==
X-Gm-Gg: ASbGncv5EHXb2yisrxhLgTLTbpaKuaAG/S/bS2zWSHZE25zRzs45AaDhxvydM+ZqfjA
	tbO8GRAiS2i5o0EGxD4VJwPDJY2rxqIsWVDBhA93Zw4/P33PriPKTC3VBwjJ3AaozKLCAw0fj2Q
	==
X-Received: by 2002:a05:6e02:12c9:b0:3d1:4a69:e58f with SMTP id e9e14a558f8ab-3d58e81374emr209274435ab.2.1742891761228;
        Tue, 25 Mar 2025 01:36:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9E4/EucEBc/+iE2lWu+YyJiDtrud2DOWwH9Ttz3ALKtbFpsWVzZCuYuuSTYSC3OfYElupM2e2tE7hTWgAmd4=
X-Received: by 2002:a05:6e02:12c9:b0:3d1:4a69:e58f with SMTP id
 e9e14a558f8ab-3d58e81374emr209274145ab.2.1742891760802; Tue, 25 Mar 2025
 01:36:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250320015551.2157511-1-changyuanl@google.com>
 <20250320015551.2157511-12-changyuanl@google.com> <CALu+AoS01QJ-H5Vpr378rbx==iRQLG0HajtMCUzDXRO75biCag@mail.gmail.com>
 <Z+JT7kx+sfPqfWFA@MiWiFi-R3L-srv>
In-Reply-To: <Z+JT7kx+sfPqfWFA@MiWiFi-R3L-srv>
From: Dave Young <dyoung@redhat.com>
Date: Tue, 25 Mar 2025 16:36:22 +0800
X-Gm-Features: AQ5f1JqjFlzQ1M_D50CQArcQW8YwNNz0vfJYofXBEYquREvaq-g04uQRlGUrUgs
Message-ID: <CALu+AoQj+mHECTvbuK8CpUTmOYgx6n2oMFm5kQXtSigL+5Ks2w@mail.gmail.com>
Subject: Re: [PATCH v5 11/16] kexec: add config option for KHO
To: Baoquan He <bhe@redhat.com>
Cc: Changyuan Lyu <changyuanl@google.com>, linux-kernel@vger.kernel.org, graf@amazon.com, 
	akpm@linux-foundation.org, luto@kernel.org, anthony.yznaga@oracle.com, 
	arnd@arndb.de, ashish.kalra@amd.com, benh@kernel.crashing.org, bp@alien8.de, 
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

> >
> > Have you tested kdump?  In my mind there are two issues,  one is with
> > CMA enabled, it could cause kdump crashkernel memory reservation
> > failures more often due to the fragmented low memory.  Secondly,  in
>
> kho scracth memorys are reserved much later than crashkernel, we may not
> need to worry about it.
> ====================
> start_kernel()
>   ......
>   -->setup_arch(&command_line);
>      -->arch_reserve_crashkernel();
>   ......
>   -->mm_core_init();
>      -->kho_memory_init();
>
> > kdump kernel dump the crazy scratch memory in vmcore is not very
> > meaningful.  Otherwise I suspect this is not tested under kdump.  If
> > so please disable this option for kdump.

Ok,  it is fine if this is the case, thanks Baoquan for clearing this worry.

But the other concerns are still need to address, eg. KHO use cases
are not good for kdump.
There could be more to think about.
eg. the issues talked in thread:
https://lore.kernel.org/lkml/Z7dc9Cd8KX3b_brB@dwarf.suse.cz/T/


