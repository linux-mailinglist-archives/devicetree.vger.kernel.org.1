Return-Path: <devicetree+bounces-187305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C05C3ADF75B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 22:00:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF4A317F297
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 20:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3284821ABA5;
	Wed, 18 Jun 2025 20:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="f+HQw1a8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B44219E8D
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 20:00:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750276815; cv=none; b=KoMywXaZbqxq+3hZGe+CCJAu0n2/7WookDffGG+Yu379PEPywHz/mfBgDXcDo2Pew80skxftqY3l1Tn1N4HciYbPuPT+Ai/B9k2cn7PDI7ycciAOWvDH+4B2uJzh2cewkJH37lI6g6NIPQoFvA1JUlxOoZcPNc7OIFBvSVBkunA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750276815; c=relaxed/simple;
	bh=Thq4Q06cdpVu9pDEN+/3JBZrpgyjUXOgoUe0gvNvhSk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=iHRhtjRGDdziMJvTVDf2DIutsaVGFqJBlNS2TDOn+ddJ62ixQ/KhZE0T218ATi5x6g+cLarPYJbzujakifXUv8ye+yLKv8lQSjdPeer65CkCxLycADt6c55Lr3XsohrOPtiIl+2v/1DoKqC72/28OX0o2hcbkyT4JpBzKnjFXxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=f+HQw1a8; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b31c978688dso66577a12.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1750276812; x=1750881612; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KiOzVfjBcF1fRtJg0Y1H//g4cNADDmQDLTn0mBy9kzo=;
        b=f+HQw1a8sMcwX9xo2U1ygWT+QWYLU0F4HBcOvrIkAhCmztVGuDaq3zoVf/NAP0kpfw
         b//W5zthQDGjYjyaDRMyN+Vcnbe3zV5Nr6eA5NBgoD21zoiEIKj5XGz8UmEKhmkhSSjP
         5UIZtEbw8qUOmBAgLNSxnqYCIRQKGVfkxQQ+5PAhVTqCJspZmoDvMZLberAIxHiWb9+8
         E17c2hE79UE6tIXmsD2oGjxPt9ffdno7l/yYSpPPiVPQf6+bZWgsejQCwpSAiGcirihs
         6odCbGg5ExPNl15Tr/DCA2ExS8YbnMOl0bMF1ygsFr+6j1t2ZuD4YEvoosB6mIduVVnD
         +Giw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750276812; x=1750881612;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KiOzVfjBcF1fRtJg0Y1H//g4cNADDmQDLTn0mBy9kzo=;
        b=dSj0Rco3l2zaGguXMoAEvzl7uGww5+s0yDBpunnzj1IYliy5zsr7HR10r26IMM4zKh
         38zRvgm+A2ZJY/Mz3uXKQHi1SLM09MXYxsWRIxfAojqb/nBcAAo0wL1xQX/DwFASw4BV
         cd62wBASoH5rPy78jeIqnftNBLXIkkKcd/SFk6oE+7ne2r9Xp6vZ2XKkYn4nafFpTvO0
         EMUoDo9litPvlV6BYlOey3BC4U3pqb5VSJkJJKiWitOeK4GLk+dNGkCGBcdmgzIAfOE+
         L868f5bwZt5NoUZhJsUHP78VRNpKatN0yPgLsrIClnPGik/6Pb6RaMRmF/jM3/ToNNuu
         aUgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcN8ezW420+oFzypmtLr5VKURuOgnIgWwb4ab3ss4x4Yl1elYNuKgjpWl9veta+XKnnb125I3MlWE7@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi+teiQxa97/sk5B7yI0lZqBP2YDE3VX+0BCD/QNQPJfi5RtpL
	tBjCAn1WGQDFUb4zO8+tbXwRpT8BSOnz46q42+2Zqt/t+3TtoHVPE0yslA45kMR94Lc=
X-Gm-Gg: ASbGncvBHgjwV8q74UMaDQQBlbM3qh5fE2KNSt/mDdilCFIMYGTXceXZ7nN4m6eUONP
	PWu3T8Rc0txkfrmX3j1AAB01RFCaKQc0JXnUU+2UmgQt3De+4ggZki+FOQpqY2bG+w/RUyJmopS
	+Wt+fvl47aDq2pQ0QVP4rf+aDjI/lo5vREDYUhztSuCcqHdpKNnj6Av4Fg7Zk1YvGgNyMLsBT+R
	d0c9xnUc01nvI4SivCICsiGeE9gsWD29bnlBAB2WDArJcqwQ8ichlHL7oPMPXGYc3OMcMtGo+qf
	zSzSXucWXETNqBpOcj6UU5SA34U+H8/+mUNXXlU9t9k/LFiYKpROW9gi9iuy
X-Google-Smtp-Source: AGHT+IH3xjpyQ4ebVaMo9DbY1gh/tZqYj3qhoffl3icr75QW+zCNKAPlpcq7GyNn9O1WQp4oMM2scw==
X-Received: by 2002:a17:90b:2dd2:b0:312:f88d:25f9 with SMTP id 98e67ed59e1d1-313f1c7dacfmr29693399a91.7.1750276811912;
        Wed, 18 Jun 2025 13:00:11 -0700 (PDT)
Received: from localhost ([97.126.182.119])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3157a605f21sm1629583a91.0.2025.06.18.13.00.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jun 2025 13:00:11 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v3 2/2] pmdomain: core: add support for subdomains
 using power-domain-map
In-Reply-To: <e463a278-7e6e-4287-9093-42d0a0d365d2@suswa.mountain>
References: <20250613-pmdomain-hierarchy-onecell-v3-0-5c770676fce7@baylibre.com>
 <20250613-pmdomain-hierarchy-onecell-v3-2-5c770676fce7@baylibre.com>
 <CAPDyKFrO9rb0eDb2qO+EGaVjOFG=7emgca8511XACDhWY=dt5g@mail.gmail.com>
 <7hsejzp4xg.fsf@baylibre.com>
 <CAPDyKFo-iPBPgkM43q+5cGR2sptkLk4E6TAERCQbCu24o1RfFQ@mail.gmail.com>
 <7hcyb1os9y.fsf@baylibre.com>
 <e463a278-7e6e-4287-9093-42d0a0d365d2@suswa.mountain>
Date: Wed, 18 Jun 2025 13:00:10 -0700
Message-ID: <7h5xgsq0qd.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hi Dan,

Dan Carpenter <dan.carpenter@linaro.org> writes:

> On Wed, Jun 18, 2025 at 10:48:09AM -0700, Kevin Hilman wrote:
>> diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
>> index 88819659df83..3ede4baa4bee 100644
>> --- a/drivers/pmdomain/core.c
>> +++ b/drivers/pmdomain/core.c
>> @@ -3220,6 +3220,40 @@ int of_genpd_parse_idle_states(struct device_node *dn,
>>  }
>>  EXPORT_SYMBOL_GPL(of_genpd_parse_idle_states);
>>  
>> +int of_genpd_add_subdomain_map(struct device_node *np,
>> +			       struct generic_pm_domain *domain,
>> +			       int index)
>> +{
>> +	struct of_phandle_args parent_args;
>> +	struct generic_pm_domain *parent_pd;
>> +	struct device *dev = &domain->dev;
>> +	int ret;
>> +
>> +	if (!domain)
>> +		return -ENODEV;
>> +
>> +	/*
>> +	 * Check for power-domain-map, which implies the primary
>> +	 * power-doamin is a subdomain of the parent found in the map.
>> +	 */
>> +	ret = of_parse_phandle_with_args_map(np, NULL, "power-domain",
>> +					     index, &parent_args);
>> +	if (!ret && parent_args.np) {
>
> Sorry for the pedanticry but could we flip this around?

Sure.  This is early prototype code for discsussing the big-picture
approach, but I appreciate the review.  I'll clean that up when I get
past the RFC phase.

Thanks!

Kevin

