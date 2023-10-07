Return-Path: <devicetree+bounces-6730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB7C7BC911
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 18:31:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 35D0528108D
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 16:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E683C328B2;
	Sat,  7 Oct 2023 16:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="CLLJanpr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2DF328B8
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 16:31:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B749C433C8;
	Sat,  7 Oct 2023 16:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1696696263;
	bh=3saiFoFOXsJSmnhZLFioUhijfK07a5KjkQ16Shr0Tlo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CLLJanprTG5mz641FdNC0EgNnkUfxQ5ZBC7WolVoMeEvuzESgZ9Lp+LKOhHG/8BRT
	 50XNsXr2kyUJK+WOXAznr1k/j7UCYQSieAeq54JUprx3fCwtBff51vPfQsQ35DqtEv
	 yrD7qzPSVXkNCuJqkdoFhDSyqeFX/12WzrKVRYh0=
Date: Sat, 7 Oct 2023 18:31:00 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Michael Walle <michael@walle.cc>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
	Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Robert Marko <robert.marko@sartura.hr>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Luka Perkov <luka.perkov@sartura.hr>,
	Randy Dunlap <rdunlap@infradead.org>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v12 5/7] nvmem: core: Rework layouts to become regular
 devices
Message-ID: <2023100722-stallion-unquote-a3b1@gregkh>
References: <20231005155907.2701706-1-miquel.raynal@bootlin.com>
 <20231005155907.2701706-6-miquel.raynal@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231005155907.2701706-6-miquel.raynal@bootlin.com>

On Thu, Oct 05, 2023 at 05:59:05PM +0200, Miquel Raynal wrote:
> --- a/drivers/nvmem/internals.h
> +++ b/drivers/nvmem/internals.h
> @@ -28,8 +28,30 @@ struct nvmem_device {
>  	nvmem_reg_read_t	reg_read;
>  	nvmem_reg_write_t	reg_write;
>  	struct gpio_desc	*wp_gpio;
> +	struct device		*layout_dev;
>  	struct nvmem_layout	*layout;
>  	void *priv;
>  };

Wait, is this now 2 struct device in the same structure?  Which one is
the "real" owner of this structure?  Why is a pointer to layout_dev
needed here as a "struct device" and not a real "struct
nvmem_layout_device" or whatever it's called?

>  struct nvmem_layout {
> -	const char *name;
> -	const struct of_device_id *of_match_table;
> +	struct device *dev;

Shouldn't this be a "real" struct device and not just a pointer?  If
not, what does this point to?  Who owns the reference to it?

thanks,

greg k-h

