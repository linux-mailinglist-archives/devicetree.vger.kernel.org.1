Return-Path: <devicetree+bounces-32934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED9F88314C1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 09:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99170283B79
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 08:35:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6BF61CFA4;
	Thu, 18 Jan 2024 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="X5r1MALB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0361D55E
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 08:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705566234; cv=none; b=sb5PwmNC/inV1UVTRKUKxP0ck0eDotJ5ChuY6sJl7u3HznC8kf/2OvkcZ7eFzeIIARQ9txAhjF0WiqROa1uNqlmHpqnBqLxlFiyEoxuraf0fOyBMcOHH1zli5giEPfHgWTmXkdB6TtUSZ/gvnvE9eZtB9ZA+V9AXnc8irh9PRJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705566234; c=relaxed/simple;
	bh=BdVsw0FTwqzD+KS2xpaOjxHqz260SFBO0mWzXEz7i7M=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:Date:
	 From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	 User-Agent; b=l3DoPJOu8tf6uvQrbuKT9gT7gHiF3QzYoPMU1bpze+8M5MdUqn+naX3EEiARjPq8GER2UKnke7kUuUCkAUOLPYMrudCP4dDBLTekgJ7YiFWQyEzSq9U8jTQ8BWjatcC7K4esu36ApN7Fb1568OlDO+HDmG9mj7rGjsHDrd6VxZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=X5r1MALB; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-5cfa71498feso125832a12.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 00:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1705566232; x=1706171032; darn=vger.kernel.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=welEo0/WJxuhwoTNRxCpfyX7sfk5voOc4sTxJMWj2Aw=;
        b=X5r1MALBFW7ed78ST+6HoXg0Nu5rxmHBG0KX6AsJEKoSq2SZPRxGHTBsTjWSBkVVtZ
         +NWuZRx1AdDpyvlpWruNDuv1aP5EKvr/ry7Qv1wLHXd3BskwZxenyM0neB5tdLWDOBC4
         vvd290gTbbTRnN+PYblJEHY91cLuP7sEW/DFiUJYSCkUneY5+DZiIxn0h1gDpGQl3KqH
         Y1OtF50CFf6rnMgQO7uzJdq8GNHs3WHPGImliLbIDNEVIejVXrz5MmrgUKoZvJNEznP+
         gju2SwU2c+trLu1cHUbTkYSduSnX3Q5ZE+WRW/RsUnwYzSyCs2Wl87AWuaf2BAHA+UkR
         gACw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705566232; x=1706171032;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=welEo0/WJxuhwoTNRxCpfyX7sfk5voOc4sTxJMWj2Aw=;
        b=iXZqTxHXjascqmmzHL9uMiHEshNZmeI6PjV71capCipVEOEVuD+v96I3PwGLzwC4Pg
         9BSeKpb0qNozyuDFmb7mUwkR4aaKxwxMPCkp7ju/+6ubFYBV2VczJuZBu3UVP1cD34aY
         zwPXdyUaupfsTqJ8zpERQG+zQtQQNmRVoXG1lB7SKDge3LV93Z//kDlb2BOANSYaagng
         G/Wg0qXzH52uapvhH/ucw9fJiN+e5kPVYE4Tv7XRoCMGEZ337VfYcCipFwRYz6XwZT5n
         2MJ/1hVjZlbW4VcayI2j9E526IfZYJkkIV/N47IxFMpS5EcIy3ZpwkSIN+oda+isn8ye
         CIfw==
X-Gm-Message-State: AOJu0Yz2S1OjxRJf13siaChM+ylyFXXhdaFmuU8SoeOfHnbCbviWB5Uo
	ElVLZfyHBBLXOnd+95FXgayC8fa/BsGqhJaZf/xKgtGCy8UXTJeu2uKPZm1IvYs=
X-Google-Smtp-Source: AGHT+IGaoDDx9aDO0YNH0g7XdpqbNuTcRdbMFDYtV1SQWylCAw0oi0AjU/zcDHvavTfmpNNLtZt26w==
X-Received: by 2002:a05:6a20:43a7:b0:19b:7e77:7279 with SMTP id i39-20020a056a2043a700b0019b7e777279mr643544pzl.18.1705566232336;
        Thu, 18 Jan 2024 00:23:52 -0800 (PST)
Received: from hsinchu15 (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id fc13-20020a056a002e0d00b006d9cf4b56edsm2812458pfb.175.2024.01.18.00.23.49
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 18 Jan 2024 00:23:51 -0800 (PST)
Date: Thu, 18 Jan 2024 16:23:47 +0800
From: Nylon Chen <nylon.chen@sifive.com>
To: alex@ghiti.fr
Cc: apatel@ventanamicro.com, alexghiti@rivosinc.com,
	catalin.marinas@arm.com, will@kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, robh+dt@kernel.org,
	frowand.list@gmail.com, rppt@kernel.org, akpm@linux-foundation.org,
	anup@brainfault.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-mm@kvack.org, zong.li@sifive.com,
	nylon7717@gmail.com
Subject: Re: Fwd: [PATCH v8 0/4] riscv: Use PUD/P4D/PGD pages for the linear
 mapping
Message-ID: <20240118082346.GB31078@hsinchu15>
References: <20230316131711.1284451-1-alexghiti@rivosinc.com>
 <CAK9=C2XJtSG2d_nsyDv7kU1v7Jj0chdevqrMc0MpJswukcEABA@mail.gmail.com>
 <CAHVXubhhxpzHDM-n91V_rceY5t_VqLvrwZj3RP_tNL2=F9mqjQ@mail.gmail.com>
 <CAK9=C2WVOpSqtt8r1U4hnzSZ=cc1PocpukgQjNyahP2XuPhozw@mail.gmail.com>
 <d0087922-4721-ccf1-80bf-9f74099d0948@ghiti.fr>
 <CAPqJEFr6MgUyARfbWAo7EeQKLVd4xRJz_LOYN68UC-kPD1Hr5A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPqJEFr6MgUyARfbWAo7EeQKLVd4xRJz_LOYN68UC-kPD1Hr5A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

> On 3/23/23 15:55, Anup Patel wrote:
> > On Thu, Mar 23, 2023 at 6:24 PM Alexandre Ghiti <alexghiti@rivosinc.com> wrote:
> >> Hi Anup,
> >>
> >> On Thu, Mar 23, 2023 at 1:18 PM Anup Patel <apatel@ventanamicro.com> wrote:
> >>> Hi Alex,
> >>>
> >>> On Thu, Mar 16, 2023 at 6:48 PM Alexandre Ghiti <alexghiti@rivosinc.com> wrote:
> >>>> This patchset intends to improve tlb utilization by using hugepages for
> >>>> the linear mapping.
> >>>>
> >>>> As reported by Anup in v6, when STRICT_KERNEL_RWX is enabled, we must
> >>>> take care of isolating the kernel text and rodata so that they are not
> >>>> mapped with a PUD mapping which would then assign wrong permissions to
> >>>> the whole region: it is achieved by introducing a new memblock API.
> >>>>
> >>>> Another patch makes use of this new API in arm64 which used some sort of
> >>>> hack to solve this issue: it was built/boot tested successfully.
> >>>>
> >>>> base-commit-tag: v6.3-rc1
> >>>>
> >>>> v8:
> >>>> - Fix rv32, as reported by Anup
> >>>> - Do not modify memblock_isolate_range and fixes comment, as suggested by Mike
> >>>> - Use the new memblock API for crash kernel too in arm64, as suggested by Andrew
> >>>> - Fix arm64 double mapping (which to me did not work in v7), but ends up not
> >>>>    being pretty at all, will wait for comments from arm64 reviewers, but
> >>>>    this patch can easily be dropped if they do not want it.
> >>>>
> >>>> v7:
> >>>> - Fix Anup bug report by introducing memblock_isolate_memory which
> >>>>    allows us to split the memblock mappings and then avoid to map the
> >>>>    the PUD which contains the kernel as read only
> >>>> - Add a patch to arm64 to use this newly introduced API
> >>>>
> >>>> v6:
> >>>> - quiet LLVM warning by casting phys_ram_base into an unsigned long
> >>>>
> >>>> v5:
> >>>> - Fix nommu builds by getting rid of riscv_pfn_base in patch 1, thanks
> >>>>    Conor
> >>>> - Add RB from Andrew
> >>>>
> >>>> v4:
> >>>> - Rebase on top of v6.2-rc3, as noted by Conor
> >>>> - Add Acked-by Rob
> >>>>
> >>>> v3:
> >>>> - Change the comment about initrd_start VA conversion so that it fits
> >>>>    ARM64 and RISCV64 (and others in the future if needed), as suggested
> >>>>    by Rob
> >>>>
> >>>> v2:
> >>>> - Add a comment on why RISCV64 does not need to set initrd_start/end that
> >>>>    early in the boot process, as asked by Rob
> >>>>
> >>>> Alexandre Ghiti (4):
> >>>>    riscv: Get rid of riscv_pfn_base variable
> >>>>    mm: Introduce memblock_isolate_memory
> >>>>    arm64: Make use of memblock_isolate_memory for the linear mapping
> >>>>    riscv: Use PUD/P4D/PGD pages for the linear mapping
> >>> Kernel boot fine on RV64 but there is a failure which is still not
> >>> addressed. You can see this failure as following message in
> >>> kernel boot log:
> >>>      0.000000] Failed to add a System RAM resource at 80200000
> >> Hmmm I don't get that in any of my test configs, would you mind
> >> sharing yours and your qemu command line?
> > Try alexghiti_test branch at
> > https://github.com/avpatel/linux.git
> >
> > I am building the kernel using defconfig and my rootfs is
> > based on busybox.
> >
> > My QEMU command is:
> > qemu-system-riscv64 -M virt -m 512M -nographic -bios
> > opensbi/build/platform/generic/firmware/fw_dynamic.bin -kernel
> > ./build-riscv64/arch/riscv/boot/Image -append "root=/dev/ram rw
> > console=ttyS0 earlycon" -initrd ./rootfs_riscv64.img -smp 4
> 
> 
> So splitting memblock.memory is the culprit, it "confuses" the resources
> addition and I can only find hacky ways to fix that...
Hi Alexandre,

We encountered the same error as Anup. After adding your patch
(3335068f87217ea59d08f462187dc856652eea15), we will not encounter the
error again.

What I have observed so far is

- before your patch
When merging consecutive memblocks, if the memblock types are different,
they will be merged into reserved
- after your patch
When consecutive memblocks are merged, if the memblock types are
different, they will be merged into memory.

Such a result will cause the memory location of OpenSBI to be changed
from reserved to memory. Will this have any side effects?
> 
> So given that the arm64 patch with the new API is not pretty and that
> the simplest solution is to re-merge the memblock regions afterwards
> (which is done by memblock_clear_nomap), I'll drop the new API and the
> arm64 patch to use the nomap API like arm64: I'll take advantage of that
> to clean setup_vm_final which I have wanted to do for a long time.
> 
> @Mike Thanks for you reviews!
> 
> @Anup Thanks for all your bug reports on this patchset, I have to
> improve my test flow (it is in the work :)).
> 
> 
> > Regards,
> > Anup
> >
> >> Thanks
> >>
> >>> Regards,
> >>> Anup
> >>>
> >>>>   arch/arm64/mm/mmu.c           | 25 +++++++++++------
> >>>>   arch/riscv/include/asm/page.h | 19 +++++++++++--
> >>>>   arch/riscv/mm/init.c          | 53 ++++++++++++++++++++++++++++-------
> >>>>   arch/riscv/mm/physaddr.c      | 16 +++++++++++
> >>>>   drivers/of/fdt.c              | 11 ++++----
> >>>>   include/linux/memblock.h      |  1 +
> >>>>   mm/memblock.c                 | 20 +++++++++++++
> >>>>   7 files changed, 119 insertions(+), 26 deletions(-)
> >>>>
> >>>> --
> >>>> 2.37.2
> >>>>
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

