Return-Path: <devicetree+bounces-184080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9001AAD2F5D
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 10:01:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6707A1893B06
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 08:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2B0827A92D;
	Tue, 10 Jun 2025 08:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A5L/+G0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEF843AA4
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:01:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749542465; cv=none; b=D8LjIgMMMhdtyn5i3HtWwv7CtEvHAiraJu9bZgP7WG6MM3y/utlKjDxQgB67oaBnYSvKDoqLOuV8qUhFCzXMEDAUyIJYc9PBcPN8W9aawnHoqqrkYuecSdDOldyYVEleZQNBxyZgNVKUN44V89P3VcXnsaxU/rc+ixsslGIyyJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749542465; c=relaxed/simple;
	bh=GquF+jZovk8RCJjze7Xb5g+H3uRIu4j+p0ose5q2frg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z0mBExMgsjPWLO1aXi7PMjB2Ub1oH1eJriqLoXET3/Cc9RMA7PR2qj6z7ic8YnCoPEEDXwGTbrebV2sXS/ezP/s3NE1RHMXn9u3XWpgvL/xazNkgeelbTr2kPS9rQu/i8BvlicsbRZoEZePMmo/1aFAwduPLqV2E44VGlfZQOBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A5L/+G0K; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-450cfb79177so24771935e9.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 01:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749542462; x=1750147262; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mKWAmISk89aOM0wVfQYa31c/BeY5WyWlYt42tEpUpVU=;
        b=A5L/+G0KAf/tC5UTxw8H+KcTlDULc+AJRrXCCetXnavVixY0X98AOWcnQJkrdYTRum
         5S2C2829EQEvGy2KX425qu9m9NB4JDfpr1aAW2fGswD07hXlwonoxCjfnw4lCF2BAr0S
         PM+lvg1FeJW7TfxdQUX9sqiGM/mOLPHmPmrzeU5t61aY+MuoyhsXXorRtu5j/52cgFTt
         ObBLB2cw0/FPlHnWMtxTf8R/dbOJys2V27zBh+MBbM/JLRtWD2P6OBQnwsdK6nnu1Iw7
         LTCqr1pIJIRSVGYyADlGOcYAyOef1t9wgnjICb09CNL2MnHI1C4NeZReb70RV3gf/OXg
         ynMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749542462; x=1750147262;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKWAmISk89aOM0wVfQYa31c/BeY5WyWlYt42tEpUpVU=;
        b=KWGNFFlRiIVTOjnFBbgFA8xztwG+7fqHIMiJL0JFkOVIW7qBY3WNAJVQD3mI1QA/34
         gX1Zf0fn9OVe3M2u7WkyxMtsAggXmbZGpZ+iQg/YX85gVEdmhoNGEZ+UHcybdVdsPkHo
         pzLwprI0emBdviQlGgalIWYIep1kta6LvMNLbFRtLIp9Bhf7Rcc3dZgxsxBp+/PZixvf
         OPHkVIG5cvuL1pUG3ZN+d79x45mAZ/SPr1qDqfeSIBA6HBBc2O5GHU4T7ivNB7YGllc9
         8Gz8JoYRjLjhEmZzl4JmReYza+/ro+SBpsj9tS0nkovU8w7cytJ0NYfKOkVAO/8e59vz
         u0RA==
X-Forwarded-Encrypted: i=1; AJvYcCV925urKZdK0LsF9cM9LIqSO7F0w8+npaYm6xElkY6mCy8TmrW13A4lhxvkbmf3ZIsckmeCIF65vbQF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx05AmbpXg8ka7OTerlyFO3nJzaOqnWUSAl0HyVfvhxckLC+WM4
	lud79GqwSqW4gyW4i1KVMnsrneEi2EQlruZhyeVmrC8EW1Z5ez6VB78m1wLC7AxJXmU=
X-Gm-Gg: ASbGnctfbz1rH8VRsQIN47hgPA4Qtih2FD+LLH0Bwj11CVxpHFOkqjXteQTN7US7Zr4
	d+ID5lHUXpiu6SmMui1cOXx/Lev0o2hFkVo3tpndEvEsVD18c+rM2weAtF/GxiM8h186a/GL0Hy
	3Ctlq8Cbhbgnzu1OuZ5J1x8iWuGVzy7mp0Aq3JyiMRjjT+CuPl8vP1d2rZwmcWpNbl+xjP/2CpM
	Lgitjuf6XUZpELf2+xPzvilh+7qjKczEkQJyb1A8wr2/kuqIVAGa/OqF+sdAJ+wDLOf7y0K98hZ
	m/RFQ1fVmZV/N+lzo07VhNzmuFui2Zsv7yJ4BHrpCwLA6ep2hNCqJ7sD4Bu5N+PwuZU=
X-Google-Smtp-Source: AGHT+IERMqPGjTquJvfsUCkSxdiNBdK+K6B6sBYGUKvuIYyCZj05skSoySHcYQ9VjAMuk44kIdnhIg==
X-Received: by 2002:a05:600c:6989:b0:442:e9eb:1b48 with SMTP id 5b1f17b1804b1-452014977f7mr135407865e9.24.1749542461982;
        Tue, 10 Jun 2025 01:01:01 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45307b9d827sm84741535e9.22.2025.06.10.01.01.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 01:01:01 -0700 (PDT)
Date: Tue, 10 Jun 2025 11:00:57 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: "Jain, Harsh (AECG-SSW)" <h.jain@amd.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	kernel test robot <lkp@intel.com>,
	"herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"Botcha, Mounika" <Mounika.Botcha@amd.com>,
	"Savitala, Sarat Chand" <sarat.chand.savitala@amd.com>,
	"Dhanawade, Mohan" <mohan.dhanawade@amd.com>,
	"Simek, Michal" <michal.simek@amd.com>
Subject: Re: [PATCH v2 5/6] crypto: xilinx: Fix missing goto in probe
Message-ID: <aEfmOQm0FtqtP22v@stanley.mountain>
References: <20250609045110.1786634-1-h.jain@amd.com>
 <20250609045110.1786634-6-h.jain@amd.com>
 <25b144f6-ccf6-4426-a021-11f3f00074bd@kernel.org>
 <DS0PR12MB93454C9316C3C54E45BFD65B976AA@DS0PR12MB9345.namprd12.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS0PR12MB93454C9316C3C54E45BFD65B976AA@DS0PR12MB9345.namprd12.prod.outlook.com>

On Tue, Jun 10, 2025 at 06:28:22AM +0000, Jain, Harsh (AECG-SSW) wrote:
> [AMD Official Use Only - AMD Internal Distribution Only]
> 
> > -----Original Message-----
> > From: Krzysztof Kozlowski <krzk@kernel.org>
> > Sent: Tuesday, June 10, 2025 11:48 AM
> > To: Jain, Harsh (AECG-SSW) <h.jain@amd.com>; herbert@gondor.apana.org.au;
> > davem@davemloft.net; linux-crypto@vger.kernel.org; devicetree@vger.kernel.org;
> > Botcha, Mounika <Mounika.Botcha@amd.com>; Savitala, Sarat Chand
> > <sarat.chand.savitala@amd.com>; Dhanawade, Mohan
> > <mohan.dhanawade@amd.com>; Simek, Michal <michal.simek@amd.com>
> > Cc: kernel test robot <lkp@intel.com>; Dan Carpenter <dan.carpenter@linaro.org>
> > Subject: Re: [PATCH v2 5/6] crypto: xilinx: Fix missing goto in probe
> >
> > Caution: This message originated from an External Source. Use proper caution
> > when opening attachments, clicking links, or responding.
> >
> >
> > On 09/06/2025 06:51, Harsh Jain wrote:
> > > Add goto to clean up allocated cipher on reseed failure.
> > >
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> > > Closes: https://lore.kernel.org/r/202505311325.22fIOcCt-lkp@intel.com/
> >
> > Please stop adding bugs and fixing them afterwards. Fix your patch first.
> 
> Hi Kozlowski,
> 
> After squashing this fix, Do I need to add "Reported-by, Closes" tag in original patch?
> 

Nope.

regards,
dan carpenter


