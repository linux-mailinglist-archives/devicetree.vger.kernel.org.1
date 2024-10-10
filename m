Return-Path: <devicetree+bounces-109779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2EB997F15
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CBE36B250B0
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 132A31CC8A9;
	Thu, 10 Oct 2024 07:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qg9OL8hX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8593C1CC8A2
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728544161; cv=none; b=U6xkf3qLRlEM9KnCrYJevkYBk21p1Xu3sZLVyfJChzXHN4L5XbJJx3weWnAidzQKtU28andrP4BdDQ8RUzERlK5hhqnpzHbyyREC6/DcS0rUExBfDIetBi+8UHfucEQ09+cLze8EjEt7X0JH/lNhABp9I2EfWwSZ3WA8ruE2NhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728544161; c=relaxed/simple;
	bh=T0eZ+0kPAfmI4/sVOtVFpHudEWC+M3+NOzXYfOsnsqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VBG6BkxUGKIPWDBRBk2Fd8UX9tFMCaHF/Tm6es/2CaE5eiIAXJ88HSRubTreCQe2PFuR4/3jihf0xdNocS2RKkPOvHpuC0WP7PamWaZJ7jUi7AY1du0GV8vOlSI+IK0N/kP6bZ/6DYA3AuMPeNmiGcnaQQlS20UiAVI0XlI8FdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qg9OL8hX; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20b78ee6298so3246475ad.2
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 00:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728544158; x=1729148958; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tJtJaWjtNg9tO3T0sp+J+HlaXqzFt2qZA6ek8LhkKYA=;
        b=Qg9OL8hXF45H8yaEqpNxJORRjLqMx/R+407i1gP0R5CzYVbkDnYQbg/7Fk3hMKEA7E
         vsdAJHlvRWnNFsqQReg5pGcYpW97lPd9r54WgD+PNKFFZdbK0ITg1LN55Ue8qE8yRxXC
         PKa7vV6UxhxfRJIZsDfYL6KoVEpyBr1KhERyla8pG0DOBVO5oXewSuoHRJLl4miGnTYo
         6lNgfW/jpcSsujCTwCokYYamfqz6kxdJjsl5FGjZnviZBkL0tSukWM+sBj85vrsqRD4Z
         bEsMZI4T1B6BPHXp3fZNZCffLb0kbNTPSzHxYGa0NRWwSi13Lt+8d6wdzqGnU3X6SV8W
         2kqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728544158; x=1729148958;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tJtJaWjtNg9tO3T0sp+J+HlaXqzFt2qZA6ek8LhkKYA=;
        b=ONR3oS1iEzMCu62RElugX5u2+7BbN8TonW2yW6qhCnHGAAI9Onb+MdRtQQJclvAmuV
         WV+1LO114PuBP+R4TLSqx/5wsFcP3nd/+kzvZ6u4h2xXDFE2dkEu2LlZoPT8Q7okARLl
         4ZDmEzC1ksS4gpkaxN2Dd86efJ4dla3M+Z35mqNfR64oA+NaAcQqk4RkIEWqDAL+Wp4c
         EaCltsoOBBmP5H88xXqVJDfXdfIiMwN6YI32k5OXZ9oIPGPxTevZKZcIJ3angK9nuHUV
         1NaFmzFHAD3FN8uKZnY+DRXQmROIA9utz4soPmuTzc1cOMB+yQdSmHbyOm+d8d1yoKRr
         cFIA==
X-Forwarded-Encrypted: i=1; AJvYcCVncs88VO6ozQwhgx/2iJ9Gu82fDscK7ZwH3oApOtWB7/+vIXf54qceel3veCW+ADsvqPU6sQdxftKL@vger.kernel.org
X-Gm-Message-State: AOJu0YxMq6v8CCgjdwM2AFF+0QLSLcWi0v7Doljep+sQg7OikmiSiKlT
	GvS9K95B6J2Hmi/AN/9/xQ33keegfJNuel94HAjm4kpA6Clj7Y3+YMdHVZ9Mhw==
X-Google-Smtp-Source: AGHT+IEw4gY867tOo7DZxusBWqPRTN9yJ5jJLOtJDZX1qHIb6njHxYctb5N835g6n5vxSmfx6RjECA==
X-Received: by 2002:a17:902:f681:b0:204:e4c9:ce91 with SMTP id d9443c01a7336-20c636eb0b2mr73514025ad.7.1728544157915;
        Thu, 10 Oct 2024 00:09:17 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8c215ed4sm4216135ad.217.2024.10.10.00.09.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:09:17 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:39:11 +0530
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
Subject: Re: [PATCH v3 03/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_unmap_addr()
Message-ID: <20241010070911.ozwrpho3wddb4ezf@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-4-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007041218.157516-4-dlemoal@kernel.org>

On Mon, Oct 07, 2024 at 01:12:09PM +0900, Damien Le Moal wrote:
> From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> 
> There is no need to loop over all regions to find the memory window used
> to map an address. We can use rockchip_ob_region() to determine the
> region index, together with a check that the address passed as argument
> is the address used to create the mapping. Furthermore, the
> ob_region_map bitmap should also be checked to ensure that we are not
> attempting to unmap an address that is not mapped.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 5a07084fb7c4..89ebdf3e4737 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -256,13 +256,9 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
>  {
>  	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
> -	u32 r;
> -
> -	for (r = 0; r < ep->max_regions; r++)
> -		if (ep->ob_addr[r] == addr)
> -			break;
> +	u32 r = rockchip_ob_region(addr);
>  
> -	if (r == ep->max_regions)
> +	if (addr != ep->ob_addr[r] || !test_bit(r, &ep->ob_region_map))

Having these two checks looks redundant to me. Is it possible that an address
could pass only one check?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

