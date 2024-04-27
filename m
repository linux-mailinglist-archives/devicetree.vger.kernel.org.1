Return-Path: <devicetree+bounces-63333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7660A8B47C9
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 22:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9D7B81C20B03
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 20:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 914CF13C83D;
	Sat, 27 Apr 2024 20:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b="RL8s896W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0757A8C1F
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 20:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714248818; cv=none; b=bedqLmDV+xqixJFgJNsTFhOyml+55oL6HiEXphiQRbQDsKRInKm+J1zSvUXdXH0V2Gkt1s7slnDbJLrEke4u9uBXy0pbg5+Mgd8+oKEmxcnf8vgX5SZJG6URs3GvP9nc0j7oPgB3y+W9/j1MRepqpMmhS3uZGXvydPrNEaynKBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714248818; c=relaxed/simple;
	bh=wGN6bj0kx4wdQZ7bd1/jkomx57IfKd1M7hVYebziA/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k1wjYFR+Cd6oSzH+z6+77p+RrFrjv23tPy0ZPX6+tez+iVEj30WREqFzUhnzywJeqDIQGhJha9meu/vYvHesjobfzk8sPGWANLyjI83I/vIc2qJ7OeMQqTWCLV2u0BVZG2XWpYqbuQmvUHSeL4saCyCrBj8Sxt3Z1tT11C09fN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se; spf=pass smtp.mailfrom=ferroamp.se; dkim=pass (2048-bit key) header.d=ferroamp-se.20230601.gappssmtp.com header.i=@ferroamp-se.20230601.gappssmtp.com header.b=RL8s896W; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ferroamp.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ferroamp.se
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2db6f5977e1so36766261fa.2
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 13:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ferroamp-se.20230601.gappssmtp.com; s=20230601; t=1714248815; x=1714853615; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=B7PcVoVCgAUFYmI7HjTKiahQ20SBHs/bY7KmtF5ZOEs=;
        b=RL8s896WiHKw/CAe6HK6UU9sZ6rjTdtD0NkGIwMqxkyu0+WT9y/NDh27hy/xIPy9of
         Bc9gWWUGklv1sGPalWA4N19xnJGgwnXwNCxUffK70xz+6AuUjO34NHMwo2+kWLrmKqm5
         egRMt8z/rO2AP+MgvjtH113CVfOObWazxCxNA8MJJy3EfROuawu38w/V8eQQBDTCm5cn
         ybXqhu9hom/oPbcDiOW0WL0M0rxAqVehGtJRMVbPQc1DZUP2EmyyLqsublL39j2NXFiB
         SK0O/kMbUga5Xm0EySTtCRJeNXqsGVzwPtNQlyhoj78J3RVEqs3fFEOqdiDInRxG088B
         dzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714248815; x=1714853615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B7PcVoVCgAUFYmI7HjTKiahQ20SBHs/bY7KmtF5ZOEs=;
        b=Z0zLpEV6yxbeKliYnl+O2t5/RhKNpaGAQt2fomqLfXFdMyowGDZRptPubjjgC3gxcE
         3D2lvrisBMbRxE3GV0mP0ka3IHBuLZBd6HR4J7DlkeEw1Hewe5QNoLeKWduSAFgIjfIV
         Pjav7TwAi+5iINhWcDJV0JNvTAv0X58Ts4aEA8HzPC2p99xacmK5deW5vjEiryLjSESX
         CJiNCPvyqFXxK2tN1Px5voPEUa6X78YsGoK3WjX14OMwq0BIzT/Y9VUtY4tI4nXoOGGX
         ZLHwsj+GEp505aa8uKF1SkOUc4vDJmDjdAgEPG5DGQb50nTS5R3i8UhbrP/xMAphjxOL
         Ui3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUKX2ztHJri/LX3lqsnbpnUD8WPfrsUe/d7x6FUsWQR7fJRH/xBY7j8R7bs03brXdTk1kOybKXFRdtfDNY+RKVG056BPFKQgCszBQ==
X-Gm-Message-State: AOJu0YzMyUt/oCbZpR1HaG0HO0gnAd0hbLatDc8r8S5AsjTk3idcPfgM
	5XDWvmMLmhjeD/vjP/wQRTao+G+SHrEx/YFJjeIa4Mdn6Xr8xIQdLHVqo8b3QaY=
X-Google-Smtp-Source: AGHT+IF6o3RLIgU5nqneRSQOEV5Q7GKgH1RiuCDeT4uFt/t6nA1KoF1F5yKLoEtiyshDT9jTj4ws2Q==
X-Received: by 2002:a05:651c:69f:b0:2d8:7bbf:fd01 with SMTP id x31-20020a05651c069f00b002d87bbffd01mr3277311ljb.15.1714248815226;
        Sat, 27 Apr 2024 13:13:35 -0700 (PDT)
Received: from builder (c188-149-135-220.bredband.tele2.se. [188.149.135.220])
        by smtp.gmail.com with ESMTPSA id e1-20020a2e9301000000b002de118decbbsm1558689ljh.53.2024.04.27.13.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 13:13:34 -0700 (PDT)
Date: Sat, 27 Apr 2024 22:13:33 +0200
From: =?iso-8859-1?Q?Ram=F3n?= Nordin Rodriguez <ramon.nordin.rodriguez@ferroamp.se>
To: Conor Dooley <conor@kernel.org>
Cc: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, horms@kernel.org, saeedm@nvidia.com,
	anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, andrew@lunn.ch, corbet@lwn.net,
	linux-doc@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, horatiu.vultur@microchip.com,
	ruanjinjie@huawei.com, steen.hegelund@microchip.com,
	vladimir.oltean@nxp.com, UNGLinuxDriver@microchip.com,
	Thorsten.Kummermehr@microchip.com, Pier.Beruto@onsemi.com,
	Selvamani.Rajagopal@onsemi.com, Nicolas.Ferre@microchip.com,
	benjamin.bigler@bernformulastudent.ch
Subject: Re: [PATCH net-next v4 11/12] microchip: lan865x: add driver support
 for Microchip's LAN865X MAC-PHY
Message-ID: <Zi1cbScrKzFN3PNT@builder>
References: <20240418125648.372526-1-Parthiban.Veerasooran@microchip.com>
 <20240418125648.372526-12-Parthiban.Veerasooran@microchip.com>
 <Zi1PxgANUWh1S0sO@builder>
 <20240427-vaporizer-pencil-be6a25030f08@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240427-vaporizer-pencil-be6a25030f08@spud>

On Sat, Apr 27, 2024 at 08:57:43PM +0100, Conor Dooley wrote:
> >  static const struct of_device_id lan865x_dt_ids[] = {
> > -       { .compatible = "microchip,lan8651", "microchip,lan8650" },
> 
> Huh, that's very strange. I don't see a single instance in the tree of a
> of_device_id struct like this with two compatibles like this (at least
> with a search of `rg "\.compatible.*\", \"" drivers/`.
> 
> Given the fallbacks in the binding, only "microchip,lan8650" actually
> needs to be here.
> 
> > +       { .compatible = "microchip,lan865x", "microchip,lan8650" },
> >         { /* Sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, lan865x_dt_ids);
> > 
> > Along with compatible = "microchip,lan865x" in the dts
> 
> Just to be clear, the compatible w/ an x is unacceptable due to the
> wildcard and the binding should stay as-is. Whatever probing bugs
> the code has need to be resolved instead :)
> 

All right, so when I change to

@@ -364,7 +364,7 @@ static void lan865x_remove(struct spi_device *spi)
 }

 static const struct of_device_id lan865x_dt_ids[] = {
-       { .compatible = "microchip,lan8651", "microchip,lan8650" },
+       { .compatible = "microchip,lan8650" },
        { /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, lan865x_dt_ids);

I still get the output
[    0.124266] SPI driver lan865x has no spi_device_id for microchip,lan8650
But the driver does probe and I get a network interface.

If no one beats me to it I'll single step the probe tomorrow.
R

