Return-Path: <devicetree+bounces-110627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A849099B4CB
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:16:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84AFE1C20EFF
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 12:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8517F154C0F;
	Sat, 12 Oct 2024 12:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mz+8k67G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185011459E4
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 12:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728735392; cv=none; b=JVvapGVBOTrCE+AihlGBQWCsnJibQUqwfffH+5Jwv6gXFbZX/T6rk5eN/o36SiEhRO1IgSqUaf87hsJuo4XKW8Q4tnu1MnDHskw4QcJNLyOSQU0j0MxpmzrlayC5Tg/i28QS1h1xTHsZbdhLNK0yAB5iAIWHvFTlIpOru8I95aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728735392; c=relaxed/simple;
	bh=HE4VapOdk40ucAUwq5tJVJNiQNjVgHGXQnbN2vKIQxA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kCl6yQazxFqy9G2srbsVyqnIu+fp9O+6ZR3U+8QaDQqjM+jfHhHFFzQKe85VlReCyBU5pKMv4zQfFuV766eddiBOIYQOvw/9cXo5OUEe/CRccZIhOEA/P8meFnPUQh3sbsoCtWxR6/8UX0SfGHujdTaHvW3NMwPbVPoVCpvBxeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mz+8k67G; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71e580256c2so43760b3a.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 05:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728735390; x=1729340190; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CuW3rboOAG1eM7gMjWc9QpSNVTecsSZqlvXpnegovBc=;
        b=mz+8k67GH1/6knqDxsw6Tpyn3p1pBwFcKpk5S/zvaBaESFsJwbYAd+i/JDBzhZq63G
         RNc3TpYF6XvzDRN/fWVmIlMU5ul0VCL9b+4DQeDGH//8Xdtv/9ZJ7J110UnuGQfX84xL
         KJ8DQK9ZWzSw+a5g19D7sA5ohh/OGh7Ig7GlCMLeqgu5FqB6hdtNsTu38yXa4Zzk4XCz
         gxkOp2WNJHdSC30Xo/RQPaUJf5wsh0SCh4UdpA44SvP+y3TaYChQS/upXCahYUgiOXJQ
         eoPtZz5SH8/MVH0RyadMzsuC8Z98K5yIcALXiLCe1IWeWaKZVk8KKsKLayfoFB6GNu6f
         pusQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728735390; x=1729340190;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CuW3rboOAG1eM7gMjWc9QpSNVTecsSZqlvXpnegovBc=;
        b=V31jHP6XxIdjtK+sIVl4BA/6W2ZsZW5cy12Zxv4nrBOjZpUnpjrTaqqzo0WA0pp9c6
         p8s6MojS1rqUWKp/VUATqbPP74p9Mxo86cB4fUrLii3Sx7dvPGJd3ldx4Kn95W+HarA9
         4byLt65pBNlGpqPMkFkhUejni0Fs0BDHUGAxAMlHgUXZaP14ZLVRhObIbL5B/VNxYvxT
         rjRmdm3SP9qPCyO0IKbz/f/vrr4mZ6kcasbIgP9HJT57dZkFmDrMhTCvRAYes1oNJY91
         831I2lEuS2lXmNlNB9V7cOSd5Bc5CHuUo28ohO0IJCozT2uM+wqwyYfceP7A9uo315qq
         yt7A==
X-Forwarded-Encrypted: i=1; AJvYcCUss7dqpeUTPowc8V1tCWqiKwDIhbfYR6V6cNevzKELheD2CsDf51YuZ8gafU2xrmsID0iL7CZHgtUl@vger.kernel.org
X-Gm-Message-State: AOJu0YzYNS3LrUSiQu400TsMkGttOCSIwTYEQ5FbML6qMaf5eaLaJF0/
	av4WDKTMuX6FAJBnAD5gGz44NPJxm2M2SRPU8mvQe8wBBLsc9b079Fk2LXIhOQ==
X-Google-Smtp-Source: AGHT+IFJFAKq8AvKr5WqJJluQSblJRPi1x8ZqEJtRUpmaq30Rs5xjtclmV9IFrQu3SO8OQr5mniMDQ==
X-Received: by 2002:a05:6a21:168e:b0:1d7:7ea:2f36 with SMTP id adf61e73a8af0-1d8bcefde33mr8009237637.4.1728735390374;
        Sat, 12 Oct 2024 05:16:30 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e4dbad815sm1142523b3a.175.2024.10.12.05.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:16:29 -0700 (PDT)
Date: Sat, 12 Oct 2024 17:46:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 10/12] PCI: rockchip-ep: Improve link training
Message-ID: <20241012121622.owkg5geqp5jqtjod@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-11-dlemoal@kernel.org>
 <20241010103550.elwd2k35t4k4cypu@thinkpad>
 <84efa346-c1de-44d5-8b27-2481043e9102@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <84efa346-c1de-44d5-8b27-2481043e9102@kernel.org>

On Fri, Oct 11, 2024 at 05:55:25PM +0900, Damien Le Moal wrote:
> On 10/10/24 19:35, Manivannan Sadhasivam wrote:
> >> +static void rockchip_pcie_ep_link_training(struct work_struct *work)
> >> +{
> >> +	struct rockchip_pcie_ep *ep =
> >> +		container_of(work, struct rockchip_pcie_ep, link_training.work);
> >> +	struct rockchip_pcie *rockchip = &ep->rockchip;
> >> +	struct device *dev = rockchip->dev;
> >> +	u32 val;
> >> +	int ret;
> >> +
> >> +	/* Enable Gen1 training and wait for its completion */
> >> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> >> +				 val, PCIE_LINK_TRAINING_DONE(val), 50,
> >> +				 LINK_TRAIN_TIMEOUT);
> >> +	if (ret)
> >> +		goto again;
> >> +
> >> +	/* Make sure that the link is up */
> >> +	ret = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_BASIC_STATUS1,
> >> +				 val, PCIE_LINK_UP(val), 50,
> >> +				 LINK_TRAIN_TIMEOUT);
> >> +	if (ret)
> >> +		goto again;
> >> +
> >> +	/* Check the current speed */
> >> +	val = rockchip_pcie_read(rockchip, PCIE_CORE_CTRL);
> >> +	if (!PCIE_LINK_IS_GEN2(val) && rockchip->link_gen == 2) {
> > 
> > PCIE_LINK_IS_GEN2()?
> 
> This is defined in drivers/pci/controller/pcie-rockchip.h. What is it exactly
> you would like to know about this ?
> 

!PCIE_LINK_IS_GEN2 means check is for non-Gen2 mode, isn't it? I guess the check
should be 'if (PCIE_LINK_IS_GEN2...)

> > 
> >> +		/* Enable retrain for gen2 */
> >> +		rockchip_pcie_ep_retrain_link(rockchip);
> >> +		readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
> >> +				   val, PCIE_LINK_IS_GEN2(val), 50,
> >> +				   LINK_TRAIN_TIMEOUT);
> >> +	}
> >> +
> >> +	/* Check again that the link is up */
> >> +	if (!rockchip_pcie_ep_link_up(rockchip))
> >> +		goto again;
> > 
> > TRM doesn't mention this check. Is this really necessary?
> 
> I think so, to check the result of the second training for gen2.
> Even though the TRM does not say so, I prefer checking that the result is what
> we expect: the link is up.
> 

Ok.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

