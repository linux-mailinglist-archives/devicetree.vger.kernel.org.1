Return-Path: <devicetree+bounces-5871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 137BB7B83AB
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id ACDEB2814E8
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A027719BBF;
	Wed,  4 Oct 2023 15:33:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F84B13AE9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:33:41 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0A2293;
	Wed,  4 Oct 2023 08:33:39 -0700 (PDT)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6c4e7951dc1so1568995a34.3;
        Wed, 04 Oct 2023 08:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696433619; x=1697038419;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7+vH9ZjDJZ1+GqxJ7pOb8CHx+0pluQ1FP46Flmdef0g=;
        b=n4fr1K42TUy8Q5nvd8XagEwOHTSPHcphWm00XmYm/rnF0vR4ljoir5ng1mnyXQFzC9
         8an80Q/U55hXcQfBKm+DWwbx8YgW5wX266ynhUNPJ1J9U8HAv7Sq4w1ZZMNJPGYY1WU5
         kBNztqVc+dRZt65tnISLiKIfwGXHAT3ndzLL0WVq5Y87i4uXmj4C5+ZmF2jCha781xtV
         Ks5j92AyiUafoThVtHai1tL2xduW/7yhD+LPYe+pnKgoql70WKKhwv8BSyhS5P8sFBid
         2hRtFqVt18uRBnWjJNtN03lNn1PMS6GwcnCqzMvUIZ5sljljxwMjUzratJpXBrpZDs/z
         aTmA==
X-Gm-Message-State: AOJu0Yx0UoY/DoNKJ8+3vDgiMeimfnu4vwQyc3CB3+5DvG68B2IT3zvK
	DJsKk9a9becZwEX1Pn7KAc3IUfMSmIzRyg==
X-Google-Smtp-Source: AGHT+IGikuA3DCiy97pWZ2LJok93ciQGyAH+B+/W4sGOxgHyiI56RSO1SjDUhmiTBYFqzSDygfTnFA==
X-Received: by 2002:a9d:7e87:0:b0:6bc:b80c:bd53 with SMTP id m7-20020a9d7e87000000b006bcb80cbd53mr2401833otp.38.1696433618795;
        Wed, 04 Oct 2023 08:33:38 -0700 (PDT)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com. [209.85.160.51])
        by smtp.gmail.com with ESMTPSA id i22-20020a056830011600b006b8a0c7e14asm483186otp.55.2023.10.04.08.33.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Oct 2023 08:33:38 -0700 (PDT)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1dd7139aa57so1495978fac.1;
        Wed, 04 Oct 2023 08:33:38 -0700 (PDT)
X-Received: by 2002:a0d:d7cc:0:b0:584:4bbb:963b with SMTP id
 z195-20020a0dd7cc000000b005844bbb963bmr2800485ywd.15.1696433239582; Wed, 04
 Oct 2023 08:27:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <CAOCHtYhnx1EpBM+o3xhdsicx5uqLidojK3f0HQ+VfyVv1ZXnVQ@mail.gmail.com>
 <CAOCHtYi5Ab5ppCmaQV3QuKQcpmJX+sHdAmtuEXhfq8xf5fFCYQ@mail.gmail.com>
 <ZRuamJuShOnvP1pr@x1> <ZR1M3FcdXrDmIGu2@xhacker> <CA+V-a8ugwqkQxnX-wwWCHVtBBtG=aVv=MZTc53LbpxtFA=N1_A@mail.gmail.com>
 <bc2b0b30-ab37-f336-c90e-eab570d393a2@arm.com> <ZR1xSw47Z1/SEIwz@xhacker>
In-Reply-To: <ZR1xSw47Z1/SEIwz@xhacker>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Oct 2023 17:27:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXt9+XuUEF2j=osAVFFaPkYF4UntPdcqYydu8QzyyuMfw@mail.gmail.com>
Message-ID: <CAMuHMdXt9+XuUEF2j=osAVFFaPkYF4UntPdcqYydu8QzyyuMfw@mail.gmail.com>
Subject: Re: [PATCH 0/6] RISC-V: Add eMMC support for TH1520 boards
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, "Lad, Prabhakar" <prabhakar.csengg@gmail.com>, 
	Drew Fustini <dfustini@baylibre.com>, Christoph Hellwig <hch@lst.de>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Robert Nelson <robertcnelson@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, 
	Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>, 
	Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Alexandre Ghiti <alexghiti@rivosinc.com>, Linux-MM <linux-mm@kvack.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Jisheng,

On Wed, Oct 4, 2023 at 4:18=E2=80=AFPM Jisheng Zhang <jszhang@kernel.org> w=
rote:
> On Wed, Oct 04, 2023 at 02:49:56PM +0100, Robin Murphy wrote:
> > On 04/10/2023 2:02 pm, Lad, Prabhakar wrote:
> > > + CC linux-mm and Robin Murphy
> > >
> > > On Wed, Oct 4, 2023 at 12:42=E2=80=AFPM Jisheng Zhang <jszhang@kernel=
.org> wrote:
 > > >
> > > > On Mon, Oct 02, 2023 at 09:37:44PM -0700, Drew Fustini wrote:
> > > > > On Fri, Sep 22, 2023 at 05:48:21PM -0500, Robert Nelson wrote:
> > > > > > On Fri, Sep 22, 2023 at 2:08=E2=80=AFPM Robert Nelson <robertcn=
elson@gmail.com> wrote:
> > > > > > >
> > > > > > > On Thu, Sep 21, 2023 at 8:51=E2=80=AFPM Drew Fustini <dfustin=
i@baylibre.com> wrote:
> > > > > > > >
> > > > > > > > This series adds support for the eMMC on the BeagleV Ahead =
and the
> > > > > > > > Sipeed LicheePi 4A. This allows the kernel to boot with the=
 rootfs on
> > > > > > > > eMMC.
> > > > > > > >
> > > > > > > > I tested on top of v6.6-rc2 with this config [1]. I was abl=
e to boot
> > > > > > > > both the Ahead [2] and LPi4a [3] from eMMC. The following p=
rerequisites
> > > > > > > > are required:
> > > > > > > >
> > > > > > > >    [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc=
 bus [4]
> > > > > > > >
> > > > > > > > I pushed a branch [5] with this patch series and the above =
patch for
> > > > > > > > those that find a git branch easier to test.
> > > > > > > >
> > > > > > > > Please note that only the MMC controller connected to the e=
MMC device
> > > > > > > > is enabled in the device trees for these two boards. I did =
not yet
> > > > > > > > attempt to configure and use the microSD card slot. My pref=
erence is to
> > > > > > > > address that in a future patch series.
> > > > > > > >
> > > > > > > > References:
> > > > > > > > [1] https://gist.github.com/pdp7/5fbdcf2a65eb1abdd3a29d519c=
19cdd2
> > > > > > > > [2] https://gist.github.com/pdp7/91a801a5f8d1070c53509eda98=
00ad78
> > > > > > > > [3] https://gist.github.com/pdp7/1445c3c991e88fd69c60165cef=
65726a
> > > > > > > > [4] https://lore.kernel.org/linux-riscv/20230912072232.2455=
-1-jszhang@kernel.org/
> > > > > > > > [5] https://github.com/pdp7/linux/tree/b4/th1520-mmc
> > > > > > >
> > > > > > > This patchset came out very nice!
> > > > > > >
> > > > > > > v6.6-rc2 with Last RFC v2:
> > > > > > >
> > > > > > > [    4.066630] mmc0: SDHCI controller on ffe7080000.mmc
> > > > > > > [ffe7080000.mmc] using PIO
> > > > > > >
> > > > > > > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> > > > > > >
> > > > > > > /dev/mmcblk0:
> > > > > > >   Timing cached reads:   1516 MB in  2.00 seconds =3D 758.09 =
MB/sec
> > > > > > >   Timing buffered disk reads:  84 MB in  3.01 seconds =3D  27=
.94 MB/sec
> > > > > > >
> > > > > > > vs v6.6-rc2 with this patchset:
> > > > > > >
> > > > > > >   [    4.096837] mmc0: SDHCI controller on ffe7080000.mmc
> > > > > > > [ffe7080000.mmc] using DMA
> > > > > > >
> > > > > > > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> > > > > > >
> > > > > > > /dev/mmcblk0:
> > > > > > >   Timing cached reads:   1580 MB in  2.00 seconds =3D 790.97 =
MB/sec
> > > > > > >   Timing buffered disk reads: 418 MB in  3.00 seconds =3D 139=
.11 MB/sec
> > > > > >
> > > > > > Drew pointed out on Slack, this was not quite right.. After mor=
e
> > > > > > digging by Drew, CONFIG_DMA_GLOBAL_POOL is causing a DMA limita=
tion
> > > > > > with the multiplatform defconfig. so with,
> > > > > >
> > > > > > ./scripts/config --disable CONFIG_ARCH_R9A07G043
> > > > > >
> > > > > > (to remove CONFIG_DMA_GLOBAL_POOL)... another 2x in buffered re=
ads..
> > > > > >
> > > > > > [    4.059242] mmc0: SDHCI controller on ffe7080000.mmc
> > > > > > [ffe7080000.mmc] using ADMA 64-bit
> > > > > >
> > > > > > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> > > > > >
> > > > > > /dev/mmcblk0:
> > > > > >   Timing cached reads:   1600 MB in  2.00 seconds =3D 800.93 MB=
/sec
> > > > > >   Timing buffered disk reads: 892 MB in  3.00 seconds =3D 297.0=
6 MB/sec
> > > > >
> > > > > It seems CONFIG_DMA_GLOBAL_POOL=3Dy causes ADMA buffer alloc to f=
ail [1]:
> > > > >
> > > > >    mmc0: Unable to allocate ADMA buffers - falling back to standa=
rd DMA
> > > > >
> > > > > Prabhakar's AX45MP non-coherent DMA support [2] series introduced=
 the
> > > > > selection of DMA_GLOBAL_POOL for ARCH_R9A07G043 and the riscv def=
config
> > > > > selects ARCH_R9A07G043.
> > > > >
> > > > > Patch 5 in the series [3] states that:
> > > > >
> > > > >    With DMA_GLOBAL_POOL enabled all DMA allocations happen from t=
his
> > > > >    region and synchronization callbacks are implemented to synchr=
onize
> > > > >    when doing DMA transactions.
> > > > >
> > > > > This example of a "shared-dma-pool" node was given:
> > > > >
> > > > >          pma_resv0@58000000 {
> > > > >              compatible =3D "shared-dma-pool";
> > > > >              reg =3D <0x0 0x58000000 0x0 0x08000000>;
> > > > >              no-map;
> > > > >              linux,dma-default;
> > > > >          };
> > > > >
> > > > > I've copied that to th1520-beaglev-ahead.dts. The address of 0x58=
000000
> > > > > has no significance on th1520, but the existence of shared-dma-po=
ol
> > > > > seems to fix the problem. ADMA mode [4] is now working even thoug=
h
> > > > > CONFIG_DMA_GLOBAL_POOL=3Dy.
> > > >
> > > > + Christoph, Lad
> > > >
> > > > IMHO, this is not TH1520 specific but a generic issue.
> > > >
> > > > I believe commit 484861e09f3e ("soc: renesas: Kconfig: Select the
> > > > required configs for RZ/Five SoC") can cause regression on all
> > > > non-dma-coherent riscv platforms with generic defconfig. This is
> > > > a common issue. The logic here is: generic riscv defconfig selects
> > > > ARCH_R9A07G043 which selects DMA_GLOBAL_POOL, which assumes all
> > > > non-dma-coherent riscv platforms have a dma global pool, this assum=
ption
> > > > seems not correct. And I believe DMA_GLOBAL_POOL should not be
> > > > selected by ARCH_SOCFAMILIY, instead, only ARCH under some specific
> > > > conditions can select it globaly, for example NOMMU ARM and so on.
> > > >
> > > > Since this is a regression, what's proper fix? any suggestion is
> > > > appreciated.
> >
> > I think the answer is to not select DMA_GLOBAL_POOL, since that is only
> > designed for nommu cases where non-cacheable memory lives in a fixed pl=
ace
> > in the physical address map, and regular kernel pages can't be remapped=
. As
> > far as I'm aware, RISCV_DMA_NONCOHERENT is the thing you want, such tha=
t
> > DMA_DIRECT_REMAP can dynamically provide non-cacheable coherent buffers=
 for
> > non-hardware-coherent devices.
>
> Thank Robin!
> AFAIK, ARCH_R9A07G043 needs the dma global pool to handle its CMO. So
> it looks like ARCH_R9A07G043 can't be enabled in riscv generic
> defconfig. And we also need a special solution to prevent random config
> from selecting ARCH_R9A07G043 by chance for other platforms

There will be a similar issue with e.g. Starlight, as ERRATA_STARFIVE_JH710=
0
(not yet upstream, but in esmil/visionfive) also selects DMA_GLOBAL_POOL.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

