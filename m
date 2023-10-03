Return-Path: <devicetree+bounces-5330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC727B5FF6
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 06:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 41D192816B0
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 04:37:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE58410FD;
	Tue,  3 Oct 2023 04:37:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F92D645
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:37:51 +0000 (UTC)
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8125AB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:37:48 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-690fa0eea3cso390226b3a.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 21:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696307868; x=1696912668; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GKgPQ38AECrVlc0moMdpWxxk1GnLwNaF/JmBiOPzlGM=;
        b=fyA9lFh/rG2cgAwFdubzHyYqgK+w0UeUl6rM8nCZHodSlZh4XmxK+p9SH4t1uraChB
         0grTrYEtHjfPKqTpAPwI5rh34ukAOP/OHOb8x/wu+AESdnStF+Lzuv63Omh6Twdu5AYa
         HMydc5tiwYBL7kCrKswEC+JyXtAy64ThJJDm6chrGFJTZen5wcntSZYtL5ovGzPorn60
         +mJWOhu75pUrPRWAgec3aXXRv7oUb1lf4KJbTLi2GZv7u2RC9/ZgU44ZvP02/heFUF+i
         Sog5LN1cTqW8GOniXydMIT3ISEUPuPo3K/9qCxd57ZviplZfHBU2bO1H+/i4G9+73gLj
         9BYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696307868; x=1696912668;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GKgPQ38AECrVlc0moMdpWxxk1GnLwNaF/JmBiOPzlGM=;
        b=poW6oAsgczvv5QDCUnvd9EzKvZVmD/Y5+zAu9msCIdUf0nN4daw60Kmwkx6QH3ZMqN
         nauwrv7s8SycOIVSB4GekeCl0QE/cbamB6gwWrzkYaMjzYpHf69dVDBWdJ5BmG4PIjZ9
         7fX+7Gq4rV89bIxDvz5gTiPQ0ooEvKJDnkJr19/XRvnCreLg61QY9WuY7qYf61xhVVRp
         2LZfpxfX0Vz4rzZvGcg8WyRY/lBH+3WmFZgxeieFS82lORXAaAvi9BfrvwvKmOKQU1qT
         xsiDPe3c8i839ZQ0PiLCUBe030gzL3xSOVDQ3l5jsPjvRfJeuPZDAtInMF+F47kMu0lp
         0Mrw==
X-Gm-Message-State: AOJu0YzN7WRPZQS6e1YHg6wZIVNXXkVlld81QPXtVwLXOnEh0fnCChdn
	54blMULTuqaNqhWj0p69pM3pvA==
X-Google-Smtp-Source: AGHT+IGcJswyqq2+v8adfeB7JFHPk6IW7uTaWtSmL6Jtu5yzeYDhKrvLZYKMEUvZXOisUIZVOAzPIw==
X-Received: by 2002:aa7:88c1:0:b0:68f:dfda:1814 with SMTP id k1-20020aa788c1000000b0068fdfda1814mr16065099pff.18.1696307868388;
        Mon, 02 Oct 2023 21:37:48 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:6f96:60b4:c2b:8120])
        by smtp.gmail.com with ESMTPSA id z9-20020aa785c9000000b00692acfc4b3csm332716pfn.136.2023.10.02.21.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 21:37:48 -0700 (PDT)
Date: Mon, 2 Oct 2023 21:37:44 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Robert Nelson <robertcnelson@gmail.com>,
	Prabhakar <prabhakar.csengg@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
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
	=?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
	Alexandre Ghiti <alexghiti@rivosinc.com>
Subject: Re: [PATCH 0/6] RISC-V: Add eMMC support for TH1520 boards
Message-ID: <ZRuamJuShOnvP1pr@x1>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <CAOCHtYhnx1EpBM+o3xhdsicx5uqLidojK3f0HQ+VfyVv1ZXnVQ@mail.gmail.com>
 <CAOCHtYi5Ab5ppCmaQV3QuKQcpmJX+sHdAmtuEXhfq8xf5fFCYQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAOCHtYi5Ab5ppCmaQV3QuKQcpmJX+sHdAmtuEXhfq8xf5fFCYQ@mail.gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, Sep 22, 2023 at 05:48:21PM -0500, Robert Nelson wrote:
> On Fri, Sep 22, 2023 at 2:08 PM Robert Nelson <robertcnelson@gmail.com> wrote:
> >
> > On Thu, Sep 21, 2023 at 8:51 PM Drew Fustini <dfustini@baylibre.com> wrote:
> > >
> > > This series adds support for the eMMC on the BeagleV Ahead and the
> > > Sipeed LicheePi 4A. This allows the kernel to boot with the rootfs on
> > > eMMC.
> > >
> > > I tested on top of v6.6-rc2 with this config [1]. I was able to boot
> > > both the Ahead [2] and LPi4a [3] from eMMC. The following prerequisites
> > > are required:
> > >
> > >   [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus [4]
> > >
> > > I pushed a branch [5] with this patch series and the above patch for
> > > those that find a git branch easier to test.
> > >
> > > Please note that only the MMC controller connected to the eMMC device
> > > is enabled in the device trees for these two boards. I did not yet
> > > attempt to configure and use the microSD card slot. My preference is to
> > > address that in a future patch series.
> > >
> > > References:
> > > [1] https://gist.github.com/pdp7/5fbdcf2a65eb1abdd3a29d519c19cdd2
> > > [2] https://gist.github.com/pdp7/91a801a5f8d1070c53509eda9800ad78
> > > [3] https://gist.github.com/pdp7/1445c3c991e88fd69c60165cef65726a
> > > [4] https://lore.kernel.org/linux-riscv/20230912072232.2455-1-jszhang@kernel.org/
> > > [5] https://github.com/pdp7/linux/tree/b4/th1520-mmc
> >
> > This patchset came out very nice!
> >
> > v6.6-rc2 with Last RFC v2:
> >
> > [    4.066630] mmc0: SDHCI controller on ffe7080000.mmc
> > [ffe7080000.mmc] using PIO
> >
> > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> >
> > /dev/mmcblk0:
> >  Timing cached reads:   1516 MB in  2.00 seconds = 758.09 MB/sec
> >  Timing buffered disk reads:  84 MB in  3.01 seconds =  27.94 MB/sec
> >
> > vs v6.6-rc2 with this patchset:
> >
> >  [    4.096837] mmc0: SDHCI controller on ffe7080000.mmc
> > [ffe7080000.mmc] using DMA
> >
> > debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> >
> > /dev/mmcblk0:
> >  Timing cached reads:   1580 MB in  2.00 seconds = 790.97 MB/sec
> >  Timing buffered disk reads: 418 MB in  3.00 seconds = 139.11 MB/sec
> 
> Drew pointed out on Slack, this was not quite right.. After more
> digging by Drew, CONFIG_DMA_GLOBAL_POOL is causing a DMA limitation
> with the multiplatform defconfig. so with,
> 
> ./scripts/config --disable CONFIG_ARCH_R9A07G043
> 
> (to remove CONFIG_DMA_GLOBAL_POOL)... another 2x in buffered reads..
> 
> [    4.059242] mmc0: SDHCI controller on ffe7080000.mmc
> [ffe7080000.mmc] using ADMA 64-bit
> 
> debian@BeagleV:~$ sudo hdparm -tT /dev/mmcblk0
> 
> /dev/mmcblk0:
>  Timing cached reads:   1600 MB in  2.00 seconds = 800.93 MB/sec
>  Timing buffered disk reads: 892 MB in  3.00 seconds = 297.06 MB/sec

It seems CONFIG_DMA_GLOBAL_POOL=y causes ADMA buffer alloc to fail [1]:

  mmc0: Unable to allocate ADMA buffers - falling back to standard DMA

Prabhakar's AX45MP non-coherent DMA support [2] series introduced the
selection of DMA_GLOBAL_POOL for ARCH_R9A07G043 and the riscv defconfig
selects ARCH_R9A07G043. 

Patch 5 in the series [3] states that:

  With DMA_GLOBAL_POOL enabled all DMA allocations happen from this
  region and synchronization callbacks are implemented to synchronize
  when doing DMA transactions.

This example of a "shared-dma-pool" node was given:

        pma_resv0@58000000 {
            compatible = "shared-dma-pool";
            reg = <0x0 0x58000000 0x0 0x08000000>;
            no-map;
            linux,dma-default;
        };

I've copied that to th1520-beaglev-ahead.dts. The address of 0x58000000
has no significance on th1520, but the existence of shared-dma-pool
seems to fix the problem. ADMA mode [4] is now working even though
CONFIG_DMA_GLOBAL_POOL=y.

Thanks,
Drew

[1] https://gist.github.com/pdp7/73041ed808bbc7dd445836fb90574979
[2] https://lore.kernel.org/linux-riscv/20230818135723.80612-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
[3] https://lore.kernel.org/linux-riscv/20230818135723.80612-6-prabhakar.mahadev-lad.rj@bp.renesas.com/
[4] https://gist.github.com/pdp7/91e72a663d3bb73eb28182337ad8bbcb

