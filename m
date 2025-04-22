Return-Path: <devicetree+bounces-169557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA98A97503
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 21:00:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE7FF1B62405
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 19:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4653296157;
	Tue, 22 Apr 2025 19:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="JY8owS40"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79771E1E00
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 19:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745348441; cv=none; b=ccR0xi6BGAPErxtBcmrXx7Bi2QhcKiVcwFsFXxKKjl4A7VYasRD6Sl7xFc5YlvnGCs0cMmPNklVfcp7V6Ux5eDZ8XCzRUx+0MspeQZ+ZtzT6u23QYdWfbNwmHG2+kodm4NhWcoBT144rdj7xoGeDNTeiU0EalIZH6w7y0tfBcTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745348441; c=relaxed/simple;
	bh=4QLSLmrkPbs1yBBussuVmcH9d86k1ZJ8t0dZp5NXcyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eWRACCbajuThIFyOwOQsSa+Dpz7wamZ3K9OE/yZgTFkBBm2o5RLqMJYwYZJ4V3vZrkZloTVS30puH9hqvHEPTXjxdJlhACw6yaNbJiu6Bk02BmrxveS0Q3Npc9N87ZCz3Qm/as19DyqCANJhKUvt9WJvmvMQmk+s7fU+oKK1kBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=JY8owS40; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-6e8f6970326so52113236d6.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 12:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1745348437; x=1745953237; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TMh0izLSzqmAU5ORZxGehcX6J35ZOvbIe3zUy9tlNbQ=;
        b=JY8owS40K0jtYFjGrIcxtLhyDsimWfnz3h5yTgIVzRuElVJmlJtejUKPgbU/d59FzH
         MSC5YMdutpF5U5TrzKTZ4tEEAnoX31AJvZJi9BcoxUsjNBlsZwT/XLGs3PQdnqSRtbSf
         Tz9+BEKtRg033DJQzjJWU6M0t+3S6Csle0omxMsJXQxtBB9Nl+cJ0kA9OPbLljaBYiO6
         1BEiewxh8X5Cad7DJj/PMq7mXBGxiWqpmD+Yktr5aKLE94WyqP9nRUuvDv7TL8h5L8Bg
         b68MuACOKY5ZBE28Tnzo6CdslZSUTJKarqMcGjp55aEhLW6I6THokC/tX36ovO0y4Wif
         8w5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745348437; x=1745953237;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMh0izLSzqmAU5ORZxGehcX6J35ZOvbIe3zUy9tlNbQ=;
        b=t44ztrduyz0agWXmcDeu7OAxuAuzyOez5ua8JOZ/sCguOQkHHoXRoajLr/negfaInh
         lDs0lJufzNtOxBeK6KbZsB5mPYgS6KUTZCb8HU7aH8WpOW5FaVaRIYvX5oPMGkT4+j+b
         iaDJhfX6/niMJ4qg3EMwEcaJzq/1vSIiyDCR6T7yKXDjZzfpuzr9HdWbWHrhUzjfdCn7
         5u8w2z1Sw/g/X0HFdG96cZY0iwLhTBCgA9qo4yuPougR225VDYZqQNXj55PGIzfrWFm+
         aZn52jjCSZ9HdsTR4AUIYSyyp0tRyNF6qbM9m9SWT0sOASX2owq9avbosB1JabFxM7c7
         ldYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZp2zDma+5W3EB52EQWsDNMoL9g1loD8W/ijMKKD1+K8xdziw3NuM0IhcRWQslwQaQE9cG7VZj1cyj@vger.kernel.org
X-Gm-Message-State: AOJu0YzE2a+WYYJ/cymOav2IiskI+zm/3CjLEPUvyGkUb9J2ztM+ef02
	i9Bg3J9VpR3EgfqJsVwqhZ6VvrSwPlETigkTImvsHbQoavRZKvGacujc6RcQF5Y=
X-Gm-Gg: ASbGncuaKkcyg0+r7BRsr9BPesW7Z+N1m4a95Hfc68t8/N1CU5ZbQHHCGsMB6FtxnJN
	CjjqjrHkWmoeGiUmHQPo5so0sjbSBrYQl7/8xT1rERE0tx+7y3efw3qnJQxNOIRx7sAR++5p/nD
	X25Cyb/JvlbVLTj1tqMpl33mnx0z8GFECYtyjeIyaDGyHekBl4+38QnixAKnYp1aD9XegbBbwFa
	op+v5u6sO6/ycYFQ3FYs20CStn9EcxKBSmYIs4dG6ZrwZrSRfFA6/Trgd0tQ7qGQsvSYzBYfVk5
	DE0ujL7Vgrik1LKk+dTv0U0NVv6MVS+ChDwXfW42jsDeqUv61NCcVPwwgp1CAINf8RvJs8Lu4nq
	sK447lccBy7e5kH2TQoM=
X-Google-Smtp-Source: AGHT+IHbq+pHzTQuxxdUufVp0+5UWeEWnmEdvfzQVGDaZiAVyxBLUWwXVLbiir8zvtHTZQ/owxmlMQ==
X-Received: by 2002:a05:6214:3008:b0:6ea:d361:a4ca with SMTP id 6a1803df08f44-6f2c46557e7mr318335806d6.32.1745348437625;
        Tue, 22 Apr 2025 12:00:37 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-219-86.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.219.86])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f2c2c21da6sm60863536d6.98.2025.04.22.12.00.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 12:00:36 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1u7IrE-00000006vVF-1Cvg;
	Tue, 22 Apr 2025 16:00:36 -0300
Date: Tue, 22 Apr 2025 16:00:36 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: William McVicker <willmcvicker@google.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
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
Subject: Re: [PATCH v2 4/4] iommu: Get DT/ACPI parsing into the proper probe
 path
Message-ID: <20250422190036.GA1213339@ziepe.ca>
References: <cover.1740753261.git.robin.murphy@arm.com>
 <e3b191e6fd6ca9a1e84c5e5e40044faf97abb874.1740753261.git.robin.murphy@arm.com>
 <aAa2Zx86yUfayPSG@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aAa2Zx86yUfayPSG@google.com>

On Mon, Apr 21, 2025 at 02:19:35PM -0700, William McVicker wrote:
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index 1813cfd0c4bd..6d124447545c 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -1440,8 +1440,8 @@ static void platform_shutdown(struct device *_dev)
>  
>  static int platform_dma_configure(struct device *dev)
>  {
> -       struct platform_driver *drv = to_platform_driver(dev->driver);
>         struct fwnode_handle *fwnode = dev_fwnode(dev);
> +       struct platform_driver *drv;
>         enum dev_dma_attr attr;
>         int ret = 0;
>  
> @@ -1451,8 +1451,12 @@ static int platform_dma_configure(struct device *dev)
>                 attr = acpi_get_dma_attr(to_acpi_device_node(fwnode));
>                 ret = acpi_dma_configure(dev, attr);
>         }
> -       /* @drv may not be valid when we're called from the IOMMU layer */
> -       if (ret || !dev->driver || drv->driver_managed_dma)
> +       /* @dev->driver may not be valid when we're called from the IOMMU layer */
> +       if (ret || !dev->driver)
> +               return ret;
> +
> +       drv = to_platform_driver(dev->driver);
> +       if (drv->driver_managed_dma)
>                 return ret;
>  
>         ret = iommu_device_use_default_domain(dev);

The diagnosis looks right to me, but pedantically I think it should
have a READ_ONCE():

struct driver *drv = READ_ONCE(dev->driver);

And then never touch dev->driver again in the function.

Send a proper patch?

Jason

