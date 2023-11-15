Return-Path: <devicetree+bounces-16017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A689B7EC816
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 17:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 512661F27B6C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 16:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A26693173A;
	Wed, 15 Nov 2023 16:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nUfT2tgM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF6731728
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 16:03:42 +0000 (UTC)
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D06195
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:03:40 -0800 (PST)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-779fb118fe4so427167085a.2
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 08:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700064219; x=1700669019; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5tDYXry5Yt4gE435+5gScTv9ABMQHbckYhe3lM02emE=;
        b=nUfT2tgMZteQ4oDEiu+lc8tSNFEpeM4gJrzawA3AQw7h67Dpb6tLhqxXPoKJlp0ilo
         F2UyEFvItcuvwRKAr4TPXjNut9YzL1f/2NmhF6MKJw/LlNrA3djGtCfMec4uneeJ4vz4
         hn0cLXu7VpuWvwZJhFHJ9AHJUHaHJQ9d9pZtPslzkHT2LZj911hkldcJrlvptQER0UHv
         GdG3wWKrdlTTuDakaYInnsSmK8f8DYVPhGQKNQMgTsQfGDykktL8FAFmFu1ar3UybwRf
         1ekFA0uhZHSmFnIzuJQVgtKAmGS59dVIFA4YVGYk71hiyGJJ7sXHNkVLtP8v7ymPYOcV
         A4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700064219; x=1700669019;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5tDYXry5Yt4gE435+5gScTv9ABMQHbckYhe3lM02emE=;
        b=McHg7xU6MjsQCwqaNtgPVg8PNi6CeXzHlcEkDnMsM89p+2ubM43xxueKVkOMIVof/n
         0efSltiI6iC+hshr/doWER6g+Fgp1DcfGxv3yn1di4BNvNedoQinw4/vRWKoOf4AIxW9
         Xp1FzVqlVay9n1N1337TlL8u/yioadqlAz/ZHcZk2+nZgqlFAN3XGICSZnrnQnZJpNE4
         uf4Df5x5zr7/qyV8eaCVs4bPNEtk0gTxVGgt0IlGKAGn+EeZqkBJmkXz8aeIRizMwanD
         o415hUPEVeTJsWw3O0GmvnkhaNdsQYd+qZRbyI5eT0NSl0jAOBx+vy/rrGD7r9Garpo1
         f7QA==
X-Gm-Message-State: AOJu0YwiQv1mY2u3QmBkxV2r2p7TOKqGUtIpe3Pbg5jtZw9MwIyYukfm
	nnysLii3jncv2O3yc1Fz3Celig==
X-Google-Smtp-Source: AGHT+IF93JhWNlbYNdOEZtUE6mCjhq9mjRfXWGgqHnPrwHynLnLGWfpW+HW6XqPiTsquRivLQ2yAuw==
X-Received: by 2002:a05:620a:3aca:b0:77a:35f:61fc with SMTP id ss10-20020a05620a3aca00b0077a035f61fcmr4931758qkn.24.1700064219254;
        Wed, 15 Nov 2023 08:03:39 -0800 (PST)
Received: from x1 ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id f5-20020ac84985000000b0041815bcea29sm3614057qtq.19.2023.11.15.08.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 08:03:38 -0800 (PST)
Date: Wed, 15 Nov 2023 11:03:37 -0500
From: Drew Fustini <dfustini@baylibre.com>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v6 5/7] riscv: dts: thead: Add TH1520 mmc controllers and
 sdhci clock
Message-ID: <ZVTr2VaZPvE45zP1@x1>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
 <20231114-th1520-mmc-v6-5-3273c661a571@baylibre.com>
 <20231114-starring-swarm-0e1b641f888c@squawk>
 <ZVP1AoosripWj3gs@x1>
 <ZVTiFVHSsBxk3pLH@xhacker>
 <ZVTi3lvSQEXeTbUN@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZVTi3lvSQEXeTbUN@xhacker>

On Wed, Nov 15, 2023 at 11:25:18PM +0800, Jisheng Zhang wrote:
> On Wed, Nov 15, 2023 at 11:22:03PM +0800, Jisheng Zhang wrote:
> > On Tue, Nov 14, 2023 at 05:30:26PM -0500, Drew Fustini wrote:
> > > On Tue, Nov 14, 2023 at 09:27:44PM +0000, Conor Dooley wrote:
> > > > On Tue, Nov 14, 2023 at 04:07:59PM -0500, Drew Fustini wrote:
> > > > 
> > > > > +	sdhci_clk: sdhci-clock {
> > > > > +		compatible = "fixed-clock";
> > > > > +		clock-frequency = <198000000>;
> > > > > +		clock-output-names = "sdhci_clk";
> > > > > +		#clock-cells = <0>;
> > > > > +	};
> > > > 
> > > > If only you had a clock driver to provide these...
> > > > 
> > > > Is someone working on a resubmission of the clock driver?
> > > 
> > > Yangtao Li posted an initial revision back [1] in May but I don't think
> > > there has been any follow up. It is for sure something we need to have
> > > in mainline so I'll take a look at getting that effort going again.
> > 
> > Hi Drew,
> > 
> > Based on Yangtao's version, I cooked an updated version in last
> > development window but still can't complete it and met some issues
> > which need the clk/pll register document.
> > IIRC, the document was released a few days ago before soc tree frozen.
> > 
> > It's nice if you can continue the effort! I'll read the sdhci driver
> > soon.
> 
> PS: I can send my updated version to you for reference tomorrow.

Thank you, that would be great!

Drew

