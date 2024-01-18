Return-Path: <devicetree+bounces-33053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B09831DC4
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 17:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31FA01F263F1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 16:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ACB02C19B;
	Thu, 18 Jan 2024 16:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="An2VdQ+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90AA2C6A9
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 16:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705596494; cv=none; b=oJRayNFpG6+2BFucsHii3cJ27MGkj9reL5hgM/OdD0cM7xrETyi9tn5RmL4w4/IYVZxiOsz3umeR0jSLqXz8mF6lM0GhsH4BysBprfBpaQXZSwt3oJQLgAfFOZsOU7lEfZF589PB+WZvx/GQ9vsLtoqhRCRSZTrRi+gRcIxqcjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705596494; c=relaxed/simple;
	bh=miTJdZ7SCOy6yS2ppoUcXHEWRpKJlB39AmULp4lJO4I=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:Date:
	 From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:In-Reply-To; b=s+/dThR3Qq3KIBRYdWhTJU9ooZNrYG0UdUoZ3T7S0JXngK793nPzAATlnENffkdiF+QVMLaeNRjCjD8CWnaJFCEveFFuBKEzNNHZcODu5OrbDPOqzmUpHIqDIAR1bw+M9B+agLI6WjzLdhmYpMaF91Cu2A+b06bu0mUkuG5WXo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=An2VdQ+n; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-680a06cc763so77196086d6.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 08:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705596491; x=1706201291; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2qY+DeL2xbbKxeJ6vpnH6GuksIvi/CNqlOEIOB0QmgY=;
        b=An2VdQ+nOf1HadjrWZBagZXgdp5zAoj+cBNA4DXhFkvmek0bavGeU4mLRRHAWOdeHj
         NU6nXVFVjkFq9yOAG0AkhBzYgqkqop2CxPK+68cmDquw+2uTzPkQFVmsjAYeI3XfT//D
         4jw2J17X5YIoiFhDXP3HzRpHst+QRrEzXtsJf/y28w0GzoPGzTehf1Yn/IkheUVSJvio
         BUCrW1BQT95ZFg2FlWEcCS9fF3a44ZYu8S27sZero2LiuNwfQbELHkJxfrErB6VFk5Os
         hB8F/PufwCSf3497CYoISNGD0xUmf3o5P2jokGnbdKj+vNaA3Rc9YkKcVfEX2vO/0y+4
         b5oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705596491; x=1706201291;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2qY+DeL2xbbKxeJ6vpnH6GuksIvi/CNqlOEIOB0QmgY=;
        b=PWyy7SVYT3BgYkCMWutMwAS6t+5kiAgmkFmCWF6KPU1RfsfeU5hjzhJ2LNvdVqhc3+
         QRZXt2fOgDkNmuv0EiRlr8VEYWCFwUHIeyYAQN8q60uTBL58jllXZdcovncp/vMD89Lc
         xPZUSqW2RvCGrF8t7wzyXY99IUYAYjxgQ6GffiXcFYaY40HcEpA3bJxdJ7h1+uqudmBq
         /s7m3LS8lLfx4fPZKOJlM9jxziguJZPIbM7ui239eJz9CBmdUPlysL41I2TE30hoH6DX
         Scv7svLwCNVb5ewtpiXXfeuOWT8M1P3x0DsIwAizO8QxRIxDviE18BBOZ0f1LbcmnSQu
         OXig==
X-Gm-Message-State: AOJu0Yzyj+Y0UxQR8GBewMUguqQ8m1mD5Y4MBwEdYRYZTRSHrC7Sp3cK
	IJx9IKEx1ucKFW6Necfu87q4wHFNhk9P13CLo9svK9G4h8MCiPHj2lCrlFgMHw==
X-Google-Smtp-Source: AGHT+IEn43mNc0pGFNA/e9xCmni7wt126V5hRFFctPG+8HTvDg2gAj0BH30hir6ngmcHfGctOmNHdA==
X-Received: by 2002:ad4:5de3:0:b0:681:77d8:bafe with SMTP id jn3-20020ad45de3000000b0068177d8bafemr1096558qvb.30.1705596491547;
        Thu, 18 Jan 2024 08:48:11 -0800 (PST)
Received: from thinkpad ([117.248.2.56])
        by smtp.gmail.com with ESMTPSA id lb25-20020a056214319900b006819aeb62d6sm108106qvb.136.2024.01.18.08.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 08:48:11 -0800 (PST)
Date: Thu, 18 Jan 2024 22:17:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?iso-8859-1?Q?N=EDcolas_F_=2E_R_=2E_A_=2E?= Prado <nfraprado@collabora.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Peng Fan <peng.fan@nxp.com>, Robert Richter <rrichter@amd.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Terry Bowman <terry.bowman@amd.com>, Lukas Wunner <lukas@wunner.de>,
	Huacai Chen <chenhuacai@kernel.org>, Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH 0/9] PCI: introduce the concept of power sequencing of
 PCIe devices
Message-ID: <20240118164755.GA3253@thinkpad>
References: <20240117160748.37682-1-brgl@bgdev.pl>
 <CAL_Jsq+0xb-otvjkbLqB8gNKadVqnigwGB_k+VGrj740Y6wxjg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+0xb-otvjkbLqB8gNKadVqnigwGB_k+VGrj740Y6wxjg@mail.gmail.com>

On Thu, Jan 18, 2024 at 08:29:01AM -0600, Rob Herring wrote:
> On Wed, Jan 17, 2024 at 10:08 AM Bartosz Golaszewski <brgl@bgdev.pl> wrote:
> >
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> > The responses to the RFC were rather positive so here's a proper series.
> 
> Thanks for tackling this.
> 
> > During last year's Linux Plumbers we had several discussions centered
> > around the need to power-on PCI devices before they can be detected on
> > the bus.
> >
> > The consensus during the conference was that we need to introduce a
> > class of "PCI slot drivers" that would handle the power-sequencing.
> >
> > After some additional brain-storming with Manivannan and the realization
> > that DT maintainers won't like adding any "fake" nodes not representing
> > actual devices, we decided to reuse existing PCI infrastructure.
> 
> Thank you. :)
> 
> > The general idea is to instantiate platform devices for child nodes of
> > the PCIe port DT node. For those nodes for which a power-sequencing
> > driver exists, we bind it and let it probe. The driver then triggers a
> > rescan of the PCI bus with the aim of detecting the now powered-on
> > device. The device will consume the same DT node as the platform,
> > power-sequencing device. We use device links to make the latter become
> > the parent of the former.
> >
> > The main advantage of this approach is not modifying the existing DT in
> > any way and especially not adding any "fake" platform devices.
> 
> Suspend/resume has been brought up already, but I disagree we can
> worry about that later unless there is and always will be no power
> sequencing during suspend/resume for all devices ever. Given the
> supplies aren't standard, it wouldn't surprise me if standard PCI
> power management isn't either. The primary issue I see with this
> design is we will end up with 2 drivers doing the same power
> sequencing: the platform driver for initial power on and the device's
> PCI driver for suspend/resume.
> 

There are actually 3 drivers need to do their own power management operations:

1. PCIe device driver - Handle the PM of the device itself (shutdown, low power)
2. PCIe pwrseq driver (this one) - Control resources of the PCIe devices
3. PCIe controller driver - Control resources of PCIe controller and Link

And all of them has different responsibilities, so I do not see an issue with
that. But what is really important is that all 3 has to work in sync and that's
quite involved. That's why I thought of dealing with that later.

Moreover, even if driver (2) doesn't do any PM operations now, it won't break
anything on the currently supported platforms (Qcom). It will be a problem once
people start adding pwrseq drivers for platforms whose controller drivers are
already handling the job which is now offloaded by this driver.

- Mani

> Rob
> 

-- 
மணிவண்ணன் சதாசிவம்

