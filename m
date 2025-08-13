Return-Path: <devicetree+bounces-204064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C4B23F31
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 05:57:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C2DB1B6743C
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 03:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C11EF2BE04C;
	Wed, 13 Aug 2025 03:54:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WyVuAlkb"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870726B748
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 03:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755057251; cv=none; b=cGb+JuqlKLRbH2f8mchrng2EW4YRg8v/PWLFTQHpbkUfcGIzMc29y2alOZfztg9TQ5jC80zfhXsoR3Wbb2RxMMNDk++rKG1efJWMd5wP6mES/p1R7j1SIZcjs2y7qc3VfAePEWlhBFBYCS/e8SqqnU3HeV6FTArJ8LS67OmxUl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755057251; c=relaxed/simple;
	bh=Skda6nTvSWoZGGOd7yZiDe24NOcyi8WiqRzV833V2EA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iymTlpKTJakJz2SMSlmOt4FNsVSdOoPMnzR5rsjgvGpGZ7454DEt6lW943fkENx26AM6GIFUoriPqg7QOwPUuuuSpjfzizIT2vwItI40Gd9BYx8HuWTJ/MsdDpU8t8PgeeuYJUzdFTn9WscFAjpf28BV9a7HXaPU0N5hNRTf29c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WyVuAlkb; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755057249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ldor2CsT8B6HWfUu/hwR1kEDuR0LOGQwR1IQ7tbgj10=;
	b=WyVuAlkbhmL3W2/99yzzAAM7ILAlDNJSt7p99/JGlrRCIIreBRmI8ha2C66rF7xImmoG98
	iMlBQd/m2OyAEOg1Entd8xGyDZD51gqYaCBg0FDndwbSREb1PXd9xxwikeuj+hBuskg7j6
	eDR5fIEbJZuvy32/19nn51eMTXcLiJU=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-203-G9sP4CFHNReCZlSMeMwrZQ-1; Tue, 12 Aug 2025 23:54:05 -0400
X-MC-Unique: G9sP4CFHNReCZlSMeMwrZQ-1
X-Mimecast-MFC-AGG-ID: G9sP4CFHNReCZlSMeMwrZQ_1755057243
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-33272ab5ed4so26894821fa.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 20:54:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755057242; x=1755662042;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ldor2CsT8B6HWfUu/hwR1kEDuR0LOGQwR1IQ7tbgj10=;
        b=WcZYGGvaqByTjwRwd+AmLYt9vM5ymiQWvPndJe99mm+z0xXt6MMqIRfEXne2Lmp3wy
         +JY1zm7KFOahRZJ8Z/flgkykew90fc2k46HKRVKpIBlPF0ERYB2t0XXUXXLp+5UzTo6s
         O8V7hIAwyMDhYnmxcq2vUvIRvE3m87KGATsCAPlx/4GGYngpYf10M7IzWlfgAFKqdd7j
         HhrswPeJt1N1ZCPTlSGV+nsPOWdPsa6KxX/c4zO3MyqM6P/Zaq12gevlfYxE3D8DPrFc
         jevWw9uAEcc1fMofFx35shHxnXWpP8Dx4RT5cWYLb2QpRQo5Skj/ivnLV9OKCUOyuclJ
         lolQ==
X-Forwarded-Encrypted: i=1; AJvYcCVs1y/Flf2dgyup7igXNdntpv/ZBv3rknJcUXff573RRMDGYCYX5MdTfk23YVgJ6vTtLl4K+Zg9f0JA@vger.kernel.org
X-Gm-Message-State: AOJu0YxgbElM3dR2BkgKsKUDyYRLWWyU1bdDY1T8YScqwCPTnstRXIJu
	dFNRSxPQUzid7gqtIL2hBquglaJm36iCaopq095w8nASltwcebYXIBmkw2ykLukJtlodo1qxv7B
	Huds3E3Td7CVKNHuiHyG2EBHqwaqnjcuHL5RAbxLwOfUDQ3HLGzZSF93EaOJyGsgRoQL59+2rWA
	3wMSQmB29qqvfLoW8rkCOOLIPEn8jLiCM4Kx5jgg==
X-Gm-Gg: ASbGncsZ7JQPEPaoiunA4IhNWGUI4QsHCqMwGp20yTHiYUrZIy6dwESNx+sLjsM+BAR
	qftTvmTw0XcM5cLJ89Qn+DcVr5aOgOuvAHk07vev4yTXDjPzj56Dv7c21Xb1xFTRdehdjVbeYer
	8qLQmRU2xqy6wwLnYHfoaP6g==
X-Received: by 2002:a05:6512:aca:b0:55b:8277:22a2 with SMTP id 2adb3069b0e04-55ce0345860mr417139e87.21.1755057242527;
        Tue, 12 Aug 2025 20:54:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZexknp+rla3L40FUKhJV5/CkF/Q1buN23b5+UivngVCIbFHMBHBYv82Z303ckdVGtLcpYInGr0FEz6ewgXYw=
X-Received: by 2002:a05:6512:aca:b0:55b:8277:22a2 with SMTP id
 2adb3069b0e04-55ce0345860mr417134e87.21.1755057242110; Tue, 12 Aug 2025
 20:54:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250805211527.122367-1-makb@juniper.net> <9B71EC74-D1F4-4F7D-837A-A43E53CEBB89@juniper.net>
In-Reply-To: <9B71EC74-D1F4-4F7D-837A-A43E53CEBB89@juniper.net>
From: Dave Young <dyoung@redhat.com>
Date: Wed, 13 Aug 2025 11:54:43 +0800
X-Gm-Features: Ac12FXyxBbd3MqroyWxKC83iyko_mLksVDwNvBYetOdQP2oCw_iEtH2TUcVrO6s
Message-ID: <CALu+AoQnXfYtuKQxVKK32sC4D98Y+Yn30TjTr2xmXhZcHe0x=A@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] x86/kexec: Carry forward the boot DTB on kexec
To: Brian Mak <makb@juniper.net>
Cc: Baoquan He <bhe@redhat.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Alexander Graf <graf@amazon.com>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	"x86@kernel.org" <x86@kernel.org>, "kexec@lists.infradead.org" <kexec@lists.infradead.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 13 Aug 2025 at 02:01, Brian Mak <makb@juniper.net> wrote:
>
> On Aug 5, 2025, at 2:15 PM, Brian Mak <makb@juniper.net> wrote:
>
> > Hi all,
> >
> > Here is v2 with the comments from v1 addressed. I also added a patch to
> > the series to add KEXEC_FILE_NO_CMA as a legal flag. I noticed that this
> > was missing when I went to add my KEXEC_FILE_FORCE_DTB flag.
> >
> > Thanks,
> > Brian
> >
> > Changes in v2:
> > - Added a patch to add KEXEC_FILE_NO_CMA as a legal flag
> > - Added a KEXEC_FILE_FORCE_DTB flag to enable carrying over the current
> >  boot's DTB on x86.
> > - Modified the commit message to include more reasoning for the change.
> > - Changed a pr_info print to a pr_debug print.
> >
> > Brian Mak (2):
> >  kexec: Add KEXEC_FILE_NO_CMA as a legal flag
> >  x86/kexec: Carry forward the boot DTB on kexec
> >
> > arch/x86/kernel/kexec-bzimage64.c | 47 +++++++++++++++++++++++++++++--
> > include/linux/kexec.h             |  6 +++-
> > include/uapi/linux/kexec.h        |  4 +++
> > kernel/kexec_file.c               |  1 +
> > 4 files changed, 54 insertions(+), 4 deletions(-)
> >
> >
> > base-commit: 35a813e010b99894bb4706c56c16a580bf7959c2
> > --
> > 2.25.1
>
> I see Andrew has sent these patches to linux-next. Thanks for that,
> Andrew!
>
> Dave and Baoquan, have you two had a chance to peek at the updated patch
> set yet?

Hi, The #ifdef CONFIG_* which can be replaced by #if defined(), but I
do not have a strong opinion.  other than that do you have kexec-tools
patch ready? It would be better to provide a link so that people can
try and test it.

Thanks
Dave


