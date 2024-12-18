Return-Path: <devicetree+bounces-132136-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B469F5F87
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:44:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1055A1885007
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 07:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0830315B54A;
	Wed, 18 Dec 2024 07:43:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WditV7Yb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4F615A842
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 07:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734507816; cv=none; b=KA8lADzSs5Zltd6JR7Lr600zciKpoVfYMkipNxh0VlK0iqNPUvB1RyndWmtdNMNKHPqYZ/qygT86tHlobGBrqO384zvHQfKLlU5U7t0E1PcFPvhuuG4GXgF6XcoEBh/Ar8RCIM5NOIIRq8ppB7qztrPF0wqqnQyaVGjJktXRqts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734507816; c=relaxed/simple;
	bh=iQr70TC1Ge/e9uv2v8P1WfYKhCbyQDlgvqs3HHrTTYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HGlmk7yJfWs0q2lpUlQ2VgO4t/r3KT/Wvq+UaGbkrR5gZvGEfNNZnZDFtLkmtG3Lv1xdwFmkTr81I3rs6sOxWMoF6OFriSwPYsBypnvdsHIFeDDZ1l1lcOFQZL36yLxNhtijNpDpBPz1kf93dCTnLAask1kjqKdfoc7FCKo7kw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WditV7Yb; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-725f4025e25so5314879b3a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 23:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734507814; x=1735112614; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=x1aJYya+2E3L9DNld25usr78Elxh9+B64FFy4tnm/LI=;
        b=WditV7Yb6gZ/v/BrvwX2DySgRE27r4j+FLokwQZgtJT9h8EdJv4FSGavGZ8igCIgUA
         YR0wJACsmpSeyDyTolmgRaquULBl8MXSyGZuDVCrt/gQrt2b7hJBk6PJFB2bJ6UrhDfI
         QYoF7LCuu8+L/ThkIXTUIK4X6Crayxf5q8KxMJ6ck1G8r3gCbuf7nt3teovVCe0FBsFP
         cnHqlvFfg+spLpdYiePRXwDIrI6GbWSojGSh6e64Qnp1GUFlflDZ5edS20wkXb7npfTU
         W9F9qGdtfPokXAl9FPM77FC6KTuieyy4zdpDQZtDI5zMgRq3sLedoj9jpGPED/TjltVD
         ftMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734507814; x=1735112614;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x1aJYya+2E3L9DNld25usr78Elxh9+B64FFy4tnm/LI=;
        b=Eq5piBJRBKYqI1IlHgD8hB9ILbUBsaPm/ejoPqNJUi64FaO2a9Mv2vgC4n3XTePGC1
         rNZYtWsTzgO7us6YObH16I2mCwoBFs3NSaoE58xEpaVlYz83zKkKi0iy4OKEKYp7Ql0a
         fbAelqKDqRaEneKvTXi0hr36uWZn67dlEeGhIZL+qvUSXWdaAgvMyHp4ZwhL3x9O3JEi
         W159ehcaXyM0aVn0Mevuuo7cXM5FVk7JR+UpNIzubQ3btr9/5XsUHsuRuTfMjuDaME5Q
         cfx8qXsf1teIp3JlEKAMC6V1lo6RWAr/2h97tx3NLBx6E6Vupu0WEuj+ShFb/T+x2yc+
         TKEw==
X-Forwarded-Encrypted: i=1; AJvYcCWcfyPzBXN8JId1Q8d304OHwmeTdXiBsU8oasNl62D8IsSQJmO7SvqByj/g+y6xvKc+N7sBoCdVgkMY@vger.kernel.org
X-Gm-Message-State: AOJu0YwlJO9WXyY1XIyy5B4MNfYNVaO7Ow9ZDgMRWvK2idWgmwpKQAFV
	IpRWRdf5KCGXjtT1vUdFTUK4Qk/q44qR2FICQSLnSgNj7ySBOjJil7Dv5FlwLfQ=
X-Gm-Gg: ASbGnctBufcWqyMlUNykgLU7YvKtEnwr++C19T9vcMDm4XxOd/rmGueG3Xo625iJ6D3
	sW+uV8rihKosAlpSS7ocXcphVQCV64EkbDFaQnH4H1HJibsWY1qWvEY/gqITznkC9ifU6WwAVip
	ERRBteXmQQJXrMk3J6KG/C+83Q8w7jlDkRsEN3QUJZGckgUAoLmGBY8Eiqs0LovoT1ntD8faaPP
	6HhUCOowqlr41XgX6EPaXRpFE/Fmd9lrECT5doe9erc4qE3Q2ZNsH+okko=
X-Google-Smtp-Source: AGHT+IEA6Sa4ujE9QFfv0BQAbIVG+jhMAQXQN0u1B35kYf+P9c9Qutr90IDoa5pVp7VjIyS7ZvEuYg==
X-Received: by 2002:a05:6a21:9002:b0:1e1:b28e:a148 with SMTP id adf61e73a8af0-1e5b45ffc3dmr3247283637.5.1734507814668;
        Tue, 17 Dec 2024 23:43:34 -0800 (PST)
Received: from localhost ([122.172.83.132])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bad760sm7890628b3a.152.2024.12.17.23.43.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 23:43:34 -0800 (PST)
Date: Wed, 18 Dec 2024 13:13:31 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	upstream@airoha.com
Subject: Re: [PATCH v7 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
Message-ID: <20241218074331.vdrfthbrl3mil24p@vireshk-i7>
References: <20241206211145.2823-1-ansuelsmth@gmail.com>
 <20241206211145.2823-2-ansuelsmth@gmail.com>
 <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>
 <20241213040001.jaqeuxyuhcc73ihg@vireshk-i7>
 <675cb6b2.050a0220.149877.5bab@mx.google.com>
 <67627c91.5d0a0220.ce2b3.f329@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <67627c91.5d0a0220.ce2b3.f329@mx.google.com>

On 18-12-24, 08:41, Christian Marangi wrote:
> On Fri, Dec 13, 2024 at 11:35:25PM +0100, Christian Marangi wrote:
> > On Fri, Dec 13, 2024 at 09:30:01AM +0530, Viresh Kumar wrote:
> > > On 12-12-24, 13:01, Ulf Hansson wrote:
> > > > On Fri, 6 Dec 2024 at 22:16, Christian Marangi <ansuelsmth@gmail.com> wrote:
> > > > Hmm, it looks like this needs to be moved and possibly split up.
> > > > 
> > > > The provider part (for the clock and power-domain) belongs in
> > > > /drivers/pmdomain/*, along with the other power-domain providers.
> > > > 
> > > > Other than that, I was really expecting the cpufreq-dt to take care of the rest.
> > > > 
> > > > To me, the above code belongs in a power-domain provider driver. While
> > > > the below should be taken care of in cpufreq-dt, except for the device
> > > > registration of the cpufreq-dt device, I guess.
> > > > 
> > > > Viresh, what's your view on this?
> > > 
> > > Sure, no issues.. These are all cpufreq related, but don't necessarily belong in
> > > the cpufreq directory.
> > >
> > 
> > Problem is really DT schema... I wonder if it's acceptable to push a
> > name-only driver in pmdomain just do detach from cpufreq. The cpufreq
> > driver would manually probe the pmdomain. Is it acceptable?
> > 
> > Or do you have alternative solution for this?
> >
> 
> Hi Viresk I notice the DT patch has been applied to -next but no
> cpufreq patch. I'm confused how to further proceed and what changes are
> needed. Any hint?

The DT patch was fine and so I applied. I was waiting for Ulf to reply
to your above query.

-- 
viresh

