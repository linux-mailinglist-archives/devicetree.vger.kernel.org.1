Return-Path: <devicetree+bounces-219242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD989B89306
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 13:06:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B4571BC7EDB
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 11:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F7D30AD0D;
	Fri, 19 Sep 2025 11:06:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q8SC6C39"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF67D3093A8
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 11:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758279985; cv=none; b=pu419P8rel65/8XExssmRm3s1i2axRidkjC900ATF2ufTzmCdFD0lBpaLx1CxsiCCylMTE5h3Tnri5X5DmMM2BuqbML2q22mLSf9lBFXT5W5otRo7uwrBUZkA4+bf9eLOE17llTrooRNs8RkmKqFyF+hzW6/TsLl5BUkErKwgAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758279985; c=relaxed/simple;
	bh=FeRgsSRi/iWOgqISnP+r+zKDQoLdP8inVV16qsd7MGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WNH29HDj0l7Tgt/K6cY9J7ZwuBdH2HBboNIccijDIOk1cuvCN53NrTS9MeD9SqIFntn8T0qTi5oYPX2wulTbI8fmyCAAj0U/hs+JyvOqY3cBsKJDfZy5jf0eU7FWFfG6nPnG3QqvR/w/zFWFFD2gx2slJr3aq5ft64Q/jKA7vIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q8SC6C39; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3e8ef75b146so1812339f8f.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 04:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758279982; x=1758884782; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E0gpwB10/6E2U+Sby0w+MPfG8NeegflF3tJftb7joqA=;
        b=Q8SC6C39HSzMllgd/UNkS5pHqobCWsVLBjBEoSNzLAi1wsLTx93PZqvd4EabCCHfh6
         cMHspRcNaxe1EUOPs1/THG2wDGA3vz51R9eOdzC/3l3r4e/iQd7To8YerJGalNMfVJqC
         uiTF0rDFb5fx5D9veDlLBTYsbpNcME9/bbEld9/ZGMIf1TlCyonJUAKCmx5vMZkm7D7X
         tQXLJa+AwBiM/GRvYgxFU7pDgyWOKdyD2J/kznrNiArhSTDytaR7xmFm+cCYX1LDG24o
         /8c/T8JCJDl3Yhlwn41FOJWVLglJoXkfu4FjDDbjHn/fkX+AsKjHR5nWxq05trMcuq1A
         eOWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758279982; x=1758884782;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0gpwB10/6E2U+Sby0w+MPfG8NeegflF3tJftb7joqA=;
        b=Pbag91d1e95s0NpFJx2Leazcgy2d1My2N7UgHrMBvi1GvVgDvb3sxJXGiZDtpdSNB2
         OW3Dm23HDtwThiiUvIhExyZjxrt9e7tf4jPeqUanM24Z5+U9AFrmM/okkFPbrCdp2sHc
         eH+Ov8jbgQXt+jg7phkkBx3IqtQzDarweOxvhrokU6iRrDv0s3U70RWQdBFcXIqSqCCr
         gudHUVQbnQtMrx1TOfpzAmEuIj9tDJYY1nh92vjJLZ/KTT1jCMWqp6vgCsT3ULUwE60U
         5oXKqsL+odrmmto5dnqnWhC8xbHN//6itt4Mvb9eWJ/vvHLR4qaKrtVuPulOJ31NlUrO
         NdZw==
X-Forwarded-Encrypted: i=1; AJvYcCXSti7ZwFjdJq2mHaHs7JQK9Ezd3XS+uXMt1ZHFMHmnE/SMbE6MUsvl6n6BSWJGaRzwbnC7Lw0l9pM9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy70gdXIx+ZXYjiolo7f1U9FnYBjVVdrLAwZReVj5kQCb1dmSEl
	Q9cIDfDsBRLATWXJJQXwWkiOPqkX3g68Nfw0D17hB4e+9x65MumfsUEr
X-Gm-Gg: ASbGncv/XSM+5cBYqYlAtyOALzpLFdbchKr4GzevXzYK3JGAlU99mPaPVdrVlBzE8Xc
	dTO3ksR414t1IQz+3A9G5wOuXJ+d9YOJ88K/Y6Lgbmt3208V9Qynnb8gLmveiwgQWssvqhNcyl3
	1QEnWjVUVa1lMByedYbVi/gChiZ2WRPmxyOAGVO3ZA+Pjas+03sYLJ4chqS+L2/nRFH3BfW+h3N
	FDTL/9D9bOVLe9UCwPMYJ655C6LggJDpIrVgsSymUmd2ZnQPwINm3vOOryk+v2hUbAnenOPYEXH
	WhEhQZ4KxUZqT9aTS5DUElf8AYbxIgm4fl7AVPcjSdKckpxz7ZjUrC1JJyWVkkz7WtDtZH5lPhO
	ooOryRjBMloqkrTupEvhS
X-Google-Smtp-Source: AGHT+IF2Z0bInAWZqDYYETRVnCkFEjbkAn2Fex4pkyig1CAMuVquXF5ao4cQ8XxsbTLy1k2XXr+50A==
X-Received: by 2002:a05:6000:2881:b0:3eb:dcf:bfa4 with SMTP id ffacd0b85a97d-3ee868a75b0mr2033940f8f.54.1758279981950;
        Fri, 19 Sep 2025 04:06:21 -0700 (PDT)
Received: from andrea ([176.201.192.207])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46138694957sm139550595e9.4.2025.09.19.04.06.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 04:06:21 -0700 (PDT)
Date: Fri, 19 Sep 2025 13:06:15 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, will@kernel.org,
	peterz@infradead.org, boqun.feng@gmail.com, mark.rutland@arm.com,
	ajones@ventanamicro.com, brs@rivosinc.com, anup@brainfault.org,
	atish.patra@linux.dev, pbonzini@redhat.com, shuah@kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com,
	linux-doc@vger.kernel.org, kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [External] Re: [PATCH v3 0/8] riscv: Add Zalasr ISA extension
 support
Message-ID: <aM05J6FU0xG3SBzR@andrea>
References: <20250919073714.83063-1-luxu.kernel@bytedance.com>
 <aM0qlTNPiaQRY2Nv@andrea>
 <CAPYmKFsP+=S56Cj2XT0DjdvBT_SY84moM4LVeqxHTVWbtq4EVw@mail.gmail.com>
 <CAPYmKFsV_ZPifJBtvPOdqM6_Mzhac9A4-PH9zt8TirOqAwKGhw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPYmKFsV_ZPifJBtvPOdqM6_Mzhac9A4-PH9zt8TirOqAwKGhw@mail.gmail.com>

> > > (not a review, just looking at this diff stat) is changing the fastpath
> > >
> > >   read_unlock()
> > >   read_lock()
> > >
> > > from something like
> > >
> > >   fence rw,w
> > >   amodadd.w
> > >   amoadd.w
> > >   fence r,rw
> > >
> > > to
> > >
> > >   fence rw,rw
> > >   amoadd.w
> > >   amoadd.w
> > >   fence rw,rw
> > >
> > > no matter Zalasr or !Zalasr.  Similarly for other atomic operations with
> > > release or acquire semantics.  I guess the change was not intentional?
> > > If it was intentional, it should be properly mentioned in the changelog.
> >
> > Sorry about that. It is intended. The atomic operation before
> > __atomic_acquire_fence or operation after __atomic_release_fence can
> > be just a single ld or sd instruction instead of amocas or amoswap. In
> > such cases, when the store release operation becomes 'sd.rl', the
> > __atomic_acquire_fence via 'fence r, rw' can not ensure FENCE.TSO
> > anymore. Thus I replace it with 'fence rw, rw'.

But you could apply similar changes you performed for xchg & cmpxchg: use
.AQ and .RL for other atomic RMW operations as well, no?  AFAICS, that is
what arm64 actually does in arch/arm64/include/asm/atomic_{ll_sc,lse}.h .

  Andrea


> This is also the common implementation on other architectures who use
> aq/rl instructions like ARM. And you certainly already knew it~

