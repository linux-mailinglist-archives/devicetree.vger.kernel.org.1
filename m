Return-Path: <devicetree+bounces-109780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A074997F36
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:17:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58F8C286BAC
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9589C1CEAD8;
	Thu, 10 Oct 2024 07:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="onhr9qUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F041CEAD5
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728544446; cv=none; b=FgW7WyjKq2NacIYLHUwuNceEzxgmw6vf5hy4tpUSZ2oIDQMH6zrsuDnVvRmFlX/aqveGWchnRw6k0tA2cd9xCIpvASA2FnolP05wqBsSdpB0Wsr7D8oXwdTsJgpvqGOQiD+Os/Kr5uJdC7G6WyhLwJwxfYni4KfLGIBnt1r3mR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728544446; c=relaxed/simple;
	bh=4iOxIX8IGVA18xlHD/m26tJRWtsCYBqt+n68Y532fQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R+JWfOtxpkWsrBmduOaujcX45pjld4TDCAmsbv+SI6j58TlOwVLWwTcjCG7pzwxNd35d2Gb9r0KjlIueBTvKNZg2uvwQTj9JHi46QvMk46Vn/E+lzeG3he1Gf70MNmwXdzXQbwEBQOxdqbDftD3w9VzGHRwKxe4JPajjVs0KKfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=onhr9qUk; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-71e15fe56c9so511897b3a.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 00:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728544443; x=1729149243; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5sDmeUpbgEUKwxwRuUhCja4Dxuub8EV9vOw4/pjad+c=;
        b=onhr9qUkK1H5gq6+B0GcCuK4zg5MR8ziVlzWm6jBNNilYGClNAB5zh5JpIpGdzRLJV
         4UTzMXnZfMD7SCv8tJG3QdXfJ0Flc0krzKf64AcG2k8gM7wPVYMkAXwVIicQO81AldPs
         edJrHCwcalv4oQ2idDaOX9P/SWO+EGVfEeKmT7O6V/I+l6/bh31pSd41945vbv5/UYki
         98Tv7TQnEDWu074iO71pdpNXrGLfNwStVQInerOwR0cBl3uDKRQG+23wDNrXl1zqG/Xw
         GkjLADjw1Bu0jhPGwkXEAKraNt7OoKERP0HDgOJITL35ws3ewlm7wvfZ1v25PntIsyl0
         v0ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728544443; x=1729149243;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5sDmeUpbgEUKwxwRuUhCja4Dxuub8EV9vOw4/pjad+c=;
        b=urwmoFDRJcmUVQxhpUE4CjuTYTxfJH1zt6IXLO68riAXWZhPk7kJm/HrSuFclEP9gK
         8JVB1TYSRPXpZx2TATrqRxlWg/Olztv3j8p6KHp3LBHZ8aehJmlGlT0944Yry/nNZsrr
         0STMl3asNApwbzKzy7yJThx4N2eW1WDJlgZqh32KZ2ybbUPaV2BvZDicVTXMTQWclsYj
         RiiwDt1jUjaiVfV/I1d2IFaFjfyb4v/RkEHyhogftUkBCC9YOF6EqtcwYo03LQAuBMSa
         UBrxAPq1kP5FYfIYfdcnqAY0XJ7q2UFun6PqCRGfBrlyeAt462BDP7QCG94gT/A607P6
         5vlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbsUO5BQvywwwFGQw9MRXV40IjILT41qdXsE2wopjrv1e1GaKLG1lEy/cNXy7zG/AzCWdnvmnbelqW@vger.kernel.org
X-Gm-Message-State: AOJu0YzmoGl605p5YXqgYEyYhVGgTkEZaG8qgm54ZK03U9NuuMbOLdCJ
	qcVTwHk080tmaA+k7MrfsT3/eV5/XJpzkOfPZ3KYx0zv7My68cBHvTxsg0T49w==
X-Google-Smtp-Source: AGHT+IEO0BjF4lnOqXZimpvv6/cR8GzLT8i2pb0ODWlwAKixhY/VBPqgnDGQ91Lcitig4AdIMRVtXg==
X-Received: by 2002:a05:6a00:180e:b0:71e:9a8:2b9a with SMTP id d2e1a72fcca58-71e2680ad36mr4297170b3a.23.1728544443338;
        Thu, 10 Oct 2024 00:14:03 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea4496816esm385681a12.89.2024.10.10.00.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:14:02 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:43:57 +0530
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
Subject: Re: [PATCH v3 04/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_map_addr()
Message-ID: <20241010071357.c3kck3rxdhvy6m67@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-5-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007041218.157516-5-dlemoal@kernel.org>

On Mon, Oct 07, 2024 at 01:12:10PM +0900, Damien Le Moal wrote:
> Add a check to verify that the outbound region to be used for mapping an
> address is not already in use.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 89ebdf3e4737..edb84fb1ba39 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -243,6 +243,9 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
>  	struct rockchip_pcie *pcie = &ep->rockchip;
>  	u32 r = rockchip_ob_region(addr);
>  
> +	if (test_bit(r, &ep->ob_region_map))
> +		return -EBUSY;
> +
>  	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, addr, pci_addr, size);
>  
>  	set_bit(r, &ep->ob_region_map);
> -- 
> 2.46.2
> 

-- 
மணிவண்ணன் சதாசிவம்

