Return-Path: <devicetree+bounces-40566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AE0850D44
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 05:51:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBA1728613F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 04:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 408D42F55;
	Mon, 12 Feb 2024 04:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="hDFCrnOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9AE76FAD
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 04:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707713510; cv=none; b=EBwDKVwOc+acTKZ3ILNVQb2UemcSBdIBSBG11c0cGI15SiLmEXCL+j2hcoVk592xfAd+TSmFodJgSZ9WisMFotsaEcxsMdNGaG+Nueq10c2cs61RvRCTcEtQu1k4vr0MgjK1lhhAKQ7ifu4PtfEQZiTJZzQ/heMMTeUUkMC5gbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707713510; c=relaxed/simple;
	bh=ycDmJ8sSzq/z4s/iOCsk1Vsc5DOZRrjGfbxabXVUfMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JvjfKUA5dHXZgNtMVmzVCDHt05T0j81Z0TMXNgtmvKKhv/z5wDrSYfVpWgM4x3S4tCwLTu6l2mWkZTwF4YGB26Tnl0pbpV/3cC6cUTfK29KdtqAH4lqKK1NK1pur9gr3HinxZms0gZHPZ1vg/9WHM+JkpuliWOKjGF/F2aXmG9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=hDFCrnOo; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1d731314e67so16892325ad.1
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 20:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1707713508; x=1708318308; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TN1N5wHd/5s/p1QMyzLjtp6F087WNnhanJgsh/0rH+g=;
        b=hDFCrnOotm1QglenU7JYk2VxDjysOmPUDtCSONvlv+IkIt8uC9HefD/M7eh1tEaqu+
         t/cIgp8GF4FCY+nzehZaFQVxVix+S7Gzd9NwVGZ78TufwRwDahJAVZ4CLn9thOqHY6Nd
         PMZjCf/jqL9RMFtH2IRiNyHkLc+Yyc8l8cjE23i0rvaRSo9rJAJeAkDSVqVyzg0il7oy
         mcCBk8XXBn0P3exT+CF8cl3F6yGFkeD6hbkdtAWUQ8AUVRBM7T3JeTpNKo12fduonC8x
         U+Wgz3ba+HRVPNbKW09l85UqQ+77ePHHCUIn7zzRAufw90FikzflB3IMV/vAqVXdgoEm
         TCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707713508; x=1708318308;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TN1N5wHd/5s/p1QMyzLjtp6F087WNnhanJgsh/0rH+g=;
        b=a9jKWRF1xKkkd2xhP2hddlSETGA9SlnIA4WpqjR2TXM+V6V8S8lvQM40zuX2xJK071
         tgRT9U3Xi6Wkh/vcR8QqGqxDLspdSMIG3vIzY9dSRC2BOLeuVt8BNN+ryEwRfdkzHQ05
         MMBeV/8ttusmV79xX6NassICXimVlrrGRNsHxc3t/iMefAPCg9eaSA+W96Vdk/LBpcw/
         N6pMSxCQ9+nHjeWFnSXQdK0vXHjfZuj+dmr4fuFkZPzhz00jkrPLMhAhdvCAIcFHEH88
         n6q6CU5Bg+oCss8ttIGixVxtr4szZ7Lq8+eOqNP/fq8G9P/C/nPGLtNL7yFFrcjay2Wp
         sc+w==
X-Forwarded-Encrypted: i=1; AJvYcCWR2I162ip9kFTa2V2OD4HAI0hV+YW0DGKv7KVRn/qv8hBj8vreR2SVJjOOdTEdEyeu3wfn/m9qlH80Jh9v1g4Ye98K4lnbmAZEeg==
X-Gm-Message-State: AOJu0Yy3uR/Y71/RiGrei/7mvAsaarUZfY40VhDL8iU/ulgpzmNOhbI3
	4lp81LsWyze4LPEX3Xwx5fgOf+ziAq1zxr8SgK52umx5jGKBmN5EyQBCS/cM5GA=
X-Google-Smtp-Source: AGHT+IEY75u/xGNwtso6ikxk6UIGByK6eYyNtc4JEQmcS7pJ05+PReKBC2npnp/ZrQdzl+9s0BWt7A==
X-Received: by 2002:a17:902:d4c8:b0:1da:1d05:7a9d with SMTP id o8-20020a170902d4c800b001da1d057a9dmr6074230plg.16.1707713507909;
        Sun, 11 Feb 2024 20:51:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVaPIfssrHeVXME5NSMoqDcFAbff4F2+6YsQy+XASCsypNoJZZdJHge7fzlNUi7H3PsNCFUndZbUckz7YHhySgjrUiLVYUNbPBrLxwjOaQccFIxgkFRw3Zg41GRWir8liPg+DvGfitTROQU6FPAq+yTsR4a+Qm8IwSAuenAgEjHqdCJ86Av8CdW4Cy97co/t28+wrRjzQP/W+K/WqosgfJcBV+g2fgiT2ipQmpUXMmot4CvVxOtXNtQWKE0ezI2cYxPJyZ7W902ZAVQMi5/On+PtLhfRTdiJV9b1xCZrVlp4G6mFqm8KPQT9jEJE03awXg2VMQ9KHkO7fig1rccHthlW/rtxFXAmtbG4MNYaGk5xOf6C2yjjWozW3z44Feqs302nDBIh3t+E2frxXIsM1qsrSEaE6F2Qw7jeSNGUixgfnYQUtXszVCVK2ZRTRvwEoDRVK0YHY1tovWkbtPrayC8jBHBuYmAQLlS1O8ZxVc1LhQ+AYJQgKYPiir2Xrm9
Received: from x1 ([2601:1c2:1800:f680:a936:a777:2d19:7ea9])
        by smtp.gmail.com with ESMTPSA id jz8-20020a170903430800b001d8e41b3f95sm5038876plb.51.2024.02.11.20.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Feb 2024 20:51:47 -0800 (PST)
Date: Sun, 11 Feb 2024 20:51:44 -0800
From: Drew Fustini <drew@pdp7.com>
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: Conor Dooley <conor@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Jason Kridner <jkridner@beagleboard.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v8 0/4] RISC-V: Add MMC support for TH1520 boards
Message-ID: <Zcmj4Pbi/1c49dR+@x1>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
 <20231212-flammable-idiom-660b1d85e20d@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212-flammable-idiom-660b1d85e20d@spud>

On Tue, Dec 12, 2023 at 07:13:25PM +0000, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> On Wed, 06 Dec 2023 00:09:20 -0800, Drew Fustini wrote:
> > This series enables the MMC controller in the T-Head TH1520 SoC and
> > enables the eMMC and microSD on both the BeagleV Ahead and the Sipeed
> > LicheePi 4A.
> > 
> > The drivers/mmc/host patches from v6 were applied by Ulf and are already
> > in the linux-next [1][2] as well as the bindings patch [3]. Thus v7 was
> > only a defconfig patch and three device tree patches. This v8 is a
> > followup to change the dwcmshc node names to match the documentation.
> > 
> > [...]
> 
> Applied to riscv-dt-for-next, thanks! The defconfig patch is Palmer's
> to take :)
> 
> [2/4] riscv: dts: thead: Add TH1520 mmc controllers and sdhci clock
>       https://git.kernel.org/conor/c/a77f02e84896
> [3/4] riscv: dts: thead: Enable BeagleV Ahead eMMC and microSD
>       https://git.kernel.org/conor/c/18d92a03b319
> [4/4] riscv: dts: thead: Enable LicheePi 4A eMMC and microSD
>       https://git.kernel.org/conor/c/b6b5028473ce

Hi Palmer,

I don't see this in fixes or for-next. Could you pick it up please?

I've tested that Lichee Pi 4a and Ahead boot okay on 6.8-rc4 once
'CONFIG_MMC_SDHCI_OF_DWCMSHC=y' is set.

Thanks,
Drew

