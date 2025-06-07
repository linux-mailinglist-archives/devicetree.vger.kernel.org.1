Return-Path: <devicetree+bounces-183489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A68B8AD0D3E
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:58:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1774A3B1076
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC08C221702;
	Sat,  7 Jun 2025 11:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="rQbpI33c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78AB51F4612
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749297482; cv=none; b=KhDNBavBjQaDCgm8WNFoYsmKz/qhmcjooWI+VnJItGDlHqlOVihFc9jVx8rKB/GBZvz15GrvAu3zwQx3Y/6oCE1byjOPMz3SbMnPJgw6/DfzH9IYcA2h+wpldRtAXKa91EmucEbIC52wz38+/zAZqxfSHNQeab7SgoQ/F/RESnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749297482; c=relaxed/simple;
	bh=HjORKnsvUUZkmeS4m9i6hlDxgW0zhF2sxcOgY+rNoeU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZWUWDiU7mRX8fZx+LkHtNsWDsr69kuq7EcAuzbkurVybUKBae5XFHBZSjgSSLVLaMkcgwKezz58oHTm3Q5L/bufIHn1VJx4UbdsVdQQKaqXjzX/YK//lzRwADHJKcZue04nf7S6mg+VULgAWCzcv3JdH7XJSgPwYmg5XGbOuDow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=rQbpI33c; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-60768e108baso3089468a12.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749297479; x=1749902279; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yPCdCVNPh60CQIkFZngFhiCNDUpIdQrQuGF9ErPiZBI=;
        b=rQbpI33cfI/ipR6UKilhbtmd/ia1z9sbOOMcClWBp3iLYctL7appWyYYzkCYzAWyvF
         nttlO/K1EdffIf7TQ7pjLDOTV2pEqC/LelOL1iUdJIIsHkW8nIvw7v2+kbBwMxa2dJxh
         vSF5SphFjcg3T/Lc+X6gd/4Au/XUv7op3K2KqpPo3VzepX9GK1OC1OELvsuAE8LfTm66
         uvp9xXZoTBSpTnoqAC2DTpdsuPHIVKfVmC5OkgRgR0h3B713wBph1Y3x0vEt9EiW0G4f
         IAEMBCwhdny5BHsOKEFeaFgg+m9zr3QnDFoG998bOi0ecOsg6TO3kTYclcbNYx8bF7CI
         YDDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749297479; x=1749902279;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yPCdCVNPh60CQIkFZngFhiCNDUpIdQrQuGF9ErPiZBI=;
        b=GYVGyOLM2egLBWTMPIf5ARDA9tEqYca9DVC5W63ZnLMwUIqRdi4+HBdJEtS+94gLP2
         QXgNBSpBZk7LcsjdiuVTI4YvJtiuIABDFiQ5TI4pNOb8HHW5Hcf1aiDL69hkxGTrvITo
         kT/1F2rPQBYbVTfVIZ4t9SzUcP4JrsN4/19I9iuiMyOoLi6lI4df9vTdoq3m8Yve0HpT
         Fxufna6S+OSaqAoafMGa277M+YUiuD0d3K+WA9pV1u+XjXOSshLlOCgm3AONxOc+n1T7
         OzTxJSoeHRRkbj5xojLRbdsGH+0fO3da1quS9VDbVOcEjbgpa2sRt+KReaxqyzl5JbeZ
         iDgA==
X-Gm-Message-State: AOJu0YxilIvoy6mrYJPxaw/pDmzkcGN7Z9qi3JN45DpxCIqao5pvEUy5
	XNgsCSSMHaAGfyNPllcz+KBh8zQHV3mkzhFbJpw5uEJ+Kkm/omD72YrxTdS4/95GOGc=
X-Gm-Gg: ASbGnctpsL0lGEaDbApcAi311Ks0Hf1maQeCm4Tte0oC+YiKWSO/fUVPNcUwwPBF9x7
	gk1ZtcEABRHVGnriDXXG3kGm+1G22pF7Xm8uwNCs4FyugRiZGE4AywfAi4c5ake3Wv5izPIQ4/r
	oHQ6eWRkOxJKjmsm8rnlb8X1oubLfOKtLfaRO1seRoYCxcORUdNuHmoNr47UTeNNQo8IgIKBKCM
	2LaSefkp2/nA7HZtp22IG41QskJzGuikGfVJ/aZU0jvS3Kf5zbL8WBG+/lFDNwU9JyPfBnCUz7l
	LyPfM/Cx5n9sxe6oz7DQgx+vyhfM0p74lfZZlnsW6bbwH/UGqe8P4rU7e1NJEwkmQK/c+wY=
X-Google-Smtp-Source: AGHT+IERrOwE41W6Vc1R8qsjoPAiIrdHWQSf8w1zwFS94QITX4oTtjAckH9gOjzfGmcTrsxtMCJSgw==
X-Received: by 2002:a05:6402:27d2:b0:602:17a1:c672 with SMTP id 4fb4d7f45d1cf-60773ec86a5mr5416133a12.8.1749297478809;
        Sat, 07 Jun 2025 04:57:58 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6077812571dsm2334797a12.0.2025.06.07.04.57.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:57:58 -0700 (PDT)
Message-ID: <dc0c2777-ed5b-4729-8ae3-6563d8996e2e@tuxon.dev>
Date: Sat, 7 Jun 2025 14:57:57 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] ARM: dts: microchip: sama7d65: Add clock name
 property
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <cover.1748030737.git.Ryan.Wanner@microchip.com>
 <f6ae8a38a005e1a4e025b25ddb29113c5e65dead.1748030737.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <f6ae8a38a005e1a4e025b25ddb29113c5e65dead.1748030737.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 23.05.2025 23:24, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add clock-output-names to the xtal nodes, so the driver can correctly
> register the main and slow xtal.
> 
> This fixes the issue of the SoC clock driver not being able to find
> the main xtal and slow xtal correctly causing a bad clock tree.
> 
> Fixes: 261dcfad1b59 ("ARM: dts: microchip: add sama7d65 SoC DT")

Can you please prepare a similar fix for sam9x7. It is also affected by
this, right?

Thank you,
Claudiu

> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/sama7d65.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> index b6710ccd4c36..7b1dd28a2cfa 100644
> --- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
> @@ -38,11 +38,13 @@ cpu0: cpu@0 {
>  	clocks {
>  		main_xtal: clock-mainxtal {
>  			compatible = "fixed-clock";
> +			clock-output-names = "main_xtal";
>  			#clock-cells = <0>;
>  		};
>  
>  		slow_xtal: clock-slowxtal {
>  			compatible = "fixed-clock";
> +			clock-output-names = "slow_xtal";
>  			#clock-cells = <0>;
>  		};
>  	};


