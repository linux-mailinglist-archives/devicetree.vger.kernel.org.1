Return-Path: <devicetree+bounces-36763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F57842971
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 17:36:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EB3151F23995
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 16:36:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84FF9129A7F;
	Tue, 30 Jan 2024 16:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="oRTDsM3F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E401292EC;
	Tue, 30 Jan 2024 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706632534; cv=none; b=oGXTUunT+pT5XPaP230fdK6voEedWIQ3Q4DkSLFE2kRfNN3x08Ta8wnoxO3dUGqNTBLwX4yPRJH7F6EuN3FN8ah2FqzhvtF6S4ZJZYuWcEojVHfNR/jafKtbkmA1CH9OpoI3h02IAIsKK5pMk0+Vs9q5wvwhfiR6ncJB+wjBA3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706632534; c=relaxed/simple;
	bh=l42LVPwVl/n/5IRiBEREWDpzkqva4D/1HmJySCS0x4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=foGl2O8cDncObppYnShzuVyxYSljrUJyhBoLMl/rUdv28EGmPRXKOaHoVBBQx8BW8zwHQgAttyXzteV/LRuGiLQuKOy0vlE35Bbgy6eaF6L+12CSiFbpf4TdysICjOoTmxiT2E9zpTqDG0RRYMXF8Wwae+/usQn8jfbyIa2fZa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=oRTDsM3F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7BAF9C433A6;
	Tue, 30 Jan 2024 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1706632533;
	bh=l42LVPwVl/n/5IRiBEREWDpzkqva4D/1HmJySCS0x4E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oRTDsM3FbKZOKcOtSryzdwAiCH6hwgdBbpr/GMBidoSMpNbS0IGUagAWn99mLDaiD
	 JGNXZyGJpIHk7zRMWqC55XVa1cuJ7P7AEAWp5Lo248eY7GEbDo7Q1wsl7+d/imVoxr
	 Kg69HySIYb9dvfj1XP6LQA5Nn8kE3dipycJ/1TFg=
Date: Tue, 30 Jan 2024 08:19:40 -0800
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Javier Carrasco <javier.carrasco@wolfvision.net>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org
Subject: Re: [PATCH 2/2] usb: misc: onboard_hub: add support for XMOS XVF3500
Message-ID: <2024013024-borax-enjoying-beb5@gregkh>
References: <20240130-onboard_xvf3500-v1-0-51b5398406cb@wolfvision.net>
 <20240130-onboard_xvf3500-v1-2-51b5398406cb@wolfvision.net>
 <ZbkfsVr-1pOTa1ic@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZbkfsVr-1pOTa1ic@google.com>

On Tue, Jan 30, 2024 at 04:11:29PM +0000, Matthias Kaehlcke wrote:
> Hi Javier,
> 
> I understand your motivation for using the onboard_usb_hub driver
> for powering up a non-hub device, it feels a bit hacky to use it
> as is though. Re-using the driver might be the right thing to do,
> but then it should probably be renamed to onboard_usb_dev (or
> similar) and do the hub specific bits as special case.
> 
> Greg, do you have any thoughts on this?

Yeah, this worries me, adding non-hub support to this driver feels odd.
Why can't this all just be done in an individual driver for this device
itself?

Javier, what kernel driver supports this device to communicate with it?
Having 2 different drivers poke the same device is just going to cause
problems in the end, as there is no way to communicate between the two,
right?

thanks,

greg k-h

