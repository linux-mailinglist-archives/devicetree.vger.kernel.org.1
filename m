Return-Path: <devicetree+bounces-209352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AE1B35F38
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 14:37:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10F1F3AEA06
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 12:37:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADBA8307484;
	Tue, 26 Aug 2025 12:36:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="a8pRHUZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E62C0267
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 12:36:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756211817; cv=none; b=BEwp6BWVIuvYzxvPUkrdrjmGZBTHFuAYBiTfoWrmjY+0Y9rB4/v1th08DxU41yq3Aa6TFWEqhoGupOW2Tfj0OxuuJJuV8fVzp//Y4Nj9bvD66plO+yXsrm0bsgDsraL/QpTtc6xwZZZ3HisvSZfwbCjN7YHfwrqz0q2Qohyx6u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756211817; c=relaxed/simple;
	bh=D8LK1h52u7FTE7jNOV0kzrk9gkDffkqaUwmZGkhUfm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tvprGnks1DN0U0V6d+OtALW0/pHFWNRBIy9at6iXAs22Anb323TINNCOd43cM9kpHsb0KgAa8ibtlzKCK1xzKZN5qdW41xNGnOTXqhWZjyZySK38ny0oMLQq5AJiUQUlcMSalmdhxLQb1jJFyzZWGJNdY795caCqw3Sj5CdFC9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=a8pRHUZS; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-76e4f2e4c40so4857534b3a.2
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1756211815; x=1756816615; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mFuBdDpmjTxJPIC+jvTVeeAVDsVAAyhX1fX5Qkry/n4=;
        b=a8pRHUZS3v7QpuZmqEtZNqK71FGidFNpEieU5LKFuVz2GbXVP5nzJWxl/hh13tZU1q
         HHYRKtM4x6/83mSk/0kJRSQQ3M1snywX48yBZjdXTHrFzXmuslVzRQqUaI1KUnH31MjD
         yFmdjlGUjmu6DnZRev68ZdASTqobBDHsFiXuu4zcz6ZaCnTA1cUH+du/rp3B5JyNw2tU
         D5P26cAue6tVJLG7zqX2UKT257QlQFB6sbviDf374kwanE4DFSVO2gAnLXl/oS5SXC43
         ErnP30vX02UO4qh9LDNMmRhSwXnYrMHNyiY5JqrgG/NVp0fZs1D16I4lI+E7j5RUqwJ7
         o8tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756211815; x=1756816615;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mFuBdDpmjTxJPIC+jvTVeeAVDsVAAyhX1fX5Qkry/n4=;
        b=I40sFgP7kxzdnY60n9CPypFL9dTsnXc9fb4HaWX+8Z99UEUs/2Jan/qU0J1u4DfARJ
         JyfBNRKazFlGjYdnHICPcaIipf48moU0aVx9WUKMTniWD8mUOXDNKUtJB9ciM13urbZl
         /SKdoQdioAdK1yHSvnBuEHUZwC54mu0HjNm6pljZkoA4gLsZuC6vhh3X7PEvYT/k5DKK
         k+IBQEA4fqJiNkgGjpfZjDoJdZWVKWmXwuyoSrzkCcYWDMTk49ad5KxHrQZW3fTgyBIM
         TlbhioRTNLh8zaEZ62JyWR34Erji/H6Pp9BEEMwoa4gk9CeUxMXXR8LFr5IX2FrvGcJd
         kEtg==
X-Forwarded-Encrypted: i=1; AJvYcCUnaN/ywYuqT9c1UYt54WHTy05K3Tt2BFsg3frX2jrogar4UgOW7oTs5ocbRg5DKS8GFLM5coyw2B4W@vger.kernel.org
X-Gm-Message-State: AOJu0YwkWUTTQJvQ6Ct+zK9L7h/3FWsA04UuT9LoBNxhtSLSqUXpnUFO
	QXtUCRBcMTo49e1fYC/yJmXRJJ6bUI+Osg8qw880LADJm5EgEhaLVKs82KKCRLFWTlU=
X-Gm-Gg: ASbGncsR80HnZ5AyhIRYDW03tYtZBD6SBOJb5Fuom1Guyivgxn0QR1HZnHO+JZlrL4l
	WN1wOubEDIAMksbBho5G/2eNVxqRHl5LGdPs/6qVaI2E22eQT8TJUGkLHnhYdaEl7eM51GOqiCD
	wW5HLmvSWxpYZQvv/GwQSFxOyqzGNkvbRZTIAGD6iK2ehJp5niV2fWd+xD5EDYyx9pQBMXHB7rj
	F1bBimQf6WfNIvhcYujaGS16t5RGClCBeoJbOa+npJSnRh1lcknzEfUAjsHbTntEcOrWDXAEibY
	xupKvNUa21H1v1ZkXiFVTiU5/g9UUmYDViucnbsV48boqTjtNQsLCiD+15xW4vjaNRSekaYZsSg
	3I6OEwLA=
X-Google-Smtp-Source: AGHT+IHTh1g6nVXxG5B7xS4T7Fnw4NLjAQ3OfTl5DHXo//wtjXBmCj82vaaqojPvv0EPFyup1w2yOw==
X-Received: by 2002:a05:6a20:1588:b0:204:432e:5fa4 with SMTP id adf61e73a8af0-24340b5b6ddmr22663293637.23.1756211815043;
        Tue, 26 Aug 2025 05:36:55 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3275933d6a2sm567538a91.23.2025.08.26.05.36.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 05:36:54 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uqsuz-00000008tQD-0mP5;
	Tue, 26 Aug 2025 09:36:53 -0300
Date: Tue, 26 Aug 2025 09:36:53 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Shyam Saini <shyamsaini@linux.microsoft.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	will@kernel.org, jacob.pan@linux.microsoft.com,
	eric.auger@redhat.com, code@tyhicks.com,
	eahariha@linux.microsoft.com, vijayb@linux.microsoft.com,
	bboscaccy@linux.microsoft.com, robh@kernel.org,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v3 2/3] iommu/of: fix device tree configuration for PCI
 devices
Message-ID: <20250826123653.GC1899851@ziepe.ca>
References: <20250806215539.1240561-1-shyamsaini@linux.microsoft.com>
 <20250806215539.1240561-3-shyamsaini@linux.microsoft.com>
 <20250808121515.GE377696@ziepe.ca>
 <20250814233018.GA31418@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250815003958.GE599331@ziepe.ca>
 <20250815023236.GA30997@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
 <20250818155310.GG599331@ziepe.ca>
 <20250826011557.GA2980@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250826011557.GA2980@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>

On Mon, Aug 25, 2025 at 06:15:57PM -0700, Shyam Saini wrote:
> Hi Jason,
> 
> On Mon, Aug 18, 2025 at 12:53:10PM -0300, Jason Gunthorpe wrote:
> > On Thu, Aug 14, 2025 at 07:32:36PM -0700, Shyam Saini wrote:
> > > On Thu, Aug 14, 2025 at 09:39:58PM -0300, Jason Gunthorpe wrote:
> > > > On Thu, Aug 14, 2025 at 04:30:18PM -0700, Shyam Saini wrote:
> > > > > or were you referring to [2]?
> > > > > 
> > > > > In that case, the PCI child node data needs to be parsed, which is
> > > > > currently handled individually by each host controller driver.
> > > > 
> > > > Yes, this looks like it may be what I was thinking of, the pci@1,0
> > > > specifes the BDF effectively
> > > 
> > > In that case, we'll need to parse the child DTS nodes properly
> > > within of_iommu_get_resv_regions(). I'll include this in v4.
> > 
> > Kinda surprised this isn't happening already? It would be good to
> > refer to the original specs and describe how whatetever you propose is
> > aligned there.
> 
> Just to confirm, does the v3 version of this series look good to you?
> If so, I’ll go ahead and respin the series with the iommu_set_sw_msi()
> change and address the other review comments from Jacob.
> 
> Otherwise having pci devices nodes in the fdt or dts needs additional
> handling, let me know your preference :)

I think you need to consult with the DT/OF owners on these questions..

I've forgotton so many of the details here.

But once you settle on whatever the DT representation is it looks like
the right direction to me.

Jason

