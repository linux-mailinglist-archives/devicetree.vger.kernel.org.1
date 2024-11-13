Return-Path: <devicetree+bounces-121619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 767799C7A97
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 19:04:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1154B24179
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 17:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 239862022E4;
	Wed, 13 Nov 2024 17:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="R37kXKK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75D7C70835
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 17:52:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731520354; cv=none; b=uMNzUGqTF0h24WjojHZqcu0Shhkj6zrn1lYSskYAUQaLNy4np8VBNUMWOb7drGK1E88t9Zsp3Aj7GkBsyoa9+BLXKdLATkpA2da2InXELaX2mhN7begLyDCER/TVFbdnmhOIa04ymZiOsXo/nJbCmTYUJBQrNnifzS0cinqc+dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731520354; c=relaxed/simple;
	bh=Inl/RXGwUzYm2HBWsIzT7k2qdMRy01kK/7iMBmFrrI8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lvSCM3aPSW3+bXQTSC/F8MpjQSuwrHeZtSWszYxXPY6YZkp3ufW3/aRGHlOq4WX4wWhVfl//x2w27CXmzIrU0kk0dQXPBrbWbsiCJxZ/UfNjVdKlD5r2FoJeJ6R6WC+zYUCXbYGfAMrA2tGVlyUPhHRJniwg5afkg/r0GRedl7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=R37kXKK4; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20c767a9c50so72399335ad.1
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 09:52:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731520352; x=1732125152; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JzTYHEhyfkGjuQJogiAkXzIfpSGGRv5TA6Fn2K6bkhI=;
        b=R37kXKK4p0L0hOfpGR685u3OFK/7OloWCnX6UsW37JhxxeTV0I6aK+2sT6fNYdwTxE
         2cVtWanbcOvL1W26GtY++CUOEBoQ3RZkqnetMAFa5+EYFtYRKOzTB6mlQdK0QGvA0fmD
         9thb1AnZmwxOPvSf3NjBIRD/tpcIKI7hrqgUUPXYW/FcbkpB+1EY6z7nAu24bDWqcHK6
         cAPSrl+Vbt+ESpoMdmAfmAOiUUFwUxwF5Ts89c81Fc5/pvNPVZ7MA6liwtk9+V4G5ivw
         uevKcbeCI8oI04rbaBBwWlFZXSyl8XlZaR07Y34WP3WnJTkR3rp4HGiAmnk22CGr/W9V
         5gnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731520352; x=1732125152;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JzTYHEhyfkGjuQJogiAkXzIfpSGGRv5TA6Fn2K6bkhI=;
        b=VUNC7UqumQn508ji0FxMTjnaFXhyqslGhCLrpS7r+L1CZvKwMYd4vAKJ43rLufsP38
         IayTzOsE4xpKjIKwfHNk85o3gF44y+pyDZCf89kB8tf+lmIUzJ686Yl90MxyrqiDkN3J
         Q4bTIFioGLKEM8QpzU3253mHDtAwEKwd78gKLcL5/Z7cMJGq+ciE+kmntvERT2cZ5T0v
         VYezRJy+riSZy7lr5ssnznD4OU5yp+uhW5l0ckp0LXnFYQVLXKAuZZEXC0TjSBwTr/Bu
         kgUGYgv8Bs7svW871IwBKWQg8+EkvkzZhOC5KFOmiFpOqh3oT1EPJoRh0o3sRN9+RLiw
         p/wg==
X-Forwarded-Encrypted: i=1; AJvYcCUP9I0n5RUhq4tAtEusa0kTuC0wf/QXDb3M8pXJfA9YsjqTQck0pI4eWLPJPCm3uZ7LFaa2ZpqnqJdd@vger.kernel.org
X-Gm-Message-State: AOJu0YwDF9NJjIzEffIUCbUKq8eDR6ckwc1YllMNawJLaRrgpPbN3Iuv
	3sYcpW2uoCk6v47rPfpLCOOJY1hA339t4E4ncx+385+YE6GRUZ4o9C+OoKMy7g==
X-Google-Smtp-Source: AGHT+IFXn5Zf9VFbyyoUdohwRmAq++a0UnSXGYIIwLIA7XmqWnin+uF/rmhGZoku3/76bqld4xAULA==
X-Received: by 2002:a17:902:eccf:b0:20c:e2ff:4a2e with SMTP id d9443c01a7336-21183d7cf32mr329444555ad.53.1731520351829;
        Wed, 13 Nov 2024 09:52:31 -0800 (PST)
Received: from thinkpad ([117.213.102.160])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177e44586sm113178355ad.165.2024.11.13.09.52.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 09:52:31 -0800 (PST)
Date: Wed, 13 Nov 2024 23:22:22 +0530
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
Message-ID: <20241113175222.eh76hksyj6sptwvo@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <117828c6-92c4-4af4-b47e-f049f9c2cb7b@kernel.org>
 <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ed723fe1-e243-4a9e-8d1c-f29461d07cb7@kernel.org>

On Wed, Nov 13, 2024 at 11:29:48PM +0900, Damien Le Moal wrote:
> On 10/29/24 19:35, Damien Le Moal wrote:
> > On 10/17/24 10:58, Damien Le Moal wrote:
> >> This patch series fix the PCI address mapping handling of the Rockchip
> >> PCI endpoint driver, refactor some of its code, improves link training
> >> and adds handling of the PERST# signal.
> >>
> >> This series is organized as follows:
> >>  - Patch 1 fixes the rockchip ATU programming
> >>  - Patch 2, 3 and 4 introduce small code improvments
> >>  - Patch 5 implements the .align_addr() operation to make the RK3399
> >>    endpoint controller driver fully functional with the new
> >>    pci_epc_mem_map() function
> >>  - Patch 6 uses the new align_addr operation function to fix the ATU
> >>    programming for MSI IRQ data mapping
> >>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
> >>    readable
> >>  - Patch 11 introduces the .stop() endpoint controller operation to
> >>    correctly disable the endpopint controller after use
> >>  - Patch 12 improves link training
> >>  - Patch 13 implements handling of the #PERST signal
> >>  - Patch 14 adds a DT overlay file to enable EP mode and define the
> >>    PERST# GPIO (reset-gpios) property.
> >>
> >> These patches were tested using a Pine Rockpro64 board used as an
> >> endpoint with the test endpoint function driver and a prototype nvme
> >> endpoint function driver.
> > 
> > Ping ? If there are no issues, can we get this queued up ?
> 
> Mani,
> 
> Ping AGAIN !!!!
> 
> I do not see anything queued in pci/next. What is the blocker ?
> These patches have been sitting on the list for nearly a month now, PLEASE DO
> SOMETHING. Comment or apply, but please reply something.
> 

Damien,

Sorry for the late reply. Things got a bit hectic due to company onsite meeting.
I'm going through my queue now.

But FYI, I don't merge patches outside drivers/pci/endpoint/

- Mani

> > 
> >>
> >> Changes from v4:
> >>  - Added patch 6
> >>  - Added comments to patch 12 and 13 to clarify link training handling
> >>    and PERST# GPIO use.
> >>  - Added patch 14
> >>
> >> Changes from v3:
> >>  - Addressed Mani's comments (see mailing list for details).
> >>  - Removed old patch 11 (dt-binding changes) and instead use in patch 12
> >>    the already defined reset_gpios property.
> >>  - Added patch 6
> >>  - Added review tags
> >>
> >> Changes from v2:
> >>  - Split the patch series
> >>  - Corrected patch 11 to add the missing "maxItem"
> >>
> >> Changes from v1:
> >>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
> >>    1.
> >>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
> >>    (former patch 2 of v1)
> >>  - Various typos cleanups all over. Also fixed some blank space
> >>    indentation.
> >>  - Added review tags
> >>
> >> Damien Le Moal (14):
> >>   PCI: rockchip-ep: Fix address translation unit programming
> >>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
> >>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
> >>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
> >>   PCI: rockchip-ep: Implement the pci_epc_ops::align_addr() operation
> >>   PCI: rockchip-ep: Fix MSI IRQ data mapping
> >>   PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
> >>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
> >>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
> >>   PCI: rockchip-ep: Refactor endpoint link training enable
> >>   PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
> >>   PCI: rockchip-ep: Improve link training
> >>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
> >>   arm64: dts: rockchip: Add rockpro64 overlay for PCIe endpoint mode
> >>
> >>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >>  .../rockchip/rk3399-rockpro64-pcie-ep.dtso    |  20 +
> >>  drivers/pci/controller/pcie-rockchip-ep.c     | 432 ++++++++++++++----
> >>  drivers/pci/controller/pcie-rockchip-host.c   |   4 +-
> >>  drivers/pci/controller/pcie-rockchip.c        |  21 +-
> >>  drivers/pci/controller/pcie-rockchip.h        |  24 +-
> >>  6 files changed, 406 insertions(+), 96 deletions(-)
> >>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-pcie-ep.dtso
> >>
> > 
> > 
> 
> 
> -- 
> Damien Le Moal
> Western Digital Research

-- 
மணிவண்ணன் சதாசிவம்

