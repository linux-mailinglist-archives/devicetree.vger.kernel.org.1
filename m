Return-Path: <devicetree+bounces-209206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC64B3533F
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 07:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77C87685BA1
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 05:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 171442ECE8C;
	Tue, 26 Aug 2025 05:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xFrwg4aT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F762EA74A
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 05:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756185663; cv=none; b=l5vJNag3yotXWrNpkEM/YmK+rmqmPIbnW44WSgSG2lDsppa/YXfxtq7AkEIpNbSmrUW7tPWFdbUVpT6vMay4U0SEV5vTZ5BXT8MgnKsnfX02ZPklfhsBkVoJWoIRhdNaFqorebTpW+eLchgEPnt65kP3D50sEOCRajEr1OYIt/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756185663; c=relaxed/simple;
	bh=aIPBcehRTHMhS7LOo60VzOIm/87AhQ2tPcpYJepNTtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=klYPbGIRSUoqoAtEBh10kMV7Rf6aJ4X+Q64SyP79GmxHKGNsVQgwn532JJWlvRMxPBPA611e/GF5Hx3/XhhZOBuCtvU2ytOb+ikwrwta5MHj1GjvY/84B9bOYZsXVFPCbRDmZfM6B/8Zdnx1FIH7sqjplFpG2BAPtGsvKOz7kWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xFrwg4aT; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-24646202152so37942205ad.0
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 22:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756185660; x=1756790460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OQkGqssK21pQr0XMzzCAObXVWJZEVAYglXp51ZgH4lk=;
        b=xFrwg4aTcXQXaEzsr4tHJrjJ+j91Pi77+H/C1zcA/SIthiaWoj85wZEVqgDMbwHgmJ
         IppXzB4DBR1JbQmww+nNvvIWEDvBrIUTQAW3Wj9u6mAa8f7omodTPmOGQXLx16ZgiGht
         /PxJj6mqrT8TQRQBmeMnIH/id7IMrBiKFuvV4LS9Ps0GvPt5mGWWWXXIyJRoMtDrcP6M
         dKSvQ3c+1Vj4qNJBze0VMAZVZBL01Hf0UjfK6E97XTAtVk7YVq/a4dJL3NptTA+zQcuK
         payJpvAB4Z3MKLaAKnxlUqcqLrAB1kk+FDuAFC3VjGft/wO1IvTe9SLzUyyUaA3IyhM8
         JHxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756185660; x=1756790460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OQkGqssK21pQr0XMzzCAObXVWJZEVAYglXp51ZgH4lk=;
        b=Z/wWWR62JQJsct4nj8UuuGQUzmVgQJskph1986DBsw+sQdy9d49cGKPeE5tOkVdToB
         mG7Gjfx++0hyt1EvdD21331IZ5j8JQocImX1eODblSHvqQ9GU+jCEVLyP7sc49c2Rs35
         /k+gKzK3EdNbs19aiY5PxVBHKNr6pQ8FXxW6iTJ6/JgaY3kwO2LPwGxtlzuVxYjw2jm0
         sb8PuW03oeghMcCqJ7ka+ZwIVn/T0h8tfZOXxjZiDSZ2VlvWlhpJhRHsNZHfQ3MUn0yT
         oMoLdgDSh9KLJkb5yO7kkG6G3D5H5TdhUz3aOkXcQEDpwTia6nSM2f/QpLNLe6RonQio
         Mv1g==
X-Forwarded-Encrypted: i=1; AJvYcCWjSmEjP0p45Yg9+rmwMxCcLn6DEUXBUSPoEEBU4BFqkSSSv0yTbEBE+IxUYrp3N7RMZaio6kLoAdI1@vger.kernel.org
X-Gm-Message-State: AOJu0YzIn69aDaOJdoGOPuKGXIcUstXcyKy12GGDKd9OYtSxePJ6zr+6
	72o8asy3UK4V6yC0j5qdah75826QWcRBd3iJQH92NnmkGx91Ryt5bQFqdOR3ihjAToo=
X-Gm-Gg: ASbGncuMBeQLJzTY77mf2nGZDBYwVfpRDc5S+pYoCV3niVeyWJ1xNxsBNmxWAsDKkIm
	CQlYtrqmxUN0gy+BnlNA9cLBhM0HP/VwcYzaksgvGf4iO9yLec6GlxNST95foKlEhfoNcO62K5N
	Cz1+kBC0nvT/3xKL6FphX69okAxA3Hk1wiv3cgNDwWnPudaGOqNc4t7maFsA1VtOumGtwQBTFGk
	UYxIouc+dhukjFzdnfxN23YO9hIKiA5jAlVaMCSmoMY5JDWJkew8nQfnkG3YyGOOxezFMRjfvc3
	7Shvs0tQJ/8csIJN9f6I2KrrCcovjNdyZJDeoxLnFPpcmW2VqJfjSNKXfmVf5nLiMKDO7C7/qSG
	YaR572G0XXgX+Iar/CcGw3jMT
X-Google-Smtp-Source: AGHT+IHe5l009rsfaROaNNzxh1bua4+CVjBZVITdGInBHZIhPXAoVt/QHjtqxorzaIQf91LXagZQuQ==
X-Received: by 2002:a17:903:41cc:b0:246:b351:36a3 with SMTP id d9443c01a7336-246b3513841mr85148925ad.48.1756185660468;
        Mon, 25 Aug 2025 22:21:00 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24668779feesm84022375ad.34.2025.08.25.22.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 22:20:59 -0700 (PDT)
Date: Tue, 26 Aug 2025 10:50:57 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/7] OPP: Add support to find OPP for a set of keys
Message-ID: <20250826052057.lkfvc5njhape56me@vireshk-i7>
References: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
 <aKyS0RGZX4bxbjDj@hu-wasimn-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKyS0RGZX4bxbjDj@hu-wasimn-hyd.qualcomm.com>

On 25-08-25, 22:14, Wasim Nazir wrote:
> Patch 2/7 is applied in linux-next (20250825) as commit
> b5323835f050 (OPP: Reorganize _opp_table_find_key()) which is causing
> regression on my board (lemans-evk (arm64)).
> Reverting the change is resolving the issue.
> 
> Kernel log:
> Unable to handle kernel NULL pointer dereference at virtual address 0000000000000016
> ...
> Call trace:
>  _read_bw+0x0/0x10 (P)
>  _find_key+0xb8/0x194
>  dev_pm_opp_find_bw_floor+0x54/0x8c
>  bwmon_intr_thread+0x84/0x284 [icc_bwmon]
>  irq_thread_fn+0x2c/0xa8
>  irq_thread+0x174/0x334
>  kthread+0x134/0x208
>  ret_from_fork+0x10/0x20

Hmm, this happened because it is possible for the `opp` to be invalid
(error) even if `_compare_floor()` returned true, if the target key is
lower than the lowest freq of the table.

Dropped the patch for now anyway.

-- 
viresh

