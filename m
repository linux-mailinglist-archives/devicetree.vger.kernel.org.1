Return-Path: <devicetree+bounces-154497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A2CA5077F
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 18:58:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3F3197A91F6
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 17:55:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6CC92512D6;
	Wed,  5 Mar 2025 17:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="momoyEWA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5395A250BE9
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 17:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741197362; cv=none; b=TZVZqVib+PG+zpYSTOtVbElCjXkhPRncHOvXkgJyaP4KoVnK8/w15LOR1uWm3GyuO4dYPnAOX06JRDtu55zWe1ow8QQKyXNd3SaWGthXWeIPpThIgcSpUi3sxyhgOqxuoc+TUHvOwABK6ft70/nl89TOWAWFDqu3OiHJA1g9kCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741197362; c=relaxed/simple;
	bh=TUPQEmrW/zlDUggHE/0eBZQD2cfbqcK2BAfpEugKfy8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jncqpNYrL/yIlGLGO7Vnt3+2GvmBidDdfKhcF88pj9A8g7CPqgcs9eGBUM314AgXLWDRaTfuDaCKASbHf+mdMJgYORDwMJrWdHhZh8R068mvA/i8EDe+wuJJj1jZbaxDWUl0xRxL2m6tmO+EwSpGN7Xe8MHusNiw9mVv+P6tESc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=momoyEWA; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c3d591e50aso201783385a.0
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 09:56:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1741197359; x=1741802159; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+ep2jN4skgI+D4W4EsgQGzXEpA82GjT/riHpbC+3iOM=;
        b=momoyEWA1uwQT59ACHn6cPhBRRVwjCvd/D00IEUvD8ULjOMXySHCDWYSd9z/yVOTMP
         oG72CN7BnrQDpgYVlsHG0Jk0KQ0ebSPSiZB+FvOfdsC8qp6VTSdRbLDJCLhzWYuEJWoY
         2v35NyfYxdrK6EhI2eMjixmCg9uDh2DK9oxX0DBSIRxRtrFjHa9wswQhnptQmQT5vFEn
         wkFkKfiMZC2jn4QuMDnwRR5W8l4QvBbu+QJy+zS1//D3zixL63YMPiiBu52Ouv9b7e2P
         YtGXgKlQkiD3mJSNouR4nXhhezVNvS1oFPZxtDA5kc7MPbYTSVD9fAQgdoH7z2hklJEe
         689g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741197359; x=1741802159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ep2jN4skgI+D4W4EsgQGzXEpA82GjT/riHpbC+3iOM=;
        b=e4if+ZsrHa2esjOrI3P6x5SlK+D4+ULHdR1KPteof3Xr7Q1Tvo6km/3IDy7XavJJFk
         MqpQW4XrwWl3ziTaFdDuky4Di6ggIBjKwNS3goZNZ0IRkcVqbrFI6m+1PhyTN6d6CYII
         r5dguV/4zWZKM5VU51XrOkhIDhMTnBkkmfvB8jHXSgKcE3/m0LlH/I87UqEZlRsVSWWu
         Ahy+jaChhWXGhaRsDbEgNynUW9PIdx4gFmFP4cgWdyiFBTc3R7H9D53mamE0J3WyLCg+
         IQSjCUE6rqCbI7KykTfBtuUEb1QuOyWJwKQhH/03hTcgoyxSAPMQaH3V2FxnJ1U91KJ7
         rVZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQn1h2AtE2bB5Ry2MXtfLGRc9PIxxyr5T9xVAhpFbWaDzLdgaqnFxOAyIDsdsyswZChg1bHHffgfNO@vger.kernel.org
X-Gm-Message-State: AOJu0YyKtW1BtjRUxaIQYJO4Owzqo4d84luXjZ1nYYXFSL04mEQgFa2h
	k+LiM3CRLopLjYb3AqlSLass61+CwMdNneSVEMoIetp8f81Jy4jdhO5iLzrXefg=
X-Gm-Gg: ASbGncsXU0k03I00T9wxTyvIYiJ2E9Cvqlg8nyjA0bhUsJO8Y7Xjh3CxTCLIOJg0Fca
	psSYNLWVeW5euOLkvt9JEfOYtXyEqsYTzv86rZ3dkjWqAsKw2s6YJfRozLgLRnW+g54EO8m+IhT
	kri6zSyXSX5ADf7XKCZoqg8q4Wr06Ta57dulV8dyYw3CBK125g8jEbUGft9P7wAsEtvyPlCPUfH
	Mw/J2//rvqvxlwwICTvxR8sRT4za4YhxYd26prlo4lJ0vaOPZBij0ZdIyc2Uc7Oggt1uLKzSAc6
	NfTrCACJi1nlDYLGtYE=
X-Google-Smtp-Source: AGHT+IE075gQ9paRBr5FJqePHxLiGeTWllaX8jx4kAg32gkUcqpKhkxzc9FKZ5jSjzoHlrJkCTJ+cQ==
X-Received: by 2002:a05:620a:8908:b0:7c3:cbad:5729 with SMTP id af79cd13be357-7c3d8e7ae8cmr768466685a.25.1741197359262;
        Wed, 05 Mar 2025 09:55:59 -0800 (PST)
Received: from ziepe.ca ([130.41.10.206])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c3b4c9e120sm486128485a.11.2025.03.05.09.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 09:55:58 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1tpsyL-00000001TVM-2YSq;
	Wed, 05 Mar 2025 13:55:57 -0400
Date: Wed, 5 Mar 2025 13:55:57 -0400
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
Subject: Re: [PATCH v2 2/4] iommu: Resolve ops in iommu_init_device()
Message-ID: <20250305175557.GI5011@ziepe.ca>
References: <cover.1740753261.git.robin.murphy@arm.com>
 <fa4b6cfc67a352488b7f4e0b736008307ce9ac2e.1740753261.git.robin.murphy@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa4b6cfc67a352488b7f4e0b736008307ce9ac2e.1740753261.git.robin.murphy@arm.com>

On Fri, Feb 28, 2025 at 03:46:31PM +0000, Robin Murphy wrote:
> Since iommu_init_device() was factored out, it is in fact the only
> consumer of the ops which __iommu_probe_device() is resolving, so let it
> do that itself rather than passing them in. This also puts the ops
> lookup at a more logical point relative to the rest of the flow through
> __iommu_probe_device().
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
> 
> v2: New
> 
>  drivers/iommu/iommu.c | 30 ++++++++++++++++--------------
>  1 file changed, 16 insertions(+), 14 deletions(-)

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

