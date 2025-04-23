Return-Path: <devicetree+bounces-169996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AD310A993E0
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 18:05:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0B2E4C0036
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 15:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD21A284692;
	Wed, 23 Apr 2025 15:46:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="g0He3GFF"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5479527055F
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 15:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745423214; cv=none; b=LpSCv6YxK26X4R2JFntAF8hxW1a/lQ0E5sj6kUm2WXy7xS6IHUv0XM0xVgcmFeD0teZy9HgwNLJGo7aQmrBrNNwusBRLqfGBNoN50zav7Y4sYugeK07zpBZqh5NxFEAygc2srg+Y1kDbAHTVvlIqHzV5L1yswGoOx+Jha1imkUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745423214; c=relaxed/simple;
	bh=Dlxtg6HfRMV30lx7TpyBWf0ABYivxrUw+hEbZcVQ55I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AhPxLMzfd260907NoEfX4i/iaOaCi8LIlFPUFmSJfd/KKOpSuecGFuSev858TNNJNyU2jFWxAd7lEl4zkSYCUWCiq+C+hl529cu5YJ5oIwLHq8fYp5VbOBmjk1SAlhtM/wnP4OkJYtQpF4rnUqs0a2THHtcHtZXy2OXYQZCy1Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=g0He3GFF; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Wed, 23 Apr 2025 11:46:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1745423209;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0uTQ6p+V1jTDw30/bAcPN/7+p5TBcCgK8gHCjb8Oz0Q=;
	b=g0He3GFFtIeA0y+TZSb8ZM5l4SKbGuwYGKGOYwdpzty/lxLNEiXCOv5K3IiaArEH3gZOvC
	OUvGYNJpg0LXfJ2XzYkLKJon6mmOe1XmPjKBaULtWsbZsRORyC2xET6NZT8ygT4vr88qAa
	XaBvJ9NiJK5TMMpTlEEhA1szOHKYyBWBZaRHg1MxwQ4RAzncmwmaGy31MtV4ZdlRi5WqtO
	wuz+lTHuyiOOFi0dwmcpXei6JAzKQHxAJ2Ismpak5mxi5Z1Rb7YuFCAd9LRZPEvjsyW4W1
	Vncv3A1dF010GrnpFagFy6liYg3iWr5UB4K8ypp6HLgTRZrK51KOvKVl75q/mQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Rosenzweig <alyssa@rosenzweig.io>
To: Rob Herring <robh@kernel.org>
Cc: Nick Chan <towinchenmi@gmail.com>,
	Sasha Finkelstein <fnkl.kernel@gmail.com>,
	Sven Peter <sven@svenpeter.dev>, Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: spmi: Add generic SPMI NVMEM
Message-ID: <aAkLY3TYIPG7ojwx@blossom>
References: <20250417-spmi-nvmem-v2-0-b88851e34afb@gmail.com>
 <20250417-spmi-nvmem-v2-1-b88851e34afb@gmail.com>
 <20250422133619.GA1095169-robh@kernel.org>
 <CAMT+MTTwY=z1-_94ws+Oi+wvE2PA_s57dPmpMABC26q=MPw1Mg@mail.gmail.com>
 <e4159c2b-4081-4a4b-9a53-d6d559a3196c@gmail.com>
 <CAL_JsqKwASbUtpO=wU-16v=y8S_wLyBxnFUmQqsE8GkzCz0hDg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqKwASbUtpO=wU-16v=y8S_wLyBxnFUmQqsE8GkzCz0hDg@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT

> > >> What makes this generic?
> > >>
> > >> A generic driver is great, but "generic" or "simple" bindings are
> > >> generally a mistake.
> > > There is nothing apple-specific in that driver, just re-exporting
> > > several registers as cells. If you think that it is a mistake, I can
> > > rename it to apple-pmic, or something similar.
> 
> Like I said, a generic *driver* is great! I'm all for them. We should
> have more of them! Generic bindings on the other hand are generally a
> mistake. The problem is whether a generic driver works for you or not
> can evolve in either direction. You add more things like described
> below and then a generic driver doesn't work.

It sounds like the path of least resistance here is then:

1. rename the bindings to be apple m1+ (at least for now)
2. keep the driver as-is (no mfd, etc - at least for now)
3. land just that (at least for now)

Evolving the driver to share with not-Apple, or evolving the
bindings+driver to share with pre-M1, can happen in future series
if/when somebody wants to do that work.

Is this a fair understanding of the situation?

