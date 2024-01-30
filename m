Return-Path: <devicetree+bounces-36790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C3C842ADC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 18:26:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D0E628B029
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 17:26:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08344129A86;
	Tue, 30 Jan 2024 17:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TGmk8Bnb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB98128382
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 17:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706635605; cv=none; b=sv5NxN8nFhu6X+6pUHtPZInZ/hXpKyiVRpUlUq9UIvJ0DJWbsnZz3becPMmUYOQjL/H744PzUgkIKtR6iad5FXLS3qYM3GcH4+peipPmIqOQm33i3Axgb+niOnsgKu9rAYudEn1ZkilXo/v4+vuSJGeyDiO2cOTog0izKFI5NFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706635605; c=relaxed/simple;
	bh=tujS63Z3WTO3HL/gA030RreduT7A4LeLdFjqM6yXNnk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i7+PgpMjK6cQXcA/kJAhO6JfuRNz0d9RGLjjnZdHiOYHpBJpzOPZhHa0lJGSnAyabSMYLYcIMtSX2weCnPBC7ZULDHSgQr0xtpSdEaukwNsGtsllxs49gfNIrHF9rqkVGFdBcjENrVED3b/7yz6AY3wjilMBO3Y15pxXh7a0CBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TGmk8Bnb; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-7bc32b04d16so184198639f.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706635603; x=1707240403; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XHEc5V/RfvIUcDqDPWtfK2Fbm134fj3EfnAyQgIeJsU=;
        b=TGmk8BnbaburrtVf4hxBD9barLu3slCpIOTxK0I4oHi227NxZRGS1T5we2C2WFoANR
         QIpUUJ5kOQiK12Y60RP6iV34x0aeYWLzP79OcH0lVZ9/b4IcHfDnHGZsYcQI28z482fH
         AijkXdIKZCcnaKvzjIm1u7CPEJ+rliuo/1e1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706635603; x=1707240403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XHEc5V/RfvIUcDqDPWtfK2Fbm134fj3EfnAyQgIeJsU=;
        b=DLRi16c1vYTJ2vP+7oBe12PQ8m633qGbusvYu2uZpHj+Ax2VsNI1O7bKZ7xqt8Dd9M
         juClCcLYGYUvDp4Jj9G6f0ibueglO7KhQmQjWkOvEscfQE6Qgfws91XdYuCtbL3CsGnJ
         OgK5SReI3VH4Yu+74xndkwyRV10HWisbNwbkBosargK2eacwLv92OM2i7lW01icn7Heo
         2QUteqR28SyZYjqvja1GvB72SCQWzlDcfWOEOnuhjiFz6Pn0SSF0G7oMc8UtiAjbFuK0
         JqlcCZfVqxOtS6aHF7gE9wAlxchHgVxtsKHBXarJmTGhjRdgI1cFJrnYK7sO86z28i/A
         U5gA==
X-Gm-Message-State: AOJu0YzdKEu8mDuUGwbhBQWq5GuwT/vbMm1g1JFDhni5W6khIFsOMSJ5
	2qDDVsbKaYCHQS2U7swgNLJwXG7tHfpFmN3ppq+GZWqNfncuHA/UK/wy1wmMkA==
X-Google-Smtp-Source: AGHT+IFimfDfRCnK1E0ZunAlWv35M1YoVKRH2MzzR63F6QtSUlTwYNRe0SPuAy6cbeJgD5ssxgxk2w==
X-Received: by 2002:a05:6602:1249:b0:7ba:c1d9:7664 with SMTP id o9-20020a056602124900b007bac1d97664mr8268582iou.20.1706635603591;
        Tue, 30 Jan 2024 09:26:43 -0800 (PST)
Received: from localhost (110.41.72.34.bc.googleusercontent.com. [34.72.41.110])
        by smtp.gmail.com with UTF8SMTPSA id k28-20020a02335c000000b00470e7cd33acsm135832jak.27.2024.01.30.09.26.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jan 2024 09:26:43 -0800 (PST)
Date: Tue, 30 Jan 2024 17:26:42 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Javier Carrasco <javier.carrasco@wolfvision.net>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/2] usb: misc: onboard_hub: add support for XMOS XVF3500
Message-ID: <ZbkxUlFSKlUkcHaC@google.com>
References: <20240130-onboard_xvf3500-v1-0-51b5398406cb@wolfvision.net>
 <20240130-onboard_xvf3500-v1-2-51b5398406cb@wolfvision.net>
 <ZbkfsVr-1pOTa1ic@google.com>
 <2024013024-borax-enjoying-beb5@gregkh>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2024013024-borax-enjoying-beb5@gregkh>

On Tue, Jan 30, 2024 at 08:19:40AM -0800, Greg Kroah-Hartman wrote:
> On Tue, Jan 30, 2024 at 04:11:29PM +0000, Matthias Kaehlcke wrote:
> > Hi Javier,
> > 
> > I understand your motivation for using the onboard_usb_hub driver
> > for powering up a non-hub device, it feels a bit hacky to use it
> > as is though. Re-using the driver might be the right thing to do,
> > but then it should probably be renamed to onboard_usb_dev (or
> > similar) and do the hub specific bits as special case.
> > 
> > Greg, do you have any thoughts on this?
> 
> Yeah, this worries me, adding non-hub support to this driver feels odd.

It is odd as long as this driver claims to be hub-specific, but truth
is that the hub-specific bits are a small part of the driver, I think
it might be worthwhile to consider adapting the driver to other devices
if there is no clear better solution.

A possible alternative could be a separate onboard_usb_dev driver for
non-hub devices, with a similar structure as the onboard_hub driver,
but without the hub-specific bits.

> Why can't this all just be done in an individual driver for this device
> itself?

I suppose the reason is the good old chicken-egg situation that the (USB)
driver is only instantiated after the device has bee powered on, which is
what the driver is supposed to take care of. For the onboard_hub driver
this was solved by having a platform driver that is instantiated by the
parent hub if the onboard hub has a device tree entry. Probably something
similar would be needed for an individual driver, and the generic hub
driver would have to call the equivalent of onboard_hub_create_pdevs()
for all drivers of this type (or a wrapper that does this).

m.

