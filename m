Return-Path: <devicetree+bounces-207347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B90FFB2F414
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:36:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8F8C568750
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8324A2EE61D;
	Thu, 21 Aug 2025 09:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="T8ff140E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76CDE2D47E2
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 09:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755768852; cv=none; b=WdS6VOp13KftT9FeRw3F7+qL9ufnhQUDCdtpQL1d9VTUteMhy6GkHLN35W2fk9cGzFCofJXds0LRM/BFA/cTPxXuf2XVVf/zjZIASMVHKk+kpCMAWeBph6rP2uEO0KVTz/igGO8KJrfeMlU+HkZuCOuoPxfh0XULzTwYLUhX1g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755768852; c=relaxed/simple;
	bh=PNb/nRsrwcOa6HJppSS/RjzXDIpOjCmhW2yjf0ZaEM0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rCNkhnMJoXc/y30QMYz8TMJFPV5vcRO4cZyTyB4PGz00KsHmhxRJDoYTV5XlYuqr2nPYzGJyHk2O1q3Z+eKxrcfsXk/vmrxVnhM2Lbgsk9sWcbzmZvaOWAilWGenGOVJvmr2/9frxJm4HY6UFF/vhK+PXfJL+nbCbczHsud/S9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=T8ff140E; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afcb7a7bad8so114249166b.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 02:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1755768848; x=1756373648; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/ojUaTpvSXrb1YYw6X/ClOYy1t7RbcHRqQubeSVaCHY=;
        b=T8ff140ELmhvUmLOgm1aUrKOHy6927rQh06wP/kR+Z3/t+AfNQ2B6PqniiiYZipO6o
         i0pve8aGPZA98gvBNKABbsQp2JeOWNmN+prarI2FUMsnpt9SLHBFcRr7GUqp1QcjP99p
         vysmHSmby0G2i4YLiRBAW92I5z+orngT81xTvdSfDk+XDOtMXJh1uuJPvUEiwVjoQb9H
         Kp8/k+zdwmLQSFVYOffokg1olT5/uGfMjMd+yNYK+jF+HWUAA0/qPmsapDmamRvWgLTS
         JasJiD/QhpQ2HMyN9DBGQEzwG07GITqFm9VkbWAQLNwER3E6C8Mw+N4YFIgBn8keD+Is
         XNiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755768848; x=1756373648;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ojUaTpvSXrb1YYw6X/ClOYy1t7RbcHRqQubeSVaCHY=;
        b=C7YarfFXXxCnfrifbfoDdfg2IVLmK2GhEgiPF6BAmKERBRyRhQGcB46bhFtNvTbFxf
         +n2GyVisHg0+iwYDnyG/JEm+sZwflgXI4aBSNvg7agxk6KX4ovvy93ZTAnKq4a7YHytU
         vVlbUCxFgNY4/o7ANfJFNV8R/4OoiCches9SIxJM/9qe81C1kQoch1fCwHX4oNX+mPFL
         1vM+t0cL7UTiT/Tl+9+TT+5azOzrHahiUVNpoIaVpxQH3akJxowTZFHxzPCyHO30sYYn
         sfHn3Tbr/SD+2goOGBnVAou2oINRbrRmNowU/o6pysNfGr+CseexEbIqPcjrKwcn5m+O
         +oXA==
X-Forwarded-Encrypted: i=1; AJvYcCXDbN2fXpluZfqFMoKoSLw9Y3kkMGWdsO7km4jsQSWOeA1POt5sdhEMWmrdI46zL5a8wLJ87YTXEU8t@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/A262ZrU4LSnCxGNhtK4eSlf91Uw1111V8EQcbS3aBQ8OJj8f
	AGVleDRG1niXGYxYNMLoFUnFzT563zIpsVW0eLlZIFKnl4BDtQe/jRPG/B4x/La5ezI=
X-Gm-Gg: ASbGnct4v9rF0B8rmB+vcyiruCYyW7bzUZw1Qokvw6EcPYANvD87zz9+ZB1DoEfUiVz
	QXe6kLMCqFhoLdx03daxMij9GVpch/lyAoeCjC23grteOXNQm8hE46Ixu8iipsezEuhh8EtKlIN
	G1Y0e1ELCJmKueeDbA1LEuPIqrQaITRnnSzF1S94dcBOrCigrtT77qwO3LLr8BoMsKI0vouGuOR
	y7Blqk9E2BhGwPnevyf8BLMJNF+JIT5YdS0MKRaqXLBz4WfNnkXYxYgQmuzIFZt8QI/aL1WL3to
	dCESyoNvcEOXx95tWXqx8HTv/5JVJU6l4kd/5+MsxssyKmfgHAZuottsAZxgy1oepsTZavqTVJG
	2fS0fpyqI9JdrGuBiXqg2VabM9FyCrxUfuCafKh6gYNkwJkAkNk+j02zbKKbY
X-Google-Smtp-Source: AGHT+IGPCUQP85VmKt4U/J+vg5UYsiEcQk49TrIi2gpsuaTBNikjE5BQOCAgsWj7wUzO+PxhtVD0Ow==
X-Received: by 2002:a17:906:6a0c:b0:ae0:c943:785c with SMTP id a640c23a62f3a-afe07b35df2mr161258766b.35.1755768847653;
        Thu, 21 Aug 2025 02:34:07 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded2bc305sm350000666b.18.2025.08.21.02.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 02:34:07 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Thu, 21 Aug 2025 11:35:59 +0200
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	florian.fainelli@broadcom.com, wahrenst@gmx.net,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, mbrugger@suse.com,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v3 3/3] arm64: defconfig: Enable BCM2712 on-chip pin
 controller driver
Message-ID: <aKbofxfSKO4oGKHG@apocalypse>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <04c67a8fc50f2688fd3a6616bc03b3ac4d4977fb.1754922935.git.andrea.porta@suse.com>
 <570088fa-2861-487a-a2db-2d1d87d700f6@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <570088fa-2861-487a-a2db-2d1d87d700f6@suse.de>

Hi Stanimir,

On 10:25 Tue 19 Aug     , Stanimir Varbanov wrote:
> Hi Andrea,
> 
> On 8/11/25 5:46 PM, Andrea della Porta wrote:
> > Select the on-chip pin controller driver for BCM2712 SoC.
> > 
> > On RapsberryPi 5 devices it is primarily needed to operate the
> > bluetooth and WiFi devices, to configure the uSD interface
> > and the power button.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 58f87d09366c..fafcd7851eb2 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -592,6 +592,7 @@ CONFIG_SPI_TEGRA114=m
> >  CONFIG_SPI_SPIDEV=m
> >  CONFIG_SPMI=y
> >  CONFIG_SPMI_MTK_PMIF=m
> > +CONFIG_PINCTRL_BRCMSTB=y
> 
> Have you tried as module and part of initramfs?

Yes, it works.

Thanks,
Andrea

> 
> ~Stan

