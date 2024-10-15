Return-Path: <devicetree+bounces-111503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F58799F0E0
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 17:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2AB421F21913
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:19:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 644EF1CBA1B;
	Tue, 15 Oct 2024 15:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hvDnHk3V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BC81CBA08
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 15:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729005576; cv=none; b=mzVNX+7/478MB1cgjkLoWetGdPNn085ZQyszPRkECm3aAl1NYPe18jUqvLobIhcOCpe1f37yNVboz/YWREi9Ucvnpzb6G4LRSysS1mqW/iHC5JQoTRprZyLNLGdXxg0LkI/l1baUrWGWHE6AiUs1l1RvLO1rznS8dsg9u2kRYSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729005576; c=relaxed/simple;
	bh=OeZnDiQ21Kow/ABo1m0beQ7QhnKZe0Ia9aumI15eEHY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mgIEaYqPzxsYhGrlF+Yn6zGnT4FkeXU6boKxlpq75qAt/MhwNioN/L/5KInfFd9b97KCA8Dw+2rySffHiZjtycW69tMzTUrnLCgQGuuxKWxg9TarKkER0Bf1BAnQ9uJPWbwJf8zYvTHE9q452VY2plO2C1he+sUBTvFJxtUEhts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hvDnHk3V; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20ca4877690so483355ad.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1729005574; x=1729610374; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=r3Rnuzqm/ZJHbwtJkwmQDmYpY5KahmUtxVsIkTFG29g=;
        b=hvDnHk3VBHWmYZRXHDkk35GXUpzp0AoOYbdgjiFimp6jMtxdI43tcxL6AeLpAbaV8F
         8wP3assN8j05QFdjsb0GI+YOXunJDQiKzPvZ+d1EQ584pOVo7O2jJpWAFFBobjv83kSW
         yv1Tfds0UdafEryYKbqdpGO1dNeX4IV+7C373NppUGrdsU6nWzcXMr9CEg7y0Fo8bsts
         cOYPpXTGy3N7M3pW/sJrHGunUedvq+vzXZFaJqnVK/ep8NBKFtpC7ZnPstxkBuzBWik+
         oNSB3arGpCO0Aa9fke6OSMo+Jlcfir3gjDAQqum9MdSxEJsw1Ywyl5oso1C0SO0tq3Ai
         CsbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729005574; x=1729610374;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r3Rnuzqm/ZJHbwtJkwmQDmYpY5KahmUtxVsIkTFG29g=;
        b=TWvz58bRTSf5ZaWcG/ZavIQ9X0tnCR4z+/igLBtea4v+0EhrNMRXYWhQbcePMNqfAI
         hHZusVBtt3/38h698/KAbH9KLzDLMghOEMKxfn6FoBcNj14kZfiFK6yMbcLJ26YJ8Z+R
         YdfqcOihjFOEJon8bLLQA8iMMMA2q0V4WbqhxQp2z2EH1RVTaiUO9xmdj5BvAtTAnE3m
         Oz2ComQhSRDmf34EFvbxsUPpaUr225KlR/pVwx/21h7h3EyVV72dc0sc8Pntf+fpCctr
         Fn7ZIJpMIQa1IL0y1YdMJpGx6v2Zhz6uouS9dYKt82WzPzpnaH3NpceeedRw1ANdz8vh
         z4ww==
X-Forwarded-Encrypted: i=1; AJvYcCXGnXQYIQKDcNVbOe5ZgvHCQihCUjQJ44gT2OIb+JMhuspuC7TvywBvo+pceXPKY+6k/a1dpg5rFOgd@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj5d81IPISn1iNLw8XlSpbDS9ieecnsEnfEb8PT1T1n9J29so+
	uHDf9mkCYTOUT3RaWQJ5QaoPMRYRSA1ZLC6cP5OdNARbCJp9/kGX14BYDH66+Q==
X-Google-Smtp-Source: AGHT+IE0f2VvQeg757IQK69py4gyL7jf6g+kTHLVZTHwi8LjtCbcD40rA6RPqNG0wlsLEIalLzekKg==
X-Received: by 2002:a17:903:2292:b0:20c:568f:37c7 with SMTP id d9443c01a7336-20cc02a791cmr6712555ad.17.1729005573959;
        Tue, 15 Oct 2024 08:19:33 -0700 (PDT)
Received: from google.com (62.166.143.34.bc.googleusercontent.com. [34.143.166.62])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e392f037aasm1919291a91.29.2024.10.15.08.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 08:19:33 -0700 (PDT)
Date: Tue, 15 Oct 2024 15:19:25 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH RFC 2/2] iommu/arm-smmu-v3: Bypass SID0 for NXP i.MX95
Message-ID: <Zw6H_fl14_r3bvgw@google.com>
References: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>
 <20241015-smmuv3-v1-2-e4b9ed1b5501@nxp.com>
 <Zw4kKDFOcXEC78mb@google.com>
 <20241015124723.GI1825128@ziepe.ca>
 <ab21d602-5349-47be-b346-2fbc041fa13e@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ab21d602-5349-47be-b346-2fbc041fa13e@arm.com>

On Tue, Oct 15, 2024 at 04:13:13PM +0100, Robin Murphy wrote:
> On 2024-10-15 1:47 pm, Jason Gunthorpe wrote:
> > On Tue, Oct 15, 2024 at 08:13:28AM +0000, Pranjal Shrivastava wrote:
> > 
> > > Umm.. this was specific for rmr not a generic thing. I'd suggest to
> > > avoid meddling with the STEs directly for acheiving bypass. Playing
> > > with the iommu domain type could be neater. Perhaps, modify the
> > > ops->def_domain_type to return an appropriate domain?
> > 
> > Yeah, that is the expected way, to force the def_domain_type to
> > IDENTITY and refuse to attach a PAGING/BLOCKED domain.
> 
> There is no domain, this is bypassing an arbitrary StreamID not associated
> with any device. Which incidentally is something an IORT RMR can quite
> happily achieve already (I think the DT reserved-memory binding does need a
> proper device node to relate to, though).

+1. I assumed that the use-case was to first attach the streamID to a
device and then intall a bypass for that specific streamID. If that's
not the case, I'm not sure why are we trying to achieve that.

I thought about rmr too, but it looks like the "device" is a DMA and may
want to write to more than a fixed region of memory.

> 
> Thanks,
> Robin.

Thanks,
Pranjal

