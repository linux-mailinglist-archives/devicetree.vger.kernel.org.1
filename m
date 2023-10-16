Return-Path: <devicetree+bounces-8988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 110BC7CB11A
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 19:10:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F540B20DE5
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35CD30FBB;
	Mon, 16 Oct 2023 17:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SrfgRR6O"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39260273EB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 17:10:40 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89062FD
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 10:10:37 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-6bd73395bceso1202982b3a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 10:10:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697476237; x=1698081037; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dEgoT4wnSbfKqiobyL8tOMupICht6HOuE8CfHQmqQMc=;
        b=SrfgRR6OB9ruKuwnVYsao2wZlIXJFg/DSCUoRUaquXHEkBswrOqYrQloMFry2vhlej
         bMREr3gJqUNAz+aChbiEJ/Ybg+SkoZ2RQkKHzpQsDPgDImjWfIRDjcTquCB+w+nW19ne
         G2CY6rurvfMGgYIR/bETjRLrDtVmN9/EwUPwOeJyjHpvLrP+c7eq+JPAXEGvmFtREa3x
         ElnVAoEgXi5dIrJqc8tZ2iD3EClw1C8coQeLr3lCZOXeZR80bhUPihXs8fZOZhq66/J8
         IA2gXeTwur3/RSiH0rSD+LvJ6HpcQcDrOgM5bPA0+5HiS/qCGCoEQAwi9/nU0pJsFwrC
         URRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697476237; x=1698081037;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dEgoT4wnSbfKqiobyL8tOMupICht6HOuE8CfHQmqQMc=;
        b=ciegytbWIEPZMxoWvfvuhH/O5w0m8h30+zuESqy0n3xZSZIsLoF5vYFEGPGzpxC5tC
         RZwu5kZZa8t7dYUV0VU4Cl87PSou2MD4/UPAAOtPNDyytHgvCXcRclLZ/10VK+Kn+GXW
         ndR2GJpwjdUciLAVLt1ULK86boeZvIvH4z2itd0rgASqFekqoKkRCgKgNLKbsFP9x1gr
         fMCg/1FyaLRNLVSEL2ohDXh8Z3s42NhnaIw6xvcux84//fKQreAjH00W8C3NvqPlPNA/
         Ubtv1HcqyNbXUaxL1zt1/9VL4LtT80I9BiXj+LaM3Fd9ayGeaSt5igB5+2MN5V1Fyu86
         IWvg==
X-Gm-Message-State: AOJu0YzddAFfEhKyyZMNt0sPMqDhGQVBlu5HnLd0r7oI1xoMzCiwSLDS
	gNzh+h3OZCCceep7B3FEv3oRDQ==
X-Google-Smtp-Source: AGHT+IGguDhVITJIvhBzWf+6Op1xFKO1SJ/TmEkeSW6nK5Opr8475dRlcc4zfVYS/Ev4Bc6d7YnIDA==
X-Received: by 2002:a05:6a20:6a03:b0:15a:6733:24e2 with SMTP id p3-20020a056a206a0300b0015a673324e2mr12179788pzk.25.1697476236976;
        Mon, 16 Oct 2023 10:10:36 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:619d:5ad3:44b1:eec4])
        by smtp.gmail.com with ESMTPSA id k64-20020a632443000000b0057c44503835sm5910283pgk.65.2023.10.16.10.10.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 10:10:36 -0700 (PDT)
Date: Mon, 16 Oct 2023 10:10:33 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Conor Dooley <conor@kernel.org>
Cc: Jisheng Zhang <jszhang@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus
Message-ID: <ZS1uiXORq2IRPnId@x1>
References: <20230912072232.2455-1-jszhang@kernel.org>
 <20230912-trailing-pampered-52738ec6f009@spud>
 <ZQHSLdPufI6CXApg@xhacker>
 <20230913-faster-spotted-9df41a0d7787@spud>
 <20230920-pesky-stalemate-88f5036b8084@wendy>
 <ZQwL6fxi6IkUEIMc@xhacker>
 <20230921-4a1fe80384e083c67f38dc27@fedora>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921-4a1fe80384e083c67f38dc27@fedora>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 11:08:28AM +0100, Conor Dooley wrote:
> On Thu, Sep 21, 2023 at 05:24:57PM +0800, Jisheng Zhang wrote:
> > On Wed, Sep 20, 2023 at 09:36:19AM +0100, Conor Dooley wrote:
> > > Hey Jisheng,
> > > 
> > > On Wed, Sep 13, 2023 at 04:44:18PM +0100, Conor Dooley wrote:
> > > > On Wed, Sep 13, 2023 at 11:15:57PM +0800, Jisheng Zhang wrote:
> > > > > On Tue, Sep 12, 2023 at 05:27:31PM +0100, Conor Dooley wrote:
> > > > > > On Tue, Sep 12, 2023 at 03:22:32PM +0800, Jisheng Zhang wrote:
> > > > > > > riscv select ARCH_DMA_DEFAULT_COHERENT by default, and th1520 isn't
> > > > > > > dma coherent, so set dma-noncoherent to reflect this fact.
> > > > > > > 
> > > > > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > > > > Tested-by: Drew Fustini <dfustini@baylibre.com>
> > > > > > > ---
> > > > > > > 
> > > > > > > Since v1:
> > > > > > >  - rebase on v6.6-rc1
> > > > > > >  - collect Tested-by tag
> > > > > > 
> > > > > > Does this mean you're expecting me to take this?
> > > > > 
> > > > > Hi Conor,
> > > > > 
> > > > > I think I will take this and send PR to soc people. The reason
> > > > > I send v2 is the rebasing on new rc1 and v1 wasn't in linux-riscv
> > > > > mailist due to typo;
> > > > 
> > > > Great, thanks. Please ask SFR to add your tree to linux-next.
> > 
> > Hi Conor,
> > 
> > I'm not sure how to do this. When MAINTAINERS patch is merged, send
> > an email to Stephen Rothwell, are these steps correct?
> 
> Sorta, yeah. You don't need to have the MAINTAINERS patch merged first
> though, just send him a link to your tree and the branch name(s) & he
> will include it in linux-next.
> 
> > > I lost my main x86 box over the weekend (looks like probably a dead
> > > motherboard), so I may have missed a response to this.
> > > 
> > > Did you see this email? Additionally, can you add that git tree to the
> > > maintainers entry for the thead devicetrees?
> > 
> > I just created a tree in
> > git://git.kernel.org/pub/scm/linux/kernel/git/jszhang/linux.git
> > 
> > But it needs time for cgit to take place. I will send a patch
> > once it appears.
> 
> Looks to be there for me now. Thanks for doing this!

Hi Jisheng, I'm writing the cover letter for v2 of my th1520 mmc series
and I am wondering if this dma-noncoherent patch is in any tree yet?

Thanks,
Drew

