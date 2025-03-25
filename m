Return-Path: <devicetree+bounces-160723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C961AA70C61
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 22:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D62AD7A37BD
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 21:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9686D253F26;
	Tue, 25 Mar 2025 21:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="JIZDf1IB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190C9196C7B
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 21:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742939358; cv=none; b=HbDbL8A+pZKtIy9KSbFQr5f5jnQqdpMLQpjuD+nJcEzf+9GzJnBq1p8molggNGKXvUEcQiJNveieneE7L55BhHQfw/vTajtN1N/AIP6SZOU3FH+9l9clqm6drnqJkJEITslYuHzwthBWXoHFgvyyzm9nW8qp295dsegJ4kkcyiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742939358; c=relaxed/simple;
	bh=nwPA9SIOejPkzpLh4ULI5UAZazEYdl1cPdB+6K4iWgA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dvxiJQtN/DyKH2Q87jOlNg+Dr0gpoh/iQcm9rllTw+XQfNmA3q/sDxf5FBxsVX7aLeyE8rI01049z+aCFIXnd30omuQ1bPxzn792UIuaBT6juDncsJlp13QmBDV9CO77LVqE3CNSpp8EjSv512dS27d9U/zpOQq8okuve4WSEmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=JIZDf1IB; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-85db3475637so9805639f.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1742939356; x=1743544156; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3q3oNbCpD8Yr3ggdluYQ7Oxw70IpYfziH8ybf4Z46oM=;
        b=JIZDf1IBK6HRknqS/sEe4rhtGMl/yx8f7Pzs+nD/xM0r/y+7YzzjqmRa58iaGCQiOR
         yz7yDUaUw8qGsbNnJTtyrrmM+cRcKpq2GjdfDJTTTQFaGslA19DpP5iPjGLAkXtaVPxJ
         ujJDo8nSE62ff4soKYBtrB6bnvQmjMhjAvmbzl6TUJYRo4awdJ7XPxVnqEPV6099zjIn
         bCbZMx/hQpJObCxsFgdb4Js5mvGNG47DSi6v9553csCBN5NthIqktyDZsstHua04jnL6
         4uJL61p3HfdGWlUTWVhs+onO9SOcMO8iSBgVj5gyEpuvflXUYvnuT8omussBVMaL28k7
         12Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742939356; x=1743544156;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3q3oNbCpD8Yr3ggdluYQ7Oxw70IpYfziH8ybf4Z46oM=;
        b=OBfnSQQYwmsLFhffUcN/NBaLP8mUDeLAuqZdJaWrUY14xw+Y9RN0kREDu4ijTew4lZ
         EhIaa98X0qvhLaMdNHTwvgjwwmvd8CRK1tiB3ZvY6DUj5RCl7/CDSU+8+U00CYI3z3rF
         EHRmcYPdK8b0Bjl4F5asR2Kv4EL8sfUPVDNN7sG84puxvlhWY8RChAP++iTBwwJyLhtY
         wY/89pFTpBv18kriurCL4cDJoj7FQtzFaEnScS0m60HhGQF9gqZwYhHEnKii3r5ETx7S
         3RVWm5OxbGPL2VfsYoplqyHZ9EerGCohaDsJe9JdKhBcVk4lQ6rERvq5lx+GwSSZJtm8
         srew==
X-Forwarded-Encrypted: i=1; AJvYcCWW3kvih9JYjEuRmLo5/l0s76z3zcxZgDCoXn4nyd7bRLHe+5LdoI/sFJs6Suk5wkD9HnaxZtss7GOA@vger.kernel.org
X-Gm-Message-State: AOJu0YwmgvxQnFJfdsZZkKY+Y8qas8jMhRcGydufQRTSq9OVujsko5iC
	x3HaNSCG8vM6I/SnoZHkG5GJ1+abQBodKSalXBqicNPsnAJsmcL8/uiXM9B2+cw=
X-Gm-Gg: ASbGncvvGfnoB4oC2/RmgwJZIq4IsZ/788W/rJjrO7xEDXJjXbOplwG+exSoezFP+3z
	xv23UUpWS/KeuV55oKwgxA6Q6KOYWVWrNTH+JbUDp1dSrWFpRG5ZSSFT7odWl+e3U8fa6RWjAPl
	FaqU+a4vQoigaZCwR05Hi5dkaA2xk5g+pkMtHHWGtPRxLKQETtTfvbx4II6vUd8jIH2agPzBKil
	m/kgm7cmmFKkrcO8m9NDjqumh5PtQxMTMwMYGTi1TtQbCLHCkf2JhGxYVdVH1mJKBEGhIgzKYHN
	TETVbhUDp4dYrvHBuM1+wUnMIC5Xhopk0I60CH/7P6r6WPpdPPNM7VUDQOZxww==
X-Google-Smtp-Source: AGHT+IFj7uKpDfJR5Iim77+HbZSnDjrxpbs+tP0WU77QjYNPslcMwQz6BHnLAD6zLR0ygkvZ39o04g==
X-Received: by 2002:a05:6e02:4401:20b0:3d1:4a69:e58f with SMTP id e9e14a558f8ab-3d5c20b2c25mr15007025ab.2.1742939356043;
        Tue, 25 Mar 2025 14:49:16 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.166])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f2cbdcfeffsm2556607173.30.2025.03.25.14.49.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Mar 2025 14:49:15 -0700 (PDT)
Message-ID: <a20d5849-770e-420d-b707-83a50c37810b@sifive.com>
Date: Tue, 25 Mar 2025 16:49:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 3/4] riscv: dts: Add EIC7700 pin controller node
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
 Pritesh Patel <pritesh.patel@einfochips.com>,
 Min Lin <linmin@eswincomputing.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Alexandre Ghiti <alex@ghiti.fr>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, =?UTF-8?B?6bKB546J5p6X?=
 <luyulin@eswincomputing.com>, =?UTF-8?B?5a6B5a6H?=
 <ningyu@eswincomputing.com>, Lin Feng <fenglin@eswincomputing.com>
References: <20250325141311.758787-1-emil.renner.berthing@canonical.com>
 <20250325141311.758787-4-emil.renner.berthing@canonical.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20250325141311.758787-4-emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025-03-25 9:13 AM, Emil Renner Berthing wrote:
> Add node for the pin controller on the ESWIN EIC7700 SoC and gpio-ranges
> properties mapping GPIOs to pins.
> 
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> ---
>  arch/riscv/boot/dts/eswin/eic7700.dtsi | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
> index 9cef940f07e4..7226647919b7 100644
> --- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
> +++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
> @@ -312,6 +312,13 @@ porta: gpio-port@0 {
>  					<324>, <325>, <326>, <327>, <328>, <329>, <330>,
>  					<331>, <332>, <333>, <334>;
>  				gpio-controller;
> +				gpio-ranges = <&pinctrl  0 12  1>,
> +					      <&pinctrl  1 14 12>,
> +					      <&pinctrl 13  1  4>,
> +					      <&pinctrl 17 32  1>,
> +					      <&pinctrl 18 40  5>,
> +					      <&pinctrl 23 51  7>,
> +					      <&pinctrl 30 68  2>;
>  				ngpios = <32>;
>  				#gpio-cells = <2>;
>  			};
> @@ -320,6 +327,9 @@ portb: gpio-port@1 {
>  				compatible = "snps,dw-apb-gpio-port";
>  				reg = <1>;
>  				gpio-controller;
> +				gpio-ranges = <&pinctrl  0 70  3>,
> +					      <&pinctrl  3 79  7>,
> +					      <&pinctrl 10 89 22>;
>  				ngpios = <32>;
>  				#gpio-cells = <2>;
>  			};
> @@ -328,6 +338,7 @@ portc: gpio-port@2 {
>  				compatible = "snps,dw-apb-gpio-port";
>  				reg = <2>;
>  				gpio-controller;
> +				gpio-ranges = <&pinctrl 0 111 32>;
>  				ngpios = <32>;
>  				#gpio-cells = <2>;
>  			};
> @@ -336,9 +347,15 @@ portd: gpio-port@3 {
>  				compatible = "snps,dw-apb-gpio-port";
>  				reg = <3>;
>  				gpio-controller;
> +				gpio-ranges = <&pinctrl 0 143 16>;
>  				ngpios = <16>;
>  				#gpio-cells = <2>;
>  			};
>  		};
> +
> +		pinctrl: pinctrl@51600080 {
> +			compatible = "eswin,eic7700-pinctrl";
> +			reg = <0x0 0x51600080 0x0 0xff80>;

Per the TRM, the MMIO range is 2M-128B large, so the size should be 0x1fff80.
Other than that, the rest looks good (especially, the GPIO ranges match what I
have), so:

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>

> +		};
>  	};
>  };


