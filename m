Return-Path: <devicetree+bounces-166400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD74A872EA
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 19:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 86861172348
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 17:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1D51EFF99;
	Sun, 13 Apr 2025 17:17:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wUVTW/fE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D471EF0AE
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 17:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564667; cv=none; b=E7bTEiwF173ZsJXkmrkiek0TPcrhok/uIcgngX4n+wvZByUWRXPPWZmlfl2YHzaweAmA1H2OnR3aW0afr+JdWOJOK5ZVTIZSgRCE5iwEKJRpCg8FjQ8+Wwx5losPOZP4BTlKuluh1qDKTiqMC10s9t8zMS+psFzmralWvKkOMnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564667; c=relaxed/simple;
	bh=8BO3fdOcQT0WqsO1kMIDe2VATzrdhyw9yVBK+2+M+Rc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=atXRTAsblf59LzmpitvGZ72mNacO2NaMo3hfStryBGXf6IzWu0Ak049poNLM5+uSwIvYVvc+4tEYH5niEub9YA5OOBDBAgOHH1fkmtjNkiRlelrxwzxgFVRlxt/M0ef/QZhDOpXuiTYRhPBQHOgGATh6hjfZUz0yqsddu8WOZw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wUVTW/fE; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7394945d37eso2984934b3a.3
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 10:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744564664; x=1745169464; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tvo1AqLyr+P74wryzNC2MhPCbinbOghs0H5a0GVjRKI=;
        b=wUVTW/fEoiHuA6TMt3WOiiMU2nfp/59DDMflZ7lLmWD+SDhD8R+OthHVo7yOJMJx2Z
         dN9iNHAl2N1JxXGuCVI+FSnwPjBN3BeUa9wDfu2AZ3M6ln6d5tLPqD5oIS6M5DDyTL1b
         uy+2UqqlZ5YFoj3xPHXaiR1/skiUa/rdEbnMrss46jJY88DCxC/F2rjSLAuF7XhiTdBW
         iRDsh2zsVfsNEZV5XDaI02Rnxk6E3wE64p5QoSN40VsWmEZtnYWLlr6JyrKmnrOJsUka
         dGTqd0G7pceMnbjZCcetVDkhC6xsnaP6hVgASxi7j5+99Z52mttR4m8gBy9/9uqBz3Xr
         rmVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744564664; x=1745169464;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tvo1AqLyr+P74wryzNC2MhPCbinbOghs0H5a0GVjRKI=;
        b=D/JSygOw1rq0GBK1Lldmsq6sGJpgNfEiwuc49t8/QXJFax/Ev8Hn8NxHaif6NneUWE
         T6MgYyziRmGZsxTe+H2xL3Bz4b25uKDzfJ2/+oJBmWbKPZOa1shmZ1TxgrI1w4a+HMNr
         pxyYjacjLKDSOeVpl5VQAo56MCYIkV89hpqFDjT/8ED7ZFq4PM9/MVY9F+kCmmyECaxP
         6Nkks6LYFodfPGEvl6lw4+IG9+5gV95oHPGIpMzqvgwPYfGzrrHXk7KfBjOCJI/dY/7/
         8Vgs8nQFUtrTT2ePt9G27f2QYqzXzJ2FYC03FDrIVTn9r4l1dR5ajc79whqKksJKEZ5F
         FtMg==
X-Forwarded-Encrypted: i=1; AJvYcCWVZ1sIx0YYe5uguoGjBQ3YgLu80tmxu5Nn3dg0Nq3gHuIqbWNfyzLlIVv69LgLgjZd9z/n4a/HCHFs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9s19xc2yPGwj61R3oq/RZxFF1fiPNvUlo5ynceYwsDDmNkXDy
	2dMKsuXImWS4E+pPGnnxpGgoa8ZPMyrG3e5O5a3+5xuLaIdp1G5WpM54owbvQA==
X-Gm-Gg: ASbGnctCWswi++39rycZ/3h4PP7dQKkifQiTOoHBRN8/5MXhBd/ZL5OH6qrlaaqSiHB
	69TmvKIxVt0X57o0cJlIod5D1X/P0Com0lKGcOn8V53AhSV9PLpzyfUts4ikpFKXRhPJXu/uWgS
	W4OpQZCvM9l5S9W+e3LECgbKLPedTdP7bO/ftfw+op/Zp9SbVDEW+GQkS4WL2AzWlbhn/VA3Kkr
	UW9qywVTTdg6KpI5307IglEWg4RcWprPrmDY2T8HiwOp/mjC4Pq819z4Vsa5GtTvrF9EFYS+6T/
	pxnMBsPIpjPTGfKSb1vbicgX+8FBdoTGfF/oF2opoOp8vmNVKDDGEx5kDTBhToI=
X-Google-Smtp-Source: AGHT+IGEF9tHk5qwg4OxLxK6w9YLSpLNHAhgJxvCUsO1Pirx8TGENW/hAM/zxwUCHFP7Xw61cGiCug==
X-Received: by 2002:a05:6a20:9f07:b0:1f5:a577:dd1b with SMTP id adf61e73a8af0-2017978f12cmr13438249637.1.1744564664334;
        Sun, 13 Apr 2025 10:17:44 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a2d3a325sm6721497a12.60.2025.04.13.10.17.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 10:17:43 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:47:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 11/13] PCI: apple: Use gpiod_set_value_cansleep in
 probe flow
Message-ID: <gljevi2izxszizvwm4yzpbzraxhjf47vm2lg7jrmm6d3ae62xu@cbqtbvw7miah>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-12-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-12-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:11AM +0100, Marc Zyngier wrote:
> From: Hector Martin <marcan@marcan.st>
> 
> We're allowed to sleep here, so tell the GPIO core by using
> gpiod_set_value_cansleep instead of gpiod_set_value.
> 
> Fixes: 1e33888fbe44 ("PCI: apple: Add initial hardware bring-up")
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Hector Martin <marcan@marcan.st>
> Signed-off-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-apple.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index c00ec0781fabc..505adf64bd66d 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -562,7 +562,7 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
>  	rmw_set(PORT_APPCLK_EN, port->base + PORT_APPCLK);
>  
>  	/* Assert PERST# before setting up the clock */
> -	gpiod_set_value(reset, 1);
> +	gpiod_set_value_cansleep(reset, 1);
>  
>  	ret = apple_pcie_setup_refclk(pcie, port);
>  	if (ret < 0)
> @@ -573,7 +573,7 @@ static int apple_pcie_setup_port(struct apple_pcie *pcie,
>  
>  	/* Deassert PERST# */
>  	rmw_set(PORT_PERST_OFF, port->base + PORT_PERST);
> -	gpiod_set_value(reset, 0);
> +	gpiod_set_value_cansleep(reset, 0);
>  
>  	/* Wait for 100ms after PERST# deassertion (PCIe r5.0, 6.6.1) */
>  	msleep(100);
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

