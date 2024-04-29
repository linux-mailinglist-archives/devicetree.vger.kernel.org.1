Return-Path: <devicetree+bounces-63634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A66E08B5B0C
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 16:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C31FC1C20DBE
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6AE577F32;
	Mon, 29 Apr 2024 14:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="d93copbI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 924B077F10
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 14:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714400032; cv=none; b=t9MYNv5myi8SmqKkZRdVTBjCAx241mZeZvp2xdWQbrL4El86W/+xLwOjRgQ7EFEbncb1/TMQ6EqSHNjIAoQP6Q3j01vTN/A7QvgaAs7AYVdbBVgd+/U/f98nZFyxSVA5O1cojl1kP5xJTkv5wRkZkkWoz26YadCX7OHWYUCybAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714400032; c=relaxed/simple;
	bh=xKAoabt7HJtasDcyDuElL7qQIzLgjnvvhXs1tJbhWpU=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eKG/uiF3btEYaDhl/gylkm8XvPQeVgux2c9DvuHil/I1u7dOQWu+xH7UJZJimPSzWwlQAYNphtqvIYMx3+7r0yfZYeZvFk3V6wXmfLzNXhpb4pryDPJF/csLTsyHslQ5nLmjbCYJZY3bvLn02Q/rY8DqLxvKx2rJFpu2+49AZ5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=d93copbI; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2db6f5977e1so52847561fa.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 07:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1714400029; x=1715004829; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Ec7NC0pFEZ/zoqQiA/5SSHoiiFKKBKLCAaWzxjAkDI=;
        b=d93copbIzgS8zk7NJ8+d5dWiTSo0QHTCPr0f7B8kGcMU/aQYwU8lH/kl2rSQxUa5TR
         yvKtWYwiyXgo28IugM2wqJA82MOOnuCagBMfwaRilwO0k/NUDYTFRwYavomBhS+JV60X
         9ZiTIJJWZ053VGhvo5fGADwqWxO0Yyp7X5E3YhhGmHEbkIDTkaFWBJxOXDBUfcJpJJwn
         2wcwKBd4clCYLIBxz5GkXLXWOhK3rJv5jQFJDJsXlZ2TwRFF9Ss10QuZVvD04KdHQMrQ
         1qiP+AsGa6uocS1Kd0WjMCqbHmiXsUPA3+sDiDOpvI9eBHx90LFexNSrlkt1snJv4MhI
         HXEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714400029; x=1715004829;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ec7NC0pFEZ/zoqQiA/5SSHoiiFKKBKLCAaWzxjAkDI=;
        b=AQ7+pBTnmES1X8DQ/oUjyUsw7aUTetom6yBDvwfo1kDUYySQKn38rJ0pNuap+al5cB
         OXjYgGNVg4gt53lRVkLxbLsh9dB4I3Xsn6QrDmUFowXag67N3NoPz42LdFQQcR5CmTAY
         ooL/1bzPht79UZOYbiZqCSND8hZrt1jcQYtlHChnxPO+W1j/4b3Fa20TYkVUr5O6SssO
         5dUw9xJrw36QOCxBInTD/FrZjxPz5yRNR+g3c3UjtYGc9HDMD1rq+s1BBwnD+XrBCctM
         SbVg3hM3kQ4IYJKIptQ5T2CXfyrWmNCl6sdcV3UCDNc4cQn5MqxjSanG9KVwuWmgK9GJ
         c9SA==
X-Forwarded-Encrypted: i=1; AJvYcCVzPWxxiirqAClJZkx9+D806CeGR8WUb8KN2C8euFeXchYbTTTC+nwipcdvtIaJ4EBvmQ9VjCXIrPn5mKY/3nTzsXCSemTxoQkmvg==
X-Gm-Message-State: AOJu0YybSkYI84n3CcBaikyTHrcuh08ZrTMgJUOFqERmljQVRqImburo
	909TNedpl4hvkAZ/mSZl4lofJH6TpmD7w8bM9jgoYL/1MQuqlhTm7fknsSAUMMQ=
X-Google-Smtp-Source: AGHT+IGMLSEqq6+wXjNamWs7eYYCI7GGNtL8BGQKcnsWBs+om6N+6EkM2NWIl4R/VEb8qXYEufbvKg==
X-Received: by 2002:a05:6512:3e29:b0:516:d1bd:7743 with SMTP id i41-20020a0565123e2900b00516d1bd7743mr7894085lfv.64.1714400028653;
        Mon, 29 Apr 2024 07:13:48 -0700 (PDT)
Received: from localhost (host-87-1-234-99.retail.telecomitalia.it. [87.1.234.99])
        by smtp.gmail.com with ESMTPSA id kn9-20020a170906aa4900b00a534000d525sm13978971ejb.158.2024.04.29.07.13.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 07:13:48 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Mon, 29 Apr 2024 16:13:50 +0200
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com,
	Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH v2 15/15] ARM: dts: bcm2711: add bcm2711-dma node
Message-ID: <Zi-rHv_jeEJA9AUv@apocalypse>
Mail-Followup-To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Saenz Julienne <nsaenz@kernel.org>, dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	dave.stevenson@raspberrypi.com,
	Stefan Wahren <stefan.wahren@i2se.com>
References: <cover.1710226514.git.andrea.porta@suse.com>
 <c1ef1ba7cd9153d607e6130277e560b139056fd9.1710226514.git.andrea.porta@suse.com>
 <4a63aa94-e8b4-4282-9622-7c3a7eed1c99@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a63aa94-e8b4-4282-9622-7c3a7eed1c99@linaro.org>

On 08:26 Sun 14 Apr     , Krzysztof Kozlowski wrote:
> On 12/03/2024 10:12, Andrea della Porta wrote:
> > BCM2711 has 4 DMA channels with a 40-bit address range, allowing them
> > to access the full 4GB of memory on a Pi 4. Adding a new node to make
> > use of the DMA channels capable of 40 bit addressing.
> > 
> > Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > ---
> >  arch/arm/boot/dts/broadcom/bcm2711.dtsi | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > 
> > diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
> > index 22c7f1561344..d98e3cf0c569 100644
> > --- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
> > +++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
> > @@ -552,6 +552,22 @@ scb {
> >  		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> >  			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> >  
> > +		dma40: dma-controller@7e007b00 {
> > +			compatible = "brcm,bcm2711-dma";
> > +			reg = <0x0 0x7e007b00 0x400>;
> > +			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>, /* dma4 11 */
> > +				     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>, /* dma4 12 */
> > +				     <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>, /* dma4 13 */
> > +				     <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>; /* dma4 14 */
> > +			interrupt-names = "dma11",
> > +					  "dma12",
> > +					  "dma13",
> > +					  "dma14";
> > +			#dma-cells = <1>;
> > +			/* The VPU firmware uses DMA channel 11 for VCHIQ */
> > +			brcm,dma-channel-mask = <0x7000>;
> 
> Isn't one of your commits saying - this property is replaced?

True. The next patchset revision will drop 'brcm,' prefix.
Many thanks for pointing that out.

Andrea

> 
> Best regards,
> Krzysztof
> 

