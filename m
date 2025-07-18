Return-Path: <devicetree+bounces-197706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B54B0A5F4
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:14:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98B8F188332A
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 14:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72F429A331;
	Fri, 18 Jul 2025 14:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b="mcR5J18U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B18E2248A5
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 14:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752848045; cv=none; b=K2If2MflbONYfipxI8hD32FL6RcBc9N3JZaiv9djMecUrzu7msN8PGpcZzBv1El/karTdWZimF/dgi9GduDK89OKEzX2YufLZOOrml3hRD1DdGwXe0T57ViJtO08KtaAKmiQtb+Hq7O1HbEnoYplIY0jRXLl/rp7OEDAqezloC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752848045; c=relaxed/simple;
	bh=X2kw8wKIFchN7U6f3WRj7akA9iZyWVrco2+eQsNCM5c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=algV06uxxRVswsJUZHHq5gi01moR52zYn/3/CdJBLSW9E4w80hTnKADcIgo7DefJw09b11vkZeLFzQc/4zmywT2J27sd915jyM38X3s9etzFjGcH0kmRWTQvx1Wxc3JjztdE/IXia0xoDL/G8HRhxC8ozpQJunfn5AKIUbRNVLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca; spf=pass smtp.mailfrom=ziepe.ca; dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca header.b=mcR5J18U; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ziepe.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ziepe.ca
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-4ab3802455eso27231571cf.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1752848043; x=1753452843; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X2kw8wKIFchN7U6f3WRj7akA9iZyWVrco2+eQsNCM5c=;
        b=mcR5J18UiXbFtZPsBh36vbt1p4TFaxBPZQHTdf1PtyUw6+c/o9e7VNwra7F0sOfXhX
         nWDXEEUbNHtgLL3BM/NEGfXu3RnC13L94JH1WBazj0ZQA9keGTXYu/CZai+wZAhDp2cG
         vvg22R/c4aM6JMqlxxAPzUfqjO+uUM4iKi+sdXToBwRNvvxwF3IpiDQuMQdO+P44k29A
         pnWvbExuMvqaRurdc4s4jLq5g9G9RhK4arfrTPwzeKlp9E/A5+yQgk1Hofbfp0j5Qtzz
         WG1Gr3CRjLKnwQ1sM2syCWX6miSuifccY/PYA7SDraA+w5huMwMXzb67FfHs7C08Xf+o
         GaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752848043; x=1753452843;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X2kw8wKIFchN7U6f3WRj7akA9iZyWVrco2+eQsNCM5c=;
        b=bJ5T0Tw48UzNO6srkoIehCNvDC+HeHmz9N8ahmdt5yrNBLQFFjYLCSchD7ujgT6LOH
         VeG9iWKQ1SYohMCBSM0JGiZQ59gQfshm1QmfX7a+ScuaEbgolckIZfzJdz6wnrxi0J6N
         c9uey/LdNCrmKDS4zGJH8AGBjd+T7UotvKU0OzcvEKTXe4BC/NGGRwt21lgwViANYFt5
         n2hEfZCHe2rTqVl23UIjuN2N5Gbie//lpvcFuyFIQVa4hLPLNzVlDMnjlPRDuCix2Sbq
         V/X09OWZfJduX3rOj2YxJl/GyLmklD+/rMfu3/LjiGKnHvB3H2BgxdG+WJoebLmiLpfk
         FE4Q==
X-Forwarded-Encrypted: i=1; AJvYcCVoOvx8cAao6gSHHGLnh3Slma6SyOsoKUVkwNTR06t0P1fwLEml9vnnh9ZgbG57Ahs6NPCzPNGAixwT@vger.kernel.org
X-Gm-Message-State: AOJu0YyYRb26EmQlpjWmsAl4h8v8usyGUWWDg781id7jbgDRIjm01mnN
	2pnCW5FZ4hm3grnN25ZIr2vWqFRFCfVocm5Smk4xgYASH7rOQDdsrmrFdcwW0Fq4Dc8=
X-Gm-Gg: ASbGnctUFWzRdee9L1m+LwFzOdy1ApAgONNbNWXahdxUKRQut/hJTJ+0Yr1KUGZl7UY
	nwNbzfy3TyZaT4An9+4ClrgHHFOvEsV28TcXQIc14dqCnP3kTnTdwgoxhOmN1giuU7gflrgjLc/
	oTIr6CHrtYz3W1H+GFSQ/f9uDscWefjgOiv7gpgddwUkAdpM0/lJTxlrGhFzYyHUuQcuCkeq3ou
	Rapifzj4ilezVix29KiHPglsbUuhyV0NyCgHd0whWpwlF6zo84Q5/JMcuraEo+ZjND26YzmwQQD
	Jp71wDaZDyHi6X6iSBuZg4I/4wQYfWl8+QQABqwVelnzn1jkMg/PzbN4ELTz9KvaZ/H0pfqFq5m
	mzop/g9Hj34sb9Jd3L2iurhWw2sb+m2p6bW0KobKPecJ9j9GdmaI8PMlGRL+RqofhvNjDKH8cEQ
	==
X-Google-Smtp-Source: AGHT+IFxlNjnByJpGTyiiwdZo9i9Kku+QZgJ0vVJieheNkgXzQ9j9lwkrn0QWQUloNoVgHfjwg2tvg==
X-Received: by 2002:a05:622a:1a10:b0:4ab:95a7:71d5 with SMTP id d75a77b69052e-4aba3e9064amr110581641cf.55.1752848042697;
        Fri, 18 Jul 2025 07:14:02 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-167-56-70.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.167.56.70])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4abb49a0046sm7659811cf.25.2025.07.18.07.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 07:14:01 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1uclqb-00000009zAp-11e0;
	Fri, 18 Jul 2025 11:14:01 -0300
Date: Fri, 18 Jul 2025 11:14:01 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	joro@8bytes.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v6 3/5] iommu: Add verisilicon IOMMU driver
Message-ID: <20250718141401.GD2206214@ziepe.ca>
References: <20250710082450.125585-1-benjamin.gaignard@collabora.com>
 <20250710082450.125585-4-benjamin.gaignard@collabora.com>
 <aHTzPwTob8_5rtBS@willie-the-truck>
 <baa1fcde-f167-4a1b-afca-0a2957a688cc@collabora.com>
 <aHozv0NG1OBlAH6c@willie-the-truck>
 <b4169471-fcd0-4415-8281-c5bd722e5f2b@arm.com>
 <aHpQXy-bnwW56rCn@willie-the-truck>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aHpQXy-bnwW56rCn@willie-the-truck>

On Fri, Jul 18, 2025 at 02:47:11PM +0100, Will Deacon wrote:

> Just because the existing drivers are a mess doesn't mean we should
> proliferate it!

If you want to insist on something here it should be for this driver
to use the new generic page table code I've written.

Otherwise I don't see the point in trying to improve this in some
lesser way.

If this had come in a years time I would probably insist on that, but
right now it isn't merged yet and it will still be a little bit before
people have time to review it.

Perhaps a compromise where Benjamin comes with an iommupt format
header that works for this and we can progress this series and be
ready to swap it out down the road?

Jason

