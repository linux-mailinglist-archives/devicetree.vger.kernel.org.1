Return-Path: <devicetree+bounces-162370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F29A780A4
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:39:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 341283B08C6
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F02DC20CCDC;
	Tue,  1 Apr 2025 16:36:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BvLPH6V8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729B8207A23
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 16:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743525386; cv=none; b=X9uWQtt7EgAY/ZI6/KIc7AUkjalADcKWUcHbWIcRjmroDe8mTxhrMokmLGyhJSa6PqR2Y++g28GIj0ttbTV6wJwymqU9NvpKcrGng67EPBYdy7kzjFTJv5ForgeNYShqdch8/Axd08taoHHoFeJbTjmkNqzPelnXBtgAJnyulFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743525386; c=relaxed/simple;
	bh=D6sNF7Z1CFTYLjjafoK97rcaY9AK8pnnYevtkw0IPVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L18Dm9dT9wTx6zV27YsCiJdLF+A+FALGjF8FxencLpAQqu7/AKt08VD9iCrAAYbqisI9U/gQbkS/pWN/fISe/S2W+GGgrX1IrGUO82suithQZB8uxM26JbSVCZQv1+8yvNynDJ4nkXL/PRqIxZrslVCFIwnSVttGH+3kXtOYcDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BvLPH6V8; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ff64550991so7423300a91.0
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 09:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1743525385; x=1744130185; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6PD/PgO3ncsJ3cZCJrRv/Qt4Ciw0gv+K6O/dnt5CkV8=;
        b=BvLPH6V86TRAMmx8/X/G25/jz4pMqw1fGvkQcaeY7gsZDgtDLF44TKYtvUX8v6igYA
         ZqoqC5BQ6MWXOa4CbPhve4oNARQKSxnEkiUGJd4USt3BSvwLyW/mUdUa01ol4QPqIV6Z
         1Anq5s5CDB0RkQlTY04D2nUFQftuaE/dxBK3tyzqvliWB1fvgPKbV9Tc4mLN4o0VoOtb
         OB4EIJt4Yn5J+rnVD0wyAqXbhS08esJRX5gXKJBvZ5+vxLC7+SlFRsDoz9LlQpTuvTYY
         3K2k7eRb0RbXGKKXjfekUT4qzerZ+i3NzgWScvsOhcSdcS/hbJiPF3Ua6hrGGsqpo1Mj
         pcWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743525385; x=1744130185;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6PD/PgO3ncsJ3cZCJrRv/Qt4Ciw0gv+K6O/dnt5CkV8=;
        b=fio0c8uO7uJivE7IsS6/JHuOay/JBHy+yWOZGm3VtwyVjTLRVtPS/1ZPwjfWSM+JcP
         zV6B8W4+hLpmDblPWyZ+cVCXQz2fUS/bgg3Xc0r+hiLOyDUO5etW34wfCP1kUKfjsZGr
         kizvBBXLHr8Qmz+AzZ6vOHI8KlpRYvnD0i+3s6WjEl/g7kFrLoSrRA2R9EZhKaSvANvW
         wFB0NeRopJ1vsqE7TvwQohA92McrE9U6yjXqBOyxuYT2dEV6OQftnWmwSexhGlWPrtmx
         0R9MNqIBXLHSuQKyrpA5sQVz+0juG2aRM4sfm6OFH/P5BFa4wutr6BAHkEpEJK6rm3BU
         RjTg==
X-Forwarded-Encrypted: i=1; AJvYcCVco+2STAF76rV1Slsu8NLoUZw1uF5409vsR8bV3l5A46Jo/0BlIYSWQMJKnUX4w9xkTqFqWsQtbiYD@vger.kernel.org
X-Gm-Message-State: AOJu0YyWdFvR7HOkkdXX4i1t2pY7C3BjHYOaIs0qkydkmu7cuS6rr1FE
	XcBFUbaOtB31p5VLWOkFILgv3e/8QQXmziANj+7GBa7PthiFz3vJwz+2jO/WAA==
X-Gm-Gg: ASbGncs6c4FufcWTegnJdrxYIBiFqrniTf3zbt19vH9oDScbW3VEUSSgPhUQKrhBjrL
	iqTEgzxo/KjNdtSi6i3Djtaj69f7YmkmgAY5wACCKJPTfodNkL04uJGBqy/TLER50FFFHK2Ps5H
	ijdCKspKNW+xl3rtgjs7xJCID616IqfwDC8egE2XPYhF5MQSANP211jqCqhTa0AOVxEZLDwodkS
	ox73iPo5Rg1ZRuxx+laJGpym8V1sLWwyVobsib+Zp5R61YT+mt+d+pTHwiGvknwo9z3FDnNcOKH
	i8vDAR6vMGeW0PflhtTEE3kA7xPGeDUi6OKU2TVGMhR4+No2VagBATgtUF0OsPvDSrco7csRLEr
	/mQDOApzc9EzN0uY=
X-Google-Smtp-Source: AGHT+IEzU+hLZLEqxJTjXsu2ERUIGdFfgSk9TWMvKqglUiejKKsOC4BUUb3g94o4jueNGuOJWVn+bg==
X-Received: by 2002:a17:90a:f950:b0:2fe:b8ba:62e1 with SMTP id 98e67ed59e1d1-30532147209mr20787773a91.28.1743525384529;
        Tue, 01 Apr 2025 09:36:24 -0700 (PDT)
Received: from google.com (198.103.247.35.bc.googleusercontent.com. [35.247.103.198])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30516fed6f4sm9502139a91.32.2025.04.01.09.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 09:36:23 -0700 (PDT)
Date: Tue, 1 Apr 2025 09:36:19 -0700
From: William McVicker <willmcvicker@google.com>
To: John Stultz <jstultz@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzk@kernel.org>, kernel-team@android.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
	Hosung Kim <hosung0.kim@samsung.com>
Subject: Re: [PATCH v1 3/6] clocksource/drivers/exynos_mct: Set local timer
 interrupts as percpu
Message-ID: <Z-wWA-46L08V89qK@google.com>
References: <20250331230034.806124-1-willmcvicker@google.com>
 <20250331230034.806124-4-willmcvicker@google.com>
 <CANDhNCqNqXfGgvo8vNof1qi3E3jejk5KBD=oedZp2_p8RKZdjw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CANDhNCqNqXfGgvo8vNof1qi3E3jejk5KBD=oedZp2_p8RKZdjw@mail.gmail.com>

On 03/31/2025, John Stultz wrote:
> On Mon, Mar 31, 2025 at 4:00 PM 'Will McVicker' via kernel-team
> <kernel-team@android.com> wrote:
> >
> > From: Hosung Kim <hosung0.kim@samsung.com>
> >
> > The MCT local timers can be used as a per-cpu event timer. To prevent
> 
> Can be used, or are used?  If it's an option, is this change important
> in both cases?
> 
> > the timer interrupts from migrating to other CPUs, set the flag
> > IRQF_PERCPU.
> 
> Might be work expanding this a bit to clarify why the interrupts
> migrating to other cpus is undesired.

Let me dig into this further to figure out if the IP has a limitation where the
interrupts need to be handled by the CPU the timer was triggered on or if this
is just an optimization.

Any chance you know this @Youngmin?

Thanks,
Will

> 
> > Signed-off-by: Hosung Kim <hosung0.kim@samsung.com>
> > [Original commit from https://android.googlesource.com/kernel/gs/+/03267fad19f093bac979ca78309483e9eb3a8d16]
> > Signed-off-by: Will McVicker <willmcvicker@google.com>
> 
> thanks!
> -john

