Return-Path: <devicetree+bounces-166396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC37A872DD
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 19:13:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4C6607A25A1
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 17:12:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C605D1EB1AD;
	Sun, 13 Apr 2025 17:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WJ1o6Ppo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F0C18A6BA
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 17:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564388; cv=none; b=ck94HGhTbQxzeWP4rRgZVaROzPXwkj0cwWNNfNj1X3fthWpuTe1LD9fWcTjP3ATQU1LQ+7mzZZzvD5YbQ/ZbIuFbrMBjPSmeaTam4JEP/xN5eAifC5vu8An5xH+Un2i/zVi0g8wOVXJzcwFN800IEeo34aSIK7cGv3TnMqYRli8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564388; c=relaxed/simple;
	bh=aEQzF99LQ0NNvpBhqm+RkEYHYTmZEcGMdv8X4Shek58=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q8jfg21Wm0yZ3WXMP2dVaSbYK1LLd2EMCtHFXfJLBRqumj86ClAu0de1vk0NBEs8/qR4cGoEVXxMetPcFh2Rbd7Jgvx6pVatxpZVdOMbIyv++78VP+kDmAsmzb4W3ZWoOcsfFqzpx3e/BES6yt1ufsCrbXk6kGlKfMjZTsypKvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WJ1o6Ppo; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-3011737dda0so2895857a91.1
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 10:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744564385; x=1745169185; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=T/+QNJQggYnXDj8WNcyWPPzk0l3SA6QGoTwofzMyuGw=;
        b=WJ1o6PpoGCrYnpqZAmVei44ACeQTVXdmF2fssALerxWoHgkgBdmnZanC5JcXS9vOsn
         eFzM4PY75zftdWu3iSTyeYfKLBjh49YV01W28egCYs7xZd76840J8Yj+uApGPI68J1Xi
         fe+4e4msRQv9q8K1JP2c69mBXiw/2SiItsW60AGyFZCONc7nzZ7ya6hF7EgxOtIcRCkR
         pVvRHquhCVTHGtcUwOYqP9DArA7VbklHXkcdvhQBbKwbvE1Bp4b8+Y3sbYevXoeB1AeZ
         fA7Zz32BZ6Vz0JcNm+DvVILyTBqzjlTQT0FfPwdRTmIavqwj/VGEpT6KKVNfLtyGYFuS
         aydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744564385; x=1745169185;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T/+QNJQggYnXDj8WNcyWPPzk0l3SA6QGoTwofzMyuGw=;
        b=HZjQndCMi0BsXLjOfK/yIlvBhuXC0M6x8j4A4sE0hOe7m/wj6FER8gVwc2qD5W/utn
         /GMF47Crh66oLkPTALlLZzVSakb1aMoUUiFmzjsgtPZbQV2Qv6NZn43AxYtY6OLSkMOo
         a2eSK+tbzuo5itO1/ZnlJ6ZkAKmAzj3P3EOsRQncJ2WM+5FQ/V0FOjsgipKee7i9ND2P
         dx5Y4JpNo915m4ex9lGdx+cACEr0mqHGj20F7Kk1GUff+qtqjgFOmmGglZ6uTmKNBHnY
         xPjr+qYB/THQ9OuK40hyVKkz2ec8Yng/++dkg7r/lVLtCdxIQmMAoCl4O3VLHSPMGAaZ
         zqCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXFVT2WJf17IvbXyRv5Ez9if76YcdbbhNeLxtT/nvNLUT2OcNMPFD+cPVKL8Jau6IQj4DiZRr+8Rca7@vger.kernel.org
X-Gm-Message-State: AOJu0YwSYJnYH2lw9JFAbiuT9s+AqlvlyXTitAYBVSsMguTnM0e7/TnA
	ZRDySFSvj2fdVsCaEkzctXjBzi3ErOaSZ7aIAkB41VQF15YOJTkTT1MUWWHPvg==
X-Gm-Gg: ASbGncsf06wpt78rw0OZCLCIhnFMG1PCdsKy/jbqFcCOsga3pK3euJ1gGilEA+BxceD
	uvmYuUIaIF30qZWVL0Q+r9NMi81lvoIT/Oru/5OVKg0ZxcCzV/5/ycQy+LlKEapwy+k4MyGTtnu
	MRyPJZcsTu5xVyuh41ehR0i1ccGqcjKK+ZGAYEIXd6RDgYlmN6fSELhGBW1meVKNslg/FALkZCZ
	slENB7mVtdh87Y1aJ+iyPv/gg/38l3HQat6Q4ics3poWZClYmPXHZFYMGKH26n115lLpiygWREm
	KUtJCFsNdZqCbshXaNbOvA5tASBW1g+qZoIF024kvEOChomstw7a
X-Google-Smtp-Source: AGHT+IFgvRixxj4CWBFzEA4Rqd/cLujQYErvo4nd7qcvFFaJWGEF/g+XbRNPiPM5DyBrqssz2FfknA==
X-Received: by 2002:a17:90b:274e:b0:2f4:434d:c7f0 with SMTP id 98e67ed59e1d1-30823664092mr18167375a91.12.1744564385379;
        Sun, 13 Apr 2025 10:13:05 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-306dd10c41fsm10783830a91.8.2025.04.13.10.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 10:13:04 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:42:58 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 08/13] PCI: apple: Fix missing OF node reference in
 apple_pcie_setup_port
Message-ID: <bw5hh2mlgaxxxy6rcjksrqfkpencjx36iywy7kp4s65ah5qe6c@ye6dmhzhdlck>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-9-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-9-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:08AM +0100, Marc Zyngier wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> In the success path, we hang onto a reference to the node, so make sure
> to grab one. The caller iterator puts our borrowed reference when we
> return.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Hector Martin <marcan@marcan.st>
> Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-apple.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index 6b04bf0b41dcc..23d9f62bd2ad4 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -593,6 +593,9 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
>  	list_add_tail(&port->entry, &pcie->ports);
>  	init_completion(&pcie->event);
>  
> +	/* In the success path, we keep a reference to np around */
> +	of_node_get(np);
> +
>  	ret = apple_pcie_port_register_irqs(port);
>  	WARN_ON(ret);
>  
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

