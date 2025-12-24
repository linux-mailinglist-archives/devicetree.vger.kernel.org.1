Return-Path: <devicetree+bounces-249413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 177CDCDBB08
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:41:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6A8EF301EFAD
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 08:40:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 479D332ED31;
	Wed, 24 Dec 2025 08:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="Nwt/luy5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1A132A3FE
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 08:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766565641; cv=none; b=najZbkYgEEejtjCdrZA0P3l+zIvC43K1Zcwmc1fmpDh1e280iJ5Hk1p3bcElfhrFiWXt1od1Em2L2NQ6ciQugf6g4/DuHMmwVlCODFATOsrl8e52Gaq2X3vg8pSg6DjaimCCoGbnCATc+2U0Jj+VycjMRR4LzTCP92IfVvPD21s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766565641; c=relaxed/simple;
	bh=+IWXlq6Bey332UZx5McZ37yF55t1q00uHD8DCVcWERc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S/fRTvae/7TGeAqSdrF58hFImagm34gbe6ptcFOe6iye1ztRIJQ3VrQXM8tnOvfA3zApvc7FOEl7kkRJ58XGfA9MHxooZjvpUd1aBlo95qDUWPuMYGDEwx9NGsXchoxj13wcXT7lVjQf15vfFXcGhOOrS2uOTZut9NDE6ytyCDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=Nwt/luy5; arc=none smtp.client-ip=209.85.160.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-3f5ec7636e2so1888786fac.2
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 00:40:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1766565638; x=1767170438; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+IWXlq6Bey332UZx5McZ37yF55t1q00uHD8DCVcWERc=;
        b=Nwt/luy5DvOtUrckJzzIQZGRjkOPAzfsCYtgO9zsuA4RyrASvLSgwMQi9o4XfCNqz5
         +3X7YTb2UsQGMSKjsshBM0gFZxVA49QO6JMzDsNOZXarJQznIacgRJ1OzVS9cDCuwmD9
         CRnDK/RRwDFYWCLyN/3KS4xTcTba1SyFZnuzMx0P0ylU8Xu2xBEH8Or4TaK73Vr1yuMG
         47Ncyc4pxfd7iyVzwim9oRgc1XkCx+kV0THhAK8t+rJwkZiat83GgNprdPV0S18lGz6P
         R6Ys9q+gpVT+1WqId62OHy9SoZTX5Ye4rUrnGmERnN4YSPziI6kZSyp0w5GdJxVvpT+6
         pXAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766565638; x=1767170438;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+IWXlq6Bey332UZx5McZ37yF55t1q00uHD8DCVcWERc=;
        b=Cr+p+U7+IVtH0trrsdi1Dd+za6gwpo9imImUhMe27K9lLhENHHHushKsjZW8v5ODa7
         IcV/GEFZtP9nEP/eijOJIi5O5rxcHtDJUCfTxjxXoEmHgJ1rOdGrSlGf4ROZWYYnJMyG
         I4k/fqAuyBfkF62vCg57e4Rl7Nsf9xmmPmnH9McJKMWo16wdTuwuq1yJ2l/6fM8qg3JP
         /qqizLE3bQJJEbgff4vKrGnZ1uPhrOXUKDy/icGMN0cyWdg9x2ak9bvxDV1lLmgGdnvC
         u2mLR45kFIWM0XG4IZXxb07UommYywS27TbvctRvCCuof1d7l4NAF64+psQOfF521/O4
         k7Tg==
X-Forwarded-Encrypted: i=1; AJvYcCXwZuxGNamU2jaLUsFVBAGFDkajgpZHpkTwuV/vNgkddaSLCVvLLP9BHde8EFawYy0YOF3iu2BsQmCg@vger.kernel.org
X-Gm-Message-State: AOJu0YzyPUKUenxfgAd4oO8chKnWE8S2fULMGdyLjT5bAviXmzsaO8ZF
	36gacSFtbi5562lsbvda2AwrX/f5YMhln7DeH+BZlcaYpDYtfpFtLJFLz4XNj1LB7Feo9NST1Do
	X6iTz6ePwJ83WZHoHU2Jc9vSi9ugwzCK3K0hm9Ox4Bw==
X-Gm-Gg: AY/fxX78CVriaYekvfDtv5NyOwkQuev7vDIfrEQM5ciW9c9AOzaxFw1VlvTpv9FCeua
	jdQMXVkNyl8h5J+aaS8dLlX+GC/0Y/brC91g9yJYg+7VZkMtoq6jYdYZo0XhchfVs5qYtt21kfs
	Oj+kmPPY6mzzRFdV20Dy/e/mCUJm6DwCLLh7oxXoKBClAnWzf+xuGbvaonwJ8g3uTtOAhTKO7ZJ
	GWWrPpJ6UDKjykuE6jNkuhtN7KvS4moqBc7gUPvKACfysa2sBJbr5LKOytL7miCxxHzT8zHQ/a8
	BWxYsfFO
X-Google-Smtp-Source: AGHT+IG3wj5Yb5O1Tr6QGFvLEaY3zJyPJglD4dFE8oW7oMXIoCyOvUy2LrdCNwD6Wiwdm+Y5VWlhMUUaGdoMyJMgPpE=
X-Received: by 2002:a4a:c105:0:b0:657:64ce:b40f with SMTP id
 006d021491bc7-65d0e9235b9mr5638792eaf.4.1766565637601; Wed, 24 Dec 2025
 00:40:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007-ssqosid-v4-0-e8b57e59d812@kernel.org>
 <CAEEQ3w=3pte5=CR9-R3rmCGFZ9ErJ9YcWS9i=JwPUb1Ty3ipwQ@mail.gmail.com> <aOmA8DNt/y+WxT97@x1>
In-Reply-To: <aOmA8DNt/y+WxT97@x1>
From: yunhui cui <cuiyunhui@bytedance.com>
Date: Wed, 24 Dec 2025 16:40:26 +0800
X-Gm-Features: AQt7F2pNmvSj8a3TBiZmOZWqbErCH9Gsey7cqL9mu2cYOMvRWg3JypE3j0egH4s
Message-ID: <CAEEQ3wmHH6=ZNCEq3hV6Cmf7gGd0kZsH-3VYr6awZmPCz8h_cA@mail.gmail.com>
Subject: Re: [External] [PATCH v4 0/3] RISC-V: Detect Ssqosid extension and
 handle srmcfg CSR
To: Drew Fustini <fustini@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
	Adrien Ricciardi <aricciardi@baylibre.com>, James Morse <james.morse@arm.com>, 
	Atish Kumar Patra <atishp@rivosinc.com>, Atish Patra <atish.patra@linux.dev>, 
	Vasudevan Srinivasan <vasu@rivosinc.com>, Conor Dooley <conor.dooley@microchip.com>, guo.wenjia23@zte.com.cn, 
	liu.qingtao2@zte.com.cn, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Drew,

[3] https://lore.kernel.org/all/20250910204309.20751-1-james.morse@arm.com/
seems to have been merged into the mainline. Do you plan to submit a
series of ssqosid + cbqri patches with ACPI support?

Thanks,
Yunhui

On Sat, Oct 11, 2025 at 5:56=E2=80=AFAM Drew Fustini <fustini@kernel.org> w=
rote:
>
> On Fri, Oct 10, 2025 at 08:23:50PM +0800, yunhui cui wrote:
> > Hi Drew,
> [snip]
> > > I think it makes sense to first focus on the detection of Ssqosid and
> > > handling of srmcfg when switching tasks. It has been tested against a
> > > QEMU branch that implements Ssqosid and CBQRI [6]. A test driver [7]
> > > was used to set srmcfg for the current process. This allows switch_to
> > > to be tested without resctrl.
> >
> > Could we consider submitting the entire QoS functionality as a single
> > integrated patchset (indicating the upstream branch that the patchset
> > is based on)? This should include the content from
> > https://lore.kernel.org/linux-riscv/20230419111111.477118-1-dfustini@ba=
ylibre.com/
>
> Thanks for the feedback. I had thought that submitting Ssqosid
> separately would streamline the review of the parts that most affects
> existing arch/riscv code (like switch_to.h) before adding code for CBQRI
> and resctrl integration.
>
> But I have gotten similar feedback from another person too. I can post a
> complete series that adds Ssqosid and CBQRI support including the
> resctrl interface. I have a cbqri branch [1] on top of riscv/for-next.
> I need to clean up some of the code, and then I can send a series with
> ssqosid+cbqri.
>
> That cbqri branch just has device tree support in order to demonstrate
> the resctrl functionality. However, I did also work on support for the
> ACPI RQSC table earlier this year for a proof of concept [2]. I have
> been thinking that I will hold back the ACPI support until after Ssqosid
> and CBQRI support is reviewed. It also depends on some improvements
> regarding the ACPI PPTT table that James Morse is currently working on fo=
r
> ARM MPAM support [3].
>
> Thanks,
> Drew
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/fustini/linux.git/log=
/?h=3Db4/cbqri
> [2] https://lf-rise.atlassian.net/wiki/spaces/HOME/pages/433291272/ACPI+R=
QSC+Proof+of+Concept
> [3] https://lore.kernel.org/all/20250910204309.20751-1-james.morse@arm.co=
m/

