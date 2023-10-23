Return-Path: <devicetree+bounces-10915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA887D375A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:00:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E460FB20F4E
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E0A318E36;
	Mon, 23 Oct 2023 13:00:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="xmhEzgs/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA4318E34
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 13:00:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 524FFC433C8;
	Mon, 23 Oct 2023 13:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1698066023;
	bh=pQvhdbHVvsUbJtKT6sW4IR5pD/yK0HwxeWEyJADxP68=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xmhEzgs/DsrluSYaGT8zSh8/2nPhniKLwPAN0EktqnifjgOWrzjDk4Q5zXYEkph/X
	 0ejiuiAC4ia7XlypYpcbp/T1oEpInHZrdvNe27cCyzCwpTYH40Exdonbqk5sOhBXi6
	 fJb2PMlYh+zdk4ZvYq58gcx3S7Ily1lTIURlkB/w=
Date: Mon, 23 Oct 2023 15:00:21 +0200
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
Message-ID: <2023102339-outcast-scone-5a63@gregkh>
References: <20231019125646.14236-1-eliza.balas@analog.com>
 <20231019125646.14236-3-eliza.balas@analog.com>
 <2023101917-cork-numeric-dab8@gregkh>
 <BN7PR03MB4545E7EAB2D72B9098C30C6797DBA@BN7PR03MB4545.namprd03.prod.outlook.com>
 <2023102030-resort-glance-57ef@gregkh>
 <BN7PR03MB4545FF54B96514EC9F41887E97D8A@BN7PR03MB4545.namprd03.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BN7PR03MB4545FF54B96514EC9F41887E97D8A@BN7PR03MB4545.namprd03.prod.outlook.com>

On Mon, Oct 23, 2023 at 12:54:15PM +0000, Balas, Eliza wrote:
> > -----Original Message-----
> > From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > Sent: Friday, October 20, 2023 17:32
> > To: Balas, Eliza <Eliza.Balas@analog.com>
> > Cc: linux-kernel@vger.kernel.org; devicetree@vger.kernel.org; Rob Herring <robh+dt@kernel.org>; Krzysztof Kozlowski
> > <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>; Derek Kiernan <derek.kiernan@amd.com>; Dragan
> > Cvetic <dragan.cvetic@amd.com>; Arnd Bergmann <arnd@arndb.de>
> > Subject: Re: [PATCH v3 2/2] drivers: misc: adi-axi-tdd: Add TDD engine
> > 
> > [External]
> > 
> > On Fri, Oct 20, 2023 at 11:18:44AM +0000, Balas, Eliza wrote:
> > > > > +static int adi_axi_tdd_parse_ms(struct adi_axi_tdd_state *st,
> > > > > +				const char *buf,
> > > > > +				u64 *res)
> > > > > +{
> > > > > +	u64 clk_rate = READ_ONCE(st->clk.rate);
> > > > > +	char *orig_str, *modf_str, *int_part, frac_part[7];
> > > > > +	long ival, frac;
> > > > > +	int ret;
> > > > > +
> > > > > +	orig_str = kstrdup(buf, GFP_KERNEL);
> > > > > +	int_part = strsep(&orig_str, ".");
> > > >
> > > > Why are we parsing floating point in the kernel?  Please just keep the
> > > > api simple so that we don't have to try to do any type of parsing other
> > > > than turning a single text number into a value.
> > > >
> > >
> > > The adi_axi_tdd_parse_ms function does almost the same thing as the
> > > iio_str_to_fixpoint() function which already exists in kernel.
> > 
> > That does not mean that this is a valid api for your device as you are
> > not an iio driver (why aren't you an iio driver?)
> > 
> > > It parses a fixed-point number from a string.
> > 
> > And as such, you shouldn't duplicate existing logic.
> > 
> > > The __iio_str_to_fixpoint is used in a similar way, as I intend to use adi_axi_tdd_parse_ms.
> > > It writes to a channel the corresponding scale (micro,nano) for a value.
> > 
> > Why not just have the api accept values in nanoseconds and then no
> > parsing is needed?
> 
> I thought this would be easier for the user, to work with smaller values,
> than using a lot of zeros for nanoseconds. I will make the changes
> to accept values in nanoseconds..

Make the kernel simpler, it's easier to make more complex userspace,
right?

> > > Since the device is not an iio device, using an iio function would be confusing.
> > 
> > Why isn't this an iio device?
> 
> The device is not registered into the IIO device tree, 
> and does not rely on IIO kernel APIs. 
> Even though there are a few attributes that resemble the
> ones from iio, and the sysfs structure is similar,
> this is not an IIO device.
> In the previous patch versions 1 and 2 we concluded
> that this device fits better in the misc subsystem.

Ok, can you point to that in the changelog where the IIO maintainer
agreed that this doesn't fit into that subsystem?

thanks,

greg k-h

