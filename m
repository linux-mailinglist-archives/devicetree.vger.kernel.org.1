Return-Path: <devicetree+bounces-166394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D249FA872CC
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 19:07:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA3351892C1D
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 17:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D24A1DDC12;
	Sun, 13 Apr 2025 17:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DRIHCqWr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DECA1917E7
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 17:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564069; cv=none; b=ZfNpbNC2rkodEbU05TGP0kb6r9cBRshbU3fwL8q7Ub6Dqrgu5o7kRLWyg+SVbM0FAuGiKrLAknurOZE3pv0SbLtnpn1blRg+cZJCNYTaENcHcHeO3PmTd73/x9u642Ljzr8Ti4uksP8BWp5CO6T9deWsRnkUvi/j28pMiXEIWkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564069; c=relaxed/simple;
	bh=6VKODufV55CPHRL6gMi2vT4BTwQXo0hYnnyL4Ta01nY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uC3mn5nYIWPTSD9zYeo77Kwep6Hm5w8jwrp71ekwUWfTxrfupZnU58/6TxBZdN1Yeur1ZwuJxDpWKp34R1W1JVppmzjAofTn0ytBRugKwmTTQQtqMhBTC9x2zGO1pKr7iASCyPPPgj8w3ZyEuZS4CCWtFhp+x9+WCaUiGMi6qRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DRIHCqWr; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-227914acd20so36633645ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 10:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744564067; x=1745168867; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+nVktb2oUewrSNZef7Xp2RVx4/SYPTQmZKEvKujre58=;
        b=DRIHCqWrTTuyHsN1JYQgnSqwTtOur7HWh9I4oDzTd5NnkE3lBZZeOkxR1xHxakYE6V
         MIsqICN2Bz9KUhoa0zOmwVH3FDnT3kDwmaoiJU40ItPJuFv/DMfrl+q/+tNflwH7vroT
         8XtiINvYlT5TMM07H1t0doUtSCWG/x2rWFH1rV2mIH4GjflzBwI4JLfM/SjXRWYOIRiy
         3TTI+BwDOsAiFuyqQ4sX/YVY+Ce77EbaHGiewe3kdIhrTfDHetM1vE+GCF8UzJpU31yh
         ZHfQt7KTD01QEiGhnvql+9n5yJYWGhnfxJip1MaTJ9xXjhbBM/sDE8aYV6e8J4etNGEm
         R4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744564067; x=1745168867;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+nVktb2oUewrSNZef7Xp2RVx4/SYPTQmZKEvKujre58=;
        b=dX6iv6wW/fflPR6U8XErTI9OaDueXxPv+EgrCy+R2E2KwLCiWQ3jn1JTtxTSnsxBLw
         UBhs02/xkplgtG3uH0y8DTQOmLGCJ9JdL72nBkYx96I2AAO0vZ8EOhHOla1tC4l9qO29
         WuRylhWIU+fya6lIWnCiruynfLjKkYNXIo/mXRb3dLsNYUmWF+nYA+EAwZY/McYv5Mzf
         gV4hIcFn2/GykCAyIrOvACCFFG50j7PGXSIOrgr6GpRz4Cr1Frqf8GOxKOyYNKVm5oHQ
         cAzDKRzdawzVqo2hpgMv/2kn+Z5xN713vDvLmrZef5py3WPBy+Hjft77cbQ4/n+czTdJ
         B9VA==
X-Forwarded-Encrypted: i=1; AJvYcCV4tOS3sH9aScb1TdVsftAlXl0/BhQaAfBECeECmhL8Kf4LakRD1W4F6/Nu1i6y5wF0KdPzc8bcGc8i@vger.kernel.org
X-Gm-Message-State: AOJu0YwzzvBvQb0b7sqde47C45W9oI9PA1dRNDdVAy2CcEf4n3ZeKl4T
	1kX7Ca3WTsx/uuMCotFnkHAogtB96+uNCx9r852TkOJYQH0EovIEyOd7opHR1A==
X-Gm-Gg: ASbGnct/UsDE1XXWXA/DmhnGtnk5t3czryzkUZ3VdidJvsGMzQA1jh1ETytKb1iTXpN
	VwpJN2wQ3ovsxMpN0VHexGNRzljDMMl9CO1mCLR61VKSNtyX+7bNpsM58oUim+cE/R42lalYTMG
	aAYH1AfUdej/1CESxkMy9rMuJFitMrJWiCwkBeoj3Y261JwieqVgZ/Yj99WBfzzH0byc51aa4dr
	rKOcmd9ZX6I68LjQkfgTw4oQCvVsOQ7qJ+jPjniWSvAsq8YkSmWLBXC/2/QXXuicFkSWVUyuMiQ
	8EUcj3eI0Uy1xWzNi0uFIAjJ1SB+s2vEF8Fo0+t0Kvfea6Vm5+dn
X-Google-Smtp-Source: AGHT+IE+gbJeUC8MORyPLq+yv1/hRBnQsVunUtWyIkSWfGWZQvtHnS9GTR0o+MdzAbYHUke6iYn5sA==
X-Received: by 2002:a17:903:1c9:b0:21f:5063:d3ca with SMTP id d9443c01a7336-22b7eaa3209mr205867575ad.16.1744564066784;
        Sun, 13 Apr 2025 10:07:46 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95cbasm84608565ad.133.2025.04.13.10.07.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 10:07:46 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:37:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 06/13] PCI: apple: Dynamically allocate RID-to_SID
 bitmap
Message-ID: <vcoczq6foe3mikun3o5oqhawbu6ixfjfljnare32olmwxw63xj@zznl6iefhhxu>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-7-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-7-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:06AM +0100, Marc Zyngier wrote:
> As we move towards supporting SoCs with varying RID-to-SID mapping
> capabilities, turn the static SID tracking bitmap into a dynamically
> allocated one. The current allocation size is still the same, but
> that's about to change.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-apple.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index d07e488051290..6d3aa186d9c5f 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -147,7 +147,7 @@ struct apple_pcie_port {
>  	void __iomem		*base;
>  	struct irq_domain	*domain;
>  	struct list_head	entry;
> -	DECLARE_BITMAP(sid_map, MAX_RID2SID);
> +	unsigned long		*sid_map;
>  	int			sid_map_sz;
>  	int			idx;
>  };
> @@ -524,6 +524,10 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
>  	if (!port)
>  		return -ENOMEM;
>  
> +	port->sid_map = devm_bitmap_zalloc(pcie->dev, MAX_RID2SID, GFP_KERNEL);
> +	if (!port->sid_map)
> +		return -ENOMEM;
> +
>  	ret = of_property_read_u32_index(np, "reg", 0, &idx);
>  	if (ret)
>  		return ret;
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

