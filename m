Return-Path: <devicetree+bounces-127662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEA09E5E10
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 19:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A14EE16B4EA
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4DDC226EFD;
	Thu,  5 Dec 2024 18:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="UbaugdLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF0F226EF2
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733422315; cv=none; b=Mksqcm0NQLQJQ2pT5O5qv6uJkgrqMltMdRv6T2JbGfJP1xkEoRQAXaHduGbApPeRV2sBQL7NRhJavH9iIzwYc3JMuWnLspceOqWY+gCwr/tsv5YtHLYrj12xqQODYN8EVIGTg/B7Jz4QqK4fQJmPEK9wR/S9ZqickwIpue9pTnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733422315; c=relaxed/simple;
	bh=1ZxSWeTtz1xYfbYIhQuSzJz0Yo0FouTjzbyq21H8PSg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P0aFR6hN3jA/zqgp1rrQsbsyI+LpoXGYiAVrIEdaL2vpYlC9npvXY+r5Z3D2IOxYJ9FN1g5a5yweDPC2WhPqRPUxPb4vNTBNSo/8ZLI2w3gUhMYHGS00P+avFk9dZoANYhdTuneOEzUxyYpU/JPaiiajjL0zLDSR8ah8vPi8i5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=UbaugdLO; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2ee989553c1so1084422a91.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 10:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1733422313; x=1734027113; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2MUjUIXHE2bJtGuB7BkRXXqw/hOym15VxRARXET8bls=;
        b=UbaugdLO0GYyPYUpIpeUbCugGBhx78w4t0eFOH+35kSTeUT3G/fSmhCjsotEO8pTLe
         KYx8fCY8vE6ApGefxzuBGmw+xA7N/slUQbL5ZzX77qAFHneruHGoPRfD9NQYRv8Htrxx
         K1sY9RnPRfycJ+lZXwndSPbfw6sEVp/mQ2f7lWj3K/LIAaYKcx+SOGx/jveNs3jwPMod
         sNmdyfH1ZrfvBq6uphs3GiToIhfvQua1aKrK7IyPx2Lqo262kp+Pavyji9OqMkV2Omhn
         n8g60wwZtHLRapyqy5g/kZ4tKBUufh7BjfXEw91C+QXrXFkqSSYwuirwCwDAq2IRQiYi
         +rmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733422313; x=1734027113;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2MUjUIXHE2bJtGuB7BkRXXqw/hOym15VxRARXET8bls=;
        b=J/82FyxZBnBEzqGA/D+I0OTPzk/EhUKNHupPpTZleTrQTH7MPcKa/sQUS1aM1k8K+o
         pjDsLjdBChRBeXSVfp+lq+4nP72zdhNUvtKO4Szwe4HIObx84q3IHH7bYCG2BZX8xueX
         Pk8pFfBUcWuEAyQSZXwXKYMG2L03AYiQDTwNGbb5A6BLCV/w4YgVSVp6M1r9wf9h6y1G
         Em/OvZPOtFBwqrX771yRUXclV8J+j/i2WkuDtppZaC23ewUla1RmHqf3JJRcGQ5G8QD0
         ACNcdTgj9LmjR1R08smWIod3Rz3hul/9/8yJThhwJnsEyzjzimgthAyHnshikU/h4zhM
         GljA==
X-Forwarded-Encrypted: i=1; AJvYcCUAAjRxDUAFeWMBJoLq2w824ddZbmxUA+7DQnbOyo7rmae136QSt1Ncdyd1MoXUrJhP0yh+8K3O0mx4@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl7NexwODlg6TCLWk2n7QdiEWAMS8ONUf91dHRxfBdTXUuSrl2
	P/XZMPUwfAQB0F/VRIhY1oJWJuhwygOOdGu0AU1Oet6TOqbI77JJL6u58Y67eVE=
X-Gm-Gg: ASbGncs44D0w5iOBr0mHAihEC5KVEkl42WRJGw1WbW3TktNdPVkaaik8btN8c6/Lrjk
	n7SJuDZ8+bGwVrlzNMijV+Fk6551EkOctO1/OwR5wHI8vuGrgL+Sjh7zmEm61v6bknus7AnTnt7
	y4hXakDlnhQTyNZCwOAM6vrDEySvUjtg7VfdNQlKCwbuWZTpaQhYbjzgLTpjtsnfk5/9Vg+xeZr
	1xqeAuSv6A+wIxcvJsQS87Nsv0fRus=
X-Google-Smtp-Source: AGHT+IH9Qxre7SaXJmwLVox5H0UwU/C+KDg/si4WFNP6RN/USaZJmdrSMdvHNGZqEVGV0+rIUHI/aw==
X-Received: by 2002:a17:90b:5448:b0:2ef:2d9f:8e58 with SMTP id 98e67ed59e1d1-2ef6ab29c49mr113446a91.34.1733422313419;
        Thu, 05 Dec 2024 10:11:53 -0800 (PST)
Received: from x1 ([192.210.17.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ef26ffb6f5sm3584572a91.6.2024.12.05.10.11.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 10:11:53 -0800 (PST)
Date: Thu, 5 Dec 2024 10:11:50 -0800
From: Drew Fustini <drew@pdp7.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: bigunclemax@gmail.com, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] riscv: dts: thead: Fix TH1520 emmc and shdci clock
 rate
Message-ID: <Z1Hs5smgFV4C6c90@x1>
References: <20241204111424.263055-1-bigunclemax@gmail.com>
 <CAJM55Z-YAMtRN=K5KxCH1+++Xw4uMM_c49z8tGzi3snU+-KrYA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJM55Z-YAMtRN=K5KxCH1+++Xw4uMM_c49z8tGzi3snU+-KrYA@mail.gmail.com>

On Wed, Dec 04, 2024 at 03:19:28PM +0000, Emil Renner Berthing wrote:
> bigunclemax@ wrote:
> > From: Maksim Kiselev <bigunclemax@gmail.com>
> >
> > In accordance with LicheePi 4A BSP the clock that comes to emmc/sdhci
> > is 198Mhz.
> >
> > But changing from fixed-clock to CLK_EMMC_SDIO leads to increasing input
> > clock from 198Mhz to 792Mhz. Because the CLK_EMMC_SDIO is actually 792Mhz.
> >
> > Therefore calculation of output SDCLK is incorrect now.
> > The mmc driver sets the divisor to 4 times larger than it should be
> > and emmc/sd works 4 times slower.
> >
> > This can be confirmed with fio test:
> > Sequential read of emmc with fixed 198Mz clock:
> > READ: bw=289MiB/s (303MB/s)
> >
> > Sequential read with CLK_EMMC_SDIO clock:
> > READ: bw=82.6MiB/s (86.6MB/s)
> >
> > Let's fix this issue by providing fixed-factor-clock that divides
> > CLK_EMMC_SDIO by 4 for emmc/sd nodes.
> 
> Thanks for finding this bug!
> 
> However, this feels like a work-around for a bug in the clock driver, and even
> if there is a fixed factor divider somewhere this should probably be modelled
> by the clock driver. Did you look into the documentation[1] and try to figure
> out where eMMC clock comes from and where the /4 is missing?
> 
> There is also a vendor tree somewhere with a much more complete clock driver.
> Drew do you remember where it is? Maybe it's worth looking at how that driver
> models the eMMC clocks.

Sorry for the delay, I'm travelling until tomorrow.

Maksim, thanks for finding this issue and sending a patch.

That is a good point about checking the thead vendor kernel. I normally
look at revy's thead-kernel repo [1] which is 5.10. revy also has a 6.6
lts branch in th1520-linux-kernel [2].

https://github.com/revyos/thead-kernel/tree/lpi4a/drivers/clk/thead


Looking at line 454 in drivers/clk/thead/clk-light-fm.c [3]:

  clks[EMMC_SDIO_REF_CLK] =
  thead_light_clk_fixed_factor("emmc_sdio_ref_clk",
                               "video_pll_foutpostdiv", 1, 4)
                               /* Note: base clk is div 4 to 198M*/

Which derives from line 373:

  clks[VIDEO_PLL_FOUTPOSTDIV] =
  thead_clk_fixed("video_pll_foutpostdiv", 792000000);

Thanks,
Drew

[1] https://github.com/revyos/thead-kernel
[2] https://github.com/revyos/th1520-linux-kernel
[3] https://github.com/revyos/thead-kernel/blob/lpi4a/drivers/clk/thead/clk-light-fm.c

