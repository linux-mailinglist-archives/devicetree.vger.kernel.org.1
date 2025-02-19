Return-Path: <devicetree+bounces-148405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3842DA3BE8F
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:50:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1201189658B
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A191E0DD0;
	Wed, 19 Feb 2025 12:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="O5r+TtEz"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D13E1E0DE6
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 12:48:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739969339; cv=none; b=cdpWiipFDgFtaYrHVA378t6zJffEKxilmZBcVAYfvdKJ0B3pkFbpSy9qpq2cVqvDpQs+7CcpCY8iQqjcZyjeLujkdBSXvNGqE2NJZEdCOJLQ8PJsXgbZTKHBx81e7BwOOb6MSolKWL8s04dPy/wjCMA/YYs+awHbMqUlQhUih9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739969339; c=relaxed/simple;
	bh=Thdr1wpqf/QLeTUfSv5bdo7ibZ59exxf85YF/5cIyXM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=np5JKk7tAeaI9JyXGA2PjhkSXsHdewkkn3dD3BiWg4dYGl0iJ4E7H0lFtkNK97GI3jUBSBH/Ij2wl8uiBpkphhHwC9thlS7ifISFviiPErjuDduh7imD4yoJ6XOGNbAHQ5p78Ep4lLvEpn10sdMwCo/sSOH+33tINyv+ntXENNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=O5r+TtEz; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739969336;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SMHHlCMcxXYtVaRR1wTwHJJB8CwWA0AX/SUXLDYSpC4=;
	b=O5r+TtEzw9Va9IxM6FlfDZNywSr8IH/B5cy7R/xdW2gEwxudNGM64EJKCHrYBQK7g72w8M
	zrwMuYxA8cfVdZthLEvWAxboxy+ByRmbwOeMReJsKVWAJmWYlTdhARmzjBHJZoEuorP4U8
	4+/zrptkJRtIS9x9mcoJSsH+GEjl+1g=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-498-21-gIOxVPEyXZV-3fFymNA-1; Wed, 19 Feb 2025 07:48:55 -0500
X-MC-Unique: 21-gIOxVPEyXZV-3fFymNA-1
X-Mimecast-MFC-AGG-ID: 21-gIOxVPEyXZV-3fFymNA_1739969334
Received: by mail-il1-f197.google.com with SMTP id e9e14a558f8ab-3d2b6d933c1so13105455ab.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 04:48:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739969334; x=1740574134;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SMHHlCMcxXYtVaRR1wTwHJJB8CwWA0AX/SUXLDYSpC4=;
        b=HtXRje8YvOTPRw78dReJpgHDWmdAle1nL6utgeiGeLL+9nz33mcUZISRmvG4sE4N1K
         mIZ3FCML6OjSJYh6cpNQd/8Ap/BBJsy1S27kYA6ny9K2YCVIclMwEq5iOaXkWc8VcVL7
         SbqSKDSxCnLVVos0uFmXE2ACJEdxVaq6BjrIh/kG8v60f0wqhNa+WwIMttMGogHePVDS
         3SWEYu/77K+p5KGdkYBzR1XRdzmJhIb22em/2vgKVhOd0AWSnv8RdzP1m6o+D/ASUvGc
         fXEcVAXyUoGvdyuas0LI3rCEvotF6x5pLJJvNno6vlj4Z4IIjCR4E887XU1hl0JoaSPu
         Cv7w==
X-Forwarded-Encrypted: i=1; AJvYcCUz0//B6Sm+qjJH9HWCpq8Stcj6PJiWFSuck8utq0fXg85hrkSXQsZD/zCCcazeEU/MKWxzlz5lrxzi@vger.kernel.org
X-Gm-Message-State: AOJu0YxfdTxagX/AHUXkUC0bmesMGRPJo0CrOTZvt8pd2sPPLYk0/O1c
	R3LmSXFki4L3ndSOPKcVjfhv2i7tLQzH6Pyl2cZ/5e5iXb496whDcSFifj+STfIRHf4tmH+j6Wx
	hYQnWT1wiyp3vBwyosfw+dJOdxd3vwtoycPME2E4OgPHv96Ee5Mnuyd930F+oxBcLhMl4Zc7PYg
	5s4iyKtTbc9YfDVTAbqtkEvvJwAMeHr/ZeCQ==
X-Gm-Gg: ASbGnctuAPc8NEgpU6axJ0k1Tp6+UBpFdjOgat7KvEtzFYcXJ4uj3WQm7vKK2NslZ3B
	0QQI6qtpext5r2+DI5wpVkfYT2wVy17fxHNfZ7H8PN2YiN7q+RbFL8+Ys2cVyokM=
X-Received: by 2002:a05:6e02:184d:b0:3cf:bb3e:884c with SMTP id e9e14a558f8ab-3d280940c90mr162913895ab.16.1739969334512;
        Wed, 19 Feb 2025 04:48:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQzXwQKpyH3rywpGs7BzP6mbj6/B897FEVbfIit3jAtaZt2ga8Vr+6/m/vSCYkDIbGIHSmC6KPV/ULHybcxNs=
X-Received: by 2002:a05:6e02:184d:b0:3cf:bb3e:884c with SMTP id
 e9e14a558f8ab-3d280940c90mr162913745ab.16.1739969334259; Wed, 19 Feb 2025
 04:48:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250206132754.2596694-1-rppt@kernel.org> <CALu+AoRMQyRDFS_4L0KQkmrFT_S+yk=uZ-Mqt86JQYKKnj-5Ug@mail.gmail.com>
 <Z7WJD6eBLuIRnLwk@kernel.org>
In-Reply-To: <Z7WJD6eBLuIRnLwk@kernel.org>
From: Dave Young <dyoung@redhat.com>
Date: Wed, 19 Feb 2025 20:49:07 +0800
X-Gm-Features: AWEUYZlzn2-E8ZdtRbfhtM_eLch7RFvZ-yzSIrzOWYzAtm2oUJ9ngWc6Obau8Nc
Message-ID: <CALu+AoSaEthfed1NOYPiQgm_g-dhibVMRAp0+=_+9qTT4_x=tg@mail.gmail.com>
Subject: Re: [PATCH v4 00/14] kexec: introduce Kexec HandOver (KHO)
To: Mike Rapoport <rppt@kernel.org>
Cc: linux-kernel@vger.kernel.org, Alexander Graf <graf@amazon.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>, 
	Anthony Yznaga <anthony.yznaga@oracle.com>, Arnd Bergmann <arnd@arndb.de>, 
	Ashish Kalra <ashish.kalra@amd.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Dave Hansen <dave.hansen@linux.intel.com>, David Woodhouse <dwmw2@infradead.org>, 
	Eric Biederman <ebiederm@xmission.com>, Ingo Molnar <mingo@redhat.com>, 
	James Gowans <jgowans@amazon.com>, Jonathan Corbet <corbet@lwn.net>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Paolo Bonzini <pbonzini@redhat.com>, Pasha Tatashin <pasha.tatashin@soleen.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Peter Zijlstra <peterz@infradead.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, 
	Stanislav Kinsburskii <skinsburskii@linux.microsoft.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Tom Lendacky <thomas.lendacky@amd.com>, 
	Usama Arif <usama.arif@bytedance.com>, Will Deacon <will@kernel.org>, devicetree@vger.kernel.org, 
	kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-doc@vger.kernel.org, linux-mm@kvack.org, x86@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Feb 2025 at 15:32, Mike Rapoport <rppt@kernel.org> wrote:
>
> On Mon, Feb 17, 2025 at 11:19:45AM +0800, RuiRui Yang wrote:
> > On Thu, 6 Feb 2025 at 21:34, Mike Rapoport <rppt@kernel.org> wrote:
> > > == Limitations ==
> > >
> > > Currently KHO is only implemented for file based kexec. The kernel
> > > interfaces in the patch set are already in place to support user space
> > > kexec as well, but it is still not implemented it yet inside kexec tools.
> > >
> >
> > What architecture exactly does this KHO work fine?   Device Tree
> > should be ok on arm*, x86 and power*, but how about s390?
>
> KHO does not use device tree as the boot protocol, it uses FDT as a data
> structure and adds architecture specific bits to the boot structures to
> point to that data, very similar to how IMA_KEXEC works.
>
> Currently KHO is implemented on arm64 and x86, but there is no fundamental
> reason why it wouldn't work on any architecture that supports kexec.

Well,  the problem is whether there is a way to  add dtb in the early
boot path,  for X86 it is added via setup_data,  if there is no such
way I'm not sure if it is doable especially for passing some info for
early boot use.  Then the KHO will be only for limited use cases.

>
> > Thanks
> > Dae
> >
>
> --
> Sincerely yours,
> Mike.
>


