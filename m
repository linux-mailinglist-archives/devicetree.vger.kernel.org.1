Return-Path: <devicetree+bounces-12455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1493B7D990F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:56:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 19672B20D7C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:56:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 693511641D;
	Fri, 27 Oct 2023 12:55:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3uPk2Wa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD8E13FF4
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 12:55:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40D6DC433CC;
	Fri, 27 Oct 2023 12:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698411340;
	bh=wSX3hZkZaTrYS5zn46sQAvcYVUlw291hdHsmheCFw7A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T3uPk2WaIv4i+lUBOQtRXwUHb6Q58T0/wvONVvtFSn1Maj2zynMwpNQLYcJMhojwb
	 m4OF8V5DmUPf5d9ZqiJvGGXq1kmX0DYJhYCkDy8aOYjXbpOisO7srwSCXzBgOKt8Y7
	 cuG6nloPsP8cLC46m9ETXxE4Q2kfi03LdjvVovY/QfoQoTiWHILg0XA1pMsnBvHcpz
	 bSCYynI2H3pxPJ9goZ81qdQrFgDxJqSvn/ARGKbLQGp+tepha+6nJVrzD9agmDzh0f
	 USBH9Ou1z9sp2GZDdfEnonBMQhPzlmnxvxohAj/G8Huch9rDMnltoNcnWRILfLMQin
	 1wXMMhIWCtpqQ==
Date: Fri, 27 Oct 2023 14:55:37 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	gregory.clement@bootlin.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Abel Vesa <abel.vesa@linaro.org>, Mark Brown <broonie@kernel.org>,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] i2c: mv64xxx: add an optional bus-reset-gpios
 property
Message-ID: <20231027125537.5d5cu3wc4r4c2yb4@zenone.zhora.eu>
References: <20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz>
 <20231027033104.1348921-3-chris.packham@alliedtelesis.co.nz>
 <65911ec0-e073-435f-846a-c5501dd5d3a9@linaro.org>
 <9eebec9b-e6fd-4a22-89ea-b434f446e061@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9eebec9b-e6fd-4a22-89ea-b434f446e061@linaro.org>

Hi Krzysztof,

On Fri, Oct 27, 2023 at 01:37:05PM +0200, Krzysztof Kozlowski wrote:
> On 27/10/2023 13:27, Krzysztof Kozlowski wrote:
> > On 27/10/2023 05:31, Chris Packham wrote:
> >> Some hardware designs have a GPIO used to control the reset of all the
> >> devices on and I2C bus. It's not possible for every child node to
> >> declare a reset-gpios property as only the first device probed would be
> >> able to successfully request it (the others will get -EBUSY). Represent
> 
> Cc: Mark,
> 
> Also this part is not true. If the bus is non-discoverable, then it is
> possible to have reset-gpios in each probed device. You can share GPIOs,
> so no problem with -EBUSY at all.
> 
> The problem is doing reset:
> 1. in proper moment for all devices
> 2. without affecting other devices when one unbinds/remove()

yes, I thought that we could get to this point, but I did not
object the patch as I didn't see an immediate better solution. I
would still be OK to merge it until we develop something better.

Let me mull this over and will be back to the topic.

Thanks, Krzysztof!
Andi

> The (2) above is not solveable easy in kernel and we already had nice
> talks about it just few days ago:
> 1. Apple case:
> https://social.treehouse.systems/@marcan/111268780311634160
> 
> 2. my WSA884x:
> https://lore.kernel.org/alsa-devel/84f9f1c4-0627-4986-8160-b4ab99469b81@linaro.org/
> 
> Last,
> I would like to apologize to you Chris. I understand that bringing such
> feedback at v5 is not that good. I had plenty of time to say something
> earlier, so this is not really professional from my side. I am sorry,
> just my brain did not connect all these topics together.
> 
> I apologize.
> 
> Best regards,
> Krzysztof

