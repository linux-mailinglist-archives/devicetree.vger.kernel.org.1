Return-Path: <devicetree+bounces-218420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3C7B7FE61
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:21:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D9C91C84E7F
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F82C2C15A3;
	Wed, 17 Sep 2025 14:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="fQQ/etmm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566FF2C08DC
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 14:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117779; cv=none; b=Zq3jqJG+RNkVwiLzBiqpcCtE67ku+KBw0hGPrvwkVQHpIVwvJbSbINJ1OBhjdrgoY3WUvMT8PN/p2dy1y2E0hqSNUlP8aFDtsQ9cH6h5t81zS46Qh5uco7PHoYQMKvL486IPvBDDb3Wic4jPqbM/H5o/oCtTTwcDv6XJa7mFR88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117779; c=relaxed/simple;
	bh=u65F9ibn0/EbG13e/4IgxRNvUJYSs9cVYFGQuF34WGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QVTpR2SXQbTXKzjtZzPBzai9JtEckx6srdwYVE4yOuhQVO3TEAs9fsl/+8bQfZ9me0owXR+9NBBlLTLbue0iF56v5CO+tq7rAVwqPv0XiP35zhrIEy+PKgrjmSqyIL2aBHl3Z/svsDfiGUqaUmufV6WzSKJQUOKQozbUl3QylCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=fQQ/etmm; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-778d99112fbso50219326d6.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 07:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1758117776; x=1758722576; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6oT1gAMoRrlj04Hb48NO47TuLVXjyiMx+T7Y3GCHqFE=;
        b=fQQ/etmmhSAtf02Jj9wEbAgxR2cms8RuEKxcrARQufb40E/BxXf4gbMgg1gJ0QR9hu
         kZSHLyCY5wxL+WMQVxsIn0IqV80OX5YZLAI2o3wpYfj9nq3hnMJMiT0RJjMR6kEt8CL0
         0TfvIG5M1JRDM3e5VX3cG7TLmRIvNgJL7vzNRIMS04Ktv61ZMP7Ftx+Yt0xfoX30Gg7g
         37alP0M7SJRRLa6JHdKTIS0tgojkiJgDtMnk7KhwC3roFV5VOTtMX9X5GJnNVtceeIS0
         MbQN3FUpFCscps0RlwNGKp8eBMlREZUpH7o6Oy9RTnuY3mH1RmFtFxfrfYHpFlQOBOhS
         VjDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758117776; x=1758722576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6oT1gAMoRrlj04Hb48NO47TuLVXjyiMx+T7Y3GCHqFE=;
        b=sT4KzOqr8KqFSmh+nQpWPB6frpiRyYB6b/kU3nrqwEQ6Ah28ptC/9PMDVmvHvsC+4+
         kYoch0ue3A6ldjvrVco6S/lHIjvwdD8Z/6yIatSEgBLFQr984sYAWCce3R3YXVjq7TXl
         yM66IDdcOsZdO2eXdD4+vuha+nOKYC/yyEbOK1Q+atY/eeIJ/GE0DA0tqViTkcGqL1ys
         ckQY/2H32f0Z8uhPeCdd3YDksbfZWUNFh4hxiBTQrEwBEVYhtuQzYiE9ufMk3OMJvYlr
         hjUXtTAvQ1YTcoqf1gynKVefZJggZd3xv6KMLfAMuXZb8KXTMItS3mgQ09yYhRN1FZkz
         rrEw==
X-Forwarded-Encrypted: i=1; AJvYcCWaQbNzb7pQG72jlNAhkaVSbodgen7zpvHzuQhC6Gl0RkdFyp9IJTqv8vPyCFsf9KaSHym+yiDWhyQ3@vger.kernel.org
X-Gm-Message-State: AOJu0YzSxbuvoLfnewltNVqAf8T+Drw1GwROBVDDxcl9wUWALiSO9u51
	u8IDoJWbanD+AytyUz/GsQM6PRXRgKn/w8IqgbwPbH6ObOHZ8sMpL1D6fm1Ky7UrHA==
X-Gm-Gg: ASbGnct9ksr+tee73N/Q+iqXNGOIRrV5lv53go49CTznI53kic012il96vC6kzFxLnx
	3IenBMal9YVxAO5/MrTlXsn0jYF+cDDVGc1aE1fNkDZLiZEzKRd4TsopTfzkhXHc+BpVNbRQf8F
	8f83dCES/7BhMDFjGL14fvVEdDWYG9vXQcXAG1lDEYMqPsK+b0xxoKPTrapq87Tj4ZxuPn+fodC
	sHe1WZhlqYDK2wPU8n4bSLVLpLFY8hyqwlsU0Idy+CelRHc8MIPsT9ZNDF9ECFkI+S4yDDp8gtN
	c+rIdOTqI7s2EiQi8qbgqVW8ZohEQjWTD7tWaTMYF7e8yEZ8itFKMJW8orQ/60uOe/ckWf6ydmQ
	bqATNHK1fRSao3MgJIEWe7yOBJzUMl4DbZNQcPu+3yAkMng==
X-Google-Smtp-Source: AGHT+IF0RKbDCJQqlOaQ5lIihcYpXIyfMX0yPpffB1uNIpJ5D1oZ3LkjnzHtCCpYKRDg9m9F5+RN0Q==
X-Received: by 2002:ad4:5c8c:0:b0:78b:684e:88b5 with SMTP id 6a1803df08f44-78ece94094cmr21380316d6.46.1758117775796;
        Wed, 17 Sep 2025 07:02:55 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7858cb5ac70sm51464736d6.20.2025.09.17.07.02.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 07:02:55 -0700 (PDT)
Date: Wed, 17 Sep 2025 10:02:52 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] usb: uhci: Add reset control support
Message-ID: <291b2bc2-6a61-44e9-91cb-56044c4277e6@rowland.harvard.edu>
References: <20250917021926.3692137-1-ryan_chen@aspeedtech.com>
 <20250917021926.3692137-3-ryan_chen@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917021926.3692137-3-ryan_chen@aspeedtech.com>

On Wed, Sep 17, 2025 at 10:19:24AM +0800, Ryan Chen wrote:
> Some SoCs, such as the Aspeed AST2700, require the UHCI controller
> to be taken out of reset before it can operate. Add optional reset
> control support to the UHCI platform driver.
> 
> The driver now acquires an optional reset line from device tree,
> deasserts it during probe, and asserts it again in the error path
> and shutdown.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/usb/host/uhci-hcd.h      |  1 +
>  drivers/usb/host/uhci-platform.c | 17 +++++++++++++++--
>  2 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/host/uhci-hcd.h b/drivers/usb/host/uhci-hcd.h
> index 13ee2a6144b2..4326d1f3ca76 100644
> --- a/drivers/usb/host/uhci-hcd.h
> +++ b/drivers/usb/host/uhci-hcd.h
> @@ -445,6 +445,7 @@ struct uhci_hcd {
>  	short load[MAX_PHASE];			/* Periodic allocations */
>  
>  	struct clk *clk;			/* (optional) clock source */
> +	struct reset_control *rsts;		/* (optional) clock reset */

This new field is used only in uhci_hcd_platform_probe().  Therefore it 
does not need to be stored in the uhci_hcd structure; it can simply be a 
local variable.

Alan Stern

>  
>  	/* Reset host controller */
>  	void	(*reset_hc) (struct uhci_hcd *uhci);
> diff --git a/drivers/usb/host/uhci-platform.c b/drivers/usb/host/uhci-platform.c
> index 62318291f566..1c1715bddc27 100644
> --- a/drivers/usb/host/uhci-platform.c
> +++ b/drivers/usb/host/uhci-platform.c
> @@ -11,6 +11,7 @@
>  #include <linux/of.h>
>  #include <linux/device.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
>  
>  static int uhci_platform_init(struct usb_hcd *hcd)
>  {
> @@ -132,17 +133,29 @@ static int uhci_hcd_platform_probe(struct platform_device *pdev)
>  		goto err_rmr;
>  	}
>  
> +	uhci->rsts = devm_reset_control_array_get_optional_shared(&pdev->dev);
> +	if (IS_ERR(uhci->rsts)) {
> +		ret = PTR_ERR(uhci->rsts);
> +		goto err_clk;
> +	}
> +	ret = reset_control_deassert(uhci->rsts);
> +	if (ret)
> +		goto err_clk;
> +
>  	ret = platform_get_irq(pdev, 0);
>  	if (ret < 0)
> -		goto err_clk;
> +		goto err_reset;
>  
>  	ret = usb_add_hcd(hcd, ret, IRQF_SHARED);
>  	if (ret)
> -		goto err_clk;
> +		goto err_reset;
>  
>  	device_wakeup_enable(hcd->self.controller);
>  	return 0;
>  
> +err_reset:
> +	if (!IS_ERR_OR_NULL(uhci->rsts))
> +		reset_control_assert(uhci->rsts);
>  err_clk:
>  	clk_disable_unprepare(uhci->clk);
>  err_rmr:
> -- 
> 2.34.1
> 

