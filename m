Return-Path: <devicetree+bounces-215043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A44D1B501FD
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 17:59:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5FD0D4E866A
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 15:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3190932CF95;
	Tue,  9 Sep 2025 15:58:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="QnkO6dan"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8812B31815E
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 15:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757433531; cv=none; b=muqzvAgF37Dl3FmXtY2fBNEb1jsNgyAh7Shg66g3ui9aXJGoSz7LdkZI3voe/I4FzXiwImVLKlDy+jl6UL1W9Q3mbAfRuwZc8T7FBWhLT6Bw6bbjQEJwx/DP15xf6Sq5nHrakcQrDXtrZ3jBtU+2bb8rZU7q3AQQNzrM0nIe2Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757433531; c=relaxed/simple;
	bh=bKYz3c9y+gNOcYf7TFJwhjWkpIADlCUKYQIpmt+9Y2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FAEZgXoD06DQQl9bGx6iserOXrOR+n7YImDwJNSHV1lZ2oHOjPGwZkU+xkFrexmV7tmxqVowy3AflKAe9x6vARXSRUpOXgJ+lmeosEKXQM5RyYXzdL2PzQ0q0IK4lG/iSDYKWcZhPnzfueUfa3pFDA4fq3A4d5oTOg3mPra2YCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=QnkO6dan; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-811dc3fdc11so245492485a.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1757433528; x=1758038328; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xhvGZRaKvGOKbFuieB7cy8gqgC/YDYs/ewa6xCzMoyM=;
        b=QnkO6danjCWSXnSRiDCPh+WUqQU4bdhkGB0ewb0sabuOszFIUOdT0fdmbAs8SpKmp6
         kaT49mynLj9bJkxDR+nXijX4iFV2MbcwcUkd0R2+6drxmdjS/bRizrVm1eDgu0PqdtAF
         9NsU2shxt0z6ChVJd9aNhy/EMMShsr1KVH4zh8SM0rWzngzTIyDiEf7TbrQ2AI73Dpcv
         mh+Q0L4YpeLExfS0S0dJtaIJKYilJ6/fCDrrdUFah2m7ccRePrnXf710nKQt4vxEN763
         bxv7S3w4DlE1I9JTOVHf6yiDZb5d2CS3pZ/piSw+m4SMMlOT7AOzs+jzDb06IPXvt+5G
         Pgsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757433528; x=1758038328;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xhvGZRaKvGOKbFuieB7cy8gqgC/YDYs/ewa6xCzMoyM=;
        b=m3ZlPTwqhmPeSv6vhROCiMX8Tle070LaU4ZAcpwRD5d5PQPaS+agQAVKJSiIlmTG1r
         gqimUzoYPeZArB+YP8Gq/cCwEYNgwHQgGbuWsiX4EEgdpdpPO9CYMSx98lvy/eNClROd
         zUdWqcH2E5+9uYjyoXudJKrj+vf8ugWrnKBGvPfUqRD+8U55RkKq9d7XZ0VTVPAmYaFy
         wvR6mD7p6OoJ9bATp2TRnoyL6M5zdV3yIcsGUFA75jAr8Nqsrt8v9WfTu5tbfYJzQavH
         bt7XURwe2oWcHXN/BSEnmTtpZ/oZ9sCpmn8tE49/qTULuG30Hmz2QesYtBzVtLOlox0w
         DTTA==
X-Forwarded-Encrypted: i=1; AJvYcCUU64GfqYoD3AkPGqHI+bhUM2MTXgBKJ9nbv3Xz0jPOq1zQ4qgsQcffQizUWP2yOH6bjiOYuE1Am0cQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxczvKYS29wEN/sYlGQPXkqIFFFs2vlqCEH2+5mVzoUVpY69xn+
	RDBp9ui7Td3d3vN8rJzSvZsz3Lbd/K7xOSPlG1em5geXlpFYdpOX4YwSc7Mnip/zzTA=
X-Gm-Gg: ASbGncs0Zba9ioaoax2ejwSaHuBtAU74DOWYAolyV2WwRSbsi+NR20rfhHx0iui6AhI
	M7cJMykS72D+xhvyOT/5RhjCOyKqc3l1pgmA9t4aeVtb922m8V9Vz/ChJJc2YBGUkjIC2reXJwF
	mcwDyCKFX3/Su+TtYlesIFjfBTtjPxTFWS1MF9HsymO2OKMYf20kmv9HhIgKFduXhvxddBrEaS9
	3N3ZxSApAUrdpgOrUywumybCFO2RaMOsQZ5I93nAKlloc8T5RiF4gUhTxEaUgGOwSRvoV8W0qYb
	c1KZPU/IX8Rb9MbTTEnLDxX6qfKcJnQGUjPx4pYmsvRYKBxr0dhQG1UB+DMC3O6XiRkl6dO1Bgc
	Uz1JkJm09fbt7tSLO7eXQPVcI4h4yCn9hUEaggLSRD4dTEcv1FpQwe0+F/fyA+8KaspmCCUk8Sw
	KTYz0=
X-Google-Smtp-Source: AGHT+IHIkjBRe7yt4WbOZJ/YpK79iphLy2T8QoB+1HLpvRtSFAYohJmx9nvB2OQluCbq6HB69MOUdw==
X-Received: by 2002:a05:620a:4609:b0:816:638f:4ab0 with SMTP id af79cd13be357-816638f4eebmr916110485a.27.1757433528370;
        Tue, 09 Sep 2025 08:58:48 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-47-55-120-4.dhcp-dynamic.fibreop.ns.bellaliant.net. [47.55.120.4])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-81b58d4957fsm141532185a.3.2025.09.09.08.58.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 08:58:47 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uw0k3-00000003iHY-0OSc;
	Tue, 09 Sep 2025 12:58:47 -0300
Date: Tue, 9 Sep 2025 12:58:47 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: thierry.reding@gmail.com, robin.murphy@arm.com, robh@kernel.org,
	joro@8bytes.org, iommu@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	virtualization@lists.linux.dev, will@kernel.org,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 4/4] drivers: iommu: refactor arm_smmu_get_resv_regions
Message-ID: <20250909155847.GB882933@ziepe.ca>
References: <20250909154600.910110-1-shyamsaini@linux.microsoft.com>
 <20250909154600.910110-5-shyamsaini@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250909154600.910110-5-shyamsaini@linux.microsoft.com>

On Tue, Sep 09, 2025 at 08:46:00AM -0700, Shyam Saini wrote:
> Both ARM SMMU v2/v3 drivers have common set operations for
> arm_smmu_get_resv_regions(), except iommu_dma_get_resv_regions()
> call all other operations can be clubed into common code block.
> So to avoid code duplication put common operations in a new helper
> function iommu_set_sw_msi() and call this helper function from
> arm_smmu_get_resv_regions() instead.
> 
> Suggested-by: Jason Gunthorpe <jgg@ziepe.ca>
> Signed-off-by: Shyam Saini <shyamsaini@linux.microsoft.com>
> ---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c | 26 ++-------------
>  drivers/iommu/arm/arm-smmu/arm-smmu.c       | 24 ++-----------
>  drivers/iommu/iommu.c                       | 37 +++++++++++++++++++++
>  include/linux/iommu.h                       |  6 ++++
>  4 files changed, 47 insertions(+), 46 deletions(-)

I would do this first, not after you made all the changes to both
drivers.

And then once you do it:

> -	static const u64 msi_bases[] = { MSI_IOVA_BASE, MSI_IOVA_BASE2 };

Can just be constants written here, nothing else in the kernel should
refer to them any more because they are dynamic. The only way to learn
the value is to read the IOMMU_RESV_SW_MSI. Thus don't write them out
in public headers to prevent mis-use.

I'm comfortable with this side from the iommu perspective once you get
agreement on the DT representation.

Jason

