Return-Path: <devicetree+bounces-219248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33EC3B89620
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 14:12:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 78DE2189F4EB
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 12:13:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA5830EF95;
	Fri, 19 Sep 2025 12:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="i3L5hTO+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C8630E0DC
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 12:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758283948; cv=none; b=GXAwlPct3TYuxJy2E63mLcdLL/5VMPZFJqEUUctsJRwONttbtwoTDo9WEfrm7VKQGXuKxteAn6P6GFylYRrJ0xKhaoy63lxTpXQ71NONgXko7caXYvdhjivFlJQGIj1JbQm79qZlb6TKFfvLWwklpSCjb0jnHwBsb7FZr4BnrAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758283948; c=relaxed/simple;
	bh=40LHT+10W2MVoOVX/TuobAQ0nf6X5e/oMpwW9iNer2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NsB3cT2JS+GWSUk0EATXzmCNfCoVW6aMQeQp+LpXsKqziQV8ijvHdS96Cn1BsI8riZzSOoWFw96Lundaie4hcpswaFF+3U9Ne6IfzVNtuHRLjNmhK5JjC74IxAARoWJqRHumW3BJhgzR0/n2YXZQVU8SLq5ngq6r4j4MpSj1+F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=i3L5hTO+; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-32e1c8223d3so1726889a91.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 05:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1758283946; x=1758888746; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t2HMMNKqDgzt194tG8vLKUMKuY47t2DmDtqHxNeA0cA=;
        b=i3L5hTO+OK0u16+FMy8g/o/GtRBwoIAWTx+0t5TyjL2n1ZnFuFaSg+ag/W0sq9Ods6
         7ZROy0ix55Pwfo5EWpUQQsd+hFmWAfnKKcK2d4iwGwOOzwbZgJr7enaZNgsAmta3ApYR
         cVP9Q0rLGKcLmiPm6aXPABjzh2uiFLsit79pAP+6hEOykLypQz6UfZl+fcyaArJvBRjQ
         rddxlzns+YXwp/e59lBVfjTf5bnDzjCWAY87bGQCwlx4qnYPiXOW4zxUIbeHJTXT5A8F
         iUvpEvozC2b9xMJh5Skr2rDn9ColV4103N2r5m7huefr4L2LtR1fjd3qN3ttXo1sUs9T
         9Aqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758283946; x=1758888746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t2HMMNKqDgzt194tG8vLKUMKuY47t2DmDtqHxNeA0cA=;
        b=GtpDfR6q2MmU27jxi3Zn1SFiaiG3LwyqPKHU3g36GfpCnOawCMNo2HoA9a3vYuneEk
         a5S+YqSO+vdkLUiD8CN0+Enxfcmy+WdkijkZfmmy1XhwrODwysbHkuKNMIXp7rxKlOJn
         VYg8DH3/3/hYy6GZUTom818KJv5l0ZgEWWfaxmxRHiADFsa/78tpBa0ePF73eZaJoKa4
         eJq1Jt3214Ek/rqOiUG0RY+r7zqYlfTKHUxMofqMjMyTMZ05rMDDxR8rBYmQK6Tdmr7u
         ZSR5j+dVEZrwkM1f73Flmaag+Jl6e6saUKa/cBf58NgDlAPXK0OAQB4I/dhm+WPYWqEB
         ddHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOOU6Uj+eUjVduy+j70780G7MMay2D5gmx2+xdk5b3ou7kmJJAaJPLujPRM9RFZUAW+VLMz8UsVNWw@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb2KkxZOC7EGtUoxuECDLSQTG271ml54Vf/FxMKNu0HbxP+PLq
	1YoyrDgMOsmayCTwXfdpZE4h7S5l85dERmPu6CbSaZSRO3dqmg0+HNOVZxLe8mVqCL2OfTlIB9Q
	h6zoYp5Gd8pAKZqifnvpCkRaswxCEaNJ7Nu/f/oxJVQ==
X-Gm-Gg: ASbGncu97rWG59vdACMpe77BWee0BycK7xhFe9cB6p8uRflgbORPyJZOGgsZk7dgif4
	wBl5/Xge24gXwMTqlq73mGru4SWmj9BQr4du8JPQ+2phF2vm/URkL+6vF6nbaqopEjV8VoKPCpJ
	R0FQW30HZqr6wjBppKoLjAbYQx5t0unm+FXpS8MoBfOCV/E7sHxfw0rFVwkpWfwOy2VXal0dsZD
	4q3HUpgPBNqymh3MTu5SM0UFLw8vcR6lTaD3jpEo44HkQfY/RcX
X-Google-Smtp-Source: AGHT+IGm4y1poVxGUSiB4FXU7penSJROWpZ9IBJ4RsACGtjYuoj82wxnXamn8PKPxeWN3xAf3wDL9CKqcfW9WQHchPw=
X-Received: by 2002:a17:90a:d40d:b0:32e:3f93:69f5 with SMTP id
 98e67ed59e1d1-3309836a969mr3636748a91.26.1758283945619; Fri, 19 Sep 2025
 05:12:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250919073714.83063-1-luxu.kernel@bytedance.com>
 <aM0qlTNPiaQRY2Nv@andrea> <CAPYmKFsP+=S56Cj2XT0DjdvBT_SY84moM4LVeqxHTVWbtq4EVw@mail.gmail.com>
 <CAPYmKFsV_ZPifJBtvPOdqM6_Mzhac9A4-PH9zt8TirOqAwKGhw@mail.gmail.com> <aM05J6FU0xG3SBzR@andrea>
In-Reply-To: <aM05J6FU0xG3SBzR@andrea>
From: Xu Lu <luxu.kernel@bytedance.com>
Date: Fri, 19 Sep 2025 20:12:14 +0800
X-Gm-Features: AS18NWC1LrBbaCsNeBFlqUXUWaqY8b6JknWKL06v5j39bQDtG4KDuo4wYFErj1E
Message-ID: <CAPYmKFunbrughXdG9Fpum6bxHVu9jmjQdgLVSJ_JA9z+GDsZbA@mail.gmail.com>
Subject: Re: [External] Re: [PATCH v3 0/8] riscv: Add Zalasr ISA extension support
To: Andrea Parri <parri.andrea@gmail.com>
Cc: corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	alex@ghiti.fr, will@kernel.org, peterz@infradead.org, boqun.feng@gmail.com, 
	mark.rutland@arm.com, ajones@ventanamicro.com, brs@rivosinc.com, 
	anup@brainfault.org, atish.patra@linux.dev, pbonzini@redhat.com, 
	shuah@kernel.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, apw@canonical.com, joe@perches.com, 
	linux-doc@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 7:06=E2=80=AFPM Andrea Parri <parri.andrea@gmail.co=
m> wrote:
>
> > > > (not a review, just looking at this diff stat) is changing the fast=
path
> > > >
> > > >   read_unlock()
> > > >   read_lock()
> > > >
> > > > from something like
> > > >
> > > >   fence rw,w
> > > >   amodadd.w
> > > >   amoadd.w
> > > >   fence r,rw
> > > >
> > > > to
> > > >
> > > >   fence rw,rw
> > > >   amoadd.w
> > > >   amoadd.w
> > > >   fence rw,rw
> > > >
> > > > no matter Zalasr or !Zalasr.  Similarly for other atomic operations=
 with
> > > > release or acquire semantics.  I guess the change was not intention=
al?
> > > > If it was intentional, it should be properly mentioned in the chang=
elog.
> > >
> > > Sorry about that. It is intended. The atomic operation before
> > > __atomic_acquire_fence or operation after __atomic_release_fence can
> > > be just a single ld or sd instruction instead of amocas or amoswap. I=
n
> > > such cases, when the store release operation becomes 'sd.rl', the
> > > __atomic_acquire_fence via 'fence r, rw' can not ensure FENCE.TSO
> > > anymore. Thus I replace it with 'fence rw, rw'.
>
> But you could apply similar changes you performed for xchg & cmpxchg: use
> .AQ and .RL for other atomic RMW operations as well, no?  AFAICS, that is
> what arm64 actually does in arch/arm64/include/asm/atomic_{ll_sc,lse}.h .

I see. I will study the implementation of ARM and refine my patch. Thanks a=
 lot.

Best regards,
Xu Lu

>
>   Andrea
>
>
> > This is also the common implementation on other architectures who use
> > aq/rl instructions like ARM. And you certainly already knew it~

