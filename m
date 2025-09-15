Return-Path: <devicetree+bounces-217615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C4585B587E6
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 00:58:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E51F1AA7D81
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 22:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 545472D7DE2;
	Mon, 15 Sep 2025 22:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="KEAGgYt8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A9EB2B2D7
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 22:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757977091; cv=none; b=noEzg2S5uZoLI6lry8eb6SRzQ9tsGpt03mj5e47WWHsn9I25Kotw2XEmb4slMJWJkvS/jVDExkoJ4wDKUDnH8pYF3Mat0laQSqnAb6kbgyE04FTe14o1UBMV7Rh5R8HIBBKRkK5Wo1cF5cVbMmq+HCxJUSdHnStYqMZyZ49hP20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757977091; c=relaxed/simple;
	bh=wrK0nRI1OFbp71bXaT4X7O+VxQvKh8LBne/yxp6bWq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lt6hAEHkwf35zbWZrZdHlxMTF4yDpQT9kKA5ejTM1kH0zFNLllNkuVBCWS0YjdEIkgCMwWMs+3nhh+OeWcjXiYGdrOVi8129F4wi64IIaNYVFGq1YlKfmhxKBHecT0sMye8hsL8wHrIdRWOUr432ipOMSFt0i7lPtWvIegCw08A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=KEAGgYt8; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-74595f3852cso3367923a34.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 15:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1757977088; x=1758581888; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kB/Wi+cRe7K/Xl4jkmaNXOwfB7KCAKUI6vYOHIxWVl4=;
        b=KEAGgYt8X10JnmMsTHB6p0wyqh8oaZfbiQj00LhEO/YlLPOcNvkEeV7a3tJbpObZSG
         JL5R3qjyVo5pvdmRULzN3TdK50LwaDJQKBPePMEOPo0RoMoLiSrEPdyt5t85tkscY8ok
         Z1YHhG9Av55bBimcNiCXwQFpyJHcpVp3QoCE2cIxFpy2c3IT8dHawYeR9SatdTcPhBmV
         jcu34QTeZW4oRB0NBzdibGmiVHJzfiCFXkZFtNryO7y7IrPSefYFiQLpAKXYXErJrVQ6
         H96vBhBvC8mu/PI4uoBUasTB4NFJdQQ2Xov1lyUmhDzN9gTCM6E4kM0C2fpo52dVXelJ
         Dt+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757977088; x=1758581888;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kB/Wi+cRe7K/Xl4jkmaNXOwfB7KCAKUI6vYOHIxWVl4=;
        b=tUM6tloWRgdKOhHLmg5dr4dDKPX6nFm5SOrNtxkCJDJ5VHlvS/7YQDRQ9K6j25OQkK
         SWXg2tmRT2iHNO5NqmHTfShpwkueRKqBan/pE6H67l3kqrKl6uAOBVW41HvHRm4kSQyu
         UjSWwuqQJqSjEA+aKNjSNcfgBOoev+MdO0tfCNewG4Sr1Qz3s9xopuc0E3KEXYCiBZfi
         4p0H8qf9HOYPs+FO2sThCIiCueVsJnKW23gt3r/dzD2Q2hUj6q3sPoQCZIcz/ywWLdJk
         b3VXP9GltTYqdv2WLm+odzs2O0q3VwOYtqD5oR1ZOBpE2O+O6nOGPAYg7sxQRwkMxNmg
         yrnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYc30temJ+2IyRf/CdDsNTFqLTOcfSrS8DBy0ngbLpfLZV/InQ3bkvc/K8hdkt2RLKd556MdMV3n8s@vger.kernel.org
X-Gm-Message-State: AOJu0YweKkof2f2r157S+OvTwgePr/1rLUglo/ImeowX+8FRrVRasN+x
	gLJOnDF5AjWPsDUyubHw2nu+E4JY24GZbZrxQ4mSb2704gXUTQml7bG7tfiiF8G2LTk=
X-Gm-Gg: ASbGncvQoRx5XbKRVr/gCfb903Vv2xWy3sGCtpgVI0tR6IYfCp8kn/FPBFOcfK5Szhf
	CLs7Mp+mJKUvVfEz0p42AcaJHq7mi3NrCnGP6CP0aI4oXK7qBX0sdAlfXzC24PIN7aIBn7yPUCs
	zsVG4iKw6P+R4krdpXEIQWSk7OwUcQLQMIPpkj0AQRJsv4p9MmdDMhenZ2OhgHPhJEuzGzwMusK
	FuJNm3qWcAjtb+Bj4/mpMlYH3QsIZ8Enl+KiTtYoqgUHHdZ6hLlOELwb2aImfIoTNhCPrgUrNOk
	rmWAhat9ww53WQZx+ReuCF1p+FwtT7NuUPVDN1NTvpsmmHED+jL2D0YijMpNNA9abVfsrJyIfD+
	h0h1oJjc=
X-Google-Smtp-Source: AGHT+IGSUOqb+ed31/428rqH5N5OvGqFxlxhfX8elAayaMc3UDw7hqxF226u18IdPmrznlxbRNVzmA==
X-Received: by 2002:a05:6830:6adf:b0:745:9dc8:8dfd with SMTP id 46e09a7af769-7535638abb1mr9759182a34.35.1757977088588;
        Mon, 15 Sep 2025 15:58:08 -0700 (PDT)
Received: from ziepe.ca ([130.41.10.202])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7524986c872sm3180269a34.15.2025.09.15.15.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 15:58:07 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uyI98-00000004Yk1-1O1R;
	Mon, 15 Sep 2025 19:58:06 -0300
Date: Mon, 15 Sep 2025 19:58:06 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	linux-media@vger.kernel.org, Will Deacon <will@kernel.org>
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
Message-ID: <20250915225806.GM882933@ziepe.ca>
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
 <694b9ba15cd67f41a38f4a65a3811f035cf8e99d.camel@collabora.com>
 <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rt6nvgazcl6mvyy4iuut3n7irf72t7rex2iwabbkuxp7cdvez5@2nanenqgxjdy>

On Sat, Sep 13, 2025 at 07:58:04AM +0200, Jörg Rödel wrote:
> [Adding Will back to Cc]
> 
> On Fri, Sep 12, 2025 at 01:37:11PM -0400, Nicolas Dufresne wrote:
> > To me this rejection isn't about Benjamin's driver, all iommu seems to look
> > alike, so anyone else that would have sent new driver would have face the same
> > issue.
> 
> This is about ignoring comments from one of the IOMMU maintainers. I am not
> going to merge a driver with open comments/objections[1] from Will (and a few
> others), so resolve this with him and get his Ack.

I would strongly object to trying to share map_pages, unmap_pages,
iova_to_phys, free and other iommu pt related functions in some
limited way instead of helping on the much more complete iommu pt
work. Which is what I said to Will, but for some reason he suggested
it anyhow.

Sorry, but it doesn't make sense to complain about duplication in
drivers and then not help advance one of the biggest projects to
actually concretely and comprehensively address that duplication.

Jason

