Return-Path: <devicetree+bounces-248408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FDECD2628
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 04:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A0343024E7C
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 03:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795D12DAFA8;
	Sat, 20 Dec 2025 03:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="OQUB7307"
X-Original-To: devicetree@vger.kernel.org
Received: from out-174.mta0.migadu.com (out-174.mta0.migadu.com [91.218.175.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8092A2BEFED
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 03:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766201164; cv=none; b=jAqTOhS8jteLAOxhKKnkjOGYkm/bKBW+Lz8ESAV3BAktXA/2GnPCJUdhaIysA36azeqdmoPs6kU7Q5V7iNi+tDzPhxsJgvowP2WXCyOYbZHUMFkelSdS0Ef3ArzVfph+i18V34TgbDc+vjxRMsosrLFlgaCmzd6tYFG3F+GQWUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766201164; c=relaxed/simple;
	bh=7eatRauTI6/dprxpeQO2aNgUSBjCWvSs24FopHtwCk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fGkj84SV2L713pNcTBkYlQDV0U7VjJrPtIsy5k2aFSQfJihJDI3FrJnnquF+WlitDaRK0WZJFBN2gu6Qa3X2fnCVqxfrhVeMr7/6uKGjSsNNDyJzjFJ48ILC5qHs3N1h21kgvfwUtiHfiMlAJDDegAXwwm8uIpLP5XEexKM8Z9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=OQUB7307; arc=none smtp.client-ip=91.218.175.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Sat, 20 Dec 2025 11:25:48 +0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1766201154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=A9HZSvwW4qmMonse9RS2qNPLZKcbtYx2zJp4auwFwjU=;
	b=OQUB7307V4G5M3PRO7JpGLdo1MemhLz1bFIqtwnjK0BnIhVJ2fwHy2Nadr+16Pv0V9yNg+
	2K7wy3eMnvjD5IsmnlYNVBJl0lazbRfvMWbtFOj7kzX3wR0Y96KZ7B+LD0WYg48ZC3dtwJ
	F279XmdJQensQq7MUjoG0ypz4G2tiWM=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Troy Mitchell <troy.mitchell@linux.dev>
To: Bo Gan <ganboing@gmail.com>, Troy Mitchell <troy.mitchell@linux.dev>,
	dongxuyang@eswincomputing.com, mturquette@baylibre.com,
	sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	bmasney@redhat.com
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, pinkesh.vaghela@einfochips.com
Subject: Re: [PATCH v8 2/3] clock: eswin: Add eic7700 clock driver
Message-ID: <aUYXPBFhqz3Frdmo@troy-wujie14pro-arch>
References: <20251113013637.1109-1-dongxuyang@eswincomputing.com>
 <20251113013846.1222-1-dongxuyang@eswincomputing.com>
 <aUS9bLVLhIPMOcWa@kernel.org>
 <ade7690d-14d1-413a-b4b5-eda91d64207c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ade7690d-14d1-413a-b4b5-eda91d64207c@gmail.com>
X-Migadu-Flow: FLOW_OUT

On Fri, Dec 19, 2025 at 02:39:41PM -0800, Bo Gan wrote:
> Hi ESWIN folks,
> 
> Please refer to my comments below
> 
> On 12/18/25 18:50, Troy Mitchell wrote:
> > Hi Xuyang,
> > This is a quick review.
> > 
> > On Thu, Nov 13, 2025 at 09:38:46AM +0800, dongxuyang@eswincomputing.com wrote:
> > > From: Xuyang Dong <dongxuyang@eswincomputing.com>
> > > 
> 
> ...
> 
> > > +static int clk_pll_set_rate(struct clk_hw *hw, unsigned long rate,
> > > +			    unsigned long parent_rate)
> > > +{
> > > +	struct eswin_clk_pll *clk = to_pll_clk(hw);
> > > +	struct clk *clk_cpu_lp_pll = NULL;
> > > +	struct clk *clk_cpu_mux = NULL;
> > > +	struct clk *clk_cpu_pll = NULL;
> > > +	u32 postdiv1_val = 0, refdiv_val = 1;
> > > +	u32 frac_val, fbdiv_val, val;
> > > +	bool lock_flag = false;
> > > +	int try_count = 0;
> > > +	int ret;
> > > +
> > > +	ret = eswin_calc_pll(&frac_val,  &fbdiv_val, (u64)rate, clk);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* Must switch the CPU to other CLK before we change the CPU PLL. */
> > > +	if (clk->id == EIC7700_CLK_PLL_CPU) {
> > > +		clk_cpu_mux = __clk_lookup("mux_cpu_root_3mux1_gfree");
> > It seems you want to switch to a safe clock source before setting up the
> > PLL, right?
> > 
> > I am not sure whether your approach is correct, but the use of
> > __clk_lookup() should be avoided whenever possible.
> > Would it be feasible to obtain a proper clock handle somewhere and
> > perform the necessary configuration from within a clk_notifier instead?
> > > +		if (!clk_cpu_mux) {
> > > +			pr_err("failed to get clk: %s\n",
> > > +			       "mux_cpu_root_3mux1_gfree");
> > > +			return -EINVAL;
> > > +		}
> 
> I have a strong feeling that this switch to safe clock and back to PLL
> can be done with something very similar to this:
> 
> "Add notifier for PLL0 clock and set it 1.5GHz on the JH7110 SoC"
> https://lore.kernel.org/all/20240826080430.179788-1-xingyu.wu@starfivetech.com/
> 
YES, That's what I want.
Thanks for your link!

                    - Troy
> Please take a look. Thanks!
> 
> Bo

