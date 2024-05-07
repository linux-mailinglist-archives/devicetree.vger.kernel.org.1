Return-Path: <devicetree+bounces-65299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 487498BD95F
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 04:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B867D1F2431F
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 02:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B114C6B;
	Tue,  7 May 2024 02:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="xFiClTbX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F3CA93B
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 02:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715048541; cv=none; b=DDphmVo8UVP2ZYoJ6YAkgU4k0Ub4Lz91MEa8qEcST5zlFF/7RK3U4XxifPhkVu+u88lk80/n5dopR3b5+6g74GKxNw7bEnWn67HvBH0OCLfff3+Bw+IWZ7BEjXtnz/JGAsF2bwxUw5iPG20ND49qaQ/pcB+MsF95E8AlXnvkX54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715048541; c=relaxed/simple;
	bh=ddp4BlwG51OZx+toxw8NcKacv9yA9LPxltusnBVPZBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pv4PyDUAqnieqlaj3y58RuyiAQmzm/NoMI1O4GR0sWxTEGhnGcWO9sFWNUqfvMKlRbOVU4MLdhQgGPqhp83ZBJmQJA3fQPM0Z8Wegkn/cdc3Kr30okamF2Bl+fh3Hew5gJOZ0i77Xd0LkgofiR/y+MaBfa7jXrL3W8xt0XKdkv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=xFiClTbX; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2b27c660174so1737571a91.1
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 19:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715048539; x=1715653339; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VG77bwpMyBsulolMGNrr0vukCDyTTCfbCNIB+dj0SFI=;
        b=xFiClTbX/n97DyVEk/8F96jGPfSfZYpnfmqD4LkUveWPmqCNJjw7WMempa/EwjlZkC
         25mTHUAy31gVXPBws1Bnfoe+0NM1d2L+h6ceQvb/OMxGTrHopFOz6iey94EDTKj7Sg4S
         wZQXzQ16B9/MC4nFBXQySIgBt/yzIpwqmPWCFUqkaW29vMFwVC2FMWOuohdJUp11h2Lq
         DZ120Ga8Iskpt/2t7pzwfrWRWyNXhsWSC3INplkTIkQANHfajBZvgUPv1ftyj0J1L9lg
         kfGXmeBpJ21suTjqsvKx7ob+rN9bQchzJosOppQaZkRZ1bO05knDYLGrZidOyJSGiX4f
         tZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715048539; x=1715653339;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VG77bwpMyBsulolMGNrr0vukCDyTTCfbCNIB+dj0SFI=;
        b=njcx8IKwoRn7/MjChQlHFNKOXl8QVJWcVAscnKpPX6AyKzOCEnObEE8e4GhOKYkALt
         vnxVf0H7/sNcYSL39EsAWqe4YJv+akIHs1js2LiGHfkP10gcTVqWx1KD/mJmg+apPI19
         1DB1rpYDy0z5iaXg/eYIuFwE60TmtjB47jfZsFHkaqGHmH5OXLeROCB7rwo9Fayn0oh0
         kCkx59VO2lbDooqAVxLo7NKmXECKkQt5okX+OAx2jGAcsJKgN+DOqkAXxTpb9q5umdDg
         wkiYAL98k3ZiHanOPemi62iHlPay4JeU5yF5kj2anZ5HHaK6tpp4KpFjw/gT0JwbgZ9D
         qPEg==
X-Forwarded-Encrypted: i=1; AJvYcCXT/jalTVhb8wOs2S0scGkxgXJtLEBpmvYX7AJEw8UbalDttxnPQ0siOCHyA1nJI+wYTxK0saeVjDUdqQ0U8/SIcLp/iZd1fXv0Xg==
X-Gm-Message-State: AOJu0Yxnn3bvsrXy3goXSmWt65jDWvE0DcQvqX0sJlLRBtB7qtHD5iBS
	WA6gPhPBhN9P+gliOgBl3j2suHT/7k77B101nI8nEqmbPa5JIlQYac9cpQ7ujnDWieZWbO+LS3S
	bm4vyQ5sOzfQCYHZSu6AHfaUZt7UznjrPheq1oA==
X-Google-Smtp-Source: AGHT+IHsPu5AukXt1ZMu1k2ndGF0WSfcu6sZVkQkurxCeE8wBMbBgaMnamrYyYvJgB7dN4Uob8QSF+mqBfHri0qP9E4=
X-Received: by 2002:a17:90b:34d:b0:2ae:d03b:9594 with SMTP id
 fh13-20020a17090b034d00b002aed03b9594mr9528356pjb.39.1715048539100; Mon, 06
 May 2024 19:22:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1714494653.git.tjeznach@rivosinc.com> <b83f81c04d1f3885d860b1eec03761fe63a33183.1714494653.git.tjeznach@rivosinc.com>
 <20240501145621.GD1723318@ziepe.ca> <CAH2o1u63GjMnYrfa8W-c1hdp+TAA0R-FyxXM4dEiFF+KEGWwbA@mail.gmail.com>
 <20240503181059.GC901876@ziepe.ca> <CAH2o1u7av8zMucB2sKxBOZtd1eqEC4Qmgin=8VQ03pWbQdZUUg@mail.gmail.com>
 <20240505154639.GD901876@ziepe.ca>
In-Reply-To: <20240505154639.GD901876@ziepe.ca>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Mon, 6 May 2024 19:22:07 -0700
Message-ID: <CAH2o1u6g87nt=S7id-O43PubR=GaOLj-vmk7+OdTiY=Kw1BU5A@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] iommu/riscv: Paging domain support
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <apatel@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Nick Kossifidis <mick@ics.forth.gr>, Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, May 5, 2024 at 8:46=E2=80=AFAM Jason Gunthorpe <jgg@ziepe.ca> wrote=
:
>
> On Fri, May 03, 2024 at 12:44:09PM -0700, Tomasz Jeznach wrote:
> > > For detach I think yes:
> > >
> > >    Inv CPU                                   Detach CPU
> > >
> > >   write io_pte                               Update device descriptor
> > >   rcu_read_lock
> > >     list_for_each
> > >       <make invalidation command>            <make description inv cm=
d>
> > >       dma_wmb()                              dma_wmb()
> > >       <doorbell>                             <cmd doorbell>
> > >   rcu_read_unlock
> > >                                              list_del_rcu()
> > >                                              <wipe ASID>
> > >
> > > In this case I think we never miss an invalidation, the list_del is
> > > always after the HW has been fully fenced, so I don't think we can
> > > have any issue. Maybe a suprious invalidation if the ASID gets
> > > re-used, but who cares.
> > >
> > > Attach is different..
> > >
> > >    Inv CPU                                   Attach CPU
> > >
> > >   write io_pte
> > >   rcu_read_lock
> > >     list_for_each // empty
> > >                                              list_add_rcu()
> > >                                              Update device descriptor
> > >                                              <make description inv cm=
d>
> > >                                              dma_wmb()
> > >                                              <cmd doorbell>
> > >   rcu_read_unlock
> > >
> > > As above shows we can "miss" an invalidation. The issue is narrow, th=
e
> > > io_pte could still be sitting in write buffers in "Inv CPU" and not
> > > yet globally visiable. "Attach CPU" could get the device descriptor
> > > installed in the IOMMU and the IOMMU could walk an io_pte that is in
> > > the old state. Effectively this is because there is no release/acquir=
e
> > > barrier passing the io_pte store from the Inv CPU to the Attach CPU t=
o the
> > > IOMMU.
> > >
> > > It seems like it should be solvable somehow:
> > >  1) Inv CPU releases all the io ptes
> > >  2) Attach CPU acquires the io ptes before updating the DDT
> > >  3) Inv CPU acquires the RCU list in such a way that either attach
> > >     CPU will acquire the io_pte or inv CPU will acquire the RCU list.
> > >  4) Either invalidation works or we release the new iopte to the SMMU
> > >     and don't need it.
> > >
> > > But #3 is a really weird statement. smb_mb() on both sides may do the
> > > job??
> > >
> >
> > Actual attach sequence is slightly different.
> >
> >  Inv CPU                            Attach CPU
> >
> >  write io_pte
> >   rcu_read_lock
> >     list_for_each // empty
> >                                     list_add_rcu()
> >                                     IOTLB.INVAL(PSCID)
> >                                     <make description inv cmd>
> >                                     dma_wmb()
> >                                     <cmd doorbell>
> >  rcu_read_unlock
> >
> > I've tried to cover this case with riscv_iommu_iotlb_inval() called
> > before the attached domain is visible to the device.
>
> That invalidation shouldn't do anything. If this is the first attach
> of a PSCID then the PSCID had better already be empty, it won't become
> non-empty until the DDT entry is installed.
>
> And if it is the second attach then the Inv CPU is already taking care
> of things, no need to invalidate at all.
>
> Regardless, there is still a theortical race that the IOPTEs haven't
> been made visible yet because there is still no synchronization with
> the CPU writing them.
>
> So, I don't think this solves any problem. I belive you need the
> appropriate kind of CPU barrier here instead of an invalidation.
>

Yes. There was a small, but still plausible race w/ IOPTEs visibility
to the IOMMU.
For v5 I'm adding two barriers to the inval/detach flow, I believe
should cover it.

1) In riscv_iommu_iotlb_inval() unconditional dma_wmb() to make any
pending writes to PTEs visible to the IOMMU device. This should cover
the case when list_add_rcu() update is not yet visible in the
_iotlb_inval() sequence, for the first time the domain is attached to
the IOMMU.

  Inv CPU                                    Attach CPU
  write io_pte
  dma_wmb (1)
  rcu_read_lock
    list_for_each // empty                   list_add_rcu()
                                             smp_wmb (2)
                                             Update device descriptor
                                             <make description inv cmd>
                                             // PTEs are visible to the HW =
(*1)
                                             dma_wmb()
                                             <cmd doorbell>
  rcu_read_unlock

2) In riscv_iommu_bond_link() write memory barrier to ensure list
update is visible before IOMMU descriptor update. If stale data has
been fetched by the HW, inval CPU will run iotlb-invalidation
sequence. There is a possibility that IOMMU will fetch correct PTEs
and will receive unnecessary IOTLB inval, but I don't think anyone
would care.

  Inv CPU                                    Attach CPU
  write io_pte                               list_add_rcu()
                                             smp_wmb (2)
                                             Update device descriptor
                                             <make description inv cmd>
                                             // HW might fetch stale PTEs
                                             dma_wmb()
                                             <cmd doorbell>
  dma_wmb (1)
  rcu_read_lock
    list_for_each // non-empty (*2)
      <make iotlb inval cmd>
      dma_wmb()
      <cmd doorbell>
  rcu_read_unlock

3) I've also updated riscv_iommu_bond_unlink() to wipe the PSCID cache
on the last domain unlink from the IOMMU.

Thank you for pointing this out. Let me know if that makes sense.

Best,
- Tomasz

> Jason

