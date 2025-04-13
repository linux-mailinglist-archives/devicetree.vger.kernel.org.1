Return-Path: <devicetree+bounces-166399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C608A872E8
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 19:17:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0DE011893647
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 17:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1A91EF378;
	Sun, 13 Apr 2025 17:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OaqUHXp0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8BFAE57D
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 17:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564634; cv=none; b=EXS3D9X7rOzpJeP+VnERpbURvzXrTQrkam13JLItWlMogcc9cWdXJ0UXr3el4fY6hxiyWGEGZ2cxZ5Wa43SCOkhLlCLjeNea5MDO7FowNu1I6u6IdO/cNi5X+FJVQuW2laZg7puMuXe8DO8gYSo4T2BiCefIRbjroXKlR8e6rd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564634; c=relaxed/simple;
	bh=yzmYr4JLOS40LoDlK4MgPp+nJ9KhGdxaumE41jBjK4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UUjY7e48rmlB9HOI4u9jYwd3MJPWc7PNilE9mhuJR1gzaWJkXPCyYeVxqQiXCe6gPeeFxk5VOkzR3pUPN8xeHGzWnhxXMCIAIjHCneRMsqrHIednn8+BTeI2p4y0Oe0jkr5pwiLXmgU8o2vNz41anEXEmd3GdMD5ZR8tEvagKNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OaqUHXp0; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-22435603572so32602055ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 10:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744564631; x=1745169431; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fvXB1Wjux2MAoUVYX6W6dWHZg8CiYEv8//Po5T1hVMY=;
        b=OaqUHXp0MKXECUMrJIJCDFeAzQMhGK0fYAM/othAcpZ6CfzTueYmYlI+ad5Yo0zGA9
         IpdAwyhxmGkVB79Erb/aT0/sIx7lYF0zNTQ3HGMtVfU4Vv9B9V4c9Dm+sC4SlxKasTGf
         yz5m96M6lvoTfRSnYKNU9aeUM0TiybxFFwqK65YdeGaV0oQhfnXFagqCDA/VCo/kfhrH
         fQ1HNy2DRXjfrwxI+a8xJhq+xGwStUKNTjutusruUH2orXjjqS9yucbzNkAPwzqdepWu
         HVQyNRYfl5SUrBFMIMD2k0D18j8+cCCltShrmfKymhzXQvQt6hvgosQPrPS1SJgI9SFK
         PDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744564631; x=1745169431;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fvXB1Wjux2MAoUVYX6W6dWHZg8CiYEv8//Po5T1hVMY=;
        b=vKgAwvr+NSLbQxpgxa9O+9IlETsMtldatZoKdbpuUP+SPRTLJFRppDcWUtpLl1J0Uo
         W6SfKxLIzZMlJAjF6ktcD1xn7C3wB8hZt5w+qtcdFhCLzxuAeoHV7G9Ea18CN1diU5QT
         sQjLWR4ybIw6D/AP9WCxKcdWAG4AcSh3sAGIUUoH3lVkxIN5+rrdKo7h8vwRlwiUorce
         TkXWCWSwwCDNOdRiXzRIuRlrjFdyRbm9Z3n1e1bwJqDfMz+eb2Q7orfr3AAFZvYi/XOq
         dbWSR9opvsfWIsvHahGXd2Qhk/mmfu88rnv7BIw77l1yTqNfcvYl80MoJ/KaWMW0L0ZM
         FCXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKjH8dEsdegOonhXm5rWZ28A9uCd2OlkB8adgynOdswoivVmEBsX9C9jQtpkglDsLBlmlws2chq3gH@vger.kernel.org
X-Gm-Message-State: AOJu0Yzum57kCWAjcQu4jvFVoTYd7WyXEfDpU7+8ZidLY15Ow55jIA8s
	j1mc4cOzvc0V5WzAev6xA9wK03wRiMbKNAn+eJc0EpF4O3E981J9ZoJ8W9EaoQ==
X-Gm-Gg: ASbGnculOTjXcs/qB1YJMyV4OKgZoPc76c4hzbeg7Z0pmTcYA3BraFLoj0dON22BHJN
	lkrvsHw6gsjMjxg4LsnwpRu5edTBn/RRaUfRErF7LT8lj5wnKyepZ8imYX+nfUkF5iJRiGG8NBV
	BzuWITZ98jtf8CysUWRLLqweBdS+c/bkSXGTK/beOmp9y1+jokQb83gl+ebJdH4rQ9EEd71UgkG
	vGnXGkCskU+b5D1WML5vk9XyduwsIRGVKyT844o1XbyRPYVLJ051ocq93mlrcKpDzhEpBlbiEL8
	Hjv/btTKy7xkaSia64aCGIUTpM5ky16DFy0fbCNCp0Bgr42jU/GC
X-Google-Smtp-Source: AGHT+IEtOLc2J65A5BztfZy5lJCUWgfZuua8Ed0F/wWmVQ49XJn2NKHTr6y3ixbdHzeiNIvZR7HI/w==
X-Received: by 2002:a17:902:e5c9:b0:21f:1549:a563 with SMTP id d9443c01a7336-22bea4954bfmr127432855ad.2.1744564630883;
        Sun, 13 Apr 2025 10:17:10 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97228sm84677405ad.128.2025.04.13.10.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 10:17:10 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:47:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 10/13] PCI: apple: Drop poll for
 CORE_RC_PHYIF_STAT_REFCLK
Message-ID: <rzrouiqucgtdpapcqwf6pbdrbsrxeii6khx3h2q26etu3772tb@qxxdjuv5uias>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-11-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-11-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:10AM +0100, Marc Zyngier wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> This is checking a core refclk in per-port setup which doesn't make a
> lot of sense, and the bootloader needs to have gone through this anyway.
> 
> It doesn't work on T602x, so just drop it across the board.
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
>  drivers/pci/controller/pcie-apple.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index 94c49611b74df..c00ec0781fabc 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -475,12 +475,6 @@ static int apple_pcie_setup_refclk(struct apple_pcie *pcie,
>  	u32 stat;
>  	int res;
>  
> -	res = readl_relaxed_poll_timeout(pcie->base + CORE_RC_PHYIF_STAT, stat,
> -					 stat & CORE_RC_PHYIF_STAT_REFCLK,
> -					 100, 50000);
> -	if (res < 0)
> -		return res;
> -
>  	rmw_set(PHY_LANE_CTL_CFGACC, port->phy + PHY_LANE_CTL);
>  	rmw_set(PHY_LANE_CFG_REFCLK0REQ, port->phy + PHY_LANE_CFG);
>  
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

