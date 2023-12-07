Return-Path: <devicetree+bounces-22527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5888080BE
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 07:33:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5424EB20CE2
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 06:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F5F3D311;
	Thu,  7 Dec 2023 06:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UyEHbQ3G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCE0610D
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 22:33:09 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d098b87eeeso5029415ad.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 22:33:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701930789; x=1702535589; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wT1sxbADQW/P3RnIhNKOoErO0PmyPZLTD+XFv+Dmqmw=;
        b=UyEHbQ3G97jRdvJlhnkuLkVFge4RX+VfDBId0Vb2UG/4erwy1wziiWRXKDPpofG3ZS
         g+xnAcqGCchiTvxxGtyN3KV14yN0XorQ0sxZVoEoplk/RQLoY6lAIrBnqfArYdmvn7zB
         MkTd7Mq0OuOTD2ulaq6jiEfOvL1RmTjW9P7oRrZy++LHz2W9FUeVAbE6P5RjNU1vsUE7
         wrvYk1IYQ1iN5oPySDwT1zpJilI3KFZ09A2diqDrILhRORXGAc5LE8Jzufal/u8tDLtc
         hJGOv1+DNQRARGQWXV5pevTWNOJT9A7nNW6ABNkgcffezEnIj+M+bUKG0YMu/wAOgVSM
         mAfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701930789; x=1702535589;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wT1sxbADQW/P3RnIhNKOoErO0PmyPZLTD+XFv+Dmqmw=;
        b=N5BECWZ7LmD/NQzLCCJL2zxyObz9a/h6Jn8S40dO9HGyXoZ+kGukP19USD/ncTXI9B
         4RJ0Ur9LaLKml+jzc9S4bWqCy7clwnOBh576BjidXG2ko4WJ4F3vng4Kf2APe8YM944m
         m/afPyeohq+SuwuBQZCV9/mAm7K56/I43XM7CdYGcdcbWZmfGn2Y2PdVQkkbsZ4i22y7
         Ix/iZvqx1XDaBTaJaOlzkFIbhiPJEWyV8hgGQiQETsyjEwjH9kXRxSEXTN5I9MPzqT1s
         syTI28fyzvNwsadSt0BN4AqcV9OL9UnqRpSESK4/yml9YNFwm7LX+hwtvCh0XLpbQpWd
         pYXg==
X-Gm-Message-State: AOJu0YzKmdkKO2hxtQZTInbOEB9bqkvDYJv5SJPsib22fBdAYAbzZ7HD
	+vWKsMs5SeUOk8H/n0ajhtgZeQ==
X-Google-Smtp-Source: AGHT+IGmAPvOgFD2LOhm3MP0gbls/N07AmNDX56j2zJ3nzhmHoKF8tEd2y6A6nIQCZgMGdF4lq5yNA==
X-Received: by 2002:a17:902:db01:b0:1d0:bc5f:ce62 with SMTP id m1-20020a170902db0100b001d0bc5fce62mr1982325plx.107.1701930789101;
        Wed, 06 Dec 2023 22:33:09 -0800 (PST)
Received: from x1 ([2601:1c2:1800:f680:c2eb:f39a:190b:4379])
        by smtp.gmail.com with ESMTPSA id s15-20020a170902b18f00b001d0acd4e707sm520880plr.176.2023.12.06.22.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 22:33:08 -0800 (PST)
Date: Wed, 6 Dec 2023 22:33:05 -0800
From: Drew Fustini <dfustini@baylibre.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jason Kridner <jkridner@beagleboard.org>,
	Robert Nelson <robertcnelson@beagleboard.org>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v8 2/4] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Message-ID: <ZXFnIWcAlJ5d/SE1@x1>
References: <20231206-th1520_mmc_dts-v8-0-69220e373e8f@baylibre.com>
 <20231206-th1520_mmc_dts-v8-2-69220e373e8f@baylibre.com>
 <CAJM55Z_jRhJLLQg9_OzJ_UeqaoqByu_BgxmwtVRUK2Z+qEKZxg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJM55Z_jRhJLLQg9_OzJ_UeqaoqByu_BgxmwtVRUK2Z+qEKZxg@mail.gmail.com>

On Wed, Dec 06, 2023 at 04:10:28AM -0600, Emil Renner Berthing wrote:
> Drew Fustini wrote:
> > Add node for the fixed reference clock used for emmc and sdio nodes.
> > Add emmc node for the 1st dwcmshc instance which is typically connected
> > to an eMMC device. Add sdio0 node for the 2nd dwcmshc instance which is
> > typically connected to microSD slot. Add sdio1 node for the 3rd dwcmshc
> > instance which is typically connected to an SDIO WiFi module. The node
> > names are based on Table 1-2 C910/C906 memory map in the TH1520 System
> > User Manual.
> >
> > Link: https://git.beagleboard.org/beaglev-ahead/beaglev-ahead/-/tree/main/docs
> > Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> 
> Thanks! The rest of the patches look good too, but I don't really have
> a schematic
> to do proper review.
> 
> Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Thanks for reviewing. The BeagleV-Ahead board is open source hardware so
there is the full schematic and PCB layout in:
https://git.beagleboard.org/beaglev-ahead/beaglev-ahead

Drew

