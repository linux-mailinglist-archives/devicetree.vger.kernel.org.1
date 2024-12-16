Return-Path: <devicetree+bounces-131247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7A59F29BB
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 06:50:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6980C164BAA
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 05:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D93901C5480;
	Mon, 16 Dec 2024 05:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DZrRdmve"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286BF1C460B
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 05:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734328208; cv=none; b=HsnyxPgdvggDIgcDdiEaFvAlcVMNlTlYEmdTKPg/PaZRQ2VVfzoLYPA+MI7t2xmWibMuDoHO7SfE3th0d8ok3b26xK+iE/ms/LbhjVq3iTu8hRRcDk8iGm3/YVXD8yveWN5MeZkpmfz6N0TSRqOdp+c9CC8BtcLdHaWdzRzFtMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734328208; c=relaxed/simple;
	bh=2cTsVnfM7XIIl/u9mvOvjh+B2EB2+2cTlJ0+vGQVXwg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e/UzulZw6pXQXpUlNzYsnQ2MsD/FDT50R8gD16haka7XM/VkofdR6qNeimYKU3eAK/OU37GrbAZ4nsRxVxa2OOUPusC8TooGUdu9csKiHAkjJb4vG5BDm31wyE0I5CXGdhXynWUHEXLYRvOm0GbRwRDJ3dXqWfGqUO/tmXBsDUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DZrRdmve; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-728e3826211so2777587b3a.0
        for <devicetree@vger.kernel.org>; Sun, 15 Dec 2024 21:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734328206; x=1734933006; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NfDqFw/0Ge6ACx4gypsP30h0WumL7JDvT7ybs468exc=;
        b=DZrRdmveMyawvqK4vrDeb33/JM3GWMecsIqKvpiWIELwYQRK5ZYOeBWze4nWUichBD
         +LWQjKCl9JlbRACN/4L/4t7YKt/rq0btYDb3vMNHJt5aN3p1ypIcRBPRSHV3njMAGarV
         LcmMmaw6+tL05ziZDzux5RX99Jrm6NP46FDuigFGUVM/nae9gGtXKgV0RL1wopxJve6w
         BEudUxTn4lwWhQs4/HzrDmc+Yjap5Wv3yMhldEEvDfDZ2JAoYVlQXX7ArVWcV5BMupja
         ofW83ZtNU5n3wSnT9QfOrItyyX8vvThCk9rDUxxf81TgG5fY4s/Rv3Nu5oY3ZyhaQw59
         t1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734328206; x=1734933006;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NfDqFw/0Ge6ACx4gypsP30h0WumL7JDvT7ybs468exc=;
        b=ZVVjYtEatsnZZQacvCw2gQqxX0JZrxSyP68td834EYgezjFubHj9na7JdYQDH3+lCv
         guCX6o7haMxjGNMaEHukUOk9un1eh8xXVhczp5dx6ImyJPc8uEKHwUKAhDu4ezFFv+FV
         AYqQf7LU0HyzTna0N7BFGJdtC9iidbphe7wU5nltzLn9+2FeXcrGN/OG1CHdnxo8rLZB
         uNssYkm4Yqnm6Mh2ExcmHfVl5s1xJ1CjJfuIK4KzgQcK4RUvny87kv+dRb68zeH/Geir
         Ho4Pi9TJWSF/QMkf2Xw6bJ4SAtDQT+bBeXL41Du5djWmFkdS2q9t1uoihWY2JUGmWlkl
         h3iw==
X-Forwarded-Encrypted: i=1; AJvYcCUsu1XYMsAurI1i8P6RSz64g+l5nVgp0AxdDaQo2Qb29m1HEuMj1/+i+0i31M2OMjLZ3uVp/5ezWPRl@vger.kernel.org
X-Gm-Message-State: AOJu0YwrKASmdy5l0qrn+uvt0sdV0dQzuGGn8lLCcKJjwkDwFfXIlHg4
	kf4uL3hXLRJhY3OKiOjb6BgMt6Gf9bMuuOwooaOF2hgiHPufXfO6eRj+k4EQjw==
X-Gm-Gg: ASbGncuIwZZobL4FtkO2bsnRwjayTbuMCFWFbuw7I6jRI16IZHZZt06gxVFzU/P4W5+
	uLUtLGh24pWKRxHWxGWCLj6k8NhmTuqedPD3vr4zJJmjfBWronhhtgKYumMLQuVImELlSh8efU2
	V5b5xvbDMO+UOzNmOe0w2O3vPfAMpWgwx75sSXHLr5mY+qeoexXIHrGuR9zBThVONiZ6DN1bWD+
	lDDG0G/Get39FkPQwU7O2jIAIcniQQNiJctRbeUxJ7uJlkseiapEzyLTCqzdCsmg58=
X-Google-Smtp-Source: AGHT+IGUEcdN6e9X082bHyB6rQbbINwZc/qg8MyVv7F/1/9Ib1cCa0Aa+2Iy8tnbGGf2gmSSQGQfZw==
X-Received: by 2002:a05:6a00:4386:b0:725:e4b9:a600 with SMTP id d2e1a72fcca58-7290c24cceamr15300939b3a.16.1734328206422;
        Sun, 15 Dec 2024 21:50:06 -0800 (PST)
Received: from thinkpad ([120.60.56.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bad802sm4004227b3a.141.2024.12.15.21.50.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 21:50:05 -0800 (PST)
Date: Mon, 16 Dec 2024 11:19:53 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241216054953.kj43om6fbjksbjcy@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>

On Thu, Oct 17, 2024 at 10:58:35AM +0900, Damien Le Moal wrote:
> This patch series fix the PCI address mapping handling of the Rockchip
> PCI endpoint driver, refactor some of its code, improves link training
> and adds handling of the PERST# signal.
> 
> This series is organized as follows:
>  - Patch 1 fixes the rockchip ATU programming
>  - Patch 2, 3 and 4 introduce small code improvments
>  - Patch 5 implements the .align_addr() operation to make the RK3399
>    endpoint controller driver fully functional with the new
>    pci_epc_mem_map() function
>  - Patch 6 uses the new align_addr operation function to fix the ATU
>    programming for MSI IRQ data mapping
>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
>    readable
>  - Patch 11 introduces the .stop() endpoint controller operation to
>    correctly disable the endpopint controller after use
>  - Patch 12 improves link training
>  - Patch 13 implements handling of the #PERST signal
>  - Patch 14 adds a DT overlay file to enable EP mode and define the
>    PERST# GPIO (reset-gpios) property.
> 

Damien, please wait for my review before spinning the next revision. Sorry for
the delay.

- Mani

> These patches were tested using a Pine Rockpro64 board used as an
> endpoint with the test endpoint function driver and a prototype nvme
> endpoint function driver.
> 
> Changes from v4:
>  - Added patch 6
>  - Added comments to patch 12 and 13 to clarify link training handling
>    and PERST# GPIO use.
>  - Added patch 14
> 
> Changes from v3:
>  - Addressed Mani's comments (see mailing list for details).
>  - Removed old patch 11 (dt-binding changes) and instead use in patch 12
>    the already defined reset_gpios property.
>  - Added patch 6
>  - Added review tags
> 
> Changes from v2:
>  - Split the patch series
>  - Corrected patch 11 to add the missing "maxItem"
> 
> Changes from v1:
>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
>    1.
>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
>    (former patch 2 of v1)
>  - Various typos cleanups all over. Also fixed some blank space
>    indentation.
>  - Added review tags
> 
> Damien Le Moal (14):
>   PCI: rockchip-ep: Fix address translation unit programming
>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
>   PCI: rockchip-ep: Implement the pci_epc_ops::align_addr() operation
>   PCI: rockchip-ep: Fix MSI IRQ data mapping
>   PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
>   PCI: rockchip-ep: Refactor endpoint link training enable
>   PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
>   PCI: rockchip-ep: Improve link training
>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
>   arm64: dts: rockchip: Add rockpro64 overlay for PCIe endpoint mode
> 
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3399-rockpro64-pcie-ep.dtso    |  20 +
>  drivers/pci/controller/pcie-rockchip-ep.c     | 432 ++++++++++++++----
>  drivers/pci/controller/pcie-rockchip-host.c   |   4 +-
>  drivers/pci/controller/pcie-rockchip.c        |  21 +-
>  drivers/pci/controller/pcie-rockchip.h        |  24 +-
>  6 files changed, 406 insertions(+), 96 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso
> 
> -- 
> 2.47.0
> 

-- 
மணிவண்ணன் சதாசிவம்

