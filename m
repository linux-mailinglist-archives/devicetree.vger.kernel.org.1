Return-Path: <devicetree+bounces-47924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4BB86F4CF
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 13:21:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D25831F211F8
	for <lists+devicetree@lfdr.de>; Sun,  3 Mar 2024 12:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA8DBE4E;
	Sun,  3 Mar 2024 12:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fMDUwWOq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F01F9E0
	for <devicetree@vger.kernel.org>; Sun,  3 Mar 2024 12:21:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709468514; cv=none; b=QVlJcjuxI48sG19WNskImrV80DOMcGf8MWvq+kbg7IFo7mvg3aAkkZVzLvEyP6rN16YEqrjAy+5QA9O1nR7+3qVVFqZ8Zx0fAwyzeKn910/OyJlZm6URQUh9epRIM/T59NkJyg5/Hv+PuOI7ixAhOkrg8YUBypAOss+P09vS0sg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709468514; c=relaxed/simple;
	bh=CZZXtdt1IZjDHp5whHyiFRaG/76yuvSfTFvAoAv+j9E=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=tMltR7+uMMPFCpQOBNFzdi0xNUBvi4iI2sz+EUeeC83SyR+K7ptz35+bO1G4tuiFc42DtBgHDRZX3eZGuwTH0Vi4FGjZfKxJ7RuuCHUlCTQgpibiGkpX/U+0rTymiQP5iqjegMXQA82H5bDTgCIv9VkxCdYQ7yT/KXdP1/Uakl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fMDUwWOq; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-33d28468666so2372206f8f.0
        for <devicetree@vger.kernel.org>; Sun, 03 Mar 2024 04:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1709468511; x=1710073311; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cqQVtMCteF6vcIB8GNjsI4lJiOVGsEEIhmJjprsB3tk=;
        b=fMDUwWOq9vWOUE6rZbWFwrgM/VTwF3iel/b8tGHuCxjcEaKeQRxUrtcSHQLrNv2CxS
         x1aSVToZW3JryEfmo8kt9UTaT11vIc1DN3byAOrjPWmOMzYLKeyGJ2WNxetkkDi6Bjcv
         crKmLENyMX9LQMI0C6blQmd7rcOuN2AaDtoqUjReoML+pegH7m1byml/JZso7/g0YbmT
         QC+iayUbHlGjk2qYuAWYBiyEvEphONw/wnSL82uIXpts2vgr/IxTLI/lBl8z0t3DTxEn
         bt4j9e2HUx0MbPPylHRDClXaFB/etEbMv+38JYWzmCn9DeU9ygeNfDz1gDbyxlwBoi+R
         a0uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709468511; x=1710073311;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cqQVtMCteF6vcIB8GNjsI4lJiOVGsEEIhmJjprsB3tk=;
        b=FkDQBXwTp0TspUvkWSvoJV0Z+QJPrMe4bjmegGwdRgSbM5g81O4fUWtygGOkwhi/NO
         azfPpopENHxddEILSINjrAkznZN3Bv6yClcS74LQfgBoOXworUUgkSB2XX+oxVKXTOVj
         NDuSAvXxIALM7d5KGigtX/zdWwYCQ8gdOHlvV5NsELosWuCRGsWRq/P47XgYaQ5ZDq/e
         fEBw8mM0vl4heSOQt/jP9VgHGmZSbwKDbT6C4teXdOr0yrgEPZWl1Ipdnhz4ASdE4eey
         knSYM60aqOoGNWDrEAfcLiW8Y3neSgmv+hpCVTOFD8csTd6FS6DvkBh/TEFCexke3oDq
         r4UQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhOCSMKGqFlISlmZZ3vd9a+dx2YcJC6ll7VIsbp+elVwJ2uvn0CVaSue1K3jY+oQ4bFYucDl4cubRwR6Qe2p9AoBhUjhD19P4KkQ==
X-Gm-Message-State: AOJu0Yy5Uer8M0sXsFROik/e96YOhJ5ppnX9+hmbs8lW24u+GGJ3FGnR
	R+YVScDlPpiLiEK596b5Z29g1dm8NhcZ6U3YLslIG7HKjLojqlHMAcsRxBueHGEu98JGHqlBS1L
	Z
X-Google-Smtp-Source: AGHT+IEu5lNzZcOQMvaj3aD3ucAe4AnZoeQHEj7SRA/srmJnV1u3ip0F9kF0Dy0Mtto3LEWcBAh9tQ==
X-Received: by 2002:a5d:5950:0:b0:33d:2899:3a8a with SMTP id e16-20020a5d5950000000b0033d28993a8amr4240620wri.39.1709468511266;
        Sun, 03 Mar 2024 04:21:51 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.38])
        by smtp.gmail.com with ESMTPSA id dw2-20020a0560000dc200b0033ddfba0c67sm9477927wrb.41.2024.03.03.04.21.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Mar 2024 04:21:50 -0800 (PST)
Message-ID: <f1f9c53f-b11a-4fe1-9541-356ea75e883c@tuxon.dev>
Date: Sun, 3 Mar 2024 14:21:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 29/39] irqchip/atmel-aic5: Add support to get nirqs
 from DT for sam9x60 & sam9x7
Content-Language: en-US
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 tglx@linutronix.de, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, andre.przywara@arm.com, mani@kernel.org,
 shawnguo@kernel.org, durai.manickamkr@microchip.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240223171342.669133-1-varshini.rajendran@microchip.com>
 <20240223172905.673053-1-varshini.rajendran@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240223172905.673053-1-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 23.02.2024 19:29, Varshini Rajendran wrote:
> Add support to get number of IRQs from the respective DT node for sam9x60
> and sam9x7 devices. Since only this factor differs between the two SoCs,
> this patch adds support for the same. Adapt the sam9x60 dtsi
> accordingly.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
> Changes in v4:
> - Changed the implementation to fetch the NIRQs from DT as per the
>   comment to avoid introducing a new compatible when this is the only
>   difference between the SoCs related to this IP.
> ---
>  arch/arm/boot/dts/microchip/sam9x60.dtsi |  1 +
>  drivers/irqchip/irq-atmel-aic5.c         | 11 ++++++++---
>  2 files changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> index 73d570a17269..e405f68c9f54 100644
> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> @@ -1201,6 +1201,7 @@ aic: interrupt-controller@fffff100 {
>  				interrupt-controller;
>  				reg = <0xfffff100 0x100>;
>  				atmel,external-irqs = <31>;
> +				microchip,nr-irqs = <50>;
>  			};
>  
>  			dbgu: serial@fffff200 {
> diff --git a/drivers/irqchip/irq-atmel-aic5.c b/drivers/irqchip/irq-atmel-aic5.c
> index 145535bd7560..5d96ad8860d3 100644
> --- a/drivers/irqchip/irq-atmel-aic5.c
> +++ b/drivers/irqchip/irq-atmel-aic5.c
> @@ -398,11 +398,16 @@ static int __init sama5d4_aic5_of_init(struct device_node *node,
>  }
>  IRQCHIP_DECLARE(sama5d4_aic5, "atmel,sama5d4-aic", sama5d4_aic5_of_init);
>  
> -#define NR_SAM9X60_IRQS		50
> -
>  static int __init sam9x60_aic5_of_init(struct device_node *node,
>  				       struct device_node *parent)
>  {
> -	return aic5_of_init(node, parent, NR_SAM9X60_IRQS);
> +	int ret, nr_irqs;
> +
> +	ret = of_property_read_u32(node, "microchip,nr-irqs", &nr_irqs);
> +	if (ret) {
> +		pr_err("Not found microchip,nr-irqs property\n");

This breaks the ABI. You should ensure old device trees are still working
with this patch.

> +		return ret;
> +	}
> +	return aic5_of_init(node, parent, nr_irqs);
>  }
>  IRQCHIP_DECLARE(sam9x60_aic5, "microchip,sam9x60-aic", sam9x60_aic5_of_init);

