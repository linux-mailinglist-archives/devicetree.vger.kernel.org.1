Return-Path: <devicetree+bounces-198732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 663CDB0E102
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 17:56:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 87897580DA3
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 15:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDC30279DC3;
	Tue, 22 Jul 2025 15:55:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="R2kR/Wp2"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0298A279354
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753199755; cv=none; b=rthFNp88Cou6ZbdBPfjnCyc2+GEgzpLwvtpUwWYBmF/ny+UoqAnDmES77UGWz485i7+ehfWVWowbbC5lgu0dFYDPljeh9FZzIftt2Uy/uk//3N+Ev7ok8bEHSjpRPuc3T7E/5IJmbnyF5o3ZDR5zL8/QHLj/iKvP2HT1EjxqjfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753199755; c=relaxed/simple;
	bh=R51j62/d3CRnomk9oqStk+xbuVTnaY01yvb81U2I9eI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SCqvEpR1O7MQJqg5Yg/WU6tXrcR+n9UMd7t73C7BKSsRqYpaXMr4nF0AsNRnj5R+zTezyYwDFbmOGkWmaU05s7nMx0nkN/5aoIv6ptNnTTroVcprmwcxRIQeZ0sAY8ukLr7C+95033X1BDtozYGwFRnmi0tNM6p22IyigZCmJ/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=R2kR/Wp2; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Tue, 22 Jul 2025 23:55:46 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1753199752;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8KY8tFgOhzhn8LNLMXuaA9xgGEARgCxSjBTz/EP1VVU=;
	b=R2kR/Wp2Mi8qtrn439VWPFydY4QshjUyYiawYDYZeGH/x+EbV4oDOYKzqSVYo36mR8xw2r
	vPOYdVTKNiLmmtAN0XeGDnyKuVc5H3jGinAYZScLSCcT2BuQfa8AMm6vCd5Brxvu9XXLgz
	4BVvqd01NDmH8FlEpM+GoLB1VQ6zIOQ=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Ze Huang <huang.ze@linux.dev>
To: Yao Zi <ziyao@disroot.org>, Ze Huang <huang.ze@linux.dev>,
	Alex Elder <elder@ieee.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] usb: dwc3: add generic driver to support flattened
Message-ID: <aH-0d0OyLIo9tlkd@monica.localdomain>
References: <20250712-dwc3_generic-v6-0-cc87737cc936@linux.dev>
 <20250712-dwc3_generic-v6-2-cc87737cc936@linux.dev>
 <d2e9a521-568e-433d-a59b-9b98138ace2b@ieee.org>
 <aHyN3-uoHofF8Hg3@monica.localdomain>
 <aH4tpgVPbf9DOzSe@monica.localdomain>
 <aH7cpr0faRPVnxXL@pie>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aH7cpr0faRPVnxXL@pie>
X-Migadu-Flow: FLOW_OUT

On Tue, Jul 22, 2025 at 12:34:46AM +0000, Yao Zi wrote:
> On Mon, Jul 21, 2025 at 08:08:06PM +0800, Ze Huang wrote:
> > On Sun, Jul 20, 2025 at 02:34:07PM +0800, Ze Huang wrote:
> > > On Tue, Jul 15, 2025 at 03:50:54PM -0500, Alex Elder wrote:
> > > > On 7/12/25 2:49 AM, Ze Huang wrote:
> > > > > To support flattened dwc3 dt model and drop the glue layer, introduce the
> > > > > `dwc3-generic` driver. This enables direct binding of the DWC3 core driver
> > > > > and offers an alternative to the existing glue driver `dwc3-of-simple`.
> > > > 
> > > > I'm not familiar with dwc-of-simple.c, and won't comment on
> > > > how this differs from that (or does not).
> > > > 
> > > > Given you're implementing an alternative though, can you explain
> > > > in a little more detail what's different between the two?  Why
> > > > would someone choose to use this driver rather than the other one?
> > > 
> > > They are basically the same.
> > > 
> > > dwc-generic use a plain dt node while dwc-of-simple will nest the dwc3
> > > node as its child.
> > > 
> > > Both will use dwc3_core_probe() to finish the probe process. But now we
> > > can simplify the process by just calling it, instead of calling
> > > of_platform_populate() and create another snps,dwc3 device driver.
> > 
> > [...]
> > 
> > > > > +	ret = reset_control_assert(dwc3->resets);
> > > > > +	if (ret)
> > > > > +		return dev_err_probe(dev, ret, "failed to assert resets\n");
> > > > > +
> > > > > +	ret = devm_add_action_or_reset(dev, dwc3_generic_reset_control_assert, dwc3->resets);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > 
> > > > The re-assert shouldn't be set up unless the deassert below
> > > > succeeds.
> > > > 
> > > 
> > > Will move behind the deassert.
> > > 
> > > > > +	usleep_range(10, 1000);
> > > > 
> > > > This seems like a large range.  You could just do msleep(1);
> > > > Also, can you add a comment explaining why a delay is needed,
> > > > and why 1 millisecond is the right amount of time to sleep?
> > > > 
> > > 
> > > I will check the range with spacemit and reply soon.
> > > 
> > 
> > the resets are asynchronous with no strict timing. But to be safe, each
> > reset should stay active for at least 1 µs. I’ll switch to a udelay(2)
> > and add comment accordingly.
> 
> This may be a little farsight: do you think it's better to make the
> reset timing part of the of_match_data? This is more flexible and
> reduces future burden when introducing a new platform that comes with a
> different reset timing, which is a very likely case we'll face since
> it's a "generic" driver.
> 

Hi Zi Yao, thanks for the suggestion.

The delay is only for safety. I think there will not be much device require
this setting. I'd prefer to keep the logic simple and just cover the
currently known compatible devices.

If we encounter future platforms that require different timing constraints,
we can revisit this and introduce of_match_data as needed.

> > > > > +	ret = reset_control_deassert(dwc3->resets);
> > > > > +	if (ret)
> > > > > +		return dev_err_probe(dev, ret, "failed to deassert resets\n");
> > > > > +
> > > > > +	ret = devm_clk_bulk_get_all(dwc3->dev, &dwc3->clks);
> > > > > +	if (ret < 0)
> > > > > +		return dev_err_probe(dev, ret, "failed to get clocks\n");
> > > > 
> > > > Call devm_clk_bulk_get_all_enabled() instead of doing the two
> > > > steps separately here.
> > > > 
> > > 
> > > Will do, thanks.
> > > 
> > > > 					-Alex
> > 
> 
> Regards,
> Yao Zi

