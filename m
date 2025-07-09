Return-Path: <devicetree+bounces-194660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC746AFEEFF
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 18:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF438560A7A
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 16:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 611BB221FAE;
	Wed,  9 Jul 2025 16:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="cvCi7unn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F62221567
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 16:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752079538; cv=none; b=Y6qSLZQI3BGAJz3nBiWeqvPBLwWACH7gkNfWn3q6qGP3rQfyU4+tXDuL8aWcYZQYCCLiJrVm/QS3rNUbef1mttcXyKMC+lFVMGdmwis7atPS1X4KAQA+2ihj9EmRzWFToANOioKG1mkLu+XbmD4NdL+29P0s1w/+ARuRRA/VFRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752079538; c=relaxed/simple;
	bh=3NUThwn3t/xkBfh4xX7xH6iEkoLptPUMCqyL6R4Ax4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M/W7BjzDyQejiKRIvNdLIACx2DfBIdBPKJydQLUS17UWG1JpmLBd1kEyrOP7yuMw44fb1c+foQ0lB+rWa/V+m8FmZCYYtQ2Q7LXhh0M4vqofdO5QlJlImBVlgfSTE1zszBWYV7meDFyWBqgfFeeVdPL+hPatYzPjbKDUg6zstPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=cvCi7unn; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7d20f79a00dso11424585a.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 09:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1752079534; x=1752684334; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p78QlcMtmUxArNMXSNSzK9z/0Q60UCVFZj4PTIuJazk=;
        b=cvCi7unn5Q036ndfR/rh5LGQQNVV1Hth+ZDqx6qtNCZA7rKvX6/B4koe7fhC2Hkcd5
         SduC8g85FxOzBPha2/OW3Ggan8dDtim9uHeU197HTgV75jAl4v+Q8i7V6XbinoM62i/7
         w3ifxJiSNdwkcyAXCSEjiVsHinj//QFhcS29/Ums+dt2Gh+gWFDQExEdTLb0U+rMAZXZ
         B6AqSNR15gjwXjo5Wf7a+yA5OjjAWyJvZuldOD/WniCeJk3sHv5em/afmUxv4xdpWCk3
         93e5gaGEdPNUDTWgenxggvxkUcUPqLzbhNWZd8tAlRznfpbv1OIhbRAqcw8zgQbMBLsz
         YLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752079534; x=1752684334;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p78QlcMtmUxArNMXSNSzK9z/0Q60UCVFZj4PTIuJazk=;
        b=KeHUrUz1k86L96RbQw6ClhbWa54+YFdhFFPjAajcqnNWOQuEUQa1eo4Paj9aC3Iwz9
         WeaG8UK/IfMnzRXF2kWIIY025/xva7Y5x8LyqyAXOQxGV/5UuAZkrEyanFk2qEo4Kyuc
         R8CUBz5ah0FVGf3UwuSIrhF/aesdctJJaMxdfLaFxdQYkr20I+GmA+0zx+bASA7DxBiZ
         jRhnyO9qSCNbfxtzd9PYC3LG/zxKcYlKmiprRd8pdRW72bfVmvrpnSOGu0B5EpcbU/wv
         NDFKD2FGAG7l2DyFvy3gzI0f/mzTcV7cxEd+sBcLi24otIARpF/V40be4lFQNtZMZbDc
         yjZg==
X-Forwarded-Encrypted: i=1; AJvYcCUElbTawcPvurZLfL8oKXPv0BZg15dF1VpQAudQFV36TO75HlWbqGzq2dmT53Dhw5e7YIptYcWwRCEO@vger.kernel.org
X-Gm-Message-State: AOJu0YwAoyMUCPboFAQdnMlLX4wHn+5NNL4SqPrrewRSZDG24MM/1OKk
	kB+dYiDR8T6euShPi0CghkDaSI5qrd8CwNtpQpvFJxfGZwHuEpNR3+ODeT66Qx/sEFs=
X-Gm-Gg: ASbGnctI86h2XEr9UC0zv4DcnUaLkIeR4Ui7cJfrHBSZWsrljFNrlX3Xxa/ewaAnU56
	lHwjdQHFSNBAWXDi5mz3yQbWlTqtfUVqQ2YCHZmh168Dcom6Qv1MK3QHjShRl1RYEB20e9ZhjnO
	c2awQm+yn8Qmdg6CKkfXqcVZbKVMFBJvW3qXtdW8LhTGnODWilPYmzbtkcnDGVNQYZKZSJ+fiUo
	trk+u7JcUkooWSdeM5+1LS/NSMTBPRHws7nu/AhzmYJ5jgfn+jxmH8lFfn1+YsT0fufEV0EI/Df
	1xaD44T/nlpKIfYVfBq8cScxIO6ZL0gNiv7O
X-Google-Smtp-Source: AGHT+IGK03f6ZaextKn5HgBl1Cn7IIaPVEmVU0WLiCp6KHagOT5Rlof/NRcyv22KPYGKQjltoso/Xw==
X-Received: by 2002:a05:620a:294b:b0:7d4:547b:39a2 with SMTP id af79cd13be357-7dc92c86103mr31634985a.12.1752079534564;
        Wed, 09 Jul 2025 09:45:34 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d5dbe8f069sm969867685a.77.2025.07.09.09.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 09:45:33 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uZXvJ-00000007Sge-0n2C;
	Wed, 09 Jul 2025 13:45:33 -0300
Date: Wed, 9 Jul 2025 13:45:33 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v5 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250709164533.GA1759573@ziepe.ca>
References: <20250709085337.53697-1-benjamin.gaignard@collabora.com>
 <20250709085337.53697-4-benjamin.gaignard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250709085337.53697-4-benjamin.gaignard@collabora.com>

On Wed, Jul 09, 2025 at 10:53:28AM +0200, Benjamin Gaignard wrote:
> +static int vsi_iommu_attach_device(struct iommu_domain *domain,
> +				   struct device *dev)
> +{
> +	struct vsi_iommu *iommu = dev_iommu_priv_get(dev);
> +	struct vsi_iommu_domain *vsi_domain = to_vsi_domain(domain);
> +	unsigned long flags;
> +	int ret = 0;
> +
> +	ret = pm_runtime_resume_and_get(iommu->dev);
> +	if (ret < 0)
> +		return ret;
> +
> +	spin_lock_irqsave(&iommu->lock, flags);
> +	/* iommu already attached */
> +	if (iommu->domain == domain)
> +		goto unlock;
> +
> +	vsi_iommu_enable(iommu, domain);
> +	list_add_tail(&iommu->node, &vsi_domain->iommus);
> +	iommu->domain = domain;
> +
> +unlock:
> +	spin_unlock_irqrestore(&iommu->lock, flags);
> +	pm_runtime_put_autosuspend(iommu->dev);
> +	return ret;

I thought this was mentioned before, but this doesn't handle
attach_device being called twice without an identity attach in
between.

And now the new locking doesn't protect concurrent invalidation races,
the lock is in the wrong place.

hold the domain lock across the whole sequence to hold off any
invalidation until the linked list is consistent with the HW
programming:

 spin_lock_irqsave(&vsi_domain->lock, flags2); // Prevent invalidation

 vsi_iommu_enable(iommu, domain);
 list_del(&iommu->node);
 list_add_tail(&iommu->node, &vsi_domain->iommus);

 spin_unlock_irqrestore(&vsi_domain->lock, flags);

Then remove this:

 +	/* iommu already attached */
 +	if (iommu->domain == domain)
 +		goto unlock;

Since the fix above makes it safe regardless.

And, also feels like again, but vsi_iommu_enable() needs to fully
flush the cache since the translation is being changed, shouldn't
there also be writes to VSI_MMU_FLUSH_BASE ?

Otherwise the locking change looks OK and I don't have other comments.

Jason

