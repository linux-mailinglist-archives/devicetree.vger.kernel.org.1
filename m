Return-Path: <devicetree+bounces-11908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C3B7D6EBC
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:32:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E13D281CB1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00ADC27EE5;
	Wed, 25 Oct 2023 14:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="ayJEVYsK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CF12AB45
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:32:28 +0000 (UTC)
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [IPv6:2001:41d0:203:375::b0])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B4AB99
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:32:26 -0700 (PDT)
Date: Wed, 25 Oct 2023 16:32:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1698244344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K9yGXZx56wLrs8zZugE5T99ylar+sw5kaIHcBk8ebDs=;
	b=ayJEVYsKgQ2CMX2xDldH60OW+42hcVYvNKzt4hM8njPcv9pnKikJkWQaWdQmXULjYqQovx
	r94PExUjXSLnrG3hqFtcXqsKAoVhAOsZOGaoUU/MYyPmrXYZuWTQc+WmMpVxA4Nfiu+K2K
	wc9vLce5trfBa3Q0S3/0sqc6DnGSNMQ=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <richard.leitner@linux.dev>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Conor Dooley <conor@kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Message-ID: <ml5cknb6xwtyfkp744pqutpdm2q547bg4zihsld27kkq2tzmbe@lkoesz4ww2di>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-2-a0196119720c@linux.dev>
 <20231025-hut-omnivore-f4b44a7b928d@spud>
 <qoxgyho5twbm4jopfveaf5ee3z4tkyb2z5f2vsyrpglffegmxf@v2z5ckcaa5jc>
 <20231025-eatery-backup-ad85c043cb01@spud>
 <8cd5c34e-f733-445d-bc1e-d4dea1bcb47d@linaro.org>
 <2syaha4sapfpegvdsvef76egcqfebkuapxok6uripdbrgbk2vn@2xq5oi33zz2j>
 <d68f1109-9e99-4a94-98d8-676be4af920f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d68f1109-9e99-4a94-98d8-676be4af920f@linaro.org>
X-Migadu-Flow: FLOW_OUT

On Wed, Oct 25, 2023 at 04:27:18PM +0200, Krzysztof Kozlowski wrote:
> On 25/10/2023 16:23, Richard Leitner wrote:
> > On Wed, Oct 25, 2023 at 04:18:31PM +0200, Krzysztof Kozlowski wrote:
> >> On 25/10/2023 16:11, Conor Dooley wrote:
> >>> On Wed, Oct 25, 2023 at 04:07:31PM +0200, Richard Leitner wrote:
> >>>> On Wed, Oct 25, 2023 at 03:00:01PM +0100, Conor Dooley wrote:
> >>>>> On Wed, Oct 25, 2023 at 10:34:12AM +0000, Richard Leitner wrote:
> >>>>>> The ina238 driver is available since 2021 but lacks a dt-bindings file.
> >>>>>> Therefore add the missing file now.
> >>>>>
> >>>>> Seemingly it is documented in Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
> >>>>
> >>>> Thanks for the feedback. True. So is it fine if it's left there or
> >>>> should it be removed from ti,ina2xxx.yml as this is a separate driver
> >>>> with different properties?
> >>>
> >>> Merging them would seem like the most straightforward thing to do, no?
> >>
> >> Sorry folks, I don't quite get what do you want to merge or move and
> >> why. Drivers are not related to bindings. The point is the compatible is
> >> already documented, so is anything wrong with existing documentation?
> > 
> > ina238 is a separate driver which doesn't evaluate the same properties as
> > the ina2xx driver. So I thought it would be reasonable to split those
> > bindings and therefore reflect the drivers capabilities.
> 
> I do not see different properties in the bindings, so what do you mean
> that it evaluates something else?
> 
> Anyway, whatever driver does is rarely good argument for change in
> bindings, because we focus here on the hardware, not on one, chosen OS
> implementation.

Understood.

> 
> > 
> > If it's fine if there are additional properties in the dt-bindings which
> 
> Where are they? Or rather which additional properties?

For example the "shunt-resistor" property described in ina2xx.yaml is
not evaluated in ina238.c.

> 
> > are not evaluated by the driver then it's of course fine with me to just
> > add the ina327 compatible in ina2xx.yaml.
> 
> Depends. What driver does, might not matter in some cases. What matters
> is if these properties are applicable to this hardware.

Thanks for that explanation. That makes things clearer to me.

The properties described in the ina2xx.yaml are applicable to the ina237
and ina238 hardware, but are not implemented in the ina238.c driver.

So I will just add the ina237 compatible to the ina2xx.yaml and drop the
ina238.yaml from that series. Would that be fine from your side?

regards;rl

> 
> Best regards,
> Krzysztof
> 

