Return-Path: <devicetree+bounces-11889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5B07D6E9A
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:23:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DCD9AB20F36
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26DFA29418;
	Wed, 25 Oct 2023 14:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="DngZqtvR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52498473
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:23:24 +0000 (UTC)
X-Greylist: delayed 577 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 25 Oct 2023 07:23:23 PDT
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [IPv6:2001:41d0:1004:224b::b7])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AC19132
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:23:23 -0700 (PDT)
Date: Wed, 25 Oct 2023 16:23:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1698243801;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rg6tbAvSCrcPlA8bgCmcEn9MdYqpCnqjQ3fo2cBKWFs=;
	b=DngZqtvRAc56t0viDS0RGJ9gl4LAbnec47+uE8AYfJDeylH80amVr04GWdjLo8YM8Ref/V
	HtmGK/41BGzA366tJBU5MvZ7vq9e7dHu49kNcyqSkRfpsDlgf6ftxUMTcDnC2Ri2AyRzBZ
	LNCIN2+Rydd5+C76x7APZGZnHsqK/14=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <richard.leitner@linux.dev>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Message-ID: <2syaha4sapfpegvdsvef76egcqfebkuapxok6uripdbrgbk2vn@2xq5oi33zz2j>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-2-a0196119720c@linux.dev>
 <20231025-hut-omnivore-f4b44a7b928d@spud>
 <qoxgyho5twbm4jopfveaf5ee3z4tkyb2z5f2vsyrpglffegmxf@v2z5ckcaa5jc>
 <20231025-eatery-backup-ad85c043cb01@spud>
 <8cd5c34e-f733-445d-bc1e-d4dea1bcb47d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8cd5c34e-f733-445d-bc1e-d4dea1bcb47d@linaro.org>
X-Migadu-Flow: FLOW_OUT

On Wed, Oct 25, 2023 at 04:18:31PM +0200, Krzysztof Kozlowski wrote:
> On 25/10/2023 16:11, Conor Dooley wrote:
> > On Wed, Oct 25, 2023 at 04:07:31PM +0200, Richard Leitner wrote:
> >> On Wed, Oct 25, 2023 at 03:00:01PM +0100, Conor Dooley wrote:
> >>> On Wed, Oct 25, 2023 at 10:34:12AM +0000, Richard Leitner wrote:
> >>>> The ina238 driver is available since 2021 but lacks a dt-bindings file.
> >>>> Therefore add the missing file now.
> >>>
> >>> Seemingly it is documented in Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
> >>
> >> Thanks for the feedback. True. So is it fine if it's left there or
> >> should it be removed from ti,ina2xxx.yml as this is a separate driver
> >> with different properties?
> > 
> > Merging them would seem like the most straightforward thing to do, no?
> 
> Sorry folks, I don't quite get what do you want to merge or move and
> why. Drivers are not related to bindings. The point is the compatible is
> already documented, so is anything wrong with existing documentation?

ina238 is a separate driver which doesn't evaluate the same properties as
the ina2xx driver. So I thought it would be reasonable to split those
bindings and therefore reflect the drivers capabilities.

If it's fine if there are additional properties in the dt-bindings which
are not evaluated by the driver then it's of course fine with me to just
add the ina327 compatible in ina2xx.yaml.

Thanks for the feedback & regards;rl

> 
> Best regards,
> Krzysztof
> 

