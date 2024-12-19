Return-Path: <devicetree+bounces-132713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 410DF9F7DE7
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 16:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DD85167218
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 15:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2147F225765;
	Thu, 19 Dec 2024 15:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hlCZ06li"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F244221440
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734621871; cv=none; b=Jj3/PDdl7xLvt5nW/MLQjHPrz7XIWdKnCYa9eebQ/pyHfIvJ9qKBR64GEWZAIIWZzxrJT5UdKOvYPhBVIIeA+tUHKwyjn6LVKyW090NbFlLeQUkIyPaXTWe6guAb9yAWfev87qFxEMe+8I/LNWlEe7+c40iprsDhB0bA4pBpVf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734621871; c=relaxed/simple;
	bh=9u5TfMAkYnT9fMBY4d4ebSKzahEQ+4SZIveD0P/Qg3c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y5p0dgDg+N6eyzV1H0Cglpr5Xb4fwiBqJqlCKpwTPkPXFXW+px+f1SRmV+koErOcUncyZJKkyevCUNfFrvxiiEfLoVXwoONmM0vo6fxhh+t5fPqhsL9wG7V8N9+B2ZUUeJ4Mew4MxshFpDzomZvaeMWMm7W1eFLxfc6DtulttUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hlCZ06li; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e0875f1e9edso656035276.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 07:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734621868; x=1735226668; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9u5TfMAkYnT9fMBY4d4ebSKzahEQ+4SZIveD0P/Qg3c=;
        b=hlCZ06liBTba8ojsbNRkORo5fpvfKCWSe+mpfUDnkgftkb2JWPP7xgBWkYpe988bn4
         aEt42bIdZ9sbaXEAdK4cygbGL5VtJyoESJGtVmRJz0cyPhOkmgzybbh/5a5uRCTTN9n1
         AAtvR3UpnS+OTbW9Re6xngOg6hSAWx+n8TQwFwHNem4XpfepMvmtqYEKGC6WMraTKt2l
         2afIId69lX7EzYHg/V/DoN1zEhgpYX+Cj434dPkmngNaGJ8GALfLPQSxiQCSCfw+vSaL
         93i/cRi3eXJQSvs3GEHarOlr8QrU1TdtjnsFm6dAEurVaH3Gi6/iAeQFz5qGIZh7ahqg
         FmFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734621868; x=1735226668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9u5TfMAkYnT9fMBY4d4ebSKzahEQ+4SZIveD0P/Qg3c=;
        b=IVIqPG/pqmWhaYTu/f0Nyd/9ndyOKqIdWOyJFbI7Oqjktuge+CvGaR4PlQsOzykTX9
         y8KINvBKH5gFvNC+csoVtdWQXDNDvaEpKDsjEgavDiw5HX30fodzNJ0XEDk4bjpn9edB
         01L20JKJGA+2nMZoE6LVf70xEypW/RWm7SrUDu1balntolOmP78J+m3gtppia+YlfW2F
         PZ292NPsSqbTlgxM7Y/g0oae2GyDWcl8oX0hxHVAbzEhMccNftjd1pgmbU2bt9Ixr/XE
         8J/it2sNKz3QbPRJ3HJnUDASzuGoZqj1hEwo/uQaqVm43ttomRLOETaAWTUZ05vskogh
         Ks0g==
X-Forwarded-Encrypted: i=1; AJvYcCW/0i1bJp14hPe5Gjx7rYN6DLDR+2uP2JgJwGkFtPhb3s7hcJwgNfB+yRS2nTToUgh+hmQ8ce1TZu1K@vger.kernel.org
X-Gm-Message-State: AOJu0Yz24530TxCXxwsngPksQOA+n36iZLGyIHMOV9ButpYrGpzCRHyd
	hf8h1UU2aeHZp+ijft5pMnj5HfROrGFpK4Kx0CPxTQY8voep23N16jwE0mtk/VIX979OOdYFVsj
	D2NbDGQjnaMzyVs9ZBndVuBJwD1Ccy8N1wAP6FA==
X-Gm-Gg: ASbGnct811NdrDNq1NqRGdD2I6L7FLs9nXiEMyD4Npq+urbMy4KbVFnxeAExzR+NNwx
	6+j9KheLcmZ7G3WHX3aUvKKPZzCAqdKkjfwewOKQ=
X-Google-Smtp-Source: AGHT+IF2kQgFBOzyEEkAI4pJHRkCY0Jcr+zEiF6qdrlCsCYLryXyRM6QNm3EmHo8N9VP1hBxIgpZU0u0GDJzLhjYAzM=
X-Received: by 2002:a05:690c:ed2:b0:6e9:e097:718c with SMTP id
 00721157ae682-6f3ccc29cb9mr52105677b3.6.1734621868413; Thu, 19 Dec 2024
 07:24:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241206211145.2823-1-ansuelsmth@gmail.com> <20241206211145.2823-2-ansuelsmth@gmail.com>
 <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>
 <20241213040001.jaqeuxyuhcc73ihg@vireshk-i7> <675cb6b2.050a0220.149877.5bab@mx.google.com>
In-Reply-To: <675cb6b2.050a0220.149877.5bab@mx.google.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2024 16:23:52 +0100
Message-ID: <CAPDyKFq7c607_NtiEF=4HinL5HABv7+fW9EGi1xfwpOpUPO6Bg@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
To: Viresh Kumar <viresh.kumar@linaro.org>, Christian Marangi <ansuelsmth@gmail.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 13 Dec 2024 at 23:35, Christian Marangi <ansuelsmth@gmail.com> wrote:
>
> On Fri, Dec 13, 2024 at 09:30:01AM +0530, Viresh Kumar wrote:
> > On 12-12-24, 13:01, Ulf Hansson wrote:
> > > On Fri, 6 Dec 2024 at 22:16, Christian Marangi <ansuelsmth@gmail.com> wrote:
> > > Hmm, it looks like this needs to be moved and possibly split up.
> > >
> > > The provider part (for the clock and power-domain) belongs in
> > > /drivers/pmdomain/*, along with the other power-domain providers.
> > >
> > > Other than that, I was really expecting the cpufreq-dt to take care of the rest.
> > >
> > > To me, the above code belongs in a power-domain provider driver. While
> > > the below should be taken care of in cpufreq-dt, except for the device
> > > registration of the cpufreq-dt device, I guess.
> > >
> > > Viresh, what's your view on this?
> >
> > Sure, no issues.. These are all cpufreq related, but don't necessarily belong in
> > the cpufreq directory.
> >
>
> Problem is really DT schema... I wonder if it's acceptable to push a
> name-only driver in pmdomain just do detach from cpufreq. The cpufreq
> driver would manually probe the pmdomain. Is it acceptable?
>
> Or do you have alternative solution for this?

The power-domain provider driver should use the compatible
"airoha,en7581-cpufreq". This driver should be responsible for
registering the genpd and the clock.

Potentially, the power-domain provider driver could also register the
"cpufreq-dt" platform-device. To make this work, we also need to
extend the cpufreq-dt driver (maybe extend its platform-data too?) to
be capable of attaching the corresponding cpu-devices to their
power(perf)-domains. For the moment, this isn't supported, but I think
it would be nice if it could. Another option, would be to use an
additional separate name-based cpufreq-driver, as in the
qcom-cpufreq-nvmem.c, that then becomes responsible for registering
the cpufreq-dt device.

Viresh, do you have a better approach in mind?

Kind regards
Uffe

