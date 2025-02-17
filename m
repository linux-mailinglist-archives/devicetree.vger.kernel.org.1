Return-Path: <devicetree+bounces-147283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA163A37E09
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AFC71890017
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEA901A8413;
	Mon, 17 Feb 2025 09:10:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A37KpkAN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0585C1A7AF7
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783442; cv=none; b=UsKK0XaK72wkaO2DjsQq6uYwVRJr+ISGf3nrruDFEynwd0LXC6xBlQJO5C87inYf4fBnKar7AFSM/JFRDs5v/YQQf8K7Ku8OSgTcYfTqWvMiGEYO5RgTYKm03SVYXRLoxwKjvEL2HBO7nJCnrLZYY2nCdeL/rCWHna54LzZxLdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783442; c=relaxed/simple;
	bh=gti27IHeX1Dn0PmJ9EmmFS9iD76hwWW0DoREF9bQbzs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gqE/fHkcdV6O2MsN0hca6q8WUi9AKZMtVvP73ttI7vAzpZKm5ifVCQfFZbUjfgM3s8QY+qwZGvvwR+86UpmPTzZnNqmeL+kRWzQF8vsd3aLmesm1kEwZ9YbM1hcGoL4dTPMZnPzYjWDBdObe28lFz1g2PZuWWUmkgnqn0oZCxT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A37KpkAN; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5e04cb346eeso2268085a12.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 01:10:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739783439; x=1740388239; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZuVc/9e1Yj/sPI8+yIxKHV0o19gCf//rneJUR1cMCGw=;
        b=A37KpkANdVail02PQiX7EWBLC1Mmc+Ye9pvLdQVKEWcjGp/AJXVahPo+No00e8xAiQ
         8E/kcyy6MqO6N/EzPjD22wZO8ROgn0tEXpnBYPOeJMD8K0L1qFQX2Oywgdt+vmApvPJv
         J72FGZGbzBY6DasHPbhNFv90Angg1dVkAQHQRYdLkXAUNNWfFlzV1VCVPOj1j5pPsocV
         qMY3w9Zej6sPqjfn0oNyA43koJOl8Sf1Fvg35p+99SiGXLir485/DuDURnXAOkcVBYw4
         YEl7FL7avmlAdNWN11K0tKq6XSW5kQVux+TwjwQu02ZgbwuruMUe8Ad6FJecl+5k+aTP
         06kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739783439; x=1740388239;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZuVc/9e1Yj/sPI8+yIxKHV0o19gCf//rneJUR1cMCGw=;
        b=bFj1m2qOANVNMY1MjtmkaQQWWUWJdqABMVzR8Lq7BBDVtTkb+fIg1XErcODfE+J+xq
         4mwSuEytllk4ZtmTLwxxr5vhsOuR/8GpBDf9DTo641EoZWi67EuChh5RgY41QnO4YJvt
         yeUAhoFCXwTyKL8y/qXLctUg6o1NiLUzd8eaTD0mDifMYHZZYs8uwnMXzsgzg6C9Laim
         XNPp48E6FXHN5MKVEcbDgyqBGvc+6yi5ad+OnTrNLxQZ8lMeFyTp88n2/pLld0Dyre6z
         tYGv3qs8aCcwcSkPtz6F1sajxY3ti/oFRntUIO/xaZh/Xd6zA26iPJBNw5mEIqz4masn
         /S3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWXftd/YkFiQ6LzPHXtUX4mORg1d7EJsP2IOOPrZ+k7ZS9naioRRJlXjwmCez7duPsEgn9iMh016IpC@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9W1AwWYbXfiRkl6tc0wb9M74S47aGfQUmLCk38LELDH3r9SuW
	d6g4kNC7agnA9bnYmYzPLNS3/A3x4SjR4UxVaSzfszcVdb8h0ofCgce7ZKEOsF4=
X-Gm-Gg: ASbGncv/gTKGvfmTU92+t7HH3009nwoiW/I//zQ8lp+93Q9XGC376zKKMTxVf+dxpfW
	ghr1dIJktIV1PeX5PmJiFNND3CSnZq6Nu7XyW/bBqK751+11WYIfl8fII0TsPgcUvPzurOaGEU4
	xNupVBo8Z9P9WbnfFSWlOINx7n8Uqj8aS9DFTaZCv/bYDH+bStgeQIXuP0lx959cqqMvSBcmlOl
	F7kJVefBEB1ee+lpinm2eP/L1FLlv9TqkiJkX/SHlCno+5JFVYH7Oy4hu9IpKRYup8GRXkkQ50O
	2ODKtvIe4VBxtBX0F56yBOY=
X-Google-Smtp-Source: AGHT+IH9wIn/oFp0HQ5Ml9Fr0/i0O7BRhz9FvkPajM9aPkSSBQ0mED5a3gvKqPWrNLKiBiFNMqW84Q==
X-Received: by 2002:a05:6402:4609:b0:5dc:1f35:552 with SMTP id 4fb4d7f45d1cf-5e0360441d1mr7250545a12.1.1739783439236;
        Mon, 17 Feb 2025 01:10:39 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.25])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1b4ed9sm6835151a12.10.2025.02.17.01.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 01:10:38 -0800 (PST)
Message-ID: <e01ed1d6-32e5-4e0d-a4f3-01acde843b5a@tuxon.dev>
Date: Mon, 17 Feb 2025 11:10:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 13/16] ARM: dts: microchip: sam9x60: Add OTPC node
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20250210164506.495747-1-ada@thorsis.com>
 <20250211065304.5019-1-ada@thorsis.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250211065304.5019-1-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11.02.2025 08:53, Alexander Dahl wrote:
> The One-Time Programmable (OTP) Memory Controller (OTPC) is the secure
> interface between the system and the OTP memory.  It also features the
> Unique Product ID (UID) registers containing a unique serial number.
> 
> See datasheet (DS60001579G) sections "7. Memories" and "23. OTP Memory
> Controller (OTPC)" for reference.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>     v2:
>     - squashed with patch adding the clock properties
> 
>  arch/arm/boot/dts/microchip/sam9x60.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> index 1724b79967a17..af859f0b83a0f 100644
> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> @@ -15,6 +15,7 @@
>  #include <dt-bindings/clock/microchip,sam9x60-pmc.h>
>  #include <dt-bindings/mfd/at91-usart.h>
>  #include <dt-bindings/mfd/atmel-flexcom.h>
> +#include <dt-bindings/nvmem/microchip,sama7g5-otpc.h>

This is not needed, atm.

>  
>  / {
>  	#address-cells = <1>;
> @@ -157,6 +158,15 @@ sdmmc1: sdio-host@90000000 {
>  			status = "disabled";
>  		};
>  
> +		otpc: efuse@eff00000 {
> +			compatible = "microchip,sam9x60-otpc", "syscon";
> +			reg = <0xeff00000 0xec>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			clocks = <&pmc PMC_TYPE_CORE SAM9X60_PMC_MAIN_RC>, <&pmc PMC_TYPE_PERIPHERAL 46>;
> +			clock-names = "main_rc_osc", "otpc_clk";
> +		};
> +
>  		apb {
>  			compatible = "simple-bus";
>  			#address-cells = <1>;


