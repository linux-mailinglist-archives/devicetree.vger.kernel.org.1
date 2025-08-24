Return-Path: <devicetree+bounces-208746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CEDB33229
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 20:58:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C20CA17A25F
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 18:58:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B882264A1;
	Sun, 24 Aug 2025 18:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b="evNCKnjG"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDF6749C
	for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 18:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756061904; cv=none; b=GlAdmPK2iGwAVG8vP1aDR6G7Ox1916A70eUnzaZ5LQYcSiPbWGSVPLjYmlpPziaPyqlCRaYUwr1sYGeZ8WIDYI7D0M2OYD0PiRK4fkhUhEadl/3F6koHt5x71HPhY2SYYd9KJ67z6q02rqgFPoKZ7vFC1xrKiTB371IUYTKhOto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756061904; c=relaxed/simple;
	bh=kEu/zrIegka/cRZWmI9zjSyRt/orzozoHBdSxmbxHdo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kICPkI20vhS/geOG/+ijMVpJlzqI1NqmXUNDsrcoh2szM+9H13id7VOoJq/m3cUGbWbLFac8RMYczDURiEIGkeNgmXfsyogGfMtovDEtq1iiaCU9ue1lh7XxuQsf/JGXgHTDlQFv+EleKRg9WG+ZsFMQLEfPBqCAkvU79QYQDzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev; spf=pass smtp.mailfrom=linux.dev; dkim=pass (1024-bit key) header.d=linux.dev header.i=@linux.dev header.b=evNCKnjG; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.dev
Date: Sun, 24 Aug 2025 20:58:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1756061901;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ROo3b8gTSiAc/dTc22a7jwlluU+zLueB2IBr7H3bUu0=;
	b=evNCKnjGKGoClvFRNF0a7jar/U2e4k4p0FtyzaANLT2dJRVqD0zyEwYX00F/05eWEmeb6X
	bZMR+QeyLIjcrvQHOkQJZq2UroUfjBFXoOiArOnwrxcmppc1EPBSp1k6qqF5n/SJcKspHx
	zVj73fmbe/VNBNgi7CHkmy6gDxaM9Ns=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Richard Leitner <richard.leitner@linux.dev>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] usb: usb251xb: use modern PM macros
Message-ID: <sflcjqonsyvvcaymm2ftxyz5hmvkim5fk6mppyzi3cxxjctap6@hj5642ult4pn>
References: <20250820161743.23458-1-jszhang@kernel.org>
 <20250820161743.23458-3-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820161743.23458-3-jszhang@kernel.org>
X-Migadu-Flow: FLOW_OUT

Hi Jisheng,

thanks for tackling this issue!

On Thu, Aug 21, 2025 at 12:17:42AM +0800, Jisheng Zhang wrote:
> Use the modern PM macros for the suspend and resume functions to be
> automatically dropped by the compiler when CONFIG_PM or
> CONFIG_PM_SLEEP are disabled, without having to use __maybe_unused.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  drivers/usb/misc/usb251xb.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Reviewed-by: Richard Leitner <richard.leitner@linux.dev>

> 
> diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
> index 4fb453ca5450..cb2f946de42c 100644
> --- a/drivers/usb/misc/usb251xb.c
> +++ b/drivers/usb/misc/usb251xb.c
> @@ -698,7 +698,7 @@ static int usb251xb_i2c_probe(struct i2c_client *i2c)
>  	return usb251xb_probe(hub);
>  }
>  
> -static int __maybe_unused usb251xb_suspend(struct device *dev)
> +static int usb251xb_suspend(struct device *dev)
>  {
>  	struct i2c_client *client = to_i2c_client(dev);
>  	struct usb251xb *hub = i2c_get_clientdata(client);
> @@ -706,7 +706,7 @@ static int __maybe_unused usb251xb_suspend(struct device *dev)
>  	return regulator_disable(hub->vdd);
>  }
>  
> -static int __maybe_unused usb251xb_resume(struct device *dev)
> +static int usb251xb_resume(struct device *dev)
>  {
>  	struct i2c_client *client = to_i2c_client(dev);
>  	struct usb251xb *hub = i2c_get_clientdata(client);
> @@ -719,7 +719,7 @@ static int __maybe_unused usb251xb_resume(struct device *dev)
>  	return usb251xb_connect(hub);
>  }
>  
> -static SIMPLE_DEV_PM_OPS(usb251xb_pm_ops, usb251xb_suspend, usb251xb_resume);
> +static DEFINE_SIMPLE_DEV_PM_OPS(usb251xb_pm_ops, usb251xb_suspend, usb251xb_resume);
>  
>  static const struct i2c_device_id usb251xb_id[] = {
>  	{ "usb2422" },
> @@ -739,7 +739,7 @@ static struct i2c_driver usb251xb_i2c_driver = {
>  	.driver = {
>  		.name = DRIVER_NAME,
>  		.of_match_table = usb251xb_of_match,
> -		.pm = &usb251xb_pm_ops,
> +		.pm = pm_sleep_ptr(&usb251xb_pm_ops),
>  	},
>  	.probe = usb251xb_i2c_probe,
>  	.id_table = usb251xb_id,
> -- 
> 2.50.0
> 

