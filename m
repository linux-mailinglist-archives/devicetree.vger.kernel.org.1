Return-Path: <devicetree+bounces-16018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 221607EC81E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF40D28156E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228CD3172D;
	Wed, 15 Nov 2023 16:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AeBXp3Fj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963793173C
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:05:08 +0000 (UTC)
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E64127
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:05:07 -0800 (PST)
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-66d0760cd20so9175396d6.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700064306; x=1700669106; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MejHG9v78thYt1KCbL5Bhup5VOWpNmj9HgzD1QZtMTA=;
        b=AeBXp3FjmYcu6PwTQOMYiY6hY8V9m64eef4+yd7Rxcifr4LlNJezuuFpQ6wzh0RRVU
         5F0kcaICBeyizPSoqFXOm7YVQ9ncSQ8shEeT2gflMsnNwjgD13OdLogs16Lt+ZJ5MDHV
         TylzYiqzc2G2TZ7UW16OxKdxICpu9dyDFr4VnAFaDlr3OKo3fJDWDSJ7yyA2dh3JgTn1
         ynpRgHQ2eds3c1A7uNohCtierwscpGZZGcy+OVF+APHbzCxCIlRVQVrJsBGfJsdSyL9Y
         4w5TwJFVgU0gNjKnMNF8KAX9ZgvHrI4V/7NCBaZQWOXei0iZApimMfZx6m/9OUuOxup4
         UmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700064306; x=1700669106;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MejHG9v78thYt1KCbL5Bhup5VOWpNmj9HgzD1QZtMTA=;
        b=vzpf0s1WUPZLsgETAqq1O6HuhzjpwRaUg32q4rvIDRMJeDeq5WGiCIlhkkyWMZFND2
         bQvnxXWQ3eXM9RTypW0ek6ZpdHsB/+EhBpaGwxPPaRB9HSS0lBDKQ4v0nLI2/zxzwRfL
         Z9v12yytmGlIbUOdD8iVoL4gYg9nxsm5ySUgmTQB0emxCQ9OMHEMrdSbX8kR6YA506yg
         9HmPjQo884nAhhIuzGE6bZHyvqdM/qeCaAjDSk70pAcZ1Vi2+M/X1zwtLchh0jA3y+fY
         1Tz39CojuRFRGQpj1dfQ5mFQojPZf2c1VloXqxWPJNq9JuAWIkoWJ3pA6wrOlJabr8Wp
         CImw==
X-Gm-Message-State: AOJu0YxoNfRKW/ko9wxO87uAQYnPdJvF+6ED/zeYo9ix7CYZvIno2ifh
	Dv5ULkMorhqmZjrnEQWaAfTInw==
X-Google-Smtp-Source: AGHT+IEcj6XcTZ0mNvYbPmKaVsfiFpIwuHA7OmpjgBlO36wsG12GpSde51/jSBEJuULlMiocskZovg==
X-Received: by 2002:a05:6214:1706:b0:66d:6a92:16c2 with SMTP id db6-20020a056214170600b0066d6a9216c2mr10015972qvb.8.1700064306362;
        Wed, 15 Nov 2023 08:05:06 -0800 (PST)
Received: from x1 ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id k9-20020a05621414e900b00671ab3da5d0sm617138qvw.105.2023.11.15.08.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 08:05:06 -0800 (PST)
Date: Wed, 15 Nov 2023 11:05:04 -0500
From: Drew Fustini <dfustini@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jisheng Zhang <jszhang@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Conor Dooley <conor@kernel.org>,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v6 0/7] RISC-V: Add MMC support for TH1520 boards
Message-ID: <ZVTsMIHc50hkQ2fe@x1>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
 <CAPDyKFooGiv6fj+X9c4KXaBjvsTTRaHSrxinQYirTWXmX1Ht5Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPDyKFooGiv6fj+X9c4KXaBjvsTTRaHSrxinQYirTWXmX1Ht5Q@mail.gmail.com>

On Wed, Nov 15, 2023 at 04:51:30PM +0100, Ulf Hansson wrote:
> On Tue, 14 Nov 2023 at 22:08, Drew Fustini <dfustini@baylibre.com> wrote:
> >
> > This series adds support for the MMC controller in the T-Head TH1520
> > SoC, and it enables the eMMC and microSD slot on both the BeagleV
> > Ahead and the Sipeed LicheePi 4A.
> >
> > I tested on top of v6.6 with riscv defconfig. I was able to boot the
> > Ahead [1] and LPi4a [2] from eMMC. This patch series also exists as a
> > git branch [3].
> >
> > Note: I have only tested eMMC and microSD. I have not yet configured
> > or tested the mmc controller used for SDIO WiFi yet.
> >
> > References:
> > [1] https://gist.github.com/pdp7/881342620ec1509685f23a387e2fc8d7
> > [2] https://gist.github.com/pdp7/97017ad88d83fccac18eba69bff817b7
> > [3] https://github.com/pdp7/linux/tree/b4/th1520-mmc
> >
> > Changes in PATCH v6:
> > - set the mmc nodes to disabled in the th1520.dtsi
> 
> Patch 1 -> 3 , applied for next, thanks!
> 
> Kind regards
> Uffe

Thank you!

Drew

