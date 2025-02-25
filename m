Return-Path: <devicetree+bounces-150655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0998BA4325C
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 02:18:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59086189999A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 01:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B87372F3E;
	Tue, 25 Feb 2025 01:18:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="r+cWg46f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA7254F8C
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:18:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740446293; cv=none; b=PPQ0x9qfzqgiOTrpgsbpl0w3ssIZlGSzgW0pn38Ym4pvWawsCh3awEfpM0x/0aCLLSFGVsDDy6thCr+9nTW+4mPIqSConF0g/QJRICTr8xNFLd9HhQQ22MWO9lii6HcyTh5hKDqeSAGbXhjmPA6kxZf8/ClPzUlNE7T0C58d3wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740446293; c=relaxed/simple;
	bh=k7RxcH2w6BLVcDkvvfbxCz8aU3QD7i5OIMJK4UUqP34=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pTP3jnnIu63ac20hDSmnoNjaEpwh1SKYpRQsPWFxl80oVjMutyoNvbZQAxE7jQWVI8G8KL4s5s1rFVISwxVpHB2rWcGUykrKvjXyk1BpaFcMaZaBtPdpHwtT5YjGIkpKKyOZvkmLaVXBSt9ewgNcxDSvMUTF1X63b5wxx0heoMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=r+cWg46f; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2f42992f608so7887579a91.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1740446291; x=1741051091; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HrkUpGxkfweDpfOc7IojBxbKtQVwxTf19v4lwy5uqNA=;
        b=r+cWg46fSBP1YfTBfhm9cx9ROU8vMNycaOToNKj8UZokdwJslGV7ST2c5H8bTFxRwI
         9BHhgNd/z88BR7hWour38s0/G/PAQyQvUCJe1WFgj6CnXhNF2IUapFfFE8vYsywyHzQA
         b5KsP30kXqGupxHVTQcFiV/fK92xFRkdpG9k8qnF6KmjZnVxbBQb8F9Wm9d3nsVoEL5M
         ydMTi1ZuhrMuFnYUcKPLhTziUYgw0wCHS+xJsd9n1ZoXzcZJm01ZuPeeDr/swb4Ari0o
         gVRetM8FWkWgPZc3FLy1xTY/tOOIFJjDhoXFE00iUCbE90bmt2YFZzRiBVsbD9+dxOVx
         Jwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740446291; x=1741051091;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HrkUpGxkfweDpfOc7IojBxbKtQVwxTf19v4lwy5uqNA=;
        b=MLBGzZ/Wxr1Kt3c3anX9jwjn6VhOrBiyeAa8bAL6xPcrgjDNZ0kahGj68sVPpvJxf+
         DL6pxSGZzvzoKy7opegBOejk+mybjmxlg0Nro4eRHaLNtQpMhvgKnV3v4y07sJLU7fht
         1OylkSCwSvs5ioPAaBio10qX+RFHkhUdzg1W606QduvmfaaeZq30qmJiRdZ0Y9OkQVl+
         ZVu1okCX00JkuMT2VMtwep0dxX1Ubp8YKOtT/ISppDj3d2fD6sbKLDLYlSERramgMwju
         ZBzRdbBI0nFfOCvrsMHtmtPZyGAhIgNsxod0bnG7av/bMQ/JQY2DccuKcTTXUJouVwD9
         8xUg==
X-Forwarded-Encrypted: i=1; AJvYcCVKCmweNopfBTVJRjmlmQMJhWsgkuQ74xabGArybW8imXjSZ6uudQyio2ntT4OJrfX/1+U2WN5wPAu+@vger.kernel.org
X-Gm-Message-State: AOJu0YykI9v3iq4mys+QGRO9V5NaLewJqLNvQG4cgd8S4Pro0cR0iyU4
	PNc0eVhgwzZ0Wlkd7CyxqQZFNwV+tRitX/g9dc3JqTKnrfBQsci0rk2zzhfLmw==
X-Gm-Gg: ASbGncvpcVjUjAHe0E4X1mUY/VxlDw8AE7Ma/98D7PS0QXl0VjsceRzkHIKPsf2zzsm
	jnua2su+z1QNMHuY24u4i+kOgzhqVgyubMjmAb5k/OJqGWapH3SHWUUR/7HkXAY+WCd6TkJUn3X
	7aQ8xPOe8EYog/u4k7nwv21OJ80a5aK+/gO3wyjYgci4X5gONM7ilXaUzVeyrnxZMm3TWkN9n+M
	Kex565YYDws6bmnSJs65D98olsV5KnCAVadOcd/kglRYRrBX4txoOeS2dzNJEb/Oa10xNk9NiYs
	amQOoFHx0Pq5UiSZES3LZjYadiIAShTu6eWNQU/6TAgNWZ0VABUtNf/A0OyeJnJnizwgLU7A
X-Google-Smtp-Source: AGHT+IGC+5UuIMA2luvrb/xdZ77BEUaeWoPZIqYpskI9rBAFjELx2efx+n+6aJmTxIlE6O1zhZ1gWg==
X-Received: by 2002:a17:90b:4a41:b0:2ee:4b8f:a5b1 with SMTP id 98e67ed59e1d1-2fe68cf3fc4mr2256107a91.24.1740446291241;
        Mon, 24 Feb 2025 17:18:11 -0800 (PST)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fceae302e7sm7350586a91.0.2025.02.24.17.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 17:18:10 -0800 (PST)
Date: Mon, 24 Feb 2025 17:18:07 -0800
From: William McVicker <willmcvicker@google.com>
To: Rob Herring <robh@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, Saravana Kannan <saravanak@google.com>,
	Maxime Ripard <mripard@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Grant Likely <grant.likely@secretlab.ca>,
	Marc Zyngier <maz@kernel.org>,
	Andreas Herrmann <andreas.herrmann@calxeda.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mike Rapoport <rppt@kernel.org>,
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Zijun Hu <quic_zijuhu@quicinc.com>, stable@vger.kernel.org,
	kernel-team@android.com
Subject: Re: [PATCH v4 09/14] of: reserved-memory: Fix using wrong number of
 cells to get property 'alignment'
Message-ID: <Z70aTw45KMqTUpBm@google.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-9-db8a72415b8c@quicinc.com>
 <20250113232551.GB1983895-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250113232551.GB1983895-robh@kernel.org>

Hi Zijun and Rob,

On 01/13/2025, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:27:00PM +0800, Zijun Hu wrote:
> > From: Zijun Hu <quic_zijuhu@quicinc.com>
> > 
> > According to DT spec, size of property 'alignment' is based on parent
> > node’s #size-cells property.
> > 
> > But __reserved_mem_alloc_size() wrongly uses @dt_root_addr_cells to get
> > the property obviously.
> > 
> > Fix by using @dt_root_size_cells instead of @dt_root_addr_cells.
> 
> I wonder if changing this might break someone. It's been this way for 
> a long time. It might be better to change the spec or just read 
> 'alignment' as whatever size it happens to be (len / 4). It's not really 
> the kernel's job to validate the DT. We should first have some 
> validation in place to *know* if there are any current .dts files that 
> would break. That would probably be easier to implement in dtc than 
> dtschema. Cases of #address-cells != #size-cells should be pretty rare, 
> but that was the default for OpenFirmware.
> 
> As the alignment is the base address alignment, it can be argued that 
> "#address-cells" makes more sense to use than "#size-cells". So maybe 
> the spec was a copy-n-paste error.

Yes, this breaks our Pixel downstream DT :( Also, the upstream Pixel 6 device
tree has cases where #address-cells != #size-cells.

I would prefer to not have this change, but if that's not possible, could we
not backport it to all the stable branches? That way we can just force new
devices to fix this instead of existing devices on older LTS kernels?

Thanks,
Will

> 
> > 
> > Fixes: 3f0c82066448 ("drivers: of: add initialization code for dynamic reserved memory")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> > ---
> >  drivers/of/of_reserved_mem.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> > index 45517b9e57b1add36bdf2109227ebbf7df631a66..d2753756d7c30adcbd52f57338e281c16d821488 100644
> > --- a/drivers/of/of_reserved_mem.c
> > +++ b/drivers/of/of_reserved_mem.c
> > @@ -409,12 +409,12 @@ static int __init __reserved_mem_alloc_size(unsigned long node, const char *unam
> >  
> >  	prop = of_get_flat_dt_prop(node, "alignment", &len);
> >  	if (prop) {
> > -		if (len != dt_root_addr_cells * sizeof(__be32)) {
> > +		if (len != dt_root_size_cells * sizeof(__be32)) {
> >  			pr_err("invalid alignment property in '%s' node.\n",
> >  				uname);
> >  			return -EINVAL;
> >  		}
> > -		align = dt_mem_next_cell(dt_root_addr_cells, &prop);
> > +		align = dt_mem_next_cell(dt_root_size_cells, &prop);
> >  	}
> >  
> >  	nomap = of_get_flat_dt_prop(node, "no-map", NULL) != NULL;
> > 
> > -- 
> > 2.34.1
> > 

