Return-Path: <devicetree+bounces-10422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 125DA7D119D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 16:31:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFD42282286
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 14:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44373199BF;
	Fri, 20 Oct 2023 14:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="GRIir2VB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E511DA32
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 14:31:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E65A3C433C8;
	Fri, 20 Oct 2023 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1697812314;
	bh=WEpjgFcPeQJKLQYrLLB7W0sYAU1Nex9t/YsX/jHg8kg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GRIir2VB2uCvTMinb4tslLmOW2YakhXGfBsVmKz1btlcpi6XXOs0oQ6pRNg4+5Yzs
	 lEETxsx3SqDEBRcRGqaRiK6Aq4JQo6hSk8Fyxusgj15xBTEFpmLDiX4gdquo5UhhqA
	 dObczVTLNytqnwe4LJn92N1lxwORHsmVM9ibEVxA=
Date: Fri, 20 Oct 2023 16:31:50 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Balas, Eliza" <Eliza.Balas@analog.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 2/2] drivers: misc: adi-axi-tdd: Add TDD engine
Message-ID: <2023102030-resort-glance-57ef@gregkh>
References: <20231019125646.14236-1-eliza.balas@analog.com>
 <20231019125646.14236-3-eliza.balas@analog.com>
 <2023101917-cork-numeric-dab8@gregkh>
 <BN7PR03MB4545E7EAB2D72B9098C30C6797DBA@BN7PR03MB4545.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BN7PR03MB4545E7EAB2D72B9098C30C6797DBA@BN7PR03MB4545.namprd03.prod.outlook.com>

On Fri, Oct 20, 2023 at 11:18:44AM +0000, Balas, Eliza wrote:
> > > +static int adi_axi_tdd_parse_ms(struct adi_axi_tdd_state *st,
> > > +				const char *buf,
> > > +				u64 *res)
> > > +{
> > > +	u64 clk_rate = READ_ONCE(st->clk.rate);
> > > +	char *orig_str, *modf_str, *int_part, frac_part[7];
> > > +	long ival, frac;
> > > +	int ret;
> > > +
> > > +	orig_str = kstrdup(buf, GFP_KERNEL);
> > > +	int_part = strsep(&orig_str, ".");
> > 
> > Why are we parsing floating point in the kernel?  Please just keep the
> > api simple so that we don't have to try to do any type of parsing other
> > than turning a single text number into a value.
> > 
> 
> The adi_axi_tdd_parse_ms function does almost the same thing as the 
> iio_str_to_fixpoint() function which already exists in kernel.

That does not mean that this is a valid api for your device as you are
not an iio driver (why aren't you an iio driver?)

> It parses a fixed-point number from a string. 

And as such, you shouldn't duplicate existing logic.

> The __iio_str_to_fixpoint is used in a similar way, as I intend to use adi_axi_tdd_parse_ms.
> It writes to a channel the corresponding scale (micro,nano) for a value.

Why not just have the api accept values in nanoseconds and then no
parsing is needed?

> Since the device is not an iio device, using an iio function would be confusing.

Why isn't this an iio device?

thanks,

greg k-h

