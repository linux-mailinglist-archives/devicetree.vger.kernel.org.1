Return-Path: <devicetree+bounces-210369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F399EB3B632
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 10:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B3EDE17C1A3
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 08:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83CFB278E7E;
	Fri, 29 Aug 2025 08:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Wy+QxUxO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E3A207A20
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756457228; cv=none; b=eifKOAr+bgMmfmTzJwId1dPRra28wSa3a/ckvxC9p1Izk1yoCqgZ/kH07iH479H0D12nMX2L1uqU8/C6ARydGJwDSfq1nTkjhl6UyK8z72OBs5TiH68vSFPNPRt0l4UUL99vtHfsZd+oSAgpaSlspnlH/MiHukYdMo4AxbbbkQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756457228; c=relaxed/simple;
	bh=y6q3l4fgdVSc7SEGga7Me2Va/ZtJeJU7aqSufeeUSl0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GVJIIwYcXqiKQBW32lrRgAohzT8RivYXhsIFH4Mw4NPIAy9PrlQoocLKIEWyxqClCuEhg6X4FjUuxLaHY4qEOQ4uIAJkjYT4fT2P9g+Ma62K3SHHgdW7A2rRV0j4Jh4nBwyUKpBju9O8x53/G0kQDIlnrMtYv2VwS8qAR2fHVz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Wy+QxUxO; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-afcb7a16441so264294066b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 01:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1756457225; x=1757062025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CIjbWzkQfbiZQvRqxwaD0JjNVVTzZG1OAG6bEKJV6mo=;
        b=Wy+QxUxOG4pjANuQNwU4s7c+WQVYjvw/8VjGCcSu5ncXuT120Jlom1Sv5V4VgeooZI
         y+DdlhehtVZr0gllR06G+1TahTqswQuq9t8fM7uu0bcftue6QQjUIdd43IKayi5KNtCS
         3SlPi91yBFyctbJmL3dqJWaau+BOGXkOZBQcloRNEtBzZ7Zl/bsGx1qpyAMCW8wwlfTH
         S+aQ4lZpNVX5LKgAtRg5ODgBcOcYDhBZF1hPxzU2RComZI2apNW7Gl+VKrVdL6vT2gdq
         WizK6DH6wKdCCGpIA1zjSnP4q7cn9uizbMilaZYTYuOk1Y8SyD4UVU5PdtBfo7ad5Giz
         caMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756457225; x=1757062025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CIjbWzkQfbiZQvRqxwaD0JjNVVTzZG1OAG6bEKJV6mo=;
        b=Ts65KYMfac7Fz54WWnZrZ1uk1n/S1dLN8BGRnPeXyz5q4EPgKuDMXa1OUrb8soDtyB
         XPkPouYLlNWPyRvuV7WVmgk8D9PeOZKiX2TLnf6ZuLABxUMrbr+IwEhTd1J39j32QiaH
         78MpwLQeX5cfPQTnPhfkT1D3uDXjfq+1Tn5GViG2lmGgeTjw05P5S//+kgL74kWTasMz
         IhjTHF7A1NP1+SJNL9GO/i8q9gLUFOUGag2EV6oKxpgK4En+tRMQFmrANxsVAaAozNNY
         R76BKeXQZrmnJJWiZvLevkGOAvaQjLCvZaz1t8Afubajd+3FA2OCyN/GkauQkaj8BLla
         xg4g==
X-Forwarded-Encrypted: i=1; AJvYcCVVgtCi/3JcF9OVRHLNuxH8SKRjEsbTUzc3iTkYer5lWMyjx/xdaZ//O4aUcoLVximw6bN47blDONS1@vger.kernel.org
X-Gm-Message-State: AOJu0YyB2EKrA1GPfD+AEuCi3h7ORzPV/plPQY2gG8ga1zB0/z3DNbt9
	bzAGB01/FicpjuUI8Wisb9GOPMArnV58GvmTcivrv8yflGMIuSaIA7eRNtVra0uMBC0=
X-Gm-Gg: ASbGnctp3DvYnU/DkxmMSjM5fDZhb+1AyeNTU2U5Usa+s47qfbsaKEIr/rMvazuQa2z
	xjVCtdOtX6cZ0pXeHEgGL9JwaDkHQDIAULFU+cFo5VObsWmJGHzCuV6YZi48QhBwYLxl/YEZCZl
	lFa0u8iCAlZyj3CYQ3lNvJIo56zvz82tob/miYJVrqiA//V4yyyxMsPB8dCXraqC50GPcPdziq+
	Mx2pT8l3N96LwBUCBK36qByYe6E20M0GzxWzjhZUfXOf2MlAhgsyxsKrdLujOJR99YwijeB1dAO
	AFeIgFyNDvbGUDV+9tY10c1DP4EewiEvLS2u+SCetX9MsLt/K9ri6TC71+CoJ7jzXwz7yRRcygQ
	R0vI+IBQUH/d41o3VpO0CttV03jvNT1stdijVcVwCMEOd5/PJJrYBPjOlVYqxnGTId5Zjey9kaq
	NwzEFivzKmjFHtZ/zg
X-Google-Smtp-Source: AGHT+IErTYPB0ZCtNXtBGMM05Ddun8cHbo2OACk+cXvTX6zjrrSwmnOgjIMwSDpKlFVkBbllKUdVtA==
X-Received: by 2002:a17:907:2d10:b0:afe:c1e4:5554 with SMTP id a640c23a62f3a-afec1e457b6mr893166266b.38.1756457224579;
        Fri, 29 Aug 2025 01:47:04 -0700 (PDT)
Received: from localhost (host-79-36-0-44.retail.telecomitalia.it. [79.36.0.44])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afefcc695cesm149130766b.97.2025.08.29.01.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 01:47:04 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Fri, 29 Aug 2025 10:48:58 +0200
To: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	wahrenst@gmx.net, linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, iivanov@suse.de, svarbanov@suse.de,
	mbrugger@suse.com, Jonathan Bell <jonathan@raspberrypi.com>,
	Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH v4 3/3] arm64: defconfig: Enable BCM2712 on-chip pin
 controller driver
Message-ID: <aLFpeuwoh1g2IKYI@apocalypse>
References: <cover.1756372805.git.andrea.porta@suse.com>
 <38704a5ab6913845bbf9178170e83004ab3e8fcf.1756372805.git.andrea.porta@suse.com>
 <fac53dd3-9774-4a14-9557-19c2a2532a0d@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fac53dd3-9774-4a14-9557-19c2a2532a0d@broadcom.com>

Hi Florian,

On 10:19 Thu 28 Aug     , Florian Fainelli wrote:
> On 8/28/25 05:47, Andrea della Porta wrote:
> > Select the on-chip pin controller driver for BCM2712 SoC.
> > 
> > On RapsberryPi 5 devices it is primarily needed to operate the
> > bluetooth and WiFi devices, to configure the uSD interface
> > and the power button.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >   arch/arm64/configs/defconfig | 2 ++
> >   1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 58f87d09366c..d4c3853d885d 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -592,6 +592,8 @@ CONFIG_SPI_TEGRA114=m
> >   CONFIG_SPI_SPIDEV=m
> >   CONFIG_SPMI=y
> >   CONFIG_SPMI_MTK_PMIF=m
> > +CONFIG_PINCTRL_BRCMSTB=y
> > +CONFIG_PINCTRL_BCM2712=y
> 
> Do those need to be built-in or does it work good enough if you have them as
> loadable modules?

They do work reasonably well as modules too, but you need to add
them to initrd, the reason being that this patch [1] is referencing
the pinctrl driver from the SD card node so you need them early or
you won't be able to boot from SD.

Also, since many other nodes will reference the SoC pin controller,
I would expect some minor latency due to deferred probe, so keeping
them as built-in could bring some performance benefit.

A minor note: skimming through defconfig it seems that most pinctrl
drivers are built-ins, so I would stick to that too.

Many thanks,
Andrea


Links

1 - https://lore.kernel.org/all/5ceba8558e0007a9685f19b51d681d0ce79e7634.1756386531.git.andrea.porta@suse.com/
 
> -- 
> Florian

