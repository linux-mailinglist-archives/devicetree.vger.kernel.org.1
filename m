Return-Path: <devicetree+bounces-141157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1A3A1D956
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 16:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDBEE3A6A8A
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 15:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 885DC1422D4;
	Mon, 27 Jan 2025 15:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P249/K6n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DA86A33B
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 15:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737990976; cv=none; b=VJbaNJToZFu/X1bgyacdusomKgNTiOlu3KNmuYIMOJdCWwTzjM3yX2NCTvhcgRo8s5hFwo2h8cPAiT0tUNnooacx8Ra4CeZ8CA1pXz44T1jC0MZf/5qaD5kvT+Pqpy0Bha+pZlMi6+QZd3wfGu9Fm4ioK0xI8j4cyyEA/h9s+N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737990976; c=relaxed/simple;
	bh=uGfClbJNYW3WlXwU/kbZPJMDflOSclIXAFXm1sTN3xw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aenqMHVR/R6A8+tdXb4b42sQj4Rq2GqMvLu++qdgyI5kMA3rvTSHMY9P2gLsS3TEEYG35j+g3aNEGb2qgvf4A6P4J5y1L3XbifNjC6+GhLU8g+UeC5JImBCKx0Vbm9VZWBCfdnCYo4gRniZxTmfqJppVRcGUomvRaZTh8Jdg0cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P249/K6n; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e46ebe19489so6117645276.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 07:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737990972; x=1738595772; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z3fdf68cKnEaIGamBbArQHWaVBKPqUrbMqE+m1JNXYk=;
        b=P249/K6n+pRZlUb3RP47FXUAiuvAYDnyTJ7eo6HO99aHQ8RO+lAxmT+hps3b3tMjKr
         HhJDZRtWu5jtGzfclCyWYCdbd4bszyXHLc6azDkMFdVxtdj375IOz2sx8wzBvruict8l
         FtsLx8m8/j7CB7tta0vO8EzAO5lMive22ng4Ru2wjhua1+Q5hdACb2KNTfKFs1Ba4kMk
         XEPVMh/OMGacEnyXv6z9Wu5W5L/puFemRbssuXZzkaS0mgYM3A8JyZDHsYmmWak174+V
         t8bxBtX8iy3fXMCZrOCHqz5JwH3YtwoNkqUZ+816ykY/Jxzj/qSwN+zqvkcg/I3Lt/Bz
         Hx+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737990972; x=1738595772;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z3fdf68cKnEaIGamBbArQHWaVBKPqUrbMqE+m1JNXYk=;
        b=WQxn3lFCxt3Hth7sFiT0Sy7WSfegWNYyYvy2u9ak7WUC9O5gcRBvgyuilLLX2N1mE2
         s4sBnpyOVyeW8lIq1Pf8+FvAbIhz5kDwEQHWoi6jH804IGYkuEo+VsmxU3BL0XkeH1Ri
         Xy7k3K7U0rkg+giYTznsQZoCh4KNKkarXedDjJXDQ8Goe7iEuGZagb65Nzgelwd56Ftc
         Aeu86j9skcsszjEukSVxaXYp9BklHjhYVE4CRumHa2mR0el/I+U9Ehzf9kky68GCLSaW
         04LUEA0Sjvi2mkrPlvv4kLcntVgfGm2kJkzxyeJlUEFWmqujAPK69ImtpmHAaFBbLpEg
         aiRg==
X-Forwarded-Encrypted: i=1; AJvYcCXF+xrdzqvqdKUGHol6o5zUVVjaqD8ZL3MAdD18VYLrS3ryAQZk1M/koAwziFt6U88QvnPGnmJlJkI/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyrw1TrkOJ6NkBKBf4wYAq/0QBvwBbgMVsqlbc6e0l3r4TOfHIk
	5vHl/WLBszHD03H2/3RXUrGoSapI5E0+bxONuwaZXTD999DaQGhgaUEd75LAESd4QtUjeltHxT3
	bFQtb9Ef98sRNkH0OtlKabpVn/XjN0kjcXgXkGw==
X-Gm-Gg: ASbGncuEAS42JGFaO4sGQ1Qz42tJ1ctVPVz2prYI+iNsb3YmaWt2y1XAQmyp39fzTcn
	euRcTUPJZh9h7wvzX0htq29JeslcIfQoMUoPGOzGF0G29CbcU3UpJeN+5SrdkUAg=
X-Google-Smtp-Source: AGHT+IE7Vja9677she6CObvFAbVBiI5Ys+p+eByoUyFiITh4qV3MJatrF8vKcAYHzhv31KbUMJyT51BBZJ0PLRNDtTM=
X-Received: by 2002:a05:6902:150c:b0:e57:88a0:3ca with SMTP id
 3f1490d57ef6-e57b1344ac2mr27218044276.40.1737990972298; Mon, 27 Jan 2025
 07:16:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250120184728.18325-1-ansuelsmth@gmail.com> <20250120184728.18325-2-ansuelsmth@gmail.com>
 <20250121-zippy-umber-fossa-abbfb0@krzk-bin> <679770d8.7b0a0220.b6f23.38b4@mx.google.com>
In-Reply-To: <679770d8.7b0a0220.b6f23.38b4@mx.google.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 27 Jan 2025 16:15:36 +0100
X-Gm-Features: AWEUYZnk9Xh1b_Hveu4tndN_oObnjQYSeVJzcpRRCX5DJCyFhAmHsJWAlWuduBA
Message-ID: <CAPDyKFoEDbSfQA3xPCUPsJCOdiDVdAjB1Fno=S7yrqJXSqnfXA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] mmc: mtk-sd: add support for AN7581 MMC Host
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Chaotian Jing <chaotian.jing@mediatek.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Wenbin Mei <wenbin.mei@mediatek.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Mon, 27 Jan 2025 at 12:41, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
> On Tue, Jan 21, 2025 at 08:59:19AM +0100, Krzysztof Kozlowski wrote:
> > On Mon, Jan 20, 2025 at 07:47:02PM +0100, Christian Marangi wrote:
> > > -                   pinctrl_select_state(host->pinctrl, host->pins_uhs);
> > > +                   /* Skip setting uhs pins if not supported */
> > > +                   if (host->pins_uhs)
> > > +                           pinctrl_select_state(host->pinctrl, host->pins_uhs);
> > >             } else {
> > >                     dev_pm_clear_wake_irq(host->dev);
> > >             }
> > > @@ -2816,9 +2835,12 @@ static int msdc_of_clock_parse(struct platform_device *pdev,
> > >     if (IS_ERR(host->src_clk))
> > >             return PTR_ERR(host->src_clk);
> > >
> > > -   host->h_clk = devm_clk_get(&pdev->dev, "hclk");
> > > -   if (IS_ERR(host->h_clk))
> > > -           return PTR_ERR(host->h_clk);
> > > +   /* AN7581 SoC doesn't have hclk */
> > > +   if (!device_is_compatible(&pdev->dev, "airoha,an7581-mmc")) {
> >
> > Please avoid coding compatible in multiple places. Not only because
> > above check is slow comparing to check on integer, but it just scales
> > poorly and leads to less readable further code. Use driver data with
> > model name or flags/quirks bitmask.
> >
>
> I implemented this in a more compatible way so we don't need an
> additional compatible anymore. Soo this series is not needed anymore.
>
> Should I flag these as not applicable anywhere in the patchwork systems?

No need to, just send new versions.

Kind regards
Uffe

