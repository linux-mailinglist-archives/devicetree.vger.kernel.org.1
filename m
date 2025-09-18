Return-Path: <devicetree+bounces-219071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC9AB87470
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 00:43:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A12527BB67D
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 22:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3AB52F5499;
	Thu, 18 Sep 2025 22:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="kns02552"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305522F3632
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 22:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758235406; cv=none; b=e6AUfmnPCUs6Z/+G7gl4W5VKPDDPKDPXfTLnl2geqAmz2nnIdyEZmno9t+7/dc09G44oXrlIKW8fsnbh5W+DAw/+Ljom1qxUwFc6UBxCHhKlYkXPAMfTU5W31NbvxBEQmHqqKnnK5xuIl8FGINMgxYYmjRd6ER+yM5HZD1lzQ0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758235406; c=relaxed/simple;
	bh=fDYnNm7eu3SJ4B5X1G13qDmffBtSJHL09HIs45g3yFo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HGBxhM1hYwNnJ1+7fI8iboZZ3imnND/K7YxrnJztoHPtwZgyiiq365sopO2K2rCrKXIMN5dBVxWnfQiIcDVPQbxNZS69t/4ugzhiwsXP5D8Vm6wNR+UXZO2rxujMFKTsgQfBVyJYTCtQTP4gDrJjQE1aXw91as0p+HUUYPrCfy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=kns02552; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-746d5474a53so590791a34.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 15:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1758235404; x=1758840204; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qnUwZStouFz5qxjD1Lj/dsD47M7aWuqj5p6Ia/ydEQA=;
        b=kns02552BFcyqcxic0EqP85Bofpsb5Kk2FK8KV1ZyFzkJCesy4JL9uyU8EDBW3hMaT
         Kx0Mr8KiPv1CsE4g/jVx33jPrBGd20LRKmMGiBHCnY5+7DiHhxRba+IJ6lY+saXE7gGL
         BjiUO/yxrwgizKfruN9RC6hH8pFTLI2jPNvN8GTKUslFbCkHao+XPcSfy5LounZnwVKp
         PrXzCarRDRWSXk0s4vqJb1+EQpurAmZ2ClidepV+Ns41UJkIGBvm9mUa/KOeE3RqbVt3
         rLWTQmRhRwEreoGe2xVGUQZDdEyPf19Yw2lNLtxNInUzw16RehWZkZiyC7N0ROl93wqD
         3iCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758235404; x=1758840204;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnUwZStouFz5qxjD1Lj/dsD47M7aWuqj5p6Ia/ydEQA=;
        b=aYD6PAe5p5uaF2+iKo+Dt4HIiJOZamZ2RNdwWeSjge3JKPoonKTDc4Kfup4V+0KY0U
         NmO8eZv1bXszGBeIjZzyVPjJSc32hMVYBhHI1leIDim67wt4jZ6l9oWCbbl70uykLL3z
         nggXklugEI6LrXCUduVHRAEc0kZ7lPV9+G5hYjU1YXhylaNKWsNrlBUWOETxiqCNdgnW
         1RilxZ3+vH0673fgSBFUSxJkEJL33T5JrtBagTOyaC04Aldq98i/JxfyEu2S4jANSmNo
         4AxTnHEjHanMxle2ptCLvuBSR6DQu09xT+7R0nbjZNB1yVIlifJeqpXUzpWNC0i8iAX7
         jTow==
X-Forwarded-Encrypted: i=1; AJvYcCXK+rYwjrwROVERd7cc3+w66h/rBdGAMMNu8jqO5Vx+GX8meAeOBu7BYTBk+I/3EsBvHGJS8vEbi6Vj@vger.kernel.org
X-Gm-Message-State: AOJu0YzM3tGoLxSOEwzznr1olt5f3+f4fVhnGrBIhd2rsSDpZUSHJ749
	SMII4pyxZAjd0F6+b5+JYvxTM4z/kvIfbrwQvrgP7SqbUEugzN1MY+XJjuAa+ZWs3vQ=
X-Gm-Gg: ASbGncuzDAT5cYrBkJ5JE4McV/RhJvMKr9qA4j2d7nFDYsD62tJPVpQ3AQEUDak6Ihv
	U9mt7yHACgsw9kQMxq3PDwVk1OatcNbPXKEWKG+wppnolzr8oRkqEsZoEzVk1DYIinmZ+O4muYa
	X0egI0nvsWNgGIBQqlseDzk1FNRkk9D6rh0SQrLGYt2RY4uNLI3v4nV5ghrCZmcaWNs+cJ7tYQq
	ZGSmQgVhWad/pUBwHRIurn0q31ADQW4rEhEUg3x2+21dzWiWFfwG+QkI1aYma2pLlQi37/CCFVU
	Z/cNyIdrnlyUkDZWwps/NLyCrUEkNR7VElXuL1xIq0GcPs2osiB4s7jcS2845u+U1KHplbxaFLm
	/83H7LL1SVwocsSc=
X-Google-Smtp-Source: AGHT+IHKROKv4GiW5aFGatEtEb+qiEoA/WdhBpHSCZhcOfsuIyYvldoezk0nWsp/B7NH1cp0nPxRTw==
X-Received: by 2002:a05:6808:5289:b0:43d:21ba:b09f with SMTP id 5614622812f47-43d6c24559amr470351b6e.24.1758235404194;
        Thu, 18 Sep 2025 15:43:24 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43d5c85d269sm1274466b6e.23.2025.09.18.15.43.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 15:43:23 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uzNLW-000000091yf-0M6j;
	Thu, 18 Sep 2025 19:43:22 -0300
Date: Thu, 18 Sep 2025 19:43:22 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Will Deacon <will@kernel.org>
Cc: Shyam Saini <shyamsaini@linux.microsoft.com>, thierry.reding@gmail.com,
	robin.murphy@arm.com, robh@kernel.org, joro@8bytes.org,
	iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, virtualization@lists.linux.dev,
	jacob.pan@linux.microsoft.com, eric.auger@redhat.com,
	code@tyhicks.com, eahariha@linux.microsoft.com,
	vijayb@linux.microsoft.com, bboscaccy@linux.microsoft.com,
	saravanak@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	lizhi.hou@amd.com, clement.leger@bootlin.com
Subject: Re: [PATCH v4 3/4] arm-smmu: select suitable MSI IOVA
Message-ID: <20250918224322.GR1326709@ziepe.ca>
References: <20250909154600.910110-1-shyamsaini@linux.microsoft.com>
 <20250909154600.910110-4-shyamsaini@linux.microsoft.com>
 <aMw4I0AjKNPY6SOw@willie-the-truck>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aMw4I0AjKNPY6SOw@willie-the-truck>

On Thu, Sep 18, 2025 at 05:49:39PM +0100, Will Deacon wrote:
> Given that we're walking over the reserved regions to see if we have a
> collision with MSI_IOVA_BASE, why not allocate the base address
> dynamically if we detect a collision rather than having yet another
> hard-coded address which we can't guarantee won't be problematic in future?

I'm nervous about this. Right now the  MSI_IOVA is actually UAPI and
things like VFIO/qmeu need to accomodate it's placement in their own
memory maps.

Nicolin has some patches on the iommufd side to let userspace select
the MSI address instead, but they are not done yet.

So, randomly picking an address sounds like a bad idea to me, it would
almost certainly unpredictably break qemu..

Hopefully by the time we need a 3rd one we have the userspace MSI
control and then we could make reasonably make the kernel
automatically select.

Jason

