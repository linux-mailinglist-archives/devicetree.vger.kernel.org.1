Return-Path: <devicetree+bounces-96408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3FA95DED6
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 17:57:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55B94282F7F
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 15:57:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70A117A58C;
	Sat, 24 Aug 2024 15:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="N36goH5V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A04F36124
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 15:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724515049; cv=none; b=XjEUmmz84CMGrWCGKJ+zfbMvSVjONmXoGaBGKbdgjj8mY1w5s6tVLE3J5HSWPt42LAONt0ZvNhxsOnGko3hSirOj1D1oUq1uENTuZU7aTnFG86YJSPZ34v94uQUhn75YeBoZgsc5hGmmIuFa4PIDMRq20hJdyPYb7+ncr1O7fTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724515049; c=relaxed/simple;
	bh=3Y20fv+Ohk7Pm1Fwe2J8xrY3zIYe2JMx/PZYLrmKxlk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=apiQOpl8S0DrDyRMAoI90bPNbx7pj5w7b+j0PAGd6fAEdeE4JeGmDuE2aa/DdU7/sSzxQ6hVUSbt0owm957INXPQh9mMKuKRFxPplU1qJKAal+c0XQLP+gEeDX9TWluiCZsUM9TJNwvt1siNsnznKYMfR3wPJRMA+3VXyPKCGtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=N36goH5V; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2f4f24263acso35315321fa.0
        for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 08:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724515046; x=1725119846; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ctr+pH3Gw6bjT+75plLX38r3Tj2F+ZzQWVPRTO7190E=;
        b=N36goH5V6F8AeToESN3mDKBkgtpEluuPDaeChtpGvCQT4F8nzzfpsvLDGIkOZmAY2Z
         bCV6zMSxGRlijmMCNlx0uJ/AgLWH6bNCHbsbJ9GD5Nx5RHY+6KMiCabfSMGmR+4EBIUg
         bgwey9L+k/qD6AqwH/I/sVU5bGfDvNFgWgcWm7EIh5/Mw1sDgQihtDtRnUEDmTYHIZ+S
         G7ORoZYPPxUIP6qPx9gTFLbRh/m505GLu2u3m/XU5eDHuSPl09O4inalXGdh+wrOFW4D
         9uSz40vDPO3gbx30s9lQvb+rNlGrEbUVOZqYj9coI8VxWbp+dFdbfZckOoqtmLbweriU
         jmBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724515046; x=1725119846;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ctr+pH3Gw6bjT+75plLX38r3Tj2F+ZzQWVPRTO7190E=;
        b=QSQeZLYiV9LtoOWw52f8yClYl1jlgtaPjPFpFd2lX2jt/v7zhKr+ReBBbr+2Utf2GF
         llU1NuvXX/88Q3idbJ89gUt4dikiJXgi0mq0fqhgrHSQ8f6cNCblhvwaoHdgceNdpRy7
         HlIaUAIJRALGsGqKTBIvRf9UYTfqq4QRVvrz7kmSiP2tY9867ydQ7hph/bvZFWWMfAex
         NX1BxejXx40CuL8F/Epm6O9EFfkOpj3ccc4kuc3D4I3mUtkLE82XYnzCcvgTnFnQhCaG
         J9oBf9j+cy2i2kCUyrJvbU1jjVAvu4jtU6sOb1FBvGIx4e1p01lJVDaegH4DRDiWcDY/
         cTrg==
X-Forwarded-Encrypted: i=1; AJvYcCVvCEyYoTYXdfBUavfsQ1KOIiRLXnjE3noF9azEnaT9ebqGXhP/2N5rl4yjMFkcsrXk0Gv0F4e+Xe+c@vger.kernel.org
X-Gm-Message-State: AOJu0YzutwgrtojSXp+JTdFEDfcD+Z8ZnzAvM4fLa8JvVtIdfKnCPiAk
	utk54rwC5o5XNCiwNUb9zR41vRFERatsHNYtmektHbzBqNcChXxLU49XSlqu2jpt1Jayfum5iCt
	K
X-Google-Smtp-Source: AGHT+IHaZYJlwJ2iy3CXr/S+CBwYvB7JcH8hCD7audHrkD6rDnsRTnB+DQMSaJuRLEgQRaIqJAgoMQ==
X-Received: by 2002:a05:6512:b1c:b0:52e:8071:e89d with SMTP id 2adb3069b0e04-5343887e19amr4671664e87.40.1724515045955;
        Sat, 24 Aug 2024 08:57:25 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.94])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f439dsm413622566b.202.2024.08.24.08.57.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Aug 2024 08:57:25 -0700 (PDT)
Message-ID: <f956020f-d10e-413e-9015-d80b84a95364@tuxon.dev>
Date: Sat, 24 Aug 2024 18:57:23 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 10/12] ARM: dts: microchip: sam9x60: Add clock
 properties to OTPC
Content-Language: en-US
To: Alexander Dahl <ada@thorsis.com>
Cc: Christian Melki <christian.melki@t2data.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20240821105943.230281-1-ada@thorsis.com>
 <20240821105943.230281-11-ada@thorsis.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240821105943.230281-11-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.08.2024 13:59, Alexander Dahl wrote:
> This will allow to enable the main RC Oscillator from
> nvmem_microchip_otpc driver.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>     This requires some DT bindings update, right?

Yes

> 
>  arch/arm/boot/dts/microchip/sam9x60.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> index 2159a6817f44..4f0651b8cb60 100644
> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> @@ -162,6 +162,8 @@ otpc: efuse@eff00000 {
>  			reg = <0xeff00000 0xec>;
>  			#address-cells = <1>;
>  			#size-cells = <1>;
> +			clocks = <&pmc PMC_TYPE_CORE 11>;
> +			clock-names = "main_rc_osc";

And this should be squashed w/ patch 05/12.

>  		};
>  
>  		apb {

