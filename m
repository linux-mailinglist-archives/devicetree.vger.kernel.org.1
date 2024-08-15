Return-Path: <devicetree+bounces-93972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6019537AA
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 17:53:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B0D491C25491
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 15:53:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D9A51B150D;
	Thu, 15 Aug 2024 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DdIwG3+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC8F1AD9FB
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 15:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723737233; cv=none; b=VFd2uMHlz8eLnprUDmXoN0FjS0WRh8xKkvQuJYWdU/RuqP7XMXCYFNHjLUnDnTpOvIimkkbFitZr1D2Qkv7cc1EZEFfoGecw1t8x8cas2uuw9IPZzN21xOJr1ol07E8zgVkAjgfffQnZ9vXMV7YtTbQdIFAu7cEX7RLbJVfcRwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723737233; c=relaxed/simple;
	bh=F5oZlzKS7LV0vco3hf6kzYpAppwKPAa4bDeIJnmZJCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L2vqSk0ITj4RRoc/tx/I7/qraWLMTSDP53k8ijDBzBBG6NwUdJ/pCYwanP7a0PVIWuN9ucKHxY0YmdmcybezNhVW26QIXzwGiBuS+oywmLlHZSNBqMOFZi0nKyd0NtIc+u/bvJ86h7FzUOJLqigjhrxWoSlSH5wa3A8Zq0u5XIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DdIwG3+V; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7a1be7b7bb5so871001a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 08:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723737231; x=1724342031; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v8FkPO3LPGoGF13VvZyZHk15TI2ex5hx7elWLr/UyXk=;
        b=DdIwG3+VmFraA5PEa7AUBmnsXNRhX/DgXdzpSu7SdBaGs5R9rBhpaMeTL/PXRLHclB
         LL2/1R6C5ry/uPrzgmiS1HAcl7tOv4mefPWr6vCUSCnXtR+/5jrqMnNVi7Aar3J1NHjQ
         AkDx6LOqv0JBWdW8ttbHuPZMiy9WWnw6Yf3/2itNi7VeNd0RYon6LECVD2gNcb7bH2L4
         IeX/jHJmRBTKF2g3ts1z7IJSPMaggSXTfDD2qRRPzwQJDQ3n2BaWUvDg97CM5inpiQ8v
         snAw7SbqjhfP9wWu7qvX48nwmw0tEAIlFkiNIhTPyDuVGgVscxalp4PPqXgSHFU5Jytk
         Rmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723737231; x=1724342031;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v8FkPO3LPGoGF13VvZyZHk15TI2ex5hx7elWLr/UyXk=;
        b=N8cKJWvg8S5sTbyluk6vZWkvybqx6c6dRPbl8/48gqLLievwf6UIwB8LDPRIubkcUe
         091H6ONj/7Kkqr246ZhWjfFkdCAgEwKUpkJ/k2zbhkp66cqS/ARCvsZAh0hBoo5pMsH/
         3JGUG/PFehUOgs2XnDkiFYZqDDuNvxNEioGXZ2lXjwja799x01zk2icWB1pBkPK8lhak
         6oWlaLW9RlYasEY0VRiU/nKJO1YqnjNemlawCEWpkz05TE90SuG1wiuIdGxUdIooCN3S
         gbqVNc6QvmM4aKgIye3pVD/RSrjp+qysC8NkuHPTbZvuUfbXo6GW08IMs+ANmGOOoZEd
         VGBA==
X-Forwarded-Encrypted: i=1; AJvYcCVENDu40VpP91fwWZJIjaXkNBoLHz7OO99htrF1AiQYMLb9Qg3FubzJRmguD/bxqmAO642KR0q1uNPIOEPM6ZtGrTa+u1GscoJfug==
X-Gm-Message-State: AOJu0Yw0W+B+F2CzBu5i4rgC/6HLrAgIjURxuTw/VvxliV9LtSjz99pj
	TtaH0KlEYoBVW/22G9oJJMQ60oMxRv8Bi3SqdkG6PjLhJHE5yY02Y2V4DYYKqQ==
X-Google-Smtp-Source: AGHT+IFFhMzPsFhY6B8IutZ/NT80L7w/pSH6eUiPk5JneBgDCW93h41FVTkK8Xj+zNfxYMkf+hjWEA==
X-Received: by 2002:a17:90a:d517:b0:2cf:28c1:4cc2 with SMTP id 98e67ed59e1d1-2d3dfc1f4d7mr97707a91.3.1723737230823;
        Thu, 15 Aug 2024 08:53:50 -0700 (PDT)
Received: from thinkpad ([36.255.17.34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2d396a59287sm3068691a91.0.2024.08.15.08.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 08:53:50 -0700 (PDT)
Date: Thu, 15 Aug 2024 21:23:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Zhiqiang.Hou@nxp.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [PATCH 4/4] MAINTAINERS: drop NXP LAYERSCAPE GEN4 CONTROLLER
Message-ID: <20240815155343.GC2562@thinkpad>
References: <20240808-mobivel_cleanup-v1-0-f4f6ea5b16de@nxp.com>
 <20240808-mobivel_cleanup-v1-4-f4f6ea5b16de@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240808-mobivel_cleanup-v1-4-f4f6ea5b16de@nxp.com>

On Thu, Aug 08, 2024 at 12:02:17PM -0400, Frank Li wrote:
> LX2160 Rev1 use mobivel PCIe controller, but Rev2 switch to designware
> PCIe controller. Rev2 is mass production chip. Rev1 will not be maintained
> so drop maintainer information for that.
> 

Instead of suddenly removing the code and breaking users, you can just mark the
driver as 'Obsolete' in MAINTAINERS. Then after some point of time, we could
hopefully remove.

- Mani

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  MAINTAINERS | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1e71f97fb6749..9b683899cd088 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17556,14 +17556,6 @@ S:	Supported
>  F:	Documentation/devicetree/bindings/pci/nvidia,tegra20-pcie.txt
>  F:	drivers/pci/controller/pci-tegra.c
>  
> -PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER
> -M:	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> -L:	linux-pci@vger.kernel.org
> -L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> -S:	Maintained
> -F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
> -F:	drivers/pci/controller/mobiveil/pcie-layerscape-gen4.c
> -
>  PCI DRIVER FOR PLDA PCIE IP
>  M:	Daire McNamara <daire.mcnamara@microchip.com>
>  L:	linux-pci@vger.kernel.org
> 
> -- 
> 2.34.1
> 
> 

-- 
மணிவண்ணன் சதாசிவம்

