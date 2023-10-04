Return-Path: <devicetree+bounces-5792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 387717B7E67
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:42:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 495B61C203DD
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BCEB134A6;
	Wed,  4 Oct 2023 11:42:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D3012B8B
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 11:42:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0385EC433C7;
	Wed,  4 Oct 2023 11:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696419764;
	bh=fyfWdnLL1in84snsB7P+H9eun3ijbjisxGk16TwTc9U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=F4e7oRS6CgYtSKUDfmtLJhKBv08S3FB82BJNHFH7bS9u7LpfroBlPZ7GjxdEUk2k7
	 Ukzd9Udbh/Dr6wjGvD5uQ+1sUnh7bohewHVUrglOdCAVei1OzBpMCM++2o47yEBWnj
	 oRCU5/lGRSaeTTgiw6DeyD1QCjBUe3KHFM/MB8qe+UpDmGoHn4nQZeM0v74idTF+SJ
	 SIyEKyT+529xt/CdmbRDj2WCnDw5WFrP6t4Zss7kqKfTywDNODWJ4InBtVjHXkVYOq
	 1BgfpHrn0tIV1vYoqAzEzOlD+TkhlopU0Tz7UamhDitPF9luEmQYR90NtOT6/0HY8X
	 9emfIJVTnjEAw==
Date: Wed, 4 Oct 2023 19:30:36 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Drew Fustini <dfustini@baylibre.com>, Christoph Hellwig <hch@lst.de>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: Robert Nelson <robertcnelson@gmail.com>,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	=?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
	Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: Re: [PATCH 0/6] RISC-V: Add eMMC support for TH1520 boards
Message-ID: <ZR1M3FcdXrDmIGu2@xhacker>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <CAOCHtYhnx1EpBM+o3xhdsicx5uqLidojK3f0HQ+VfyVv1ZXnVQ@mail.gmail.com>
 <CAOCHtYi5Ab5ppCmaQV3QuKQcpmJX+sHdAmtuEXhfq8xf5fFCYQ@mail.gmail.com>
 <ZRuamJuShOnvP1pr@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZRuamJuShOnvP1pr@x1>

On Mon, Oct 02, 2023 at 09:37:44PM -0700, Drew Fustini wrote:
> On Fri, Sep 22, 2023 at 05:48:21PM -0500, Robert Nelson wrote:
> > On Fri, Sep 22, 2023 at 2:08 PM Robert Nelson <robertcnelson@gmail.com> wrote:
> > >
> > > On Thu, Sep 21, 2023 at 8:51 PM Drew Fustini <dfustini@baylibre.com> wrote:
> > > >
> > > > This series adds support for the eMMC on the BeagleV Ahead and the
> > > > Sipeed LicheePi 4A. This allows the kernel to boot with the rootfs on
> > > > eMMC.
> > > >
> > > > I tested on top of v6.6-rc2 with this config [1]. I was able to boot
> > > > both the Ahead [2] and LPi4a [3] from eMMC. The following prerequisites
> > > > are required:
> > > >
> > > >   [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus [4]
> > > >
> > > > I pushed a branch [5] with this patch series and the above patch for
> > > > those that find a git branch easier to test.
> > > >
> > > > Please note that only the MMC controller connected to the eMMC device
> > > > is enabled in the device trees for these two boards. I did not yet
> > > > attempt to configure and use the microSD card slot. My preference is to
> > > > address that in a future patch series.
> > > >
> > > > References:
> > > > [1] https://gist.github.com/pdp7/5fbdcf2a65eb1abdd3a29d519c19cdd2
> > > > [2] https://gist.github.com/pdp7/91a801a5f8d1070c53509eda9800ad78
> > > > [3] https://gist.github.com/pdp7/1445c3c991e88fd69c60165cef65726a
> > > > [4] https://lore.kernel.org/linux-riscv/20230912072232.2455-1-jszhang@kernel.org/
> > > > [5] https://github.com/pdp7/linux/tree/b4/th1520-mmc
> > >
> > > This patchset came out very nice!
> > >
> > > v6.6-rc2 with Last RFC v2:
> > >
> > > [    4.066630] mmc0: SDHCI controller on ffe7080000.mmc
> > > [ffe7080000.mmc] using PIO
> > >
> > > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> > >
> > > /dev/mmcblk0:
> > >  Timing cached reads:   1516 MB in  2.00 seconds = 758.09 MB/sec
> > >  Timing buffered disk reads:  84 MB in  3.01 seconds =  27.94 MB/sec
> > >
> > > vs v6.6-rc2 with this patchset:
> > >
> > >  [    4.096837] mmc0: SDHCI controller on ffe7080000.mmc
> > > [ffe7080000.mmc] using DMA
> > >
> > > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> > >
> > > /dev/mmcblk0:
> > >  Timing cached reads:   1580 MB in  2.00 seconds = 790.97 MB/sec
> > >  Timing buffered disk reads: 418 MB in  3.00 seconds = 139.11 MB/sec
> > 
> > Drew pointed out on Slack, this was not quite right.. After more
> > digging by Drew, CONFIG_DMA_GLOBAL_POOL is causing a DMA limitation
> > with the multiplatform defconfig. so with,
> > 
> > ./scripts/config --disable CONFIG_ARCH_R9A07G043
> > 
> > (to remove CONFIG_DMA_GLOBAL_POOL)... another 2x in buffered reads..
> > 
> > [    4.059242] mmc0: SDHCI controller on ffe7080000.mmc
> > [ffe7080000.mmc] using ADMA 64-bit
> > 
> > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> > 
> > /dev/mmcblk0:
> >  Timing cached reads:   1600 MB in  2.00 seconds = 800.93 MB/sec
> >  Timing buffered disk reads: 892 MB in  3.00 seconds = 297.06 MB/sec
> 
> It seems CONFIG_DMA_GLOBAL_POOL=y causes ADMA buffer alloc to fail [1]:
> 
>   mmc0: Unable to allocate ADMA buffers - falling back to standard DMA
> 
> Prabhakar's AX45MP non-coherent DMA support [2] series introduced the
> selection of DMA_GLOBAL_POOL for ARCH_R9A07G043 and the riscv defconfig
> selects ARCH_R9A07G043. 
> 
> Patch 5 in the series [3] states that:
> 
>   With DMA_GLOBAL_POOL enabled all DMA allocations happen from this
>   region and synchronization callbacks are implemented to synchronize
>   when doing DMA transactions.
> 
> This example of a "shared-dma-pool" node was given:
> 
>         pma_resv0@58000000 {
>             compatible = "shared-dma-pool";
>             reg = <0x0 0x58000000 0x0 0x08000000>;
>             no-map;
>             linux,dma-default;
>         };
> 
> I've copied that to th1520-beaglev-ahead.dts. The address of 0x58000000
> has no significance on th1520, but the existence of shared-dma-pool
> seems to fix the problem. ADMA mode [4] is now working even though
> CONFIG_DMA_GLOBAL_POOL=y.

+ Christoph, Lad

IMHO, this is not TH1520 specific but a generic issue.

I believe commit 484861e09f3e ("soc: renesas: Kconfig: Select the
required configs for RZ/Five SoC") can cause regression on all
non-dma-coherent riscv platforms with generic defconfig. This is
a common issue. The logic here is: generic riscv defconfig selects
ARCH_R9A07G043 which selects DMA_GLOBAL_POOL, which assumes all
non-dma-coherent riscv platforms have a dma global pool, this assumption
seems not correct. And I believe DMA_GLOBAL_POOL should not be
selected by ARCH_SOCFAMILIY, instead, only ARCH under some specific
conditions can select it globaly, for example NOMMU ARM and so on.

Since this is a regression, what's proper fix? any suggestion is
appreciated.

Thanks

> 
> Thanks,
> Drew
> 
> [1] https://gist.github.com/pdp7/73041ed808bbc7dd445836fb90574979
> [2] https://lore.kernel.org/linux-riscv/20230818135723.80612-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
> [3] https://lore.kernel.org/linux-riscv/20230818135723.80612-6-prabhakar.mahadev-lad.rj@bp.renesas.com/
> [4] https://gist.github.com/pdp7/91e72a663d3bb73eb28182337ad8bbcb

