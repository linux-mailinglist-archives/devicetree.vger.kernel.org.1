Return-Path: <devicetree+bounces-140412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69792A1995D
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 20:52:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D206188BBB2
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 19:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 970C5215F75;
	Wed, 22 Jan 2025 19:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b="C20uRui0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4DA215F52
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 19:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737575534; cv=none; b=LpQmSgqBe/rwpdisQDwCk0t3XceqbxBRBHBohCmid+peCOG97Gz/D1x4YuRn66ueH9bGyD0WSKHT7P2HR43NdAN3tB4HLgSMNE63FGiB7gjgTTlVx4qHvhM6Sy59RgOEcIe+fpKyvEl6f6WCP6u9fQrFwHpO2lV496gHysHFQlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737575534; c=relaxed/simple;
	bh=+JLleq60hwwXyg8/u78q/jC2Cf75ZDGkYjtAfO4fDWo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SCfRvJGe/LbBtPN16oztGcr35bWcIun1y8AQkdSNizBg6HFeKV2CQVYKP+NhO0IjxzR5HydvFvMHYx8ep+4jbWcBB/kkdzhdrQffNH8WQh5yKbmjF1U/rSzPn5B1TGcvZ/GANHjkwMIL2a1av8b0dSKUk7hpRWFidQQcJQ8XU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com; spf=pass smtp.mailfrom=konsulko.com; dkim=pass (1024-bit key) header.d=konsulko.com header.i=@konsulko.com header.b=C20uRui0; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=konsulko.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=konsulko.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7b6ea711805so11209385a.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 11:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1737575532; x=1738180332; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x9HOwy2WEVIU7BfR9Hi6YlozRvVhHW+HM5IexkLGPzc=;
        b=C20uRui04+BpqOS/SYLzIgbCCJ4XLAM6tzQds4n9HgVhjRsEZnGozhYQQOJkKap6uz
         vbp2o/HzRcspTFPNuymSs7ZoI3OPLqVLwyOiaWkY6u4oG4DizNVa5Qnn4Lx0E53u2jpS
         UZPWaC20YkLRbIuYm+dVvNzR+uZIbmsQr46Ak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737575532; x=1738180332;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x9HOwy2WEVIU7BfR9Hi6YlozRvVhHW+HM5IexkLGPzc=;
        b=BUEhe3haaFA/knFTphpFpUq+Ak0Uau2A9xYeBvZXBhvMn3HbrMZpznHRVpMSgl9dqm
         mY0qCZQ7m0ziiR8Kou2+hUxCv2YEOPvgzC+Gpu3ZqXT/mz8EMzDEXg21dK9Ar8k6WT+2
         JqWbSa3jO7KZEI5NxorX73LZRI32VfJgdCX/3k6RXkja8fq0Mgi9/r1x9NFXDBe2ZCTT
         21X9EGAnVSDlVLUGEuPDqwHFQi6d4xIr3/SXQk4GY4HXgJ3lPZcebZSuwV8LL6EpuGj3
         QLPqWuvjFFxw9ikfs8WjGi2etzPRUy/UsC/tXx65eAyb2pK+FbKxRkGFLQtwOk684iYy
         mdsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXNWW5xv6bc04GHPRT2GThvt6QBoxTEzoCSblRQfFSw4hPAvloVYLy5BjwP1A7G6qGUlhpcqU2HRDe@vger.kernel.org
X-Gm-Message-State: AOJu0YzkXUQ51NXrEWXv+VnCqx3QAvHFrEXrblMSFbCUzFgXRY1aeLoQ
	DCAQM6dRpFRU2DKj3pGpFLqcwMacFe+1R4FYG+4ygwRVvrh8s6IooH7wnnL4KGFTnUCMpzZCS9I
	v
X-Gm-Gg: ASbGncsqm0qBPsOxVLHR/KE6wa3paZB+RlVXWk951J+4zp5Tz1grJgM4X5kXKqq7ysP
	SdQfVR5HTv4PoDlTdrgaxRH++ADW3aL9m0lLEiYRFZ+y6OSIVSBw3MDFxx8zJWKvvVZh2Jh+BYa
	7yU5FNtUIPElp87udKs060CX444jWHU3+Lgijqdjt2Wj6YsnTZ5deicArMsNJs1Pyhwdsem6Klf
	TwKPUeHFwl/beIkKyqpOaVO0WYCW8zA5IubEm0n/Or8D8QnAGMLyPGmy4QXtqDBLe1M+Q==
X-Google-Smtp-Source: AGHT+IFvdzO8kSsZezoYd253t61OXNyocC0Co1nCFV8wHBoTP+qJCZjUlj51eeP4rMTViQPSd/AEYg==
X-Received: by 2002:a05:620a:6884:b0:7b1:45ac:86b4 with SMTP id af79cd13be357-7be631f51e9mr3472465785a.21.1737575531745;
        Wed, 22 Jan 2025 11:52:11 -0800 (PST)
Received: from bill-the-cat ([189.177.145.20])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7be614dacbbsm690566085a.66.2025.01.22.11.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 11:52:10 -0800 (PST)
Date: Wed, 22 Jan 2025 13:52:06 -0600
From: Tom Rini <trini@konsulko.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: omap: Add TI Pandaboard A4 variant
Message-ID: <20250122195206.GA60249@bill-the-cat>
References: <20250122001240.4166460-1-trini@konsulko.com>
 <760d6e6c-ee51-405d-88aa-0def89084778@kernel.org>
 <20250122141708.GL3476@bill-the-cat>
 <17d1708c-e326-468c-941a-1863dfdc946d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <17d1708c-e326-468c-941a-1863dfdc946d@kernel.org>
X-Clacks-Overhead: GNU Terry Pratchett

On Wed, Jan 22, 2025 at 04:08:27PM +0100, Krzysztof Kozlowski wrote:
> On 22/01/2025 15:17, Tom Rini wrote:
> > On Wed, Jan 22, 2025 at 09:36:29AM +0100, Krzysztof Kozlowski wrote:
> >> On 22/01/2025 01:12, Tom Rini wrote:
> >>> Document the ti,omap4-panda-a4 compatible string in the appropriate
> >>> place within the omap family binding file.
> >>
> >> Why? Where is any user of this? Your commit msg should explain this,
> >> because it's not obvious. Obvious is to send binding with the user, but
> >> the second patch is missing.
> > 
> > You were cc'd on
> > https://lore.kernel.org/all/20250121200749.4131923-1-trini@konsulko.com/
> I am cc-ed on 200 patches per day and it means nothing. Do you expect me
> to look for missing user in 1000 patches per week, for every 1000
> patches? Or how does it supposed to work?

Being an overwhelmed maintainer sucks, I really do get that, sorry for
my short reply.

> But regardless, the majority of review is done via patchwork and that
> DTS patch was not in that thread. It's missing.
> 
> You are supposed to send the binding and the user DTS in the same
> patchset. Separate makes little sense in case of kernel.
> 
> If you need the binding for other projects, then of course above changes
> into: always reference the other project submission.

It's fixing a 10 year old regression where the equally viable option is
to just delete the dts file as I'm 99.9% sure no one has even tried
using it in that time.

-- 
Tom

