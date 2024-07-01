Return-Path: <devicetree+bounces-81874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7186091DC5A
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 12:24:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24CB71F20F4D
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 10:24:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 146E984D29;
	Mon,  1 Jul 2024 10:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="b5xSfoli"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6226682D9A
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 10:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719829427; cv=none; b=j2ZNLlodQ7trpWhs2FNLfUlclfJ88DGc9fJrp8QkbLZl/LHWGvuxc3OQ5JaLFS16W27PHiLQqr5oo9QL6dyxsd/Ffpu40OxGFsnWWHpGbtXnA0jnAb+HWrkM9AhMK2MmaiNku/o3MmNSbTyMx8MrNZXgQE13ZCovXLMMnUlYCFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719829427; c=relaxed/simple;
	bh=n94gVyy849dz93qJ6lalONV+LGkG+4MFl8sfuXXQrW4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qqH7A2dw//EasD4c43ITlkSj34FDPyytrx60wNe8LVARXZZYk69y7Q6AXzlXmPri0cPiR8YPDLvTva+CVIfBZZ82CU46ZbVOToXD3Oz7ANIoXnC20E12c2o9SwH5xbKH4GvHIb/JE6fY4raqw3Gf6iisOLoau+oMwLa4K0yBtrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=b5xSfoli; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ed5ac077f5so32785981fa.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 03:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719829423; x=1720434223; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xY8d+HAkWfCBetfPMhE7Q4IYxdRfyfvsMH6WlImrlIc=;
        b=b5xSfoli/t4FkxfWk+Ovun11PecytVZWAraFUpc5ggY2udeexqe6f20AilnRdSSCVH
         zRN7ol2WBLGcqiloHWtFbppnNxO4HpFcp9qX6Ugr8/BmqR7R/GYCfT8UZtKJYBz+3dMy
         LS93EBziPZhGRQFBnSwcfnt5n+UlkubDWF53gDi4laox13P0CranUy1Bicy1GtFwlXjU
         jLPrzB539OgFh95o3puYE9sTICk8z4SJowo1FAlCDdvreEtG0c35m/g3zZ1jX682PZB7
         4Y+VW5PQFwGlr5pP3lJGtVNmZy/Bo+42D1ctoR32CTJolNuwXpyx2Su0jPm7KMOFUmXB
         /ODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719829423; x=1720434223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xY8d+HAkWfCBetfPMhE7Q4IYxdRfyfvsMH6WlImrlIc=;
        b=IY/ArGoP3nUKBwq7CyDTV0H0I4goL3yIPtBFvuNSjRli6oZioaUbDEFB1P9d+OfPLW
         H3uUK0ZzqIAPp8UgMa2ud3XdWb5HT0JE3A6BMOOmw6gRr+/vMrlMKwr4fDzA/FXWfyIQ
         JvqCN0F+z9vITn3hWYE8ZX+ZxVbZwMvJAxz0fFDoNq3ReQ9lApmKAG31LnAlCdjwimfS
         fXaPkcqGJ9Ej8XUC6HYS7X+cziSgGNvzr+Ezm/j0YYB/IrVZoTvF1LXsIMAKzLIDLFqs
         XXxpwdRb3R2/LStYDLYbNyd1XvzYY4cb6qLEtYSUStzadvTVgMgSEimQRZrgDM0Y2kZs
         VB+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVIr5YJH/RCJ4IfgirLjxPY4mlCLbSLaFN1jKETPUq6HnY6Bb01v5GdcsVuESrK+c+Gucova437EmBlvLDzdrMTYT/3dcIJBoYBBg==
X-Gm-Message-State: AOJu0Yw4siz75kwqmWO29tSdGBvMgYod+DbgXC+IhNJn0LcZdM5T4DYe
	umHaSu+a7v0ClKB1EFEhQ+zSv68K3IlfZKvDfqHu3tdBCTaIO/nNeq2BiQbEVeA=
X-Google-Smtp-Source: AGHT+IHn1x4/AXOS/KKlqIEGbYUZOI8dBCLD27ZLb+p6WIUGXcMNUx34kmR1UcblCSl1Pa/mlV2OGg==
X-Received: by 2002:a2e:a912:0:b0:2ec:4d8d:375f with SMTP id 38308e7fff4ca-2ee5e3767fdmr37486211fa.16.1719829423583;
        Mon, 01 Jul 2024 03:23:43 -0700 (PDT)
Received: from myrica ([2.221.137.100])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4256b0621fesm146262315e9.24.2024.07.01.03.23.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 03:23:42 -0700 (PDT)
Date: Mon, 1 Jul 2024 11:24:00 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: will@kernel.org, lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	liviu.dudau@arm.com, sudeep.holla@arm.com, joro@8bytes.org
Cc: robin.murphy@arm.com, nicolinc@nvidia.com, ketanp@nvidia.com,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Enable PCIe ATS for devicetree boot
Message-ID: <20240701102400.GA2414@myrica>
References: <20240607105415.2501934-2-jean-philippe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240607105415.2501934-2-jean-philippe@linaro.org>

Hi Joerg,

On Fri, Jun 07, 2024 at 11:54:13AM +0100, Jean-Philippe Brucker wrote:
> Before enabling Address Translation Support (ATS) in endpoints, the OS
> needs to confirm that the Root Complex supports it. Obtain this
> information from the firmware description since there is no architected
> method. ACPI provides a bit via IORT tables, so add the devicetree
> equivalent.
> 
> Since v1 [1] I added the review and ack tags, thanks all. This should be
> ready to go via the IOMMU tree.

This series enables ATS for devicetree boot, and is needed on an Nvidia
system: https://lore.kernel.org/linux-arm-kernel/ZeJP6CwrZ2FSbTYm@Asurada-Nvidia/

Would you mind picking it up for v6.11?

Thanks,
Jean

> 
> [1] https://lore.kernel.org/all/20240429113938.192706-2-jean-philippe@linaro.org/
> 
> Jean-Philippe Brucker (3):
>   dt-bindings: PCI: generic: Add ats-supported property
>   iommu/of: Support ats-supported device-tree property
>   arm64: dts: fvp: Enable PCIe ATS for Base RevC FVP
> 
>  .../devicetree/bindings/pci/host-generic-pci.yaml        | 6 ++++++
>  drivers/iommu/of_iommu.c                                 | 9 +++++++++
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts                | 1 +
>  3 files changed, 16 insertions(+)
> 
> -- 
> 2.45.2
> 

