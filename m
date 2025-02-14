Return-Path: <devicetree+bounces-146840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11092A366C3
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 21:15:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EB031892CFD
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 20:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82AA51C8611;
	Fri, 14 Feb 2025 20:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="lDdgc3y7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD8F1DAC81
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 20:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739564081; cv=none; b=TmzHqMiyGNbwwbjCi2ySZrHWAfwO1g49m8UmtccEYrjt70vVR+itIcuIblNIrq/BxEByZzGslFlqORpCXGWah6Msa8lmovv7911T7oCsWzMASDoKyuCuNhbKRYYLkYKOA0lk5XV1eOIgzIZh7lY+6XjpfoqxTLhJ4N+m11n9b6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739564081; c=relaxed/simple;
	bh=YNsBtJJ9+cy2UshunM7rNUNI3Qb2RchH6uhbFDj9n5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D+mfto67bEfSSHgiPA3UZVjmcLIkOc5Zg8Yk6jGqe0jIuHxGEjOdWNkKoK27q3qmbR/M/pVfFAOn5qxy6djs12L618tQj1NAs6VK+C8Jzj/QTzLweozxNTplInx1/Bdyy6uPRyTjhCY8m9r/pESz/GThztdK0vlHjCQurLST/TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=lDdgc3y7; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7c07351d2feso361889785a.3
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 12:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1739564077; x=1740168877; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aitcMe7WROI3inmWPb5j5yTibRGZT3eFja/8dsNPCSo=;
        b=lDdgc3y71bo8L0V8hpCdEtVgcsYESprTduXIi+kFt0zRyUBJTudrWt7COhlV/BBLji
         5ZkMyQmRRCnytLs+RviwSVnWQOUoM5cP3ErSy21ZoSWjTaurrbfAeOLlOz47ThtY1fmC
         FUlgo2rNZt2vfHG+MFiY/pf6R6M/Ppt/VKABJ4J0S5yCZTzfNBiG/G8XHBO7ymhTkzq4
         20ubMy9bEoplUkIsMCUNIc3rJPoNAuW8WmZphPHnp6uSlSve6YYVLYFopk6107RDJFBN
         7obB/RiGZMO7NKpkJS8XE23hj8SP8OqV5dlORQbhZ8Cw+0rpdqFpPn+NC5hiIEfe8k0v
         yuTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739564077; x=1740168877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aitcMe7WROI3inmWPb5j5yTibRGZT3eFja/8dsNPCSo=;
        b=vFMGnwFH4jldQDcrmFfbhYeS+L1PK+L4Ni4tJkcz6dZM0jsLw8Y2E+sCIdsnSzcgBq
         Y0NRTkknaFxeZI/RssBtuZlx5hMPpgd7IJeNnwvFtQ1ThNiuCOEJbEFbnUM4nbZCfdSu
         7Z6HIX5Z5zBi8QvQz3m90Q0WunJC2BHbEWoTSco57Fuy5Tdhj3xpQNtYhK9qC9KTMLEE
         sg/XlU1HWuFhe/0Y6GtZ8k3nGfPHpx5HQR2ttfi3yHVOZclWqceTZ5TqZsX8QDoN7wcg
         OHaeICWQMBMACiWzWI5v9/v5ACWTZRIgTEsSnhjgJ73GKxF3SkYKUPRlwt7DYyHaS76i
         VzMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXw1ijPQl9So42gdemuLrBGwEYf5o/tsvbo6UBxUWI6h+zcByMDTkCXdpoXWbI4mF+Qqf5J35buuKXs@vger.kernel.org
X-Gm-Message-State: AOJu0YzrO5IQ8q3VLC5y8+Hx1sRXRRFoH6YGu8pB0cWjTCc7Mc+m59YQ
	BrODrrK5D8xty766diisv19wNLydL8QxVlZvSt6WcfRfG96mIMnDbsL9pSoBnOQ=
X-Gm-Gg: ASbGncsYfBuWUCuMTxTCmGR6rr/HfvN05DFynd7IdDVKGb9zRjyenIPjucvd/feQoE1
	AroenKZ9qkrZGd7+XfoPLu4eVZaf7322sYSnYSNsRr/aaZKVfWS+WariNevbHuT7p0kjvVYQLQx
	HaxhswKK0p/Z9L/DbnSDKklx0zNy74Iga1Kgsi8D5WuFU20iJd/WXMPvcbaoGqFJXjLibN/I7k6
	FV9LAT1WAvB5zFJSyMZzVbeSg5DWDqbhRMcVix8RoJq668mqNWzrI41a+McsHxUBqViO6GT+zMa
	5HcxJ4pnN6feq1Rr0HO+L+0Av25mSh0/CcJOwP8TwyXUDpD6vDkCSIvgY5drgtv3
X-Google-Smtp-Source: AGHT+IGnMpUVAQSaoCinCLx2FBIU+4N7ViIjMJqQfxMTZ4fEWvtSzvHCiXUgAsqSsNDrtdOvrjsIMg==
X-Received: by 2002:ad4:4eed:0:b0:6d4:e0a:230e with SMTP id 6a1803df08f44-6e66ccc114cmr11243186d6.16.1739564077030;
        Fri, 14 Feb 2025 12:14:37 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-128-5.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.128.5])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e65daffdbbsm24455776d6.99.2025.02.14.12.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 12:14:36 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1tj255-0000000GmgQ-3jtW;
	Fri, 14 Feb 2025 16:14:35 -0400
Date: Fri, 14 Feb 2025 16:14:35 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Hanjun Guo <guohanjun@huawei.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>, Russell King <linux@armlinux.org.uk>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Stuart Yoder <stuyoder@gmail.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	Nipun Gupta <nipun.gupta@amd.com>,
	Nikhil Agarwal <nikhil.agarwal@amd.com>,
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-acpi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	iommu@lists.linux.dev, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Charan Teja Kalla <quic_charante@quicinc.com>
Subject: Re: [PATCH 2/2] iommu: Get DT/ACPI parsing into the proper probe path
Message-ID: <20250214201435.GF3696814@ziepe.ca>
References: <cover.1739486121.git.robin.murphy@arm.com>
 <c2f0ae276fd5a18e1653bae8bb0c51670e35b283.1739486121.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c2f0ae276fd5a18e1653bae8bb0c51670e35b283.1739486121.git.robin.murphy@arm.com>

On Thu, Feb 13, 2025 at 11:49:00PM +0000, Robin Murphy wrote:

> much just calling the same path twice. At client driver probe time,
> dev->driver is obviously set; conversely at device_add(), or a
> subsequent bus_iommu_probe(), any device waiting for an IOMMU really

Could you put the dev->driver test into iommu_device_use_default_domain()?

It looks like many of the cases are just guarding that call.

> should *not* have a driver already, so we can use that as a condition to
> disambiguate the two cases, and avoid recursing back into the IOMMU core
> at the wrong times.

Which sounds like this:

> +		mutex_unlock(&iommu_probe_device_lock);
> +		dev->bus->dma_configure(dev);
> +		mutex_lock(&iommu_probe_device_lock);
> +	}

Shouldn't call iommu_device_use_default_domain() ?

But... I couldn't guess what the problem with calling it is?

In the not-probed case it will see dev->iommu_group is NULL and succeed.

The probed case could be prevented by checking dev->iommu_group sooner
in __iommu_probe_device()?

Anyhow, the approach seems OK

> diff --git a/drivers/acpi/scan.c b/drivers/acpi/scan.c
> index 9f4efa8f75a6..42b8f1833c3c 100644
> --- a/drivers/acpi/scan.c
> +++ b/drivers/acpi/scan.c
> @@ -1619,6 +1619,9 @@ static int acpi_iommu_configure_id(struct device *dev, const u32 *id_in)
>  {
>  	int err;
>  
> +	if (device_iommu_mapped(dev))
> +		return 0;

This is unlocked and outside a driver context, it should have a
comment explaining why races with probe can't happen?

> +	/*
> +	 * For FDT-based systems and ACPI IORT/VIOT, the common firmware parsing
> +	 * is buried in the bus dma_configure path. Properly unpicking that is
> +	 * still a fairly big job, so for now just invoke the whole thing. Our
> +	 * bus_iommu_probe() walk may see devices with drivers already bound,
> +	 * but that must mean they're already configured - either probed by
> +	 * another IOMMU, or there was no IOMMU for iommu_fwspec_init() to wait
> +	 * for - so either way we can safely skip this and avoid worrying about
> +	 * those recursing back here thinking they need a replay call.
> +	 */
> +	if (!dev->driver && dev->bus->dma_configure) {
> +		mutex_unlock(&iommu_probe_device_lock);
> +		dev->bus->dma_configure(dev);
> +		mutex_lock(&iommu_probe_device_lock);
> +	}
> +
> +	/*
> +	 * At this point, either valid devices now have a fwspec, or we can
> +	 * assume that only one of Intel, AMD, s390, PAMU or legacy SMMUv2 can
> +	 * be present, and that any of their registered instances has suitable
> +	 * ops for probing, and thus cheekily co-opt the same mechanism.
> +	 */
> +	ops = iommu_fwspec_ops(dev_iommu_fwspec_get(dev));
> +	if (!ops)
> +		return -ENODEV;
> +
>  	/* Device is probed already if in a group */
>  	if (dev->iommu_group)
>  		return 0;

This is the test I mean, if iommu_group is set then
dev->iommu->iommu_dev->ops is supposed to be valid too. It seems like
it should be done earlier..

> +	/*
> +	 * And if we do now see any replay calls, they would indicate someone
> +	 * misusing the dma_configure path outside bus code.
> +	 */
> +	if (dev_iommu_fwspec_get(dev) && dev->driver)
> +		dev_WARN(dev, "late IOMMU probe at driver bind, something fishy here!\n");

WARN_ON_ONCE or dump_stack() to get the stack trace out?

> @@ -121,6 +121,9 @@ int of_iommu_configure(struct device *dev, struct device_node *master_np,
>  	if (!master_np)
>  		return -ENODEV;
>  
> +	if (device_iommu_mapped(dev))
> +		return 0;

Same note

> @@ -151,7 +154,12 @@ int of_iommu_configure(struct device *dev, struct device_node *master_np,
>  		iommu_fwspec_free(dev);
>  	mutex_unlock(&iommu_probe_device_lock);
>  
> -	if (!err && dev->bus)
> +	/*
> +	 * If we have reason to believe the IOMMU driver missed the initial
> +	 * iommu_probe_device() call for dev, try to fix it up. This should
> +	 * no longer happen unless of_dma_configure() is being misused.
> +	 */
> +	if (!err && dev->driver)
>  		err = iommu_probe_device(dev);

This is being conservative? After some time of nobody complaining
it can be removed?

Jason

