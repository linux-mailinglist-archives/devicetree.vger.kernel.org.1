Return-Path: <devicetree+bounces-11087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2425B7D4189
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:17:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B8B42B20C22
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:17:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2C3921351;
	Mon, 23 Oct 2023 21:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Hadr64Nj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D755614F61
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:16:51 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3569E1990
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:16:18 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6b36e1fcee9so3105630b3a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698095777; x=1698700577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=zvhazaZM9RfI4iJsfgktcPhLE+7qHteXIMbKad1YWwM=;
        b=Hadr64NjKF49gGJbppffIuqkb8sCVABGLrfesp/6s16qECmQrvim4ZwJGzYzoswSGg
         k39QwS6dqO5TdLhQDBwg93bZ3sJzXLDV7uloKtPxh3ozMx6KodM74EzQyFm5+ZyOkxNB
         Bgl0N8QZWkd7zN1bkqy4R9SXhc0RIzECCTYMhxn7d+PgN3Qc5ZZF30VUZHrX5dOulKEi
         yCAIuUHgif1RFrFuFByTc9I/9+f4LXCXehnk4DCl0zcO8ttSGRDRyFQrS8Zd2AGxGVLs
         5Nvn/2UM5Ssm1YmDMoqyi4hA6F3oqDdbHx/arZvlpEA2rQS2Wiv+IguDCx1e5RVjqr9L
         +Y8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698095777; x=1698700577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zvhazaZM9RfI4iJsfgktcPhLE+7qHteXIMbKad1YWwM=;
        b=PJdaGYeMEa1ccC2pa+Eooqpvd30bxld7p7vjIdpHw0kmE7X9zUfUGSvDbTZl6xdKqd
         M5Ux95feuCfil5GN9KTcxZPe31Nn/QfVQ56zHSOLL1SopSGpUunGe9vCwD6o0WmjgonT
         PL0f1lDfq1SyeuMyEO22Ixz+zwroD/crr5h04dwBv598XZ+G1AHrfm5Bgus/xKMbL4Mf
         V+nlwcI12pD2H2SdQd9TwSKTLZhNv+HqX0BsMqo0Ntt8TbD8Fcx3z/Mffe4kfM4Y0l3k
         3Maf8W515O0dj4DTuG54lNCVc3E+rVkmlkb1Ovmr3avzETPFLeTcAPDVXjUMN3Mo2Xj4
         9Fwg==
X-Gm-Message-State: AOJu0YxayAUaxnbZ1xSB+7sfyIfdTuM0l89EIKowmNtCC2670sA+Xb7q
	+by6BBlJMZZNmdkMShps05Aiwg==
X-Google-Smtp-Source: AGHT+IHHOa6b8isYHkqmJjQq3xCd6kvCalcUdzFL2r7jyGX64Eq4yPLeQJvZ+MMD0KyWAU4/1ldzgw==
X-Received: by 2002:a05:6a00:a0b:b0:6bd:9281:9453 with SMTP id p11-20020a056a000a0b00b006bd92819453mr9522592pfh.9.1698095777579;
        Mon, 23 Oct 2023 14:16:17 -0700 (PDT)
Received: from x1 ([2601:1c2:1800:f680:b9a0:8714:407c:4146])
        by smtp.gmail.com with ESMTPSA id f18-20020aa79692000000b00690c52267easm6535133pfk.40.2023.10.23.14.16.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 14:16:17 -0700 (PDT)
Date: Mon, 23 Oct 2023 14:16:14 -0700
From: Drew Fustini <dfustini@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>
Cc: Robert Nelson <robertcnelson@beagleboard.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Xi Ruoyao <xry111@xry111.site>, Han Gao <gaohan@iscas.ac.cn>,
	Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 0/7] RISC-V: Add MMC support for TH1520 boards
Message-ID: <ZTbini/VyDxHMyrm@x1>
References: <20231023-th1520-mmc-v3-0-23850668d208@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023-th1520-mmc-v3-0-23850668d208@baylibre.com>

On Mon, Oct 23, 2023 at 01:33:02PM -0700, Drew Fustini wrote:
> This series adds support for the MMC controller in the T-Head TH1520
> SoC, and it enables the eMMC and microSD slot on both the BeagleV
> Ahead and the Sipeed LicheePi 4A.
> 
> I tested on top of v6.6-rc6 with riscv defconfig. I was able to boot
> both the Ahead [1] and LPi4a [2] from eMMC. The following prerequisites
> are required:
> 
>   [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus [3]
> 
> I pushed a branch [4] with this patch series and the above patch for
> those that find a git branch easier to test.
> 
> Note: I have only tested eMMC and microSD. I have not yet configured
> or tested the mmc controller used for SDIO WiFi yet.
> 
> References:
> [1] https://gist.github.com/pdp7/7850027e8d256b6fd9cd53080240f0f6
> [2] https://gist.github.com/pdp7/fae4637378426723508b679420a0a5a1
> [3] https://lore.kernel.org/linux-riscv/20230912072232.2455-1-jszhang@kernel.org/
> [4] https://github.com/pdp7/linux/tree/b4/th1520-mmc
> 
> Changes in PATCH v3:
> - always call th1520_sdhci_set_phy() in th1520_set_uhs_signaling()
>   and not only when timing is MMC_TIMING_MMC_HS400. This allows the
>   microSD slot to work as th1520_phy_3_3v_init() is called from
>   th1520_sdhci_set_phy().
> - add mmc1 node for mmc controller connected to the microSD slot
> - add enable mmc1 and add properties for microSD on the Ahead and LPi4A

My apologies for sending this v3 series prematurely. I wanted to send
out the fix above that enabled microSD to work but I failed to address
the feedback from Adrian and Jisheng on v2 [1] and I also failed to
applied the tags from v2. I will address those in a v4 but I'll wait a
few days in case there is any feedback on the th1520_set_uhs_signaling()
change above.

Thank you,
Drew

[1] https://lore.kernel.org/r/20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com

